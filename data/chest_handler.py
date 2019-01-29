# -*- coding: utf-8 -*-

from chest_data import *
import random


# simple contents shuffler 
#
#data_list = []
#for chest in all_chests:
#    data_list.append(chest.chest_contents)
#random.shuffle(data_list)
#for loc, chest in enumerate(all_chests):
#    chest.type = data_list[loc][0]
#    chest.id = data_list[loc][1]
#    chest.reward_type = data_list[loc][2]
#    chest.reward = data_list[loc][3]
#    chest.update_asar_output()
        
        
#for chest in all_chests:
#    print(chest.original_reward,"→",chest.reward)

#for chest in all_chests:
#    print(chest.asar_output)


# Chest_1.update_item('item','Wonder Wand')
for chest in all_chests:
    chest.random_reward()
    print(chest.asar_output)