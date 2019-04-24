# -*- coding: utf-8 -*-
"""
Created on Fri Apr 19 10:02:50 2019

@author: Patrick McMahon
"""

import pandas as pd

#with open(os.path.join(os.path.pardir,os.path.pardir,os.path.pardir,os.path.pardir,os.path.pardir,'ROM','ffv_hacks.sfc'),'rb') as file:
#    x = file.read()
 
with open('events.txt') as file:
    events = file.readlines()
events = events[0].replace(" ","")
    
    
list_of_event_codes = []

for i in range(0,256):
    for x in ['A2','A3','A4','A5']:
        new_code = str(x+hex(i).replace("0x","").zfill(2)).upper()
        list_of_event_codes.append(new_code)
        
        
#### THESE are less important because they dont correspond to conditionals 
        
#    for y in range(0,16):
#        new_code = 'CA'+hex(y).replace("0x","").zfill(2)+hex(i).replace("0x","").zfill(2)
#        list_of_event_codes.append(new_code)
#        new_code2 = 'CB'+hex(y).replace("0x","").zfill(2)+hex(i).replace("0x","").zfill(2)
#        list_of_event_codes.append(new_code2)
        
df = pd.DataFrame(columns=['address','code','matches'])
for i in list_of_event_codes:
    number = events.count(i)
    df.loc[-1] = ['',i,number]
    df.index = df.index + 1
    df = df.sort_index()
df = df.sort_values(by='code')    
df.to_csv('events_output.csv',index=None)


with open('conditional.txt') as file:
    conditionals = file.readlines()
conditionals = conditionals[0].replace(" ","")

   
list_of_conditional_codes = []

for i in range(0,256):
    for x in ['FB','FC','FD','FE']:
        new_code = str(x+hex(i).replace("0x","").zfill(2)).upper()
        list_of_conditional_codes.append(new_code)
        
df2 = pd.DataFrame(columns=['address','code','matches'])
for i in list_of_conditional_codes:
    number = conditionals.count(i)
    df2.loc[-1] = ['',i,number]
    df2.index = df2.index + 1
    df2 = df2.sort_index()
df2 = df2.sort_values(by='code')
df2.to_csv('conditional_output.csv',index=None)


with open('npc.txt') as file:
    npc = file.readlines()
npc = npc[0].replace(" ","")

   
list_of_npc_codes = []

for i in range(0,256):
    for x in ['FB','FC','FD','FE']:
        new_code = str(x+hex(i).replace("0x","").zfill(2)).upper()
        list_of_npc_codes.append(new_code)
        
df3 = pd.DataFrame(columns=['address','code','matches'])
for i in list_of_conditional_codes:
    number = conditionals.count(i)
    df3.loc[-1] = ['',i,number]
    df3.index = df3.index + 1
    df3 = df3.sort_index()
df3 = df3.sort_values(by='code')
df3.to_csv('npc.csv',index=None)