# -*- coding: utf-8 -*-
import pandas as pd
import random
import operator

from collectible import *
from reward import *
from shop import *
from shop_price import *
from area import *

class Conductor():
    def __init__(self):
        self.CM = CollectibleManager()        #Set up collectibles. Includes Items, magic, crystals, and abilities
        self.RM = RewardManager(self.CM)      #Set up rewards. Includes chests and events
        self.SM = ShopManager(self.CM)        #Set up shops.
        self.SPM = ShopPriceManager(self.CM)  #Set up shop prices
        self.AM = AreaManager()               #Set up areas. Tule, The Void, etc
        
        self.difficulty = random.randint(1,10)
        self.chosen_crystals = self.get_crystals()
        self.chosen_crystals_names = [x.reward_name for x in self.chosen_crystals]

        self.weigh_collectibles()

    def get_crystals(self):
        crystals = self.CM.get_all_of_type(Crystal)

        crystal_count = random.randint(4, len(crystals))
        crystal_count = crystal_count - (self.difficulty // 3)
        if crystal_count < 4:
            crystal_count = 4

        chosen_crystals = random.sample(crystals, crystal_count)

        return chosen_crystals

    def weigh_collectibles(self):
        for index, value in enumerate(self.CM.collectibles):
            related = [i for i in value.related_jobs if i in self.chosen_crystals_names]
            if len(related) > 0:
                self.CM.collectibles[index].place_weight = \
                    self.CM.collectibles[index].place_weight + 3

    def randomize_rewards(self):
        for _, value in enumerate(self.RM.rewards):
            to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                 monitor_counts=True)
            value.set_collectible(to_place)

    def randomize_shops(self):
        item_chance = .6
        magic_chance = .25
        crystal_chance = .15

        #print("difficulty: " + str(self.difficulty))
        
        for index, value in enumerate(self.SM.shops):
            #don't waste time on invalid shops
            if value.valid is False:
                continue
            #for the discount shops, put a single item in there
            if "discount" in value.readable_name:
                value.num_items = 1
                value.shop_type = "03"
                value.contents = [self.CM.get_random_collectible(random, respect_weight=True,
                                                                   monitor_counts=True,
                                                                   of_type=Item)] + [None] * 7
                #print(value.short_output)
                #input()
                continue
            
            if item_chance <= 0:
                item_chance = item_chance + .05
                magic_chance = magic_chance - .025
                crystal_chance = crystal_chance - .025
            elif magic_chance <= 0:
                item_chance = item_chance - .025
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance - .025
            elif crystal_chance <= 0:
                item_chance = item_chance - .025
                magic_chance = magic_chance - .025
                crystal_chance = crystal_chance + .05
            
            kind = random.choices(["item", "magic", "crystal"],
                                  [item_chance, magic_chance, crystal_chance])[0]

            #print("shop: " + value.readable_name)
            #print("new kind: " + kind)
            #print("starting quantity: " + str(value.num_items))

            item_mod = random.choices([  2,   1,  1,  0,  0,  0,   0,  0, -1,  -1,   -2],
                                     [.025, .05, .1, .2, .2, .25, .2, .2, .1, .05, .025])[0]
            value.num_items = value.num_items + item_mod
            if value.num_items > 8:
                value.num_items = 8
            if value.num_items < 1:
                value.num_items = 1

            #print("new quantity: " + str(value.num_items))

            contents = []
            
            if kind == "item":
                item_chance = item_chance - .1
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance + .05
                value.shop_type = "03" #shop type: item
                for i in range(0, value.num_items):
                    contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                   monitor_counts=True,
                                                                   of_type=Item))
                    
            elif kind == "magic":
                item_chance = item_chance + .05
                magic_chance = magic_chance - .1
                crystal_chance = crystal_chance + .05
                value.shop_type = "00" #shop type: magic
                try:
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Magic))
                except Exception as e:
                    contents = []
                    value.shop_type = "03"
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item))
                
            else:
                item_chance = item_chance + .05
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance - .1
                value.shop_type = "07" #shop type: crystal/ability
                try:
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=(Crystal, Ability)))
                except Exception as e:
                    contents = []
                    value.shop_type = "03"
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item))

            while(len(contents) < 8):
                contents.append(None)
                
            value.contents = contents

C = Conductor()
C.randomize_rewards()
C.randomize_shops()
#C.RM.print_spoiler()
#C.SM.print_spoiler()
#input()
#C.RM.print_patch()
#C.SM.print_patch()
