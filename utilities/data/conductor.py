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



#### 
# NEW DATA
#
#
#
df_boss_scaling= pd.read_csv('tables/boss_scaling.csv')
enemy_skills = pd.read_csv('../data/tables/enemy_skills.csv',index_col='name').to_dict()['hex']
#
#
#
####
STARTING_CRYSTAL_ADDRESS = 'E79F00'
DEFAULT_POWER_CHANGE = 1.5
STAT_MULTIPLIER = .25
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


class Conductor():
    def __init__(self, random_engine):
        self.DM = DataManager()                        #Data manager loads all the csv's into memory and sets them up for processing
        self.CM = CollectibleManager(self.DM)          #Set up collectibles (Includes Items, magic, crystals, and abilities)
        self.RM = RewardManager(self.CM, self.DM)      #Set up rewards (Includes chests and events)
        self.SM = ShopManager(self.CM, self.DM)        #Set up shops
        self.SPM = ShopPriceManager(self.CM, self.DM)  #Set up shop prices
        self.AM = AreaManager(self.DM)                 #Set up areas (Tule, The Void, etc)
        self.EM = EnemyManager(self.DM)                #Set up enemies and bosses
        self.FM = FormationManager(self.DM, self.EM)   #Set up battle formations
        self.RE = random_engine
        
        self.difficulty = random.randint(1,10)
        crystals = self.get_crystals()
        self.starting_crystal = crystals[0]
        self.chosen_crystals = crystals[1]
        self.chosen_crystals_names = [x.reward_name for x in self.chosen_crystals]

        self.weigh_collectibles()

    def get_crystals(self):
        crystals = self.CM.get_all_of_type(Crystal)
        starting_crystal = self.RE.choice(crystals)
        if starting_crystal.starting_spell_list == ['']:
            starting_crystal.starting_spell = "None"
            starting_crystal.starting_spell_id = "FF"
        else:
            index = self.RE.randint(0, len(starting_crystal.starting_spell_list)-1)
            starting_crystal.starting_spell = starting_crystal.starting_spell_list[index]
            starting_crystal.starting_spell_id = starting_crystal.starting_spell_ids[index]
            
        crystals = [x for x in crystals if x != starting_crystal]

        crystal_count = self.RE.randint(8, len(crystals))
        crystal_count = crystal_count - (self.difficulty // 3)
        if crystal_count < 4:
            crystal_count = 4

        chosen_crystals = self.RE.sample(crystals, crystal_count)

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
            to_place = self.CM.get_random_collectible(self.RE, respect_weight=True,
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

            next_reward = self.RE.choice(possibles)
            #print("we chose: " + next_reward.description)
            to_place = self.CM.get_random_collectible(self.RE, respect_weight=True,
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
        required_items = {}
        required_items["E6"] = False #Revivify
        required_items["F1"] = False #Cabin
        required_items["E1"] = False #HiPotion
        required_items["E4"] = False #Fenix Down
        required_items["E2"] = False #Ether

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
                value.shop_type = "03" #shop type: item
                for i in range(0, value.num_items):
                    while True:
                        item_to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item)
                        if item_to_place not in contents:
                            break

                    if item_to_place.reward_id in required_items.keys():
                        required_items[item_to_place.reward_id] = True
                    contents.append(item_to_place)
                    
            elif kind == "magic":
                if value.num_items > 5:
                    value.num_items = 5

                item_chance = item_chance + .05
                magic_chance = magic_chance - .1
                crystal_chance = crystal_chance + .05
                value.shop_type = "00" #shop type: magic
                try:
                    for i in range(0, value.num_items):
                        while True:
                            item_to_place = self.CM.get_random_collectible(random, respect_weight=True,
                                                                           monitor_counts=True,
                                                                           of_type=Magic)
                            if item_to_place not in contents:
                                break

                        contents.append(item_to_place)
                        
                except Exception as e:
                    contents = []
                    value.shop_type = "03"
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item))
                
            else:
                if value.num_items > 4:
                    value.num_items = 4

                item_chance = item_chance + .05
                magic_chance = magic_chance + .05
                crystal_chance = crystal_chance - .1
                value.shop_type = "07" #shop type: crystal/ability
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
                    value.shop_type = "03"
                    for i in range(0, value.num_items):
                        contents.append(self.CM.get_random_collectible(random, respect_weight=True,
                                                                       monitor_counts=True,
                                                                       of_type=Item))

            while(len(contents) < 8):
                contents.append(None)
                
            value.contents = contents

        #manage the must place items here
        #extra checking done to make sure we don't replace
        #a must place item with a different one
        for index, value in required_items.items():
            used_spots = []
            chosen_shop = None
            chosen_slot = None
            if value is False:
                #print("guaranteeing " + index)
                item_to_place = self.CM.get_by_id_and_type(index, "40")
                #print(item_to_place.reward_name)
                while True:
                    item_shops = [x for x in self.SM.shops if x.shop_type == "03"]
                    #print("number of item shops: " + str(len(item_shops)))
                    chosen_shop = random.choice(range(0, len(item_shops)))
                    #print("chosen shop index: " + str(chosen_shop))
                    #print("chosen shop num items: " + str(self.SM.shops[chosen_shop].num_items))
                    chosen_slot = random.choice(range(0, self.SM.shops[chosen_shop].num_items - 1))
                    #print("chosen slot index: " + str(chosen_slot))
                    if (chosen_shop, chosen_slot) not in used_spots:
                        break

                used_spots.append((chosen_shop, chosen_slot))

                self.SM.shops[chosen_shop].contents[chosen_slot] = item_to_place

    def randomize_bosses(self):
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
                # and the list will be reduced to 0 as random formations are assigned
                
       
        # Shuffle original boss list
        self.RE.shuffle(original_boss_list)
        
        # Process: Draw randomly from original formation list (using pop method) and update randomized boss formations
        # Take original list's event_formation_reference and write to randomized event_lookup_loc1 and event_lookup_loc2
        #         (This will assign the randomized formation to the original's location, so Karlabos at Sol Cannon)
        
        
        
        # Create patch file for custom AI and clear out any previous 
        with open('../../projects/test_asm/boss_hp_ai.asm','w') as file:
            file.write('hirom\n')
    

        for random_boss in [x for x in self.FM.formations if x.randomized_boss == 'y']:
            # First pick a random original boss
            original_boss = original_boss_list.pop()
        
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
                stat_rank_mult = 0.8
            elif rank_adj_flag == 0:
                stat_rank_mult = 1.0
            else:
                stat_rank_mult = 1.2
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
            # TRITON/PHOBOS/NEREGEID
            if original_formation_id in ['21']:
                new_hp = new_hp * 4
                
            # CLAUSE FOR ENEMIES WITH 5x BOSS AS SEPARATE ENEMIES
            # ARCHEOAVIS
            if original_formation_id in ['0F']:
                new_hp = new_hp * 5
                
            # CLAUSE FOR NECROPHOBIA:
            if original_formation_id in ['4B']:
                # This takes Necrofobia's HP and applies a 1.5x bonus. Barriers have 8k, Necrofobia has 40k. Results in 60k, normalized in STEP 2 later
                 new_hp = new_hp * 2
                 
            
            # No clause for:
                # Sandworm - it technically grabs the Hole's HP, but its 3k 
                # Sergeant - grabs Sergeant's HP, which is shared with IronClaw
                # Shiva - Shiva's HP is enough
                # Sol Cannon - Sol Cannon's HP is significant enough, Launchers ignored
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
                # Apply 50% to Launchers
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
            rank_mult = (abs(rank_delta) * STAT_MULTIPLIER) + 1 
            
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
            # WINGRAPTOR, SIREN, LIQUIFLAME, ARCHEOAVIS, MELUSINE, CARBUNKLE, GILGAMESH, TWINTANIA, STALKER, SANDWORM
            if random_boss.event_id in ['01','03','07','0F','2B','22','23','4A','2E','0A']:
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
                text_str = text_str + '; ENEMY: '+enemy.enemy_name+'\n'
                df_temp = df_boss_scaling[(df_boss_scaling['idx']==int(enemy.idx)) & (df_boss_scaling['tier']==new_tier)]
                
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
                        text_str = text_str + 'db $'+enemy_skills[skill]+"\n"
                    
                    
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
            if not write_flag:
                text_str = og_text
            with open('../../projects/test_asm/boss_hp_ai.asm','a') as file:
                file.write(text_str)                    



            
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

    def starting_crystal_patch(self):
        output = ";================"
        output = output + "\n;starting crystal"
        output = output + "\n;================\n"
        output = output + "\norg $" + STARTING_CRYSTAL_ADDRESS
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

    def randomize(self, random_engine=None):
        if random_engine is None:
            random_engine = self.RE
        
        self.AM.change_power_level(DEFAULT_POWER_CHANGE)
        # print("Randomizing rewards...")
        # self.randomize_rewards_by_areas()
        # print("Randomizing shops...")
        # self.randomize_shops()
        print("Randomizing bosses...")
        self.randomize_bosses()

        spoiler = ""
#        spoiler = spoiler + self.starting_crystal_spoiler()
#        spoiler = spoiler + self.RM.get_spoiler()
#        spoiler = spoiler + self.SM.get_spoiler()
        spoiler = spoiler + self.EM.get_spoiler()
        spoiler = spoiler + self.FM.get_spoiler()

        patch = ""
#        patch = patch + self.starting_crystal_patch()
#        patch = patch + self.RM.get_patch()
#        patch = patch + self.SM.get_patch()
#        patch = patch + self.SPM.get_patch()
        patch = patch + self.EM.get_patch()
        patch = patch + self.FM.get_patch()

        return(spoiler, patch)