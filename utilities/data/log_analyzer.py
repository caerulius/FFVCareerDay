# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 10:15:04 2019

"""
import os
import glob
import shutil
import pandas as pd
import numpy as np
import sys
import random
import datetime


sys.path.append(os.path.join(os.path.pardir))
from conductor import *


SEED_GENERATE_NUM = 3

def get_key_item_df(spoiler,random_num):
    key_items = spoiler.split("-----KEY ITEMS------")[1].split("-----*********-----")[0].split("\n")
    key_items.remove('')
    key_items.remove('')
    key_items_dict = {}
    for i in key_items:
        key, val = i.split(" -> ")
        key_items_dict[key] = val
    df_key = pd.DataFrame.from_dict(key_items_dict,orient='index')
    df_key.reset_index(inplace=True)
    df_key.columns = ['boss','key']
    df_key['seed'] = random_num
    return df_key

def get_rewards_df(spoiler,random_num):
    rewards = spoiler.split("-----CHESTS AND EVENTS-----")[1].split("-----****************-----")[0].split("\n")
    rewards.remove('')
    rewards.remove('')
    rewards_dict = {}
    for i in rewards:
        key, val = i.split(" -> ")
        if " (monster in a box)" in val:
            val = val.replace(" (monster in a box)","")
            mib = 'MIB'
        else:
            mib = ""
        rewards_dict[key] = val, mib
    global df_reward
    df_reward = pd.DataFrame.from_dict(rewards_dict,orient='index')
    df_reward.reset_index(inplace=True)
    df_reward.columns = ['check','reward','mib']
    
    # check for seed sellable value
    df_value = pd.read_csv('tables/shop_prices.csv')
    df_value = df_value.iloc[:256,:]
    df_value  = df_value[df_value['resell']=='HALF']
    df_value['resell_val'] = df_value['int_price'] / 2
    df_value['resell_val'] = df_value['resell_val'].astype(int)
    df_value.set_index('content_name',inplace=True)
    val_dict = df_value[['resell_val']].to_dict()['resell_val']
    
    def apply_value(rwd):
        try:
            if "gil" in rwd:
                val = int(rwd.replace(" gil",""))
            else:
                if rwd in val_dict.keys():
                    val = val_dict[rwd]
                else:
                    val = 0
            return val
        except (Exception) as e:
            print ("Error on reward "+str(rwd)+" error: "+str(e))
    
    df_reward['reward_value'] = df_reward['reward'].apply(apply_value)
    df_reward['seed'] = random_num
    return df_reward

def get_crystals(c,random_num):
    crystals = c.chosen_crystals_names
    crystals2 = []
    for i in crystals:
        crystals2.append(i.replace(" Job Crystal",""))
    df_crystal = pd.DataFrame(columns=['crystal'],data=crystals2)
    df_crystal['seed'] = random_num
    return df_crystal

def get_shops(c,random_num):
    shops = c.SM.get_spoiler()
    shops = shops.replace("-----SHOPS-----\n","")
    shops = shops.split("\n\n")
    shops.remove('-----*****-----\n')
    item_list = []
    for shop in shops:
        data = shop.split("\n")
        shop_name = data[0].split(": ")[1]
        shop_type = data[1].split(": ")[1]
        for item in data[2:]:
            item_dict = {}
            item_name = item.split("-> ")[1]
            item_dict['shop_name'] = shop_name
            item_dict['shop_type'] = shop_type
            item_dict['item'] = item_name
            item_list.append(item_dict)
    df = pd.DataFrame(data=item_list)
    df['seed'] = random_num
    df = df[['shop_name','shop_type','item','seed']]
    return df
    


    
def check_completeable(df_key):
    '''
    Pass in a dataframe that has 2 columns:
        boss = boss LOCATION guarding the key 
        key = key reward 
        
        (this comes from the spoiler log table from RewardManager's key items after string cleaning)
        # of rows should equal # of keys in the game 
        
    Returns a dataframe with:
        output_str = spoiler log version of seed playthrough with spheres
        all_keys_obtained_flag = boolean if all keys were acquired
        completeable_seed_flag = boolean if all tablets were acquired
        tablets_sphere_num = how many spheres for all tablets
        sphere_num = how many spheres for all keys 
        sphere_zero_keys_num = how many keys were placed in sphere 0
        seed = seed number
        
        Use methods like df['completeable_seed_flag'] to get boolean for y/n completeable
    '''
    def add_to_output(output, add):
        return output + add + "\n"
    output_str = ''    
    
    seed = list(df_key['seed'].unique())[0]
    df = pd.read_csv('tables/rewards.csv')
    df = df[df['reward_style']=='key'][['description','required_key_items']]
    df = pd.merge(df,df_key,left_on='description',right_on='boss')[['boss','required_key_items','key']]
    df.columns = ['boss','req','key_reward']
    
    obtained_keys = []
    keys_in_seed = df.shape[0]
    
    def clean_str(x):
        return str(x).replace("“","").replace("”","").strip("][").replace("nan","")
    df['req'] = df['req'].apply(clean_str)
    
    # First add all sphere 0 checks to obtained keys
    #   and mark the dataframe with a new column for obtained keys 
    [obtained_keys.append(i) for i in df[df['req']=='']['key_reward']]
    df['obtained'] = df['req'].apply(lambda x: "y" if x == '' else "")
    sphere_zero_keys = len(obtained_keys)
    
    
    # Decided to build out sphere 0 logging 
    sphere_zero_string = ''
    for index, row in df[df['obtained'] == "y"].iterrows():
        sphere_zero_string = sphere_zero_string + "Sphere 0:\t"+ row['key_reward'] + "\t ("+row['boss']+" loc)\n"

    
    output_str = add_to_output(output_str,"Number of sphere zero keys: ("+str(sphere_zero_keys)+")")
    output_str = add_to_output(output_str,sphere_zero_string[:-1]) # remove last line break
    # Iterate through dataframe to check all non-obtained reqs with current set of keys
    #   But cap it at a limit of times to check to not infinitely loop
    num_sphere = 1               # started it at 1 for convenience
    num_sphere_limit = 100       # hard cap on how many iterations to do for the loop
    tablets_sphere = 0              # init as zero, when 4 tablets acquired, mark done
    
    while len(df['obtained'][df['obtained'] == "y"]) < keys_in_seed and num_sphere < num_sphere_limit:
        for index, row in df[df['obtained']==""].iterrows():
            row_keys = row['req'].split(", ")
            check_flag = True
            for key in row_keys:
                if key in obtained_keys:
                    continue
                else:
                    check_flag = False
            if check_flag: # if all the keys were present and the flag wasnt marked, then the REWARD to key items and mark the row as obtained
                output_str = add_to_output(output_str,"Sphere "+str(num_sphere)+":\t"+row['key_reward'] + "\t ("+row['boss']+" loc via "+row['req']+")")
                df['obtained'].iloc[index] = 'y'
                obtained_keys.append(row['key_reward'])
                # Upon getting a new item, perform check for 4 tablets
                if "1st Tablet" in obtained_keys and "2nd Tablet" in obtained_keys and "3rd Tablet" in obtained_keys and "4th Tablet" in obtained_keys and tablets_sphere == 0:
                    tablets_sphere = num_sphere
            else:
                pass
        num_sphere = num_sphere + 1

        
    if "1st Tablet" in obtained_keys and "2nd Tablet" in obtained_keys and "3rd Tablet" in obtained_keys and "4th Tablet" in obtained_keys:
        output_str = add_to_output(output_str,"All tablets obtained ("+str(tablets_sphere)+" spheres).")
        completeable_seed_flag = True
    else:
        output_str = add_to_output(output_str,"All tablets NOT obtained.")
        print("All tablets NOT obtained.") # specifically print if this happens
        completeable_seed_flag = False
    
    if len(obtained_keys) >= keys_in_seed:
        output_str = add_to_output(output_str,"All keys obtained.")
        all_keys_obtained_flag = True
    else:
        output_str = add_to_output(output_str,"All keys NOT obtained.")
        all_keys_obtained_flag = False
        
    print(output_str) # eventually disable, but for viewing now 
    return pd.DataFrame(columns=['playthrough_log','all_keys_obtained_flag','completeable_seed_flag','sphere_num','tablets_sphere_num','sphere_zero_keys_num','seed'],
                           data = [[output_str,all_keys_obtained_flag,completeable_seed_flag,num_sphere,tablets_sphere,sphere_zero_keys,seed]])


def process_spoiler_data(num_iterations):
    df_key_master = pd.DataFrame()
    df_sphere_master = pd.DataFrame()
    df_rewards_master = pd.DataFrame()
    df_crystals_master = pd.DataFrame()
    df_shops_master = pd.DataFrame()
    
    for num in range(0,num_iterations):
        try:
            c = Conductor(random)
            random_num = round(random.random()*10000000)
            c.randomize(random_num)
            spoiler = c.RM.get_spoiler()
            df_key_temp = get_key_item_df(spoiler,random_num)
            df_sphere_master = df_sphere_master.append(check_completeable(df_key_temp))
            df_key_master = df_key_master.append(df_key_temp)
            df_rewards_master = df_rewards_master.append(get_rewards_df(spoiler,random_num))
            df_crystals_master = df_crystals_master.append(get_crystals(c,random_num))
            df_shops_master = df_shops_master.append(get_shops(c,random_num))
        except:
            print("Failure on seed: "+str(random_num))
            pass
    return df_sphere_master, df_key_master, df_rewards_master, df_crystals_master, df_shops_master

def run_pivots(df_rewards,df_shops):
    
    df_item = pd.read_csv('tables/item_id.csv')[['readable_name','value']]
    df_magic = pd.read_csv('tables/magic_id.csv')[['readable_name','value']]
    df_ability = pd.read_csv('tables/ability_id.csv')[['readable_name','value']]
    df_all = df_item.append(df_magic).append(df_ability)
    
    df_rewards_value = df_rewards.copy()
    
    # Average rewards value (1-4)

    df_rewards = pd.merge(df_rewards,df_all,left_on="reward",right_on="readable_name")
    df_rewards.pivot_table(index=['check','reward'],values='value',aggfunc='count').to_csv('log_analysis_render/rewards_count.csv')
    df1 = df_rewards.pivot_table(index=['check'],values='value',aggfunc=np.average)

    # Average shops value (1-4)
    df_shops = pd.merge(df_shops,df_all,left_on="item",right_on="readable_name")[['shop_name','shop_type','item','value']]
    df_shops.pivot_table(index=['shop_name','item'],values='value',aggfunc='count').to_csv('log_analysis_render/shops_count.csv')
    df2 = df_shops.pivot_table(index=['shop_name'],values='value',aggfunc=np.average)
    


    # Used for early game checking
    def apply_early_checks(check):
        list_of_early_areas = ['Wind Crystal',"Pirate's Cave","Tule","Wind Shrine","Tycoon","Ship Graveyard","Walse Castle","Carwen","at Lix","Black Choco","at Istory","Toad Event","Beginner's House","North Mountain"]
        for i in list_of_early_areas:
            if i in check:
                return "y"
        
        return ""
    
    
    # Seed value (in gil)
    df3 = pd.DataFrame()
    df_rewards_value['early_game'] = df_rewards_value['check'].apply(apply_early_checks)
    for seed in df_rewards_value['seed'].unique():
        df = df_rewards_value[df_rewards_value['seed']==seed]
        reward_sum = df['reward_value'].sum()
        reward_avg = round(df['reward_value'].mean(),2)
        reward_sellable_count = df[df['reward_value']>0]['reward_value'].count()
        reward_sellable_count_pct = round(reward_sellable_count / df['reward_value'].count(),2)
        reward_earlygame_sum = df[df['early_game']=='y']['reward_value'].sum()


        data_dict = pd.DataFrame({'seed':[seed],'reward_sum':[reward_sum],'reward_avg':[reward_avg],'reward_sellable_count':[reward_sellable_count],'reward_sellable_count_pct':[reward_sellable_count_pct],'reward_earlygame_sum':[reward_earlygame_sum]})
        df3 = df3.append(data_dict,sort=None)
        
    df3.to_csv('log_analysis_render/latest_data/seed_value.csv',index=None)
    
    
    # TO DO:
    # Mess around with not using pivot table and using something like sum(df_rewards['reward_value']) 
    #   then implement early_checks_value()
    
    return df1, df2
   
    









def run_data_collection(SEED_GENERATE_NUM=1):
    # Create new path based on timestamp 
    timestamp = datetime.datetime.today().strftime("%Y-%m-%d_%H-%M-%S")
    new_path = os.path.join('log_analysis_render',timestamp)
    os.mkdir(new_path)
    
    # Process data
    df_sphere, df_key, df_rewards, df_crystals, df_shops = process_spoiler_data(SEED_GENERATE_NUM)
    
    # Save output files from spoiler processing (raw data)    
    df_sphere.to_csv(os.path.join(new_path,'sphere_output.csv'),index=None)
    df_key.to_csv(os.path.join(new_path,'key_output.csv'),index=None)
    df_rewards.to_csv(os.path.join(new_path,'rewards_output.csv'),index=None)
    df_crystals.to_csv(os.path.join(new_path,'crystals_output.csv'),index=None)
    df_shops.to_csv(os.path.join(new_path,'shops.csv'),index=None)    
    
    # Save transformations (pivot tables for averages/groupings)
    df_rewards_pivot, df_shops_pivot = run_pivots(df_rewards,df_shops)
    df_rewards_pivot.to_csv(os.path.join(new_path,'rewards_average_value.csv'))
    df_shops_pivot.to_csv(os.path.join(new_path,'shops_average_value.csv'))

    # save each file in the new dir as the latest file for testing
    
    for file in glob.glob(os.path.join(new_path,"*")):
        shutil.copyfile(os.path.abspath(file),os.path.abspath(os.path.join('log_analysis_render','latest_data',os.path.basename(file))))