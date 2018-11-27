#going to leave the sample data in here, feel free
#to use if you're testing stuff out
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

from event_data import *

data = raw_input("paste your event here, no newlines: ")

pointer = -2
commented = ""
data = data.upper().replace('\n', '')

def getNextByte(pointer):
    pointer = pointer + 2 
    return (data[pointer:pointer+2], pointer)

while pointer < len(data) - 2:
    tup = getNextByte(pointer)
    byte = tup[0]
    pointer = tup[1]

    #handle the specific ranges first
    if byte in poses:
        commented += "{0}\t\t\tPlayer pose: {1}\n".format(byte, poses[byte])
    elif byte[0] == "1" or byte[0] == "2" or byte[0] == "3" or \
       byte[0] == "4" or byte[0] == "5" or byte[0] == "6":
        commented += "{0}\t\t\tPlayer or Sprite Pose".format(byte) + "\n"
    elif byte[0] == "8":
        byte0 = byte
        tup = getNextByte(pointer)
        byte = tup[0]
        pointer = tup[1]
        line = "{0} {1}\t\t\tSprite 0{0} do event {1}".format(byte0, byte) + "\n"
        if byte in sprite_actions:
            line = sprite_actions[byte].join(line.rsplit(byte, 1))
        elif byte in poses and byte[0].isdigit() and int(byte[0]) >= 1 and int(byte[0]) <= 6:
            line = poses[byte].join(line.rsplit(byte, 1))
        commented += line
    elif byte[0] == "9":
        byte0 = byte
        tup = getNextByte(pointer)
        byte = tup[0]
        pointer = tup[1]
        line += "{0} {1}\t\t\tSprite 1{0} do event {1}".format(byte0, byte) + "\n"
        if byte in sprite_actions:
            line = sprite_actions[byte].join(line.rsplit(byte, 1))
        elif byte in poses and byte[0].isdigit() and int(byte[0]) >= 1 and int(byte[0]) <= 6:
            line = poses[byte].join(line.rsplit(byte, 1))
        commented += line
    else:
        num_operands = 1
        byte_data = []
        line = ""
        if byte in operands:
            num_operands = operands[byte]
        for x in range(0, num_operands):
            tup = getNextByte(pointer)
            byte_data.append(tup[0])
            pointer = tup[1]
        line += byte + " "
        for i in byte_data:
            line += i + " "

        #dumbass code to make the comments align
        line += "\t"
        if num_operands < 2:
            line += "\t\t"
        if num_operands == 2 or num_operands == 3:
            line += "\t"

        if byte == "C6":
            byte_data[0] = jobs[byte_data[0]]
        if byte == "A1":
            byte_data[0] = shops[byte_data[0]]
        if byte == "B4":
            byte_data[0] = music[byte_data[0]]
        if byte == "B5":
            byte_data[0] = sounds[byte_data[0]]
        if byte == "BA" or byte == "BB" or byte == "BC":
            byte_data[0] = character[byte_data[0]]
            byte_data[1] = status[byte_data[1]]
        if byte == "AC":
            byte_data[0] = magic[byte_data[0]]
        if byte == "AA" or byte == "AB":
            byte_data[0] = items[byte_data[0]]
            
        line += opcodes[byte].format(*byte_data) + "\n"
        if byte == "FF":
            line += "\n-------------------------------\n"

        commented += line

print commented
