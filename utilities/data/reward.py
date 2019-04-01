# -*- coding: utf-8 -*-
import pandas as pd 
import random
import operator

NUM_REWARDS = 318

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
        self.reward_style (event, chest)
        '''
        self.collectible = collectible_manager.get_by_name(self.original_reward)
        self.randomized = False

    @property
    def asar_output(self):
        return f"org ${self.address} \ndb ${self.collectible.reward_type}, ${self.collectible.patch_id}"
    
    @property
    def short_output(self):
        return f"{self.description} {self.original_reward} -> {self.collectible.reward_name}"

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Reward class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

    def set_collectible(self, collectible):
        self.collectible = collectible

class RewardManager:
    def __init__(self, collectible_manager, data_manager):
        self.rewards = [Reward(x, collectible_manager, data_manager) for x in range(1, NUM_REWARDS)]

    def get_random_reward(self, random_engine, area=None):
        if area is None:
            return random_engine.choice(self.rewards)

    def get_reward_by_address(self, address):
        for i in self.rewards:
            if i.address == address:
                return i
        return None

    def get_patch(self):
        output = ";================="
        output = output + "\n;Chests and Events"
        output = output + "\n;=================\n"
        for i in self.rewards:
            output = output + i.asar_output + "\n"

        return output

    def get_spoiler(self):
        output = "-----CHESTS AND EVENTS-----\n"
        for i in self.rewards:
            output = output + i.short_output + "\n"
        output = output + "-----****************-----\n"

        return output
