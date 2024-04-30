import pandas as pd 

df = pd.read_csv('mib_arch_rank.csv')
df = df.set_index('idx')



import json
with open('mib_arch_rank.json','w') as f:
    f.write(df['rank'].to_json())