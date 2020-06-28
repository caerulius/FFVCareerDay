# -*- coding: utf-8 -*-
import pandas as pd
import random
import operator
import math, os
import logging

from data_manager import *
from collectible import *
from reward import *
from shop import *
from shop_price import *
from area import *
from enemy import *
from formation import *
from text_parser import *
from monster_in_a_box import *
from item_randomization import *
from ai_parser import *
from misc_features import *

logging.basicConfig(level=logging.ERROR, format="%(asctime)-15s %(message)s")

adjust_mult = 6
RANK_EXP_REWARD = {0:50*adjust_mult,
1:75*adjust_mult,
2:101*adjust_mult,
3:289*adjust_mult,
4:655*adjust_mult,
5:1265*adjust_mult,
6:2184*adjust_mult,
7:3480*adjust_mult,
8:5218*adjust_mult,
9:7466*adjust_mult,
10:10289*adjust_mult,
11:11894*adjust_mult,
12:12578*adjust_mult,
13:14021*adjust_mult,
14:15369*adjust_mult,
15:16981*adjust_mult,
16:18112*adjust_mult,
17:19207*adjust_mult}

def b2i(byte):
    return int(byte,base=16)
def i2b(integer):
    return hex(integer).replace("0x","").upper()

ITEM_TYPE = "40"

ITEM_SHOP_TYPE = "01"
MAGIC_SHOP_TYPE = "00"
CRYSTAL_SHOP_TYPE = "07"
VERSION = "FFV CareerDay v0.83"

class Conductor():
    def __init__(self, random_engine, conductor_config={}, config_file="local-config.ini"):
        self.RE = random_engine
        logging.error("Config passed in: %s" % (str(conductor_config)))
        # Set up conductor config
        self.configs = conductor_config # later so we don't manually define every key like below 
        if len(conductor_config) == 0: # if no config was passed in, default False
            self.fjf = False
            self.fjf_strict = False
            self.jobpalettes = False
            self.world_lock = 0
            self.tiering_config = True
            self.tiering_percentage = 90
            self.tiering_threshold = 10
            self.enforce_all_jobs = True
            self.battle_speed = 3
            self.red_color = 0
            self.blue_color = 0
            self.green_color = 0
            self.exp_mult = 4
#            self.progressive_bosses = True
            self.progressive_bosses = False
            self.place_all_rewards = True
            self.progressive_rewards = False
            self.item_randomization = False
            self.item_randomization_percent = 100
            self.setting_string = None
            self.learning_abilities = False
            self.default_abilities = False
            self.job_1 = "Random"
            self.job_2 = "Random"
            self.job_3 = "Random"
            self.job_4 = "Random"
            self.lenna_name = 'Lenna'
            self.galuf_name = 'Galuf'
            self.cara_name = 'Krile'
            self.faris_name = 'Faris'
            self.music_randomization = True
            self.free_shops = False
            self.seed = None
            self.remove_ned = True
            
            
        else:                           # else take the config passed from server.py and set variables
            self.fjf = self.translateBool(conductor_config['fjf'])
            self.fjf_strict = self.translateBool(conductor_config['fjf_strict'])
            self.jobpalettes = self.translateBool(conductor_config['jobpalettes'])
            self.world_lock = int(conductor_config['world_lock'])
            self.tiering_config = self.translateBool(conductor_config['tiering_config'])
            self.tiering_percentage = int(conductor_config['tiering_percentage'])
            self.tiering_threshold= int(conductor_config['tiering_threshold'])
            self.enforce_all_jobs = self.translateBool(conductor_config['enforce_all_jobs'])
#            self.progressive_bosses = self.translateBool(conductor_config['progressive_bosses'])
            self.progressive_bosses = False
            self.progressive_rewards = self.translateBool(conductor_config['progressive_rewards'])
            self.item_randomization = self.translateBool(conductor_config['item_randomization'])
            self.item_randomization_percent = int(conductor_config['item_randomization_percent'])
            self.default_abilities = self.translateBool(conductor_config['default_abilities'])
            self.learning_abilities = self.translateBool(conductor_config['learning_abilities'])
            self.setting_string = conductor_config['setting_string']
            self.job_1 = conductor_config['job_1']
            self.job_2 = conductor_config['job_2']
            self.job_3 = conductor_config['job_3']
            self.job_4 = conductor_config['job_4']
            self.lenna_name = conductor_config['lenna_name']
            self.galuf_name = conductor_config['galuf_name']
            self.cara_name = conductor_config['cara_name']
            self.faris_name = conductor_config['faris_name']
            self.music_randomization = self.translateBool(conductor_config['music_randomization'])
            self.free_shops = self.translateBool(conductor_config['free_shops'])
            self.remove_ned = self.translateBool(conductor_config['remove_ned'])

            self.seed = conductor_config['seed']
            
            #only allow progressive bosses if world_lock == 1
            if self.world_lock != 1:
                self.progressive_bosses = False
            
        # Some configs set up for the managers 
        collectible_config = {'place_all_rewards':self.translateBool(conductor_config['place_all_rewards']),
                              'progressive_rewards':self.translateBool(conductor_config['progressive_rewards']),
                              'item_randomization':self.translateBool(conductor_config['item_randomization'])
                              }
            
        logging.error("Config assigned: FJF: %s Palettes: %s World_lock: %s Tiering_config: %s Tiering_percentage: %s Tiering_threshold: %s" % (str(self.fjf),str(self.jobpalettes),str(self.world_lock),str(self.tiering_config),str(self.tiering_percentage),str(self.tiering_threshold)))

        # Set up randomizer config
        self.config = configparser.ConfigParser()
        self.config.read(config_file)
        self.conductor_config = self.config['CONDUCTOR']
        logging.error("Init data tables...")
        # Set up data tables
        self.DM = DataManager()                            #Data manager loads all the csv's into memory and sets them up for processing
        logging.error("Init CollectibleManager...")
        self.CM = CollectibleManager(self.DM, collectible_config)              #Set up collectibles (Includes Items, magic, crystals, and abilities)
        logging.error("Init Reward Manager...")
        self.RM = RewardManager(self.CM, self.DM)          #Set up rewards (Includes chests and events)
        logging.error("Init Shop Manager...")
        self.SM = ShopManager(self.CM, self.DM)            #Set up shops
        logging.error("Init ShopPrice Manager...")
        self.SPM = ShopPriceManager(self.CM, self.DM)      #Set up shop prices
        logging.error("Init Area Manager...")
        self.AM = AreaManager(self.DM, self.RE)            #Set up areas (Tule, The Void, etc)
        logging.error("Init Enemy Manager...")
        self.EM = EnemyManager(self.DM)                    #Set up enemies and bosses
        logging.error("Init Formation Manager...")
        self.FM = FormationManager(self.DM, self.EM)       #Set up battle formations
        logging.error("Init MonsterInABox Manager...")
        self.MIBM = MonsterInABoxManager(self.DM, self.RE) #Set up monsters in boxes
        logging.error("Init TextParser...")
        self.TP = TextParser()                             #Set up Text Parser Utility Object

        if self.item_randomization:
            logging.error("Init WeaponManager...")
            self.WM = WeaponManager(self.DM, self.RE, self.item_randomization_percent)      #Set up Weapon Manager
            # remove the following from the pool of weapons:
            for _ in range(3):
                self.CM.add_to_placement_history(self.CM.get_by_name("Brave Blade"),"No")
                self.CM.add_to_placement_history(self.CM.get_by_name("Chicken Knife"),"No")
                self.CM.add_to_placement_history(self.CM.get_by_name("Excailbur"),"No")
                self.CM.add_to_placement_history(self.CM.get_by_name("Soot"),"No")
        
        logging.error("Init misc setup...")
        # Misc setup 
        self.difficulty = self.RE.randint(1,10)
        crystals = self.get_crystals()
        self.starting_crystal = crystals[0]
        self.chosen_crystals = crystals[1]
        self.chosen_crystals_names = [x.reward_name for x in self.chosen_crystals]

        self.exdeath_patch = ""
        self.odin_location_fix_patch = ""
        self.superbosses_spoiler = ""
        self.code_of_the_void = ""
        logging.error("Init weigh collectibles...")
        self.weigh_collectibles()
        logging.error("Init finished.")

    def get_crystals(self):
        crystals = self.CM.get_all_of_type(Crystal)
        if self.fjf and self.job_1 != 'Random':
            logging.error("First job assigned %s" % self.job_1)
            starting_crystal = [i for i in crystals if i.collectible_name == self.job_1][0]
        elif self.fjf and self.job_1 == 'Random':
            logging.error("First job random, ensuring others chosen are not in pool")
#            breakpoint()
            temp_crystals = [i for i in crystals if i.collectible_name not in [self.job_2,self.job_3,self.job_4]]
            starting_crystal = self.RE.choice(temp_crystals)
            
        else:
            starting_crystal = self.RE.choice(crystals)
            
            # Reroll if Freelancer
            while starting_crystal.collectible_name == 'Freelancer' or starting_crystal.collectible_name == 'Mimic' or starting_crystal.collectible_name == 'Samurai':
                logging.error("Rerolling starting crystal...")
                starting_crystal = self.RE.choice(crystals)
            
        self.CM.add_to_placement_history(starting_crystal,"No") #don't allow the starting crystal to appear anywhere in game
        if starting_crystal.starting_spell_list == ['']:
            starting_crystal.starting_spell = "None"
            starting_crystal.starting_spell_id = "FF"
        else:
            index = self.RE.randint(0, len(starting_crystal.starting_spell_list)-1)
            starting_crystal.starting_spell = starting_crystal.starting_spell_list[index]
            starting_crystal.starting_spell_id = starting_crystal.starting_spell_ids[index]

        
            
        if self.fjf and any([self.job_2 != 'Random', self.job_3 != 'Random', self.job_4 != 'Random']):

            logging.error("Assigning 4 jobs manually: next jobs assigned %s, %s, %s" % (self.job_2,self.job_3,self.job_4))
            crystals = [x for x in crystals if x != starting_crystal and x.collectible_name != "Freelancer"]
            self.RE.shuffle(crystals)
#            breakpoint()
            
            
            if self.job_2 != "Random":
                try:
                    job_2 = [i for i in crystals if i.collectible_name == self.job_2][0]
                except:
                    logging.error("Failure on job_2, choosing random")
                    job_2 = crystals.pop()
                crystals = [i for i in crystals if i != job_2]
            else:
                job_2 = crystals.pop()
                logging.error("Job_2 assigned %s" % (job_2.collectible_name))



            if self.job_3 != "Random":
                try:
                    job_3 = [i for i in crystals if i.collectible_name == self.job_3][0]
                except:
                    logging.error("Failure on job_3, choosing random")
                    job_3 = crystals.pop()
                crystals = [i for i in crystals if i != job_3]
            else:
                job_3 = crystals.pop()
                logging.error("Job_3 assigned %s" % (job_3.collectible_name))
                
                
            if self.job_4 != "Random":
                try:
                    job_4 = [i for i in crystals if i.collectible_name == self.job_4][0]
                except:
                    logging.error("Failure on job_4, choosing random")
                    job_4 = crystals.pop()
            else:
                job_4 = crystals.pop()
                logging.error("Job_4 assigned %s" % (job_4.collectible_name))

            
            chosen_crystals = [job_2,job_3,job_4]
        else:
            crystals = [x for x in crystals if x != starting_crystal]
            if not self.fjf:
                crystal_count = self.RE.randint(int(self.conductor_config['STARTING_CRYSTAL_COUNT']), len(crystals))
                crystal_count = crystal_count - (self.difficulty // 3) #TODO: bring this to config
    
    
                if crystal_count < int(self.conductor_config['MINIMUM_ALLOWABLE_CRYSTAL_COUNT']):
                    crystal_count = int(self.conductor_config['MINIMUM_ALLOWABLE_CRYSTAL_COUNT'])
                    
                
            else:
                crystal_count = 3
            chosen_crystals = self.RE.sample(crystals, crystal_count)
            
            # Ensures for fjf that Freelancer is not included
            # Rerolls until true
            if self.fjf:
                while len([i for i in chosen_crystals if i.collectible_name == 'Freelancer']) >= 1:
                    chosen_crystals = self.RE.sample(crystals, crystal_count)
                    logging.error("Failed on pulling Freelancer, re-rolling crystals for FJ mode")
    #                logging.error("New: ",chosen_crystals[0].collectible_name,chosen_crystals[1].collectible_name,chosen_crystals[2].collectible_name)


        #this pretends to have placed every job, so it won't try to place any more going forward
        if self.fjf:
            for crystal in [x for x in self.CM.get_all_of_type(Crystal) if x != starting_crystal]:
                self.CM.add_to_placement_history(crystal,"No")
        if self.fjf_strict:
            # For Four Job mode, mark all Abilities as unobtainable 
            for ability in [x for x in self.CM.get_all_of_type(Ability)]:
                self.CM.add_to_placement_history(ability,"No")
                
                
        else:
            # this does something similar for regular seeds, where all non-chosen crystals are added to placement history
            # only if the setting for enforce all jobs is off
            if not self.enforce_all_jobs:
                for crystal in [x for x in self.CM.get_all_of_type(Crystal) if x not in chosen_crystals]:
                    self.CM.add_to_placement_history(crystal,"No")

            

        return (starting_crystal, chosen_crystals)


    def weigh_collectibles(self):
        for index, value in enumerate(self.CM.collectibles):
            related = [i for i in value.related_jobs if i in self.chosen_crystals_names]
            if len(related) > 0:
                increase_amount = int(self.conductor_config['ITEM_RELEVANCE_WEIGHT_MODIFIER'])
                if type(value) == Crystal:
                    increase_amount = int(self.conductor_config['CRYSTAL_RELEVANCE_WEIGHT_MODIFIER']) #all but guarantee crystals appear
                if type(value) == Ability:
                    increase_amount = int(self.conductor_config['ABILITY_RELEVANCE_WEIGHT_MODIFIER'])  #much more likely to find these abilities
                if type(value) == Magic:
                    increase_amount = int(self.conductor_config['MAGIC_RELEVANCE_WEIGHT_MODIFIER'])  #much more likely to find these magics
                value.place_weight = value.place_weight + increase_amount

#    def randomize_rewards(self):
#        for _, value in enumerate(self.RM.rewards):
#            to_place = self.CM.get_random_collectible(self.RE, respect_weight=True,
#                                                      monitor_counts=True)
#            value.set_collectible(to_place)
#            value.randomized = True
#            self.AM.update_volume(value)

    def randomize_key_items(self):
        
        # This conditional code is defining which column in rewards.csv to refer to for item placement 
        if self.world_lock == 0:  # 0 = base case, no worlds locked, all items placed anywhere
            set_key_item_level = 'required_key_items'
        elif self.world_lock == 1: # Lock world 1 behind Adamantite (and world 2 behind Anti-Barrier & Bracelet) 
            set_key_item_level = 'required_key_items_lock1'
        elif self.world_lock == 2: # Lock world 2 behind Anti-Barrier & Bracelet
            set_key_item_level = 'required_key_items_lock2'
        else:
            logging.error("Error on world_lock argument. Should be an int among 0, 1 and 2 only.")
        num_placed_key_items = 0
        exdeath_list = []

        for _ in range(0, int(self.conductor_config['NUM_KEY_ITEMS'])):
            global next_key_reward
            global curr_node
            global curr_key_item
            global forbidden_items
            global next_key_reward_locs
            next_key_reward = self.RE.choice([x for x in self.RM.get_rewards_by_style('key') if x.randomized == False])
            next_key_reward_locs = next_key_reward.__dict__.get(set_key_item_level)
            if next_key_reward_locs != next_key_reward_locs: # stupid fix for python returning NaN instead of None
                next_key_reward_locs = None
            
            if next_key_reward_locs == None:
                next_key_item = self.CM.get_random_collectible(self.RE, monitor_counts=True,next_reward = next_key_reward,tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold, of_type=KeyItem)
                next_key_reward.set_collectible(next_key_item)
                self.CM.update_placement_rewards(next_key_item, next_key_reward)
                next_key_reward.randomized = True
                num_placed_key_items = num_placed_key_items + 1
            else:
                forbidden_items = []
                nodes_to_visit = []

                nodes_to_visit.extend(next_key_reward_locs) #this gives us a copy of the list so we don't overwrite anything

                #this will construct us a list of items we're not allowed to place here
                while len(nodes_to_visit) > 0:
                        curr_node = nodes_to_visit.pop()
                        curr_key_item = self.CM.get_by_name(curr_node)
                        forbidden_items.append(curr_key_item)
                        if len(curr_key_item.required_by_placement) != 0:
                            for i in curr_key_item.required_by_placement:
                                if i not in forbidden_items and i not in nodes_to_visit:
                                    nodes_to_visit.append(i)

                possible_key_items = [x for x in self.CM.get_all_of_type_respect_counts(KeyItem) if x not in forbidden_items]

                if len(possible_key_items) == 0:
                    #logging.error("failed to place a key item here")
                    continue
                else:
                    next_key_item = self.RE.choice(possible_key_items)
                    next_key_reward.set_collectible(next_key_item)
                    self.CM.update_placement_rewards(next_key_item, next_key_reward)
                    if "Tablet" not in next_key_item.reward_name:
                        exdeath_list.append(next_key_reward)
                    next_key_item.required_by_placement.extend(next_key_reward_locs)
                    self.CM.add_to_placement_history(next_key_item,"No") #add this manually, usually get_random_collectible handles it
                    next_key_reward.randomized = True
                    num_placed_key_items = num_placed_key_items + 1

        for key_item_reward in [x for x in self.RM.get_rewards_by_style('key') if x.randomized == False]:
            key_item_collectible = self.CM.get_of_value_or_lower(self.RE, value=4)
            key_item_reward.set_collectible(key_item_collectible)
            key_item_reward.randomized = True
            self.CM.update_placement_rewards(key_item_collectible, key_item_reward)

        exdeath_rewards = {}
        for i in self.RE.sample(exdeath_list, 3):
            exdeath_rewards[i.collectible.reward_name] = i.exdeath_address

        self.exdeath_patch = self.TP.run_exdeath_rewards(exdeath_rewards)

        return num_placed_key_items

    def randomize_rewards_by_areas(self):
        #this is just manually doing the shinryuu chest first.
        #we set all the info as if it had been randomized normally
        #and it's skipped during the main process
        if self.conductor_config.getboolean('SHINRYUU_VANILLA'):
            shinryuu_address = self.conductor_config['SHINRYUU_ADDRESS']
            shinryuu_chest = self.RM.get_reward_by_address(shinryuu_address)

            mib = self.MIBM.get_mib_by_address(shinryuu_address)

            to_place = self.CM.get_random_collectible(self.RE, respect_weight=True,next_reward = shinryuu_chest,of_type=Item, monitor_counts=True,tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
            shinryuu_chest.set_collectible(to_place)
            self.CM.update_placement_rewards(to_place, shinryuu_chest)
            shinryuu_chest.mib_type = mib.monster_chest_data
            shinryuu_chest.randomized = True
            mib.processed = True
            self.AM.update_volume(shinryuu_chest)

                
                
        while self.AM.any_areas_not_full():
            #logging.error()
            #logging.error("Area rewards: not full yet")
            # area = self.AM.get_emptiest_area()
            area = self.AM.get_random_area()

            if area is None:
                break
            #logging.error("Area rewards: Area: " + area.area_name)
            possibles = [x for x in self.RM.rewards if x.area == area.area_name
                         and x.randomized == False and x.reward_style != 'key']
            #logging.error("Area rewards: # of reward spot choices: " + str(len(possibles)))

            next_reward = self.RE.choice(possibles)
            
            if next_reward.randomized:
                logging.error("%s was already randomzed...?" % (next_reward.description))

            #logging.error("Area rewards: checking mib status now")
                
            mib = self.MIBM.get_mib_for_area(area)
            #logging.error("Area rewards: next reward style: " + next_reward.reward_style)

            if mib is not None and next_reward.reward_style == "chest": #only mibs in chests
                #logging.error("Area rewards: doing the mib stuff")
                to_place = self.CM.get_random_collectible(self.RE,reward_loc_tier=next_reward.tier,next_reward=next_reward, respect_weight=True, of_type=Item, monitor_counts=True, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold, force_tier = 9) #only items in mibs
                next_reward.mib_type = mib.monster_chest_data
                mib.processed = True
                #logging.error(mib.processed)
                #logging.error(next_reward.mib_type)
                #logging.error("Area rewards: \n\n\n")
            else:
                #logging.error("Area rewards: Location to place: " + next_reward.description)
                
                # Handle some percentages 
                
#                if next_reward.force_type == None:
#                    # If force_type is blank, we can start toying with percentages 
#                    random_int = self.RE.randint(1,100)
#                    if random_int > 1:
#                        next_reward.force_type = Ability
#                    else:
#                        next_reward.force_type = Item                      
                    
                
                to_place = self.CM.get_random_collectible(self.RE,respect_weight=True, reward_loc_tier=next_reward.tier, of_type=next_reward.force_type,
                                                          monitor_counts=True, gil_allowed=next_reward.reward_style == "chest",next_reward=next_reward, 
                                                          tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                
            try:
                if "Phoenix" in next_reward.area:
                    self.CM.remove_from_placement_history(to_place)
                    to_place = [x for x in self.CM.get_all_of_type(Item) if x.collectible_name == "Elixir"][0]
            except Exception as e:
                logging.error(e)
                
            #logging.error("Area rewards: Reward being placed: " + to_place.reward_name)
            next_reward.set_collectible(to_place)
            next_reward.randomized = True
            self.AM.update_volume(next_reward)
            self.CM.update_placement_rewards(to_place, next_reward)

        #logging.error("going into cleanup")
        
        non_randomized_list = [i for i in self.RM.rewards if not i.randomized]
        # logging.error("Cleanup non-randomized rewards %s" % ([i.description for i in non_randomized_list]))
        
        for next_reward in non_randomized_list:
            to_place = self.CM.get_random_collectible(self.RE,respect_weight=True, reward_loc_tier=next_reward.tier, of_type=next_reward.force_type,
                                                      monitor_counts=True, gil_allowed=next_reward.reward_style == "chest",next_reward=next_reward, 
                                                      tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
            next_reward.set_collectible(to_place)
            next_reward.randomized = True
            self.AM.update_volume(next_reward)
            self.CM.update_placement_rewards(to_place, next_reward)
        
        for i in self.AM.areas:
            # logging.error("Cleanup, checking area: " + i.area_name)
            if i.num_placed_checks < i.num_checks:
                logging.error("Cleanup, area %s not finished, %s placed_checks out of %s checks " % (i.area_name,i.num_placed_checks, i.num_checks))
                for j in [x for x in self.RM.rewards if x.area == i.area_name and x.reward_style != 'key']:
                    #1 spot remaining is the same as greater than or equal to
                    #thus the - 1
                    if i.current_volume >= i.area_capacity - 1:
                        ##logging.error("Area had minimum capacity remaining")
                        to_place = self.CM.get_min_value_collectible(self.RE)
                    else:
                        ##logging.error("Area had some bonus capacity")
                        remaining = self.capacity - self.current_volume
                        to_place = self.CM.get_of_value_or_lower(random,
                                                                 remaining)
                    j.set_collectible(to_place)
                    j.randomized = True
                    self.AM.update_volume(j)
                    self.CM.update_placement_rewards(to_place, next_reward)
            

    def randomize_shops(self):
        required_items = {i:0 for i in self.config['REQUIREDITEMS']['item_ids'].split('\n')}

        if self.fjf_strict:
            item_chance = float(self.conductor_config['ITEM_SHOP_CHANCE'])
            magic_chance = float(self.conductor_config['MAGIC_SHOP_CHANCE'])
            crystal_chance = round(float(self.conductor_config['CRYSTAL_SHOP_CHANCE']) / 2)
            item_chance = item_chance + crystal_chance
            magic_chance = magic_chance + crystal_chance
            crystal_chance = 0
        else:
            item_chance = float(self.conductor_config['ITEM_SHOP_CHANCE'])
            magic_chance = float(self.conductor_config['MAGIC_SHOP_CHANCE'])
            crystal_chance = float(self.conductor_config['CRYSTAL_SHOP_CHANCE'])            

        #logging.error("difficulty: " + str(self.difficulty))
        
        for index, value in enumerate(self.RE.sample(self.SM.shops,len(self.SM.shops))):
#            if value.readable_name == 'Mirage Armor':
#                breakpoint()
            #don't waste time on invalid shops
            if value.valid is False:
                continue

            #for the discount shops, put a single item in there
            if "discount" in value.readable_name:
                value.num_items = 1
                value.shop_type = ITEM_SHOP_TYPE
                value.contents = [self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                   monitor_counts=True, next_reward=next_reward,
                                                                   of_type=Item, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)] + [None] * 7
                continue
            
            #manage the probability of the shops
            #each time a shop of one kind is placed
            #each of the other kinds of shops gets more likely
            if self.fjf_strict:
                if item_chance <= 0:
                    item_chance = item_chance + .05
                    magic_chance = magic_chance - .05
                elif magic_chance <= 0:
                    item_chance = item_chance - .05
                    magic_chance = magic_chance + .05
                kind = self.RE.choices(["item", "magic"],
                                      [item_chance, magic_chance])[0]
            else:    
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
            
                kind = self.RE.choices(["item", "magic", "crystal"],
                                      [item_chance, magic_chance, crystal_chance])[0]

            item_mod = self.RE.choices([  2,  1,  0, -1,  -2],
                                      [.05, .1, .7, .1, .05])[0]
            value.num_items = value.num_items + item_mod
            if value.num_items > 8:
                value.num_items = 8
            if value.num_items < 1:
                value.num_items = 1

            contents = []
            
            if kind == "item":
                if value.num_items < 4:
                    value.num_items = 4
                if not self.fjf_strict:
                    item_chance = item_chance - .1
                    magic_chance = magic_chance + .05
                    crystal_chance = crystal_chance + .05
                else:
                    item_chance = item_chance - .1
                    magic_chance = magic_chance + .1                    
                value.shop_type = ITEM_SHOP_TYPE
                for i in range(0, value.num_items):
                    while True:
                        item_to_place = self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                       monitor_counts=True, next_reward = value,
                                                                       of_type=Item, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                        if item_to_place not in contents:
                            break

                    if item_to_place.reward_id in required_items.keys():
                        required_items[item_to_place.reward_id] = required_items[item_to_place.reward_id] + 1
                    contents.append(item_to_place)
                    value.update_volume(item_to_place.tier)
                    self.CM.update_placement_rewards(item_to_place, value)
                    
            elif kind == "magic":
                if value.num_items > 5:
                    value.num_items = 5
                if not self.fjf_strict:
                    item_chance = item_chance + .05
                    magic_chance = magic_chance - .1
                    crystal_chance = crystal_chance + .05
                else:
                    item_chance = item_chance + .1
                    magic_chance = magic_chance - .1                    
                value.shop_type = MAGIC_SHOP_TYPE
                try:
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                           monitor_counts=True,next_reward = value,
                                                                           of_type=Magic, disable_zerozero=True, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        value.update_volume(item_to_place.tier)
                        self.CM.update_placement_rewards(item_to_place, value)
                except Exception as e:
                    contents = []
                    value.shop_type = ITEM_SHOP_TYPE
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                           monitor_counts=True,next_reward = value,
                                                                           of_type=Item, disable_zerozero=True, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        value.update_volume(item_to_place.tier)      
                        self.CM.update_placement_rewards(item_to_place, value)
            else:
                if value.num_items > 4:
                    value.num_items = 4
                if not self.fjf_strict:
                    item_chance = item_chance + .05
                    magic_chance = magic_chance + .05
                    crystal_chance = crystal_chance - .1
                else:
                    pass # this doesn't matter, shouldn't be placing this type on fjf_strict = True
                value.shop_type = CRYSTAL_SHOP_TYPE #shop type: crystal/ability
                try:
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                           monitor_counts=True,next_reward = value,
                                                                           of_type=(Crystal, Ability), tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        value.update_volume(item_to_place.tier)
                        self.CM.update_placement_rewards(item_to_place, value)
                except Exception as e:
                    contents = []
                    value.shop_type = ITEM_SHOP_TYPE
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True, reward_loc_tier = value.tier, 
                                                                           monitor_counts=True,next_reward = value,
                                                                           of_type=Item, disable_zerozero=True, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        value.update_volume(item_to_place.tier)
                        self.CM.update_placement_rewards(item_to_place, value)
            while(len(contents) < 8):
                contents.append(None)
                
            value.contents = contents

            
        '''
        for shop in [x for x in self.SM.shops if x.valid]:
            if shop.num_items == 0:
                logging.error(shop.readable_name)
                logging.error(shop.shop_type)
                logging.error(shop.valid)
        '''

        #manage the must place items here
        for index, value in required_items.items():
            chosen_shop = None
            chosen_slot = None
            while value < 3:
                #logging.error("guaranteeing " + index)
                item_to_place = self.CM.get_by_id_and_type(index, ITEM_TYPE)
                #logging.error(item_to_place.reward_name)
                # First attempt to place in tier 1 shop locations (world 1)
                item_shops = [x for x in self.SM.shops if x.shop_type == ITEM_SHOP_TYPE and x.valid and x.num_items > 0 and x.num_items < 8 and (x.tier == '1' or x.tier == 1)]
                if item_shops == []:
                    # if not, use normal method 
                    item_shops = [x for x in self.SM.shops if x.shop_type == ITEM_SHOP_TYPE and x.valid and x.num_items > 0 and x.num_items < 8]
                #logging.error("number of item shops: " + str(len(item_shops)))
                try:
                    chosen_shop = item_shops[self.RE.choice(range(0, len(item_shops)))]
                    chosen_shop.contents[slot] = item_to_place
                    chosen_shop.num_items = chosen_shop.num_items + 1
                except:
                    try:
                        #logging.error("Error on placing %s in shop, skipping..." % (item_to_place.description_name))
                        pass
                    except:
                        #logging.error("Error on placing %s in shop, skipping..." % (item_to_place))
                        pass
                slot = chosen_shop.num_items #because of 0 indexing, we want this, not this + 1
                #logging.error("chosen slot index: " + str(chosen_slot))

                value = value + 1
        
        # finally dedupe shops
        global shops
        shops = self.SM.shops
        

        
        for index, shop in enumerate(self.SM.shops):
            shop.sort_contents()
            contents = shop.contents
            name_list = []
            for i in contents:
                if i is not None:
                    name_list.append(i)
            if len(set(name_list)) < len(name_list):
                # if this condition, we've got duplicates
                new_contents = []
                for i in contents:
                    if i not in new_contents:
                        new_contents.append(i)
                while(len(new_contents) < 8):
                    new_contents.append(None)
                shop.contents = new_contents
                # breakpoint()
                
            # Finally check each entry for None, if they appear, pop, then re-add
            
            new_contents = [i for i in shop.contents if i is not None]
            while(len(new_contents) < 8):
                new_contents.append(None)
            shop.contents = new_contents 
    def decide_progressive_bosses(self):
        logging.error("Progressive bosses flag enabled. Deciding progressive bosses")
        # galura
        for x in self.RM.get_rewards_by_style("key"):
            if int(x.world) == 3: # if world 3, discard
                pass
            else:
                try:
                    # galura's required key items
                    req = x.required_key_items_lock2
                    # where galura's required key items are (where the walse tower key is)
                    keys = [self.CM.get_by_name(x) for x in req]
                    req_loc = []
                    
                    
#                    breakpoint()
                    for reward in self.RM.get_rewards_by_style("key"):
                        if reward.collectible in keys:
                            req_loc.append(reward)
                            # go 1 level down past this
                            keys2 = [self.CM.get_by_name(x) for x in reward.required_key_items_lock2]
                            for reward2 in self.RM.get_rewards_by_style("key"):
                                if reward2.collectible in keys2:
                                    req_loc.append(reward2)
                # odin location has walse tower key
                # now, max world will be an attribute of the original reward object
                
                    max_requirements_world = max([x.world for x in req_loc])
                    world_delta = (int(max_requirements_world) - int(x.world))
                    if world_delta > 0:
                        x.max_world_requirements_flag = True
                        x.world_delta = world_delta
                        logging.error("Progressive boss adjustment for location reward %s, delta %s" % (x.description,world_delta))
                except Exception as e:
                    pass
#                    print("Error %s" % e)
            

    def randomize_bosses(self):
        # First, if the setting for progressive bosses is enabled,process
        if self.progressive_bosses: #progressive bosses
            self.decide_progressive_bosses()          

        list_of_randomized_enemies = []

        # This has to be done twice in order for the enemy classes to NOT be shared objects
        # Very important or else swapping HP becomes very muddy and original hp values on enemies are not preserved
                                    
        original_boss_list = []
        if self.remove_ned:
            formation_list = [x for x in self.FM.formations if x.randomized_boss == 'y' or x.randomized_boss == 'ned']
        else:
            formation_list = [x for x in self.FM.formations if x.randomized_boss == 'y']
        for formation in formation_list:
        #for formation in df_boss_formations['event_id'].unique():
            original_boss_list.append(Formation(formation.idx, self.DM, self.EM, original_flag=True))

        # Very explicit definitions
        # Randomized boss list will be updated
        # Original boss list will be referenced for what boss location & stats to change to, 
                # and the list will be reduced tox 0 as random formations are assigned
                
       
        # Shuffle original boss list
        self.RE.shuffle(original_boss_list)
        
        # Process: Draw randomly from original formation list (using pop method) and update randomized boss formations
        # Take original list's event_formation_reference and write to randomized event_lookup_loc1 and event_lookup_loc2
        #         (This will assign the randomized formation to the original's location, so Karlabos at Sol Cannon)
        
        
        
        # Create patch file for custom AI and clear out any previous 
        #with open('../../projects/test_asm/boss_hp_ai.asm','w') as file:
        #    file.write('hirom\n')
        banned_at_odin = self.config['BANNEDATODIN']['boss_names'].split('\n')
    

        for random_boss in formation_list:
            # First pick a random original boss
            original_boss = original_boss_list.pop()
#            if "Goblin" in original_boss.enemy_list:
#                breakpoint()
            
            #this is specifically an unworkable situation
            #this will just cycle gogo/stalker to the end and get a new boss
            while (original_boss.enemy_1_name == "Odin" and random_boss.enemy_1_name in banned_at_odin):
                original_boss_list = [original_boss] + original_boss_list
                original_boss = original_boss_list.pop()
            if original_boss.enemy_1_name == "Odin":               
                # all we need to do is take the current final flag of random boss
                # which corresponds to in battle flags associated with that formation
                # and turn off bit 01 which corresponds to the white flash 

                x = random_boss.formationid_16
                x = int(x,base=16)
                x = bin(x).replace("0b","")
                x = x.zfill(8)
                x = x[0:7]
                x = hex(int(x + '0',2))
                x = x.replace("0x","").zfill(2)
                self.odin_location_fix_patch = '\n; Odin location animation fix (resolve softlocks)\norg $'+random_boss.offset[:-1]+"F\ndb $"+x+"\n"

            # Assign random boss location to the original spots (overwriting it)
            # This is grabbing event_lookuploc1 / loc2 from the original
            # And overwriting the new random boss' 
            # For example, we're updating Byblos to be at Adamantium 
            # We grab Adamantium's two event_lookup (so, when you're in Adamantium's area, 
            # whatever is being referred to in that event to call the battle)
            # And update Byblos' event_lookups to reflect this
            # Then for asar output, we take the code for running Byblos battle and write to it where Adamantium's was 
            # So then when you walk into Adamantium area, you'll fight Byblos

            new_lookup1 = original_boss.event_lookup_loc1
            new_lookup2 = original_boss.event_lookup_loc2
            
            random_boss.event_lookup_loc1 = new_lookup1
            random_boss.event_lookup_loc2 = new_lookup2
            
            
            # Find original locations' ID and assign to a new variable
            original_formation_id = original_boss.event_id
            random_boss.new_event_id = original_formation_id 

            # Document original rank
            prev_rank = random_boss.boss_rank
            # Find new rank & assign
            
            new_rank = original_boss.boss_rank
            
            progressive_flag = False            
            if self.progressive_bosses:
                # if enabled, change the new_rank 
                
                # first get the related reward
                try:
                    related_reward = [x for x in self.RM.rewards if int(x.idx) == int(original_boss.related_boss_reward)][0]
                    if related_reward.max_world_requirements_flag == True:
#                        print(related_reward.description,related_reward.max_world_requirements_flag)
                        new_rank_og = new_rank
                        new_rank = min(int(new_rank) + (int(related_reward.world_delta * 10)),40)
                        progressive_flag = True
#                        logging.info("Original boss %s Random boss %s new_rank_og %s new_rank %s" % (original_boss.enemy_list,random_boss.enemy_list,new_rank_og,new_rank))
                except Exception as e:
#                    print("Error %s " % e)
                    pass
                
                
#            random_boss.boss_rank = new_rank
            rank_delta = round((int(new_rank) - int(prev_rank))/3)
            random_boss.rank_delta = rank_delta

            # Document random_boss' previous HP
            prev_hp = random_boss.enemy_classes[0].num_hp
        
            # Find original boss's first enemy HP
            new_hp = int(original_boss.enemy_classes[0].num_hp)
            if progressive_flag:
                if int(related_reward.world_delta) == 2 or (int(related_reward.world_delta)==1 and int(related_reward.world)==2):
                    new_hp = 30000
                elif int(related_reward.world_delta) == 1:        
                    new_hp = 15000
        
            # Update random boss hp on FIRST enemy only right now
            random_boss.enemy_classes[0].num_hp = new_hp
            random_boss.enemy_classes[0].update_val('hp', new_hp)
            
        

            # Then after the first HP is assigned and the new boss formation takes place in the right locations,
            # Enforce some standardization for specific boss fights. This is hardcoded for good reason as many fights
            #     specifically need individual treatment
            # For example, 2x Gargoyle should share the same HP
            # But HiryuuFlower & HiryuuPlant should NOT share HP and should be drastically different
            
            # Byblos (rank 3) to Twin Tania (rank 10) have somewhat similar move sets (physical attacks, area all damage)
                # The rough multplier here is about 3x the stats for phys power/def and magic power/def
                
            # Same general ratio with Galura (rank 2) to Minotauros (rank 8), ratio is about 4x for phys power
                
            # For this basic reasoning, initial rank movement will yield a bonus of 25% increase/decrease per rank movement, which
                # is initially conservative. Stronger enemies will be strong, and weaker enemies will be weaker
                # but for boss shuffle, this might be okay/good
            # This only applies to phys power/def and magic power/def
                # DOES NOT apply to speed, phys multiplier, or phys/magic evade
                
                
            # The process will be:
            
            # 1) Take the original formation and assess its qualities, and update the first enemy of the newly randomized formation
            # For example, if Karlabos replaces Guardians, Guardians have 7k HP each but there's four of them
            # So Karlabos conceptually should have a boost to HP, and not get 'penalized' for 1/4th HP because there's only 1 of him
            
            # 2) Assign HP/power to all remaning enemies and re-adjust main enemy's HP if necessary, based on the RANDOM FORMATION'S QUALITIES
            # For example, if Gargoyles replaces Guardians, the first Gargoyle would get 4x HP. 
            # Then, BASED ON THE RANDOMIZED FORMATIONS' QUALITIES (Gargoyles only here), split hp among the two enemies
            # Something like HiryuuFlower will have a completely different method
            
            

        
            # STEP 1)
            # Use the event_id to identify what type of encounter it is, with specifics per encounter
            
            # CLAUSE FOR ENEMIES WITH 2x BOSS AS SEPARATE ENEMIES
            # GARGOYLES, GILGA/ENKIDOU, 
            if original_formation_id in ['2D','1F','00']:
                new_hp = new_hp * 2
                
            # CLAUSE FOR ENEMIES WITH 3x BOSS AS SEPARATE ENEMIES
            # TRITON/PHOBOS/NEREGEID
            if original_formation_id in ['32']:
                new_hp = new_hp * 3
                
            # CLAUSE FOR ENEMIES WITH 4x BOSS AS SEPARATE ENEMIES
            # GUARDIANS
            if original_formation_id in ['21']:
                new_hp = new_hp * 4
                
            # CLAUSE FOR ENEMIES WITH 5x BOSS AS SEPARATE ENEMIES
            # ARCHEOAVIS
            if original_formation_id in ['0F']:
                new_hp = new_hp * 5
                
            # CLAUSE FOR SOL CANNON
            if original_formation_id in ['0E']:
                new_hp = 12500
                
            # CLAUSE FOR NECROPHOBIA:
            if original_formation_id in ['4B']:
                # This takes Necrofobia's HP and applies a 1.5x bonus. Barriers have 8k, Necrofobia has 40k. Results in 60k, normalized in STEP 2 later
                 new_hp = new_hp * 2
                 
            
            # No clause for:
                # Sandworm - it technically grabs the Hole's HP, but its 3k 
                # Sergeant - grabs Sergeant's HP, which is shared with IronClaw
                # Shiva - Shiva's HP is enough
                # All enemies with shared hp (e.g., LiquiFlame, WingRaptor, Carbunkle) - Grab the first HP only
            
            if new_hp > 65535:
                new_hp = 65535
            
            # STEP 2)
            # Based on the NEWLY RANDOMIZED FORMATION QUALITY, update all formation enemies 
            
            # CLAUSE FOR FORMATIONS WITH SHARED HP, ONLY ONE ENEMY ACTIVE ON THE FIELD
            # WINGRAPTOR, SIREN, LIQUIFLAME, MELUSINE, CARBUNKLE, GILGAMESH, TWINTANIA, STALKER, SANDWORM
            if random_boss.event_id in ['01','03','07','2B','22','23','4A','2E','0A']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = new_hp
            
            # CLAUSE FOR FORMATIONS WITH 2x SAME/SIMILAR BOSS:
            # GARGOYLES, GILGA/ENKIDOU, FORZA/MAGISA
            elif random_boss.event_id in ['2D','1F','04']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = round(new_hp / 2)
                    
                    
            # CLAUSE FOR FORMATIONS WITH 3x SAME/SIMILAR BOSS:
            # TRITON/PHOBOS/NEREGEID
            elif random_boss.event_id in ['32']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = round(new_hp / 3)
                    
                   
            # CLAUSE FOR FORMATIONS WITH 6x SAME/SIMILAR BOSS:
            # PUROBUROS
            elif random_boss.event_id in ['12']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = round(new_hp / 6)
                    
            # CLAUSE FOR FORMATIONS WITH 4x SAME/SIMILAR BOSS:
            # GUARDIANS
            elif random_boss.event_id in ['21']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = round(new_hp / 4)
        
            # CLAUSE FOR FORMATIONS WITH 5x SAME/SIMILAR BOSS:
            # ARCHEOAVIS
            elif random_boss.event_id in ['0F']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_hp = round(new_hp / 5)
                    
            # CLAUSE FOR SERGEANT/KARNAKS
            elif random_boss.event_id in ['08']:
                # Apply HP to IronClaw
                random_boss.enemy_classes[4].num_hp = new_hp
                # Apply 30% to Karnaks
                random_boss.enemy_classes[1].num_hp = round(new_hp * .3)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .3)            
                random_boss.enemy_classes[3].num_hp = round(new_hp * .3)
                
            # CLAUSE FOR SHIVA/COMMANDER
            elif random_boss.event_id in ['05']:
                # Apply 40% to Commanders
                random_boss.enemy_classes[1].num_hp = round(new_hp * .4)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .4)            
                random_boss.enemy_classes[3].num_hp = round(new_hp * .4)
                
            # CLAUSE FOR SOLCANNON
            elif random_boss.event_id in ['0E']:
                # Add 10k HP to pool, apply 50% to Launchers
                new_hp = min(new_hp + 10000,65535)
                random_boss.enemy_classes[0].num_hp = new_hp
                random_boss.enemy_classes[1].num_hp = round(new_hp * .1)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .1)
                
                
            # CLAUSE FOR GOLEM
            elif random_boss.event_id in ['3E']:
                # Apply 50% to other enemies
                random_boss.enemy_classes[1].num_hp = round(new_hp * .5)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .5)
                
            # CLAUSE FOR HIRYUUPLANT
            elif random_boss.event_id in ['1E']:
                # Apply 5% to Flowers
                random_boss.enemy_classes[1].num_hp = round(new_hp * .05)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .05)
                random_boss.enemy_classes[3].num_hp = round(new_hp * .05)
                random_boss.enemy_classes[4].num_hp = round(new_hp * .05)
                random_boss.enemy_classes[5].num_hp = round(new_hp * .05)
                
            # CLAUSE FOR NECROPHOBIA:
            elif random_boss.event_id in ['4B']:
                # Apply 20% to Barriers
                random_boss.enemy_classes[1].num_hp = round(new_hp * .2)
                random_boss.enemy_classes[2].num_hp = round(new_hp * .2)
                random_boss.enemy_classes[3].num_hp = round(new_hp * .2)
                random_boss.enemy_classes[4].num_hp = round(new_hp * .2)
            
            else:
                random_boss.enemy_classes[0].num_hp = new_hp


            # Get base exp
            base_exp = RANK_EXP_REWARD[round(int(new_rank)/3)]
            
            # Adjust base exp based on multiplier
            # This is INVERTED multiplier
            # If you fight a hard boss at an easy location, the multiplier will be less than 1 
            # To reduce its stats
            # However, you want to still reward the player MORE because it is still a hard boss
            # So invert the multiplier
    
            # First use 25% multiplier over 100% of the original (the +1 at the end)
            rank_mult = (abs(rank_delta) * float(self.conductor_config['STAT_MULTIPLIER'])) + 1 
            
            new_exp = base_exp * 1/rank_mult
            # Round for nice number, merely for presentation
            new_exp = int(round(new_exp,-2))
            
            # First clear out exp on all enemies:
            
            for enemy in random_boss.enemy_classes:
                enemy.num_exp = 0
                
                
            # Provide cap for exp
        
            if new_exp > 65535:
                new_exp = 65535
                
            # Apply exp to the FIRST enemy only. The rest of the enemies are default 0
            # Need to apply same logic as before for specific case handling - enemies with multiple
            # forms need to be shared on exp
            # And formations with multiple enemies of the SAME exact kind need to 
            # Split exp
            
            # CLAUSE FOR FORMATIONS WITH SHARED HP, ONLY ONE ENEMY ACTIVE ON THE FIELD
            # WINGRAPTOR, SIREN, LIQUIFLAME, ARCHEOAVIS, MELUSINE, CARBUNKLE, GILGAMESH, TWINTANIA, STALKER
            if random_boss.event_id in ['01','03','07','0F','2B','22','23','4A','2E']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_exp = new_exp
            # CLAUSE FOR FORMATIONS WITH 2x SAME/SIMILAR BOSS:
            # GARGOYLES, GILGA/ENKIDOU, FORZA/MAGISA
            elif random_boss.event_id in ['2D','1F','04']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_exp = round(new_exp / 2)
                    
            # CLAUSE FOR FORMATIONS WITH 3x SAME/SIMILAR BOSS:
            # TRITON/PHOBOS/NEREGEID
            elif random_boss.event_id in ['32']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_exp = round(new_exp/ 3)
                    
                   
            # CLAUSE FOR FORMATIONS WITH 6x SAME/SIMILAR BOSS:
            # PUROBUROS
            elif random_boss.event_id in ['12']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_exp = round(new_exp / 6)
                    
            # CLAUSE FOR FORMATIONS WITH 4x SAME/SIMILAR BOSS:
            # GUARDIANS
            elif random_boss.event_id in ['21']:
                for enemy in random_boss.enemy_classes:
                    enemy.num_exp = round(new_exp / 4)
                    
            # CLAUSE FOR SANDWORM:
            elif random_boss.event_id in ['0A']:
                for enemy in [random_boss.enemy_classes[3],random_boss.enemy_classes[4],random_boss.enemy_classes[5]]:
                    enemy.num_exp = new_exp
                    
            else:    
                random_boss.enemy_classes[0].num_exp = new_exp
        
        
            # STATS / AI
            # Stats - Update stats based on boss_scaling.csv for every enemy
            # AI - create new patch file for AI changes 

            
            def inttohex_asar(x):
                y = hex(int(x)).replace("0x","").zfill(4)
                return "db $"+y[2:4] + ", $" + y[0:2]
                
            def write_hpai(trigger_dict):
                '''
                This function takes a dictionary of:
                    1) trigger_hp (part of AI when an enemy changes pattern)
                    and its corresponding
                    2) address to write to 
                This will iterate through both trigger_hp/address for however many pairs exist per enemy
                '''
                text_str = ''
                for address, trigger_hp in trigger_dict.items():
                    text_str = text_str + "; Original HP: "+str(random_boss.enemy_classes[0].num_hp)+"\n"
                    text_str = text_str + "; New trigger HP: "+str(trigger_hp)+"\n" 
                    text_str = text_str + 'org $'+address+'\n'
                    text_str = text_str + inttohex_asar(trigger_hp)+"\n"
                
                return text_str

            og_text = "; --------------------------\n; Original boss {} rank {} -> Randomized boss {} rank {}\n; HP: {} -> {}\n".format(random_boss.enemy_list, str(prev_rank),original_boss.enemy_list,str(new_rank),str(prev_hp),str(new_hp))
            text_str = og_text
            write_flag = False
            for enemy in random_boss.enemy_classes:
                list_of_randomized_enemies.append(enemy) #maintain a list of only the enemies we've actually randomized
                text_str = text_str + '; ENEMY: '+enemy.enemy_name+'\n'
#                breakpoint()
                df_temp = self.DM.files['boss_scaling'][(self.DM.files['boss_scaling']['idx']==int(enemy.idx)) & (self.DM.files['boss_scaling']['boss_rank']==int(new_rank))]
                
                # STATS
                for col in ['num_gauge_time','num_phys_power','num_phys_mult','num_evade','num_phys_def','num_mag_power','num_mag_def','num_mag_evade','num_mp']:
                    setattr(enemy,col,df_temp[col])
                # both updates stats from this for loop and applies mult based on tier
                
                
                # AI - check for & write moveset
                offset_loc = df_temp['ai_starting_address'].iloc[0]
                list_of_skills = df_temp['ai_skills'].iloc[0].strip("][").split(',')
                list_of_writes = df_temp['ai_write_loc'].iloc[0].strip("][").split(',')
                
                    # Check skill list if adjustments needed
                if not offset_loc != offset_loc and list_of_skills != ['']: #ignore if NaN
                    write_flag = True
                    list_of_addresses = []
                    for i in list_of_writes:
                        list_of_addresses.append(hex(int(offset_loc,base=16)+int(i)).replace("0x",""))

                    skill_dict = dict(zip(list_of_addresses,list_of_skills))
                    
                    text_str = text_str + '; Skills: '+str(list_of_skills)+'\n'
                    
                    for address, skill in skill_dict.items():
                        text_str = text_str + '; New skill: '+skill+"\n"
                        text_str = text_str + 'org $'+address+"\n"
                        text_str = text_str + 'db $' + self.DM.files['enemy_skills'][skill]+"\n"
                    
                    
                # AI - check for & write HP triggers
                list_of_hp_writes = df_temp['ai_hp_write_loc'].iloc[0].strip("][").split(',')
                list_of_hp_mult = df_temp['ai_hp_mult'].iloc[0].strip("][").split(',')
                
                if not offset_loc != offset_loc and list_of_hp_writes != ['']: #ignore if NaN
                    write_flag = True
                    list_of_hp_addresses = []
                    for i in list_of_hp_writes:
                        list_of_hp_addresses.append(hex(int(offset_loc,base=16)+int(i)).replace("0x",""))

                    list_of_hp_vals = []
                    for mult in list_of_hp_mult:
                        list_of_hp_vals.append(round(int(enemy.num_hp) * float(mult)))
                        

                    trigger_dict = dict(zip(list_of_hp_addresses,list_of_hp_vals))

                    text_str = text_str + write_hpai(trigger_dict)
#                enemy.rank_mult = stat_rank_mult
                enemy.update_all() 
                enemy.ai_patch_text = text_str                  

            # Final presentation & updating
            
            enemy_change = "%s (Rank %s)  > %s (Rank %s)" % (random_boss.enemy_classes[0].enemy_name, prev_rank, original_boss.enemy_classes[0].enemy_name, new_rank)

            random_boss.random_boss_rank = new_rank
            random_boss.enemy_change = enemy_change


        self.EM.relevant_enemies = list_of_randomized_enemies
        

        
    def randomize_job_color_palettes(self):
        if True: # Future - flag for if all job palettes shuffled (for all chars and jobs)
            palettes = list(self.DM.files['job_color_palettes']['byte_string'])
            self.RE.shuffle(palettes)
            output_str = "\n\n; JOB COLOR PALETTES \n\norg $D4A3C0\ndb "
            for palette in palettes:
                palette_asar = ["$"+palette[z:z+2]+", " for z in range(0,len(palette),2)]
                output_str = output_str + ''.join(palette_asar)
            output_str = output_str[:-2]
            #logging.error(output_str)
            return output_str
        
        if False: # Future - flag for keeping palettes among characters
            output_str = "\n\n; JOB COLOR PALETTES \n\norg $D4A3C0\ndb "
            for character in self.DM.files['job_color_palettes']['char'].unique():
                palettes_df = self.DM.files['job_color_palettes']
                palettes_df = palettes_df[palettes_df['char']==character]
                palettes = palettes_df['byte_string'].to_list()
                self.RE.shuffle(palettes)
                for palette in palettes:
                    palette_asar = ["$"+palette[z:z+2]+", " for z in range(0,len(palette),2)]
                    output_str = output_str + ''.join(palette_asar)
            output_str = output_str[:-2]
            logging.error(output_str)
            return output_str
        
        
    def set_portal_boss(self,  portal_boss = 'SomberMage'):
        
        
        # This all currently supports 3 enemies, which replace LiquiFlame/Kuzar/SolCannon from Phoenix Tower
        # with entirely new enemies
        # It's ASSUMING there's three enemies as part of the process
        
        
        # STEPS TO MAKE NEW BOSSES
        # You can ignore the section below if you have 3 enemies in the formation 
        # Look for "UPDATE STEP" in notes below
        
        output_str = ''
        output_str = '\n\n; PORTAL BOSS\n'
        
        # Change liquiflame formation to not have opening hide and no ABP
        output_str = output_str + "\n" + "; Formation changes"
        output_str = output_str + "\n" + ("org $D04EB0")
        output_str = output_str + "\n" + ("db $00, $80, $00")
        
        # Add 3 bosses for liquiflame, kuzar, solcannon
        output_str = output_str + "\n" + ("org $D04EB4")
        output_str = output_str + "\n" + ("db $65, $66, $67")
        # Change to Exdeath W2 music and Strong Boss fade
        output_str = output_str + "\n" + ("org $D04EBE")
        output_str = output_str + "\n" + ("db $28, $21")
        
        
        # set liquidflame spot to AI
        output_str = output_str + "\n" + ";AI table changes"
        output_str = output_str + "\n" + ("org $D09ECA")
        output_str = output_str + "\n" + ("db $E0, $F1")
        # set kuzar ai
        output_str = output_str + "\n" + ("db $E0, $F2")
        # set solcannon ai
        output_str = output_str + "\n" + ("db $E0, $F3")
        
        output_str = output_str + "\n" + ";Formation table changes"
        # Formation table, which will correspond to battle code $BD, $55, $FF found in the custom event
        output_str = output_str + "\n" + ("org $D07954")
        output_str = output_str + "\n" + ("db $EB, $01") # ; use liquiflame formation in free space on lookup table
        output_str = output_str + "\n" + ("db $EB, $01") # ; duplicate for table sometimes pulling next address
        # Now pivot on which type of portal boss 
        
        df = self.DM.files['portal_bosses']
        df = df[df['enemy_name'] == self.configs['portal_boss']]
        
        enemies = [[x for x in self.EM.enemies if x.idx == '357'][0],
                   [x for x in self.EM.enemies if x.idx == '358'][0],
                   [x for x in self.EM.enemies if x.idx == '359'][0]
                  ]
        
        for enemy in enemies:
            
            data = df[df['idx']==int(enemy.idx)].iloc[0]
            for i in data.index:
                if i == 'enemy_name':
                    setattr(enemy,i,str(data[i]))
                if "num_" in i:
                    setattr(enemy,i,str(data[i]).zfill(2))
                if i in [  'atk_index',
                            'elemental_immune',
                            'status0_immune',
                            'status1_immune',
                            'status2_immune',
                            'elemental_absorb',
                            'unavoidable_atk',
                            'elemental_weakness',
                            'enemy_type',
                            'special_immune',
                            'initial_status0',
                            'initial_status1',
                            'initial_status2',
                            'initial_status3',
                            'steal_common',
                            'steal_rare',
                            'drop_common',
                            'drop_rare']: 
                    setattr(enemy,i,str(data[i]).zfill(2))
            enemy.update_all()
            output_str = output_str + "\n" + (enemy.asar_output)

        # Change AI 
        if portal_boss == 'SomberMage':
            
            ########## 
            # UPDATE STEP
            # Custom write AI for each of the forms
            ##########
            output_str = output_str + "\n" + ";AI Changes"
            #LiquiFlame AI
            
            data = parse_ai_data('somber_mage.txt')
            output_str = output_str + "\n" + data


            # End of battle dialogue
            output_str = output_str + "\n" + "org $D0F1D4"
            output_str = output_str + "\n" + "db $B0, $4F"
            
            output_str = output_str + "\n" + "org $E74FB0"
            output_str = output_str + "\n" + "db $A3, $A3, $A3, $00"
            ########## 
            # UPDATE STEP
            # Change formation x/y coords if necessary. Default is middle
            ##########
            output_str = output_str + "\n" + ";Enemy X/Y Coords"
            # ; Formation coords. Low byte x, High byte y coord
            output_str = output_str + "\n" + ("org $d09858")
            output_str = output_str + "\n" + ("db $78, $78, $78, $78, $78, $78, $78, $78") # ; default

            ########## 
            # UPDATE STEP
            # Change sprites. The addresses are always the same, but you can grab from enemy_data.csv, the rightmost columns
            # Then change the 4th byte (and also the $00 or $01 on the 3rd byte) for palette swaps
            ##########
            
            # Change sprites 
            # ; Cherie sprite
            output_str = output_str + "\n" + "; Battle sprite changes"
            output_str = output_str + "\n" + ("org $D4B879")
            output_str = output_str + "\n" + ("db $31, $27, $01, $68, $51")
            output_str = output_str + "\n" + ("db $31, $27, $01, $69, $51")
            output_str = output_str + "\n" + ("db $31, $27, $01, $5f, $51")
            

            ########## 
            # UPDATE STEP
            # Change name of enemy with text_parser2.py, limit of 10 characters
            ##########            
            # ; Change LiquiFlame, Kuzar and Sol Cannon name to SOMBERMAGE
            output_str = output_str + "\n" + ("org $E00E42")
            output_str = output_str + "\n" + ("db $72, $88, $86, $7B, $7E, $8B, $6C, $7A, $80, $7E")
            output_str = output_str + "\n" + ("db $72, $88, $86, $7B, $7E, $8B, $6C, $7A, $80, $7E")
            output_str = output_str + "\n" + ("db $72, $88, $86, $7B, $7E, $8B, $6C, $7A, $80, $7E")
            
            ########## 
            # UPDATE STEP
            # Change dialogue of enemy before battle
            ##########            

            output_str = output_str + "\n" + "; Pre-battle dialogue"
            output_str = output_str + "\n" + "org $E14BF1"
            output_str = output_str + "\n" + "db $73, $81, $7E, $96, $90, $82, $87, $7D, $96, $82, $8C, $96, $7C, $7A, $85, $85, $82, $87, $80, $A3, $A3, $A3, $96, $82, $8D, $99, $8C, $01, $8D, $82, $86, $7E, $96, $7F, $88, $8B, $96, $8E, $8C, $96, $8D, $88, $96, $7F, $82, $80, $81, $8D, $A3, $00"
    
        return output_str

    def spoiler_intro(self):
        output = ""
        output = output + VERSION
        output = output + "\nSeed: " + self.seed
        output = output + "\nSetting String: " + self.setting_string + "\n\n"

        return output
            

    def starting_crystal_patch(self):
        output = ";================"
        output = output + "\n;starting crystal"
        output = output + "\n;================\n"
        output = output + "org $" + self.conductor_config['STARTING_CRYSTAL_ADDRESS']
        output = output + "\ndb $" + self.starting_crystal.patch_id
        output = output + ", $" + self.starting_crystal.starting_spell_id
        if self.fjf:
            for crystal in self.chosen_crystals:
                index = self.RE.randint(0, len(crystal.starting_spell_list)-1)
                crystal.starting_spell = crystal.starting_spell_list[index]
                crystal.starting_spell_id = crystal.starting_spell_ids[index]

                output = output + ", $" + crystal.patch_id
                output = output + ", $" + crystal.starting_spell_id
        output = output + "\n"
        return output

    def starting_crystal_spoiler(self):
        output = "-----STARTING JOB, WEAPON, MAGIC-----"
        output = output + "\nStarting job:     " + self.starting_crystal.reward_name    
        output = output + "\nStarting weapon:  " + self.starting_crystal.starting_weapon
        output = output + "\nStarting spell:   " + self.starting_crystal.starting_spell
        output = output + "\nStarting ability: " + self.starting_crystal.starting_ability
        output = output + "\n-----***************************-----\n"
        if self.fjf:
            output = output + "Four Job Mode:"
            for crystal in self.chosen_crystals:
                output = output + "\n" + crystal.reward_name[:crystal.reward_name.find(" ")]
                if crystal.starting_spell != "":
                    output = output + " - " + crystal.starting_spell
            output = output + "\n\n"  

        return output
    

    
    def randomize_superbosses(self):
        elemental_map = {
            'fire':'01',
            'ice':'02',
            'lightning':'04',
            'poison':'08',
            'holy':'10',
            'earth':'20',
            'wind':'40',
            'water':'80',
            }
            
        # organized by status, then offset
        status_map = {
        'darkness':('01','status0'),
        'zombie':('02','status0'),
        'poison':('04','status0'),
        'float':('08','status0'),
        'mini':('10','status0'),
        'toad':('20','status0'),
        'petrify':('40','status0'),
        'dead':('80','status0'),
        'image1':('01','status1'),
        'image2':('02','status1'),
        'mute':('04','status1'),
        'berserk':('08','status1'),
        'charm':('10','status1'),
        'paralyze':('20','status1'),
        'sleep':('40','status1'),
        'aging':('80','status1'),
        'regen':('01','status2'),
        'invul':('02','status2'),
        'slow':('04','status2'),
        'haste':('08','status2'),
        'stop':('10','status2'),
        'shell':('20','status2'),
        'armor':('40','status2'),
        'wall':('80','status2')
        }
            
        creature_map = {
            'undead':'01',
            'toad':'02',
            'creature':'04',
            'avis':'08',
            'dragon':'10',
            'heavy':'20',
            'desert':'40',
            'human':'80'
            }
           
        for i in self.EM.enemies:
            if i.idx == '253':
                OMEGA = i
            elif i.idx == '361':
                SHINRYUU = i
            elif i.idx == '11':
                MAGICPOT = i # we're not randomizing them, but we need them in self.relevant_enemies

        # Have to do it somewhere - add Magic Pot to relevant enemies
        self.EM.relevant_enemies.append(MAGICPOT)

        # helper functions 
        def add_hex(x,y):
            return hex(int(x,base=16) + int(y,base=16)).replace("0x","")[0:2] 

        def elemental_randomize():
            
            # Now, this is hardcoded for: 
            # 3 Absorbs
            # 3 Immunities
            # 2 Weaknesses
            immunity_start = 3
            weakness_start = 7
            
            random_elements = sorted(list(elemental_map.keys()), key=lambda k: self.RE.random())
            absorbs, immunities, weaknesses = random_elements[:immunity_start], random_elements[immunity_start:weakness_start], random_elements[weakness_start:]
            
            
            absorb_hex = '00'
            for i in absorbs:
                absorb_hex = add_hex(absorb_hex,elemental_map[i])
            immunities_hex = '00'
            for i in immunities:
                immunities_hex = add_hex(immunities_hex,elemental_map[i])
            weakness_hex = '00'
            for i in weaknesses:
                weakness_hex = add_hex(weakness_hex,elemental_map[i])
                
            return absorbs, immunities, weaknesses, absorb_hex, immunities_hex, weakness_hex

        def status_afflict_randomize():            
            
            # Hardcoded number of status afflictions for now:
            num_afflict = 1
            
            status_afflict = []
            random_statuses = sorted(list(status_map.keys()), key=lambda k: self.RE.random())
            while num_afflict > 0:
                i = self.RE.choice(random_statuses)
                random_statuses.remove(i)
                if i not in ['image1','image2','haste','stop','regen','shell','armor','wall','invul']:
                    status_afflict.append(i)
                    num_afflict = num_afflict - 1
            return status_afflict        
            
           
        #####################################    
        # First randomize stats - these are all stored with the enemy and will get written
        # as part of the Conductor.randomize() method with the enemy spoiler patch
        #####################################    
        output_str = ''
        self.superbosses_spoiler = self.superbosses_spoiler + '\n-----SUPERBOSSES:-----\n'
        for random_enemy in [OMEGA,SHINRYUU]:
            ######################################
            # Elemental Absorb/Immune/Weakness
            ######################################
            self.superbosses_spoiler = self.superbosses_spoiler +'-----------'+ random_enemy.enemy_name.upper() + "-----------\n"
            # Force elemental immunities to be zero - using an absorb/weakness system only 
            
            random_enemy_absorbs, random_enemy_immunities, random_enemy_weaknesses, random_enemy_absorb_hex, random_enemy_immunities_hex, random_enemy_weakness_hex = elemental_randomize()
            
            self.superbosses_spoiler = self.superbosses_spoiler + "Absorbs "+str(random_enemy_absorbs)+" Immunities "+str(random_enemy_immunities)+" Weaknesses: "+str(random_enemy_weaknesses)+'\n'
            
            # Formally set the bytes to the object now
            random_enemy.elemental_absorb = random_enemy_absorb_hex
            random_enemy.elemental_immune = random_enemy_immunities_hex
            random_enemy.elemental_weakness = random_enemy_weakness_hex
            ######################################
            # Status Afflictions 
            ######################################
            random_enemy_status_afflict = status_afflict_randomize()
            
            self.superbosses_spoiler = self.superbosses_spoiler + "Status afflictions (weaknesses) "+str(random_enemy_status_afflict)+"\n"
            
            random_enemy_status0, random_enemy_status1, random_enemy_status2 = '00','00','00'
            for status in random_enemy_status_afflict:
                status_hex, status_index = status_map[status][0], status_map[status][1]
                if status_index == 'status0':
                    random_enemy_status0 = add_hex(random_enemy_status0, status_hex)
                if status_index == 'status1':
                    random_enemy_status1 = add_hex(random_enemy_status1, status_hex)
                if status_index == 'status2':
                    random_enemy_status2 = add_hex(random_enemy_status2, status_hex)
                    
            # Now we have three hexes of what the statuses are, but we need to INVERT them because
            # it's immunity. So all other statuses will be immune except these
            
            random_enemy_status0 = hex(255 - int(random_enemy_status0,base=16)).replace("0x","")
            random_enemy_status1 = hex(255 - int(random_enemy_status1,base=16)).replace("0x","")
            random_enemy_status2 = hex(255 - int(random_enemy_status2,base=16)).replace("0x","")
                    
            # Formally set the bytes to the object now
            random_enemy.status0_immune = random_enemy_status0
            random_enemy.status1_immune = random_enemy_status1
            random_enemy.status2_immune = random_enemy_status2
            
    
            ######################################
            # Enemy type 
            ######################################
            
            # Choose a random type
            random_type = self.RE.choice(list(creature_map.keys()))
            # If it's not heavy, make it heavy too
            if random_type != 'heavy':
                random_enemy.enemy_type = add_hex(creature_map[random_type],'20') # heavy + random type
                self.superbosses_spoiler = self.superbosses_spoiler + "Enemy type - heavy and "+random_type+"\n"
            else:
                random_enemy.enemy_type = creature_map[random_type] # heavy
                self.superbosses_spoiler = self.superbosses_spoiler + "Enemy type - heavy\n"
            
            
            ######################################
            # Stats 
            ######################################
            
            # Randomize levels and stats 
            # A few stats will have a random int from -10 to 10 applied
            for stat in ['num_phys_power','num_phys_def','num_evade','num_mag_power','num_mag_def','num_level']:
                new_stat = str(round(int(getattr(random_enemy,stat)) + self.RE.randint(-10,10)))
                setattr(random_enemy,stat,new_stat)
                self.superbosses_spoiler = self.superbosses_spoiler + "Stat "+stat+" changed to "+new_stat+"\n"
            
            # Magic Evade decreased to $20 
            # This is done so the player can reasonably use the statuses they found out, 
            #   and not fail to use their new knowledge because of insanely high mag evade
            random_enemy.num_mag_evade = 32
            self.superbosses_spoiler = self.superbosses_spoiler + "Stat num_mag_evade changed to 32\n"
            
            # Finally post updates to stats
            random_enemy.update_all()
            
            
            #####################################    
            # Now randomize the AI, somewhat manually
            #####################################    
            aoe_skills = ['45','84','85','86','87','88','AB','B6','B9','CC','CD','CF','D0','D1','D2','D6','DA','DB','DC','DD','C2']
            single_target_skills = ['B2','B3','B4','30','31','32','33','34','35','3C','3F','42','43','81','8C','8E','91','92','93','97','98','99','9C','9D','9F','B0','B7','B8','BD','C3','C4','C5','C6','C7','E8','22','2F','C0','80']
            status_skills = ['15','37','39','3A','3D','40','44','82','83','89','8A','8B','8D','94','95','9A','B5','BB','BC','EB','2E']
            
            
            skill_name_dict = dict([(value, key) for key, value in self.DM.files['enemy_skills'].items()]) 

            output_str = output_str + ';  ########################### \n'
            output_str = output_str + ';  # New AI for enemy: '+random_enemy.enemy_name+'\n'
            output_str = output_str + ';  ########################### \n'

            aoe_skill_names = []
            single_skill_names = []
            status_skill_names = []
            if random_enemy.idx == '253': # OMEGA
                ai_aoe = ['D0B235','D0B238','D0B23D','D0B245','D0B248','D0B24E']
                ai_single = ['D0B236','D0B237','D0B23A','D0B23B','D0B23C','D0B243','D0B244','D0B247','D0B249','D0B24C','D0B24D','D0B25B','D0B25C','D0B25F','D0B260']
                ai_status = ['D0B25D','D0B261']
                
            if random_enemy.idx == '361': # SHINRYUU
                ai_aoe = ['D0C532','D0C533','D0C534','D0C53F','D0C540','D0C55C','D0C567']
                ai_single = ['D0C52F','D0C53B','D0C546','D0C547','D0C54A','D0C54B','D0C52E']
                ai_status = ['D0C530','D0C53A','D0C53C','D0C53E','D0C548','D0C54C']
            for ai in ai_aoe:
                random_skill_hex = self.RE.choice(aoe_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                aoe_skill_names.append(random_skill_name)
                output_str = output_str + '; New AOE skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            for ai in ai_single:
                random_skill_hex = self.RE.choice(single_target_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                single_skill_names.append(random_skill_name)
                output_str = output_str + '; New single target skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            for ai in ai_status:
                random_skill_hex = self.RE.choice(status_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                status_skill_names.append(random_skill_name)
                output_str = output_str + '; New status skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            self.superbosses_spoiler = self.superbosses_spoiler + "AOE skills: "+str(aoe_skill_names)+"\n"
            self.superbosses_spoiler = self.superbosses_spoiler + "Single target skills: "+str(single_skill_names)+"\n"
            self.superbosses_spoiler = self.superbosses_spoiler + "Status skills: "+str(status_skill_names)+"\n\n\n"
            
            
            # Add these to the relevant enemies list             
            self.EM.relevant_enemies.append(random_enemy)
            
                
            # Then update dialogue for NPCs in Mirage Village & Moogle Forest
            
            # e303ac mirage start
            
            if random_enemy.idx == '253': # OMEGA
                output_str = output_str + "\n\n; ***Mirage Village NPC [Omega]***\n"
                output_str = output_str + "org $E303AC\npadbyte $FF\npad $E30447\npadbyte $00\norg $E303AC\ndb $6E, $6C, $64, $66, $60, $9D, $96, $8D, $81, $7E, $96, $90, $7A, $8B, $96, $86, $7A, $7C, $81, $82, $87, $7E, $A3, $A3, $A3, $01, $81, $7A, $8C, $96, $90, $7E, $7A, $84, $87, $7E, $8C, $8C, $7E, $8C, $A3, $A3, $A3, $01\n"
            if random_enemy.idx == '361': # SHINRYUU
                output_str = output_str + "\n\n; ***Moogle Forest NPC [Shinryuu]***\n"
                output_str = output_str + "org $E24487\npadbyte $FF\npad $E245C7\npadbyte $00\norg $E24487\ndb $72, $67, $68, $6D, $71, $78, $74, $74, $9D, $96, $8D, $81, $7E, $96, $87, $88, $8F, $7A, $96, $7D, $8B, $7A, $80, $88, $87, $A3, $A3, $A3, $01, $81, $7A, $8C, $96, $90, $7E, $7A, $84, $87, $7E, $8C, $8C, $7E, $8C, $A3, $A3, $A3, $01\n"
            for weakness in random_enemy_weaknesses:
                new_text = weakness[0].upper() + weakness[1:]
                new_text = self.TP.run_encrypt_text_string(new_text)
                output_str = output_str + new_text + ", $01\n"
            output_str = output_str + "db $60, $87, $7D, $96, $7F, $88, $8B, $96, $8C, $8D, $7A, $8D, $8E, $8C, $7E, $8C, $A3, $A3, $A3, $01\n"
            for weakness in random_enemy_status_afflict:
                new_text = weakness[0].upper() + weakness[1:]
                new_text = self.TP.run_encrypt_text_string(new_text)
                output_str = output_str + new_text + ", $01\n"
            output_str = output_str + "db $00\n"
            
                
            
            
            
            
            
            
            
        # Finally, create the "CODE OF THE VOID"
        
        # For some reason, couldn't get this to load in from star import from text_parser
        text_dict2 = pd.read_csv(self.config['PATHS']['text_table_path'] + self.config['PATHS']['text_table_to_use'], header=None, index_col=1).to_dict()[0]
        #text_dict2 = pd.read_csv(os.path.join(os.path.pardir,'data','tables','text_tables','text_table_chest.csv'),header=None,index_col=1).to_dict()[0]
        
        letters = self.RE.sample('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',6)
        code_str = 'db '
        for letter in letters:
            code_str = code_str + "$" +str(text_dict2[letter]) + ", "
        code_str = code_str[:-2]
        output_str = output_str + '\n; CODE OF THE VOID: \norg $E77476\n'+code_str+'\norg $F80900\n'+code_str+'\n\n'

        
        self.superbosses_spoiler = self.superbosses_spoiler + "\-----CODE OF THE VOID-----\n"+''.join(letters)+"\n\n"
            
        return output_str
    
    def assign_hints(self):
        # hint_text will be a list of text strings with hints
        hint_text = []
            
        keys = self.RM.get_rewards_by_style('key')
        
        keys_main = []
        keys_barren = []
        
        
        for i in keys:
            if i.collectible.name == 'Key Item':
                keys_main.append(i)
            else:
                keys_barren.append(i)
    
        self.RE.shuffle(keys_main)
        self.RE.shuffle(keys_barren)
        
        keys_hint1 = keys_main[:3]
        
        ###########
        # DIRECT
        ###########
        # Pick 3 hints to say "X" item is at "Y" location
        
        for key in keys_hint1:
            hint_str = "They say that %s|holds the %s." % (key.area, key.collectible.collectible_name)
            hint_text.append(hint_str)
            
            
        ###########
        # PATH
        ###########
    
        tablets = [x for x in keys if 'Tablet' in x.collectible.collectible_name]
        # init required_rewards with tablets
        required_rewards = tablets[:]
        
        tablet_reqs = []
        for tablet in tablets:
    #        breakpoint()
            logging.error(">>>>>>>>>>>:"+tablet.description)
            # for each tablet, iterate through required keys for that tablet
            if self.configs['world_lock'] == 0 or self.configs['world_lock'] == '0':
                tablet_reqs = getattr(tablet, 'required_key_items')
            else:
                tablet_reqs = getattr(tablet,'required_key_items_lock'+str(self.configs['world_lock']))
            if tablet_reqs != None:            
                # now iterate through tablet_reqs and find rewards that correspond. Pop them when done 
                loop_flag = True
                iter_num = 0
                while loop_flag and iter_num < 50:
                    iter_num += 1
                    if tablet_reqs == []:
                        loop_flag = False
                        break
                    logging.error(tablet_reqs)
                    # find the reward associated with the latest tablet_req
                    new_reward = [x for x in keys if x.collectible.collectible_name == tablet_reqs[0]][0]
                    if new_reward not in required_rewards:
                        required_rewards.append(new_reward)
                    # check if this new reward has any reqs of its own, if it does, add to tablet_reqs
                    if self.configs['world_lock'] == 0 or self.configs['world_lock'] == '0':
                        new_reward_reqs = getattr(tablet, 'required_key_items')
                    else:
                        new_reward_reqs = getattr(new_reward,'required_key_items_lock'+str(self.configs['world_lock']))
                    if new_reward_reqs:
                        for i in new_reward_reqs:
                            if i not in tablet_reqs:
    #                            logging.error("Adding %s to tablet_reqs" % i)
                                tablet_reqs.append(i)
                    tablet_reqs = tablet_reqs[1:]
    #                time.sleep(2)
            else:
                continue # if there's no requirements, move on to next 
                        
#        for i in required_rewards:
#            logging.error(i.collectible.collectible_name + " - " + i.description  + " - " +  str(i.required_key_items_lock1))
        
        # now choose 5 of them, and add to hints
        self.RE.shuffle(required_rewards)
        for key in required_rewards[:5]:
            hint_str = "They say that %s|is on the path to the Void." % (key.area)
            hint_text.append(hint_str)
    
    
    
        
        
        ###########
        # BARREN
        ###########
    
        # Build area list from spreadsheet
        tags = {}
        for key in keys:
            try:
                for tag in key.hint_tags:
                    tags[tag] = ''
            except:
                print("Error on barren spoiler for key %s" % (key.__dict__))
                pass
    
        # Get all tags that are present anywhere in the main game            
        tags_main = []
        for key in keys_main:
            for tag in key.hint_tags:
                tags_main.append(tag)
        tags_main = list(set(tags_main))
        
        # now take all tags, and find out which ones aren't in the tags_main 
        barren_tags = []
        for tag in tags:
            if tag not in tags_main:
                barren_tags.append(tag)
                
        # Then add random ones, depending on how many present
        if len(barren_tags) < 5:
            barren_num = len(barren_tags)
        else:
            barren_num = 5
            
        self.RE.shuffle(barren_tags)
        barren_tags = self.RE.sample(barren_tags,barren_num)
        for i in barren_tags:
            hint_str = "They say that %s areas|hold no keys of value." % i
            hint_text.append(hint_str)
            
        ###########
        # WORLD
        ###########
        
        # pick 5 random keys_main, which will be a different set of keys from the first 5 hints
        # make up difference of barren hints 
        
        world_num = 15 - len(hint_text)
        
        world_keys = keys_main[-world_num:]
        
        for key in world_keys:
            hint_str = "They say that the %s|is present in World %s." % (key.collectible.collectible_name, key.world)
            hint_text.append(hint_str)
        
        self.RE.shuffle(hint_text) 
        
        
        ###########
        # DATA
        ###########
        
        hint_data = [hint for hint in self.DM.files['hints']['start']]
        
        hint_data_str = []
        tp = TextParser()
        for hint in hint_text:
            hint_data_str.append(tp.run_encrypt_text_string_hints(hint) + ", $00")
            
            
        
        hint_data = dict(zip(hint_data, hint_data_str))
        
        output_str_asar = '\n; Hints\n'
        for k, v in hint_data.items():
            output_str_asar = output_str_asar + "org $" + k + "\n" + v + "\n"
            
        output_str = '\n\n-----HINTS-----\n\n'
        for i in hint_text:
            output_str = output_str + i + "\n"
        return output_str_asar, output_str.replace("|"," ")
        
    def randomize_loot(self,loot_percent=25,loot_type='match'):
        loot_list = ['steal_common','steal_rare','drop_common','drop_rare']
        ''' 
        arguments:
        match = if the original enemy has a non-null loot slot, update it
        full = every enemy has randomized common/rare steal/drop
        variable = every enemy has randomized common/rare steal/drop at a specified chance (variable RANDOM_LOOT_PERCENT) per slot 
        '''
        
        try:
            loot_type = self.configs['randomize_loot'].strip()
            loot_percent = int(self.configs['loot_percent'])
        except Exception as e:
            logging.error("Error on loot type parse: %s" % (e))
        for enemy in self.EM.enemies:
            for loot in loot_list:
                # Choose item:
                df = self.DM.files['items']
                df = df[df['valid']=="TRUE"]
                new_item_id = self.RE.choice(list(df.index))
                new_item_name = self.DM.files['items']['readable_name'].loc[new_item_id]
                
                
                if loot_type=='match':
                    if getattr(enemy,loot) != '00':
                        setattr(enemy,loot,new_item_id)
                        setattr(enemy,loot+"_name",new_item_name)
                elif loot_type=='full':
                    setattr(enemy,loot,new_item_id)
                    setattr(enemy,loot+"_name",new_item_name)
                elif loot_type=='variable':
                    if self.RE.randint(1,100) <= loot_percent: 
                        setattr(enemy,loot,new_item_id)
                        setattr(enemy,loot+"_name",new_item_name)
                    else:
                        setattr(enemy,loot,'00')
                        setattr(enemy,loot+"_name"," ")
                else:
                    logging.error("Invalid loot randomize argument %s" % (loot_type))
                    
                    
    def randomize_weapons(self):
        logging.error("Beginning weapon randomization...")
        weapon_shop_price_patch = self.WM.randomize()
        if len(self.WM.banned_items) > 0:
            for _ in range(3):
                for weapon in self.WM.banned_items:
                    try:
                        self.CM.add_to_placement_history(self.CM.get_by_name(weapon['readable_name']),"No")
                    except:
                        logging.error("Error on placement history %s" % weapon['readable_name'])
        return weapon_shop_price_patch

                    
    def get_collectible_counts(self):
        # Here for this spoiler, we need to collect from both RM and SM to get accurate data, so we do it here:
        spoiler = "\n-----COLLECTIBLE COUNTS BY TYPE-----\n"
        count_dict = {}
        for i in self.RM.rewards:
            if type(i.collectible) not in count_dict.keys():
                count_dict[type(i.collectible)] = 1
            else:
                count_dict[type(i.collectible)] = count_dict[type(i.collectible)] + 1
        
        for shop in self.SM.shops:
            for i in shop.contents:
                if type(i) not in count_dict.keys():
                    count_dict[type(i)] = 1
                else:
                    count_dict[type(i)] = count_dict[type(i)] + 1
                
        for key, val in count_dict.items():
            try:
                new_str =  '{:12}'.format(str(key.name) + ": ") +  '{:12}'.format(str(val)) + "\n"
                spoiler = spoiler + new_str
            except:
                pass
        return spoiler + "\n"
    def karnak_escape_patch(self):
        '''
        Random song chosen, outputs asar code
        '''
        songs = ['00','01','02','03','04','05','06','07','08','09',
                 '0A','0B','0C','0D','0E','0F','10','12','13','14',
                 '15','16','17','18','19','1A','1B','1C','1D','1E',
                 '1F','20','21','22','23','24','25','26','27','28',
                 '2B','2C','2D','2E','2F','30','31','32','33','3D',
                 '3F','40','41','42','43','44']
        song = self.RE.choice(songs)
        return ';Karnak escape song\norg $C8796D\ndb $'+song+"\n"
    

    def kuzar_text_patch(self):
        kuzar_reward_addresses = ['C0FB02','C0FB04','C0FB06','C0FB08','C0FB0A','C0FB0C','C0FB0E','C0FB10','C0FB12','C0FB14','C0FB16','C0FB18']
        kuzar_text_addresses =   ['E23F98','E240A5','E23F7A','E2404C','E240C4','E23FD6','E24011','E24088','E23FF4','E2406A','E23FB7','E2402D']
        
        output = ";=====================\n"
        output = output + ";Kuzar Reward Text Fix\n"
        output = output + ";=====================\n"
        
        try:
            randomized_weapons_ids = [i.data_dict['item_id'] for i in self.WM.weapons]
        except:
            logging.error("no weapon manager")

        for i in range(0, len(kuzar_reward_addresses)):
#            logging.error(i)
            #logging.error("working on address: " + kuzar_reward_addresses[i])
            data = self.RM.get_reward_by_address(kuzar_reward_addresses[i]).collectible
#            logging.error("Kuzar start: %s" % (data.reward_name))
            try:
                if data.type == 'weapon' and data.reward_id in randomized_weapons_ids:
                    matched_weapon = [x for x in self.WM.weapons if data.reward_id == x.data_dict['item_id']][0]
#                    logging.error("Kuzar weapon name swap: %s -> %s" % (data.reward_name, matched_weapon.text_textbox))
                    kuzar_text = self.TP.run_kuzar_encrypt({matched_weapon.text_textbox: kuzar_text_addresses[i]})
                    output = output + kuzar_text
                else:
                    kuzar_text = self.TP.run_kuzar_encrypt({data.reward_name.replace('->', '@').replace(' Progressive', '@'): kuzar_text_addresses[i]})
#                    logging.error("Kuzar normal: %s" % (data.reward_name))
                    output = output + kuzar_text

            except:
                #logging.error("collectible there is: " + c.reward_name)
                #@ will be used for our newline character, won't otherwise be present, and don't have the problems \n causes
                kuzar_text = self.TP.run_kuzar_encrypt({data.reward_name.replace('->', '@').replace(' Progressive', '@'): kuzar_text_addresses[i]})
#                logging.error("Kuzar normal: %s" % (data.reward_name))
                output = output + kuzar_text
        return output


    def name_characters(self):
        asar_str = '; Character Names\n'
        asar_str = asar_str + 'org $C0BEC9\n'
        asar_str = asar_str + self.TP.run_encrypt_text_string(self.lenna_name,ff_fill=8)
        asar_str = asar_str +'\norg $C0BED1\n'
        asar_str = asar_str + self.TP.run_encrypt_text_string(self.galuf_name,ff_fill=8)
        asar_str = asar_str +'\norg $C0BED9\n'
        asar_str = asar_str + self.TP.run_encrypt_text_string(self.faris_name,ff_fill=8)
        asar_str = asar_str +'\norg $C0BEE1\n'
        asar_str = asar_str + self.TP.run_encrypt_text_string(self.cara_name,ff_fill=8)
        
        return asar_str
        
    def translateBool(self, boolean):
        
        if type(boolean) == bool:
            logging.error("Argument passed in to translate: %s, returning original as boolean" % (boolean))
            return boolean
        if boolean == "false" or boolean == "False" or boolean == "off" or boolean == "0" or boolean == 0:
            logging.error("Argument passed in to translate: %s, returning boolean False" % (boolean))
            return False
        if boolean == "true" or boolean == "True" or boolean == "on" or boolean == "1" or boolean == 1:
            logging.error("Argument passed in to translate: %s, returning boolean True" % (boolean))
            return True
        else:
            logging.error("Argument passed in to translate: %s, returning NONETYPE" % (boolean))
            return None
        
#   Unused, but may be necessary one day. The concept here is to iterate through unplaced collectibles and assign them to random rewards
#    def cleanup_seed(self):
#        non_placed_collectibles = [y for y in [x for x in self.CM.collectibles if x.placed_reward==None] if y.valid]
#        

    def spoiler_settings(self):
        output_str = '\n-----SETTINGS-----\n'
        for k, v in self.configs.items():
            output_str = output_str + '{:30}'.format(str(k)) + '{:30}'.format(str(v)) + "\n"
        return output_str + "\n"
    
    def fix_random_ned(self):
        asar_str = '; Fix 2nd NED slot\n'
        d = [x for x in self.FM.formations if x.event_lookup_loc1 == 'D078E8'][0]
        asar_str = asar_str + "org $D078A0\ndb $%s, $%s\n\n" % (d.event_formation_reference[0:2],d.event_formation_reference[2:4])
        return asar_str 
        
        

    def parse_configs(self):
        config = self.configs

        r_color = int(config['red_color'])
        g_color = int(config['green_color']) * 32
        b_color = int(config['blue_color']) * 1024

#        breakpoint()        
        colors = hex(r_color+g_color+b_color).replace("0x","")
        print(colors)
        
        if len(colors) == 0:
            colors = "0000"
        elif len(colors) == 1:
            colors = "000" + colors 
        elif len(colors) == 2:
            colors = "00" + colors 
        elif len(colors) == 3:
            colors = "0" + colors 
        c1 = colors[0:2]
        c2 = colors[2:4]
        
        patch = ";CONFIG SETTINGS\n"
        patch = patch + ";RGB\norg $C0F343\ndb $%s, $%s" % (c2,c1)
                
        reward_dict = {4:"28",3:"28",2:"18",1:"08"}
        try:
            reward_val = reward_dict[int(config['exp_mult'])]
        except:
            reward_val = reward_dict[4]
            
        battle_speed = int(config['battle_speed'])
        if battle_speed > 0 and battle_speed < 7: # validation
            battle_speed = "0" + str(battle_speed-1)
            reward_val = i2b(b2i(reward_val ) + b2i(battle_speed))
        
        
        patch = patch + "\n;Reward Mult\norg $C0F342\ndb $%s" % (reward_val)
        print(patch)
        return patch
        
        
        

    def randomize(self, random_engine=None):
        logging.error("Starting randomization process.")
        if random_engine is None:
            random_engine = self.RE
        
        self.AM.change_power_level(float(self.conductor_config['DEFAULT_POWER_CHANGE']))
        logging.error("Randomizing key items...")
        num_placed_key_items = self.randomize_key_items()
        #logging.error(num_placed_key_items)
        while num_placed_key_items < int(self.conductor_config['NUM_KEY_ITEMS']):
            #logging.error("didn't place them all, retrying")
            self.CM.reset_all_of_type(KeyItem)
            self.RM.reset_rewards_by_style("key")
            num_placed_key_items = self.randomize_key_items()


        logging.error("Randomizing shops...")
        self.randomize_shops()
        
        
        


        logging.error("Randomizing rewards...")
        self.randomize_rewards_by_areas()
      
        for i in self.RM.rewards: #this is a fix for an unsolved bug where some rewards don't get collectibles. it's rare, but it happens
            if i.collectible is None:
                if i.reward_style != 'key':
                    i.collectible = self.CM.get_random_collectible(self.RE, monitor_counts=True, gil_allowed=False, tiering_config=self.tiering_config, tiering_percentage=self.tiering_percentage, tiering_threshold=self.tiering_threshold)


        logging.error("Randomizing bosses...")
        self.randomize_bosses()

        for i in self.RM.rewards:
            if i.collectible is None:
                logging.error(i.description)
        
        
        if self.item_randomization:
            logging.error("Randomizing weapons...")
            weapon_shop_price_patch = self.randomize_weapons()

#        logging.error("Running cleanup for guaranteeing collectibles")
#        self.cleanup_seed()
        if self.configs['randomize_loot'].lower() != "none":
            logging.error("Randomizing loot...")
            self.randomize_loot()
        
        # Patch now comes first, because some functions (randomize_superbosses) now create the spoiler as part of their process
        logging.error("Creating spoiler & asm patch...")
        patch = "hirom\n\n"
        patch = patch + self.starting_crystal_patch()
        patch = patch + self.RM.get_patch()
        patch = patch + self.exdeath_patch
        patch = patch + self.SM.get_patch()
        patch = patch + self.SPM.get_patch()
        patch = patch + self.randomize_superbosses() # this comes first, because it updates the contents of EnemyManager. 
        patch = patch + self.EM.get_patch(relevant=True)
        patch = patch + self.FM.get_patch(self.remove_ned)
        # patch = patch + self.karnak_escape_patch()
        patch = patch + self.kuzar_text_patch()
        patch = patch + self.name_characters()
        patch = patch + self.odin_location_fix_patch
        if self.configs['randomize_loot'].lower() != "none":
            patch = patch + self.EM.get_loot_patch()
        if self.jobpalettes:
            patch = patch + self.randomize_job_color_palettes()
        if self.item_randomization:
            patch = patch + self.WM.get_patch
            patch = patch + weapon_shop_price_patch 
        if self.default_abilities:
            default_patch, default_spoiler = randomize_default_abilities(self.RE)
            patch = patch + default_patch
        if self.learning_abilities:
            learning_patch, learning_spoiler = randomize_learning_abilities(self.RE)
            patch = patch + learning_patch
        if self.music_randomization:
            logging.error("Shuffling music...")
            patch = patch + shuffle_music2()
            
        if self.free_shops:
            logging.error("Free shops...")
            patch = patch + free_shop_prices()
        if self.remove_ned:
            patch = patch + self.fix_random_ned()            

            
        patch = patch + self.parse_configs()
        patch = patch + self.set_portal_boss()

        spoiler = "CAREER DAY SPOILER LOG\n"
        if self.seed is not None and self.setting_string is not None:
            spoiler = spoiler + self.spoiler_intro()
        spoiler = spoiler + self.spoiler_settings()
        spoiler = spoiler + self.starting_crystal_spoiler()
        spoiler = spoiler + self.get_collectible_counts()                
        spoiler = spoiler + self.RM.get_spoiler(self.world_lock)
        spoiler = spoiler + self.SM.get_spoiler()
        spoiler = spoiler + self.CM.get_spoiler()    
        #spoiler = spoiler + self.EM.get_spoiler()
        spoiler = spoiler + self.superbosses_spoiler        
        spoiler = spoiler + self.FM.get_spoiler(self.remove_ned)
        if self.item_randomization:
            spoiler = spoiler + self.WM.get_spoiler

        if self.configs['randomize_loot'].lower() != "none":
            spoiler = spoiler + self.EM.get_loot_spoiler()
        if self.default_abilities:
            spoiler = spoiler + default_spoiler
        if self.default_abilities:
            spoiler = spoiler + learning_spoiler
        temp_hints_asar, temp_hints = self.assign_hints()
        patch = patch + temp_hints_asar
        spoiler = spoiler + temp_hints
        logging.error("Finished randomization process.")
        return(spoiler, patch)



####################################
######## TESTING AREA ##############
####################################

if __name__ == "__main__":   
    SEED_NUM = 325633
#    SEED_NUM = random.randint(1,1000000)
    random.seed(SEED_NUM)
    c = Conductor(random, {
                            'fjf':True,
                            'fjf_strict':True,
                            'jobpalettes':False,
                            'world_lock':0,
                            'tiering_config': True,
                            'tiering_percentage': 90,
                            'tiering_threshold': 2,
                            'enforce_all_jobs': False,
                            'battle_speed':3,
                            'red_color':31,
                            'blue_color':0,
                            'green_color':31,
                            'exp_mult':4,
                            'place_all_rewards': True,
                            'randomize_loot' : "none",
                            'loot_percent' : 25,
#                            'progressive_bosses' : False,
                            'portal_boss' : 'SomberMage',
                            'progressive_rewards' : False,
                            'item_randomization' : True,
                            'item_randomization_percent' : 50,
                            'default_abilities': False,
                            'learning_abilities': False,
                            'setting_string': None,
                            'job_1':'Random',
                            'job_2':'Random',
                            'job_3':'Random',
                            'job_4':'Random',
                            'lenna_name':'Lenna',
                            'galuf_name':'Galuf',
                            'cara_name':'Krile',
                            'faris_name':'Ziliat',
                            'music_randomization': False,
                            'free_shops':False,
                            'battle_speed':3,
                            'starting_cara':True,
                            'remove_ned':True,
                            'seed': SEED_NUM
                          }
                 )
    (spoiler, patch) = c.randomize()
    with open(os.path.join(os.path.pardir,os.path.pardir,'projects','test_asm','r-patch.asm'),'w') as f:
        f.write(patch)
    with open(os.path.join(os.path.pardir,os.path.pardir,'projects','test_asm','r-spoiler.txt'),'w') as f:
        f.write(spoiler)

    # logging.error(spoiler)
    








