# -*- coding: utf-8 -*-
import pandas as pd

text_dict = pd.read_csv('../data/text_table.csv',header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('../data/text_table.csv',header=None,index_col=1).to_dict()[0]


data = '''
ffffffffffffff
6e8d817e8bffff
688d7e86ffffff
718890ffffffff
637e7fa3ffffff
658280818dffff
668e7a8b7dffff
6a827c84ffffff
618e82857d7489
6c7a878d8b7aff
648c7c7a897eff
728d7e7a85ffff
627a898d8e8b7e
698e8689ffffff
638b808772907d
728688847effff
68867a807effff
73818b8890ffff
72907d72857a89
66828573888c8c
72857a8c81ffff
608782867a858c
608286ffffffff
77c5658280818d
628887838e8b7e
6e7b8c7e8b8f7e
60877a8592937e
737a867effffff
6288878d8b8885
627a8d7c81ffff
717e857e7a8c7e
6288867b82877e
638b828784ffff
6f8b7a92ffffff
717e8f828f7eff
737e8b8b7a8287
638e8686925354
67827d7effffff
72818890ffffff
638e8686925355
72828780ffffff
6585828b8dffff
637a877c7effff
6c8286827cffff
6c807c72908b7d
6c807c72908b7d
6c807c72908b7d
6c807c72908b7d
6c807c72908b7d
6c807c72908b7d
7681828d7effff
7681828d7effff
7681828d7effff
7681828d7effff
7681828d7effff
7681828d7effff
61857a7c84ffff
61857a7c84ffff
61857a7c84ffff
61857a7c84ffff
61857a7c84ffff
61857a7c84ffff
6382867e87ffff
6382867e87ffff
6382867e87ffff
6382867e87ffff
6382867e87ffff
6382867e87ffff
728e86868887ff
728e86868887ff
728e86868887ff
728e86868887ff
728e86868887ff
717e7dffffffff
717e7dffffffff
717e7dffffffff
77c56c7a80827c
61858e7eff


6a878280818dffff
6c888784ffffffff
7381827e7fffffff
638b7a80888887ff
6d8287837affffff
727a868e8b7a82ff
617e8b8c7e8b848b
678e878d7e8bffff
6c928ca47c6a878d
7681957e6c7a807e
a6a77c846c7a807e
7382867e6c7a807e
728e868688877e8b
61858e7e6c7a807e
717e7dff6c7a807e
6c7e7d827a8d888b
62817e86828c8dff
667e88867a877c8b
617a8b7dffffffff
637a877c7e8bffff
6c8286827cffffff
6d888b867a85ffff

648a8e828996f1ff
648a8e828996f3ff
648a8e828996c1ff
648a8e828996e3ff
648a8e828996e8ff
648a8e828996eaff
648a8e828996e9bf
648a8e828996edff
648a8e828996efff
648a8e828996eeff
60808285828d92ff
676f96e25453cdff
676f96e25553cdff
676f96e25653cdff
6c6f96e25453cdff
6c6f96e25653cdff
618b7a9085ffffff
637b8596668b8289
55c5677a877d7e7d
6c7e7d827c82877e
62888f7e8bffffff
62888e878d7e8bff
648f7a7d7effffff
6b7e7a8b87828780
617a8b8b827e8bff
617e8b8c7e8b84ff
627a8e8d828887ff
6f8b7e7e8689a48f
6f7a8c8c7a807e8c
638680658588888b
6f828d7f7a85858c
648a8e828996ebff'''
data = data.replace("\n","ZZ")
n = 2
byte_list = [data[i:i+n] for i in range(0, len(data), n)]


def run_decrypt():
    new_bytes = []
    num = 1
    for byte in byte_list:
        if byte == "ZZ":
            new_bytes.append("\n")
            num = num + 1
        else:
            byte = str(byte).upper()
            try:
                newbyte = text_dict[byte]
            except:
                newbyte = ' '
            new_bytes.append(newbyte)
    
    final_str = ''
    for byte in new_bytes:
        final_str = final_str + str(byte)
        
    print(final_str)
    
    
    
    
    
    
    
    
job_dict = {'Fire Sword' : 'E77800','Ice Sword' : 'E77818','Bolt Sword' : 'E77830','Venom Sword' : 'E77848','Mute Sword' : 'E77860','Sleep Sword' : 'E77878','Fire2 Sword' : 'E77890','Ice2 Sword' : 'E778A8','Bolt2 Sword' : 'E778C0','Drain Sword' : 'E778D8','Break Sword' : 'E778F0','Bio Sword' : 'E77908','Fire3 Sword' : 'E77920','Ice3 Sword' : 'E77938','Bolt3 Sword' : 'E77950','Holy Sword' : 'E77968','Flare Sword' : 'E77980','Psych Sword' : 'E77998','Cure White' : 'E779B0','Scan White' : 'E779C8','Antdt White' : 'E779E0','Mute White' : 'E779F8','Armor White' : 'E77A10','Size White' : 'E77A28','Cure2 White' : 'E77A40','Life White' : 'E77A58','Charm White' : 'E77A70','Image White' : 'E77A88','Shell White' : 'E77AA0','Heal White' : 'E77AB8','Cure3 White' : 'E77AD0','Wall White' : 'E77AE8','Bersk White' : 'E77B00','Life2 White' : 'E77B18','Holy White' : 'E77B30','Dispel White' : 'E77B48','Fire Black' : 'E77B60','Ice Black' : 'E77B78','Bolt Black' : 'E77B90','Venom Black' : 'E77BA8','Sleep Black' : 'E77BC0','Toad Black' : 'E77BD8','Fire2 Black' : 'E77BF0','Ice2 Black' : 'E77C08','Bolt2 Black' : 'E77C20','Drain Black' : 'E77C38','Break Black' : 'E77C50','Bio Black' : 'E77C68','Fire3 Black' : 'E77C80','Ice3 Black' : 'E77C98','Bolt3 Black' : 'E77CB0','Flare Black' : 'E77CC8','Doom Black' : 'E77CE0','Psych Black' : 'E77CF8','Drag Time' : 'E77D10','Slow Time' : 'E77D28','Regen Time' : 'E77D40','Void Time' : 'E77D58','Haste Time' : 'E77D70','Float Time' : 'E77D88','Demi Time' : 'E77DA0','Stop Time' : 'E77DB8','Exit Time' : 'E77DD0','Comet Time' : 'E77DE8','Slow2 Time' : 'E77E00','Reset Time' : 'E77E18','Qrter Time' : 'E77E30','Haste2 Time' : 'E77E48','Old Time' : 'E77E60','Meteo Time' : 'E77E78','Quick Time' : 'E77E90','XZone Time': 'E77EA8'}
job_dict = {'Chocob Esper' : 'E77EC0','Sylph Esper' : 'E77ED8','Remora Esper' : 'E77EF0','Shiva Esper' : 'E77F08','Ramuh Esper' : 'E77F20','Ifrit Esper' : 'E77F38','Titan Esper' : 'E77F50','Golem Esper' : 'E77F68','Shoat Esper' : 'E77F80','Crbnkl Esper' : 'E77F98','Syldra Esper' : 'E77FB0','Odin Esper' : 'E77FC8','Phenix Esper' : 'E77FE0','Levia Esper' : 'E77FF8','Bahamut Esper' : 'E78010','Power Song' : 'E78028','Speed Song' : 'E78040','Vitality Song' : 'E78058','Magic Song' : 'E78070','Hero Song' : 'E78088','Requiem Song' : 'E780A0','Love Song' : 'E780B8','Charm Song' : 'E780D0'}
job_dict = {'Condemn Blue Magic' : 'E78430','Roulette Blue Magic' : 'E78448','AquaRake Blue Magic' : 'E78460','L5 Doom Blue Magic' : 'E78478','L4 Qrter Blue Magic' : 'E78490','L2 Old Blue Magic' : 'E784A8','L3 Flare Blue Magic' : 'E784C0','FrogSong Blue Magic' : 'E784D8','TinySong Blue Magic' : 'E784F0','Flash Blue Magic' : 'E78508','Time Slip Blue Magic' : 'E78520','MoonFlut Blue Magic' : 'E78538','DethClaw Blue Magic' : 'E78550','Aero Blue Magic' : 'E78568','Aero 2 Blue Magic' : 'E78580','Aero 3 Blue Magic' : 'E78598','Emission Blue Magic' : 'E785B0','GblinPnch Blue Magic' : 'E785C8','DrkShock Blue Magic' : 'E785E0','GuardOff Blue Magic' : 'E785F8','Fusion Blue Magic' : 'E78610','MindBlst Blue Magic' : 'E78628','Vampire Blue Magic' : 'E78640','Hammer Blue Magic' : 'E78658','MgthyGrd Blue Magic' : 'E78670','Exploder Blue Magic' : 'E78688','???? Blue Magic' : 'E786A0','Blowfish Blue Magic' : 'E786B8','WhiteWind Blue Magic' : 'E786D0','Missile Blue Magic' : 'E786E8'}
#job_dict = {"Knight  " : "E79E48","Monk    " : "E79E50","Thief   " : "E79E58","Dragoon " : "E79E60","Ninja   " : "E79E68","Samurai " : "E79E70","Berserkr" : "E79E78","Hunter  " : "E79E80","MysticKnt" : "E79E88","WhiteMage" : "E79E90","BlananckMage" : "E79E98","TimeMage" : "E79EA0","Summoner" : "E79EA8","BlueMage" : "E79EB0","Red Mage" : "E79EB8","Mediator" : "E79EC0","Chemist " : "E79EC8","Geomancr" : "E79ED0","Bard    " : "E79ED8","Dancer  " : "E79EE0","Mimic   " : "E79EE8","FrLancer" : "E79EF0"}
job_dict = {"Other  " : "E79A00","Item   " : "E79A08","Row    " : "E79A10","Def.   " : "E79A18","Fight  " : "E79A20","Guard  " : "E79A28","Kick   " : "E79A30","BuildUp" : "E79A38","Mantra " : "E79A40","Escape " : "E79A48","Steal  " : "E79A50","Capture" : "E79A58","Jump   " : "E79A60","DrgnSwd" : "E79A68","Smoke  " : "E79A70","Image  " : "E79A78","Throw  " : "E79A80","SwdSlap" : "E79A88","GilToss" : "E79A90","Slash  " : "E79A98","Animals" : "E79AA0","Aim    " : "E79AA8","X-Fight" : "E79AB0","Conjure" : "E79AB8","Observe" : "E79AC0","Analyze" : "E79AC8","Tame   " : "E79AD0","Control" : "E79AD8","Catch  " : "E79AE0","Release" : "E79AE8","Combine" : "E79AF0","Drink  " : "E79AF8","Pray   " : "E79B00","Revive " : "E79B08","Terrain" : "E79B10","Dummy01" : "E79B18","Hide   " : "E79B20","Show   " : "E79B28","Dummy02" : "E79B30","Sing   " : "E79B38","Flirt  " : "E79B40","Dance  " : "E79B48","Mimic  " : "E79B50","txterr" : "E79B58","txterr" : "E79B60","txterr" : "E79B68","txterr" : "E79B70","txterr" : "E79B78","MgcSwrd1" : "E79B80","MgcSwrd2" : "E79B88","MgcSwrd3" : "E79B90","MgcSwrd4" : "E79B98","MgcSwrd5" : "E79BA0","MgcSwrd6" : "E79BA8","txterr" : "E79BB0","txterr" : "E79BB8","White 1" : "E79BC0","White 2" : "E79BC8","White 3" : "E79BD0","White 4" : "E79BD8","White 5" : "E79BE0","White 6" : "E79BE8","txterr" : "E79BF0","txterr" : "E79BF8","Black 1" : "E79C00","Black 2" : "E79C08","Black 3" : "E79C10","Black 4" : "E79C18","Black 5" : "E79C20","Black 6" : "E79C28","txterr" : "E79C30","txterr" : "E79C38","Dimen 1" : "E79C40","Dimen 2" : "E79C48","Dimen 3" : "E79C50","Dimen 4" : "E79C58","Dimen 5" : "E79C60","Dimen 6" : "E79C68","txterr" : "E79C70","txterr" : "E79C78","Summon 1" : "E79C80","Summon 2" : "E79C88","Summon 3" : "E79C90","Summon 4" : "E79C98","Summon 5" : "E79CA0","txterr" : "E79CA8","txterr" : "E79CB0","txterr" : "E79CB8","Red 1" : "E79CC0","Red 2" : "E79CC8","Red 3" : "E79CD0","txterr" : "E79CD8","txterr" : "E79CE0","txterr" : "E79CE8","txterr" : "E79CF0","txterr" : "E79CF8","X-Magic" : "E79D00","Blue " : "E79D08","txterr" : "E79D10","txterr" : "E79D18","txterr" : "E79D20","txterr" : "E79D28","txterr" : "E79D30","txterr" : "E79D38","Equip <Shld> " : "E79D40","Equip <Armr> " : "E79D48","Equip <Ribn> " : "E79D50","Equip <Swrd> " : "E79D58","Equip <Sper> " : "E79D60","Equip <Katn> " : "E79D68","Equip <Axe><Hamr>" : "E79D70","Equip <Bow> " : "E79D78","Equip <Whip> " : "E79D80","Equip <Harp> " : "E79D88","Agility " : "E79D90","HP +10% " : "E79D98","HP +20% " : "E79DA0","HP +30% " : "E79DA8","MP +10% " : "E79DB0","MP +30% " : "E79DB8","Brawl   " : "E79DC0","Dbl Grip" : "E79DC8","2-Handed" : "E79DD0","Medicine" : "E79DD8","Cover   " : "E79DE0","Counter " : "E79DE8","Evade   " : "E79DF0","Learning" : "E79DF8","Barrier " : "E79E00","Berserk " : "E79E08","Caution " : "E79E10","Preemptiv" : "E79E18","Passages" : "E79E20","DmgFloor" : "E79E28","Pitfalls" : "E79E30","Equip <Rod> " : "E79E38","Dash" : "E79E40"}
def run_encrypt():
    for job in job_dict.keys():
        print(";"+job)
        print('org $'+job_dict[job])
        print("db $A1")
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
        
        