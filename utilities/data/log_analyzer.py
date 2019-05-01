# -*- coding: utf-8 -*-
"""
Created on Tue Apr 30 10:15:04 2019

"""
import os
import pandas as pd
import numpy as np
import sys
import random
sys.path.append(os.path.join(os.path.pardir))
from conductor import *


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
    df_reward = pd.DataFrame.from_dict(rewards_dict,orient='index')
    df_reward.reset_index(inplace=True)
    df_reward.columns = ['check','reward','mib']
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
    for shop in shops:
        data = shop.split("\n")
        shop_name = data[0].split(": ")[1]
        shop_type = data[1].split(": ")[1]
        item_list = []
        for item in data[2:]:
            item_list.append(item.split("-> ")[1])
    df = pd.DataFrame(columns=['item'],data=item_list)
    df['shop_name'] = shop_name
    df['shop_type'] = shop_type
    df['seed'] = random_num
    df = df[['shop_name','shop_type','item','seed']]
    return df
    
    

def run_collection(NUM_ITERATIONS):
    df_key_master = pd.DataFrame()
    df_rewards_master = pd.DataFrame()
    df_crystals_master = pd.DataFrame()
    df_shops_master = pd.DataFrame()
    
    for num in range(0,NUM_ITERATIONS):
        c = Conductor(random)
        random_num = round(random.random()*10000000)
        c.randomize(random_num)
        spoiler = c.RM.get_spoiler()
        df_key_master = df_key_master.append(get_key_item_df(spoiler,random_num))
        df_rewards_master = df_rewards_master.append(get_rewards_df(spoiler,random_num))
        df_crystals_master = df_crystals_master.append(get_crystals(c,random_num))
        df_shops_master = df_shops_master.append(get_shops(c,random_num))
    return df_key_master, df_rewards_master, df_crystals_master, df_shops_master

df_key_master, df_rewards_master, df_crystals_master, df_shops_master = run_collection(10)