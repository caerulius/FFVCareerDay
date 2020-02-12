# -*- coding: utf-8 -*-

import pandas as pd 
import random
from abc import ABC, abstractmethod
from collections import OrderedDict
import math
import logging

import sys, os
new_path = os.path.abspath(os.path.join(os.pardir))
if new_path not in sys.path:
    sys.path.append(new_path)
    sys.path.append(os.path.join(new_path,'text_parser'))
import text_parser2 as tp

logging.basicConfig(level=logging.ERROR, format="%(asctime)-15s %(message)s")


'''
byte_map:
1 ?
2 Attack type $AT - see common lists
3 Misc. / Weapon type
4 Element / stats up
5 Misc. properties
6 Weapon specials
7 Used as item
8 Attack power
9 Attack formula
A Parameter #1
B Parameter #2
C Parameter #3
'''



boost_dict = {"wind":'40',
              "earth":'20',
              "holy":'10',
              "poison":'08',
              "lightning":'04',
              "ice":'02',
              "fire":'01'
              }


stat_dict = {"strength":'40',
              "speed":'20',
              "vitality":'10',
              "magic power":'08'
              }

stat_dict2 = {'Strong':['strength'],
                'Agile':['speed'],
                'Tank':['vitality'],
                'Witch':['magic power'],
                'Swift':['strength', 'speed'],
                'Tough':['strength', 'vitality'],
                'Raw':['strength', 'magic power'],
                'Fleet':['speed', 'vitality'],
                'Skill':['speed', 'magic power'],
                'Heart':['vitality', 'magic power'],
                'Vigor':['strength', 'speed', 'vitality'],
                'Adept':['strength', 'speed', 'magic power'],
                'Fierce':['strength', 'vitality', 'magic power'],
                'Sorcer':['speed', 'vitality', 'magic power'],
                'Omni':['strength', 'speed', 'vitality', 'magic power']
                }


stat_boost_power_dict = {
        '00':"+1",
        '01':"+2",
        '02':"+3",
        '07':"+5"
        }

'''
<Swrd>
<Whit>
<Blak>
<Dimn>
<Knif>
<Sper>
<Axe>
<Katn>
<Rod>
<Staf>
<Bow>
<Harp>
<Whip>
<Bell>
<Shld>
<Helm>
<Armr>
<Ring>
<Misc>



'''
ability_dict = {'Guard':'06',
                'Kick':'07',
                'BuildUp':'08',
                'Mantra':'09',
                'Escape':'0A',
                'Steal':'0B',
                'Capture':'0C',
                'Jump':'0D',
                'DrgnSwd':'0E',
                'Smoke':'0F',
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
                'Tame':'1B'                
                }

enemy_type_dict = {'Zomb':7,
                   'Toad':6,
                   'Beast':5,
                   'Avis':4,
                   'Drgn':3,
                   'Heavy':2,
                   'Desrt':1,
                   'Human':0}

weapon_type_dict = {'knife' :
                        {'bytemap':{'byte1' : '00',
                        'byte2' : '80',
                        'byte3' : '02',
                        'byte4' : '80',
                        'byte5' : '16',
                        'byte6' : '04',
                        'byte7' : '78',
                        'byte8' : '00',
                        'byte9' : '32',
                        'byte10' : '00',
                        'byte11' : '00',
                        'byte12' : '00'},
                        'clean_name':'Knife',
                        'text_icon':'<Knif>'},
                    
                    'sword' : 
                         {'bytemap':{'byte1' : '00',
                        'byte2' : '80',
                        'byte3' : '04',
                        'byte4' : '80',
                        'byte5' : '55',
                        'byte6' : '04',
                        'byte7' : '78',
                        'byte8' : '00',
                        'byte9' : '31',
                        'byte10' : '00',
                        'byte11' : '00',
                        'byte12' : '00'},
                        'clean_name':'Sword',
                        'text_icon':'<Swrd>'},
                         
                    'knightsword' : 
                         {'bytemap':{'byte1' : '00',
                        'byte2' : '80',
                        'byte3' : '05',
                        'byte4' : '80',
                        'byte5' : '55',
                        'byte6' : '04',
                        'byte7' : '78',
                        'byte8' : '00',
                        'byte9' : '31',
                        'byte10' : '00',
                        'byte11' : '00',
                        'byte12' : '00'},
                        'clean_name':'KSword',
                        'text_icon':'<Swrd>'},
    
                    'spear' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '80',
                            'byte3' : '06',
                            'byte4' : 'c0',
                            'byte5' : '17',
                            'byte6' : '00',
                            'byte7' : '78',
                            'byte8' : '37',
                            'byte9' : '33',
                            'byte10' : '00',
                            'byte11' : '00',
                            'byte12' : '00'

                        },
                        'clean_name':'Spear',
                        'text_icon':'<Sper>'},

                    'axe' : 
                         {'bytemap':
                             {
                                'byte1' : '00',
                                'byte2' : '80',
                                'byte3' : '07',
                                'byte4' : '80',
                                'byte5' : '59',
                                'byte6' : '00',
                                'byte7' : '78',
                                'byte8' : '17',
                                'byte9' : '34',
                                'byte10' : '50',
                                'byte11' : '00',
                                'byte12' : '00'

                        },
                        'clean_name':'Axe',
                        'text_icon':'<Axe>'},

                    'katana' : 
                         {'bytemap':
                             {
                                'byte1' : '00',
                                'byte2' : '80',
                                'byte3' : '09',
                                'byte4' : '80',
                                'byte5' : '5a',
                                'byte6' : '00',
                                'byte7' : '78',
                                'byte8' : '2a',
                                'byte9' : '37',
                                'byte10' : '0c',
                                'byte11' : '00',
                                'byte12' : '00'

                        },
                        'clean_name':'Katana',
                        'text_icon':'<Katn>'},

                    'rod' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '04',
                            'byte3' : '4a',
                            'byte4' : '88',
                            'byte5' : '23',
                            'byte6' : '00',
                            'byte7' : '78',
                            'byte8' : '08',
                            'byte9' : '3b',
                            'byte10' : '46',
                            'byte11' : '00',
                            'byte12' : '00'

                        },
                        'clean_name':'Rod',
                        'text_icon':'<Rod>'},

                    'staff' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '80',
                            'byte3' : '4b',
                            'byte4' : '80',
                            'byte5' : '40',
                            'byte6' : '00',
                            'byte7' : '78',
                            'byte8' : '09',
                            'byte9' : '34',
                            'byte10' : '5f',
                            'byte11' : '00',
                            'byte12' : '00'

                        },
                        'clean_name':'Staff',
                        'text_icon':'<Staf>'},

                    'bow' : 
                         {'bytemap':
                             {
                        'byte1' : '38',
                        'byte2' : '40',
                        'byte3' : '4d',
                        'byte4' : '80',
                        'byte5' : '9b',
                        'byte6' : '00',
                        'byte7' : '78',
                        'byte8' : '26',
                        'byte9' : '35',
                        'byte10' : '46',
                        'byte11' : '00',
                        'byte12' : '00'
                        },
                        'clean_name':'Bow',
                        'text_icon':'<Bow>'},

                    'harp' : 
                         {'bytemap':
                             {
                            'byte1' : '78',
                            'byte2' : '20',
                            'byte3' : '4e',
                            'byte4' : '80',
                            'byte5' : '9b',
                            'byte6' : '08',
                            'byte7' : '78',
                            'byte8' : '0f',
                            'byte9' : '7f',
                            'byte10' : '00',
                            'byte11' : '64',
                            'byte12' : '74'

                        },
                        'clean_name':'Harp',
                        'text_icon':'<Harp>'},

                    'whip' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '40',
                            'byte3' : '4f',
                            'byte4' : '80',
                            'byte5' : '23',
                            'byte6' : '08',
                            'byte7' : '78',
                            'byte8' : '1a',
                            'byte9' : '38',
                            'byte10' : '5a',
                            'byte11' : '32',
                            'byte12' : '7f'

                        },
                        'clean_name':'Whip',
                        'text_icon':'<Whip>'},

                    'bell' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '20',
                            'byte3' : '50',
                            'byte4' : '80',
                            'byte5' : '23',
                            'byte6' : '00',
                            'byte7' : '78',
                            'byte8' : '18',
                            'byte9' : '39',
                            'byte10' : '00',
                            'byte11' : '00',
                            'byte12' : '00'

                        },
                        'clean_name':'Bell',
                        'text_icon':'<Bell>'},

                    'flail' : 
                         {'bytemap':
                             {
                            'byte1' : '38',
                            'byte2' : '80',
                            'byte3' : '5e',
                            'byte4' : '80',
                            'byte5' : '23',
                            'byte6' : '00',
                            'byte7' : '78',
                            'byte8' : '23',
                            'byte9' : '38',
                            'byte10' : '5f',
                            'byte11' : '00',
                            'byte12' : '00'

                        },
                        'clean_name':'Flail',
                        'text_icon':'<Misc>'},



                    }

boost_text_map = {"fire":         "Heat",
                 "ice":          "Cold",
                 "wind":         "Aerial",
                 "lightning":    "Zap",
                 "poison":       "Venom",
                 "earth":        "Terra",
                 "holy":         "Sacred" }



def b2i(byte):
    return int(byte,base=16)
def i2b(integer):
    return hex(integer).replace("0x","").upper()

def set_bit(byte,bit_to_set):
    ''' 
    returns a byte with specific int index bit set
    '''
    temp_bin = bin(int(byte,base=16)).replace("0b","").zfill(8)
#    breakpoint()
    temp_bin = temp_bin[:bit_to_set] + "1" + temp_bin[bit_to_set+1:]
    return hex(int(temp_bin,base=2)).replace("0x","").zfill(2)

class Weapon(ABC):
    type = 'weapon'
    
    def __init__(self, row,re):
        self.re = re
        self.data_dict = dict(row)
        for k, v in self.data_dict.items():
            if "byte" in k and k != "byte_data":
                self.data_dict[k] = str(v).zfill(2)
                
        weapon_type = self.data_dict['subtype']
        self.weapon_type = weapon_type
        self.bytemap = weapon_type_dict[weapon_type]['bytemap'].copy()
        self.clean_name = weapon_type_dict[weapon_type]['clean_name']
        self.text_icon = weapon_type_dict[weapon_type]['text_icon']
        self.adjustments = {}
        
        
    ## adjustments
    
        
        
    def adjustment_elemental_boost(self):
        elements = list(set(self.re.choices(list(boost_dict.keys()),k=self.re.randint(1,1))))
#        print(str(elements))
        self.elem_byte = '00'
        for e in elements:
            self.elem_byte = i2b(b2i(self.elem_byte) + b2i(boost_dict[e]))
        self.elem_byte = self.elem_byte.zfill(2)
        self.bytemap['byte4'] = self.elem_byte
        self.adjustments['elemental_boost'] = elements
        
    def adjustment_stat_boost(self):
        stat_boost = list(set(self.re.choices(list(stat_dict.keys()),k=self.re.randint(1,4))))
        stat_boost_power = self.re.choice(['00','01','02','07','00','01','02','07','00','01','02'])

#        print(str("%s : %s" % (stat_boost,stat_boost_power_dict[stat_boost_power])))
        self.stat_boost_byte = '80'
        for e in stat_boost:
            self.stat_boost_byte = i2b(b2i(self.stat_boost_byte) + b2i(stat_dict[e]))
            
        self.stat_boost_byte = i2b(b2i(self.stat_boost_byte) + b2i(stat_boost_power))
            
        self.stat_boost_byte = self.stat_boost_byte.zfill(2)
        self.bytemap['byte4'] = self.stat_boost_byte
        self.adjustments['stat_boost'] = stat_boost
        self.adjustments['stat_boost_power'] = stat_boost_power_dict[stat_boost_power]


    def adjustment_killer(self):
#        self.bytemap['byte6'] = set_bit(self.bytemap['byte6'],6)
        chosen_type = self.re.choice(list(enemy_type_dict))
        self.bytemap['byte9'] = '72'
        self.bytemap['byte10'] = set_bit('00',enemy_type_dict[chosen_type])
        self.bytemap['byte11'] = '00'
        self.bytemap['byte12'] = '00'
        self.adjustments['killer_action_id'] = enemy_type_dict[chosen_type]
        self.adjustments['killer_action'] = chosen_type
        
    def adjustment_ability_action(self):
#        self.bytemap['byte6'] = set_bit(self.bytemap['byte6'],6)
        self.bytemap['byte6'] = '02'
        self.bytemap['byte11'] = '64'
        chosen_action = self.re.choice(list(ability_dict.keys()))
        self.bytemap['byte12'] = ability_dict[chosen_action]
        self.adjustments['ability_action_id'] = ability_dict[chosen_action]
        self.adjustments['ability_action'] = chosen_action
        
    def adjustment_spell_action(self):
        # allow action on hit, set to 33%
        new_byte = set_bit(self.bytemap['byte6'],4)
#        print("New byte: %s %s" % (self.bytemap['byte6'], new_byte))
        self.bytemap['byte6'] = (new_byte).zfill(2)
        self.bytemap['byte11'] = '00'
                
        # choose spell action based off of the original item tier
        valid_magic_list = []
        iter_num = 0
        while len(valid_magic_list) < 1:
            valid_magic_list = [i for i in magic_dict['tier'] if (magic_dict['tier'][i] <= self.data_dict['tier'] - iter_num and magic_dict['tier'][i] >= self.data_dict['tier'] - iter_num - 2)]
#            print(self.data_dict['tier'], [magic_dict['readable_name'][i] for i in valid_magic_list])
            iter_num -= 1
        
        
        if self.weapon_type == 'rod':
            # Rods will only get valid black magic & Holy, and
            # can be broken for 100% accuracy
            black_magic = ['24','25','26','27','28','29','2A','2B','2C','2D','2E','2F','30','31','32','33','34','35','22']
            valid_magic_list = [i for i in valid_magic_list if i in black_magic]
            chosen_spell = self.re.choice(valid_magic_list)

            self.bytemap['byte1'] = 'F8' # F8 is target all enemies, target 1 enemy, target 1 ally, target all allies
            self.bytemap['byte7'] = chosen_spell # byte7 is the action ID
            new_byte = set_bit(self.bytemap['byte7'],0)
#            print(new_byte)
            self.bytemap['byte7'] = new_byte # this makes it breakable

            

        elif self.weapon_type == 'staff':
            # Staves will only get valid white magic (less Holy), and
            # can be used indefinitely 
            white_magic = ['12','13','14','15','16','17','18','19','1A','1B','1C','1D','1E','1F','20','21','23']
            valid_magic_list = [i for i in valid_magic_list if i in white_magic]
            if len(valid_magic_list) > 0:
                chosen_spell = self.re.choice(valid_magic_list)
            else:
                chosen_spell = self.re.choice(white_magic)

            self.bytemap['byte1'] = '38' # 38 is target 1 enemy or ally
            self.bytemap['byte7'] = chosen_spell # byte7 is the action ID

        else:
            chosen_spell = self.re.choice(valid_magic_list)

#        print(str("%s : %s" % (chosen_spell,magic_dict['readable_name'][chosen_spell])))
        self.bytemap['byte12'] = chosen_spell.zfill(2)


        always_hit_ids = ['12','13','14','15','16','17','18','19','1A','1B','1C','1D','1E','1F','20','21','23','38','3A','3B','43','9A','9E']
        if chosen_spell in always_hit_ids:
            # 100%
            self.bytemap['byte11'] = '64'
        else:
            # 33%
            self.bytemap['byte11'] = '21' # '21'


        self.adjustments['spell_action_id'] = chosen_spell
        self.adjustments['spell_action'] = magic_dict['readable_name'][chosen_spell]        
        

        
        
    def set_weapon_str(self):
        str_int = max(int(self.data_dict['byte8'],base=16) + self.re.randint(-5,5),1)
#        str_int = 1
        self.weapon_power = str_int
        self.bytemap['byte8'] = i2b(str_int).zfill(2)
    
    
    def create_name(self):
        # name_dict
        
        # 
        adjustments = list(self.adjustments.keys())
#        print(adjustments)

        if 'spell_action' in adjustments:
            text_clean_name = self.adjustments['spell_action']
            self.text_textbox = text_clean_name + " " + self.weapon_type.title()
            self.text_menu = self.text_icon + text_clean_name
#            print("%s %s" % (self.text_textbox, self.text_menu))
            
        elif 'ability_action' in adjustments:
            text_clean_name = self.adjustments['ability_action']
            self.text_textbox = text_clean_name + " " + self.weapon_type.title()
            self.text_menu = self.text_icon + text_clean_name
#            print("%s %s" % (self.text_textbox, self.text_menu))


        elif 'elemental_boost' in adjustments:
            text_clean_name = boost_text_map[self.adjustments['elemental_boost'][0]]
            self.text_textbox = text_clean_name + " " + self.weapon_type.title()
            self.text_menu = self.text_icon + text_clean_name
#            print("%s %s" % (self.text_textbox, self.text_menu))
            
        elif 'killer_action' in adjustments:
            text_clean_name = self.adjustments['killer_action'] 
            self.text_textbox = text_clean_name + " Killer " + self.weapon_type.title()
            self.text_menu = self.text_icon + text_clean_name + "Klr"
#            print("%s %s" % (self.text_textbox, self.text_menu))
            
            
        elif 'stat_boost' in adjustments:
            temp_boost = sorted(self.adjustments['stat_boost'])
            for k, v in stat_dict2.items():
                if temp_boost == sorted(v):
                    stat_boost_name = k
                    break
            text_clean_name = stat_boost_name + self.adjustments['stat_boost_power']
#            print(text_clean_name)
            self.text_textbox = text_clean_name + " " + self.weapon_type.title()
            self.text_menu = self.text_icon + text_clean_name
#            print("%s %s" % (self.text_textbox, self.text_menu))

            

        
    def randomize_contents(self):
        randint = self.re.randint(0,100)
        randint2 = self.re.randint(0,100)
#        self.adjustment_ability_action()   
        
        if randint <= 30:
            self.adjustment_spell_action()
            if randint2 <= 20:
                self.adjustment_stat_boost()
            elif randint2 <= 40:
                self.adjustment_elemental_boost()
        elif randint <= 40 and self.weapon_type not in ['staff','rod']:
            self.adjustment_ability_action()   
            if randint2 <= 20:
                self.adjustment_stat_boost()
            elif randint2 <= 40:
                self.adjustment_elemental_boost()            
        elif randint <= 65:
            self.adjustment_stat_boost()
        elif randint <= 75:
            self.adjustment_killer()
        else:
            self.adjustment_elemental_boost()
        self.set_weapon_str()
        self.weapon_layout = {self.weapon_type:self.adjustments}
        self.create_name()
        

    @property
    def data_string(self):
        return ''.join(self.bytemap.values())
    
    @property
    def data_string_asar(self):
        return 'db $' + ', $'.join(self.bytemap.values())
    
    @property
    def asar_output(self):
        output_str = ''
        tp.init_table("chest")
        output_str = output_str + ';%s %s -> %s (%s) - Power %s\n' % (self.data_dict['data_addr'],self.data_dict['readable_name'],self.text_textbox, self.text_menu, self.weapon_power)
        output_str = output_str + 'org $%s\n%s\n' % (self.data_dict['textbox_addr'], tp.run_encrypt_text_string(self.text_textbox,verbose=False,ff_fill=24))
        tp.init_table("shop")
        output_str = output_str + 'org $%s\n%s\n' % (self.data_dict['textmenu_addr'], tp.run_encrypt_text_string(self.text_menu,verbose=False,ff_fill=9))
        output_str = output_str + 'org $%s\n%s\n' % (self.data_dict['data_addr'], self.data_string_asar)
        return output_str
    
    @property
    def spoiler(self):
        output_str = ''
        output_str = output_str + '%s -> %s (Power: %s)\n' % ('{:20}'.format(self.data_dict['readable_name']),'{:20}'.format(self.text_textbox), self.weapon_power)
        return output_str


    
class WeaponManager(ABC):
    def __init__(self, data_manager, re=None):
        global magic_dict
#        breakpoint()
        magic_dict = data_manager.files['magic_item_randomization'].reset_index()[['magic_id','readable_name','tier']].set_index('magic_id').to_dict()
        self.df_weapon = data_manager.files['weapon_randomization']
        self.history = []
        if re == None:
            self.re = Random()
        else:
            self.re = re
        
    def randomize(self):
        self.weapons = []
        for i, r in self.df_weapon.iterrows():
            x = Weapon(self.df_weapon.loc[i],self.re)
            x.randomize_contents()
            
            num = 0
            while x.weapon_layout in self.history and num < 100:
                logging.error("Rerolling %s, due to duplicate layout" % x.weapon_layout)
                x = Weapon(self.df_weapon.loc[i],self.re)
                x.randomize_contents()
                num += 1
            if num >= 99:
                logging.error(" >>>> 100 threshold <<<< ")
            self.history.append(x.weapon_layout)

            
            self.weapons.append(x)
            
    def write_asar_output(self):
        with open(os.path.join(os.path.pardir,os.path.pardir,'projects','test_asm','r-patch_weapons.asm'),'w') as f:
            f.write("\n")   
        for x in self.weapons:
            with open(os.path.join(os.path.pardir,os.path.pardir,'projects','test_asm','r-patch_weapons.asm'),'a') as f:
                f.write(x.asar_output)       
    @property
    def get_patch(self):
        output_str = ''
        for x in self.weapons:
            output_str = output_str + x.asar_output
        return output_str
    
    @property
    def get_spoiler(self):
        output_str = '\n *** Weapon Randomization ***\n'
        for x in self.weapons:
            output_str = output_str + x.spoiler
        output_str = output_str + '\n'
        return output_str



















