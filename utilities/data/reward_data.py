# -*- coding: utf-8 -*-

import pandas as pd 
import random
from abc import ABC, abstractmethod

df_item_id = pd.read_csv('item_id.csv',index_col='item_id',dtype=str)
df_magic_id = pd.read_csv('magic_id.csv',index_col='magic_id',dtype=str)
df_crystal_id = pd.read_csv('crystal_id.csv',index_col='crystal_id',dtype=str)
df_ability_id = pd.read_csv('ability_id.csv',index_col='ability_id',dtype=str)

class Collectible(ABC):
    def __init__(self, reward_id, reward_name, reward_value):
        self.reward_id = reward_id
        self.reward_name = reward_name
        self.reward_value = reward_value

class Item(Collectible):
    reward_type = '40'
    def __init__(self,item_id):
        data = df_item_id.loc[item_id]
        self.type = data['type']
        self.subtype = data['subtype']
        super().__init__(item_id, data['readable_name'], int(data['value']))
        

class Magic(Collectible):
    reward_type = '20'
    def __init__(self,magic_id):
        data = df_magic_id.loc[magic_id]
        self.type = data['type']
        super().__init__(magic_id, data['readable_name'], int(data['value']))

class Crystal(Collectible):
    reward_type = '50'
    def __init__(self,crystal_id):
        data = df_crystal_id.loc[crystal_id]
        super().__init__(crystal_id, data['readable_name'], int(data['value']))
        
class Ability(Collectible):
    reward_type = '60'
    def __init__(self,ability_id):
        data = df_ability_id.loc[ability_id]
        super().__init__(ability_id, data['readable_name'], int(data['value']))

class Collectibles():
    def __init__(self, collectibles):
        self.collectibles = collectibles

    def get_by_name(self, name):
        for i in self.collectibles:
            if i.reward_name == name:
                return i
        raise KeyError("Collectible name: " + name + " was not found " \
                       "in list of collectibles")

    def get_by_id_and_type(self, reward_id, reward_type):
        for i in self.collectibles:
            if i.reward_type == reward_type and i.reward_id == reward_id:
                return i
        raise KeyError("Collectible with id: " + reward_id + " and type: " \
                       + reward_type + " was not found in list of collectibles")
            

all_items = [Item(x) for x in df_item_id.index.values]

all_magic = [Magic(x) for x in df_magic_id.index.values]

all_crystals = [Crystal(x) for x in df_crystal_id.index.values]

all_abilities = [Ability(x) for x in df_ability_id.index.values]

all_rewards = all_magic + all_items + all_crystals + all_abilities

CollectibleManager = Collectibles(all_rewards)
