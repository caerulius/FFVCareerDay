# -*- coding: utf-8 -*-
import pandas as pd
import random
import operator

from collectible import *
from reward import *
from shop import *
from shop_price import *
from area import *

STARTING_CRYSTAL_ADDRESS = 'E79F00'

class Conductor():
    def __init__(self):
        self.CM = CollectibleManager()        #Set up collectibles. Includes Items, magic, crystals, and abilities
        self.RM = RewardManager(self.CM)      #Set up rewards. Includes chests and events
        self.SM = ShopManager(self.CM)        #Set up shops.
        self.SPM = ShopPriceManager(self.CM)  #Set up shop prices
        self.AM = AreaManager()               #Set up areas. Tule, The Void, etc
        
        self.difficulty = random.randint(1,10)
        crystals = self.get_crystals()
        self.starting_crystal = crystals[0]
        self.chosen_crystals = crystals[1]
        self.chosen_crystals_names = [x.reward_name for x in self.chosen_crystals]

        self.weigh_collectibles()

    def get_crystals(self):
        crystals = self.CM.get_all_of_type(Crystal)
        starting_crystal = random.choice(crystals)
        if starting_crystal.starting_spell_list == ['']:
            starting_crystal.starting_spell = "None"
            starting_crystal.starting_spell_id = "FF"
        else:
            index = random.randint(0, len(starting_crystal.starting_spell_list)-1)
            starting_crystal.starting_spell = starting_crystal.starting_spell_list[index]
            starting_crystal.starting_spell_id = starting_crystal.starting_spell_ids[index]
            
        crystals = [x for x in crystals if x != starting_crystal]

        crystal_count = random.randint(8, len(crystals))
        crystal_count = crystal_count - (self.difficulty // 3)
        if crystal_count < 4:
            crystal_count = 4

        chosen_crystals = random.sample(crystals, crystal_count)

        return (starting_crystal, chosen_crystals)

    def weigh_collectibles(self):
        for index, value in enumerate(self.CM.collectibles):
            related = [i for i in value.related_jobs if i in self.chosen_crystals_names]
            if len(related) > 0:
                increase_amount = 3
                if type(value) == Crystal:
                    increase_amount = 100000 #all but guarantee crystals appear
                if type(value) == Ability:
                    increase_amount = 10 #much more likely to find these abilities
                if type(value) == Magic:
                    increase_amount = 10 #much more likely to find these magics
                value.place_weight = value.place_weight + increase_amount

    def randomize_rewards(self):
        for _, value in enumerate(self.RM.rewards):
            to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                      monitor_counts=True)
            value.set_collectible(to_place)
            value.randomized = True
            self.AM.update_volume(value)

    def randomize_rewards_by_areas(self):
        while self.AM.any_areas_not_full():
            #print()
            #print("not full yet")
            area = self.AM.get_next_area()
            if area is None:
                break
            #print("next area to place in: " + area.area_name)
            possibles = [x for x in self.RM.rewards if x.area == area.area_name
                         and x.randomized == False]
            #print("# of reward spot choices: " + str(len(possibles)))

            next_reward = random.choice(possibles)
            #print("we chose: " + next_reward.description)
            to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                      monitor_counts=True)
            #print("the item to put there: " + to_place.reward_name)
            next_reward.set_collectible(to_place)
            next_reward.randomized = True
            self.AM.update_volume(next_reward)

        #print("going into cleanup")
        for i in self.AM.areas:
            #print("Checking area: " + i.area_name)
            if i.num_placed_checks < i.num_checks:
                #print("That area wasn't done")
                for j in [x for x in self.RM.rewards if x.area == i.area_name]:
                    #1 spot remaining is the same as greater than or equal to
                    #thus the - 1
                    if i.current_volume >= i.area_capacity - 1:
                        #print("Area had minimum capacity remaining")
                        to_place = self.CM.get_min_value_collectible(random)
                    else:
                        #print("Area had some bonus capacity")
                        remaining = self.capacity - self.current_volume
                        to_place = self.CM.get_of_value_or_lower(random,
                                                                 remaining)
                    j.set_collectible(to_place)
                    j.randomized = True
                    self.AM.update_volume(j)
            

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

    def write_starting_crystal_patch(self):
        output = "org $" + STARTING_CRYSTAL_ADDRESS
        output = output + "\ndb $" + self.starting_crystal.reward_id
        output = output + ", $" + self.starting_crystal.starting_weapon_id
        output = output + ", $" + self.starting_crystal.starting_spell_id
        print(output)

    def write_starting_crystal_spoiler(self):
        output = "Starting job: " + self.starting_crystal.reward_name
        output = output + "\nStarting weapon: " + self.starting_crystal.starting_weapon
        output = output + "\nStarting spell: " + self.starting_crystal.starting_spell
        print(output)

C = Conductor()
C.write_starting_crystal_spoiler()
C.write_starting_crystal_patch()
input()
C.AM.change_power_level(1.5)
C.randomize_rewards_by_areas()
print("Relevant Jobs: ")
print(C.chosen_crystals_names)
print("--------")
for i in sorted(C.AM.areas, key=lambda x: x.area_order):
    print("Area: " + i.area_name)
    for j in [x for x in C.RM.rewards if x.area == i.area_name]:
        print(j.short_output)
    print()
#C.RM.print_spoiler()
#C.randomize_shops()
#C.RM.print_spoiler()
#C.SM.print_spoiler()
#input()
#C.RM.print_patch()
#C.SM.print_patch()
