import pandas as pd, numpy as np 
import json


l = {'ability_id.csv' : 'ability_id',
     'item_id.csv' : 'item_id',
    'job_color_palettes.csv' : '',
    'key_items.csv' : 'keyitem_id',
    'magic_id.csv' : 'magic_id',
    'magic_progression.csv' : 'index',
    'monster_in_a_box.csv' : 'monster_box_id',
    'portal_bosses.csv' : '',
    'rewards.csv' : 'idx',
    'rewards_key_items.csv' : 'idx',
    'shop_id.csv' : 'idx',
    'shop_prices.csv' : 'idx',
    'weapon_randomization_id.csv' : 'item_id',
    'ability_progression.csv' : 'index',
    'arch_chest.csv' : 'idx',
    'arch_event.csv' : 'idx',
    'arch_id.csv' : 'arch_id',
    'areas.csv' : 'area_id',
    'armor_randomization_id.csv' : 'item_id',
    'battle_event_id.csv' : 'event_id',
    'boss_color_palettes.csv' : '',
    'boss_rank.csv' : 'boss_rank',
    'boss_scaling.csv' : '',
    'crystal_id.csv' : 'crystal_id',
    'custom_weapons_v2.csv' : 'index',
    'enemy_data.csv' : 'idx',
    'enemy_skills.csv' : 'hex',
    'formation_id.csv' : 'idx',
    'gil_rewards.csv' : 'gil_id',
    'hint_npc.csv' : 'npc',
     }


for filename, index_col in l.items():
    if index_col:
        df = pd.read_csv(filename, index_col=index_col)
    else:
        df = pd.read_csv(filename)
    df = df.T
    j1 = df.to_json()
    j1 = j1.replace("\\u201c", "'").replace("\\u201d","'")
    j = json.loads(j1)
    with open('json/%s' % filename.replace(".csv",".json"), 'w') as f:
        json.dump(j, f)