import pandas as pd

class DataManager():
    def __init__(self):
        self.files = {}
        files["items"] = pd.read_csv('tables/item_id.csv',index_col='item_id',dtype=str)
        files["magic"] = pd.read_csv('tables/magic_id.csv',index_col='magic_id',dtype=str)
        files["crystals"] = pd.read_csv('tables/crystal_id.csv',index_col='crystal_id',dtype=str)
        files["abilities"] = pd.read_csv('tables/ability_id.csv',index_col='ability_id',dtype=str)
        files["rewards"] = pd.read_csv('tables/rewards.csv', dtype=str)
        files["rewards"]["idx"] = files["rewards"]["idx"].astype(int)
