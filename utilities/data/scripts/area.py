from enum import Enum
import pandas as pd
from random import Random

class Area():
    def __init__(self, area_name, area_capacity, area_order):
        self.area_name = area_name
        self.area_capacity = int(area_capacity)
        self.area_order = int(area_order)
        self.current_volume = 0
        
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
            self.areas.append(Area(row.area_name, row.capacity, row.order))

    def get_emptiest_area(self):
        return min([x for x in self.areas if x.current_volume < x.area_capacity], \
                    key=lambda item: item.current_volume)

    def get_next_area(self, next_item_size):
            return self.get_emptiest_area()
        
    def any_areas_not_full(self):
        return any(x.current_volume < x.area_capacity for x in self.areas)
