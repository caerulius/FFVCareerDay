# -*- coding: utf-8 -*-

import pandas as pd
import random
import numpy as np
import datetime as dt
# from boss_data import *

datetime_now = dt.datetime.now().strftime("%Y-%d-%m_%H-%M-%S")

RANDOM_LOOT_PERCENT = .5

df_enemy_table = pd.read_csv('tables/enemy_data.csv', dtype=str)
df_formation_table = pd.read_csv('tables/formation_id.csv', dtype=str)

df_item = pd.read_csv('tables/item_id.csv',index_col='item_id',dtype=str)
df_item = df_item[df_item['value']!='0']
item_id_dict = df_item.to_dict()['readable_name'] # id first
stat_hex_map = {
        'gauge_time' : '00',
        'phys_power' : '01',
        'phys_mult' : '02',
        'evade' : '03',
        'phys_def' : '04',
        'mag_power' : '05',
        'mag_def' : '06',
        'mag_evade' : '07',
        'hp_lo' : '08',
        'hp_hi' : '09',
        'mp_lo' : '0A',
        'mp_hi' : '0B',
        'exp_lo' : '0C',
        'exp_hi' : '0D',
        'gil_lo' : '0E',
        'gil_hi' : '0F',
        'atk_index' : '10',
        'elemental_immune' : '11',
        'status0_immune' : '12',
        'status1_immune' : '13',
        'status2_immune' : '14',
        'elemental_absorb' : '15',
        'unavoidable_atk' : '16',
        'elemental_weakness' : '17',
        'enemy_type' : '18',
        'special_immune' : '19',
        'initial_status0' : '1A',
        'initial_status1' : '1B',
        'initial_status2' : '1C',
        'initial_status3' : '1D',
        'name_index' : '1E',
        'level' : '1F'
        }

class Enemy(object):
    def __init__(self,index,df_enemy_table,pass_type = 'id'):
        self.idx = index
        self.generate_from_df(df_enemy_table,pass_type)
        self.original_num_hp = self.num_hp
        self.original_hp_hi = self.hp_hi
        self.original_hp_lo = self.hp_lo

    def generate_from_df(self, df,pass_type):
        if pass_type == 'id':
            s = df[df['idx']==self.idx].iloc[0]
        if pass_type == 'hex':
            s = df[df['idx_hex']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for enemy class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
    def randomize_loot(self,loot_type='match'):
        loot_list = ['steal_common','steal_rare','drop_common','drop_rare']
        ''' 
        arguments:
        match = if the original enemy has a non-null loot slot, update it
        full = every enemy has randomized common/rare steal/drop
        variable = every enemy has randomized common/rare steal/drop at a specified chance (variable RANDOM_LOOT_PERCENT) per slot 
        '''
        if loot_type=='match':
            for loot in loot_list:
                if getattr(self,loot) != '00':
                    new_item = random.choice(list(item_id_dict.keys()))
                    setattr(self,loot,new_item)
                    setattr(self,loot+"_name",item_id_dict[new_item])
        if loot_type=='full':
            for loot in loot_list:
                new_item = random.choice(list(item_id_dict.keys()))
                setattr(self,loot,new_item)
                setattr(self,loot+"_name",item_id_dict[new_item])
        if loot_type=='variable':
            for loot in loot_list:
                if random.random() <= RANDOM_LOOT_PERCENT: 
                    new_item = random.choice(list(item_id_dict.keys()))
                    setattr(self,loot,new_item)
                    setattr(self,loot+"_name",item_id_dict[new_item])
                else:
                    setattr(self,loot,'00')
                    setattr(self,loot+"_name"," ")
        
    def apply_rank_mult(self):
        rank_mult = self.rank_mult
        for stat in ['num_phys_power','num_phys_def','num_mag_power','num_mag_def','num_gil','num_level']:
            setattr(self,stat,str(round(int(getattr(self,stat)) * rank_mult)))
        self.update_all()

    def update_all(self):
        self.update_val('exp',self.num_exp)
        self.update_val('gil',self.num_gil)
        self.update_val('hp',self.num_hp)
        self.update_val('mp',self.num_mp)
        self.update_val('gauge_time',self.num_gauge_time)
        self.update_val('phys_power',self.num_phys_power)
        self.update_val('phys_mult',self.num_phys_mult)
        self.update_val('evade',self.num_evade)
        self.update_val('phys_def',self.num_phys_def)
        self.update_val('mag_power',self.num_mag_power)
        self.update_val('mag_def',self.num_mag_def)
        self.update_val('mag_evade',self.num_mag_evade)
        self.update_val('level',self.num_level) 

    def update_val(self, attr, val):
        val = int(val)
        # This takes integers and converts them into little endian byte format 
        # This could be less verbose / elegant, but this is the only use case for swapping hi/lo bytes for stats like this,
        #    and keeps it readable. Only exp/gil/hp/mp are bitwise 
        
        if attr == 'exp':
            # For now, have to cap
            if val > 65535:
                val = 65535
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_exp = val
            self.exp_lo = newval[2:4]
            self.exp_hi = newval[0:2]
        elif attr == 'gil':
            if val > 65535:
                val = 65535
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_gil = val
            self.gil_lo = newval[2:4]
            self.gil_hi = newval[0:2]
        elif attr == 'hp':
            if val > 65535:
                val = 65535
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_hp = val
            self.hp_lo = newval[2:4]
            self.hp_hi = newval[0:2]
        elif attr == 'mp':
            if val > 65535:
                val = 65535
            self.num_mp = val
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.mp_lo = newval[2:4]
            self.mp_hi = newval[0:2]
        else:
            # For now, have to cap
            if val >= 255:
                val = 255
            newval = "{0:>2}".format(hex(val).replace("0x","")).replace(" ","0")
            setattr(self,attr,newval)
     


    def retrieve_log(self,length='short'):
        # This prints the stat values that are in HEX therefore what will specifically be coded to the game
        # NOT the "num_" values, which are used for updating THESE values 
        
        # Arguments
        # length : 
        # 'short' is name & loot
        # 'full' is stats
        # 'loot_only' returns loot
        
        if length == 'loot_only':
            return '{0: <15}'.format(self.enemy_name)+'{0: <40}'.format("Steal: "+self.steal_common_name+" / "+self.steal_rare_name)+'{0: <40}'.format("Drop: "+self.drop_common_name+" / "+self.drop_rare_name)
        
        final_output = ''
        # Name
        final_output  = final_output  + '{0: <15}'.format("Enemy:")+self.enemy_name+"\n"

        # Loot
        final_output  = final_output  + '{0: <15}'.format("Steal: ")+self.steal_common_name+" / "+self.steal_rare_name+"\n"+'{0: <15}'.format("Drop: ")+self.drop_common_name+" / "+self.drop_rare_name+"\n"

    
        # Stats 
        if length == 'full':
            for stat in ['hp','mp','exp','gil']:
                new_val = int(getattr(self,stat+"_hi"),base=16) * 256  + int(getattr(self,stat+"_lo"),base=16)
                final_output  = final_output  + '{0: <15}'.format(stat +": ") +str(new_val)+"\n"
            for stat in ['gauge_time','phys_power','phys_mult','evade','phys_def','mag_power','mag_def','mag_evade','level']:
                new_val = int(getattr(self,stat),base=16)
                final_output  = final_output  + '{0: <15}'.format(stat +": ") +str(new_val)+"\n"
        return final_output

    def retrieve_asar(self):
        # This outputs asar code for a enemy's stats
        final_output = ''
        
        final_output = final_output + "; Enemy: "+str(self.enemy_name)
        
        stat_data = '; Stats: \norg $'+self.stats_address+"\ndb "
        for stat in stat_hex_map:
            stat_data = stat_data + "$" +getattr(self,stat)+", "
        final_output = final_output + "\n" + stat_data[:-2] + "\n"

        final_output = final_output +  '; Loot: \norg $'+self.drops_address+"\ndb $"+self.steal_common+", $"+self.steal_rare+", $"+self.drop_common+", $"+self.drop_rare+"\n"
        
        return final_output

all_enemies = [Enemy(str(x),df_enemy_table) for x in range(1, len(df_enemy_table['idx'].unique()))]


def randomize_loot(random_type = 'full'):
    for enemy in all_enemies:
        enemy.randomize_loot(random_type)
        
def generate_enemy_code_and_logs():
    log_output = ''
    asar_output = ''
    for enemy in all_enemies:
        log_output = log_output + enemy.retrieve_log('full')
        log_output = log_output + "----------------------------\n"
        
        asar_output = asar_output + enemy.retrieve_asar()
        asar_output = asar_output + ";----------------------------\n"
    with open('rando_output/'+datetime_now+'_enemy_log.txt','a') as file:
        file.write(log_output)
    with open('rando_output/'+datetime_now+'_enemy_asar.asm','a') as file:
        file.write(asar_output)
