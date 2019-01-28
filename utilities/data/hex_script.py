# -*- coding: utf-8 -*-
"""
Created on Tue Dec  4 16:45:57 2018

@author: Patrick McMahon
"""

with open('boss_stats.txt') as f:
    x = f.readlines()

for j in x:
    string = " ".join(j[i:i+2] for i in range(0, len(j), 2))
    with open('boss_stats_clean.txt','a') as f2:
        f2.write(string)