# -*- coding: utf-8 -*-
import pandas as pd 
import random
import operator
from log_analyzer import check_completeable_spoiler_log

class Reward:
    def __init__(self, index, collectible_manager, data_manager):
        self.idx = index
        self.generate_from_df(data_manager.files['rewards'])
        '''
        self.address (address of two byte value, id definition)
        self.type (crystal, esper, magic, etc)
        self.original_reward (Knight, Potion, Crbnkl, etc)
        self.area (Wind Shrine, Karnak, etc)
        self.description (Wind Crystal, Beginner's House Chest, etc)
        self.reward_style (event, chest, key)
        self.force_type (Item, Gil, etc.)
        self.required_key_items (Sandworm Bait, Adamantite, etc.)
        self.exdeath_address (Address only relevant to the key item rewards, that tells the special exdeath rewards where to write)
        '''
        if type(self.force_type) == float:
            self.force_type = None
        if type(self.required_key_items) == float:
            self.required_key_items = None
        else:
            self.required_key_items = [x.replace('"', '').replace('“', '').replace('”', '').strip() for x in \
                                        self.required_key_items.strip('][').split(',')]
        if type(self.required_key_items_lock1) == float:
            self.required_key_items_lock1 = None
        else:
            self.required_key_items_lock1 = [x.replace('"', '').replace('“', '').replace('”', '').strip() for x in \
                                        self.required_key_items_lock1.strip('][').split(',')]
        if type(self.required_key_items_lock2) == float:
            self.required_key_items_lock2 = None
        else:
            self.required_key_items_lock2 = [x.replace('"', '').replace('“', '').replace('”', '').strip() for x in \
                                        self.required_key_items_lock2.strip('][').split(',')]
        try:
            self.hint_tags = [x.replace('"', '').replace('“', '').replace('”', '').strip() for x in \
                              self.hint_tags.strip('][').split(',')]
        except:
            self.hint_tags = ''

        self.collectible = collectible_manager.get_by_name(self.original_reward)
        self.mib_type = None #keep a byte for the monster in a box type, override the type in the asar_output if exists
        self.randomized = False

    @property
    def asar_output(self):
        if self.mib_type is None:
            return f"org ${self.address} \ndb ${self.collectible.reward_type}, ${self.collectible.patch_id}"
        else:
            return f"org ${self.address} \ndb ${self.mib_type}, ${self.collectible.patch_id}"
    
    @property
    def short_output(self):
        if self.collectible is None:
            return ""
        if str(type(self.collectible)) == "<class 'collectible.KeyItem'>":
            return '{:30}'.format("%s " % (self.description)) + '{:30}'.format("%s" % (self.collectible.reward_name))
        if self.mib_type is None:
            # return f"{self.description} {self.original_reward} (T{self.tier}) -> {self.collectible.reward_name} (T{self.collectible.tier})"
            return  '{:50}'.format("T%s %s %s" % (self.tier, self.description, self.original_reward)) + '{:50}'.format("T%s %s" % (self.collectible.tier, self.collectible.reward_name))
        else:
            return '{:50}'.format("T%s %s %s" % (self.tier, self.description, self.original_reward)) + '{:50}'.format("T%s %s (monster-in-a-box)" % (self.collectible.tier, self.collectible.reward_name))

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Reward class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

    def set_collectible(self, collectible, type_override=None):
        self.randomized = True
        self.collectible = collectible

class RewardManager:
    def __init__(self, collectible_manager, data_manager):
        self.rewards = [Reward(x, collectible_manager, data_manager) for x in data_manager.files['rewards'].index.values]

    def get_random_reward(self, random_engine, area=None):
        if area is None:
            return random_engine.choice(self.rewards)

    def get_reward_by_address(self, address):
        for i in self.rewards:
            if i.address == address:
                return i
        return None

    def get_rewards_by_style(self, style):
        return [x for x in self.rewards if x.reward_style == style]

    def reset_rewards_by_style(self, style):
        for i in self.get_rewards_by_style(style):
            i.randomized = False
            i.collectible = None

    def get_patch(self):
        output = "\n;================="
        output = output + "\n;Chests and Events"
        output = output + "\n;=================\n"
        for i in self.rewards:
            output = output + i.asar_output + "\n"

        return output

    def get_spoiler(self, world_lock):
        
        output = "-----KEY ITEMS------\n"
        output_temp, flag1, flag2, df = check_completeable_spoiler_log([x for x in self.rewards if str(type(x.collectible)) == "<class 'collectible.KeyItem'>"],world_lock)
        self.df = df
        output = output + output_temp + "\n"
        output = output + "-----*********-----\n\n\n"
        
        output = output + "-----CHESTS AND EVENTS (T = Tier)-----\n"
        for i in [x for x in self.rewards if str(type(x.collectible)) != "<class 'collectible.KeyItem'>"]:
            output = output + i.short_output + "\n"
        output = output + "-----****************-----\n\n"


        output = output + "\n\n"
        return output