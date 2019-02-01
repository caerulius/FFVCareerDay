# -*- coding: utf-8 -*-
import pandas as pd 
from reward_data import *
import random
import operator

df_reward_table = pd.read_csv('rewards.csv', dtype=str)
df_reward_table['idx'] = df_reward_table['idx'].astype(int)
#df_chest_table = pd.read_excel('chest_table.xlsx', dtype=str)
#df_chest_table['idx'] = df_chest_table['idx'].astype(int)
df_chest_id = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str)
#df_event_reward_table = pd.read_csv('event_reward_id.csv',dtype=str)
#df_event_reward_table['idx'] = df_event_reward_table['idx'].astype(int)

item_id_dict = pd.read_csv('item_id.csv',index_col='item_id',dtype=str).to_dict()['readable_name'] # id first
item_id_dict2 = dict((v,k) for k,v in item_id_dict.items()) # item first
chest_id_dict = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str).to_dict()['readable_name'] # id first
chest_id_dict2 = dict((v,k) for k,v in chest_id_dict.items()) # item first

class Reward:
    def __init__(self, index, collectible_manager):
        self.idx = index
        self.generate_from_df(df_reward_table)
        '''
        self.address (address of two byte value, id definition)
        self.type (crystal, esper, magic, etc)
        self.reward_type (40, 50, 20, 03, etc)
        self.reward (Knight, Potion, Crbnkl, etc)
        self.area (Wind Shrine, Karnak, etc)
        self.description (Wind Crystal, Beginner's House Chest, etc)
        self.reward_style (event, chest)
        '''
        self.original_reward = self.reward
        self.collectible = collectible_manager.get_by_name(self.reward)

    @property
    def asar_output(self):
        return f";org ${self.address} \ndb ${self.reward_type}, ${self.collectible.reward_id}"
    
    @property
    def short_output(self):
        return f"{self.description} {self.original_reward} -> {self.reward}"

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

def randomize(seed):
    random.seed(seed)
    
    #all_event_rewards = [RewardEvent(x) for x in range(1, 60)]

    #all_chests = [Chest(x) for x in range(1, 253)]

    #all_checks = all_event_rewards + all_chests

    all_rewards = [Reward(x, CollectibleManager) for x in range(1, 314)]
    for i in all_rewards:
        print(i.short_output)
        input()

    global value_rewards
    value_rewards = []
    for i in all_rewards:
        if i.reward_value >= 2:   
            value_rewards.append(i)
            
    value_rewards = random.sample(value_rewards,(len(all_checks)))

    for check in all_checks:
        check.random_reward()
        #print(check.output_short)

    return all_checks

randomize(1)
