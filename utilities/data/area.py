from enum import Enum

class Area():
    def __init__(self, area_name, area_capacity):
        self.name = name
        self.capacity = capacity
        self.current_volume = 0

class Ruleset(Enum):
    DEFAULT = 1
    NO_BALANCE = 2

class Area_Manager():
    def __init__(self, areas, random):
        self.areas = areas
        self.ruleset = Ruleset.DEFAULT
        self.random = random

    def get_emptiest_area(self):
        return min(area.current_volume for area in self.areas)

    def get_next_area(self, next_item_size):
        if self.ruleset == Ruleset.DEFAULT:
            return self.get_emptiest_area()
        elif self.ruleset == Ruleset.NO_BALANCE:
            return random.choice(areas)
