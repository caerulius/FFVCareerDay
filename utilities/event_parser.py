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

data = raw_input("paste your event here, no newlines")

operands = {}
operands['00'] = 0
operands['01'] = 0
operands['02'] = 0
operands['03'] = 0
operands['04'] = 0
operands['05'] = 0
operands['06'] = 0
operands['07'] = 0
operands['08'] = 0
operands['09'] = 0
operands['0A'] = 0
operands['0B'] = 0
operands['0C'] = 0
operands['0D'] = 0
operands['0E'] = 0
operands['0F'] = 0
operands['70'] = 0
operands['71'] = 0
operands['72'] = 0
operands['73'] = 0
operands['74'] = 0
operands['75'] = 0
operands['76'] = 0
operands['77'] = 0
operands['78'] = 0
operands['79'] = 0
operands['7A'] = 0
operands['7B'] = 0
operands['7C'] = 0
operands['7D'] = 0
operands['7E'] = 0
operands['7F'] = 0
operands['BA'] = 2
operands['BB'] = 2
operands['BC'] = 2
operands['C5'] = 0
operands['C8'] = 2
operands['C9'] = 2
operands['CA'] = 2
operands['CB'] = 2
operands['CC'] = 0
operands['CD'] = 2
operands['CE'] = 2
operands['CF'] = 2
operands['D0'] = 2
operands['D1'] = 3
operands['D2'] = 4
operands['D3'] = 3
operands['D4'] = 3
operands['D5'] = 3
operands['D6'] = 3
operands['D7'] = 3
operands['D8'] = 3 #guess
operands['D9'] = 3 #guess
operands['DA'] = 3 #guess
operands['DB'] = 0
operands['DC'] = 3 #guess
operands['DD'] = 3 #guess
operands['DE'] = 3
operands['DF'] = 3
operands['E1'] = 5
operands['E3'] = 5
operands['EC'] = 0
operands['ED'] = 0
operands['EE'] = 0
operands['EF'] = 0
operands['F2'] = 0
operands['F3'] = 3
operands['F5'] = 0
operands['F6'] = 0
operands['F7'] = 0
operands['F8'] = 0
operands['F9'] = 0
operands['FA'] = 0
operands['FB'] = 0
operands['FC'] = 0
operands['FD'] = 0
operands['FE'] = 0
operands['FF'] = 0

opcodes = {}
opcodes['00'] = "Player Hold"
opcodes['01'] = "Player Move Up"
opcodes['02'] = "Player Move Right"
opcodes['03'] = "Player Move Down"
opcodes['04'] = "Player move Left"
opcodes['05'] = "Player Bounce in Place"
opcodes['06'] = "Player Bounce in Place"
opcodes['07'] = "<Unknown>"
opcodes['08'] = "<Unknown>"
opcodes['09'] = "Player Show"
opcodes['0A'] = "Player Hide"
opcodes['0B'] = "<Unknown>"
opcodes['0C'] = "<Unknown>"
opcodes['0D'] = "<Unknown>"
opcodes['0E'] = "<Unknown>"
opcodes['0F'] = "<Unknown>"
#10-6F handled manually, all the same
opcodes['70'] = "Timing"
opcodes['71'] = "Timing"
opcodes['72'] = "Timing"
opcodes['73'] = "Timing"
opcodes['74'] = "Timing"
opcodes['75'] = "Timing"
opcodes['76'] = "Timing"
opcodes['77'] = "Timing"
opcodes['78'] = "Timing"
opcodes['79'] = "Timing"
opcodes['7A'] = "Naming Character"
opcodes['7B'] = "Timing"
opcodes['7C'] = "Timing"
opcodes['7D'] = "Timing"
opcodes['7E'] = "Timing"
opcodes['7F'] = "Timing"
#80-9F handled manually, all the same
opcodes['A0'] = "(Message) {0}"
opcodes['A1'] = "Run Shop {0}"
opcodes['A2'] = "Set Event Flag 0{0}"
opcodes['A3'] = "Clear Event Flag 0{0}"
opcodes['A4'] = "Set Event Flag 1{0}"
opcodes['A6'] = "Set Flag {0}"
opcodes['A7'] = "Clear Flag {0}"
opcodes['A8'] = "Adjust Character HP by {0}"
opcodes['A9'] = "Adjust Character MP by {0}"
opcodes['AA'] = "Add Item {0}"
opcodes['AB'] = "Remove Item {0}"
opcodes['AC'] = "Add Magic {0}"
opcodes['AD'] = "Run Inn {0}"
opcodes['AE'] = "Blur Screen {0}"
opcodes['AF'] = "Add {0} Gil"
opcodes['B0'] = "Subtract {0} Gil "
opcodes['B1'] = "Set Player Sprite {0}"
opcodes['B2'] = "Pause for {0} cycles"
opcodes['B3'] = "Pause for {0}0 cycles"
opcodes['B4'] = "Play Background Music {0}"
opcodes['B5'] = "Play Sound Effect {0}"
opcodes['B6'] = "Play Movie {0}"
opcodes['B7'] = "Add/Remove character {0}"
opcodes['B8'] = "Toggle Additive Tint by {0}"
opcodes['B9'] = "Toggle Subtracitve Tint by {0}"
opcodes['BA'] = "Clear Character {0} Status 0 {1}"
opcodes['BB'] = "Set Character {0} Status 0 {1}"
opcodes['BC'] = "Toggle Character {0} Status 0 {1}"
opcodes['BD'] = "Start Event Battle {0}"
opcodes['BE'] = "Rumble effect of {0} magnitude"
opcodes['BF'] = "Sprite effect {0}"
opcodes['C0'] = "Circle Mask {0}"
opcodes['C1'] = "<Unknown>"
opcodes['C2'] = "Map {0}"
opcodes['C3'] = "Fade in Speed {0}"
opcodes['C4'] = "Fade out Speed {0}"
opcodes['C5'] = "<unknown>"
opcodes['C6'] = "Add job {0}"
opcodes['C7'] = "Play next {0} bytes simultaneously"
opcodes['C8'] = "Display Message/Text/Dialogue {0} {1}"
opcodes['C9'] = "Play Music {0} {1}"
opcodes['CA'] = "Set Flag 2/3/4/5/{0} {1}"
opcodes['CB'] = "Clear Flag 2/3/4/5/{0} {1}"
opcodes['CC'] = "Noop"
opcodes['CD'] = "Run event index {1}{0}"
opcodes['CE'] = "Play next {1} bytes {0} times"
opcodes['CF'] = "Play next {1} bytes simultaneously {0} times"
opcodes['D0'] = "(Music) {0} {1}"
opcodes['D1'] = "(Timer?) {0} {1} {2}"
opcodes['D2'] = "(Map) {0} {1} {2} {3}"
opcodes['D3'] = "Sprite {0} set map position {1}, {2}"
opcodes['D4'] = "(Music) {0} {1} {2}"
opcodes['D5'] = "(Sound) {0} {1} {2}"
opcodes['D6'] = "(Map) {0} {1} {2}"
opcodes['D7'] = "(Timer?) {0} {1} {2}"
opcodes['D8'] = "Unknown"
opcodes['D9'] = "Unknown"
opcodes['DA'] = "Unknown"
opcodes['DB'] = "Restore Player status"
opcodes['DC'] = "Unknown"
opcodes['DD'] = "Unknown"
opcodes['DE'] = "Noop"
opcodes['DF'] = "Noop"
opcodes['E0'] = "Unknown"
opcodes['E1'] = "Return from cutscene? {0} {1} {2} {3} {4}"
opcodes['E2'] = "Unknown"
opcodes['E3'] = "Inter-map cutscene? {0} {1} {2} {3} {4}"
opcodes['E4'] = "Unknown"
opcodes['E5'] = "Unknown"
opcodes['E6'] = "Unknown"
opcodes['E7'] = "Unknown"
opcodes['E8'] = "Unknown"
opcodes['E9'] = "Unknown"
opcodes['EA'] = "Unknown"
opcodes['EB'] = "Unknown"
opcodes['EC'] = "Noop"
opcodes['ED'] = "Noop"
opcodes['EE'] = "Noop"
opcodes['EF'] = "Noop"
opcodes['F0'] = "Unknown"
opcodes['F1'] = "Unknown"
opcodes['F2'] = "Noop"
opcodes['F3'] = "Set Map Tiles {0} {1} {2} {"
opcodes['F5'] = "Noop"
opcodes['F6'] = "Noop"
opcodes['F7'] = "Noop"
opcodes['F8'] = "Noop"
opcodes['F9'] = "Noop"
opcodes['FA'] = "Noop"
opcodes['FB'] = "Noop"
opcodes['FC'] = "Noop"
opcodes['FD'] = "Noop"
opcodes['FE'] = "Noop"
opcodes['FF'] = "End Event"

jobs = {}
jobs['00'] = "Knight"
jobs['01'] = "Monk"
jobs['02'] = "Thief"
jobs['03'] = "Dragoon"
jobs['04'] = "Ninja"
jobs['05'] = "Samurai"
jobs['06'] = "Berserker"
jobs['07'] = "Hunter"
jobs['08'] = "Mystic Knight"
jobs['09'] = "White Mage"
jobs['0A'] = "Black Mage"
jobs['0B'] = "Time Mage"
jobs['0C'] = "Summoner"
jobs['0D'] = "Blue Mage"
jobs['0E'] = "Red Mage"
jobs['0F'] = "Mediator"
jobs['10'] = "Chemist"
jobs['11'] = "Geomancer"
jobs['12'] = "Bard"
jobs['13'] = "Dancer"
jobs['14'] = "Mimic"

shops = {}
shops['00'] = "Tule Weapon"
shops['01'] = "Tule Armor"
shops['02'] = "Tule Inn"
shops['03'] = "Tule Magic"
shops['04'] = "Carwen Weapon"
shops['05'] = "Carwen Armor"
shops['06'] = "Carwen Inn"
shops['07'] = "Carwen Magic"
shops['08'] = "Worus Weapon"
shops['09'] = "Worus Armor"
shops['0A'] = "Worus Magic"
shops['0B'] = "Karnak Weapon 1"
shops['0C'] = "Karnak Weapon 2"
shops['0D'] = "Karnak Armor"
shops['0E'] = "Common World 1 Inn"
shops['0F'] = "Karnak Magic 1"
shops['10'] = "Karnak Magic 2"
shops['11'] = "Karnak Magic 3"
shops['12'] = "Crescent Weapon"
shops['13'] = "Crescent Armor"
shops['14'] = "0 Magic"
shops['15'] = "Istory Rare"
shops['16'] = "0 Armor"
shops['17'] = "0 Inn"
shops['18'] = "Jacole Weapon"
shops['19'] = "Jacole Armor"
shops['1A'] = "Common World 2 Inn 1"
shops['1B'] = "Lix G"
shops['1C'] = "Lix Armor"
shops['1D'] = "Lix Magic"
shops['1E'] = "Rugor Weapon"
shops['1F'] = "Rugor Armor"
shops['20'] = "Common World 2 Inn 2"
shops['21'] = "Bal/Kelb Weapon"
shops['22'] = "Bal/Kelb Armor"
shops['23'] = "Kelb Weapon"
shops['24'] = "Kelb Armor"
shops['25'] = "Common World 2 Magic 1"
shops['26'] = "Common World 2 Magic 2"
shops['27'] = "Common World 2 Magic 3"
shops['28'] = "Surgate Weapon"
shops['29'] = "Surgate Armor"
shops['2A'] = "Mua Weapon"
shops['2B'] = "Mua Armor"
shops['2C'] = "Mua Magic 1"
shops['2D'] = "Mua Magic 2"
shops['2E'] = "Mua Magic 3"
shops['2F'] = "0 Weapon"
shops['30'] = "0 Armor"
shops['31'] = "Lix Inn"
shops['32'] = "Dwarf Magic (unused)"
shops['33'] = "Dwarf Weapon"
shops['34'] = "Dwarf Armor"
shops['35'] = "0 Inn"
shops['36'] = "Mirage Weapon"
shops['37'] = "Mirage Weapon 2 (I think)"
shops['38'] = "Mirage Armor"
shops['39'] = "Mirage Rare"
shops['3A'] = "Mirage Magic 1"
shops['3B'] = "Mirage Magic 2"
shops['3C'] = "Mirage Inn 1"
shops['3D'] = "Mirage Inn 2"
shops['3E'] = "Karnak Weapon (pre arrest)"
shops['3F'] = "Karnak Armor (pre arrest)"


sprite_actions = {}
sprite_actions['00'] = 'Hold'
sprite_actions['01'] = 'Move Up'
sprite_actions['02'] = 'Move Right'
sprite_actions['03'] = 'Move Down'
sprite_actions['04'] = 'Move Left'
sprite_actions['05'] = 'Bounce'
sprite_actions['06'] = 'Bounce'
sprite_actions['09'] = 'Show'
sprite_actions['0A'] = 'Hide'

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
    if byte[0] == "1" or byte[0] == "2" or byte[0] == "3" or \
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
        elif int(byte[0]) >= 1 and int(byte[0]) <= 6:
            line = "pose".join(line.rsplit(byte, 1))
        commented += line
    elif byte[0] == "9":
        byte0 = byte
        tup = getNextByte(pointer)
        byte = tup[0]
        pointer = tup[1]
        line += "{0} {1}\t\t\tSprite 1{0} do event {1}".format(byte0, byte) + "\n"
        if byte in sprite_actions:
            line = sprite_actions[byte].join(line.rsplit(byte, 1))
        elif int(byte[0]) >= 1 and int(byte[0]) <= 6:
            line = "pose".join(line.rsplit(byte, 1))
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
        line += opcodes[byte].format(*byte_data) + "\n"
        if byte == "C6":
            line = jobs[byte_data[0]].join(line.rsplit(byte_data[0], 1))
        if byte == "A1":
            line = shops[byte_data[0]].join(line.rsplit(byte_data[0], 1))

        commented += line

print commented
