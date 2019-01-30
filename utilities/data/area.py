from enum import Enum
import pandas as pd
from random import Random

class Area():
    def __init__(self, area_name, area_capacity, area_order):
        self.area_name = area_name
        self.area_capacity = int(area_capacity)
        self.area_order = int(area_order)
        self.current_volume = 0
        
class Area_Manager():
    def __init__(self, areas=None, random=None):
        if areas is None:
            self.areas = []
        else:
            self.areas = areas
        
        if random is None:
            self.random = Random()
        else:
            self.random = random

        self.easy_start = False
        self.total_random = False

    def apply_easy_start(self):
        for x in self.areas:
            if x.area_order < 6:
                x.area_capacity = x.area_capacity + 5

    def initialize_areas(self, csvpath):
        df_areas = pd.read_csv(csvpath,index_col='area_id',dtype=str)
        for index, row in df_areas.iterrows():
            self.areas.append(Area(row.area_name, row.capacity, row.order))

    def get_emptiest_area(self):
        return min([x for x in self.areas if x.current_volume < x.area_capacity], \
                    key=lambda item: item.current_volume)

    def get_next_area(self, next_item_size):
            return self.get_emptiest_area()
        
    def any_areas_not_full(self):
        return any(x.current_volume < x.area_capacity for x in self.areas)

AM = Area_Manager()
AM.initialize_areas('areas.csv')
AM.apply_easy_start()

while AM.any_areas_not_full():
    next_add = AM.random.randint(1,5)
    next_area = AM.get_next_area(next_add)
    print("Next area to insert is: " + next_area.area_name + " (" + str(next_area.area_capacity) + ")")
    print(next_area.area_name + " current volume is " + str(next_area.current_volume))
    print("Adding an item of size: " + str(next_add))
    next_area.current_volume = next_area.current_volume + next_add
    print()

print("----------")

for i in AM.areas:
    print(i.area_name)
    print(str(i.current_volume) + " / " + str(i.area_capacity))
