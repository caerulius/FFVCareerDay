# -*- coding: utf-8 -*-
import pandas as pd


# NEED TO CHOOSE ONE OF THE TWO:

table = 'text_table_shop.csv'
#table = 'text_table_chest.csv'





text_dict = pd.read_csv('../data/tables/'+table,header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('../data/tables/'+table,header=None,index_col=1).to_dict()[0]

ability_shop_table = pd.read_csv('../data/tables/text_tables/ability_shop_text.csv',header=None,index_col=0).to_dict()[1]
ability_chest_table = pd.read_csv('../data/tables/text_tables/ability_chest_text.csv',header=None,index_col=0).to_dict()[1]
job_shop_table = pd.read_csv('../data/tables/text_tables/job_shop_text.csv',header=None,index_col=0).to_dict()[1]
job_chest_table = pd.read_csv('../data/tables/text_tables/job_chest_text.csv',header=None,index_col=0).to_dict()[1]
magic_chest_table = pd.read_csv('../data/tables/text_tables/magic_chest_text.csv',header=None,index_col=0).to_dict()[1]
key_item_table = pd.read_csv('../data/tables/text_tables/key_item_text.csv',header=None,index_col=0).to_dict()[1]
key_item_reward_table = pd.read_csv('../data/tables/text_tables/key_item_reward_text.csv',header=None,index_col=0).to_dict()[1]


data = '''



627a8b7a9bffffa3a3a3010101016b7e
87877a9bffff627a8b7aa200


'''
data = data.replace("\n","ZZ")
n = 2
byte_list = [data[i:i+n] for i in range(0, len(data), n)]


def run_decrypt():
    new_bytes = []
    num = 1
    for byte in byte_list:
        if byte == "ZZ":
            new_bytes.append("\n")
            num = num + 1
        else:
            byte = str(byte).upper()
            try:
                newbyte = text_dict[byte]
            except:
                newbyte = ' '
            new_bytes.append(newbyte)
    
    final_str = ''
    for byte in new_bytes:
        final_str = final_str + str(byte)
        
    print(final_str)
    
    
    
def run_encrypt(passed_dict):
    for x in passed_dict.keys():
        counter = 0
        text_list = []
        while counter < len(x):
            char = x[counter]
            if char == "<":
                left = x.find("<")
                right = x.find(">")+1
                new_char = x[left:right]
                text_list.append(text_dict2[new_char])
                counter = right
            else:    
                text_list.append(text_dict2[char])
                counter = counter + 1
        text_asar = 'db'
        for i in text_list:
            text_asar = text_asar + " $" + i + ","
        text_asar = text_asar[:-1]
        print("; "+x)
        print('org $'+passed_dict[x])
        print(text_asar)