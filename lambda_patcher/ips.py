""" ips.py | https://github.com/fbeaudet/ips.py """

import shutil
import struct
import sys
import os
import gzip

VERSION      = '0.1'

FILE_LIMIT   = 0x1000000 #16MB
RECORD_LIMIT = 0x10000

PATCH_ASCII  = bytes((0x50, 0x41, 0x54, 0x43, 0x48))
EOF_ASCII    = bytes((0x45, 0x4f, 0x46))
EOF_INTEGER  = 4542278

def applyPatch(originalFile, patchFile, newFile):
    """ Apply an IPS patch. Arguments:
        originalFile    String, required, path to the original file.
        patchFile       String, required, path to the patch file (.ips or .gzip).
        newFile         String, required, where to write the new file.
    """
    
    # handling programmer errors
    assert type(originalFile) is type(''), '\'originalFile\' must be a string.'
    assert type(patchFile) is type(''), '\'modifiedFile\' must be a string.'
    assert type(newFile) is type(''), '\'patchFile must\' be a string.'

    # handling operational errors
    
    # original bytes
    try :
        original = open(originalFile, 'rb').read()
    except :
        return (False, 'There was a problem trying to read \'originalFile\'.')
    
    # patch bytes
    try :
        if patchFile[-4:] == 'gzip':
            patch = gzip.decompress(open(patchFile, 'rb').read())
        else :
            patch = open(patchFile, 'rb').read()
    except :
        return (False, 'There was a problem trying to read \'patchFile\'.')

    # buffer for writing
    try :
        new = open(newFile, 'wb') #file object
        os.write(new.fileno(), original)
    except :
        return (False, 'There was a problem trying to write to \'newFile\'.')

    # disk space

    directory =  os.path.dirname(os.path.abspath(newFile))
    if directory == '' :
        directory = '.'
        
    if shutil.disk_usage(directory).free <=  FILE_LIMIT:
        return (False, 'Not enough space for creating a patch at specified path.')

    # OK, tests passed

    # initial states
    a = 5
    while a < len(patch) :

        # parse offset
        offset = struct.unpack('>1i',
            struct.pack('>4B', 0, patch[a], patch[a+1], patch[a+2])
        )[0]
        
        # check if it's the end of the patch
        if offset == EOF_INTEGER:
            new.close()
            return (True, 'Success')

        # parse size
        size = struct.unpack('>1i',
            struct.pack('>4B', 0, 0, patch[a+3], patch[a+4])
        )[0]
        
        #write record content to file
        
        os.lseek(new.fileno(), offset, 0)
        
        if size != 0 :
            
            # Normal record.
            # 3 bytes offset (not EOF_ASCII), 2 bytes size (not 0), x bytes data

            for x in range(size) :
                os.write(new.fileno(), bytes([patch[a+5+x]]))

            #update loop address
            a += 5 + size

        else :

            # RLE record.
            # 3 bytes offset, 2 bytes size (0), 2 bytes times, 1 bytes data

            #parse the number of times to repeat the data
            times = struct.unpack('>1i',
                struct.pack('>4B', 0, 0, patch[a+5], patch[a+6])
            )[0]
        
            for x in range(times) :
                os.write(new.fileno(), bytes([patch[a+7]]))
            
            #update loop address
            a += 8

    new.close()
    return (False, 'Patch hadn\'t an EOF flag.')

def createPatch(originalFile, modifiedFile, patchFile):
    """ Create an IPS patch. Arguments:
        originalFile    String, required, path to the original file.
        modifiedFile    String, required, path to the modified file. Max 16MB.
        patchFile       String, required, where to write the new patch (.ips or .gzip).
    """

    # handling programmer errors
    assert type(originalFile) is type(''), '\'originalFile\' must be a string.'
    assert type(modifiedFile) is type(''), '\'modifiedFile\' must be a string.'
    assert type(patchFile) is type(''),    '\'patchFile\' must be a string.'

    # handling operational errors

    # original bytes
    try :
        original  = open(originalFile, 'rb').read()
    except :
        return (False, 'There was a problem trying to read \'originalFile\'.')

    # modified bytes
    try :
        modified  = open(modifiedFile, 'rb').read()
    except :
        return (False, 'There was a problem trying to read \'modifiedFile\'.')

    # buffer for writing
    try :
        patch  = open(patchFile, 'wb') #file object
    except :
        return (False, 'There was a problem trying to write to \'patchFile\'.')

    # ips file size limit
    if len(modified) > FILE_LIMIT :
        return (False, 'Modified file is too large for IPS format. Max: 16MB.')

    # disk space
    directory =  os.path.dirname(os.path.abspath(patchFile))
    if directory == '' :
        directory = '.'
        
    if shutil.disk_usage(directory).free <=  FILE_LIMIT :
        return (False, 'Not enough space for creating a patch at specified path.')

    # OK, tests passed

    # initialize states
    recording = False
    record = bytearray()
    size = bytearray(2)

    # write header
    patch.write(PATCH_ASCII)
    
    for a in range(len(modified)) :
        # for each byte address
        
        if not recording :
            
            if len(original) <= a or modified[a] != original[a]:
                # new record begining

                # update states
                recording = True
                record = bytearray()

                # if the address is the same as EOF, use previous one
                if a == EOF_ASCII:
                    record.append(modified[a-1])

                # push the current different byte
                record.append(modified[a])

                # encode record offset 
                offset = bytearray(3)
                for x in range(3) :
                    offset[x] = (a >> (16 - x * 8)) % 256

                # write 3 bytes record offset to patch file
                patch.write(offset)

                # if we're at the last address, close the record
                if a == len(modified) - 1 :
                    recording = False
                    patch.write(b'\x00\x01')
                    patch.write(record)

        else:
            # a record is currently active

            # if the current byte is different from original, add it to record
            if len(original) <= a or modified[a] != original[a] :
                
                record.append(modified[a])
                
                # if we're at the last address, close the record 
                if a == len(modified) - 1 :
                    
                    recording = False

                    # encode size
                    for x in range(2):
                        size[x] = len(record) >> (8 - x * 8)
                        
                    # write size and record
                    patch.write(size)
                    patch.write(record)
                    
            else : # current byte is identical, close the record
                
                recording = False

                # encode size
                for x in range(2):
                    size[x] = len(record) >> (8 - x * 8)

                # write size and record
                patch.write(size)
                patch.write(record)

    patch.write(EOF_ASCII)
    patch.close()
    
    if patchFile[-4:] == 'gzip' :
        p = open(patchFile, 'rb').read()
        patch = open(patchFile, 'wb')
        patch.write(gzip.compress(p))
    
    return (True, 'Success')
    
def test() :
    """ Test applyPatch() and createPatch() """

    testDir = os.path.dirname(os.path.abspath(__file__)) + os.sep + 'test' + os.sep

    #test #1
    print('\r\nips.py ' + VERSION + '\r\n')
    print(' --- TEST #1 ips.applyPatch() with normal and RLE records --- \r\n')

    #prepare test
    o = open(testDir + 'original', 'wb')
    m = open(testDir + 'modified', 'wb')
    p = open(testDir + 'patch', 'wb')
    o.write(b'\x00\x00\x00\x00\x00')
    m.write(b'\x00\xFF\x00\xFF\xFF')
    p.write(PATCH_ASCII)
    p.write(b'\x00\x00\x01\x00\x01\xFF\x00\x00\x03\x00\x00\x00\x02\xFF')
    p.write(EOF_ASCII)
    o.close()
    m.close()
    p.close()

    #try to patch
    print('applyPatch() returns :')
    print(applyPatch(testDir + 'original', testDir + 'patch', testDir + 'generated'))

    #check if generated file is identical to modified file
    g = open(testDir + 'generated', 'rb').read()
    m = open(testDir + 'modified', 'rb').read()
    
    print('\r\ntest result :')
    
    if g == m :
        print('Patch applied successfully, generated file is identical to what was expected.')
    else :
        print('Error: generated file is different from what was expected.')
        print(g)
        print(m)

    #test #2
    print('\r\n --- TEST #2 ips.createPatch() + ips.applyPatch() with gzip --- \r\n')

    #try to create a patch
    print('creatPatch() returns :')
    print(createPatch(testDir + 'original', testDir + 'modified', testDir + 'patch_gzip'))

    #try to apply it
    print('applyPatch() returns :')
    print(applyPatch(testDir + 'original', testDir + 'patch_gzip', testDir + 'generated'))

    #check if generated file is identical to modified file
    g = open(testDir + 'generated', 'rb').read()
    m = open(testDir + 'modified', 'rb').read()
    
    print('\r\ntest result :')
    
    if g == m :
        print('Patch applied successfully, generated file is identical to what was expected.')
    else :
        print('Error: generated file is different from what was expected.')
        print(g)
        print(m)
    
def main():
    """ It's the command-line interface. """
    
    if len(sys.argv) == 2 : 

        #CMD: help
        if sys.argv[1] == 'help' :
            print ('\r\nips.py v' + VERSION + ' / Create and apply IPS patches.\r\n'+
                   'https://github.com/fbeaudet/ips.py\r\n\r\n' +
                   'Usage:\r\n\r\n' +
                   '    ips apply path/to/original/file path/to/patch ' +
                   'path/to/new/file\r\n' +
                   '    ips create path/to/original/file path/to/modified ' +
                   'path/to/new/patch\r\n' +
                   '    ips help\r\n' +
                   ' * patch files can be .ips or .gzip \r\n')
            return True

        #CMD: test
        elif sys.argv[1] == 'test' :
            test()
            return True
            
        else:
            print('Error: Unknown command. Use \'help\' for more information.')
            return False

    if len(sys.argv) != 5 :
        print('Error: ips.py takes 1 or 4 arguments, ' +
              str(len(sys.argv) - 1) + ' given.')
        return False
    
    if sys.argv[4] == sys.argv[3] or sys.argv[4] == sys.argv[2] :
        print('Error: generated file must not be 1 of the 2 others.')
        return False
        
    #CMD: apply   
    if sys.argv[1] == 'apply' :
        
        taskResult = applyPatch(sys.argv[2], sys.argv[3], sys.argv[4])
        
        if taskResult[0] :
            print('\r\n' + taskResult[1] + '\r\n')
        else:
            print('\r\n Error:\r\n' + taskResult[1] + '\r\n')

    #CMD: create  
    elif sys.argv[1] == 'create' :
        
        taskResult = createPatch(sys.argv[2], sys.argv[3], sys.argv[4])
        
        if taskResult[0] :
            print('\r\n' + taskResult[1] + '\r\n')
        else :
            print('\r\n Error:\r\n' + taskResult[1] + '\r\n')
            
    else :
        print('\r\nError: Unknown command. Use \'help\' for more information.\r\n')

if __name__ == '__main__':
    main()
