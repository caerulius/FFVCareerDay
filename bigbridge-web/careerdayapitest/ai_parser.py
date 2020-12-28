# -*- coding: utf-8 -*-
"""
Created on Sun Oct 13 12:05:20 2019

@author: PMAC
"""

import os

def parse_ai_data(filename):
    with open(os.path.join('portal_boss_ai',filename)) as f:
        data = f.read()
    
    
    data = data.split("\n")
    
    output = ''
    for d in data:
        if ";" in d:
            continue
        if ":" in d:
            d2 = d.split(":")[0].strip()
            dcomment = d.split(":")[1].strip()
            d3 = "$" + d2
            colon = ":"
            for colon in d3:
                # d4 = "db " +  '{:30}'.format(d3.replace(" ",", $")) + ";" + dcomment
                d4 = "db " +  '{:30}'.format(d3.replace(" ",", $"))
            output = output + d4
        if d == "":
            continue
        if "#" in d:
            output = output + "; " + d
        if "org" in d:
            output = output + d
        output =  output + "\n"
        
    return output