# -*- coding: utf-8 -*-
"""
Created on Sun Mar  8 23:15:47 2020

@author: PMAC
"""
import random

def b2i(byte):
    return int(byte,base=16)
def i2b(integer):
    return hex(integer).replace("0x","").upper()

def randomize_default_abilities(RE=random):
    ability_dict = {'Guard':'06',
                    'BuildUp':'08',
                    'Mantra':'09',
                    'Escape':'0A',
                    'Steal':'0B',
                    'Capture':'0C',
                    'Jump':'0D',
                    'DrgnSwd':'0E',
                    'Image':'10',
                    'GilToss':'13',
                    'Slash':'14',
                    'Animals':'15',
                    'X-Fight':'17',
                    'Conjure':'18',
                    'Terrain':'23',
                    'Analyze':'1A',
                    'Dance':'2A',
                    'Flirt':'29',
                    'Tame':'1B',   
                    'Item':'02',
                    'Defend':'04',
                    'Fight':'05',
                    'Kick':'07',
                    'Steal':'0B',
                    'Jump':'0D',
                    'Image':'10',
                    'Throw':'11',
                    'Aim':'16',
                    'Catch':'1D',
                    'Drink':'20',
                    'Sing':'28',
                    'Mimic':'2B',
                    'MagicSword':'31',
                    'White':'37',
                    'Black':'3D',
                    'Dimen':'43',
                    'Summon':'48',
                    'Red':'4B',
                    'X-Magic':'4C',
                    'Hide':'25',
                    'Blue':'4D'
                    }
    job_dict = {'00':'Knight',
                '01':'Monk',
                '02':'Thief',
                '03':'Dragoon',
                '04':'Ninja',
                '05':'Samurai',
                '06':'Berserker',
                '07':'Hunter',
                '08':'MysticKnight',
                '09':'WhiteMage',
                '0A':'BlackMage',
                '0B':'TimeMage',
                '0C':'Summoner',
                '0D':'BlueMage',
                '0E':'RedMage',
                '0F':'Mediator',
                '10':'Chemist',
                '11':'Geomancer',
                '12':'Bard',
                '13':'Dancer',
                '14':'Mimic',
                '15':'Freelancer'}
    

    STARTING = 'D15760'
    asar_str = '\n;Randomized default job abilities\n'
    STARTING2 = 'F81016'
    spoiler = {}
    for job_id, job_name in job_dict.items():
        choices = RE.sample(list(ability_dict.keys()),4)
        spoiler[job_name] = ', '.join(choices)
        choices2 = [ability_dict[i] for i in choices]
        asar_str = asar_str + ";%s\norg $%s\ndb $" % (job_name,STARTING) + ', $'.join(choices2) + '\n'
        # now we need to fix the starting randomized stats for these new moves    
        for _ in range(4):
            asar_str = asar_str + "org $%s\ndb $" % (STARTING2) + ', $'.join(choices2) + '\n'
            STARTING2 = i2b(b2i(STARTING2) + b2i('50'))
        asar_str = asar_str + '\n'
        STARTING = i2b(b2i(STARTING) + 4)
#    print(asar_str)            
        
    
    spoiler_str = '\n----- RANDOMIZED DEFAULT ABILITIES -----\n'
    for k,v in spoiler.items():
        spoiler_str = spoiler_str + "{:<30}".format(k + ':') + v + "\n"
#    print(spoiler_str)
        
    return asar_str, spoiler_str
        
        
def randomize_learning_abilities(RE=random):
    asar_str = '\n;Randomized job ability learning\n'
    spoiler_str = '\n----- RANDOMIZED ABILITY LEARNING -----\n'
    
    ability_ids = {'94':'Cover',
        '06':'Guard',
        '91':'Dbl Grip',
        '80':'Equip Shields',
        '81':'Equip Armor',
        '83':'Equip Swords',
        '08':'BuildUp',
        '90':'Brawl',
        '09':'Mantra',
        '95':'Counter',
        '8b':'Hp +10%',
        '8c':'Hp +20%',
        '8d':'Hp +30%',
        '9c':'Passages',
        '0a':'Escape',
        'a0':'Dash',
        '0b':'Steal',
        '9a':'Caution',
        '0c':'Capture',
        '8a':'Agility',
        '0d':'Jump',
        '0e':'DrgnSwd',
        '84':'Equip Spears & Lances',
        '0f':'Smoke',
        '10':'Image',
        '9b':'Preemptive',
        '11':'Throw',
        '92':'2-Handed',
        '12':'SwdSlap',
        '13':'Gil Toss',
        '96':'Evade',
        '85':'Equip Katanas',
        '14':'Slash',
        '99':'Berserk',
        '86':'Equip Axes & Hammers',
        '15':'Animals',
        '16':'Aim',
        '87':'Equip Bows',
        '17':'X-Fight',
        '98':'Barrier',
        '2c':'MgcSwrd (Lv1)',
        '2d':'MgcSwrd (Lv2)',
        '2e':'MgcSwrd (Lv3)',
        '2f':'MgcSwrd (Lv4)',
        '30':'MgcSwrd (Lv5)',
        '31':'MgcSwrd (Lv6)',
        '32':'White (Lv1)',
        '33':'White (Lv2)',
        '34':'White (Lv3)',
        '35':'White (Lv4)',
        '36':'White (Lv5)',
        '37':'White (Lv6)',
        '8e':'Mp +10%',
        '38':'Black (Lv1)',
        '39':'Black (Lv2)',
        '3a':'Black (Lv3)',
        '3b':'Black (Lv4)',
        '3c':'Black (Lv5)',
        '3d':'Black (Lv6)',
        '8f':'Mp +30%',
        '3e':'Dimen (Lv1)',
        '3f':'Dimen (Lv2)',
        '40':'Dimen (Lv3)',
        '41':'Dimen (Lv4)',
        '42':'Dimen (Lv5)',
        '43':'Dimen (Lv6)',
        '9f':'Equip Rods',
        '44':'Summon (Lv1)',
        '45':'Summon (Lv2)',
        '46':'Summon (Lv3)',
        '47':'Summon (Lv4)',
        '48':'Summon (Lv5)',
        '18':'Conjure',
        '19':'Observe',
        '97':'Learning',
        '4d':'Blue',
        '1a':'Analyze',
        '49':'Red (Lv1)',
        '4a':'Red (Lv2)',
        '4b':'Red (Lv3)',
        '4c':'X-Magic',
        '1b':'Tame',
        '1c':'Control',
        '88':'Equip Whips',
        '1d':'Catch',
        '93':'Medicine',
        '1f':'Combine',
        '20':'Drink',
        '21':'Pray',
        '22':'Revive',
        '23':'Terrain',
        '9e':'Pitfalls',
        '9d':'DmgFloor',
        '25':'Hide',
        '89':'Equip Harps',
        '28':'Sing',
        '29':'Flirt',
        '2a':'Dance',
        '82':'Equip Ribbons',
        '2b':'Mimic'}
        
    
    job_lists = [['Cover','Knight','D15302'],
            ['Guard','Knight','D15305'],
            ['Dbl Grip','Knight','D15308'],
            ['Equip Shields','Knight','D1530B'],
            ['Equip Armor','Knight','D1530E'],
            ['Equip Swords','Knight','D15311'],
            ['BuildUp','Monk','D15314'],
            ['Brawl','Monk','D15317'],
            ['Mantra','Monk','D1531A'],
            ['Counter','Monk','D1531D'],
            ['Hp +10%','Monk','D15320'],
            ['Hp +20%','Monk','D15323'],
            ['Hp +30%','Monk','D15326'],
            ['Passages','Thief','D15329'],
            ['Escape','Thief','D1532C'],
            ['Dash','Thief','D1532F'],
            ['Steal','Thief','D15332'],
            ['Caution','Thief','D15335'],
            ['Capture','Thief','D15338'],
            ['Agility','Thief','D1533B'],
            ['Jump','Dragoon','D1533E'],
            ['DrgnSwd','Dragoon','D15341'],
            ['Equip Spears & Lances','Dragoon','D15344'],
            ['Smoke','Ninja','D15347'],
            ['Image','Ninja','D1534A'],
            ['Preemptive','Ninja','D1534D'],
            ['Throw','Ninja','D15350'],
            ['2-Handed','Ninja','D15353'],
            ['SwdSlap','Samurai','D15356'],
            ['Gil Toss','Samurai','D15359'],
            ['Evade','Samurai','D1535C'],
            ['Equip Katanas','Samurai','D1535F'],
            ['Slash','Samurai','D15362'],
            ['Berserk','Berserker','D15365'],
            ['Equip Axes & Hammers','Berserker','D15368'],
            ['Animals','Hunter','D1536B'],
            ['Aim','Hunter','D1536E'],
            ['Equip Bows','Hunter','D15371'],
            ['X-Fight','Hunter','D15374'],
            ['Barrier','Mystic Knight','D15377'],
            ['MgcSwrd (Lv1)','Mystic Knight','D1537A'],
            ['MgcSwrd (Lv2)','Mystic Knight','D1537D'],
            ['MgcSwrd (Lv3)','Mystic Knight','D15380'],
            ['MgcSwrd (Lv4)','Mystic Knight','D15383'],
            ['MgcSwrd (Lv5)','Mystic Knight','D15386'],
            ['MgcSwrd (Lv6)','Mystic Knight','D15389'],
            ['White (Lv1)','White Mage','D1538C'],
            ['White (Lv2)','White Mage','D1538F'],
            ['White (Lv3)','White Mage','D15392'],
            ['White (Lv4)','White Mage','D15395'],
            ['White (Lv5)','White Mage','D15398'],
            ['White (Lv6)','White Mage','D1539B'],
            ['Mp +10%','White Mage','D1539E'],
            ['Black (Lv1)','Black Mage','D153A1'],
            ['Black (Lv2)','Black Mage','D153A4'],
            ['Black (Lv3)','Black Mage','D153A7'],
            ['Black (Lv4)','Black Mage','D153AA'],
            ['Black (Lv5)','Black Mage','D153AD'],
            ['Black (Lv6)','Black Mage','D153B0'],
            ['Mp +30%','Black Mage','D153B3'],
            ['Dimen (Lv1)','Time Mage','D153B6'],
            ['Dimen (Lv2)','Time Mage','D153B9'],
            ['Dimen (Lv3)','Time Mage','D153BC'],
            ['Dimen (Lv4)','Time Mage','D153BF'],
            ['Dimen (Lv5)','Time Mage','D153C2'],
            ['Dimen (Lv6)','Time Mage','D153C5'],
            ['Equip Rods','Time Mage','D153C8'],
            ['Summon (Lv1)','Summoner','D153CB'],
            ['Summon (Lv2)','Summoner','D153CE'],
            ['Summon (Lv3)','Summoner','D153D1'],
            ['Summon (Lv4)','Summoner','D153D4'],
            ['Summon (Lv5)','Summoner','D153D7'],
            ['Conjure','Summoner','D153DA'],
            ['Observe','Blue Mage','D153DD'],
            ['Learning','Blue Mage','D153E0'],
            ['Blue','Blue Mage','D153E3'],
            ['Analyze','Blue Mage','D153E6'],
            ['Red (Lv1)','Red Mage','D153E9'],
            ['Red (Lv2)','Red Mage','D153EC'],
            ['Red (Lv3)','Red Mage','D153EF'],
            ['X-Magic','Red Mage','D153F2'],
            ['Tame','Mediator','D153F5'],
            ['Control','Mediator','D153F8'],
            ['Equip Whips','Mediator','D153FB'],
            ['Catch','Mediator','D153FE'],
            ['Medicine','Chemist','D15401'],
            ['Combine','Chemist','D15404'],
            ['Drink','Chemist','D15407'],
            ['Pray','Chemist','D1540A'],
            ['Revive','Chemist','D1540D'],
            ['Terrain','Geomancer','D15410'],
            ['Pitfalls','Geomancer','D15413'],
            ['DmgFloor','Geomancer','D15416'],
            ['Hide','Bard','D15419'],
            ['Equip Harps','Bard','D1541C'],
            ['Sing','Bard','D1541F'],
            ['Flirt','Dancer','D15422'],
            ['Dance','Dancer','D15425'],
            ['Equip Ribbons','Dancer','D15428'],
            ['Mimic','Mimic','D1542B']]
     
    abilities = list(ability_ids.keys())
    RE.shuffle(abilities)
    for job in job_lists:
        vanilla_ability, job_name, address = job[0], job[1], job[2]
        ability = abilities.pop()       
        asar_str = asar_str + "org $%s\ndb $%s" % (address,ability.upper()) + "\n"
        spoiler_str = spoiler_str + "{:<50}".format("%s: %s" % (job_name, vanilla_ability)) + ability_ids[ability] + "\n"
#    print(asar_str)
#    print(spoiler_str)        
    return asar_str, spoiler_str

def shuffle_music(RE=random):
    # dict setup is addresses at lookup table for song (keys), and correspond instruments (vals)
    music_dict = {'e8e5c5':'0f000e000b00140006000700010002000d000400000000000000000000000000',
    '7aebc5':'08000e0014000b00040002000000000000000000000000000000000000000000',
    'b4f1c5':'0f0010000b0015001c0016000c00190004000000000000000000000000000000',
    '57fac5':'0f000a0014000e00060007000100020005000000000000000000000000000000',
    '1dffc5':'0f0010000e001d00140008000000000000000000000000000000000000000000',
    '9503c6':'0d000f001c000b001d0000000000000000000000000000000000000000000000',
    '4e07c6':'10000d000b001400050020001f00040000000000000000000000000000000000',
    'cd0bc6':'0f0010000a000800140000000000000000000000000000000000000000000000',
    'e30ec6':'0d000b000f001c00000000000000000000000000000000000000000000000000',
    'd812c6':'0e000b0014000400100006000700010003000000000000000000000000000000',
    '9d1ec6':'10000b0000000000000000000000000000000000000000000000000000000000',
    '9f1fc6':'12000c000b001600000000000000000000000000000000000000000000000000',
    '8121c6':'0f000b0015000500080018000000000000000000000000000000000000000000',
    'c225c6':'10000b0016001400090000000000000000000000000000000000000000000000',
    '7d28c6':'0e00140002000100110000000000000000000000000000000000000000000000',
    'fd2ac6':'0d000b0010000000000000000000000000000000000000000000000000000000',
    'e42cc6':'0f000d000b0014000c0000000000000000000000000000000000000000000000',
    '712fc6':'0000000000000000000000000000000000000000000000000000000000000000',
    '8d2fc6':'0b0014000e001100040008000000000000000000000000000000000000000000',
    '5732c6':'100012000b001d00000000000000000000000000000000000000000000000000',
    '4736c6':'0b0010000f0002001c0008000000000000000000000000000000000000000000',
    'e63cc6':'0f0021000b00140008001b000d001c0000000000000000000000000000000000',
    'a241c6':'0e000b0014000800020004000000000000000000000000000000000000000000',
    '3f45c6':'0b00140004000100030000000000000000000000000000000000000000000000',
    '8147c6':'14000b0002000e00040000000000000000000000000000000000000000000000',
    'b94ac6':'0b000f000d001000000000000000000000000000000000000000000000000000',
    'd94cc6':'0e001e00140021001700200022001f0000000000000000000000000000000000',
    '1251c6':'1600000000000000000000000000000000000000000000000000000000000000',
    'b052c6':'0f000d000b001400130021000400000000000000000000000000000000000000',
    '0459c6':'0e000d0014000b00060001000200000000000000000000000000000000000000',
    'c15cc6':'10000d000b000000000000000000000000000000000000000000000000000000',
    '98bcc6':'010014000b000e00100021002300040000000000000000000000000000000000',
    '7960c6':'0e000b0014000200040008000000000000000000000000000000000000000000',
    'fa65c6':'0f002300100013001d0005000000000000000000000000000000000000000000',
    '3b6ec6':'11000e0014001a00040006000700010003000500000000000000000000000000',
    '6178c6':'10000b000800140002000d0004001c000e000000000000000000000000000000',
    '10b7c6':'0d00090018000c001f000b001d00040000000000000000000000000000000000',
    '537ec6':'05001f0020001400090017000000000000000000000000000000000000000000',
    'a3a4c6':'0b001b00060007001f0001000200090014000400000000000000000000000000',
    'c47fc6':'10000b000d001400070006000100030002000000000000000000000000000000',
    'a385c6':'10000e000b001400040006000700080001000200000000000000000000000000',
    'b58ac6':'0e00080004000b00000000000000000000000000000000000000000000000000',
    'b78bc6':'0e000b0010000400020008000000000000000000000000000000000000000000',
    '32c0c6':'0b000e0014000400060007000100020009000000000000000000000000000000',
    '5a8dc6':'0e0011001d0014001a0004000600070001000200190000000000000000000000',
    '7490c6':'0b000c0014000400010003001a00000000000000000000000000000000000000',
    '8a94c6':'0e000b0014001c00020004000000000000000000000000000000000000000000',
    '0d99c6':'14000e001d002100230000000000000000000000000000000000000000000000',
    '9f9ac6':'0000000000000000000000000000000000000000000000000000000000000000',
    'e09cc6':'0e000b0010000a00080004001c00020000000000000000000000000000000000',
    'aaa1c6':'050007000200220021000b001400000000000000000000000000000000000000',
    'bea7c6':'0f000e000b0014000d0002000800090000000000000000000000000000000000',
    'f6acc6':'0000000000000000000000000000000000000000000000000000000000000000',
    '64b3c6':'0900210009001100000000000000000000000000000000000000000000000000',
    '7badc6':'0900210009001100000000000000000000000000000000000000000000000000',
    '0eb4c6':'0900210009001100000000000000000000000000000000000000000000000000',
    '4baec6':'0900210009002200110000000000000000000000000000000000000000000000',
    '03b6c6':'0900110000000000000000000000000000000000000000000000000000000000',
    'e2b4c6':'0900110000000000000000000000000000000000000000000000000000000000',
    '30b0c6':'0900110000000000000000000000000000000000000000000000000000000000',
    'cbb1c6':'0900110000000000000000000000000000000000000000000000000000000000',
    '96bac6':'0800140004000b000e0010000000000000000000000000000000000000000000',
    '8bc5c6':'0000000000000000000000000000000000000000000000000000000000000000',
    'aec7c6':'1d000d000c000b00140010000100200009002100000000000000000000000000',
    '42cdc6':'0b000e0005001400040002000700060001001a00000000000000000000000000',
    '00c8d0':'10000f000d0014000b0000000000000000000000000000000000000000000000',
    '7bdbc6':'1d00100000000000000000000000000000000000000000000000000000000000',
    'c5e1c6':'1c000b000d001600100009000000000000000000000000000000000000000000',
    '44e8c6':'0b000e001c0004000200080010000d0000000000000000000000000000000000',
    'f2fcc6':'0000000000000000000000000000000000000000000000000000000000000000',
    'c4fdc6':'0000000000000000000000000000000000000000000000000000000000000000',
    'fefdc6':'0000000000000000000000000000000000000000000000000000000000000000'}
    music_addresses = list(music_dict.keys())
    RE.shuffle(music_addresses)
    
    asar_str_1 = ';Music randomization\norg $C43B97\n'
    asar_str_2 = ';Music randomization instruments\norg $C43DAA\n'
    for i in music_addresses:
        v = music_dict[i]
        asar_str_1 = asar_str_1 + "db $" + i[0:2] + ", $" + i[2:4] + ", $" + i[4:6]  + "\n"
        asar_str_2 = asar_str_2 + "db $" + ', $'.join([v[i:i+2] for i in range(0, len(v), 2)]) + "\n"
        
    asar_str = asar_str_1 + "\n" + asar_str_2
    return asar_str
        
    
    
    
def free_shop_prices():
    
    asar_str = '''
    padbyte $00
    org $F80000
    pad $F80400 
    org $D12A00 
    pad $D12D00 
    padbyte $FF
    
    '''
    return asar_str    
        