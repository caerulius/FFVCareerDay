# -*- coding: utf-8 -*-
"""
Created on Fri Apr 19 10:02:50 2019

"""

import pandas as pd

#with open(os.path.join(os.path.pardir,os.path.pardir,os.path.pardir,os.path.pardir,os.path.pardir,'ROM','ffv_hacks.sfc'),'rb') as file:
#    x = file.read()
 
with open('events.txt') as file:
    events = file.readlines()
events = events[0].replace(" ","")
events = events.upper() 
    
list_of_event_codes = []

for i in range(0,256):
    for y in range(0,8):
        new_code = 'CD'+hex(i).replace("0x","").zfill(2)+hex(y).replace("0x","").zfill(2)
        list_of_event_codes.append(new_code.upper())

        
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
conditionals = conditionals.upper()
   
list_of_conditional_codes = []

for i in range(0,256):
    for y in range(0,8):
        new_code = 'FF'+hex(i).replace("0x","").zfill(2)+hex(y).replace("0x","").zfill(2)
        list_of_conditional_codes.append(new_code.upper())

        
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
npc = npc.upper()

   
list_of_npc_codes = []

for i in range(0,256):
    for y in range(0,8):
        new_code = 'FF'+hex(i).replace("0x","").zfill(2)+hex(y).replace("0x","").zfill(2)
        list_of_npc_codes.append(new_code.upper())
        
df3 = pd.DataFrame(columns=['address','code','matches'])
for i in list_of_npc_codes:
    number = npc.count(i)
    df3.loc[-1] = ['',i,number]
    df3.index = df3.index + 1
    df3 = df3.sort_index()
df3 = df3.sort_values(by='code')
df3.to_csv('npc.csv',index=None)