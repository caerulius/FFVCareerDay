from enum import Enum

class Collectible:
    def __init__(self, id, name, location, collectible_type, \
                 type_address, type_data, item_address, item_data, kind):
        self.id = id
        self.name = name
        self.original_name = name
        self.original_collectible_type = collectible_type
        self.location = location
        self.collectible_type = collectible_type
        self.type_address = type_address
        self.type_data = type_data
        self.item_address = item_address
        self.item_data = item_data
        self.kind = kind

    def __str__(self):
        return self.original_name + " " + self.original_collectible_type + \
               " at " + self.location + " -> " + self.name + " " + \
               self.collectible_type + "\n"


    def patch_code(self):
        code = ""
        if self.type_address != "-":
            code += "org $" + self.type_address
            code += "\ndb $" + self.type_data + "\n"
        code += "org $" + self.item_address
        code += "\ndb $" + self.item_data + "\n\n"

        return code

class C_Type(Enum):
    ITEM = 1,
    GIL = 2,
    CRYSTAL = 3,
    MAGIC = 4,
    MONSTER = 5

class C_Kind(Enum):
    REWARD = 1,
    LOOT = 2,
    SHOP = 3
