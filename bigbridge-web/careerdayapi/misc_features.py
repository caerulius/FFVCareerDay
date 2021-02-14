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
                    'Mug':'0C',
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
                    'Time':'43',
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
                '0F':'Trainer',
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
        '0c':'Mug',
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
        '3e':'Time (Lv1)',
        '3f':'Time (Lv2)',
        '40':'Time (Lv3)',
        '41':'Time (Lv4)',
        '42':'Time (Lv5)',
        '43':'Time (Lv6)',
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
        '1f':'Mix',
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
            ['Mug','Thief','D15338'],
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
            ['Time (Lv1)','Time Mage','D153B6'],
            ['Time (Lv2)','Time Mage','D153B9'],
            ['Time (Lv3)','Time Mage','D153BC'],
            ['Time (Lv4)','Time Mage','D153BF'],
            ['Time (Lv5)','Time Mage','D153C2'],
            ['Time (Lv6)','Time Mage','D153C5'],
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
            ['Tame','Trainer','D153F5'],
            ['Control','Trainer','D153F8'],
            ['Equip Whips','Trainer','D153FB'],
            ['Catch','Trainer','D153FE'],
            ['Medicine','Chemist','D15401'],
            ['Mix','Chemist','D15404'],
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
        
    
def shuffle_music2(RE=random):
    valid_music_ids = ['00','01','02','03','04','05','06','07','08','09','0A','0B','0C','0D','0E','0F','10','12','13','14','15','16','17','18','19','1A','1B','1C','1D','1E','1F','20','21','22','23','24','25','26','27','28','29','2A','2B','2C','2D','2E','2F','30','31','32','33','3F','40','43']
    valid_music_ids_first = valid_music_ids[:]
    RE.shuffle(valid_music_ids_first)
    asar_str = ';Music randomization\n'
    
    all_addr =      {'CE9C19': '1',
                     'CE9C33': '1',
                     'CE9C4D': '1',
                     'CE9C67': '1',
                     'CE9C81': '1',
                     'CE9C9B': '2',
                     'CE9CB5': '2',
                     'CE9CCF': '3',
                     'CE9CE9': '4',
                     'CE9D03': '4',
                     'CE9D1D': '5',
                     'CE9D37': '6',
                     'CE9D51': '6',
                     'CE9D6B': '7',
                     'CE9D85': '8',
                     'CE9D9F': '9',
                     'CE9DB9': '10',
                     'CE9DD3': '10',
                     'CE9DED': '10',
                     'CE9E07': '11',
                     'CE9E21': '11',
                     'CE9E3B': '11',
                     'CE9E55': '12',
                     'CE9E6F': '12',
                     'CE9E89': '12',
                     'CE9EA3': '12',
                     'CE9EBD': '12',
                     'CE9ED7': '13',
                     'CE9EF1': '13',
                     'CE9F0B': '13',
                     'CE9F25': '13',
                     'CE9F3F': '14',
                     'CE9F59': '15',
                     'CE9F73': '15',
                     'CE9F8D': '15',
                     'CE9FA7': '15',
                     'CE9FC1': '15',
                     'CE9FDB': '15',
                     'CE9FF5': '15',
                     'CEA00F': '15',
                     'CEA029': '16',
                     'CEA043': '17',
                     'CEA05D': '18',
                     'CEA077': '19',
                     'CEA091': '19',
                     'CEA0AB': '19',
                     'CEA0C5': '19',
                     'CEA0DF': '19',
                     'CEA0F9': '19',
                     'CEA113': '19',
                     'CEA12D': '19',
                     'CEA147': '20',
                     'CEA161': '20',
                     'CEA17B': '20',
                     'CEA195': '20',
                     'CEA1AF': '20',
                     'CEA1C9': '20',
                     'CEA1E3': '20',
                     'CEA1FD': '21',
                     'CEA217': '21',
                     'CEA231': '21',
                     'CEA24B': '21',
                     'CEA265': '21',
                     'CEA27F': '21',
                     'CEA299': '22',
                     'CEA2B3': '22',
                     'CEA2CD': '22',
                     'CEA2E7': '22',
                     'CEA301': '22',
                     'CEA31B': '22',
                     'CEA335': '23',
                     'CEA34F': '24',
                     'CEA369': '25',
                     'CEA383': '25',
                     'CEA39D': '25',
                     'CEA3B7': '25',
                     'CEA3D1': '25',
                     'CEA3EB': '25',
                     'CEA405': '25',
                     'CEA41F': '25',
                     'CEA439': '25',
                     'CEA453': '25',
                     'CEA46D': '25',
                     'CEA487': '25',
                     'CEA4A1': '25',
                     'CEA4BB': '25',
                     'CEA4D5': '25',
                     'CEA4EF': '25',
                     'CEA509': '25',
                     'CEA523': '25',
                     'CEA53D': '25',
                     'CEA557': '25',
                     'CEA571': '25',
                     'CEA58B': '26',
                     'CEA5A5': '26',
                     'CEA5BF': '26',
                     'CEA5D9': '26',
                     'CEA5F3': '27',
                     'CEA60D': '27',
                     'CEA627': '27',
                     'CEA641': '27',
                     'CEA65B': '27',
                     'CEA675': '27',
                     'CEA68F': '27',
                     'CEA6A9': '27',
                     'CEA6C3': '28',
                     'CEA6DD': '28',
                     'CEA6F7': '28',
                     'CEA711': '28',
                     'CEA72B': '28',
                     'CEA745': '28',
                     'CEA75F': '28',
                     'CEA779': '28',
                     'CEA793': '28',
                     'CEA7AD': '28',
                     'CEA7C7': '29',
                     'CEA7E1': '30',
                     'CEA7FB': '31',
                     'CEA815': '31',
                     'CEA82F': '32',
                     'CEA849': '33',
                     'CEA863': '33',
                     'CEA87D': '34',
                     'CEA897': '35',
                     'CEA8B1': '36',
                     'CEA8CB': '37',
                     'CEA8E5': '38',
                     'CEA8FF': '38',
                     'CEA919': '39',
                     'CEA933': '40',
                     'CEA94D': '40',
                     'CEA967': '41',
                     'CEA981': '41',
                     'CEA99B': '41',
                     'CEA9B5': '41',
                     'CEA9CF': '41',
                     'CEA9E9': '41',
                     'CEAA03': '41',
                     'CEAA1D': '41',
                     'CEAA37': '41',
                     'CEAA51': '41',
                     'CEAA6B': '41',
                     'CEAA85': '41',
                     'CEAA9F': '41',
                     'CEAAB9': '41',
                     'CEAAD3': '42',
                     'CEAAED': '43',
                     'CEAB07': '44',
                     'CEAB21': '44',
                     'CEAB3B': '44',
                     'CEAB55': '44',
                     'CEAB6F': '44',
                     'CEAB89': '44',
                     'CEABA3': '44',
                     'CEABBD': '45',
                     'CEABD7': '45',
                     'CEABF1': '45',
                     'CEAC0B': '45',
                     'CEAC25': '45',
                     'CEAC3F': '45',
                     'CEAC59': '45',
                     'CEAC73': '45',
                     'CEAC8D': '45',
                     'CEACA7': '46',
                     'CEACC1': '47',
                     'CEACDB': '47',
                     'CEACF5': '47',
                     'CEAD0F': '47',
                     'CEAD29': '47',
                     'CEAD43': '47',
                     'CEAD5D': '48',
                     'CEAD77': '48',
                     'CEAD91': '48',
                     'CEADAB': '48',
                     'CEADC5': '48',
                     'CEADDF': '49',
                     'CEADF9': '50',
                     'CEAE13': '50',
                     'CEAE2D': '50',
                     'CEAE47': '50',
                     'CEAE61': '50',
                     'CEAE7B': '50',
                     'CEAE95': '51',
                     'CEAEAF': '51',
                     'CEAEC9': '52',
                     'CEAEE3': '52',
                     'CEAEFD': '52',
                     'CEAF17': '52',
                     'CEAF31': '52',
                     'CEAF4B': '52',
                     'CEAF65': '53',
                     'CEAF7F': '54',
                     'CEAF99': '55',
                     'CEAFB3': '55',
                     'CEAFCD': '55',
                     'CEAFE7': '55',
                     'CEB001': '55',
                     'CEB01B': '55',
                     'CEB035': '55',
                     'CEB04F': '56',
                     'CEB069': '57',
                     'CEB083': '57',
                     'CEB09D': '57',
                     'CEB0B7': '57',
                     'CEB0D1': '57',
                     'CEB0EB': '57',
                     'CEB105': '58',
                     'CEB11F': '59',
                     'CEB139': '59',
                     'CEB153': '59',
                     'CEB16D': '60',
                     'CEB187': '60',
                     'CEB1A1': '60',
                     'CEB1BB': '60',
                     'CEB1D5': '60',
                     'CEB1EF': '60',
                     'CEB209': '60',
                     'CEB223': '60',
                     'CEB23D': '60',
                     'CEB257': '60',
                     'CEB271': '61',
                     'CEB28B': '62',
                     'CEB2A5': '63',
                     'CEB2BF': '64',
                     'CEB2D9': '65',
                     'CEB2F3': '66',
                     'CEB30D': '66',
                     'CEB327': '66',
                     'CEB341': '66',
                     'CEB35B': '66',
                     'CEB375': '66',
                     'CEB38F': '66',
                     'CEB3A9': '66',
                     'CEB3C3': '67',
                     'CEB3DD': '67',
                     'CEB3F7': '67',
                     'CEB411': '67',
                     'CEB42B': '67',
                     'CEB445': '67',
                     'CEB45F': '67',
                     'CEB479': '67',
                     'CEB493': '67',
                     'CEB4AD': '67',
                     'CEB4C7': '67',
                     'CEB4E1': '67',
                     'CEB4FB': '67',
                     'CEB515': '68',
                     'CEB52F': '69',
                     'CEB549': '69',
                     'CEB563': '69',
                     'CEB57D': '69',
                     'CEB597': '69',
                     'CEB5B1': '69',
                     'CEB5CB': '70',
                     'CEB5E5': '71',
                     'CEB5FF': '72',
                     'CEB619': '72',
                     'CEB633': '72',
                     'CEB64D': '72',
                     'CEB667': '73',
                     'CEB681': '73',
                     'CEB69B': '74',
                     'CEB6B5': '74',
                     'CEB6CF': '75',
                     'CEB6E9': '76',
                     'CEB703': '77',
                     'CEB71D': '77',
                     'CEB737': '77',
                     'CEB751': '77',
                     'CEB76B': '77',
                     'CEB785': '77',
                     'CEB79F': '77',
                     'CEB7B9': '77',
                     'CEB7D3': '77',
                     'CEB7ED': '78',
                     'CEB807': '78',
                     'CEB821': '79',
                     'CEB83B': '80',
                     'CEB855': '80',
                     'CEB86F': '80',
                     'CEB889': '81',
                     'CEB8A3': '82',
                     'CEB8BD': '82',
                     'CEB8D7': '82',
                     'CEB8F1': '82',
                     'CEB90B': '82',
                     'CEB925': '82',
                     'CEB93F': '83',
                     'CEB959': '84',
                     'CEB973': '85',
                     'CEB98D': '86',
                     'CEB9A7': '87',
                     'CEB9C1': '87',
                     'CEB9DB': '87',
                     'CEB9F5': '87',
                     'CEBA0F': '87',
                     'CEBA29': '87',
                     'CEBA43': '87',
                     'CEBA5D': '88',
                     'CEBA77': '89',
                     'CEBA91': '89',
                     'CEBAAB': '89',
                     'CEBAC5': '89',
                     'CEBADF': '89',
                     'CEBAF9': '89',
                     'CEBB13': '89',
                     'CEBB2D': '89',
                     'CEBB47': '90',
                     'CEBB61': '90',
                     'CEBB7B': '90',
                     'CEBB95': '91',
                     'CEBBAF': '92',
                     'CEBBC9': '92',
                     'CEBBE3': '92',
                     'CEBBFD': '93',
                     'CEBC17': '93',
                     'CEBC31': '93',
                     'CEBC4B': '94',
                     'CEBC65': '94',
                     'CEBC7F': '95',
                     'CEBC99': '95',
                     'CEBCB3': '95',
                     'CEBCCD': '96',
                     'CEBCE7': '97',
                     'CEBD01': '97',
                     'CEBD1B': '97',
                     'CEBD35': '98',
                     'CEBD4F': '98',
                     'CEBD69': '99',
                     'CEBD83': '99',
                     'CEBD9D': '100',
                     'CEBDB7': '101',
                     'CEBDD1': '101',
                     'CEBDEB': '101',
                     'CEBE05': '101',
                     'CEBE1F': '101',
                     'CEBE39': '101',
                     'CEBE53': '101',
                     'CEBE6D': '101',
                     'CEBE87': '101',
                     'CEBEA1': '101',
                     'CEBEBB': '101',
                     'CEBED5': '101',
                     'CEBEEF': '102',
                     'CEBF09': '102',
                     'CEBF23': '102',
                     'CEBF3D': '102',
                     'CEBF57': '102',
                     'CEBF71': '102',
                     'CEBF8B': '103',
                     'CEBFA5': '104',
                     'CEBFBF': '104',
                     'CEBFD9': '104',
                     'CEBFF3': '104',
                     'CEC00D': '104',
                     'CEC027': '104',
                     'CEC041': '105',
                     'CEC05B': '105',
                     'CEC075': '105',
                     'CEC08F': '105',
                     'CEC0A9': '105',
                     'CEC0C3': '106',
                     'CEC0DD': '107',
                     'CEC0F7': '107',
                     'CEC111': '108',
                     'CEC12B': '109',
                     'CEC145': '110',
                     'CEC15F': '111',
                     'CEC179': '111',
                     'CEC193': '111',
                     'CEC1AD': '112',
                     'CEC1C7': '113',
                     'CEC1E1': '114',
                     'CEC1FB': '115',
                     'CEC215': '115',
                     'CEC22F': '115',
                     'CEC249': '115',
                     'CEC263': '115',
                     'CEC27D': '115',
                     'CEC297': '115',
                     'CEC2B1': '115',
                     'CEC2CB': '115',
                     'CEC2E5': '115',
                     'CEC2FF': '115',
                     'CEC319': '115',
                     'CEC333': '115',
                     'CEC34D': '115',
                     'CEC367': '116',
                     'CEC381': '116',
                     'CEC39B': '116',
                     'CEC3B5': '116',
                     'CEC3CF': '116',
                     'CEC3E9': '117',
                     'CEC403': '118',
                     'CEC41D': '118',
                     'CEC437': '118',
                     'CEC451': '118',
                     'CEC46B': '118',
                     'CEC485': '118',
                     'CEC49F': '118',
                     'CEC4B9': '118',
                     'CEC4D3': '118',
                     'CEC4ED': '118',
                     'CEC507': '119',
                     'CEC521': '120',
                     'CEC53B': '120',
                     'CEC555': '120',
                     'CEC56F': '120',
                     'CEC589': '120',
                     'CEC5A3': '120',
                     'CEC5BD': '120',
                     'CEC5D7': '120',
                     'CEC5F1': '120',
                     'CEC60B': '121',
                     'CEC625': '122',
                     'CEC63F': '122',
                     'CEC659': '122',
                     'CEC673': '122',
                     'CEC68D': '122',
                     'CEC6A7': '122',
                     'CEC6C1': '122',
                     'CEC6DB': '123',
                     'CEC6F5': '124',
                     'CEC70F': '124',
                     'CEC729': '124',
                     'CEC743': '124',
                     'CEC75D': '124',
                     'CEC777': '125',
                     'CEC791': '126',
                     'CEC7AB': '127',
                     'CEC7C5': '128',
                     'CEC7DF': '128',
                     'CEC7F9': '128',
                     'CEC813': '128',
                     'CEC82D': '129',
                     'CEC847': '129',
                     'CEC861': '129',
                     'CEC87B': '129',
                     'CEC895': '129',
                     'CEC8AF': '129',
                     'CEC8C9': '129',
                     'CEC8E3': '129',
                     'CEC8FD': '129',
                     'CEC917': '129',
                     'CEC931': '129',
                     'CEC94B': '129',
                     'CEC965': '129',
                     'CEC97F': '129',
                     'CEC999': '129',
                     'CEC9B3': '129',
                     'CEC9CD': '129',
                     'CEC9E7': '129',
                     'CECA01': '129',
                     'CECA1B': '129',
                     'CECA35': '129',
                     'CECA4F': '129',
                     'CECA69': '129',
                     'CECA83': '129',
                     'CECA9D': '129',
                     'CECAB7': '129',
                     'CECAD1': '129',
                     'CECAEB': '129',
                     'CECB05': '129',
                     'CECB1F': '129',
                     'CECB39': '130',
                     'CECB53': '130',
                     'CECB6D': '131',
                     'CECB87': '131',
                     'CECBA1': '131',
                     'CECBBB': '131',
                     'CECBD5': '131',
                     'CECBEF': '131',
                     'CECC09': '131',
                     'CECC23': '131',
                     'CECC3D': '131',
                     'CECC57': '131',
                     'CECC71': '132',
                     'CECC8B': '132',
                     'CECCA5': '132',
                     'CECCBF': '132',
                     'CECCD9': '132',
                     'CECCF3': '132',
                     'CECD0D': '132',
                     'CECD27': '132',
                     'CECD41': '132',
                     'CECD5B': '132',
                     'CECD75': '132',
                     'CECD8F': '132',
                     'CECDA9': '132',
                     'CECDC3': '132',
                     'CECDDD': '132',
                     'CECDF7': '132',
                     'CECE11': '132',
                     'CECE2B': '132',
                     'CECE45': '132',
                     'CECE5F': '132',
                     'CECE79': '132',
                     'CECE93': '132',
                     'CECEAD': '132',
                     'CECEC7': '132',
                     'CECEE1': '132',
                     'CECEFB': '132',
                     'CECF15': '132',
                     'CECF2F': '132',
                     'CECF49': '132',
                     'CECF63': '133',
                     'CECF7D': '133',
                     'CECF97': '133',
                     'CECFB1': '133',
                     'CECFCB': '133',
                     'CECFE5': '134',
                     'CECFFF': '134',
                     # the following are for world map areas
                     'c045e9': '135',
                     'c045eA': '136',
                     'c045eB': '137',
                     'c045eC': '138',
                     'c045eD': '139',
                     'c045FE': '140',
                     'c045FF': '141',
                     # the following are for  battles
                     'c40602': '142',
                     'c40606': '143',
                     'c4060A': '144',
                     'c4060E': '145',
                     'c40612': '146',
                     'c40616': '147',
                     'c4061A': '148',
                     'c4061E': '149',
                     'c40622': '150',
                     'c40626': '151',
                     'c4062A': '152',
                     'c4062E': '153',
                     'c40632': '154',
                     'c40636': '155',
                     'c4063A': '156',
                     'c4063E': '157',
                     }
    
    # create dictionary for groupings
    grouping_dict = {}
    for i in all_addr.values():
        # first draw from list to get at least 1 representation of each track
        if len(valid_music_ids_first) > 0:
            next_track = valid_music_ids_first.pop()
        else:
            next_track = RE.choice(valid_music_ids)
        grouping_dict[i] = next_track
    
    

    for addr, group in all_addr.items():
        asar_str = asar_str + "org $%s\ndb $%s\n" % (addr,grouping_dict[group])
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
        