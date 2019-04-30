# -*- coding: utf-8 -*-
import pandas as pd
import os

# NEED TO CHOOSE ONE OF THE TWO:

#table = 'text_table_shop.csv'
table = 'text_table_chest.csv'

GUI_FLAG = True
# LOCAL PY VERSION

if GUI_FLAG:
    text_dict = pd.read_csv('tables/text_tables/' + table, header=None,index_col=0).to_dict()[1]
    text_dict2 = pd.read_csv('tables/text_tables/' + table, header=None,index_col=1).to_dict()[0]
    key_item_table = pd.read_csv('tables/text_tables/' + 'key_item_text.csv',header=None,index_col=0).to_dict()[1]
else:
    text_dict = pd.read_csv(os.path.join(os.path.pardir,'data','tables',table),header=None,index_col=0).to_dict()[1]
    text_dict2 = pd.read_csv(os.path.join(os.path.pardir,'data','tables',table),header=None,index_col=1).to_dict()[0]
    key_item_table = pd.read_csv(os.path.join(os.path.pardir,'data','tables','text_tables','key_item_text.csv'),header=None,index_col=0).to_dict()[1]

    

data = '''

728E7B867A8B82877E966A7E92A2

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
        text_asar = 'db '
        for i in text_list:
            text_asar = text_asar + " $" + i + ","
        text_asar = text_asar[:-1]
        #print("; "+x)
        return_text = return_text + "; "+x.replace('@', '\\n') +"\n"
        #print('org $'+passed_dict[x])
        return_text = return_text + 'org $'+passed_dict[x] +"\n"

        #print(text_asar)
        return_text = return_text + text_asar + ", $00\n"

    return return_text

def run_exdeath_rewards(passed_dict):
    '''
    Pass in a DICTIONARY of 3 key items (actual text) and 3 key item reward 
        locations by related id (e.g. Sandworm has Big Bridge Key, 
            which is custom reward $68 every seed)
            DO NOT Big Bridge Key's ID - use Sandworm loc's ID
            Because THIS seed Sandworm has Big Bridge Key
        
        Final input should look like:
        {'Walse Tower Key':'68','Big Bridge Key':'77','SandWormBait':'82'}
            
    Returns asm patch
    '''
    
    list_of_keys = passed_dict.keys()
    list_of_locs = passed_dict.values()
    
    # This is for main 'key item' menu
    base_addr_1 = 'E2A0A7'
    # These are for the 3 text boxes asking if you want X item 
    list_of_individual_bases = ['E2A10B','E2A166','E2A1C6']

    
    text_asar = '; Key items block text (menu choices before choosing) \norg $'+base_addr_1+'\ndb' # main menu
    for x in list_of_keys:
        text_list = []
        for i in x:
            text_list.append(text_dict2[i])
        for y in text_list:
            text_asar = text_asar + " $" + y + ","
        text_asar = text_asar + " $01, "

    text_asar = text_asar + "$00\n"
    

    # Messy iteration trying to do both at once, replicate again...

    item_dict = dict(zip(list_of_individual_bases,list_of_keys))
    text_asar2 = '; Key items prompts (1 per key item) \n'
    for base, key_name in item_dict.items():
        text_asar2 = text_asar2 + ";"+key_name+"\norg $"+base+"\ndb "
        text_list = []
        for i in key_name:
            text_list.append(text_dict2[i])
        for y in text_list:
            text_asar2 = text_asar2 + " $" + y + ","
        text_asar2 = text_asar2 + " $A2, $00\n"


    text_asar3 = '; Addresses in events for key item actual rewards\n'
    loc_dict = dict(zip(['F90406','F90426','F90416'],list_of_locs))
    for base, loc in loc_dict.items():
        text_asar3 = text_asar3 + 'org $'+base+"\ndb $"+str(loc)+"\n"
    
    return_text = text_asar2 + "\n" + text_asar + "\n" + text_asar3
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