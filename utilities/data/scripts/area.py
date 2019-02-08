from enum import Enum
import pandas as pd
from random import Random
import math

class Area():
    def __init__(self, area_name, area_capacity, area_order, area_num_checks):
        self.area_name = area_name
        self.area_capacity = int(area_capacity)
        self.area_order = int(area_order)
        self.num_checks = int(area_num_checks)
        self.current_volume = 0
        self.num_placed_checks = 0

    def __str__(self):
        output = "Area: " + self.area_name
        output = output + "\nOrder: " + str(self.area_order)
        output = output + "\nCapacity: " + str(self.area_capacity)
        output = output + "\nCurr Vol: " + str(self.current_volume)
        output = output + "\nNum Checks: " + str(self.num_checks)
        output = output + "\nNum Placed: " + str(self.num_placed_checks)
        return output
        
class AreaManager():
    def __init__(self, areas=None, random=None):
        if areas is None:
            self.areas = []
            self.initialize_areas("..\\tables\\areas.csv")
        else:
            self.areas = areas
        
        if random is None:
            self.random = Random()
        else:
            self.random = random

        self.easy_start = False
        self.total_random = False

    def initialize_areas(self, csvpath):
        df_areas = pd.read_csv(csvpath,index_col='area_id',dtype=str)
        for index, row in df_areas.iterrows():
            self.areas.append(Area(row.area_name, row.capacity,
                                   row.order, row.num_checks))

    def get_emptiest_area(self):
        try:
            emptiest =  min([x for x in self.areas if x.current_volume < x.area_capacity
                        and x.num_placed_checks < x.num_checks], \
                        key=lambda item: item.current_volume)
            return emptiest
        except:
            return None

    def get_next_area(self):
            return self.get_emptiest_area()
        
    def any_areas_not_full(self):
        return any(x.current_volume < x.area_capacity or
                   x.num_placed_checks < x.num_checks for x in self.areas)

    def update_volume(self, reward):
        for i in self.areas:
            if reward.area == i.area_name:
                i.current_volume = i.current_volume + reward.collectible.reward_value
                i.num_placed_checks = i.num_placed_checks + 1
                #print("area's new volume: " + str(i.current_volume) +
                #      "/" + str(i.area_capacity))
                return

    def change_power_level(self, factor):
        for i in self.areas:
            i.area_capacity = math.floor(i.area_capacity * factor)
