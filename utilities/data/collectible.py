# -*- coding: utf-8 -*-

import pandas as pd 
import random
from abc import ABC, abstractmethod
import math

class Collectible(ABC):
    def __init__(self, reward_id, reward_name, reward_value, related_jobs,
                 max_count, valid = None):
        #pandas imports a blank field as a float nan. This is the easiest way to none it.
        if type(max_count) is float:
            self.max_count = None
        else:
            self.max_count = int(max_count)
        self.reward_id = reward_id
        self.reward_name = reward_name
        self.reward_value = reward_value
        self.related_jobs = [x.replace('"', '').replace(' ', '')
                              .replace('“', '').replace('”', '')
                             for x in related_jobs]
        if valid is None:
            self.valid = True
        else:
            self.valid = valid == "TRUE"
        self.place_weight = 1

        @property
        @abstractmethod
        def patch_id(self):
            pass
        
class Item(Collectible):
    reward_type = '40'
    def __init__(self, item_id, data_row):
        self.type = data_row['type']
        self.subtype = data_row['subtype']
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        super().__init__(item_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['valid'])

    @property
    def patch_id(self):
        return self.reward_id
        
class Magic(Collectible):
    reward_type = '20'
    def __init__(self, magic_id, data_row):
        self.type = data_row['type']
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        self.progression_id = data_row['progression_id']
        super().__init__(magic_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['valid'])

    @property
    def patch_id(self):
        return self.progression_id
    

class Crystal(Collectible):
    reward_type = '50'
    def __init__(self, crystal_id, data_row):
        self.shop_id = data_row['shop_id']
        self.starting_weapon = data_row['starting_weapon']
        self.starting_weapon_id = data_row['starting_weapon_id']
        self.starting_spell_list = data_row['starting_spell_list'].strip('][').split(',')
        self.starting_spell_list = [x.replace('"', '').replace(' ', '')
                                     .replace('“', '').replace('”', '')
                                    for x in self.starting_spell_list]
        self.starting_spell_ids = data_row['starting_spell_ids'].strip('][').split(',')
        self.starting_spell_ids = [x.replace('"', '').replace(' ', '')
                                     .replace('“', '').replace('”', '')
                                    for x in self.starting_spell_ids]
        self.starting_ability = data_row['starting_ability']
        self.starting_ability_id = data_row['starting_ability_id']
        self.starting_spell = ""
        self.starting_spell_id = ""
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        super().__init__(crystal_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'])

    @property
    def patch_id(self):
        return self.reward_id
        
class Ability(Collectible):
    reward_type = '60'
    def __init__(self, ability_id, data_row):
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        self.progression_id = data_row['progression_id']
        super().__init__(ability_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['valid'])

    @property
    def patch_id(self):
        return self.progression_id

class Gil(Collectible):
    reward_type = ""
    def __init__(self, gil_id, data_row):
        self.reward_type = data_row['power_byte']
        super().__init__(data_row['number_byte'], str(data_row['readable_amount']) + " gil",
                         int(data_row['value']), [], data_row['max_count'], valid = True)

    @property
    def patch_id(self):
        return self.reward_id

class KeyItem(Collectible):
    reward_type = '30'
    def __init__(self, keyitem_id, data_row):
        super().__init__(keyitem_id, data_row['readable_name'], 0,
                         [], 1, data_row['valid'])
        self.writeable_name = data_row['writeable_name']
        self.text_location = data_row['text_location']
        self.required_by_placement = []

    #key_items is an array, even if it's only one item
    def add_required_items(self, key_items):
        self.required_by_placement.extend(key_items)

    @property
    def patch_id(self):
        return self.reward_id

class CollectibleManager():
    def __init__(self, data_manager):
        items = [Item(x, data_manager.files['items'].loc[x]) for x in data_manager.files['items'].index.values]
        magics = [Magic(x, data_manager.files['magics'].loc[x]) for x in data_manager.files['magics'].index.values]
        crystals = [Crystal(x, data_manager.files['crystals'].loc[x]) for x in data_manager.files['crystals'].index.values]
        abilities = [Ability(x, data_manager.files['abilities'].loc[x]) for x in data_manager.files['abilities'].index.values]
        gil = [Gil(x, data_manager.files['gil'].loc[x]) for x in data_manager.files['gil'].index.values]
        key_items = [KeyItem(x, data_manager.files['key_items'].loc[x]) for x in data_manager.files['key_items'].index.values]
        self.collectibles = items + magics + crystals + abilities + gil + key_items
        self.collectibles = [x for x in self.collectibles if x.valid]
        self.placement_history = {}
        self.placed_gil_rewards = []

    def get_by_name(self, name):
        if name == "New":
            return None
        best_match = None
        for i in self.collectibles:
            if name == i.reward_name:
                return i
        return None

    def get_by_id_and_type(self, reward_id, reward_type):
        for i in self.collectibles:
            if i.reward_id == reward_id and i.reward_type == reward_type and i.valid:
                return i
        return None

    def get_all_of_type(self, t):
        if type(t) is list or type(t) is tuple:
            return [x for x in self.collectibles if type(x) in t]
        return [x for x in self.collectibles if type(x) is t]

    def reset_all_of_type(self, t):
        for i in self.collectibles:
            if type(i) == t:
                self.remove_from_placement_history(i)
                if t == KeyItem:
                    i.required_by_placement = []

    def get_all_of_type_respect_counts(self, t):
        if type(t) is list or type(t) is tuple:
            return [x for x in self.collectibles if type(x) in t and (x not in self.placement_history.keys() or
                                                                      x.max_count is None or
                                                                      x.max_count < self.placement_history[x])]

        return [x for x in self.collectibles if type(x) is t and (x not in self.placement_history.keys() or
                                                                  x.max_count is None or
                                                                  x.max_count < self.placement_history[x])]

    def get_random_collectible(self, random_engine, respect_weight=False, monitor_counts=False, of_type=None, gil_allowed=False):   
        if type(of_type) is str: # this is a literal string definition of a type, so let's cast it first
            if of_type in type_dict.keys():
                of_type = type_dict[of_type]
            else:
                raise(KeyError) #not sure what to do with a passed in type we don't know about

        if of_type is not None:
            working_list = [x for x in self.get_all_of_type(of_type) if x.valid] #this will be a shop or a forced type item
        else:
            working_list = [x for x in self.collectibles if x.valid and type(x) != KeyItem] #this will be a non shop

        if gil_allowed and len(self.placed_gil_rewards) < len([x for x in self.get_all_of_type(Gil)]): #first, place all our gil rewards
            choice = random.choice([x for x in self.get_all_of_type(Gil) if x not in self.placed_gil_rewards])
            self.placed_gil_rewards.append(choice)
            return choice
            
        if monitor_counts is True:
            working_list = [y for y in [x for x in working_list if
                                       (x not in self.placement_history.keys() or
                                        x.max_count is None or
                                        x.max_count < self.placement_history[x])]
                            if y.valid]

        #ending up with empty lists and failures too often, need a fallback incase
        #we don't end up with any values. We'll get a list of any of the appropriate type,
        #but no single placement items
        if len(working_list) == 0:
            if of_type is not None:
                working_list = [x for x in self.get_all_of_type(of_type) if x.max_count != 1 and x.valid]
            else:
                working_list = [x for x in self.collectibles if x.max_count != 1 and x.valid]

        if respect_weight is False:
            choice = random_engine.choice(working_list)
        else:
            choice = random_engine.choices(working_list, [y.place_weight for y in working_list])[0]

        if monitor_counts is True:
            self.add_to_placement_history(choice)

        if choice is None:
            print(working_list)

        return choice

    def get_min_value_collectible(self, random_engine):
        return random_engine.choice([x for x in self.get_all_of_type(Item)
                                     if  x.reward_value == 1
                                     and x.max_count is None
                                     and x.valid])

    def get_of_value_or_lower(self, random_engine, value):
        val_list = [x for x in self.collectibles if x.reward_value == value
                    and self.placement_history[x] < x.max_count
                    and x.valid and type(x) != KeyItem]
        if len(val_list) == 0:
            val_list = [x for x in self.collectibles if x.reward_value < value
                        and self.placement_history[x] < x.max_count
                        and x.valid and type(x) != KeyItem]
        if len(val_list) == 0:
            return None #some you can place forever, so this should never happen

        return random_engine.choice(val_list)
        
    
    def add_to_placement_history(self, collectible):
        if collectible in self.placement_history.keys():
            self.placement_history[collectible] = self.placement_history[collectible] + 1
        else:
            self.placement_history[collectible] = 1

    def remove_from_placement_history(self, collectible):
        if collectible in self.placement_history.keys():
            del(self.placement_history[collectible])
            
    def reset_placement_history(self):
        self.placement_history = {}

type_dict = {}
type_dict['Item'] = Item
type_dict['Magic'] = Magic
type_dict['Crystal'] = Crystal
type_dict['Ability'] = Ability
type_dict['Gil'] = Gil
type_dict['KeyItem'] = KeyItem