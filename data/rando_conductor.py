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
                                    row.type, row.type_address, row.type_data, \
                                    row.item_address, row.item_data, row.kind))

    def shuffle_kind(self, kind, iterations=5):
        kl = [x for x in self.collectibles if x.kind == kind]

        for loops in range(0, iterations):
            for item in kl:
                result = self.swap(item, random.choice(kl))
                self.collectibles[result[0].id] = result[0]
                self.collectibles[result[1].id] = result[1]
    
    def swap(self, c1, c2):
        temp = copy.deepcopy(c1)
        c1.name = c2.name
        c1.collectible_type = c2.collectible_type
        c1.type_data = c2.type_data
        c1.item_data = c2.item_data
        c1.kind = c2.kind

        c2.name = temp.name
        c2.collectible_type = temp.collectible_type
        c2.type_data = temp.type_data
        c2.item_data = temp.item_data
        c2.kind = temp.kind

        return (c1, c2)


conductor = RandoConductor('collectibles.csv')
conductor.shuffle_kind('Reward')

for i in [x for x in conductor.collectibles if x.kind == 'Reward']:
    print(i, end="")
    print(" started as: " + i.original)
