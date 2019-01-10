class Collectible:
    def __init__(self, id, name, location, collectible_type, \
                 type_address, type_data, item_address, item_data, kind):
        self.id = id
        self.name = name
        self.original = name
        self.location = location
        self.collectible_type = collectible_type
        self.type_address = type_address
        self.type_data = type_data
        self.item_address = item_address
        self.item_data = item_data
        self.kind = kind

    def __str__(self):
        return self.name + " " + self.collectible_type + " from " + self.location + \
               " (" + self.item_address + ": " + self.item_data + ")"


    def patch_code(self):
        code = ""
        if self.type_address != "-":
            code += "org $" + self.type_address
            code += "\ndb $" + self.type_data + "\n"
        code += "org $" + self.item_address
        code += "\ndb $" + self.item_data

        return code
