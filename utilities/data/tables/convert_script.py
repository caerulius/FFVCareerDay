import pandas as pd, numpy as np 
import json


l = {'text_table_chest.csv' : '',
     'text_table_shop.csv' : '',
     }


for filename, index_col in l.items():
    df = pd.read_csv(filename, header = None, index_col = 0)
    df = df.T
    j1 = df.to_json()
    j1 = j1.replace("\\u201c", "'").replace("\\u201d","'")
    j = json.loads(j1)
    
    d2 = {}
    
    for k, v in j.items():
        d2[k] = v['1']
    
    with open('json/%s' % filename.replace(".csv",".json"), 'w') as f:
        json.dump(d2, f)