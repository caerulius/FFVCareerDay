import pandas as pd

class DataManager():
    def __init__(self):
        self.files = {}
        self.files['areas'] = pd.read_csv('tables/areas.csv',index_col='area_id',dtype=str)
        self.files['items'] = pd.read_csv('tables/item_id.csv',index_col='item_id',dtype=str)
        self.files['magics'] = pd.read_csv('tables/magic_id.csv',index_col='magic_id',dtype=str)
        self.files['crystals'] = pd.read_csv('tables/crystal_id.csv',index_col='crystal_id',dtype=str)
        self.files['abilities'] = pd.read_csv('tables/ability_id.csv',index_col='ability_id',dtype=str)
        self.files['rewards'] = pd.read_csv('tables/rewards.csv', dtype=str)
        self.files['rewards']['idx'] = self.files['rewards']['idx'].astype(int)
        self.files['shops'] = pd.read_csv('tables/shop_id.csv',dtype=str)
        self.files['shops']['idx'] = self.files['shops']['idx'].astype(int)
        self.files['shopprices'] = pd.read_csv('tables/shop_prices.csv', dtype=str)
        self.files['shopprices']['idx'] = self.files['shopprices']['idx'].astype(int)

        #self.files['formations'] = pd.read_csv('tables/formation_id.csv')
        #self.files['formations']['formation_names'] = self.files['formations']['enemy_1_name'] + " " + self.files['formations']['enemy_2_name'] + " " + \
        #                                              self.files['formations']['enemy_3_name'] + " " + self.files['formations']['enemy_4_name'] + " " + \
        #                                              self.files['formations']['enemy_5_name'] + " " + self.files['formations']['enemy_6_name'] + " " + \
        #                                              self.files['formations']['enemy_7_name'] + " " + self.files['formations']['enemy_8_name']

       	#self.files['formations']['formation_names'] = self.files['formations']['formation_names'].str.strip()
       	#self.files['monsters'] = pd.read_csv('monster_data.csv', dtype=str)