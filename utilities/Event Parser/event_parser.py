#going to leave the sample data in here, feel free
#to use if you're testing stuff out. this is a
#single sample event and excersizes a lot of the code
'''0673e11800921b00d08000b50bb103
d382941730c306758209820282038203
82038203820471c80f817116723073c8
1081b430b50b7110b20412713171c811
81718204731271c81281710302822402
1471c81381718203822271c81481712e
74d38394178309830583038302830383
03834970834870834970834870822010
71c8158183038303832682221271c816
8171ce0508834fb2068350b2068326c8
1781d385921485098503850385038502
850385038503c818818220108320c819
81718503854971c81a8171823f168326
75c81b81718220708222852271c81c81
71823d71d380131c800972800a718222
71c81d81852472853e83403070852483
26167383038305830414822483038303
830371c81e0171833071823e853e2e70
1482248524c40475dbe100008c5cb412
c30675a44cff'''

#this has all our lookup dictionaries
from event_data import *
import sys

data = input("paste your event here, no newlines: ")

#we're going to increment the pointer very first, so we want it to be at 0 AFTERWARD
pointer = -2
commented = ""
a2index = 0x7E0A14
a3index = 0x7E0A14
a4index = 0x7E0A34
a5index = 0x7E0A34
caindex = 0x7E0A54
cbindex = 0x7E0A54

#allow either lowercase or uppercase input, fix it here
data = data.upper().replace('\n', '')
if len(data) % 2 != 0:
    print("Can't parse half a byte, validate your input")
    sys.exit()

#there's probably a better way to do this, but i think this might be
#the best way to achieve what is essentially a pass by reference
#without having to make my own data structure for such a small usecase
def getNextByte(pointer):
    pointer = pointer + 2 
    return (data[pointer:pointer+2], pointer)

#as long as there's data to read, keep reading
#the pointer advances 2 characters at a time, each byte is read in full
while pointer < len(data) - 2:
    tup = getNextByte(pointer)
    byte = tup[0]
    pointer = tup[1]

    #handle the specific ranges first
    #if we know about a pose, translate the pose here
    if byte in poses:
        commented += "db ${0}\t\t\t\t;Player pose: {1}\n".format(byte, poses[byte])

    #otherwise, just show that it's a pose
    elif byte[0] == "1" or byte[0] == "2" or byte[0] == "3" or \
       byte[0] == "4" or byte[0] == "5" or byte[0] == "6":
        commented += "db ${0}\t\t\t;Player or Sprite Pose".format(byte) + "\n"

    #if the byte is 8X or 9X, it's some sprite doing something, handle those here    
    elif byte[0] == "8" or byte[0] == "9":
        byte0 = byte
        tup = getNextByte(pointer)
        byte = tup[0]
        pointer = tup[1]
        line = "db ${0}, ${1}\t\t\t;Sprite " + str((int(byte0[0]) - 8)) + "{0} do event: {1}"
        line = line.format(byte0, byte) + "\n"
        if byte in sprite_actions:
            line = sprite_actions[byte].join(line.rsplit(byte, 1))
        elif byte in poses and byte[0].isdigit() and int(byte[0]) >= 1 and int(byte[0]) <= 6:
            line = poses[byte].join(line.rsplit(byte, 1))
        commented += line

    #otherwise, we have a specific command
    else:
        num_operands = 1 #we assume a command has 1 operand, most do so it saves me writing them all out
        byte_data = []
        line = ""
        
        #if our opcode is in our operands table, it has a number of operands other than 1
        if byte in operands:
            num_operands = operands[byte]
  
        if (len(data) - (pointer + 2)) / 2 < num_operands:
            if len(commented) > 0:
                print(commented)
            print("Byte " + str(byte) + " at cursor location " + str(pointer) + " does not have enough operands")
            sys.exit()

        #for every operand, grab one byte and load them into an array of operands
        for x in range(0, num_operands):
            tup = getNextByte(pointer)
            byte_data.append(tup[0])
            pointer = tup[1]

        #start the line with db (for asar) and the opcode
        line += "db $" + byte

        #append each operand (don't forget this can be 0)
        for i in byte_data:
            line += ", $" + i

        #dumbass code to make the comments align
        line += "\t"
        if num_operands == 0:
            line += "\t\t\t"
        if num_operands == 1:
            line += "\t\t"
        if num_operands == 2 or num_operands == 3:
            line += "\t"

        #translate our job byte into an actual job name
        #currently commented out because the table i found
        #wasn't referring to the jobs correctly
        '''
        if byte == "C6":
            if byte_data[0] in jobs:
                byte_data[0] = jobs[byte_data[0]]
        '''

        #translate our shop byte into an actual shop name
        if byte == "A1":
            if byte_data[0] in shops:
                byte_data[0] = shops[byte_data[0]]

        #translate our music byte into a trak name
        if byte == "B4":
            if byte_data[0] in music:
                byte_data[0] = music[byte_data[0]]

        #translate our sand effect byte into an effect name
        if byte == "B5":
            if byte_data[0] in sounds:
                byte_data[0] = sounds[byte_data[0]]

        #translate a status effect into a status effect name
        #also indicate which character it's applying to
        if byte == "BA" or byte == "BB" or byte == "BC":
            if(byte_data[0] in character):   
                byte_data[0] = character[byte_data[0]]
            if(byte_data[1] in status):
                byte_data[1] = status[byte_data[1]]

        #translate a bit setting into which actual flag is being set/unset
        if byte == "A2":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = a2index + int('0x' + byte_data[0], 16) // 0x08
            byte_data[0] = "Turn on bit " + bit + " at address " + str(hex(index))
        if byte == "A3":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = a3index + int('0x' + byte_data[0], 16) // 0x08
            byte_data[0] = "Turn off bit " + bit + " at address " + str(hex(index))

        if byte == "A4":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = a4index + int('0x' + byte_data[0], 16) // 0x08
            byte_data[0] = "Turn on bit " + bit + " at address " + str(hex(index))
        if byte == "A5":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = a5index + int('0x' + byte_data[0], 16) // 0x08
            byte_data[0] = "Turn off bit " + bit + " at address " + str(hex(index))

        if byte == "CA":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = caindex + int('0x' + byte_data[0], 16) // 0x08
            bigindex = int(byte_data[1]) * 0x20
            index = index + bigindex
            byte_data[0] = "Turn on bit " + bit + " at address "
            byte_data[1] = hex(index)
        if byte == "CB":
            bit = bitset[int('0x' + byte_data[0], 16) % 0x08]
            index = caindex + int('0x' + byte_data[0], 16) // 0x08
            bigindex = int(byte_data[1]) * 0x20
            index = index + bigindex
            byte_data[0] = "Turn off bit " + bit + " at address "
            byte_data[1] = hex(index)

        #translate a magic spell byte into the name of the spell
        if byte == "AC":
            byte_data[0] = magic[byte_data[0]]

        #translate a gained or lost item into the name of the item
        if byte == "AA" or byte == "AB":
            byte_data[0] = items[byte_data[0]]

        #add the comment (beginning with ; for asar) to the end of the line
        line += ";" + opcodes[byte].format(*byte_data) + "\n"

        #you can put in as much event data at once as you want, add a delineator
        #for the end of events so it's clear where they start and stop
        if byte == "FF":
            line += "\n-------------------------------\n"

        commented += line

print(commented)
