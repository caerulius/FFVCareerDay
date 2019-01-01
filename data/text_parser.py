# -*- coding: utf-8 -*-
import pandas as pd

text_dict = pd.read_csv('text_table.csv',header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('text_table.csv',header=None,index_col=1).to_dict()[0]
text_dict['FF'] = "__"

data = '''6b7e87877a9bffffa3a3a301ffff657a
8d817e8ba3a3a301ffff68998585ff89
8b888d7e7c8dff8d817eff628b928c8d
7a858ca3a3a300798884849bffff688c
ff7a87928d'''
data = data.replace("\n","ZZ")
n = 2
byte_list = [data[i:i+n] for i in range(0, len(data), n)]


def run_decrypt():
    new_bytes = []
    for byte in byte_list:
        if byte == "ZZ":
            new_bytes.append("\n")
        else:
            byte = str(byte).upper()
            try:
                newbyte = text_dict[byte]
            except:
                newbyte = '_'
            new_bytes.append(newbyte)
    
    final_str = ''
    for byte in new_bytes:
        final_str = final_str + str(byte)
        
    print(final_str)
    
    
    
    
    
    
    
    
job_dict = {'Fire Sword' : 'E77800','Ice Sword' : 'E77818','Bolt Sword' : 'E77830','Venom Sword' : 'E77848','Mute Sword' : 'E77860','Sleep Sword' : 'E77878','Fire2 Sword' : 'E77890','Ice2 Sword' : 'E778A8','Bolt2 Sword' : 'E778C0','Drain Sword' : 'E778D8','Break Sword' : 'E778F0','Bio Sword' : 'E77908','Fire3 Sword' : 'E77920','Ice3 Sword' : 'E77938','Bolt3 Sword' : 'E77950','Holy Sword' : 'E77968','Flare Sword' : 'E77980','Psych Sword' : 'E77998','Cure White' : 'E779B0','Scan White' : 'E779C8','Antdt White' : 'E779E0','Mute White' : 'E779F8','Armor White' : 'E77A10','Size White' : 'E77A28','Cure2 White' : 'E77A40','Life White' : 'E77A58','Charm White' : 'E77A70','Image White' : 'E77A88','Shell White' : 'E77AA0','Heal White' : 'E77AB8','Cure3 White' : 'E77AD0','Wall White' : 'E77AE8','Bersk White' : 'E77B00','Life2 White' : 'E77B18','Holy White' : 'E77B30','Dispel White' : 'E77B48','Fire Black' : 'E77B60','Ice Black' : 'E77B78','Bolt Black' : 'E77B90','Venom Black' : 'E77BA8','Sleep Black' : 'E77BC0','Toad Black' : 'E77BD8','Fire2 Black' : 'E77BF0','Ice2 Black' : 'E77C08','Bolt2 Black' : 'E77C20','Drain Black' : 'E77C38','Break Black' : 'E77C50','Bio Black' : 'E77C68','Fire3 Black' : 'E77C80','Ice3 Black' : 'E77C98','Bolt3 Black' : 'E77CB0','Flare Black' : 'E77CC8','Doom Black' : 'E77CE0','Psych Black' : 'E77CF8','Drag Time' : 'E77D10','Slow Time' : 'E77D28','Regen Time' : 'E77D40','Void Time' : 'E77D58','Haste Time' : 'E77D70','Float Time' : 'E77D88','Demi Time' : 'E77DA0','Stop Time' : 'E77DB8','Exit Time' : 'E77DD0','Comet Time' : 'E77DE8','Slow2 Time' : 'E77E00','Reset Time' : 'E77E18','Qrter Time' : 'E77E30','Haste2 Time' : 'E77E48','Old Time' : 'E77E60','Meteo Time' : 'E77E78','Quick Time' : 'E77E90','XZone Time': 'E77EA8'}
job_dict = {'Chocob Esper' : 'E77EC0','Sylph Esper' : 'E77ED8','Remora Esper' : 'E77EF0','Shiva Esper' : 'E77F08','Ramuh Esper' : 'E77F20','Ifrit Esper' : 'E77F38','Titan Esper' : 'E77F50','Golem Esper' : 'E77F68','Shoat Esper' : 'E77F80','Crbnkl Esper' : 'E77F98','Syldra Esper' : 'E77FB0','Odin Esper' : 'E77FC8','Phenix Esper' : 'E77FE0','Levia Esper' : 'E77FF8','Bahamut Esper' : 'E78010','Power Song' : 'E78028','Speed Song' : 'E78040','Vitality Song' : 'E78058','Magic Song' : 'E78070','Hero Song' : 'E78088','Requiem Song' : 'E780A0','Love Song' : 'E780B8','Charm Song' : 'E780D0'}
job_dict = {'Condemn Blue Magic' : 'E78430','Roulette Blue Magic' : 'E78448','AquaRake Blue Magic' : 'E78460','L5 Doom Blue Magic' : 'E78478','L4 Qrter Blue Magic' : 'E78490','L2 Old Blue Magic' : 'E784A8','L3 Flare Blue Magic' : 'E784C0','FrogSong Blue Magic' : 'E784D8','TinySong Blue Magic' : 'E784F0','Flash Blue Magic' : 'E78508','Time Slip Blue Magic' : 'E78520','MoonFlut Blue Magic' : 'E78538','DethClaw Blue Magic' : 'E78550','Aero Blue Magic' : 'E78568','Aero 2 Blue Magic' : 'E78580','Aero 3 Blue Magic' : 'E78598','Emission Blue Magic' : 'E785B0','GblinPnch Blue Magic' : 'E785C8','DrkShock Blue Magic' : 'E785E0','GuardOff Blue Magic' : 'E785F8','Fusion Blue Magic' : 'E78610','MindBlst Blue Magic' : 'E78628','Vampire Blue Magic' : 'E78640','Hammer Blue Magic' : 'E78658','MgthyGrd Blue Magic' : 'E78670','Exploder Blue Magic' : 'E78688','???? Blue Magic' : 'E786A0','Blowfish Blue Magic' : 'E786B8','WhiteWind Blue Magic' : 'E786D0','Missile Blue Magic' : 'E786E8'}
job_dict = {'Other Ability' : 'E78700','Item Ability' : 'E78718','Row Ability' : 'E78730','Def. Ability' : 'E78748','Attack Ability' : 'E78760','Guard Ability' : 'E78778','Kick Ability' : 'E78790','BuildUp Ability' : 'E787A8','Mantra Ability' : 'E787C0','Escape Ability' : 'E787D8','Steal Ability' : 'E787F0','Capture Ability' : 'E78808','Jump Ability' : 'E78820','DrgnSwd Ability' : 'E78838','Smoke Ability' : 'E78850','Image Ability' : 'E78868','Throw Ability' : 'E78880','SwdSlap Ability' : 'E78898','GilToss Ability' : 'E788B0','Slash Ability' : 'E788C8','Animals Ability' : 'E788E0','Aim Ability' : 'E788F8','X-Fight Ability' : 'E78910','Conjure Ability' : 'E78928','Observe Ability' : 'E78940','Analyze Ability' : 'E78958','Tame Ability' : 'E78970','Control Ability' : 'E78988','Catch Ability' : 'E789A0','Release Ability' : 'E789B8','Combine Ability' : 'E789D0','Drink Ability' : 'E789E8','Pray Ability' : 'E78A00','Revive Ability' : 'E78A18','Terrain Ability' : 'E78A30','*Dummy01 Ability' : 'E78A48','Hide Ability' : 'E78A60','Show Ability' : 'E78A78','*Dummy02 Ability' : 'E78A90','Sing Ability' : 'E78AA8','Flirt Ability' : 'E78AC0','Dance Ability' : 'E78AD8','Mimic Ability' : 'E78AF0','Blank18 Ability' : 'E78B08','Blank19 Ability' : 'E78B20','Blank20 Ability' : 'E78B38','Blank21 Ability' : 'E78B50','Blank22 Ability' : 'E78B68','MgcSwrd Lv.2 Ability' : 'E78B80','MgcSwrd Lv.3 Ability' : 'E78B98','MgcSwrd Lv.4 Ability' : 'E78BB0','MgcSwrd Lv.5 Ability' : 'E78BC8','MgcSwrd Lv.6 Ability' : 'E78BE0','MgcSwrd Lv.7 Ability' : 'E78BF8','Blank23 Ability' : 'E78C10','Blank24 Ability' : 'E78C28','White Lv.1 Ability' : 'E78C40','White Lv.2 Ability' : 'E78C58','White Lv.3 Ability' : 'E78C70','White Lv.4 Ability' : 'E78C88','White Lv.5 Ability' : 'E78CA0','White Lv.6 Ability' : 'E78CB8','Blank25 Ability' : 'E78CD0','Blank26 Ability' : 'E78CE8','Black Lv.1 Ability' : 'E78D00','Black Lv.2 Ability' : 'E78D18','Black Lv.3 Ability' : 'E78D30','Black Lv.4 Ability' : 'E78D48','Black Lv.5 Ability' : 'E78D60','Black Lv.6 Ability' : 'E78D78','Blank1 Ability' : 'E78D90','Blank2 Ability' : 'E78DA8','Dimen Lv.1 Ability' : 'E78DC0','Dimen Lv.2 Ability' : 'E78DD8','Dimen Lv.3 Ability' : 'E78DF0','Dimen Lv.4 Ability' : 'E78E08','Dimen Lv.5 Ability' : 'E78E20','Dimen Lv.6 Ability' : 'E78E38','Blank3 Ability' : 'E78E50','Blank4 Ability' : 'E78E68','Summon Lv.1 Ability' : 'E78E80','Summon Lv.2 Ability' : 'E78E98','Summon Lv.3 Ability' : 'E78EB0','Summon Lv.4 Ability' : 'E78EC8','Summon Lv.5 Ability' : 'E78EE0','Blank5 Ability' : 'E78EF8','Blank6 Ability' : 'E78F10','Blank7 Ability' : 'E78F28','Red Lv.1 Ability' : 'E78F40','Red Lv.2 Ability' : 'E78F58','Red Lv.3 Ability' : 'E78F70','Blank8 Ability' : 'E78F88','Blank9 Ability' : 'E78FA0','Blank10 Ability' : 'E78FB8','Blank11 Ability' : 'E78FD0','Blank27 Ability' : 'E78FE8','X-Magic Ability' : 'E79000','Blue Ability' : 'E79018','Blank12 Ability' : 'E79030','Blank13 Ability' : 'E79048','Blank14 Ability' : 'E79060','Blank15 Ability' : 'E79078','Blank16 Ability' : 'E79090','Blank17 Ability' : 'E790A8','Equip Shield Ability' : 'E790C0','Equip Armors Ability' : 'E790D8','Equip Ribbon Ability' : 'E790F0','Equip Swords Ability' : 'E79108','Equip Spears Ability' : 'E79120','Equip Katana Ability' : 'E79138','Equip Axes Ability' : 'E79150','Equip Bows Ability' : 'E79168','Equip Whips Ability' : 'E79180','Equip Harps Ability' : 'E79198','Agility Ability' : 'E791B0','HP +10% Ability' : 'E791C8','HP +20% Ability' : 'E791E0','HP +30% Ability' : 'E791F8','MP +10% Ability' : 'E79210','MP +30% Ability' : 'E79228','Brawl Ability' : 'E79240','Dbl Grip Ability' : 'E79258','2-Handed Ability' : 'E79270','Medicine Ability' : 'E79288','Cover Ability' : 'E792A0','Counter Ability' : 'E792B8','Evade Ability' : 'E792D0','Learning Ability' : 'E792E8','Barrier Ability' : 'E79300','Berserk Ability' : 'E79318','Caution Ability' : 'E79330','Preemptive Ability' : 'E79348','Passages Ability' : 'E79360','DmgFloor Ability' : 'E79378','Pitfalls Ability' : 'E79390','Equip Rods Ability' : 'E793A8','Dash Ability' : 'E793C0'}
#job_dict = {'Knight' : 'E77560','Monk' : 'E77578','Thief' : 'E77590','Dragoon' : 'E775A8','Ninja' : 'E775C0','Samurai' : 'E775D8','Berserker' : 'E775F0','Hunter' : 'E77608','MysticKnight' : 'E77620','WhiteMage' : 'E77638','BlackMage' : 'E77650','TimeMage' : 'E77668','Summoner' : 'E77680','BlueMage' : 'E77698','RedMage' : 'E776B0','Mediator' : 'E776C8','Chemist' : 'E776E0','Geomancer' : 'E776F8','Bard' : 'E77710','Dancer' : 'E77728','Mimic' : 'E77740','Freelancer' : 'E77758'}
job_dict= {'KARNAK METEOR':'E','WALSE METEOR':'e','RUINED CITY METEOR':'e'}
def run_encrypt():
    for job in job_dict.keys():
        print(";"+job)
        print('org $'+job_dict[job])
        new_str = ''
        for char in job:
            try:
                new_char = text_dict2[char]
            except:
                new_char = '96'
            
            
            new_str = new_str + "db $" + new_char + "\n"
        # new_str = new_str + "db $96\ndb $62, $8B, $92, $8C\ndb $8D, $7A, $85, $FF"    # "Crystal"
        #new_str = new_str + "db $96\ndb $6C, $7A, $80, $82, $7C, $FF"                   # "Magic"
        new_str = new_str + "db $FF"                   # ""
        print(new_str)  
        
        