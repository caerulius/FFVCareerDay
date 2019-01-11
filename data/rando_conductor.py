from collectible import *
import pandas as pd
import random
import copy

class RandoConductor():
    def __init__(self, origin_list_path, index_col='id',encoding='ISO-8859-1'):
        self.collectibles_file = pd.read_csv('collectibles.csv',index_col=index_col,dtype=str,encoding=encoding)
        self.collectibles = []
        for index, row in self.collectibles_file.iterrows():
            self.collectibles.append(Collectible(index-1, row.readable_name, row.readable_location, \
                                    C_Type[row.type.upper()], row.type_address, row.type_data, \
                                    row.item_address, row.item_data, C_Kind[row.kind.upper()]))

    def shuffle_all_within_kind(self):
        for k in C_Kind:
            self.shuffle_kind(k.name)

    def shuffle_kind(self, kind, iterations=5):
        kl = [x for x in self.collectibles if x.kind == kind]
        if kind == C_Kind.Shop.name:
            kl = [x for x in self.collectibles if x.kind == kind and x.collectible_type == C_Type.Magic.name]

        for loops in range(0, iterations):
            for item in kl:
                result = self.swap(item, random.choice(kl))
                self.collectibles[result[0].id] = result[0]
                self.collectibles[result[1].id] = result[1]

        if kind == C_Kind.Shop.name:
            kl = [x for x in self.collectibles if x.kind == kind and x.collectible_type == C_Type.Magic.name]
            for loops in range(0, iterations):
                for item in kl:
                    result = self.swap(item, random.choice(kl))
                    self.collectibles[result[0].id] = result[0]
                    self.collectibles[result[1].id] = result[1]

    def shuffle_all_within_type(self):
        for t in C_Type:
            self.shuffle_type(t.name)

    def shuffle_type(self, c_type, iterations=5):
        cl = [x for x in self.collectibles if x.collectible_type == c_type]
        for loops in range(0, iterations):
            for item in cl:
                result = self.swap(item, random.choice(cl))
                self.collectibles[result[0].id] = result[0]
                self.collectibles[result[1].id] = result[1]

    def full_shuffle(self, iterations=5):
        for loops in range(0, iterations):
            for item in self.collectibles:
                choice = random.choice([x for x in self.collectibles if x.category in slicer[item.category]])
                result = self.swap(item, choice)
                if choice.kind == C_Kind.LOOT and item.collectible_type == C_Type.CRYSTAL:
                    print("swapping ", end="")
                    print(item)
                    print("and ", end="")
                    print(choice)
                    input()
                self.collectibles[result[0].id] = result[0]
                self.collectibles[result[1].id] = result[1]     

    def swap(self, c1, c2):
        temp = copy.deepcopy(c1)
        c1.name = c2.name
        c1.collectible_type = c2.collectible_type
        c1.type_data = c2.type_data
        c1.item_data = c2.item_data
        c1.category = C_Cat[c1.kind.name + c1.collectible_type.name] #when we swap, we switch the type but not the kind
                                                                     #so we force a category regenerate in case it changed

        c2.name = temp.name
        c2.collectible_type = temp.collectible_type
        c2.type_data = temp.type_data
        c2.item_data = temp.item_data
        c2.category = C_Cat[c2.kind.name + c2.collectible_type.name]

        return (c1, c2)

    def get_patch(self):
        patch = ""
        for i in conductor.collectibles:
            patch += i.patch_code()

        return patch

    def get_spoiler_log(self):
        log = ""
        for i in conductor.collectibles:
            log += str(i)
            
        return log

    def get_output(self):
        patch = ""
        log = ""
        for i in conductor.collectibles:
            patch += i.patch_code()
            log += str(i)

        return (patch, log)

conductor = RandoConductor('collectibles.csv')
conductor.full_shuffle()
print(conductor.get_spoiler_log())
