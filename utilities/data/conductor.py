# -*- coding: utf-8 -*-
import pandas as pd
import random
import operator
import math

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

adjust_mult = 6
RANK_EXP_REWARD = {1:50*adjust_mult,
2:101*adjust_mult,
3:289*adjust_mult,
4:655*adjust_mult,
5:1265*adjust_mult,
6:2184*adjust_mult,
7:3480*adjust_mult,
8:5218*adjust_mult,
9:7466*adjust_mult,
10:10289*adjust_mult,
11:13087*adjust_mult,
12:15044*adjust_mult}

NUM_KEY_ITEMS = 20
ITEM_TYPE = "40"

ITEM_SHOP_TYPE = "01"
MAGIC_SHOP_TYPE = "00"
CRYSTAL_SHOP_TYPE = "07"

class Conductor():
    def __init__(self, random_engine, config_file="local-config.ini"):
        self.RE = random_engine
        self.config = configparser.ConfigParser()
        self.config.read(config_file)
        self.conductor_config = self.config['CONDUCTOR']

        self.DM = DataManager()                            #Data manager loads all the csv's into memory and sets them up for processing
        self.CM = CollectibleManager(self.DM)              #Set up collectibles (Includes Items, magic, crystals, and abilities)
        self.RM = RewardManager(self.CM, self.DM)          #Set up rewards (Includes chests and events)
        self.SM = ShopManager(self.CM, self.DM)            #Set up shops
        self.SPM = ShopPriceManager(self.CM, self.DM)      #Set up shop prices
        self.AM = AreaManager(self.DM, self.RE)            #Set up areas (Tule, The Void, etc)
        self.EM = EnemyManager(self.DM)                    #Set up enemies and bosses
        self.FM = FormationManager(self.DM, self.EM)       #Set up battle formations
        self.MIBM = MonsterInABoxManager(self.DM, self.RE) #Set up monsters in boxes
        self.TP = TextParser()                             #Set up Text Parser Utility Object
        
        self.difficulty = random.randint(1,10)
        crystals = self.get_crystals()
        self.starting_crystal = crystals[0]
        self.chosen_crystals = crystals[1]
        self.chosen_crystals_names = [x.reward_name for x in self.chosen_crystals]

        self.exdeath_patch = ""
        self.odin_location_fix_patch = ""
        self.superbosses_spoiler = ""
        self.code_of_the_void = ""

        self.weigh_collectibles()

    def get_crystals(self):
        crystals = self.CM.get_all_of_type(Crystal)
        starting_crystal = self.RE.choice(crystals)
        self.CM.add_to_placement_history(starting_crystal) #don't allow the starting crystal to appear anywhere in game
        if starting_crystal.starting_spell_list == ['']:
            starting_crystal.starting_spell = "None"
            starting_crystal.starting_spell_id = "FF"
        else:
            index = self.RE.randint(0, len(starting_crystal.starting_spell_list)-1)
            starting_crystal.starting_spell = starting_crystal.starting_spell_list[index]
            starting_crystal.starting_spell_id = starting_crystal.starting_spell_ids[index]
            
        crystals = [x for x in crystals if x != starting_crystal]

        crystal_count = self.RE.randint(int(self.conductor_config['STARTING_CRYSTAL_COUNT']), len(crystals))
        crystal_count = crystal_count - (self.difficulty // 3) #TODO: bring this to config

        if crystal_count < int(self.conductor_config['MINIMUM_ALLOWABLE_CRYSTAL_COUNT']):
            crystal_count = int(self.conductor_config['MINIMUM_ALLOWABLE_CRYSTAL_COUNT'])

        chosen_crystals = self.RE.sample(crystals, crystal_count)

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

    def randomize_rewards(self):
        for _, value in enumerate(self.RM.rewards):
            to_place = self.CM.get_random_collectible(self.RE, respect_weight=True,
                                                      monitor_counts=True)
            value.set_collectible(to_place)
            value.randomized = True
            self.AM.update_volume(value)

    def randomize_key_items(self):
        num_placed_key_items = 0
        exdeath_list = []

        for _ in range(0, int(self.conductor_config['NUM_KEY_ITEMS'])):
            next_key_reward = self.RE.choice([x for x in self.RM.get_rewards_by_style('key') if x.randomized == False])

            if next_key_reward.required_key_items == None:
                next_key_item = self.CM.get_random_collectible(self.RE, monitor_counts=True, of_type=KeyItem)
                next_key_reward.set_collectible(next_key_item)
                next_key_reward.randomized = True
                num_placed_key_items = num_placed_key_items + 1
            else:
                forbidden_items = []
                nodes_to_visit = []

                nodes_to_visit.extend(next_key_reward.required_key_items) #this gives us a copy of the list so we don't overwrite anything

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
                    #print("failed to place a key item here")
                    continue
                else:
                    next_key_item = self.RE.choice(possible_key_items)
                    next_key_reward.set_collectible(next_key_item)
                    if "Tablet" not in next_key_item.reward_name:
                        exdeath_list.append(next_key_reward)
                    next_key_item.required_by_placement.extend(next_key_reward.required_key_items)
                    self.CM.add_to_placement_history(next_key_item) #add this manually, usually get_random_collectible handles it
                    next_key_reward.randomized = True
                    num_placed_key_items = num_placed_key_items + 1

        for key_item_reward in [x for x in self.RM.get_rewards_by_style('key') if x.randomized == False]:
            key_item_collectible = self.CM.get_of_value_or_lower(self.RE, value=4)
            key_item_reward.set_collectible(key_item_collectible)
            key_item_reward.randomized = True

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

            shinryuu_chest.set_collectible(self.CM.get_random_collectible(self.RE, respect_weight=True, of_type=Item, monitor_counts=True))
            shinryuu_chest.mib_type = mib.monster_chest_data
            shinryuu_chest.randomized = True
            mib.processed = True
            self.AM.update_volume(shinryuu_chest)

        while self.AM.any_areas_not_full():
            #print()
            #print("not full yet")
            area = self.AM.get_emptiest_area()
            if area is None:
                break
            #print("next area to place in: " + area.area_name)
            possibles = [x for x in self.RM.rewards if x.area == area.area_name
                         and x.randomized == False and x.reward_style != 'key']
            #print("# of reward spot choices: " + str(len(possibles)))

            next_reward = self.RE.choice(possibles)

            #print("checking mib status now")
            mib = self.MIBM.get_mib_for_area(area)
            #print(mib)
            #print("next reward style: " + next_reward.reward_style)

            if mib is not None and next_reward.reward_style == "chest": #only mibs in chests
                #print("doing the mib stuff")
                to_place = self.CM.get_random_collectible(self.RE, respect_weight=True, of_type=Item, monitor_counts=True) #only items in mibs
                next_reward.mib_type = mib.monster_chest_data
                mib.processed = True
                #print(mib.processed)
                #print(next_reward.mib_type)
                #print("\n\n\n")
            else:
                #print("we chose: " + next_reward.description)
                to_place = self.CM.get_random_collectible(self.RE, respect_weight=True, of_type=next_reward.force_type,
                                                          monitor_counts=True, gil_allowed=next_reward.reward_style == "chest")
            if type(to_place) == Gil:
                if next_reward.reward_style != "chest":
                    print("Gil would have broken here")
            #print("the item to put there: " + to_place.reward_name)
            next_reward.set_collectible(to_place)
            next_reward.randomized = True
            self.AM.update_volume(next_reward)

        #print("going into cleanup")
        for i in self.AM.areas:
            #print("Checking area: " + i.area_name)
            if i.num_placed_checks < i.num_checks:
                #print("That area wasn't done")
                for j in [x for x in self.RM.rewards if x.area == i.area_name and x.reward_style != 'key']:
                    #1 spot remaining is the same as greater than or equal to
                    #thus the - 1
                    if i.current_volume >= i.area_capacity - 1:
                        #print("Area had minimum capacity remaining")
                        to_place = self.CM.get_min_value_collectible(self.RE)
                    else:
                        #print("Area had some bonus capacity")
                        remaining = self.capacity - self.current_volume
                        to_place = self.CM.get_of_value_or_lower(random,
                                                                 remaining)
                    j.set_collectible(to_place)
                    j.randomized = True
                    self.AM.update_volume(j)
            

    def randomize_shops(self):
        required_items = {i:0 for i in self.config['REQUIREDITEMS']['item_ids'].split('\n')}

        item_chance = float(self.conductor_config['ITEM_SHOP_CHANCE'])
        magic_chance = float(self.conductor_config['MAGIC_SHOP_CHANCE'])
        crystal_chance = float(self.conductor_config['CRYSTAL_SHOP_CHANCE'])

        #print("difficulty: " + str(self.difficulty))
        
        for index, value in enumerate(self.SM.shops):
            #don't waste time on invalid shops
            if value.valid is False:
                continue

            #for the discount shops, put a single item in there
            if "discount" in value.readable_name:
                value.num_items = 1
                value.shop_type = ITEM_SHOP_TYPE
                value.contents = [self.CM.get_random_collectible(random, respect_weight=True,
                                                                   monitor_counts=True,
                                                                   of_type=Item)] + [None] * 7
                continue
            
            #manage the probability of the shops
            #each time a shop of one kind is placed
            #each of the other kinds of shops gets more likely
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

            item_mod = random.choices([  2,  1,  0, -1,  -2],
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

                item_chance = item_chance - .1
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance + .05
                value.shop_type = ITEM_SHOP_TYPE
                for i in range(0, value.num_items):
                    while True:
                        item_to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item)
                        if item_to_place not in contents:
                            break

                    if item_to_place.reward_id in required_items.keys():
                        required_items[item_to_place.reward_id] = required_items[item_to_place.reward_id] + 1
                    contents.append(item_to_place)
                    
            elif kind == "magic":
                if value.num_items > 5:
                    value.num_items = 5

                item_chance = item_chance + .05
                magic_chance = magic_chance - .1
                crystal_chance = crystal_chance + .05
                value.shop_type = MAGIC_SHOP_TYPE
                try:
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                                           monitor_counts=True,
                                                                           of_type=Magic, disable_zerozero=True)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        
                except Exception as e:
                    contents = []
                    value.shop_type = ITEM_SHOP_TYPE
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item, disable_zerozero=True))
                
            else:
                if value.num_items > 4:
                    value.num_items = 4

                item_chance = item_chance + .05
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance - .1
                value.shop_type = CRYSTAL_SHOP_TYPE #shop type: crystal/ability
                try:
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                                           monitor_counts=True,
                                                                           of_type=(Crystal, Ability))
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                except Exception as e:
                    contents = []
                    value.shop_type = ITEM_SHOP_TYPE
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item, disable_zerozero=True))

            while(len(contents) < 8):
                contents.append(None)
                
            value.contents = contents

        '''
        for shop in [x for x in self.SM.shops if x.valid]:
            if shop.num_items == 0:
                print(shop.readable_name)
                print(shop.shop_type)
                print(shop.valid)
        '''

        #manage the must place items here
        for index, value in required_items.items():
            chosen_shop = None
            chosen_slot = None
            while value < 3:
                #print("guaranteeing " + index)
                item_to_place = self.CM.get_by_id_and_type(index, ITEM_TYPE)
                #print(item_to_place.reward_name)
                item_shops = [x for x in self.SM.shops if x.shop_type == ITEM_SHOP_TYPE and x.valid and x.num_items > 0 and x.num_items < 8]
                #print("number of item shops: " + str(len(item_shops)))
                chosen_shop = item_shops[random.choice(range(0, len(item_shops)))]
                slot = chosen_shop.num_items #because of 0 indexing, we want this, not this + 1
                #print("chosen slot index: " + str(chosen_slot))

                chosen_shop.contents[slot] = item_to_place
                chosen_shop.num_items = chosen_shop.num_items + 1
                value = value + 1

    def randomize_bosses(self):
        list_of_randomized_enemies = []

        # This has to be done twice in order for the enemy classes to NOT be shared objects
        # Very important or else swapping HP becomes very muddy and original hp values on enemies are not preserved
                        
        #randomized_boss_list = []
        #for formation in [x for x in self.FM.formations if x.randomized_boss == 'y']:
        #for formation in df_boss_formations['event_id'].unique():
            #randomized_boss_list.append(Formation(formation.idx, self.DM, self.EM))
            
        original_boss_list = []
        for formation in [x for x in self.FM.formations if x.randomized_boss == 'y']:
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
    

        for random_boss in [x for x in self.FM.formations if x.randomized_boss == 'y']:
            # First pick a random original boss
            original_boss = original_boss_list.pop()

            #this is specifically an unworkable situation
            #this will just cycle gogo/stalker to the end and get a new boss
            while (original_boss.enemy_1_name == "Odin" and random_boss.enemy_1_name in banned_at_odin):
                original_boss_list = [original_boss] + original_boss_list
                original_boss = original_boss_list.pop()
            if original_boss.enemy_1_name == "Odin":                
                self.odin_location_fix_patch = '\n; Odin location animation fix (resolve softlocks)\norg $'+random_boss.offset[:-1]+"F\ndb $20\n"

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
            random_boss.boss_rank = new_rank
            rank_delta = int(new_rank) - int(prev_rank)
            random_boss.rank_delta = rank_delta
            
            # Find tier
            new_tier = math.trunc((int(new_rank)-1)/3) + 1
            random_boss.tier = new_tier

            rank_adj_flag = int(new_rank) % ((new_tier * 3)-1)
            if rank_adj_flag == 1:
                stat_rank_mult = float(self.conductor_config['BOSS_RANK_ADJUST_LOW'])
            elif rank_adj_flag == 0:
                stat_rank_mult = float(self.conductor_config['BOSS_RANK_ADJUST_MED'])
            else:
                stat_rank_mult = float(self.conductor_config['BOSS_RANK_ADJUST_HIGH'])
            #print(str(rank_adj_flag)+"   "+str((int(new_rank)))+"  "+str((new_tier * 3)-1))
            #print(str(stat_rank_mult))

            # Document random_boss' previous HP
            prev_hp = random_boss.enemy_classes[0].num_hp
        
            # Find original boss's first enemy HP
            new_hp = int(original_boss.enemy_classes[0].num_hp)
            original_hp = new_hp
        
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
            if original_formation_id in ['2D','1F']:
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
                new_hp = min(new_hp - 10000,1) # shouldnt ever be different than 12500hp here, but for safety
                
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
                new_hp = max(new_hp - 10000,65535) # min, just in case
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
            base_exp = RANK_EXP_REWARD[int(new_rank)]
            
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
        
        
########  DEBUG VIEWS FOR EXP 
#            print("BOSS EXP: "+original_boss.enemy_list+" → "+random_boss.enemy_list+" EXP: "+str(new_exp))
#            exp_vals = 0
#            for i in random_boss.enemy_classes:
#                exp_vals = exp_vals + i.num_exp
#                print("--------"+i.enemy_name+": "+str(i.num_exp))
#                
#            print("-----TOTAL: "+str(exp_vals))
#            print("****************************")

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
            #import pdb
            #pdb.set_trace()
            for enemy in random_boss.enemy_classes:
                list_of_randomized_enemies.append(enemy) #maintain a list of only the enemies we've actually randomized
                text_str = text_str + '; ENEMY: '+enemy.enemy_name+'\n'
                df_temp = self.DM.files['boss_scaling'][(self.DM.files['boss_scaling']['idx']==int(enemy.idx)) & (self.DM.files['boss_scaling']['tier']==new_tier)]
                
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
                enemy.rank_mult = stat_rank_mult
                enemy.apply_rank_mult() 
                enemy.ai_patch_text = text_str
            #if not write_flag:
            #    text_str = og_text
            #with open('../../projects/test_asm/boss_hp_ai.asm','a') as file:
            #    file.write(text_str)                    

            # Final presentation & updating
            
            enemy_change = random_boss.enemy_classes[0].enemy_name + " (Rank "+prev_rank+") > " + original_boss.enemy_classes[0].enemy_name+" (Rank "+new_rank+")"
            random_boss.enemy_change = enemy_change
            
            '''
            # For log file
            with open('rando_output/'+datetime_now+'_boss_swap_log.txt','a') as file:
                file.write(enemy_change+"\n")
                file.write("HP of first enemy in formations: "+str(prev_hp)+ " > " + str(original_hp)+"\n")
                for enemy in random_boss.enemy_classes:
                    file.write(str(enemy.enemy_name)+" HP: "+str(enemy.num_hp)+"\n")
                file.write("Base EXP: "+str(base_exp)+" > Adjusted EXP: "+str(new_exp)+"\n")
                file.write("Rank delta: "+str(rank_delta)+"   Stat multiplier: "+str(rank_mult)+"\n")
                file.write("-------------"+"\n")
            
            
    
            with open('rando_output/'+datetime_now+'_boss_swap.asm','a') as file:
                for i in randomized_boss_list:
                    file.write(i.retrieve_asar()+"\n")
                    file.write(";---------\n")
            '''

        self.EM.relevant_enemies = list_of_randomized_enemies
        


    def starting_crystal_patch(self):
        output = ";================"
        output = output + "\n;starting crystal"
        output = output + "\n;================\n"
        output = output + "org $" + self.conductor_config['STARTING_CRYSTAL_ADDRESS']
        output = output + "\ndb $" + self.starting_crystal.patch_id
        output = output + ", $" + self.starting_crystal.starting_weapon_id
        output = output + ", $" + self.starting_crystal.starting_spell_id
        output = output + ", $" + self.starting_crystal.starting_ability_id
        output = output + "\n"
        return output

    def starting_crystal_spoiler(self):
        output = "-----STARTING JOB, WEAPON, MAGIC-----"
        output = output + "\nStarting job:     " + self.starting_crystal.reward_name    
        output = output + "\nStarting weapon:  " + self.starting_crystal.starting_weapon
        output = output + "\nStarting spell:   " + self.starting_crystal.starting_spell
        output = output + "\nStarting ability: " + self.starting_crystal.starting_ability
        output = output + "\n-----***************************-----\n"
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
            weakness_start = 6
            
            random_elements = sorted(list(elemental_map.keys()), key=lambda k: random.random())
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
            num_afflict = 3
            
            status_afflict = []
            random_statuses = sorted(list(status_map.keys()), key=lambda k: random.random())
            while num_afflict > 0:
                i = random.choice(random_statuses)
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
        self.superbosses_spoiler = self.superbosses_spoiler + '\n--------------- SUPERBOSSES: --------------- \n'
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
            random_type = random.choice(list(creature_map.keys()))
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
                new_stat = str(round(int(getattr(random_enemy,stat)) + random.randint(-10,10)))
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
                random_skill_hex = random.choice(aoe_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                aoe_skill_names.append(random_skill_name)
                output_str = output_str + '; New AOE skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            for ai in ai_single:
                random_skill_hex = random.choice(single_target_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                single_skill_names.append(random_skill_name)
                output_str = output_str + '; New single target skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            for ai in ai_status:
                random_skill_hex = random.choice(status_skills)
                random_skill_name = skill_name_dict[random_skill_hex]
                status_skill_names.append(random_skill_name)
                output_str = output_str + '; New status skill: '+random_skill_name+'\norg $'+ai+'\ndb $'+random_skill_hex+'\n'
            self.superbosses_spoiler = self.superbosses_spoiler + "AOE skills: "+str(aoe_skill_names)+"\n"
            self.superbosses_spoiler = self.superbosses_spoiler + "Single target skills: "+str(single_skill_names)+"\n"
            self.superbosses_spoiler = self.superbosses_spoiler + "Status skills: "+str(status_skill_names)+"\n\n\n"
            
            
            # Add these to the relevant enemies list             
            self.EM.relevant_enemies.append(random_enemy)
            
        # Finally, create the "CODE OF THE VOID"
        
        # For some reason, couldn't get this to load in from star import from text_parser
        import os
        text_dict2 = pd.read_csv(os.path.join(os.path.pardir,'data','tables','text_tables','text_table_chest.csv'),header=None,index_col=1).to_dict()[0]
        
        letters = random.sample('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',6)
        code_str = 'db '
        for letter in letters:
            code_str = code_str + "$" +str(text_dict2[letter]) + ", "
        code_str = code_str[:-2]
        output_str = output_str + '\n; CODE OF THE VOID: \norg $E77476\n'+code_str+'\norg $F80900\n'+code_str+'\n\n'

        
        self.superbosses_spoiler = self.superbosses_spoiler + "\n ***** CODE OF THE VOID *****\n"+''.join(letters)
            
        return output_str
                
                
        



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
        song = random.choice(songs)
        return ';Karnak escape song\norg $C8796D\ndb $'+song+"\n"
    

    def kuzar_text_patch(self):
        kuzar_reward_addresses = ['C0FB02','C0FB04','C0FB06','C0FB08','C0FB0A','C0FB0C','C0FB0E','C0FB10','C0FB12','C0FB14','C0FB16','C0FB18']
        kuzar_text_addresses =   ['E23F98','E240A5','E23F7A','E2404C','E240C4','E23FD6','E24011','E24088','E23FF4','E2406A','E23FB7','E2402D']
        
        output = ";=====================\n"
        output = output + ";Kuzar Reward Text Fix\n"
        output = output + ";=====================\n"

        for i in range(0, len(kuzar_reward_addresses)):
            #print("working on address: " + kuzar_reward_addresses[i])
            c = self.RM.get_reward_by_address(kuzar_reward_addresses[i]).collectible
            #print("collectible there is: " + c.reward_name)
            #@ will be used for our newline character, won't otherwise be present, and don't have the problems \n causes
            output = output + self.TP.run_kuzar_encrypt({c.reward_name.replace('->', '@').replace(' Progressive', '@'): kuzar_text_addresses[i]})
        return output

    def randomize(self, random_engine=None):
        if random_engine is None:
            random_engine = self.RE
        
        self.AM.change_power_level(float(self.conductor_config['DEFAULT_POWER_CHANGE']))
        print("Randomizing key items...")
        num_placed_key_items = self.randomize_key_items()
        #print(num_placed_key_items)
        while num_placed_key_items < NUM_KEY_ITEMS:
            #print("didn't place them all, retrying")
            self.CM.reset_all_of_type(KeyItem)
            self.RM.reset_rewards_by_style("key")
            num_placed_key_items = self.randomize_key_items()

        print("Randomizing rewards...")
        self.randomize_rewards_by_areas()
        for i in self.RM.rewards: #this is a fix for an unsolved bug where some rewards don't get collectibles. it's rare, but it happens
            if i.collectible is None:
                if i.reward_style != 'key':
                   i.collectible = self.CM.get_random_collectible(self.RE, monitor_counts=True, gil_allowed=False)
        print("Randomizing shops...")
        self.randomize_shops()
        print("Randomizing bosses...")
        self.randomize_bosses()

        for i in self.RM.rewards:
            if i.collectible is None:
                print(i.description)
        # Patch now comes first, because some functions (randomize_superbosses) now create the spoiler as part of their process

        patch = ""
        patch = patch + self.starting_crystal_patch()
        patch = patch + self.RM.get_patch()
        patch = patch + self.exdeath_patch
        patch = patch + self.SM.get_patch()
        patch = patch + self.SPM.get_patch()
        patch = patch + self.randomize_superbosses() # this comes first, because it updates the contents of EnemyManager. 
        patch = patch + self.EM.get_patch(relevant=True)
        patch = patch + self.FM.get_patch()
        patch = patch + self.karnak_escape_patch()
        patch = patch + self.kuzar_text_patch()
        patch = patch + self.odin_location_fix_patch

        spoiler = ""
        spoiler = spoiler + self.starting_crystal_spoiler()
        spoiler = spoiler + self.RM.get_spoiler()
        spoiler = spoiler + self.SM.get_spoiler()
        #spoiler = spoiler + self.EM.get_spoiler()
        spoiler = spoiler + self.FM.get_spoiler()
        spoiler = spoiler + self.superbosses_spoiler

        return(spoiler, patch)

#c = Conductor(random)
#(spoiler, patch) = c.randomize()
#print(spoiler)