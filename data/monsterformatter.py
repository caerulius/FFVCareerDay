import pandas as pd

df_monster_table = pd.read_csv('monster_data.csv', dtype=str)

text = ""

for index, row in df_monster_table.iterrows():
    base_address = row.drops_address
    
    if int(row.steal_common, 16) != 0:
        text += row.steal_common_name + ","
        text += row.monster_name + " Common Steal" + ","
        text += "Item" + ","
        text += "-" + ","
        text += "40" + ","
        text += base_address + ","
        text += row.steal_common + ","
        text += "Loot" + "\n"

    if int(row.steal_rare, 16) != 0:
        text += row.steal_rare_name + ","
        text += row.monster_name + " Rare Steal" + ","
        text += "Item" + ","
        text += "-" + ","
        text += "40" + ","
        text += hex(int(base_address, 16) + 1)[2:].upper() + ","
        text += row.steal_rare + ","
        text += "Loot" + "\n"

    if int(row.drop_common, 16) != 0:
        text += row.drop_common_name + ","
        text += row.monster_name + " Common Drop" + ","
        text += "Item" + ","
        text += "-" + ","
        text += "40" + ","
        text += hex(int(base_address, 16) + 2)[2:].upper() + ","
        text += row.drop_common + ","
        text += "Loot" + "\n"

    if int(row.drop_rare, 16) != 0:
        text += row.drop_rare_name + ","
        text += row.monster_name + " Rare Drop" + ","
        text += "Item" + ","
        text += "-" + ","
        text += "40" + ","
        text += hex(int(base_address, 16) + 3)[2:].upper() + ","
        text += row.drop_rare + ","
        text += "Loot" + "\n"

with open("unifiedmonsterdata.csv", "w+") as f:
    f.write(text)
