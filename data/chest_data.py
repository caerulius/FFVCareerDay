# -*- coding: utf-8 -*-
import pandas as pd 
from reward_data import *
import random

df_chest_table = pd.read_excel('chest_table.xlsx', dtype=str)
df_chest_table['idx'] = df_chest_table['idx'].astype(int)
df_item_id = pd.read_csv('item_id.csv',index_col='item_id',dtype=str)
df_chest_id = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str)
df_event_reward_table = pd.read_csv('event_reward_id.csv',dtype=str)
df_event_reward_table['idx'] = df_event_reward_table['idx'].astype(int)

item_id_dict = pd.read_csv('item_id.csv',index_col='item_id',dtype=str).to_dict()['readable_name'] # id first
item_id_dict2 = dict((v,k) for k,v in item_id_dict.items()) # item first
chest_id_dict = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str).to_dict()['readable_name'] # id first
chest_id_dict2 = dict((v,k) for k,v in chest_id_dict.items()) # item first

class Chest(object):
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_chest_table)
        self.address = hex(int(self.base_address,base=16)+int(self.offset,base=16)).replace("0x","").upper()
        self.chest_contents = [self.type, self.id, self.reward_type, self.reward]
        self.data = self.loc1 + self.loc2 + self.type + self.id
        self.original_reward = self.reward
        self.asar_output = f";org ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
        self.output_short = f"Chest: {self.idx}\t{self.original_reward} → {self.reward}"
    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
    def update_contents(self):
        '''
        Updates text string/output based on new contents 
        '''
        if self.type == '40':
            self.reward = item_id_dict[self.id]
        self.chest_contents = [self.type, self.id, self.reward_type, self.reward]
        self.data = self.loc1 + self.loc2 + self.type + self.id
        self.asar_output = f"org ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
        self.output_short = f"Chest: {self.idx}\t{self.original_reward} → {self.reward}"
    def random_reward(self):
        random_item = value_rewards.pop()
        self.reward = random_item.reward_name
        self.type = random_item.reward_type
        self.id = random_item.reward_id
        self.update_contents()


class RewardEvent(object):
    ''' Event rewards are not given their initial values, instead are just replaced with whatever the randomizer dictates'''
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_event_reward_table)
        self.type = ''
        self.id = ''
        self.reward = ''
        self.asar_output = f"org ${self.address} \ndb ${self.type}, ${self.id} "
        self.output_short = f"Event: {self.idx}\t{self.event} → {self.reward}"
    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])        
    def random_reward(self):
        random_item = value_rewards.pop()
        self.reward = random_item.reward_name
        self.type = random_item.reward_type
        self.id = random_item.reward_id
        self.asar_output = f"org ${self.address} \ndb ${self.type}, ${self.id} "
        self.output_short = f"Event: {self.idx}\t{self.event} → {self.reward}"

def randomize(seed):
    random.seed(seed)
    
    all_event_rewards = [RewardEvent(x) for x in range(1, 60)]

    all_chests = [Chest(x) for x in range(1, 253)]

    all_checks = all_event_rewards + all_chests

    global value_rewards
    value_rewards = []
    for i in all_rewards:
        if i.reward_value >= 2:   
            value_rewards.append(i)
            
    value_rewards = random.sample(value_rewards,(len(all_checks)))

    for check in all_checks:
        check.random_reward()
        #print(check.output_short)
        
    '''
    print("-------------------------")
    print("-------------------------")
    print("-------------------------")
    print("-------------------------")
    print("-------------------------")    
    print("COPY DATA FROM HERE DOWN-")    
    print("-------------------------")    
    print("-------------------------")    
    print("-------------------------")    
    print("-------------------------")    
    print("-------------------------")    
    for check in all_checks:
        print(check.asar_output)
    '''

    return all_checks
