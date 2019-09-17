# -*- coding: utf-8 -*-

import pandas as pd 
import random
from abc import ABC, abstractmethod
import math
from progression_translation import *

class Collectible(ABC):
    """A single something, retreived from a chest, event, or shop.

    Collectibles are anything the player can receive at any point.
    Collectible is an abstract class and is implemented in currently
    six ways.
    """ 
    def __init__(self, reward_id, reward_name, reward_value, related_jobs,
                 max_count, tier=None, valid = None):
        #pandas imports a blank field as a float nan. This is the easiest way to none it.
        if type(max_count) is float:
            self.max_count = None
        else:
            self.max_count = int(max_count)
        self.reward_id = reward_id
        self.collectible_name = reward_name
        self.reward_value = reward_value
        self.related_jobs = [x.replace('"', '').replace(' ', '')
                              .replace('“', '').replace('”', '')
                             for x in related_jobs]
        if tier is not None:
            self.tier = int(tier)
        else:
            self.tier = None
        if valid is None:
            self.valid = True
        else:
            self.valid = valid == "TRUE"
        self.place_weight = 1

        @property
        @abstractmethod
        def reward_name(self):
            pass

        @property
        @abstractmethod
        def patch_id(self):
            pass

        @property
        @abstractmethod
        def type_str(self):
            pass

        @property
        @abstractmethod
        def shop_name(self):
            pass
        
class Item(Collectible):
    reward_type = '40'
    def __init__(self, item_id, data_row):
        self.type = data_row['type']
        self.subtype = data_row['subtype']
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        super().__init__(item_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['tier'], data_row['valid'])

    @property
    def patch_id(self):
        return self.reward_id

    @property
    def reward_name(self):
        return self.collectible_name

    @property
    def type_str(self):
        return "Item"

    @property
    def shop_name(self):
        return self.collectible_name
    
class Magic(Collectible):
    reward_type = '20'
    def __init__(self, magic_id, data_row):
        self.type = data_row['type']
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        self.progression_id = data_row['progression_id']
        super().__init__(magic_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['tier'], data_row['valid'])

    @property
    def patch_id(self):
        return self.progression_id

    '''
    @property
    def reward_name(self):
        return self.collectible_name + " " + self.type
    '''
    
    @property
    def reward_name(self):
        if self.progression_id in progression_magic:
            return progression_magic[self.progression_id]
        else:
            return self.collectible_name

    @property
    def type_str(self):
        return "Magic"

    @property
    def shop_name(self):
        return self.collectible_name


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
                         related_jobs, data_row['max_count'], data_row['tier'])

    @property
    def patch_id(self):
        return self.reward_id

    @property
    def reward_name(self):
        return self.collectible_name + " " + "Job Crystal"

    @property
    def type_str(self):
        return "Crystal"

    @property
    def shop_name(self):
        return self.collectible_name
        
class Ability(Collectible):
    reward_type = '60'
    def __init__(self, ability_id, data_row):
        related_jobs = data_row['related_jobs'].strip('][').split(',')
        self.progression_id = data_row['progression_id']
        super().__init__(ability_id, data_row['readable_name'], int(data_row['value']),
                         related_jobs, data_row['max_count'], data_row['tier'], data_row['valid'])

    @property
    def patch_id(self):
        return self.progression_id

    '''
    @property
    def reward_name(self):
        return self.collectible_name + " " + "Ability"
    '''

    @property
    def reward_name(self):
        if self.progression_id in progression_abilities:
            return progression_abilities[self.progression_id]
        else:
            return self.collectible_name

    @property
    def type_str(self):
        return "Ability"

    @property
    def shop_name(self):
        return self.collectible_name


class Gil(Collectible):
    reward_type = ""
    def __init__(self, gil_id, data_row):
        self.reward_type = data_row['power_byte']
        super().__init__(data_row['number_byte'], str(data_row['readable_amount']) + " gil",
                         int(data_row['value']), [],data_row['max_count'], tier=data_row['tier'])

    @property
    def patch_id(self):
        return self.reward_id

    @property
    def reward_name(self):
        return self.collectible_name

    @property
    def type_str(self):
        return "Gil"

    @property
    def shop_name(self):
        return self.collectible_name

class KeyItem(Collectible):
    reward_type = '30'
    def __init__(self, keyitem_id, data_row):
        super().__init__(keyitem_id, data_row['readable_name'], 0,
                         [], 1, tier=None, valid=data_row['valid'])
        self.writeable_name = data_row['writeable_name']
        self.text_location = data_row['text_location']
        self.required_by_placement = []

    #key_items is an array, even if it's only one item
    def add_required_items(self, key_items):
        self.required_by_placement.extend(key_items)

    @property
    def patch_id(self):
        return self.reward_id

    @property
    def reward_name(self):
        return self.collectible_name

    @property
    def type_str(self):
        return "KeyItem"

    @property
    def shop_name(self):
        return self.collectible_name

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
        for i in self.collectibles:
            if name == i.reward_name:
                return i
        # print("DID NOT RETURN A COLLECTIBLE: name: "+str(name))
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

    def get_random_collectible(self, random_engine, respect_weight=False, 
                               reward_loc_tier=None, monitor_counts=False, 
                               of_type=None, gil_allowed=False, disable_zerozero=False, 
                               next_reward=None, tiering_config=False,
                               tiering_percentage=90, tiering_threshold=2):
        if type(of_type) is str: # this is a literal string definition of a type, so let's cast it first
            if of_type in type_dict.keys():
                of_type = type_dict[of_type]
            else:
                raise(KeyError) #not sure what to do with a passed in type we don't know about

        if of_type is not None:
            working_list = [x for x in self.get_all_of_type(of_type) if x.valid] #this will be a shop or a forced type item
        else:
            working_list = [x for x in self.collectibles if x.valid and type(x) != KeyItem] #this will be a non shop

        if gil_allowed and len(self.placed_gil_rewards) < len([x for x in self.collectibles if x.type_str == 'Gil']): #first, place all our gil rewards
            if tiering_config:
                choice = None
                tier_adj = 0 # similar to minimum tier below
                while choice == None:
                    try:
                        choice = random_engine.choice([x for x in self.get_all_of_type(Gil) if x not in self.placed_gil_rewards and (x.tier - tier_adj) <= int(reward_loc_tier)])
                    except:
                        # print("Error on gil choices, skipping.")
                        tier_adj += 1
                        pass # continue loop if error above
            else:
                choice = random_engine.choice([x for x in self.get_all_of_type(Gil) if x not in self.placed_gil_rewards])
            self.placed_gil_rewards.append(choice)
            return choice

        if not gil_allowed:
            working_list = [x for x in working_list if type(x) is not Gil]

#        try:
#            if next_reward.area == 'Pyramid':
#                for i in working_list:
#                    print(i.collectible_name)
#                breakpoint()
#        except Exception as e:
#            print("Error "+str(e))     
#            
        if monitor_counts is True:
            working_list = [y for y in [x for x in working_list if
                                       (x not in self.placement_history.keys() or
                                        x.max_count is None or
                                        x.max_count < self.placement_history[x])]
                            if y.valid]
            
        # working_list_copy1 = working_list[:]


        # TIERING
        # After applying all the above, enforce tiering if applicable
        debug_flag = False
        if tiering_config:
            # Now we empty working_list, and iterate over minimum floors for collectible tiers until the list is populated
            # With at least one item
            
            # Example:
            # Trying to place on a tier 4 location. 
            # 90% chance to place collectible Tier _4_ through 4, 10% chance to place collectible Tier _4_ through 6 (4+2)
            # If nothing is placed, change _4_ to _3_, etc..
            # continue until not empty 
         
    #        try:
    #            if str(type(next_reward)) == "<class 'shop.Shop'>" and 'Mirage' in next_reward.readable_name and str(of_type) == "(<class 'collectible.Crystal'>, <class 'collectible.Ability'>)":
    #                debug_flag = True
    ##                breakpoint()
    
    #        except:
    #            pass
            if debug_flag:
                try:
                    print(next_reward.__dict__)
                except:
                    pass
            if reward_loc_tier is not None:
                RARE_TIER_PERCENTAGE = 98 # Rare percent chance of pulling from 7+ tiers only. B O N U S
                tiering_percentage = 90      # Percent chance each draw will strictly adhere to tier. 
                tiering_threshold = 2        # If tier percentage not applied (i.e, 10% if above is 90%) 
                                          #   then include the collectible if it is in the tier threshold range 
                                          #   e.g., location tier 4, collectible tier 6, tier threshold 2
                                          #   if it passes the 90% test (and is one of the 10%), then 
                                          #   it will be included because the range becomes 4 <-> 6 
                working_list_copy = working_list[:]
                working_list = []        
                reward_loc_tier = int(reward_loc_tier)
                minimum_tier = max(reward_loc_tier - 1, 1) #starts at a range of y-1 to y (so, tier 4 location will grab from pool of tier 3s and 4s)
                try:
                   while working_list == [] and minimum_tier > 0:
                        for i in working_list_copy:
                            percent_flag = random_engine.randint(1,100) > tiering_percentage
                            rare_percent_flag = random_engine.randint(1,100) > RARE_TIER_PERCENTAGE
                            if rare_percent_flag:
                                if i.tier >= 7:
                                    working_list.append(i)
                            # If less than, then apply normal case
                            elif not percent_flag:
                                if i.tier <= reward_loc_tier and i.tier >= minimum_tier:
                                    working_list.append(i)
                                if debug_flag:
                                    print("Collectible: %s %s reward_loc_tier %s"% (i.collectible_name,i.tier,reward_loc_tier))                  
                            # If greater than or equal to percentage, add the collectible if it is reward_loc_tier + threshold
                            else:
                                if i.tier <= (reward_loc_tier + tiering_threshold) and i.tier >= minimum_tier:
                                    working_list.append(i)
                                if debug_flag:
                                    print("Collectible (bonus): %s %s reward_loc_tier %s"% (i.collectible_name,i.tier,reward_loc_tier))
                        # decrease minimum_tier for next time, if working_list is still empty
                        minimum_tier -= 1
                except Exception as e:
                    print("EXCEPTION %s" % (e))

        #ending up with empty lists and failures too often, need a fallback incase
        #we don't end up with any values. We'll get a list of any of the appropriate type,
        #but no single placement items
        if len(working_list) == 0:
            if of_type is not None:
                working_list = [x for x in self.get_all_of_type(of_type) if x.max_count != 1 and x.valid]
            else:
                working_list = [x for x in self.collectibles if x.max_count != 1 and x.valid]

        if disable_zerozero:
            working_list = [x for x in working_list if x.patch_id != '00'] #disable any id of 00, because this ends shops
            
            
        if respect_weight is False:
            choice = random_engine.choice(working_list)
        else:
            # Legit I don't think this is doing anything. While debugging, [y.place_weight for y in working_list] always produces an array of 1s, from the hardcode weight=1 from Collectible...
            # What was the point...?
            choice = random_engine.choices(working_list, [y.place_weight for y in working_list])[0]

        if monitor_counts is True:
            self.add_to_placement_history(choice)

        if choice is None:
            print(working_list)
        if debug_flag and next_reward is not None:
            breakpoint()
#            for i in working_list_copy1:
#                print(i.collectible_name)

        return choice

    def get_min_value_collectible(self, random_engine):
        return random_engine.choice([x for x in self.get_all_of_type(Item)
                                     if  x.reward_value == 1
                                     and x.max_count is None
                                     and x.valid])

    def get_of_value_or_lower(self, random_engine, value):
        val_list = [x for x in self.collectibles if x.reward_value == value
                    and (x not in self.placement_history or
                         self.placement_history[x] < x.max_count)
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