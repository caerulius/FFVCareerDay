# -*- coding: utf-8 -*-
"""
Created on Sat Mar 16 21:22:40 2019

"""

import random

# lazy randomizer overwriting existing contents with key items 


keys = ['00','01','02','03','04','05','06','07','08','0B','0C','0D','0E','12','15','16','18','1A','1B','1C','1D']

rewards = ['C0FB70','C0FB72','C0FB74','C0FB76','C0FB78','C0FB7A','C0FB7C','C0FB7E','C0FB80','C0FB82','C0FB84','C0FB86','C0FB88','C0FB8A','C0FB8C','C0FB8E','C0FB90','C0FB92','C0FB94','C0FB96','C0FB98','C0FB9A','C0FB9C','C0FB9E','C0FBA0','C0FBA2','C0FBA4','C0FBA6','C0FBA8','C0FBAA','C0FBAC','C0FBAE','C0FBB0','C0FBB2','C0FBB4','C0FBB6','C0FBB8','C0FBBA']

random.shuffle(keys)
write_str = ''
for key in keys:
    reward = rewards.pop()
    write_str = write_str + 'org $'+reward+'\ndb $30, $'+key+'\n'
print(write_str)