import pandas as pd
import random
import numpy as np
import datetime as dt
from enemy_handler import *


# Boss formations      

df_enemy_data = df_enemy_table[df_enemy_table['enemy_rank']=='enemy']
df_boss_data = df_enemy_table[df_enemy_table['enemy_rank']=='boss']
df_boss_formations = df_formation_table[df_formation_table['randomized_boss']=='y']



# Adjust mult refers to how much to power up each rank
# Each rank results in exp for 1 level at levels 3/6/9/12..etc based on 
# Original location's rank * 3. So Rank 1 results in enough exp for 1 char to level up from 3 to 4

# Needs to be at least multiplied by 4 for every character
# Past there, all reward balancing based 

adjust_mult = 6
rank_exp_reward = {1:50*adjust_mult,
2:101*adjust_mult,
3:289*adjust_mult,
4:655*adjust_mult,
5:1265*adjust_mult,
6:2184*adjust_mult,
7:3480*adjust_mult,
8:5218*adjust_mult,
9:7466*adjust_mult,
10:10289*adjust_mult}

# Stat multiplier, used for balancing. 
# For every RANK increase/decrease on a boss, 
#   inc/dec the below percentage to core stats (phys/mag pwr/def)
STAT_MULTIPLIER = .25


class Formation(object):
    def __init__(self,index,original_flag = False):
        self.idx = index
        self.generate_from_df(df_boss_formations)
        self.assign_enemies(original_flag)
        self.enemy_change = ''
    def generate_from_df(self, df):
        s = df[df['event_id']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Formation class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
                
    def assign_enemies(self,original_flag):
        enemy_list = []
        for enemy in ['enemy_1','enemy_2','enemy_3','enemy_4','enemy_5','enemy_6','enemy_7','enemy_8']:
            # Find enemy ID
            enemy_id = getattr(self,enemy)
 
            
            # If it's $FF, then ignore entirely
            if enemy_id == 'FF':
                continue
            
            # ORIGINAL FLAG
            # if the original flag is called, a NEW enemy object is created per enemy
            # Otherwise, the shared pool of enemies for the output will be used
            
            # What happens is that we need to preserve the enemies that are being randomized elsewhere
            # primarly for loot and stats. But we need to make sure those same enemies are the same objects
            # All the way through the end for our randomized output. 
            
            # But when we use the original flag, it's for comparison to the vanilla enemy
            # which is VERY important for preserving boss swap
            
            # This avoids a situation such as:
            # Swap LiquidFlame with TwinTania, giving 55000 hp to LiquidFlame
            # Then, swap WingRaptor with LiquidFlame, giving 55000 hp to WingRaptor
            # That's NOT what we want. We want 3000hp to WingRaptor (LiquidFlame's vanilla hp), 
            #   which is why this original clause exists
            
            
            elif original_flag:
                # Create new Enemy classes to grab from original, unaltered/randomized data
                # If it's Byblos or Ifrit, the only exceptions, grab from enemies, else grab from bosses
                if enemy_id == '20' or enemy_id == '35':
                    new_enemy = Enemy(enemy_id,df_enemy_data,'hex')
                else:
                    new_enemy = Enemy(enemy_id,df_boss_data,'hex')
            else:
                # If it's not original, iterate through all_enemies list 
                # If it's Byblos or Ifrit, the only exceptions, grab from enemies, else grab from bosses
                if enemy_id == '20' or enemy_id == '35':
                    for enemy in all_enemies[:255]:  # Search through first set of enemies before bosses
                        if enemy.idx_hex == enemy_id:
                            new_enemy = enemy
                else:
                    for enemy in all_enemies[255:]:  # Search through last set of enemies, bosses only
                        if enemy.idx_hex == enemy_id:
                            new_enemy = enemy
            enemy_list.append(new_enemy)
            
        # Assign list of enemy class objects to self for all enemies
        self.enemy_classes = enemy_list
        
        
    def retrieve_asar(self):
        return '; '+self.enemy_change+' \norg $'+self.event_lookup_loc1+'\ndb $'+self.event_formation_reference[0:2]+", $"+ self.event_formation_reference[2:4]+' \norg $'+self.event_lookup_loc2+'\ndb $'+self.event_formation_reference[0:2]+", $"+ self.event_formation_reference[2:4]




def randomize_bosses_and_generate_log_and_code():
    # This has to be done twice in order for the enemy classes to NOT be shared objects
    # Very important or else swapping HP becomes very muddy and original hp values on enemies are not preserved
                    
    randomized_boss_list = []
    for formation in df_boss_formations['event_id'].unique():
        randomized_boss_list.append(Formation(formation))
        
    original_boss_list = []
    for formation in df_boss_formations['event_id'].unique():
        original_boss_list.append(Formation(formation,original_flag=True))
        
    # Very explicit definitions
    # Randomized boss list will be updated
    # Original boss list will be referenced for what boss location & stats to change to, 
            # and the list will be reduced to 0 as random formations are assigned
            
   
    # Shuffle original boss list
    random.shuffle(original_boss_list)
    
    # Process: Draw randomly from original formation list (using pop method) and update randomized boss formations
    # Take original list's event_formation_reference and write to randomized event_lookup_loc1 and event_lookup_loc2
    #         (This will assign the randomized formation to the original's location, so Karlabos at Sol Cannon)
    

    for random_boss in randomized_boss_list:
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
        
        
        # First use 25% multiplier over 100% of the original (the +1 at the end)
        rank_mult = (abs(rank_delta) * STAT_MULTIPLIER) + 1 
        
        # If it's negative, then we're applying a penalty, and need to inverse 
        if rank_delta < 0:
            rank_mult = round(1 / rank_mult,2)
        
        # Assign to Formation class and all enemies
        random_boss.rank_mult = rank_mult
        for enemy in random_boss.enemy_classes:
            enemy.rank_mult = rank_mult
    
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
        # WINGRAPTOR, SIREN, LIQUIFLAME, ARCHEOAVIS, MELUSINE, CARBUNKLE, GILGAMESH, TWINTANIA, STALKER, SANDWORM
        if random_boss.event_id in ['01','03','07','0F','2B','22','23','4A','2E','0A']:
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
    
    
        # EXP
        # Now assign exp based on two things
        # 1) Set exp based on rank of original location
        # 2) Adjust exp with a bonus/detriment based on the rank multiplier
        
        # Get base exp
        base_exp = rank_exp_reward[int(new_rank)]
        
        # Adjust base exp based on multiplier
        # This is INVERTED multiplier
        # If you fight a hard boss at an easy location, the multiplier will be less than 1 
        # To reduce its stats
        # However, you want to still reward the player MORE because it is still a hard boss
        # So invert the multiplier
        
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
    
        
        
        # After all changes, apply rank multiplier to all enemies in the formation
        
        for enemy in random_boss.enemy_classes:
            enemy.apply_rank_mult()
        
        # Final presentation & updating
        
        enemy_change = random_boss.enemy_classes[0].enemy_name + " (Rank "+prev_rank+") > " + original_boss.enemy_classes[0].enemy_name+" (Rank "+new_rank+")"
        random_boss.enemy_change = enemy_change

        
            
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
        
def full_randomize():
    # Calls boss swap & loot randomize functions, generates log 

    # Randomize loot
    randomize_loot()    
    # Boss swap, also outputting specific log/code to boss swap
    randomize_bosses_and_generate_log_and_code()
    # Output enemy stats 
    generate_enemy_code_and_logs()
    