# use this file in tandem with "ram_watch_util.py" to generate the tables in the dicts at the bottom
     
import math
import sys, os
path_add = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir,'event_flag_encrypter'))
sys.path.append(path_add)
import event_flag_encrypter_script as encrypter

bitset = {}
bitset['01'] = 0
bitset['02'] = 1
bitset['04'] = 2
bitset['08'] = 3
bitset['10'] = 4
bitset['20'] = 5
bitset['40'] = 6
bitset['80'] = 7

bitsetnum = {}
bitsetnum[0] = '01'
bitsetnum[1] = '02'
bitsetnum[2] = '04'
bitsetnum[3] = '08'
bitsetnum[4] = '10'
bitsetnum[5] = '20'
bitsetnum[6] = '40'
bitsetnum[7] = '80'

BEGINNING_CHEST_ADDRESS = 'D13212'
BEGINNING_CHEST_RAM = '9D4'

def process_arch_chest_df_for_ram():
    # convert address into event_flag for ram address
    import pandas as pd
        
    df = pd.read_csv('tables/arch_chest.csv')
    
    d = {}
    for i, r in df.iterrows():
        byte, bit = encrypter_chest_address_to_ram(r['address'])
        d[r['address']] = {'name' : '%s (%s)' % (r['description'], r['original_reward']),
                           'byte': "0%s" % byte,
                           'bit' : bit,
                           'direction' : "ON",
                           'address' : r['address']}   
    

def encrypter_chest_address_to_ram(address = None):

    if not address:
        print("Must supply address, returning None, None")
        return None, None
    else:
        calc = ((int(address,base=16) - int(BEGINNING_CHEST_ADDRESS,base=16) )/ 32 ) + int(BEGINNING_CHEST_RAM,base=16)
        byte, bit = str(calc).split(".")
        byte2 = hex(int(byte)).replace("0x","").upper()
        bit2 = int(float("0."+bit) / 0.125)
        print("%s -> %s %s" % (address, byte2, bitsetnum[bit2]))
        return byte2, bitsetnum[bit2]
    
    
def encrypter_chest_ram_to_address(ram_current = None, ram_current_bit = None): 
    if ram_current == None or ram_current_bit == None:
        print("Must supply ram_current and ram_current_bit, returning None")
        return None
    else:
        new_address = str(hex(((int(ram_current, base=16) - int(BEGINNING_CHEST_RAM, base=16)) * 32) + (bitset[ram_current_bit] * 4) + (int(BEGINNING_CHEST_ADDRESS, base=16)))).upper().replace("0X","")
        print("%s %s -> %s" % (ram_current, ram_current_bit, new_address))
        return new_address
    
    
    
    
def process_arch_event_df_for_ram():
    # convert event_flag_asar into event_flag for ram address
    import pandas as pd
        
    df = pd.read_csv('tables/arch_event.csv')
    
    
    for i, r in df.iterrows():    
        try:
            encrypter.decrypt(r['event_flag_asar'])
        except:
            print("")
        
def convert_arch_event_df_event_flags_to_dict():
    # generate event_flag_dict below
    
    import pandas as pd
        
    df = pd.read_csv('tables/arch_event.csv')
    
    d = {}
    
    for i, r in df.iterrows():
        d[r['address']] = {'name' : '%s (%s)' % (r['description'], r['original_reward']),
                           'byte': str(r['event_flag_byte']),
                           'bit' : str(r['event_flag_bit']),
                           'direction' : r['event_flag_direction'],
                           'address' : r['address']}
    
