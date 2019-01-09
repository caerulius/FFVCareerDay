# -*- coding: utf-8 -*-
import pandas as pd 
from reward_data import *
import random


# TO DO
# Value lookup

df_shop_table = pd.read_csv('shop_id.csv',index_col='id_num',dtype=str)
item_id_dict = pd.read_csv('item_id.csv',index_col='item_id',dtype=str).to_dict()['readable_name'] # id first
magic_id_dict = pd.read_csv('magic_id.csv',index_col='magic_id',dtype=str).to_dict()['readable_name'] # id first
shop_id_dict = {
        '00' : 'Magic',
        '01' : 'Weapon',
        '02' : 'Armor',
        '03' : 'Item',
        '04' : 'Relic',
        '05' : 'Guild',
        '06' : 'Medicine',
        '07' : 'Generic',
        '81' : 'Karnak',
        '82' : 'Karnak',
        '83' : 'Karnak',
        '84' : 'Karnak',
        }

class Shop(object):
    def __init__(self,index):
        self.idx = index
        self.shop_count = 0
        self.generate_from_df(df_shop_table)
        self.output = f"Shop index: {self.idx}\nShop type: {self.shop_type_name}\n{self.slot1_name}\n{self.slot2_name}\n{self.slot3_name}\n{self.slot4_name}\n{self.slot5_name}\n{self.slot6_name}\n{self.slot7_name}\n{self.slot8_name}"
        self.asar_output = f";Shop index: {self.idx}\norg ${self.address}\ndb ${self.shop_type}, ${self.slot1}, ${self.slot2}, ${self.slot3}, ${self.slot4}, ${self.slot5}, ${self.slot6}, ${self.slot7}, ${self.slot8}"
    def generate_from_df(self, df):
        s = df[df.index==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.boss_name)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
        self.shop_type_name = shop_id_dict[self.shop_type]
        
        # this looks up the string name for each magic ID, then change slot to Class object
        if self.shop_type_name == 'Magic':
            for attr in list(self.__dict__):
                if 'slot' in attr:
                    setattr(self,attr+"_name",magic_id_dict[getattr(self,attr)])
                    setattr(self,attr+"_reward",Magic(getattr(self,attr)))
        # this looks up the string name for each item ID, then change slot to Class object
        else:
            for attr in list(self.__dict__):
                if 'slot' in attr:
                    setattr(self,attr+"_name",item_id_dict[getattr(self,attr)])
                    setattr(self,attr+"_reward",Item(getattr(self,attr)))
        # if blank, set to blank string
        
        slots_only = ['slot1','slot2','slot3','slot4','slot5','slot6','slot7','slot8']
        for slot in slots_only:
            if "00" in str(getattr(self,slot)):
                setattr(self,slot+"_name","")
            else:
                self.shop_count = self.shop_count + 1
    def randomize_shop(self,shop_reward_count=None):
        if shop_reward_count is None:
            shop_reward_count = self.shop_count            
        if self.shop_type_name == 'Magic':
            all_magic_local = all_magic[:]
            random.shuffle(all_magic_local)
            for reward_num in range(shop_reward_count+1):
                new_magic = all_magic_local.pop()
                setattr(self,"slot"+str(reward_num),new_magic.reward_id)
                setattr(self,"slot"+str(reward_num)+"_name",new_magic.reward_name)
                setattr(self,"slot"+str(reward_num)+"_reward",new_magic)
        else:
            all_item_local = all_items[:]
            random.shuffle(all_item_local)
            for reward_num in range(shop_reward_count+1):
                new_item = all_item_local.pop()
                setattr(self,"slot"+str(reward_num),new_item.reward_id)
                setattr(self,"slot"+str(reward_num)+"_name",new_item.reward_name)
                setattr(self,"slot"+str(reward_num)+"_reward",new_item)
        self.output = f"Shop index: {self.idx}\nShop type: {self.shop_type_name}\n{self.slot1_name}\n{self.slot2_name}\n{self.slot3_name}\n{self.slot4_name}\n{self.slot5_name}\n{self.slot6_name}\n{self.slot7_name}\n{self.slot8_name}"
        self.asar_output = f";Shop index: {self.idx}\norg ${self.address}\ndb ${self.shop_type}, ${self.slot1}, ${self.slot2}, ${self.slot3}, ${self.slot4}, ${self.slot5}, ${self.slot6}, ${self.slot7}, ${self.slot8}"

def randomize(seed):
    random.seed(seed)
    
    all_shops = [Shop(x) for x in range(1, 63)]

    for shop in all_shops:
        shop.randomize_shop()

    return all_shops
