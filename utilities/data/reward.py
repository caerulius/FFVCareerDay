# -*- coding: utf-8 -*-
import pandas as pd 
#from collectible import *
import random
import operator

NUM_REWARDS = 314

df_reward_table = pd.read_csv('rewards.csv', dtype=str)
df_reward_table['idx'] = df_reward_table['idx'].astype(int)

#df_chest_id = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str)

class Reward:
    def __init__(self, index, collectible_manager):
        self.idx = index
        self.generate_from_df(df_reward_table)
        '''
        self.address (address of two byte value, id definition)
        self.type (crystal, esper, magic, etc)
        self.reward_type (40, 50, 20, 03, etc)
        self.original_reward (Knight, Potion, Crbnkl, etc)
        self.area (Wind Shrine, Karnak, etc)
        self.description (Wind Crystal, Beginner's House Chest, etc)
        self.reward_style (event, chest)
        '''
        self.collectible = collectible_manager.get_by_name(self.original_reward)

    @property
    def asar_output(self):
        return f";org ${self.address} \ndb ${self.reward_type}, ${self.collectible.reward_id}"
    
    @property
    def short_output(self):
        return f"{self.description} {self.original_reward} -> {self.reward}"

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Reward class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

    def set_collectible(self, collectible):
        if collectible is None:
            pass
        self.collectible = collectible
        print(self.original_reward + " @ " + self.description + " -> " + self.collectible.reward_name)

class RewardManager:
    def __init__(self, collectible_manager):
        self.rewards = [Reward(x, collectible_manager) for x in range(1, NUM_REWARDS)]

    def get_random_reward(self, random_engine, area=None):
        if area is None:
            return random_engine.choice(self.rewards)
