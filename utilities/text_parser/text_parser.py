# -*- coding: utf-8 -*-
import pandas as pd

text_dict = pd.read_csv('text_table.csv',header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('text_table.csv',header=None,index_col=1).to_dict()[0]


data = '''66887b9787ffffffffff
6a8285857e8b96617e7e
6d8e8d96647a8d7e8bff
728d8b7a9296627a8dff
728d7e7e8596617a8dff
637e7a8b88ffffffffff
728d8b88897e8bffffff
a6a77c849666887b9787
7681957e9672877a847e
6c88857d967682877dff
6c7a87827682937a8b7d
6c7a80827c966f888dff
728e7c847e8bffffffff
6e7c8d888b7a847e87ff
667a8d858287808cffff
61828081888b87ffffff
737a8d8effffffffffff
617a877d7e8b9672a3ff
667a858e8b7affffffff
72847e857e8d8887ffff
627a8b7c8e8b8c7e8bff
74877d7e7a7d718e8c84
6f8c927c8188677e7a7d
71887c84667a8b8d7e8b
667a857a96627a8dffff
62887c847a8d8b827c7e
6185887c848cffffffff
64857f9673887a7dffff
687c7e7288857d827e8b
7182847a857d6c7a807e
76928f7e8b87ffffffff
6f7a7d888c8e857effff
61927b85888cffffffff
607e808285ffffffffff
798e8effffffffffffff
76947d966d7a7c84ffff
668b7a8c8c738e8bae7e
72947e878d96617e7eff
6c95818b9496638b8087
717a868e81ffffffffff
628b7e9096638e8c8dff
6f88ad7e8b807e828c8d
6c888d888b96738b7a89
637e7f7e7a8d7e8bffff
667a8b8482867a8c8b7a
727e8b807e7a878dffff
72888b7c7e8b7e8bffff
6a7a8b877a84ffffffff
6682807a8cffffffffff
6f7a807e965655ffffff
6f7a807e965957ffffff
6f7a807e9654555bffff
6f7a807e96555859ffff
687f8b828dffffffffff
6188867bffffffffffff
739082876b82937a8b7d
6182887288857d827e8b
628b7e8c7c7e878dffff
61857a7c8465857a867e
728d88877e6688857e86
6c828782638b7a808887
6f8b888d888d92897eff
63a3628182867e8b7aff
727a877d966f888b8492
727a877d966a82987e8b
727a877d96617e7a8bff
717a966c7a807effffff
6b8887847a6a8780818d
728d88877e7d6c7a8c84
7681af8596637e868887
6b7a86827affffffffff
608b7c817a7e73887a7d
67928e7d888b7affffff
67927d8b7affffffffff
767a8d7e8b96618e9393
73888b8b7e878dffffff
71887c8496618b7a8287
737a8b7a878d8e857aff
697a828596617e7a8bff
6b8e877e878d7affffff
6382858e8b7effffffff
657a7e8b827e966e8b7c
637e8f888e8b7e8bffff
6c7a877d8b7a847effff
6a8e937a8bffffffffff
627a7c8d8e8cffffffff
727a877d96628b7a9085
7281827e857d638b8087
618588887d967297867e
607c8b8889817e8c7eff
6c88888085647a8d7e8b
6b88898b888cffffffff
72848e9896647a8d7e8b
608a8e7a8d8188877eff
767e8b7e8c877a847eff
6288877a8088ffffffff
71827d827c8e857effff
60877d7a808b7a877d7a
638b82898992ffffffff
6b82847a8887ffffffff
6188877e638b7a808887
72a4878096647a80857e
7988867b827e638b8087
6688857e86ffffffffff
6d7e8887ffffffffffff
6c7a80877e8d7e8cffff
767a98966a878280818d
738b7a8f7e857e8bffff
738b827c847e8bffffff
668b7a8f827d88ffffff
798280808e8b7a8dffff
628e8b7e96617e7a8c8d
6b7a877d96738e8bae7e
6188857d966c7a8782ff
7281887a8dffffffffff
6c8287826c7a807effff
667a838b7a667a838b82
6c7a86868887ffffffff
688689ffffffffffffff
76928b86ffffffffffff
739082876b82937a8b7d
6197877d967688857fff
608b7a807effffffffff
767a8585966c7a807eff
6c7a80827c96638b8087
637a8b847682937a8b7d
607d7a867a6688857e86
617a877d7e856a8e7a8b
6c888d888b7d8b828f7e
61858e7e638b7a808887
717e7d96638b7a808887
787e98889096638b8087
72857e7e8992ffffffff
738b7e7e867a87ffffff
677e7d807e818880ffff
6f928d818887ffffffff
72817a7d8890ffffffff
648586966682807a8cff
6f7a88ffffffffffffff
717a7d827a8d888bffff
6c7e8d7a86888b89817a
74878487889087ffffff
637e8c7e8b8d897e7d7e
617a8b7e8d8d7effffff
727e84867e8dffffffff
61857a877d6b7a86827a
6f928b7a966b7a927e8b
6d82857effffffffffff
608b7c817a7e8c7a8e8b
797e8981928b7988877e
64917d7e8d8172888e85
72858e80ffffffffffff
668588888676827d8890
6c8e847a8b7effffffff
68917e7c8b7a8d888bff
6e907a93888b7a85ffff
72817d90637a877c7e8b
628e8b8c7e7d966e877e
72858890878287ffffff
738287926c7a807effff
638286966c7a8c8d7e8b
6188877e638b7a808887
65857a8b7effffffffff
638e7e856a878280818d
688887ffffffffffffff
617e8b8c7e8b847e8bff
7988867b827e638b8087
638b8e827dffffffffff
688b888796638b7e8c8c
728d7a8d8e7effffffff
619793937a8b7dffffff
688c8d7e8b828d888cff
72898293877e8bffffff
74878487889087ffffff
74878487889087ffffff
74878487889087ffffff
74878487889087ffffff
6c7e8b7c8e8b92617a8d
62888b7a85ffffffffff
7388877b7e8b82ffffff
667e8596767a8d7e8bff
657a858596668e7a8b7d
60857c8e86827affffff
717e7d96638b7a808887
67927d8b7affffffffff
6188877e638b7a808887
668b7e877a7d7effffff
72908b7d637a877c7e8b
617a8b7d7a877d7e858c
63888886637e7a857e8b
6087848e96677e80808e
60868688877affffffff
6b7a877d96628b7a9085
62817a867c8e7b827aff
617e987a96638887877a
62817e8b827effffffff
7681957e9665857a867e
6c888c8c658e87808e8c
6e8b7c7a8dffffffffff
688b88879666827a878d
637e7a8d819662857a90
6aa3617e817e86888d81
657a8b7f7a8b7e8b8b88
6d7e7c8b88867a877c8b
6d8287837affffffffff
668b7e7a8d96638b8087
608f828c638b7a808887
66888b7c8182867e8b7a
6b7e8f7e8562817e7c84
6c82877d966c7a807eff
658e8b92ffffffffffff
7381828780ffffffffff
6c888f7e8bffffffffff
628b928c638b7a808887
607c817e8588877effff
61887d92808e7a8b7dff
6694807a867e8c81ffff
727a817a808287ffffff
7381a360877e8688877e
727e7a96608f828cffff
62888b8f7eb07effffff
608b868887ffffffffff
727e7a727c888b898288
72948f8e877effffffff
667e859665828c81ffff
66827a878d9661af7dff
727e7a96637e8f8285ff
728d8287808b7a92ffff
a2a2a2a2ffffffffffff
6688857e86ffffffffff
628182867e8b7affffff
7281828f7affffffffff
687f8b828dffffffffff
717a868e81ffffffffff
667a857a96627a8dffff
76928f7e8b87ffffffff
64857f9673887a7dffff
628b7e9096638e8c8dff
7681af8596637e868887
7988867b827e638b8087
63a3628182867e8b7aff
607d7a867a6688857e86
798280808e8b7a8dffff
6b8887847a6a8780818d
6182887288857d827e8b
6b8e877e878d7affffff
73888d7e96608f828cff
617e857f7e80888bffff
688689ffffffffffffff
6e907a93888b7a85ffff
667a8b8482867a8c8b7a
667a7b7b857d7e807a84
669496738e8b8d857eff
6e867e807affffffffff
6182809661888c8cffff
ffffffffffffffffffff
76828780717a898d888b
76828780717a898d888b
6a7a8b857a7b888cffff
7390828796737a87827a
72828b7e87ffffffffff
72828b7e87ffffffffff
65888b937affffffffff
6c7a80828c7affffffff
667a858e8b7affffffff
6b828a8e8265857a867e
6b828a8e8265857a867e
6b828a8e8265857a867e
628886867a877d7e8bff
727a877d90888b86ffff
6788857effffffffffff
ffffffffffffffffffff
607d7a867a8773826c82
65857a867e808e87ffff
71887c847e8dffffffff
64917d7e7a8d81ffffff
72888596627a87878887
608b7c817a7e608f828c
608b7c817a7e608f828c
608b7c817a7e608f828c
608b7c817a7e608f828c
608b7c817a7e608f828c
62818286a3618b7a8287
73828d7a87ffffffffff
6f8e8b887b888b888cff
607b7d8e7c8d888bffff
668285807a867e8c81ff
65828c81867a87ffffff
6585928287806a82988b
6b949962817a8b82888d
6d7e88667a858e8b7aff
668285807a867e8c81ff
73928b7a8c7a8e8b8e8c
7281828f7affffffffff
607b7d8e7c8d888bffff
67af928e8e6f857a878d
67af928e8e658588908b
67af928e8e658588908b
67af928e8e658588908b
67af928e8e658588908b
67af928e8e658588908b
668285807a867e8c81ff
648784827d888effffff
608d86888cffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
627a8b7b8e8784857eff
6c7e8b8e807e877effff
668285807a867e8c81ff
64917d7e7a8d81ffffff
60878d85828887ffffff
6c8e868692ffffffffff
608c89828cffffffffff
6c7a7c818287677e7a7d
6c7e8b8e807e877effff
6c7e8b8e807e877effff
6c7e8b8e807e877effff
6c7e8b8e807e877effff
6e7d8287ffffffffffff
667a8b808892857effff
738b828d8887ffffffff
6d7e8b7e807e827dffff
6f81887b888cffffffff
6e8687828c7c827e878d
6c8287888d7a8e8b888c
6b7e8f827a8d817a87ff
728d7a85847e8bffffff
66888088ffffffffffff
617a817a868e8dffffff
698e8b7a96608f828cff
677a977c7a8b877a8c88
64917d7e7a8d81ffffff
6d7e8864917d7e7a8d81
6d7e8864917d7e7a8d81
66887b858287ffffffff
688b88879662857a90ff
727e8b807e7a878dffff
6a7a8b877a84ffffffff
628b7a927c857a90ffff
6d7e8866887b858287ff
627a8588a58c8d7e8b82
6089887c7a8592898c7e
627a8d7a8c8d8b888981
6d7e7c8b887f887b827a
7390828796737a87827a
6b7a8e877c817e8bffff
6b7a8e877c817e8bffff
668285807a867e8c81ff
627a8b7b8e8784857eff
668b7a877d6c8e868692
60897a877d7affffffff
60858d7e967188828d7e
68878f828c827b857eff
607b7d8e7c8d888bffff
617a877d7e856a8e7a8b
6b828a8e8265857a867e
6a8e937a8bffffffffff
72888596627a87878887
6f7a878d7e8b7affffff
728182878b928e8effff
617a8b8b827e8bffffff
ffffffffffffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
ffffffffffffffffffff
6281887c887b88ffffff
657a8d6281887c887b88
7292858981ffffffffff
717e86888b7affffffff
7281828f7affffffffff
717a868e81ffffffffff
687f8b828dffffffffff
73828d7a87ffffffffff
6688857e86ffffffffff
7281887a8dffffffffff
627a8b7b8e8784857eff
7292857d8b7affffffff
6e7d8287ffffffffffff
6f81887e878291ffffff
6b7e8f827a8d817a87ff
617a817a868e8dffffff
9818e90058aabf710fe0
18695011aaa0402b6bff
ffffffffffffffffffff'''
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
        
        