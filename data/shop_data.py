# -*- coding: utf-8 -*-
import pandas as pd 
from reward_data import *
import random


# TO DO
# Value lookup

df_shop_table = pd.read_csv('shop_id.csv',index_col='id_num',dtype=str)
item_id_dict = pd.read_csv('item_id.csv',index_col='item_id',dtype=str).to_dict()['item_name'] # id first
magic_id_dict = pd.read_csv('magic_id.csv',index_col='magic_id',dtype=str).to_dict()['magic_name'] # id first
shop_id_dict = {
        '00' : 'Magic',
        '01' : 'Weapon',
        '02' : 'Armor',
        '03' : 'Item',
        '04' : 'Relic',
        '05' : 'Guild',
        '06' : 'Medicine',
        '07' : 'Generic',
        '81' : 'Karnak',
        '82' : 'Karnak',
        '83' : 'Karnak',
        '84' : 'Karnak',
        }

class Shop(object):
    def __init__(self,index):
        self.idx = index
        self.shop_count = 0
        self.generate_from_df(df_shop_table)
        self.output = f"Shop index: {self.idx}\nShop type: {self.shop_type_name}\n{self.slot1_name}\n{self.slot2_name}\n{self.slot3_name}\n{self.slot4_name}\n{self.slot5_name}\n{self.slot6_name}\n{self.slot7_name}\n{self.slot8_name}"
        self.asar_output = f";Shop index: {self.idx}\norg ${self.address}\ndb ${self.shop_type}, ${self.slot1}, ${self.slot2}, ${self.slot3}, ${self.slot4}, ${self.slot5}, ${self.slot6}, ${self.slot7}, ${self.slot8}"
    def generate_from_df(self, df):
        s = df[df.index==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.boss_name)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
        self.shop_type_name = shop_id_dict[self.shop_type]
        
        # this looks up the string name for each magic ID, then change slot to Class object
        if self.shop_type_name == 'Magic':
            for attr in list(self.__dict__):
                if 'slot' in attr:
                    setattr(self,attr+"_name",magic_id_dict[getattr(self,attr)])
                    setattr(self,attr+"_reward",Magic(getattr(self,attr)))
        # this looks up the string name for each item ID, then change slot to Class object
        else:
            for attr in list(self.__dict__):
                if 'slot' in attr:
                    setattr(self,attr+"_name",item_id_dict[getattr(self,attr)])
                    setattr(self,attr+"_reward",Item(getattr(self,attr)))
        # if blank, set to blank string
        
        slots_only = ['slot1','slot2','slot3','slot4','slot5','slot6','slot7','slot8']
        for slot in slots_only:
            if "00" in str(getattr(self,slot)):
                setattr(self,slot+"_name","")
            else:
                self.shop_count = self.shop_count + 1
    def randomize_shop(self,shop_reward_count=None):
        if shop_reward_count is None:
            shop_reward_count = self.shop_count            
        if self.shop_type_name == 'Magic':
            all_magic_local = all_magic[:]
            random.shuffle(all_magic_local)
            for reward_num in range(shop_reward_count+1):
                new_magic = all_magic_local.pop()
                setattr(self,"slot"+str(reward_num),new_magic.reward_id)
                setattr(self,"slot"+str(reward_num)+"_name",new_magic.reward_name)
                setattr(self,"slot"+str(reward_num)+"_reward",new_magic)
        else:
            all_item_local = all_items[:]
            random.shuffle(all_item_local)
            for reward_num in range(shop_reward_count+1):
                new_item = all_item_local.pop()
                setattr(self,"slot"+str(reward_num),new_item.reward_id)
                setattr(self,"slot"+str(reward_num)+"_name",new_item.reward_name)
                setattr(self,"slot"+str(reward_num)+"_reward",new_item)
        self.output = f"Shop index: {self.idx}\nShop type: {self.shop_type_name}\n{self.slot1_name}\n{self.slot2_name}\n{self.slot3_name}\n{self.slot4_name}\n{self.slot5_name}\n{self.slot6_name}\n{self.slot7_name}\n{self.slot8_name}"
        self.asar_output = f";Shop index: {self.idx}\norg ${self.address}\ndb ${self.shop_type}, ${self.slot1}, ${self.slot2}, ${self.slot3}, ${self.slot4}, ${self.slot5}, ${self.slot6}, ${self.slot7}, ${self.slot8}"

Shop_1 = Shop(1)
Shop_2 = Shop(2)
Shop_3 = Shop(3)
Shop_4 = Shop(4)
Shop_5 = Shop(5)
Shop_6 = Shop(6)
Shop_7 = Shop(7)
Shop_8 = Shop(8)
Shop_9 = Shop(9)
Shop_10 = Shop(10)
Shop_11 = Shop(11)
Shop_12 = Shop(12)
Shop_13 = Shop(13)
Shop_14 = Shop(14)
Shop_15 = Shop(15)
Shop_16 = Shop(16)
Shop_17 = Shop(17)
Shop_18 = Shop(18)
Shop_19 = Shop(19)
Shop_20 = Shop(20)
Shop_21 = Shop(21)
Shop_22 = Shop(22)
Shop_23 = Shop(23)
Shop_24 = Shop(24)
Shop_25 = Shop(25)
Shop_26 = Shop(26)
Shop_27 = Shop(27)
Shop_28 = Shop(28)
Shop_29 = Shop(29)
Shop_30 = Shop(30)
Shop_31 = Shop(31)
Shop_32 = Shop(32)
Shop_33 = Shop(33)
Shop_34 = Shop(34)
Shop_35 = Shop(35)
Shop_36 = Shop(36)
Shop_37 = Shop(37)
Shop_38 = Shop(38)
Shop_39 = Shop(39)
Shop_40 = Shop(40)
Shop_41 = Shop(41)
Shop_42 = Shop(42)
Shop_43 = Shop(43)
Shop_44 = Shop(44)
Shop_45 = Shop(45)
Shop_46 = Shop(46)
Shop_47 = Shop(47)
Shop_48 = Shop(48)
Shop_49 = Shop(49)
Shop_50 = Shop(50)
Shop_51 = Shop(51)
Shop_52 = Shop(52)
Shop_53 = Shop(53)
Shop_54 = Shop(54)
Shop_55 = Shop(55)
Shop_56 = Shop(56)
Shop_57 = Shop(57)
Shop_58 = Shop(58)
Shop_59 = Shop(59)
Shop_60 = Shop(60)
Shop_61 = Shop(61)
Shop_62 = Shop(62)
# Shop_63 = Shop(63)
# Shop_64 = Shop(64)

all_shops = [Shop_1,Shop_2,Shop_3,Shop_4,Shop_5,Shop_6,Shop_7,Shop_8,Shop_9,Shop_10,Shop_11,Shop_12,Shop_13,Shop_14,Shop_15,Shop_16,Shop_17,Shop_18,Shop_19,Shop_20,Shop_21,Shop_22,Shop_23,Shop_24,Shop_25,Shop_26,Shop_27,Shop_28,Shop_29,Shop_30,Shop_31,Shop_32,Shop_33,Shop_34,Shop_35,Shop_36,Shop_37,Shop_38,Shop_39,Shop_40,Shop_41,Shop_42,Shop_43,Shop_44,Shop_45,Shop_46,Shop_47,Shop_48,Shop_49,Shop_50,Shop_51,Shop_52,Shop_53,Shop_54,Shop_55,Shop_56,Shop_57,Shop_58,Shop_59,Shop_60,Shop_61,Shop_62]

for shop in all_shops:
    shop.randomize_shop()
    print(shop.asar_output)
    # print("----------")