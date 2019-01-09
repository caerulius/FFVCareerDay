import pandas as pd

shop_table = pd.read_csv('shop_id.csv', dtype=str)
item_table = pd.read_csv('item_id.csv', index_col='item_id', dtype=str)
magic_table = pd.read_csv('magic_id.csv', index_col='magic_id', dtype=str)

text = ""

for index, row in shop_table.iterrows():
    base_address = row.address

    shop_type = ""
    shop_byte = ""

    if row.shop_type != "0":
        table = item_table
        shop_type = "Item"
        shop_byte = "40"
    else:
        table = magic_table
        shop_type = "Magic"
        shop_byte = "20"
    
    if int(row.slot1, 16) != 0:
        text += table.loc[row.slot1].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 1)[2:].upper() + ","
        text += row.slot1 + ","
        text += "Shop" + "\n"

    if int(row.slot2, 16) != 0:
        text += table.loc[row.slot2].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 2)[2:].upper() + ","
        text += row.slot2 + ","
        text += "Shop" + "\n"

    if int(row.slot3, 16) != 0:
        text += table.loc[row.slot3].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 3)[2:].upper() + ","
        text += row.slot3 + ","
        text += "Shop" + "\n"

    if int(row.slot4, 16) != 0:
        text += table.loc[row.slot4].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 4)[2:].upper() + ","
        text += row.slot4 + ","
        text += "Shop" + "\n"

    if int(row.slot5, 16) != 0:
        text += table.loc[row.slot5].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 5)[2:].upper() + ","
        text += row.slot5 + ","
        text += "Shop" + "\n"
    
    if int(row.slot6, 16) != 0:
        text += table.loc[row.slot6].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 6)[2:].upper() + ","
        text += row.slot6 + ","
        text += "Shop" + "\n"

    if int(row.slot7, 16) != 0:
        text += table.loc[row.slot7].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 7)[2:].upper() + ","
        text += row.slot7 + ","
        text += "Shop" + "\n"

    if int(row.slot8, 16) != 0:
        text += table.loc[row.slot8].readable_name + ","
        text += row.shop_name + ","
        text += shop_type + ","
        text += "-" + ","
        text += shop_byte + ","
        text += hex(int(base_address, 16) + 8)[2:].upper() + ","
        text += row.slot8 + ","
        text += "Shop" + "\n"

with open("unifiedshopdata.csv", "w+") as f:
    f.write(text)
