# -*- coding: utf-8 -*-
"""
Created on Fri Feb 14 14:46:48 2020

@author: PMAC
"""

import itertools

d = {
'strength': {
     'Strength +1':'C0',
     'Strength +2':'C1',
     'Strength +3':'C2',
     'Strength +5':'C7',
     },
'agility': {
     'Agility +1':'A0',
     'Agility +2':'A1',
     'Agility +3':'A2',
     'Agility +5':'A7',
     },
'vitality': {
     'Vitality +1':'90',
     'Vitality +2':'91',
     'Vitality +3':'92',
     'Vitality +5':'97',
     },
'magic': {
     'Magic Power +1':'88',
     'Magic Power +2':'89',
     'Magic Power +3':'8A',
     'Magic Power +5':'8F'
     }
}

d1 = {
     'Strength +1':'C0',
     'Strength +2':'C1',
     'Strength +3':'C2',
     'Strength +5':'C7',
     'Agility +1':'A0',
     'Agility +2':'A1',
     'Agility +3':'A2',
     'Agility +5':'A7',
     'Vitality +1':'90',
     'Vitality +2':'91',
     'Vitality +3':'92',
     'Vitality +5':'97',
     'Magic Power +1':'88',
     'Magic Power +2':'89',
     'Magic Power +3':'8A',
     'Magic Power +5':'8F'
}
d2 = {
     'C0': 'Strength +1',
     'C1': 'Strength +2',
     'C2': 'Strength +3',
     'C7': 'Strength +5',
     'A0': 'Agility +1',
     'A1': 'Agility +2',
     'A2': 'Agility +3',
     'A7': 'Agility +5',
     '90': 'Vitality +1',
     '91': 'Vitality +2',
     '92': 'Vitality +3',
     '97': 'Vitality +5',
     '88': 'Magic Power +1',
     '89': 'Magic Power +2',
     '8A': 'Magic Power +3',
     '8F': 'Magic Power +5'
 }

#lists = []
#for k in d.keys():
#    temp_list = [i for i in d[k].keys()]
#    temp_list.append("")
#    lists.append(temp_list)

combinations = [i for i in itertools.product(["Strength","Vitality","Magic Power","Agility",""],["Strength","Vitality","Magic Power","Agility",""],["Strength","Vitality","Magic Power","Agility",""],["Strength","Vitality","Magic Power","Agility",""])]

combinationsb = []
for i in combinations:
    x = []
    for a in i:
        if a not in x and a != "":
            x.append(a)
    combinationsb.append(x)
combinations3 = []
for comb in combinationsb:
    if comb.sort() not in combinations3:
        combinations3.append(comb)
combinations3 = combinations3[:-1]
            

combinationsa  = [i for i in itertools.product(combinations3,["+1","+2","+3","+5"])]

final_dict = {}
for data in combinationsa:
    comb, addit = data[0], data[1]
    comb2 = []
    for i in comb:
        comb2.append(i + " " + addit)
    temp_byte = '00'
    for i in comb2:    
        temp_byte = hex(int(temp_byte,base=16) | int(d1[i],base=16)).replace("0x","").upper()
#    print("Combination %s %s byte %s" % (' '.join(comb),addit, temp_byte))
    final_dict[temp_byte]  = ', '.join(comb) + " " + addit
for k, v in final_dict.items():
    print(k+"|"+v)