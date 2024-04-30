# -*- coding: utf-8 -*-
"""
Created on Wed Nov 27 18:54:20 2019

@author: PCM
"""

'''
Takes original boss_scaling.csv
And generates a full map where each boss
now has n number of stat maps, where n equals number of total bosses

For example, wingraptor starts with 4 tiers in original map
Now, WingRaptor will have 42 individual stat allocations
Based on the boss_rank.csv mapping

Each original tier will be scaled using Tier 1 and Tier 4 as endpoints,
adjust further -20% and +20% to Tier 1/4 respectively (to accommodate old
rank system)

Remember to manually fix magic power later, which changes per tier

This all assumes the number of bosses is at 49. Change lists if not the case
'''

import pandas as pd
import numpy as np

tier_1_list = [1,2,3,4,5,6,7,8,9,10,11,12]
tier_2_list = [13,14,15,16,17,18,19,20,21,22,23,24]
tier_3_list = [25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42]
tier_4_list = [43,44,45,46,47,48,49]

tier_rank_dict = {}
for i in tier_1_list:
    tier_rank_dict[i] = 1
for i in tier_2_list:
    tier_rank_dict[i] = 2
for i in tier_3_list:
    tier_rank_dict[i] = 3
for i in tier_4_list:
    tier_rank_dict[i] = 4


df_boss_rank = pd.read_csv('tables/boss_rank.csv',index_col='boss_rank')
df_scaling = pd.read_csv('tables/boss_scaling.csv')

unique_ids = df_scaling['idx'].unique().tolist()
#unique_ids = [343]

def num_val(x,y):
    x = int(round(x * y))
    if x < 0:
        x = 0
    return x

data_col = ['num_gauge_time','num_phys_power','num_phys_mult','num_evade','num_phys_def','num_mag_power','num_mag_def','num_mag_evade','num_mp']

df_master = pd.DataFrame()
for id in unique_ids:
    print(">>> On unique id %s" % id)
    df_temp = df_scaling[df_scaling['idx']==id]
    tier_1 = df_temp[df_temp['tier']==1].iloc[0]
    tier_4 = df_temp[df_temp['tier']==4].iloc[0]
    lower_bounds = {}
    upper_bounds = {}
    for i in data_col:
        if i in ['num_gauge_time','num_phys_mult']:
            lower_bounds[i] = num_val(tier_1[i],0.9)
            upper_bounds[i] = num_val(tier_4[i],1.1)
        else:
            lower_bounds[i] = num_val(tier_1[i],0.8)
            upper_bounds[i] = num_val(tier_4[i],1.2)
    ranges = {}
    for i in data_col:
        ranges[i] = int(upper_bounds[i] - lower_bounds[i])
        
    # now for every boss location, apply lower_bounds + % of range
    rows_data = {}
    for i in range(df_boss_rank.shape[0]):
#        print("> On boss id %s" % i)
        i = i+1 # returns 1 through n of data, rather than 0 start
        boss_rank_id = i
        boss_name = df_boss_rank['boss_name'].loc[i]
        
        # find tier for AI
        tier_rank = tier_rank_dict[i]
        df_temp2 = df_temp[df_temp['tier']==tier_rank]
        new_data = df_temp2.iloc[0].to_dict()
        # now take this temp2 and overwrite data for new stats and add boss_rank_id and boss_name
        for i2 in data_col:
            new_data[i2] = int(round(lower_bounds[i2] + (ranges[i2] * (i/df_boss_rank.shape[0]))))

        new_data['boss_rank'] = boss_rank_id
        new_data['loc_name'] = boss_name
        rows_data[i] = new_data

#    for _ in rows_data:
    df_master = pd.concat([df_master,pd.DataFrame(rows_data).T])
    
    
    
try:
    df_master = df_master[['idx','enemy_name','enemy_rank','tier','loc_name','boss_rank','num_gauge_time','num_phys_power','num_phys_mult','num_evade','num_phys_def','num_mag_power','num_mag_def','num_mag_evade','num_mp','ai_starting_address','ai_write_loc','ai_skills','ai_hp_write_loc','ai_hp_mult']]
    df_master.to_csv("tables/boss_scaling.csv",index=None)
except:
    pass
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    