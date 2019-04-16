# -*- coding: utf-8 -*-
from reward import *

NUM_SHOPS = 64

class Shop(object):
    def __init__(self, index, collectible_manager, data_manager):
        self.idx = index
        self.generate_from_df(data_manager.files['shops'])
        '''
        self.address
        self.shop_type
        self.slot1 -> self.slot8
        self.readable_name
        self.valid
        self.num_items
        '''
        self.valid = self.valid  == 'TRUE'
        self.num_items = int(self.num_items)
        #shops can only sell items or magic, by default
        if self.shop_type == '00':
            collectible_type = '20' #magic
        else:
            collectible_type = '40' #items
        self.original_contents = []
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot1 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot2 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot3 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot4 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot5 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot6 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot7 ,collectible_type))
        self.original_contents.append(collectible_manager.get_by_id_and_type(self.slot8 ,collectible_type))
        self.contents = self.original_contents

    @property
    def asar_output(self):
        output = "org $" + self.address + "\n"
        output = output + "db $" + self.shop_type
        for i in self.contents:
            if i is None:
                output = output + ", $00"
            else:
                if str(type(i)) == "<class 'collectible.Crystal'>":
                    output = output + ", $" + str(i.shop_id)
                else:
                    output = output + ", $" + str(i.reward_id) #Todo: this will need to change when/if shops can be progressive

        return output

    @property
    def short_output(self):
        #these two lists format the None collectibles into strings for easy reading
        readable_original = [x.reward_name if x is not None else "None" for x in self.original_contents]
        readable_current = [x.reward_name if x is not None else "None" for x in self.contents]
        output = "Shop: " + self.readable_name + "\n"
        output = output + "Shop Type: " + self.shop_type + "\n"
        output = output + "Shop Item 1: " + readable_original[0] + " -> " + readable_current[0] + "\n"
        output = output + "Shop Item 2: " + readable_original[1] + " -> " + readable_current[1] + "\n"
        output = output + "Shop Item 3: " + readable_original[2] + " -> " + readable_current[2] + "\n"
        output = output + "Shop Item 4: " + readable_original[3] + " -> " + readable_current[3] + "\n"
        output = output + "Shop Item 5: " + readable_original[4] + " -> " + readable_current[4] + "\n"
        output = output + "Shop Item 6: " + readable_original[5] + " -> " + readable_current[5] + "\n"
        output = output + "Shop Item 7: " + readable_original[6] + " -> " + readable_current[6] + "\n"
        output = output + "Shop Item 8: " + readable_original[7] + " -> " + readable_current[7] + "\n"
        
        return output

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Shop class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

    def new_contents(self, contents):
        self.contents = contents

class ShopManager(object):
    def __init__(self, collectible_manager, data_manager):
        self.shops = [Shop(x, collectible_manager, data_manager) for x in range(1, NUM_SHOPS+1)]

    def get_patch(self):
        output = ";====="
        output = output + "\n;shops"
        output = output + "\n;=====\n"
        for i in [x for x in self.shops if x.valid]:
            output = output + i.asar_output + "\n"
        output = output + "\n"

        return output

    def get_spoiler(self):
        output = "-----SHOPS-----\n"
        for i in [x for x in self.shops if x.valid]:
            output = output + i.short_output + "\n"
        output = output + "-----*****-----\n"

        return output
