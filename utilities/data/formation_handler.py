import pandas as pd
import random


# Load data, create initial formation names of enemies
df_formation = pd.read_csv('formation_id.csv')
df_formation['formation_names'] = df_formation['enemy_1_name'] + " " + df_formation['enemy_2_name'] + " " + df_formation['enemy_3_name'] + " " + df_formation['enemy_4_name'] + " " + df_formation['enemy_5_name'] + " " + df_formation['enemy_6_name'] + " " + df_formation['enemy_7_name'] + " " + df_formation['enemy_8_name']
df_formation['formation_names'] = df_formation['formation_names'].str.strip()


class Formation(object):
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_formation)
        # self.update_output()
#        self.asar_output = f";org ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
#        self.output_short = f"Chest: {self.idx}\t{self.original_reward} → {self.reward}"
    def generate_from_df(self, df):
        s = df_formation[df_formation['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Formation class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
                
                
all_formations = [Formation(x) for x in range(1, df_formation.shape[0]+1)]

for i in all_formations:
    print(i.formation_names)