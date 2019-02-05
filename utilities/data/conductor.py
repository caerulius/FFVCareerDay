# -*- coding: utf-8 -*-
import pandas as pd
import random
import operator

from collectible import *
from reward import *
from shop import *

CM = CollectibleManager() #Set up collectibles. Includes Items, magic, crystals, and abilities
RM = RewardManager(CM)    #Set up rewards. Includes chests and events
SM = ShopManager(CM)      #Set up shops.

print(SM.shops[1].short_output)
input()

difficulty = random.randint(1,10)

crystals = CM.get_all_of_type(Crystal)

crystal_count = random.randint(4, len(crystals))
crystal_count = crystal_count - (difficulty // 3)
if crystal_count < 4:
    crystal_count = 4

chosen_crystals = random.sample(crystals, crystal_count)
chosen_crystals_names = [x.reward_name for x in chosen_crystals]

for index, value in enumerate(CM.collectibles):
    related = [i for i in value.related_jobs if i in chosen_crystals_names]
    if len(related) > 0:
        CM.collectibles[index].place_weight = CM.collectibles[index].place_weight + 3

for index, value in enumerate(RM.rewards):
    to_place = CM.get_random_collectible(random, respect_weight=True,
                                         monitor_counts=True)
    value.set_collectible(to_place)

