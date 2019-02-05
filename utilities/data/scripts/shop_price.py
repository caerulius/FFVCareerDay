import pandas as pd

df_price_table = pd.read_csv('..\\tables\\shop_prices.csv', dtype=str)
df_price_table['idx'] = df_price_table['idx'].astype(int)

resell_dict = {
    "HALF": "0",
    "5": "4",
    "1": "8"
    }
NUM_SHOP_PRICES = 768

class ShopPrice:
    def __init__(self, index, collectible_manager):
        self.idx = index
        self.generate_from_df(df_price_table)
        '''
        self.address
        self.shop_type (00 for magic, 03 for item, 07 for crystal/ability)
        self.id (hex byte)
        self.content_name (reward name)
        self.price (two hexbytes concatenated)
        self.resell_byte (first byte of price)
        self.price_byte (second byte of price)
        self.int_price (human readable price)
        self.resell (HALF, 5 or 1)
        '''
        self.resell = str(self.resell)
        self.collectible = collectible_manager.get_by_name(self.content_name)

    @property
    def asar_output(self):
        return f"org ${self.address}\ndb ${self.resell_byte}, ${self.price_byte}"

    @property
    def short_output(self):
        if self.shop_type == '03':
            resell = self.resell
        else:
            resell = "NOSELL"
        return f"{self.content_name} costs {self.int_price} and resells for {resell}"

    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Shop Price class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])


class ShopPriceManager:
    def __init__(self, collectible_manager):
        self.shopprices = [ShopPrice(x, collectible_manager) for x
                           in range(1, NUM_SHOP_PRICES)] 

    def print_patch(self):
        for i in self.shopprices:
            print(i.asar_output)

    def print_spoiler(self):
        for i in self.shopprices:
            print(i.short_output)
