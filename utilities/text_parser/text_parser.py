# -*- coding: utf-8 -*-
import pandas as pd


# NEED TO CHOOSE ONE OF THE TWO:

# table = 'text_table_shop.csv'
table = 'text_table_chest.csv'





text_dict = pd.read_csv('../data/tables/'+table,header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('../data/tables/'+table,header=None,index_col=1).to_dict()[0]

ability_shop_table = pd.read_csv('../data/tables/text_tables/ability_shop_text.csv',header=None,index_col=0).to_dict()[1]
ability_chest_table = pd.read_csv('../data/tables/text_tables/ability_chest_text.csv',header=None,index_col=0).to_dict()[1]
job_shop_table = pd.read_csv('../data/tables/text_tables/job_shop_text.csv',header=None,index_col=0).to_dict()[1]
job_chest_table = pd.read_csv('../data/tables/text_tables/job_chest_text.csv',header=None,index_col=0).to_dict()[1]
magic_chest_table = pd.read_csv('../data/tables/text_tables/magic_chest_text.csv',header=None,index_col=0).to_dict()[1]
key_item_table = pd.read_csv('../data/tables/text_tables/key_item_text.csv',header=None,index_col=0).to_dict()[1]
key_item_reward_table = pd.read_csv('../data/tables/text_tables/key_item_reward_text.csv',header=None,index_col=0).to_dict()[1]
kuzar_rewards = pd.read_csv('../data/tables/text_tables/kuzar_rewards.csv',header=None,index_col=0).to_dict()[1]


data = '''

608b7eff92888eff7b7e808287877e8b
8ca2006f857e7a8c7e9dff7c88867eff
8887ff8287a1006d6eff6b6e68736471
686d66a3a3a300666473ff6e7473a1a1
00
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
    return_text = ''
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
        return_text = return_text + "; "+x +"\n"
        print('org $'+passed_dict[x])
        return_text = return_text + 'org $'+passed_dict[x] +"\n"
        print(text_asar)
        return_text = return_text + text_asar + "\n"
    return return_text


def run_kuzar_encrypt(passed_dict):
    return_text = ''
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
        text_asar = 'db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF'
        for i in text_list:
            text_asar = text_asar + " $" + i + ","
        text_asar = text_asar[:-1]
        print("; "+x)
        return_text = return_text + "; "+x +"\n"
        print('org $'+passed_dict[x])
        return_text = return_text + 'org $'+passed_dict[x] +"\n"
        print(text_asar)
        return_text = return_text + text_asar + ", db$00\n"
    return return_text

        
        
def generate_keyitems():
    print("Writing file to career_day/asm/asm_patches/text_tables/key_item_tables.asm...")
    write_text = ''
    write_text = write_text + '; Key Items (in menu) text\n'
    write_text = write_text + run_encrypt(key_item_table)
    write_text = write_text + '; Key Items (for rewards/chests) text\n'
    write_text = write_text + run_encrypt(key_item_reward_table)
    with open('../../projects/shared_asm/text_tables/key_item_tables.asm','w') as file:
        file.write(write_text)