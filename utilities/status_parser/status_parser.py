# -*- coding: utf-8 -*-
"""
Created on Sun Oct 13 15:14:55 2019

@author: PMAC
"""
maps = { 'elemental_immune' : {
            'fire':'01',
            'ice':'02',
            'lightning':'04',
            'poison':'08',
            'holy':'10',
            'earth':'20',
            'wind':'40',
            'water':'80',
            }, 
        'elemental_absorb' : {
            'fire':'01',
            'ice':'02',
            'lightning':'04',
            'poison':'08',
            'holy':'10',
            'earth':'20',
            'wind':'40',
            'water':'80',
            }, 
        'elemental_weakness' : {
            'fire':'01',
            'ice':'02',
            'lightning':'04',
            'poison':'08',
            'holy':'10',
            'earth':'20',
            'wind':'40',
            'water':'80',
            }, 
            
        'status1_weakness' : {
            'darkness':'01',
            'zombie':'02',
            'poison':'04',
            'float':'08',
            'mini':'10',
            'toad':'20',
            'petrify':'40',
            'dead':'80'},
        'status2_weakness' : {
            'image1':'01',
            'image2':'02',
            'mute':'04',
            'berserk':'08',
            'charm':'10',
            'paralyze':'20',
            'sleep':'40',
            'aging':'80'},
        'status3_weakness' : {
            'regen':'01',
            'invul':'02',
            'slow':'04',
            'haste':'08',
            'stop':'10',
            'shell':'20',
            'armor':'40',
            'wall':'80'
        },
        'creature_type' : {
            'undead':'01',
            'toad':'02',
            'creature':'04',
            'avis':'08',
            'dragon':'10',
            'heavy':'20',
            'desert':'40',
            'human':'80'
            }
        }


### 
# All output will be in the following order:
# Elemental Immunities
# Status 1 immunities
# Status 2 immunities
# Status 3 immunities
# Elemental Absorb
# blank (do not copy)
# Elemental Weakness
# Creature Type
        
# For statuses, you're listing the WEAKNESSES, and it converts to immunities
# Blank is there for the intentionally blank "CAN'T EVADE" byte that falls in the middle
# Otherwise this data goes straight into the enemy_data or portal_bosses csv


        # 'elemental_immune' :        [''],
        # 'status1_weakness' :        [''],
        # 'status2_weakness' :        [''],
        # 'status3_weakness' :        [''],
        # 'elemental_absorb' :        [''],
        # 'blank':                    [''],
        # 'elemental_weakness' :      [''],
        # 'creature_type' :           ['']
        
        
enemy_1 = {
        'elemental_immune' :        ['fire'],
        'status1_weakness' :        ['darkness'],
        'status2_weakness' :        ['image1','image2','aging'],
        'status3_weakness' :        ['regen','haste','slow','shell','armor','wall'],
        'elemental_absorb' :        ['earth'],
        'blank':                    [''],
        'elemental_weakness' :      ['poison'],
        'creature_type' :           ['creature', 'heavy']
        }

enemy_2 = {        
        'elemental_immune' :        ['fire'],
        'status1_weakness' :        [''],
        'status2_weakness' :        ['image1','image2','sleep', 'mute'],
        'status3_weakness' :        ['regen','haste','slow','shell','armor','wall'],
        'elemental_absorb' :        ['earth'],
        'blank':                    [''],
        'elemental_weakness' :      ['holy'],
        'creature_type' :           ['human', 'heavy']
        }

enemy_3 = {
        'elemental_immune' :        ['fire', 'holy'],
        'status1_weakness' :        [''],
        'status2_weakness' :        ['image1','image2'],
        'status3_weakness' :        ['regen','haste','shell','armor','wall'],
        'elemental_absorb' :        ['earth'],
        'blank':                    [''],
        'elemental_weakness' :      ['ice'],
        'creature_type' :           ['heavy']
        }


def process_stats(enemy):
    byte_string = ''
    for map1 in enemy:
        stats = enemy[map1]
        string_add = ''
        if map1 == 'blank':
            string_add = "00"
        if stats[0] == 'all':
            string_add = "FF"
        elif stats[0] == '' or stats[0] == 'none':
            string_add = "00"
        else:
            add_stats = [maps[map1][stat] for stat in stats]
            string_add = hex(sum([int(i,base=16) for i in add_stats])).replace("0x","").upper()
            
        if "weakness" in map1 and "status" in map1: # here we need to reverse immunities from weaknesses
            string_add = hex(255 - int(string_add,base=16)).replace("0x","").upper()
                
            
        string_add = str(string_add)
        if len(string_add) == 1:
            string_add = "0" + string_add
        byte_string = byte_string + string_add + " "
    
    return byte_string.strip()

print(process_stats(enemy_1))
print(process_stats(enemy_2))
print(process_stats(enemy_3))




























template = {
        'elemental_immune' :        [''],
        'status1_immune' :          [''],
        'status2_immune' :          [''],
        'status3_immune' :          [''],
        'elemental_absorb' :        [''],
        'elemental_weakness' :      [''],
        'creature_type' :           ['']
        }
