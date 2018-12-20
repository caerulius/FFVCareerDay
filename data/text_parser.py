# -*- coding: utf-8 -*-
import pandas as pd

text_dict = pd.read_csv('text_table.csv',header=None,index_col=0).to_dict()[1]
text_dict2 = pd.read_csv('text_table.csv',header=None,index_col=1).to_dict()[0]
text_dict['FF'] = "__"

data = '''ffffffffffffffffff6486898d92ffff
ffffe76a87827f7effffffe7637a8080
7e8bffffe76c928d818b8285ffe76a8e
877a82ffffffe76c7a807e6c7a8c81e7
668e7a8b7d827a87e76a887d7a7c8182
ffe76e8b82817a857c87e760af966b7a
877c7ee7608c8c7a8c8c8287e7677a8b
7d7e877e7de3618b887a7dffffffe371
7e807a85628e8de36c928d818b8285ff
e362888b7a85ffffffe360877c827e87
8dffe364897e7effffffffe372858e86
7b7e8bffe3637e7f7e877d7e8be36491
7c7a977b8e8be3717a80877a8b8884e8
697a8f7e858287ffe872897e7a8bffff
ffe86c928d818b8285ffe8738b827d7e
878dffe87682877dffffffffe86f7a8b
8d828c7a87e8668e878087828bffbe63
7b856b7a877c7ee867888592ffffffff
e8638b7a80888887ffe9617a8d8d857e
ffffbf6c928d818b8285ffe96e808b7e
ffffffffbf767a8bffffffffffe9757e
878886ffffffbf647a8b8d81ffffffe9
718e877e9660917ebf7381888bffffff
ffea6a7a8d7a877affffea60af966185
7a7d7eea6a888d7e8d8c8effea618293
7e87ffffffea65888b807e7dffffea6c
8e8b7a8c7a867eea6c7a8c7a868e877e
ea737e86897e8c8dffeb71887dffffff
ffffeb65828b7effffffffeb687c7eff
ffffffffeb73818e877d7e8bffeb757e
878886ffffffeb6b828585828d81ffeb
7682937a8b7dffffec728d7a7f7fffff
ffec6c928d818b8285ffec6f88907e8b
ffffffec677e7a85828780ffec6b8280
818dffffffec727a807effffffffec69
8e7d80867e878ded65828b7effffffff
ed687c7effffffffffed73818e877d7e
8bffed637a8b84877e8c8ced6a82987e
8b618890ed64858f7e87ffffffed7888
827c8182ffffed608b8d7e86828cffee
7282858f7e8bffffee638b7e7a86ffff
ffee6b7a86827affffffee6089888585
88ffffef76818289ffffffffef62817a
8287ffffffef73818e877d7e8bffef65
857a867effffffef638b7a808887ffff
f06682927a867a87fff0647a8b8d81ff
fffff0718e877efffffffff073828784
7e8bffffe7727a7b8b7effffffe3638b
7a8287ffffffe3718e877e647d807ee3
65857a867effffffe3687c7e618b7a87
7dbe658e98966c888887c672818e8b82
847e87c66f828790817e7e85e364917c
7a947b8e8bef617e7a8c8d848298be65
857a8285ffffffbe6c888b87728d7a8b
eb7688877d7e8bffffe3618b7a8f7e61
857dbe7288888dffffffffe76281827c
847e87ffbe71828c8287728e87ed7282
858f7e8bffffed667a857effffffffed
6087a46c7a80827ced608f828c848285
85e963888886ffffffffe966827a878d
ffffffe76c7a87647a8d7e8be7738182
7e7fffffffe7637a877c828780ffe364
87817a877c7e8b6bc5677a877dffffff
71c5677a877dffffffe3ad7e86535353
53ffe3ad7e8653535353ffe3ad7e8653
535353ffe3ad7e8653535353ffe3ad7e
8653535353ffe3ad7e8653535353ffe3
ad7e8653535353ffe3ad7e8653535353
ffe3ad7e8653535353ffe3ad7e865353
5353ffe3ad7e8653535353ffe3ad7e86
53535353ffe3ad7e8653535353ffe3ad
7e8653535353ffe3ad7e8653535353ff
fffffffffffffffffff16b7e7a8d817e
8bfff1618b8887937efffff1688b8887
fffffffff16c928d818b8285fff16688
857dfffffffff1607e80828cfffffff1
63827a8688877dfff1628b928c8d7a85
fff26b7e7a8d817e8bfff2618b888793
7efffff2688b8887fffffffff26c928d
818b8285fff26688857dfffffffff263
827a8688877dfff2628b928c8d7a85ff
f26f858e867e7dfffff2738b827c888b
87fff26c7a808e8cfffffff262828b7c
857e8dfff26688857d898287ffc17182
7b7b8887fffff2617a877d7a877afff2
668b87617e8b7e8df2637a8b84678888
7df273827a8b7affffffc36b7e7a8d81
7e8bfff3618b8887937efffff3688b88
87fffffffff36c928d818b8285fff366
88857dfffffffff363827a8688877dff
f3628b928c8d7a85fff3628889897e8b
6fadc3738b7a8287828780f372948f7e
8bffffffc3728d7e7aad81fffff36382
7a86877d6fadc3637a8b84ffffffffc3
62888d8d8887ffffc372828584ffffff
ffc3667a827a667e7a8bc3617a8b7dff
ffffffc36b8e8682877affffc361857a
7c84ffffffc37681828d7effffffc36c
828b7a807efffff4668e7a8b7dffffff
cc7381827e7fffffffcc66827a878dff
fffff464857f96627a897ef4628e8b8c
7e7dfffff466857a8c8c7e8cffbd718e
8787828780ffcc6c928d818b8285fff4
7282858f7e8bfffff463827a8688877d
ffc3728d8b7e87808d81f46f88907e8b
ffffffc36087807e85fffffff4608780
7e85fffffff465857a867efffffff462
888b7a85fffffff36188877e966c7a94
bd6b7e7a8d817e8bffca6a7a828c7e8b
ffffcc667a8e87ae7e8dfff27382808b
6c7a8c84f165857a867efffffff46288
8b877a697a8bf1667e878382fffffff2
667e878382fffffff3667e878382ffff
ffcc667e878382fffffff4767a98ffff
fffffff262888b88877e8dfff2738188
8b87857e8df1687c7efffffffffff162
8e8b8c7e7dffffc3717a82877b8890ff
bd717e7dffffffffffe3ad7e86535353
53ffe3ad7e8653535353ffe3ad7e8653
535353ffe3ad7e8653535353ffe3ad7e
8653535353ffe3ad7e8653535353ffe3
ad7e8653535353ffe3ad7e8653535353
ffe3ad7e8653535353ffe3ad7e865353
5353ffe3ad7e8653535353ffe3ad7e86
53535353ffe3ad7e8653535353ffe3ad
7e8653535353ffe3ad7e8653535353ff
6f888d828887ffffff67826f888d8288
87ff648d817e8bffffffff6485829182
8bffffff6f817e8782916390876c7a82
7d876a828c8c717e8f828f827f92ff73
8e8bae7e72817e9860878d827d888d7e
ff64927e7d8b8889ffff638b7a808765
7a8780637a8b846c7ab07e8b72887f8d
ffffffffff6b8e7c846c7a987e8d638e
868692ffffffff6c7a80827c6b7a8689
c0737e878dffffffffc0627a7b8287ff
ffffc266827a878dffffffc26f88907e
8bffffffc272897e7e7dffffffc26f8b
888d7e7c8dffc2677e8b88ffffffff63
8b8087628b7e8c8d6e867e807a6c7e7d
85717a868e81ffffffff7281887a8dff
ffffff6688857e86ffffffffc865857a
867effffffc8767a8d7e8bffffffc873
818e877d7e8bff7b9296716f667effff
e365828b7effe3687c7effffe3618885
8d96e3757e878886e36c8e8d7effe372
857e7e89e365828b7e55e3687c7e9655
e36188858d55e3638b7a8287e3618b7e
7a84e3618288ffffe365828b7e56e368
7c7e9656e36188858d56e367888592ff
e365857a8b7ee36f8c927c81e4628e8b
7effe4727c7a87ffe460878d7d8de46c
8e8d7effe4608b86888be47282937eff
e4628e8b7e55e46b827f7effe462817a
8b86e468867a807ee472817e8585e467
7e7a85ffe4628e8b7e56e4767a8585ff
e4617e8b8c84e46b827f7e55e4678885
92ffe463828ca8a9e565828b7effe568
7c7effffe56188858dffe5757e878886
e572857e7e89e573887a7dffe565828b
7e55e5687c7e9655e56188858d55e563
8b7a8287e5618b7e7a84e5618288ffff
e565828b7e56e5687c7e9656e5618885
8d56e565857a8b7ee563888886ffe56f
8c927c81e6638b7a80ffe672858890ff
e6717e807e87e67588827dffe6677a8c
8d7ee66585887a8de6637e8682ffe672
8d8889ffe66491828dffe66288867e8d
e67285889055e6717e8c7e8de6708b8d
7e8be6677a8c8d55e66e857dffffe66c
7e8d7e88e6708e827c84e6777988877e
6281887c887b7292858981ff717e8688
8b7a7281828f7aff717a868e81ff687f
8b828dff73828d7a87ff6688857e86ff
7281887a8dff628b7b8784857292857d
8b7a6e7d8287ffff6f817e8782916b7e
8f827aff617a81868e8dc46f88907e8b
ffffffc472897e7e7dffffffc475828d
7a978d92ffc46c7a80827cffffffc467
7e8b88827cffffc4717e8a8e827e86ff
c46b888f7effffffffc462817a8b86ff'''
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
        
        