# -*- coding: utf-8 -*-

import pandas as pd
import random
import numpy as np
import datetime as dt
# from boss_data import *

datetime_now = dt.datetime.now().strftime("%Y-%d-%m_%H-%M-%S")

RANDOM_LOOT_PERCENT = .5

df_monster_table = pd.read_csv('tables/monster_data.csv', dtype=str)
df_formation_table = pd.read_csv('tables/formation_id.csv', dtype=str)
df_battle_event_table = pd.read_csv('tables/battle_event_id.csv', dtype=str)



df_item = pd.read_csv('tables/item_id.csv',index_col='item_id',dtype=str)
df_item = df_item[df_item['value']!='0']
item_id_dict = df_item.to_dict()['readable_name'] # id first
stat_hex_map = {
        'gauge_time' : '00',
        'phys_power' : '01',
        'phys_mult' : '02',
        'evade' : '03',
        'phys_def' : '04',
        'mag_power' : '05',
        'mag_def' : '06',
        'mag_evade' : '07',
        'hp_lo' : '08',
        'hp_hi' : '09',
        'mp_lo' : '0A',
        'mp_hi' : '0B',
        'exp_lo' : '0C',
        'exp_hi' : '0D',
        'gil_lo' : '0E',
        'gil_hi' : '0F',
        'atk_index' : '10',
        'elemental_immune' : '11',
        'status0_immune' : '12',
        'status1_immune' : '13',
        'status2_immune' : '14',
        'elemental_absorb' : '15',
        'unavoidable_atk' : '16',
        'elemental_weakness' : '17',
        'monster_type' : '18',
        'special_immune' : '19',
        'initial_status0' : '1A',
        'initial_status1' : '1B',
        'initial_status2' : '1C',
        'initial_status3' : '1D',
        'name_index' : '1E',
        'level' : '1F'
        }


        

class Monster(object):
    def __init__(self,index,df_monster_table,pass_type = 'id'):
        self.idx = index
        self.generate_from_df(df_monster_table,pass_type)
        self.original_num_hp = self.num_hp
        self.original_hp_hi = self.hp_hi
        self.original_hp_lo = self.hp_lo
        self.update_output()
#        self.asar_output = f";org ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
#        self.output_short = f"Chest: {self.idx}\t{self.original_reward} → {self.reward}"
    def generate_from_df(self, df,pass_type):
        if pass_type == 'id':
            s = df[df['idx']==self.idx].iloc[0]
        if pass_type == 'hex':
            s = df[df['idx_hex']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Monster class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
    def randomize_loot(self,loot_type='match'):
        loot_list = ['steal_common','steal_rare','drop_common','drop_rare']
        ''' 
        arguments:
        match = if the original monster has a non-null loot slot, update it
        full = every monster has randomized common/rare steal/drop
        variable = every monster has randomized common/rare steal/drop at a specified chance (variable RANDOM_LOOT_PERCENT) per slot 
        '''
        if loot_type=='match':
            for loot in loot_list:
                if getattr(self,loot) != '00':
                    new_item = random.choice(list(item_id_dict.keys()))
                    setattr(self,loot,new_item)
                    setattr(self,loot+"_name",item_id_dict[new_item])
        if loot_type=='full':
            for loot in loot_list:
                new_item = random.choice(list(item_id_dict.keys()))
                setattr(self,loot,new_item)
                setattr(self,loot+"_name",item_id_dict[new_item])
        if loot_type=='variable':
            for loot in loot_list:
                if random.random() <= RANDOM_LOOT_PERCENT: 
                    new_item = random.choice(list(item_id_dict.keys()))
                    setattr(self,loot,new_item)
                    setattr(self,loot+"_name",item_id_dict[new_item])
                else:
                    setattr(self,loot,'00')
                    setattr(self,loot+"_name"," ")
        self.update_output()
            
    def update_output(self):
        self.asar_loot = '; '+str(self.unique_name)+' loot \norg $'+self.drops_address+"\ndb $"+self.steal_common+", $"+self.steal_rare+", $"+self.drop_common+", $"+self.drop_rare
        self.loot_output = '{0: <15}'.format(self.monster_name)+'{0: <40}'.format("Steal: "+self.steal_common_name+" / "+self.steal_rare_name)+'{0: <40}'.format("Drop: "+self.drop_common_name+" / "+self.drop_rare_name)
        
        stat_data = '; '+str(self.unique_name)+' stats \norg $'+self.stats_address+"\ndb "
        for stat in stat_hex_map:
            stat_data = stat_data + "$" +getattr(self,stat)+", "
        self.asar_data = stat_data[:-2]
    
    
    def update_val(self, attr, val):
        if attr == 'exp':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_exp = val
            self.exp_lo = newval[2:4]
            self.exp_hi = newval[0:2]
        elif attr == 'gil':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_gil = val
            self.gil_lo = newval[2:4]
            self.gil_hi = newval[0:2]
        elif attr == 'hp':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.num_hp = val
            self.hp_lo = newval[2:4]
            self.hp_hi = newval[0:2]
        elif attr == 'mp':
            self.num_mp = val
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.mp_lo = newval[2:4]
            self.mp_hi = newval[0:2]
        else:
            newval = "{0:>2}".format(hex(val).replace("0x","")).replace(" ","0")
            setattr(self,attr,newval)
        self.update_output()
      
        
# Boss formations      
        
df_boss_data = df_monster_table[df_monster_table['monster_rank']=='boss']
df_boss_formations = pd.merge(df_formation_table,df_battle_event_table,on='event_id')
# df_boss_formations.set_index('idx',inplace=True)
list_of_boss_formations = ['00','01','02','03','04','86','07','08','0A','0B','0E','0F','10','11','12','14','1B','1C','1D','1E','1F','20','21','22','23','25','38','2B','2C','2D','32','2F','30','31','2E','33','34','05','47','48','49','4B','4A','36','35','52']
df_boss_formations = df_boss_formations[df_boss_formations['event_id'].isin(list_of_boss_formations)]

class Formation(object):
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_boss_formations)
        self.original_table_address = self.table_address
        self.original_formation_value = self.formation_value
        self.original_enemy_1 = self.enemy_1
        self.enemy_list = []
        self.enemy_change = ''
        for enemy in ['enemy_1','enemy_2','enemy_3','enemy_4','enemy_5','enemy_6','enemy_7','enemy_8']:
            enemy_id = getattr(self,enemy)
            if enemy_id == 'FF':
                continue
            else:
                self.enemy_list.append(Monster(enemy_id,df_boss_data,'hex'))
            
        self.update_output()
    def generate_from_df(self, df):
        s = df[df['event_id']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Formation class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
                
    def change_formation(self,new_table_address):
        
        # Assign enemies for text output and assign formation to absorb
        self.table_address = new_table_address
        enemy_list_names = ''
        compare_enemy_list_names = ''
        for formation in all_boss_formations_original:
            if formation.original_table_address == new_table_address:
                compare_enemy_list = formation.enemy_list
                self.formation_to_absorb = formation
        for enemy in self.enemy_list:
            enemy_list_names = enemy_list_names + " " + str(enemy.monster_name)
        for enemy in compare_enemy_list:
            compare_enemy_list_names = compare_enemy_list_names + " " + str(enemy.monster_name)
        self.enemy_change =  "Fight:"+ enemy_list_names + " at location:" + compare_enemy_list_names
        
        
        # Get new hp for first enemy
        

        new_enemy_1_hp = int(self.formation_to_absorb.enemy_list[0].original_num_hp)
        self.enemy_list[0].update_val('hp',int(new_enemy_1_hp))

        
        # If more enemies, then get average of all other enemies
        if len(self.formation_to_absorb.enemy_list)>1:
            hp_vals = []
            for enemy in self.formation_to_absorb.enemy_list[1:]: #discard first enemy
                hp_vals.append(int(enemy.original_num_hp))
            new_enemy_average = round(np.mean(hp_vals))
        else: # in the event there's no other enemies, default to HALF the NEW value of enemy 1
            new_enemy_average = round(new_enemy_1_hp * (.5))
            
            
        # Assign to current enemies, if there's more than 1
        if len(self.enemy_list)>1:
            for enemy in self.enemy_list[1:]: #discard first enemy
                enemy.update_val('hp',int(new_enemy_average))
        
        self.update_output()
        
        
    def update_output(self):
        self.asar_output = '; '+self.enemy_change+' \norg $'+self.table_address+'\ndb $'+self.formation_value[2:4]+", $"+ self.formation_value[0:2]

                
all_boss_formations = []
for formation in list_of_boss_formations:
    all_boss_formations.append(Formation(formation))
all_boss_formations_original = all_boss_formations[:]
    
table_addresses = []
for formation in all_boss_formations:
    table_addresses.append(formation.table_address)
random.shuffle(table_addresses)    

    
for i in all_boss_formations:
    y = ''
    for x in i.enemy_list:
        y = y + " " + str(x.monster_name)
#    print(y)


with open(datetime_now+'.txt','w') as file:
    file.write('')
for formation in all_boss_formations:
    formation.change_formation(table_addresses.pop())
    with open(datetime_now+'.txt','a') as file:
        file.write(";-----------------\n")
        file.write(formation.asar_output+"\n")
    for enemy in formation.enemy_list:
        with open(datetime_now+'.txt','a') as file:
            file.write('; First enemy HP:'+str(enemy.num_hp)+"\n")
            file.write(enemy.asar_data+"\n")



        
        
Goblin_0 = Monster('0',df_monster_table)
Killer_Bee_1 = Monster('1',df_monster_table)
Nut_Eater_2 = Monster('2',df_monster_table)
Stray_Cat_3 = Monster('3',df_monster_table)
Steel_Bat_4 = Monster('4',df_monster_table)
Dearo_5 = Monster('5',df_monster_table)
Stroper_6 = Monster('6',df_monster_table)
Black_Goblin_7 = Monster('7',df_monster_table)
White_Snake_8 = Monster('8',df_monster_table)
Mold_Wind_9 = Monster('9',df_monster_table)
ManiWizard_10 = Monster('10',df_monster_table)
Magic_Pot_11 = Monster('11',df_monster_table)
Sucker_12 = Monster('12',df_monster_table)
Octoraken_13 = Monster('13',df_monster_table)
Gatlings_14 = Monster('14',df_monster_table)
Bighorn_15 = Monster('15',df_monster_table)
Tatu_16 = Monster('16',df_monster_table)
Bander_S_17 = Monster('17',df_monster_table)
Galura_18 = Monster('18',df_monster_table)
Skeleton_19 = Monster('19',df_monster_table)
Carcurser_20 = Monster('20',df_monster_table)
UndeadRusk_21 = Monster('21',df_monster_table)
PsychoHead_22 = Monster('22',df_monster_table)
RockGarter_23 = Monster('23',df_monster_table)
Gala_Cat_24 = Monster('24',df_monster_table)
Cockatrice_25 = Monster('25',df_monster_table)
Blocks_26 = Monster('26',df_monster_table)
Elf_Toad_27 = Monster('27',df_monster_table)
IceSoldier_28 = Monster('28',df_monster_table)
RikaldMage_29 = Monster('29',df_monster_table)
Wyvern_30 = Monster('30',df_monster_table)
Padosule_31 = Monster('31',df_monster_table)
Byblos_32 = Monster('32',df_monster_table)
Aegil_33 = Monster('33',df_monster_table)
Zuu_34 = Monster('34',df_monster_table)
Wild_Nack_35 = Monster('35',df_monster_table)
GrassTurtle_36 = Monster('36',df_monster_table)
Silent_Bee_37 = Monster('37',df_monster_table)
Mithril_Drgn_38 = Monster('38',df_monster_table)
Ramuh_39 = Monster('39',df_monster_table)
Crew_Dust_40 = Monster('40',df_monster_table)
PoItergeist_41 = Monster('41',df_monster_table)
Motor_Trap_42 = Monster('42',df_monster_table)
Defeater_43 = Monster('43',df_monster_table)
Garkimasra_44 = Monster('44',df_monster_table)
Sergeant_45 = Monster('45',df_monster_table)
Sorcerer_46 = Monster('46',df_monster_table)
Karnak_47 = Monster('47',df_monster_table)
Gigas_48 = Monster('48',df_monster_table)
Page_32_49 = Monster('49',df_monster_table)
Page_64_50 = Monster('50',df_monster_table)
Page_128_51 = Monster('51',df_monster_table)
Page_256_52 = Monster('52',df_monster_table)
Ifrit_53 = Monster('53',df_monster_table)
Bomb_54 = Monster('54',df_monster_table)
TwinLizard_55 = Monster('55',df_monster_table)
BioSoldier_56 = Monster('56',df_monster_table)
Crescent_57 = Monster('57',df_monster_table)
BlackFlame_58 = Monster('58',df_monster_table)
StoneGolem_59 = Monster('59',df_monster_table)
MiniDragon_60 = Monster('60',df_monster_table)
Prototype_61 = Monster('61',df_monster_table)
DChimera_62 = Monster('62',df_monster_table)
Sand_Porky_63 = Monster('63',df_monster_table)
Sand_Killer_64 = Monster('64',df_monster_table)
Sand_Bear_65 = Monster('65',df_monster_table)
Ra_Mage_66 = Monster('66',df_monster_table)
LonkaKnght_67 = Monster('67',df_monster_table)
StonedMask_68 = Monster('68',df_monster_table)
Whirl_Demon_69 = Monster('69',df_monster_table)
Lamia_70 = Monster('70',df_monster_table)
ArchaeToad_71 = Monster('71',df_monster_table)
Hyudora_72 = Monster('72',df_monster_table)
Hydra_73 = Monster('73',df_monster_table)
Water_Buzz_74 = Monster('74',df_monster_table)
Torrent_75 = Monster('75',df_monster_table)
Rock_Brain_76 = Monster('76',df_monster_table)
Tarantula_77 = Monster('77',df_monster_table)
Jail_Bear_78 = Monster('78',df_monster_table)
Lunenta_79 = Monster('79',df_monster_table)
Dilure_80 = Monster('80',df_monster_table)
Faerie_Orc_81 = Monster('81',df_monster_table)
Devourer_82 = Monster('82',df_monster_table)
Mandrake_83 = Monster('83',df_monster_table)
Kuzar_84 = Monster('84',df_monster_table)
Cactus_85 = Monster('85',df_monster_table)
Sand_Crawl_86 = Monster('86',df_monster_table)
ShieldDrgn_87 = Monster('87',df_monster_table)
Blood_Slime_88 = Monster('88',df_monster_table)
Acrophese_89 = Monster('89',df_monster_table)
MooglEater_90 = Monster('90',df_monster_table)
Lopros_91 = Monster('91',df_monster_table)
Skull_Eater_92 = Monster('92',df_monster_table)
Aquathone_93 = Monster('93',df_monster_table)
Weresnake_94 = Monster('94',df_monster_table)
Conago_95 = Monster('95',df_monster_table)
Ridicule_96 = Monster('96',df_monster_table)
Andagranda_97 = Monster('97',df_monster_table)
Drippy_98 = Monster('98',df_monster_table)
Likaon_99 = Monster('99',df_monster_table)
BoneDragon_100 = Monster('100',df_monster_table)
Sting_Eagle_101 = Monster('101',df_monster_table)
ZombieDrgn_102 = Monster('102',df_monster_table)
Golem_103 = Monster('103',df_monster_table)
Neon_104 = Monster('104',df_monster_table)
Magnetes_105 = Monster('105',df_monster_table)
Wall_Knight_106 = Monster('106',df_monster_table)
Traveler_107 = Monster('107',df_monster_table)
Tricker_108 = Monster('108',df_monster_table)
Gravido_109 = Monster('109',df_monster_table)
Ziggurat_110 = Monster('110',df_monster_table)
Cure_Beast_111 = Monster('111',df_monster_table)
Land_Turtle_112 = Monster('112',df_monster_table)
Bold_Mani_113 = Monster('113',df_monster_table)
Shoat_114 = Monster('114',df_monster_table)
MiniMage_115 = Monster('115',df_monster_table)
GajraGajri_116 = Monster('116',df_monster_table)
Mammon_117 = Monster('117',df_monster_table)
Imp_118 = Monster('118',df_monster_table)
Wyrm_119 = Monster('119',df_monster_table)
TwinLizard_120 = Monster('120',df_monster_table)
Blind_Wolf_121 = Monster('121',df_monster_table)
Arage_122 = Monster('122',df_monster_table)
Wall_Mage_123 = Monster('123',df_monster_table)
Magic_Drgn_124 = Monster('124',df_monster_table)
DarkWizard_125 = Monster('125',df_monster_table)
AdamaGolem_126 = Monster('126',df_monster_table)
BandelKuar_127 = Monster('127',df_monster_table)
Motordrive_128 = Monster('128',df_monster_table)
BlueDragon_129 = Monster('129',df_monster_table)
Red_Dragon_130 = Monster('130',df_monster_table)
Yellow_Drgn_131 = Monster('131',df_monster_table)
Sleepy_132 = Monster('132',df_monster_table)
Treeman_133 = Monster('133',df_monster_table)
Hedgehog_134 = Monster('134',df_monster_table)
Python_135 = Monster('135',df_monster_table)
Shadow_136 = Monster('136',df_monster_table)
Elm_Gigas_137 = Monster('137',df_monster_table)
Pao_138 = Monster('138',df_monster_table)
Radiator_139 = Monster('139',df_monster_table)
Metamorpha_140 = Monster('140',df_monster_table)
Unknown_141 = Monster('141',df_monster_table)
Desertpede_142 = Monster('142',df_monster_table)
Barette_143 = Monster('143',df_monster_table)
Sekmet_144 = Monster('144',df_monster_table)
BlandLamia_145 = Monster('145',df_monster_table)
Pyra_Layer_146 = Monster('146',df_monster_table)
Nile_147 = Monster('147',df_monster_table)
Archaesaur_148 = Monster('148',df_monster_table)
ZephyrZone_149 = Monster('149',df_monster_table)
ExdethSoul_150 = Monster('150',df_monster_table)
Slug_151 = Monster('151',df_monster_table)
GloomWidow_152 = Monster('152',df_monster_table)
Mukare_153 = Monster('153',df_monster_table)
Ixecrator_154 = Monster('154',df_monster_table)
Owazoral_155 = Monster('155',df_monster_table)
ShdwDancer_156 = Monster('156',df_monster_table)
Cursed_One_157 = Monster('157',df_monster_table)
Slownin_158 = Monster('158',df_monster_table)
TinyMage_159 = Monster('159',df_monster_table)
Dim_Master_160 = Monster('160',df_monster_table)
BoneDragon_161 = Monster('161',df_monster_table)
Flare_162 = Monster('162',df_monster_table)
DuelKnight_163 = Monster('163',df_monster_table)
Ion_164 = Monster('164',df_monster_table)
Berserker_165 = Monster('165',df_monster_table)
ZombieDrgn_166 = Monster('166',df_monster_table)
Druid_167 = Monster('167',df_monster_table)
Iron_Dress_168 = Monster('168',df_monster_table)
Statue_169 = Monster('169',df_monster_table)
Blizzard_170 = Monster('170',df_monster_table)
Isteritos_171 = Monster('171',df_monster_table)
Spizner_172 = Monster('172',df_monster_table)
Unknown_173 = Monster('173',df_monster_table)
Unknown_174 = Monster('174',df_monster_table)
Unknown_175 = Monster('175',df_monster_table)
Unknown_176 = Monster('176',df_monster_table)
MercuryBat_177 = Monster('177',df_monster_table)
Coral_178 = Monster('178',df_monster_table)
Tonberi_179 = Monster('179',df_monster_table)
Gel_Water_180 = Monster('180',df_monster_table)
Fall_Guard_181 = Monster('181',df_monster_table)
Alcumia_182 = Monster('182',df_monster_table)
Red_Dragon_183 = Monster('183',df_monster_table)
Hydra_184 = Monster('184',df_monster_table)
BoneDragon_185 = Monster('185',df_monster_table)
Grenade_186 = Monster('186',df_monster_table)
SwrdDancer_187 = Monster('187',df_monster_table)
Bardandels_188 = Monster('188',df_monster_table)
DoomDealer_189 = Monster('189',df_monster_table)
Anku_Heggu_190 = Monster('190',df_monster_table)
Ammona_191 = Monster('191',df_monster_table)
Land_Crawl_192 = Monster('192',df_monster_table)
Chamcubia_193 = Monster('193',df_monster_table)
Bella_Donna_194 = Monster('194',df_monster_table)
Cherie_195 = Monster('195',df_monster_table)
White_Flame_196 = Monster('196',df_monster_table)
MossFungus_197 = Monster('197',df_monster_table)
Orcat_198 = Monster('198',df_monster_table)
Iron_Giant_199 = Monster('199',df_monster_table)
Death_Claw_200 = Monster('200',df_monster_table)
KBehemoth_201 = Monster('201',df_monster_table)
Farfarerro_202 = Monster('202',df_monster_table)
Necromancr_203 = Monster('203',df_monster_table)
Ninja_204 = Monster('204',df_monster_table)
Great_Drgn_205 = Monster('205',df_monster_table)
AvisDragon_206 = Monster('206',df_monster_table)
Gorchimera_207 = Monster('207',df_monster_table)
LevelCheck_208 = Monster('208',df_monster_table)
Mind_Mage_209 = Monster('209',df_monster_table)
Fury_210 = Monster('210',df_monster_table)
Thing_211 = Monster('211',df_monster_table)
Mover_212 = Monster('212',df_monster_table)
CrysDragon_213 = Monster('213',df_monster_table)
Achelone_214 = Monster('214',df_monster_table)
Bodyguard_215 = Monster('215',df_monster_table)
Gilgamesh_216 = Monster('216',df_monster_table)
Sahagin_217 = Monster('217',df_monster_table)
ThAnemone_218 = Monster('218',df_monster_table)
Sea_Avis_219 = Monster('219',df_monster_table)
Corvette_220 = Monster('220',df_monster_table)
Armon_221 = Monster('221',df_monster_table)
SeaScorpio_222 = Monster('222',df_monster_table)
Silvune_223 = Monster('223',df_monster_table)
Gel_Fish_224 = Monster('224',df_monster_table)
Giant_Bird_225 = Monster('225',df_monster_table)
Sea_Devil_226 = Monster('226',df_monster_table)
Stingray_227 = Monster('227',df_monster_table)
QuestionMark_228 = Monster('228',df_monster_table)
Golem_229 = Monster('229',df_monster_table)
Chimera_230 = Monster('230',df_monster_table)
Shiva_231 = Monster('231',df_monster_table)
Ifrit_232 = Monster('232',df_monster_table)
Ramuh_233 = Monster('233',df_monster_table)
Gala_Cat_234 = Monster('234',df_monster_table)
Wyvern_235 = Monster('235',df_monster_table)
Elf_Toad_236 = Monster('236',df_monster_table)
Crew_Dust_237 = Monster('237',df_monster_table)
Whirl_Demon_238 = Monster('238',df_monster_table)
ZombieDrgn_239 = Monster('239',df_monster_table)
DChimera_240 = Monster('240',df_monster_table)
AdamaGolem_241 = Monster('241',df_monster_table)
Ziggurat_242 = Monster('242',df_monster_table)
LonkaKnght_243 = Monster('243',df_monster_table)
BioSoldier_244 = Monster('244',df_monster_table)
Lunenta_245 = Monster('245',df_monster_table)
Tote_Avis_246 = Monster('246',df_monster_table)
Belfegor_247 = Monster('247',df_monster_table)
Imp_248 = Monster('248',df_monster_table)
Owazoral_249 = Monster('249',df_monster_table)
Garkimasra_250 = Monster('250',df_monster_table)
Gabbldegak_251 = Monster('251',df_monster_table)
Gil_Turtle_252 = Monster('252',df_monster_table)
Omega_253 = Monster('253',df_monster_table)
Big_Boss_254 = Monster('254',df_monster_table)
Blank_255 = Monster('255',df_monster_table)
WingRaptor_256 = Monster('256',df_monster_table)
WingRaptor_257 = Monster('257',df_monster_table)
Karlabos_258 = Monster('258',df_monster_table)
Twin_Tania_259 = Monster('259',df_monster_table)
Siren_260 = Monster('260',df_monster_table)
Siren_261 = Monster('261',df_monster_table)
Forza_262 = Monster('262',df_monster_table)
Magisa_263 = Monster('263',df_monster_table)
Galura_264 = Monster('264',df_monster_table)
LiquiFlame_265 = Monster('265',df_monster_table)
LiquiFlame_266 = Monster('266',df_monster_table)
LiquiFlame_267 = Monster('267',df_monster_table)
Commander_268 = Monster('268',df_monster_table)
Sandworm_269 = Monster('269',df_monster_table)
Hole_270 = Monster('270',df_monster_table)
Blank_271 = Monster('271',df_monster_table)
AdamanTiMi_272 = Monster('272',df_monster_table)
Flamegun_273 = Monster('273',df_monster_table)
Rocket_274 = Monster('274',df_monster_table)
Exdeath_275 = Monster('275',df_monster_table)
Sol_Cannon_276 = Monster('276',df_monster_table)
ArchaeAvis_277 = Monster('277',df_monster_table)
ArchaeAvis_278 = Monster('278',df_monster_table)
ArchaeAvis_279 = Monster('279',df_monster_table)
ArchaeAvis_280 = Monster('280',df_monster_table)
ArchaeAvis_281 = Monster('281',df_monster_table)
ChimBrain_282 = Monster('282',df_monster_table)
Titan_283 = Monster('283',df_monster_table)
Puroboros_284 = Monster('284',df_monster_table)
Abductor_285 = Monster('285',df_monster_table)
Gilgamesh_286 = Monster('286',df_monster_table)
Fishman_287 = Monster('287',df_monster_table)
FlyingKillr_288 = Monster('288',df_monster_table)
Lil_Chariot_289 = Monster('289',df_monster_table)
NeoGalura_290 = Monster('290',df_monster_table)
Gilgamesh_291 = Monster('291',df_monster_table)
Tyrasaurus_292 = Monster('292',df_monster_table)
Shiva_293 = Monster('293',df_monster_table)
Abductor_294 = Monster('294',df_monster_table)
HiryuuPlant_295 = Monster('295',df_monster_table)
HiryuuFlowr_296 = Monster('296',df_monster_table)
HiryuuFlowr_297 = Monster('297',df_monster_table)
HiryuuFlowr_298 = Monster('298',df_monster_table)
HiryuuFlowr_299 = Monster('299',df_monster_table)
HiryuuFlowr_300 = Monster('300',df_monster_table)
Gilgamesh_301 = Monster('301',df_monster_table)
Enkidou_302 = Monster('302',df_monster_table)
Atmos_303 = Monster('303',df_monster_table)
Guardian_304 = Monster('304',df_monster_table)
Guardian_305 = Monster('305',df_monster_table)
Guardian_306 = Monster('306',df_monster_table)
Guardian_307 = Monster('307',df_monster_table)
Carbunkle_308 = Monster('308',df_monster_table)
Merugene_309 = Monster('309',df_monster_table)
Gilgamesh_310 = Monster('310',df_monster_table)
Exdeath_311 = Monster('311',df_monster_table)
Antlion_312 = Monster('312',df_monster_table)
Mummy_313 = Monster('313',df_monster_table)
Aspis_314 = Monster('314',df_monster_table)
MachinHead_315 = Monster('315',df_monster_table)
Merugene_316 = Monster('316',df_monster_table)
Merugene_317 = Monster('317',df_monster_table)
Merugene_318 = Monster('318',df_monster_table)
Merugene_319 = Monster('319',df_monster_table)
Odin_320 = Monster('320',df_monster_table)
Gargoyle_321 = Monster('321',df_monster_table)
Triton_322 = Monster('322',df_monster_table)
Neregeid_323 = Monster('323',df_monster_table)
Phobos_324 = Monster('324',df_monster_table)
Omniscient_325 = Monster('325',df_monster_table)
Minotauros_326 = Monster('326',df_monster_table)
Leviathan_327 = Monster('327',df_monster_table)
Stalker_328 = Monster('328',df_monster_table)
Gogo_329 = Monster('329',df_monster_table)
Bahamut_330 = Monster('330',df_monster_table)
Jura_Avis_331 = Monster('331',df_monster_table)
Halicarnaso_332 = Monster('332',df_monster_table)
Exdeath_333 = Monster('333',df_monster_table)
NeoExdeath_334 = Monster('334',df_monster_table)
NeoExdeath_335 = Monster('335',df_monster_table)
Goblin_336 = Monster('336',df_monster_table)
Iron_Claw_337 = Monster('337',df_monster_table)
Sergeant_338 = Monster('338',df_monster_table)
Karnak_339 = Monster('339',df_monster_table)
Crayclaw_340 = Monster('340',df_monster_table)
NeoGoblin_341 = Monster('341',df_monster_table)
Calofisteri_342 = Monster('342',df_monster_table)
Apocalypse_343 = Monster('343',df_monster_table)
Catastroph_344 = Monster('344',df_monster_table)
Necrofobia_345 = Monster('345',df_monster_table)
Twin_Tania_346 = Monster('346',df_monster_table)
Launcher_347 = Monster('347',df_monster_table)
Launcher_348 = Monster('348',df_monster_table)
Gilgamesh_349 = Monster('349',df_monster_table)
Carbunkle_350 = Monster('350',df_monster_table)
GrandMummy_351 = Monster('351',df_monster_table)
Apanda_352 = Monster('352',df_monster_table)
Alte_Roite_353 = Monster('353',df_monster_table)
Invisible_354 = Monster('354',df_monster_table)
Abductor_355 = Monster('355',df_monster_table)
BandelKuar_356 = Monster('356',df_monster_table)
LiquiFlame_357 = Monster('357',df_monster_table)
Kuzar_358 = Monster('358',df_monster_table)
Sol_Cannon_359 = Monster('359',df_monster_table)
Pantera_360 = Monster('360',df_monster_table)
Shinryuu_361 = Monster('361',df_monster_table)
Barrier_362 = Monster('362',df_monster_table)
NeoExdeath_363 = Monster('363',df_monster_table)
NeoExdeath_364 = Monster('364',df_monster_table)
NeoExdeath_365 = Monster('365',df_monster_table)
NeoExdeath_366 = Monster('366',df_monster_table)
Gilgamesh_367 = Monster('367',df_monster_table)

all_monsters = [Goblin_0,Killer_Bee_1,Nut_Eater_2,Stray_Cat_3,Steel_Bat_4,Dearo_5,Stroper_6,Black_Goblin_7,White_Snake_8,Mold_Wind_9,ManiWizard_10,Magic_Pot_11,Sucker_12,Octoraken_13,Gatlings_14,Bighorn_15,Tatu_16,Bander_S_17,Galura_18,Skeleton_19,Carcurser_20,UndeadRusk_21,PsychoHead_22,RockGarter_23,Gala_Cat_24,Cockatrice_25,Blocks_26,Elf_Toad_27,IceSoldier_28,RikaldMage_29,Wyvern_30,Padosule_31,Byblos_32,Aegil_33,Zuu_34,Wild_Nack_35,GrassTurtle_36,Silent_Bee_37,Mithril_Drgn_38,Ramuh_39,Crew_Dust_40,PoItergeist_41,Motor_Trap_42,Defeater_43,Garkimasra_44,Sergeant_45,Sorcerer_46,Karnak_47,Gigas_48,Page_32_49,Page_64_50,Page_128_51,Page_256_52,Ifrit_53,Bomb_54,TwinLizard_55,BioSoldier_56,Crescent_57,BlackFlame_58,StoneGolem_59,MiniDragon_60,Prototype_61,DChimera_62,Sand_Porky_63,Sand_Killer_64,Sand_Bear_65,Ra_Mage_66,LonkaKnght_67,StonedMask_68,Whirl_Demon_69,Lamia_70,ArchaeToad_71,Hyudora_72,Hydra_73,Water_Buzz_74,Torrent_75,Rock_Brain_76,Tarantula_77,Jail_Bear_78,Lunenta_79,Dilure_80,Faerie_Orc_81,Devourer_82,Mandrake_83,Kuzar_84,Cactus_85,Sand_Crawl_86,ShieldDrgn_87,Blood_Slime_88,Acrophese_89,MooglEater_90,Lopros_91,Skull_Eater_92,Aquathone_93,Weresnake_94,Conago_95,Ridicule_96,Andagranda_97,Drippy_98,Likaon_99,BoneDragon_100,Sting_Eagle_101,ZombieDrgn_102,Golem_103,Neon_104,Magnetes_105,Wall_Knight_106,Traveler_107,Tricker_108,Gravido_109,Ziggurat_110,Cure_Beast_111,Land_Turtle_112,Bold_Mani_113,Shoat_114,MiniMage_115,GajraGajri_116,Mammon_117,Imp_118,Wyrm_119,TwinLizard_120,Blind_Wolf_121,Arage_122,Wall_Mage_123,Magic_Drgn_124,DarkWizard_125,AdamaGolem_126,BandelKuar_127,Motordrive_128,BlueDragon_129,Red_Dragon_130,Yellow_Drgn_131,Sleepy_132,Treeman_133,Hedgehog_134,Python_135,Shadow_136,Elm_Gigas_137,Pao_138,Radiator_139,Metamorpha_140,Unknown_141,Desertpede_142,Barette_143,Sekmet_144,BlandLamia_145,Pyra_Layer_146,Nile_147,Archaesaur_148,ZephyrZone_149,ExdethSoul_150,Slug_151,GloomWidow_152,Mukare_153,Ixecrator_154,Owazoral_155,ShdwDancer_156,Cursed_One_157,Slownin_158,TinyMage_159,Dim_Master_160,BoneDragon_161,Flare_162,DuelKnight_163,Ion_164,Berserker_165,ZombieDrgn_166,Druid_167,Iron_Dress_168,Statue_169,Blizzard_170,Isteritos_171,Spizner_172,Unknown_173,Unknown_174,Unknown_175,Unknown_176,MercuryBat_177,Coral_178,Tonberi_179,Gel_Water_180,Fall_Guard_181,Alcumia_182,Red_Dragon_183,Hydra_184,BoneDragon_185,Grenade_186,SwrdDancer_187,Bardandels_188,DoomDealer_189,Anku_Heggu_190,Ammona_191,Land_Crawl_192,Chamcubia_193,Bella_Donna_194,Cherie_195,White_Flame_196,MossFungus_197,Orcat_198,Iron_Giant_199,Death_Claw_200,KBehemoth_201,Farfarerro_202,Necromancr_203,Ninja_204,Great_Drgn_205,AvisDragon_206,Gorchimera_207,LevelCheck_208,Mind_Mage_209,Fury_210,Thing_211,Mover_212,CrysDragon_213,Achelone_214,Bodyguard_215,Gilgamesh_216,Sahagin_217,ThAnemone_218,Sea_Avis_219,Corvette_220,Armon_221,SeaScorpio_222,Silvune_223,Gel_Fish_224,Giant_Bird_225,Sea_Devil_226,Stingray_227,QuestionMark_228,Golem_229,Chimera_230,Shiva_231,Ifrit_232,Ramuh_233,Gala_Cat_234,Wyvern_235,Elf_Toad_236,Crew_Dust_237,Whirl_Demon_238,ZombieDrgn_239,DChimera_240,AdamaGolem_241,Ziggurat_242,LonkaKnght_243,BioSoldier_244,Lunenta_245,Tote_Avis_246,Belfegor_247,Imp_248,Owazoral_249,Garkimasra_250,Gabbldegak_251,Gil_Turtle_252,Omega_253,Big_Boss_254,Blank_255,WingRaptor_256,WingRaptor_257,Karlabos_258,Twin_Tania_259,Siren_260,Siren_261,Forza_262,Magisa_263,Galura_264,LiquiFlame_265,LiquiFlame_266,LiquiFlame_267,Commander_268,Sandworm_269,Hole_270,Blank_271,AdamanTiMi_272,Flamegun_273,Rocket_274,Exdeath_275,Sol_Cannon_276,ArchaeAvis_277,ArchaeAvis_278,ArchaeAvis_279,ArchaeAvis_280,ArchaeAvis_281,ChimBrain_282,Titan_283,Puroboros_284,Abductor_285,Gilgamesh_286,Fishman_287,FlyingKillr_288,Lil_Chariot_289,NeoGalura_290,Gilgamesh_291,Tyrasaurus_292,Shiva_293,Abductor_294,HiryuuPlant_295,HiryuuFlowr_296,HiryuuFlowr_297,HiryuuFlowr_298,HiryuuFlowr_299,HiryuuFlowr_300,Gilgamesh_301,Enkidou_302,Atmos_303,Guardian_304,Guardian_305,Guardian_306,Guardian_307,Carbunkle_308,Merugene_309,Gilgamesh_310,Exdeath_311,Antlion_312,Mummy_313,Aspis_314,MachinHead_315,Merugene_316,Merugene_317,Merugene_318,Merugene_319,Odin_320,Gargoyle_321,Triton_322,Neregeid_323,Phobos_324,Omniscient_325,Minotauros_326,Leviathan_327,Stalker_328,Gogo_329,Bahamut_330,Jura_Avis_331,Halicarnaso_332,Exdeath_333,NeoExdeath_334,NeoExdeath_335,Goblin_336,Iron_Claw_337,Sergeant_338,Karnak_339,Crayclaw_340,NeoGoblin_341,Calofisteri_342,Apocalypse_343,Catastroph_344,Necrofobia_345,Twin_Tania_346,Launcher_347,Launcher_348,Gilgamesh_349,Carbunkle_350,GrandMummy_351,Apanda_352,Alte_Roite_353,Invisible_354,Abductor_355,BandelKuar_356,LiquiFlame_357,Kuzar_358,Sol_Cannon_359,Pantera_360,Shinryuu_361,Barrier_362,NeoExdeath_363,NeoExdeath_364,NeoExdeath_365,NeoExdeath_366,Gilgamesh_367]

#for i in all_monsters:
#    print(i.loot_output)
#    
#for i in all_monsters:
#    i.randomize_loot('full')
#    print(i.loot_output)




all_bosses = []




#
#
#
#
## First rebalancing attempt:
#
#WingRaptor_Form1.update_val('exp',200)
#WingRaptor_Form2.update_val('exp',200)
#Karlabos.update_val('exp',264)
#Siren_Form1.update_val('exp',404)
#Siren_Form2.update_val('exp',404)
#Forza.update_val('exp',592)
#Magisa.update_val('exp',592)
#Galura.update_val('exp',840)
#LiquidFlame_Form1.update_val('exp',1156)
#LiquidFlame_Form2.update_val('exp',1156)
#LiquidFlame_Form3.update_val('exp',1156)
#IronClaw.update_val('exp',1552)
#Sandworm.update_val('exp',2620)
#CrayClaw.update_val('exp',3312)
#Adamantium.update_val('exp',4120)
#SolCannon.update_val('exp',5060)
#ArcheoAvis_Form1.update_val('exp',6132)
#ArcheoAvis_Form2.update_val('exp',6132)
#ArcheoAvis_Form3.update_val('exp',6132)
#ArcheoAvis_Form4.update_val('exp',6132)
#ArcheoAvis_Form5.update_val('exp',6132)
#ChimeraBrain.update_val('exp',2452)
#Titan.update_val('exp',2452)
#Pyroboros.update_val('exp',2452)
#Gilgamesh_2.update_val('exp',8736)
#HiryuuPlant.update_val('exp',10284)
#Gilgamesh_3.update_val('exp',12008)
#Enkidou.update_val('exp',12008)
#Atomos.update_val('exp',13920)
#Guardian_Fire.update_val('exp',4007)
#Guardian_Earth.update_val('exp',4007)
#Guardian_Water.update_val('exp',4007)
#Guardian_Wind.update_val('exp',4007)
#Exdeath_2.update_val('exp',18340)
#Antlion.update_val('exp',20872)
#Melusine_Form1.update_val('exp',23628)
#Melusine_Form2.update_val('exp',23628)
#Melusine_Form3.update_val('exp',23628)
#Melusine_Form4.update_val('exp',23628)
#Omniscient.update_val('exp',26624)
#Minotaur.update_val('exp',26624)
#Stalker.update_val('exp',26624)
#Triton.update_val('exp',29864)
#Neregade.update_val('exp',29864)
#Phobos.update_val('exp',29864)
#Leviathan.update_val('exp',33360)
#Calofisteri.update_val('exp',37120)
#Apanda.update_val('exp',41156)
#Catastrophe.update_val('exp',45480)
#Halicarnaso.update_val('exp',50096)
#TwinTania_Form1.update_val('exp',55016)
#TwinTania_Form2.update_val('exp',55016)
#
#WingRaptor_Form1.output_asar('exp')
#WingRaptor_Form2.output_asar('exp')
#Karlabos.output_asar('exp')
#Siren_Form1.output_asar('exp')
#Siren_Form2.output_asar('exp')
#Forza.output_asar('exp')
#Magisa.output_asar('exp')
#Galura.output_asar('exp')
#LiquidFlame_Form1.output_asar('exp')
#LiquidFlame_Form2.output_asar('exp')
#LiquidFlame_Form3.output_asar('exp')
#IronClaw.output_asar('exp')
#Sandworm.output_asar('exp')
#CrayClaw.output_asar('exp')
#Adamantium.output_asar('exp')
#SolCannon.output_asar('exp')
#ArcheoAvis_Form1.output_asar('exp')
#ArcheoAvis_Form2.output_asar('exp')
#ArcheoAvis_Form3.output_asar('exp')
#ArcheoAvis_Form4.output_asar('exp')
#ArcheoAvis_Form5.output_asar('exp')
#ChimeraBrain.output_asar('exp')
#Titan.output_asar('exp')
#Pyroboros.output_asar('exp')
#Gilgamesh_2.output_asar('exp')
#HiryuuPlant.output_asar('exp')
#Gilgamesh_3.output_asar('exp')
#Enkidou.output_asar('exp')
#Atomos.output_asar('exp')
#Guardian_Fire.output_asar('exp')
#Guardian_Earth.output_asar('exp')
#Guardian_Water.output_asar('exp')
#Guardian_Wind.output_asar('exp')
#Exdeath_2.output_asar('exp')
#Antlion.output_asar('exp')
#Melusine_Form1.output_asar('exp')
#Melusine_Form2.output_asar('exp')
#Melusine_Form3.output_asar('exp')
#Melusine_Form4.output_asar('exp')
#Omniscient.output_asar('exp')
#Minotaur.output_asar('exp')
#Stalker.output_asar('exp')
#Triton.output_asar('exp')
#Neregade.output_asar('exp')
#Phobos.output_asar('exp')
#Leviathan.output_asar('exp')
#Calofisteri.output_asar('exp')
#Apanda.output_asar('exp')
#Catastrophe.output_asar('exp')
#Halicarnaso.output_asar('exp')
#TwinTania_Form1.output_asar('exp')
#TwinTania_Form2.output_asar('exp')