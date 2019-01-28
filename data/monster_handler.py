# -*- coding: utf-8 -*-

import pandas as pd
import random
# from boss_data import *

RANDOM_LOOT_PERCENT = .5

df_monster_table = pd.read_csv('monstertest.csv', dtype=str)
#
#status0 = ['darkness','zombie','poison','float','mini','toad','petrify','dead']
#status1 = ['image','image2','mute','berserk','charm','paralyze','sleep','aging']
#status2 = ['regen','invul','slow','haste','stop','shell','armor','wall']
#status3 = ['hidden','near death','singing','hp leak','countdown','controlled','false image','erased']
#elemental = ['fire','ice','lightning','poison','holy','earth','wind','water']
#creature = ['undead','archaetoad','creature','avis','dragon','heavy','desert','human']
#
#
#df = df_monster_table.copy()
#df = df.fillna('')
#
#def apply_status(x):
#    status = bin(int(x,base=16)).replace('0b','').zfill(8)
#    return '|'.join(status)
#    
#inflictable = [ 'inflictable_dead',
# 'inflictable_petrify',
# 'inflictable_toad',
# 'inflictable_mini',
# 'inflictable_poison',
# 'inflictable_zombie',
# 'inflictable_darkness',
# 'inflictable_aging',
# 'inflictable_sleep',
# 'inflictable_paralyze',
# 'inflictable_charm',
# 'inflictable_berserk',
# 'inflictable_mute',
# 'inflictable_stop',
# 'inflictable_slow']
#
#df['status_output'] = ''
#for i, r in df.iterrows():
#    new_str = ''
#    for col in list(df.columns):
#        if col in inflictable:
#            if df[col].iloc[i] != '':
#                new_str = new_str + df[col].iloc[i] + ', '
#    df['status_output'].iloc[i] = new_str[:-2]
#    
#df['weakness_output'] = ''
#for i, r in df.iterrows():
#    new_str = ''
#    for col in list(df.columns):
#        if 'weakness_text' in col:
#            if df[col].iloc[i] != '':
#                new_str = new_str + df[col].iloc[i] + ', '
#    df['weakness_output'].iloc[i] = new_str[:-2]
#    
#    
#df['monster_type_flag'] = ''
#df['monster_type_flag2'] = ''
#
#for i, r in df.iterrows():
#    new_str = ''
#    new_str2 = ''
#    heavy_flag = bin(int(df['monster_type'].iloc[i],base=16)).replace("0b","").zfill(8)[2]
#    undead_flag = bin(int(df['monster_type'].iloc[i],base=16)).replace("0b","").zfill(8)[7]
#    if heavy_flag == '0':
#        new_str = new_str + 'NOT HEAVY '
#    df['monster_type_flag'].iloc[i] = new_str
#    if undead_flag == '1':
#        new_str2 = new_str2 + 'undead '
#    df['monster_type_flag2'].iloc[i] = new_str2
#
#
#
#df = df[['monster_name','num_hp','num_level','status_output','weakness_output','monster_type_flag','monster_type_flag2']]
#df.to_csv('monstertest2.csv',index=None)


df_item = pd.read_csv('item_id.csv',index_col='item_id',dtype=str)
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
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_monster_table)
        self.update_output()
#        self.asar_output = f";org ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
#        self.output_short = f"Chest: {self.idx}\t{self.original_reward} → {self.reward}"
    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
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
            self.exp_lo = newval[2:4]
            self.exp_hi = newval[0:2]
        elif attr == 'gil':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.gil_lo = newval[2:4]
            self.gil_hi = newval[0:2]
        elif attr == 'hp':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.hp_lo = newval[2:4]
            self.hp_hi = newval[0:2]
        elif attr == 'mp':
            newval = "{0:>4}".format(hex(val).replace("0x","")).replace(" ","0")
            self.mp_lo = newval[2:4]
            self.mp_hi = newval[0:2]
        else:
            newval = "{0:>2}".format(hex(val).replace("0x","")).replace(" ","0")
            setattr(self,attr,newval)
            
      
        
        
        
        
Goblin_0 = Monster('0')
Killer_Bee_1 = Monster('1')
Nut_Eater_2 = Monster('2')
Stray_Cat_3 = Monster('3')
Steel_Bat_4 = Monster('4')
Dearo_5 = Monster('5')
Stroper_6 = Monster('6')
Black_Goblin_7 = Monster('7')
White_Snake_8 = Monster('8')
Mold_Wind_9 = Monster('9')
ManiWizard_10 = Monster('10')
Magic_Pot_11 = Monster('11')
Sucker_12 = Monster('12')
Octoraken_13 = Monster('13')
Gatlings_14 = Monster('14')
Bighorn_15 = Monster('15')
Tatu_16 = Monster('16')
Bander_S_17 = Monster('17')
Galura_18 = Monster('18')
Skeleton_19 = Monster('19')
Carcurser_20 = Monster('20')
UndeadRusk_21 = Monster('21')
PsychoHead_22 = Monster('22')
RockGarter_23 = Monster('23')
Gala_Cat_24 = Monster('24')
Cockatrice_25 = Monster('25')
Blocks_26 = Monster('26')
Elf_Toad_27 = Monster('27')
IceSoldier_28 = Monster('28')
RikaldMage_29 = Monster('29')
Wyvern_30 = Monster('30')
Padosule_31 = Monster('31')
Byblos_32 = Monster('32')
Aegil_33 = Monster('33')
Zuu_34 = Monster('34')
Wild_Nack_35 = Monster('35')
GrassTurtle_36 = Monster('36')
Silent_Bee_37 = Monster('37')
Mithril_Drgn_38 = Monster('38')
Ramuh_39 = Monster('39')
Crew_Dust_40 = Monster('40')
PoItergeist_41 = Monster('41')
Motor_Trap_42 = Monster('42')
Defeater_43 = Monster('43')
Garkimasra_44 = Monster('44')
Sergeant_45 = Monster('45')
Sorcerer_46 = Monster('46')
Karnak_47 = Monster('47')
Gigas_48 = Monster('48')
Page_32_49 = Monster('49')
Page_64_50 = Monster('50')
Page_128_51 = Monster('51')
Page_256_52 = Monster('52')
Ifrit_53 = Monster('53')
Bomb_54 = Monster('54')
TwinLizard_55 = Monster('55')
BioSoldier_56 = Monster('56')
Crescent_57 = Monster('57')
BlackFlame_58 = Monster('58')
StoneGolem_59 = Monster('59')
MiniDragon_60 = Monster('60')
Prototype_61 = Monster('61')
DChimera_62 = Monster('62')
Sand_Porky_63 = Monster('63')
Sand_Killer_64 = Monster('64')
Sand_Bear_65 = Monster('65')
Ra_Mage_66 = Monster('66')
LonkaKnght_67 = Monster('67')
StonedMask_68 = Monster('68')
Whirl_Demon_69 = Monster('69')
Lamia_70 = Monster('70')
ArchaeToad_71 = Monster('71')
Hyudora_72 = Monster('72')
Hydra_73 = Monster('73')
Water_Buzz_74 = Monster('74')
Torrent_75 = Monster('75')
Rock_Brain_76 = Monster('76')
Tarantula_77 = Monster('77')
Jail_Bear_78 = Monster('78')
Lunenta_79 = Monster('79')
Dilure_80 = Monster('80')
Faerie_Orc_81 = Monster('81')
Devourer_82 = Monster('82')
Mandrake_83 = Monster('83')
Kuzar_84 = Monster('84')
Cactus_85 = Monster('85')
Sand_Crawl_86 = Monster('86')
ShieldDrgn_87 = Monster('87')
Blood_Slime_88 = Monster('88')
Acrophese_89 = Monster('89')
MooglEater_90 = Monster('90')
Lopros_91 = Monster('91')
Skull_Eater_92 = Monster('92')
Aquathone_93 = Monster('93')
Weresnake_94 = Monster('94')
Conago_95 = Monster('95')
Ridicule_96 = Monster('96')
Andagranda_97 = Monster('97')
Drippy_98 = Monster('98')
Likaon_99 = Monster('99')
BoneDragon_100 = Monster('100')
Sting_Eagle_101 = Monster('101')
ZombieDrgn_102 = Monster('102')
Golem_103 = Monster('103')
Neon_104 = Monster('104')
Magnetes_105 = Monster('105')
Wall_Knight_106 = Monster('106')
Traveler_107 = Monster('107')
Tricker_108 = Monster('108')
Gravido_109 = Monster('109')
Ziggurat_110 = Monster('110')
Cure_Beast_111 = Monster('111')
Land_Turtle_112 = Monster('112')
Bold_Mani_113 = Monster('113')
Shoat_114 = Monster('114')
MiniMage_115 = Monster('115')
GajraGajri_116 = Monster('116')
Mammon_117 = Monster('117')
Imp_118 = Monster('118')
Wyrm_119 = Monster('119')
TwinLizard_120 = Monster('120')
Blind_Wolf_121 = Monster('121')
Arage_122 = Monster('122')
Wall_Mage_123 = Monster('123')
Magic_Drgn_124 = Monster('124')
DarkWizard_125 = Monster('125')
AdamaGolem_126 = Monster('126')
BandelKuar_127 = Monster('127')
Motordrive_128 = Monster('128')
BlueDragon_129 = Monster('129')
Red_Dragon_130 = Monster('130')
Yellow_Drgn_131 = Monster('131')
Sleepy_132 = Monster('132')
Treeman_133 = Monster('133')
Hedgehog_134 = Monster('134')
Python_135 = Monster('135')
Shadow_136 = Monster('136')
Elm_Gigas_137 = Monster('137')
Pao_138 = Monster('138')
Radiator_139 = Monster('139')
Metamorpha_140 = Monster('140')
Unknown_141 = Monster('141')
Desertpede_142 = Monster('142')
Barette_143 = Monster('143')
Sekmet_144 = Monster('144')
BlandLamia_145 = Monster('145')
Pyra_Layer_146 = Monster('146')
Nile_147 = Monster('147')
Archaesaur_148 = Monster('148')
ZephyrZone_149 = Monster('149')
ExdethSoul_150 = Monster('150')
Slug_151 = Monster('151')
GloomWidow_152 = Monster('152')
Mukare_153 = Monster('153')
Ixecrator_154 = Monster('154')
Owazoral_155 = Monster('155')
ShdwDancer_156 = Monster('156')
Cursed_One_157 = Monster('157')
Slownin_158 = Monster('158')
TinyMage_159 = Monster('159')
Dim_Master_160 = Monster('160')
BoneDragon_161 = Monster('161')
Flare_162 = Monster('162')
DuelKnight_163 = Monster('163')
Ion_164 = Monster('164')
Berserker_165 = Monster('165')
ZombieDrgn_166 = Monster('166')
Druid_167 = Monster('167')
Iron_Dress_168 = Monster('168')
Statue_169 = Monster('169')
Blizzard_170 = Monster('170')
Isteritos_171 = Monster('171')
Spizner_172 = Monster('172')
Unknown_173 = Monster('173')
Unknown_174 = Monster('174')
Unknown_175 = Monster('175')
Unknown_176 = Monster('176')
MercuryBat_177 = Monster('177')
Coral_178 = Monster('178')
Tonberi_179 = Monster('179')
Gel_Water_180 = Monster('180')
Fall_Guard_181 = Monster('181')
Alcumia_182 = Monster('182')
Red_Dragon_183 = Monster('183')
Hydra_184 = Monster('184')
BoneDragon_185 = Monster('185')
Grenade_186 = Monster('186')
SwrdDancer_187 = Monster('187')
Bardandels_188 = Monster('188')
DoomDealer_189 = Monster('189')
Anku_Heggu_190 = Monster('190')
Ammona_191 = Monster('191')
Land_Crawl_192 = Monster('192')
Chamcubia_193 = Monster('193')
Bella_Donna_194 = Monster('194')
Cherie_195 = Monster('195')
White_Flame_196 = Monster('196')
MossFungus_197 = Monster('197')
Orcat_198 = Monster('198')
Iron_Giant_199 = Monster('199')
Death_Claw_200 = Monster('200')
KBehemoth_201 = Monster('201')
Farfarerro_202 = Monster('202')
Necromancr_203 = Monster('203')
Ninja_204 = Monster('204')
Great_Drgn_205 = Monster('205')
AvisDragon_206 = Monster('206')
Gorchimera_207 = Monster('207')
LevelCheck_208 = Monster('208')
Mind_Mage_209 = Monster('209')
Fury_210 = Monster('210')
Thing_211 = Monster('211')
Mover_212 = Monster('212')
CrysDragon_213 = Monster('213')
Achelone_214 = Monster('214')
Bodyguard_215 = Monster('215')
Gilgamesh_216 = Monster('216')
Sahagin_217 = Monster('217')
ThAnemone_218 = Monster('218')
Sea_Avis_219 = Monster('219')
Corvette_220 = Monster('220')
Armon_221 = Monster('221')
SeaScorpio_222 = Monster('222')
Silvune_223 = Monster('223')
Gel_Fish_224 = Monster('224')
Giant_Bird_225 = Monster('225')
Sea_Devil_226 = Monster('226')
Stingray_227 = Monster('227')
QuestionMark_228 = Monster('228')
Golem_229 = Monster('229')
Chimera_230 = Monster('230')
Shiva_231 = Monster('231')
Ifrit_232 = Monster('232')
Ramuh_233 = Monster('233')
Gala_Cat_234 = Monster('234')
Wyvern_235 = Monster('235')
Elf_Toad_236 = Monster('236')
Crew_Dust_237 = Monster('237')
Whirl_Demon_238 = Monster('238')
ZombieDrgn_239 = Monster('239')
DChimera_240 = Monster('240')
AdamaGolem_241 = Monster('241')
Ziggurat_242 = Monster('242')
LonkaKnght_243 = Monster('243')
BioSoldier_244 = Monster('244')
Lunenta_245 = Monster('245')
Tote_Avis_246 = Monster('246')
Belfegor_247 = Monster('247')
Imp_248 = Monster('248')
Owazoral_249 = Monster('249')
Garkimasra_250 = Monster('250')
Gabbldegak_251 = Monster('251')
Gil_Turtle_252 = Monster('252')
Omega_253 = Monster('253')
Big_Boss_254 = Monster('254')
Blank_255 = Monster('255')
WingRaptor_256 = Monster('256')
WingRaptor_257 = Monster('257')
Karlabos_258 = Monster('258')
Twin_Tania_259 = Monster('259')
Siren_260 = Monster('260')
Siren_261 = Monster('261')
Forza_262 = Monster('262')
Magisa_263 = Monster('263')
Galura_264 = Monster('264')
LiquiFlame_265 = Monster('265')
LiquiFlame_266 = Monster('266')
LiquiFlame_267 = Monster('267')
Commander_268 = Monster('268')
Sandworm_269 = Monster('269')
Hole_270 = Monster('270')
Blank_271 = Monster('271')
AdamanTiMi_272 = Monster('272')
Flamegun_273 = Monster('273')
Rocket_274 = Monster('274')
Exdeath_275 = Monster('275')
Sol_Cannon_276 = Monster('276')
ArchaeAvis_277 = Monster('277')
ArchaeAvis_278 = Monster('278')
ArchaeAvis_279 = Monster('279')
ArchaeAvis_280 = Monster('280')
ArchaeAvis_281 = Monster('281')
ChimBrain_282 = Monster('282')
Titan_283 = Monster('283')
Puroboros_284 = Monster('284')
Abductor_285 = Monster('285')
Gilgamesh_286 = Monster('286')
Fishman_287 = Monster('287')
FlyingKillr_288 = Monster('288')
Lil_Chariot_289 = Monster('289')
NeoGalura_290 = Monster('290')
Gilgamesh_291 = Monster('291')
Tyrasaurus_292 = Monster('292')
Shiva_293 = Monster('293')
Abductor_294 = Monster('294')
HiryuuPlant_295 = Monster('295')
HiryuuFlowr_296 = Monster('296')
HiryuuFlowr_297 = Monster('297')
HiryuuFlowr_298 = Monster('298')
HiryuuFlowr_299 = Monster('299')
HiryuuFlowr_300 = Monster('300')
Gilgamesh_301 = Monster('301')
Enkidou_302 = Monster('302')
Atmos_303 = Monster('303')
Guardian_304 = Monster('304')
Guardian_305 = Monster('305')
Guardian_306 = Monster('306')
Guardian_307 = Monster('307')
Carbunkle_308 = Monster('308')
Merugene_309 = Monster('309')
Gilgamesh_310 = Monster('310')
Exdeath_311 = Monster('311')
Antlion_312 = Monster('312')
Mummy_313 = Monster('313')
Aspis_314 = Monster('314')
MachinHead_315 = Monster('315')
Merugene_316 = Monster('316')
Merugene_317 = Monster('317')
Merugene_318 = Monster('318')
Merugene_319 = Monster('319')
Odin_320 = Monster('320')
Gargoyle_321 = Monster('321')
Triton_322 = Monster('322')
Neregeid_323 = Monster('323')
Phobos_324 = Monster('324')
Omniscient_325 = Monster('325')
Minotauros_326 = Monster('326')
Leviathan_327 = Monster('327')
Stalker_328 = Monster('328')
Gogo_329 = Monster('329')
Bahamut_330 = Monster('330')
Jura_Avis_331 = Monster('331')
Halicarnaso_332 = Monster('332')
Exdeath_333 = Monster('333')
NeoExdeath_334 = Monster('334')
NeoExdeath_335 = Monster('335')
Goblin_336 = Monster('336')
Iron_Claw_337 = Monster('337')
Sergeant_338 = Monster('338')
Karnak_339 = Monster('339')
Crayclaw_340 = Monster('340')
NeoGoblin_341 = Monster('341')
Calofisteri_342 = Monster('342')
Apocalypse_343 = Monster('343')
Catastroph_344 = Monster('344')
Necrofobia_345 = Monster('345')
Twin_Tania_346 = Monster('346')
Launcher_347 = Monster('347')
Launcher_348 = Monster('348')
Gilgamesh_349 = Monster('349')
Carbunkle_350 = Monster('350')
GrandMummy_351 = Monster('351')
Apanda_352 = Monster('352')
Alte_Roite_353 = Monster('353')
Invisible_354 = Monster('354')
Abductor_355 = Monster('355')
BandelKuar_356 = Monster('356')
LiquiFlame_357 = Monster('357')
Kuzar_358 = Monster('358')
Sol_Cannon_359 = Monster('359')
Pantera_360 = Monster('360')
Shinryuu_361 = Monster('361')
Barrier_362 = Monster('362')
NeoExdeath_363 = Monster('363')
NeoExdeath_364 = Monster('364')
NeoExdeath_365 = Monster('365')
NeoExdeath_366 = Monster('366')
Gilgamesh_367 = Monster('367')

all_monsters = [Goblin_0,Killer_Bee_1,Nut_Eater_2,Stray_Cat_3,Steel_Bat_4,Dearo_5,Stroper_6,Black_Goblin_7,White_Snake_8,Mold_Wind_9,ManiWizard_10,Magic_Pot_11,Sucker_12,Octoraken_13,Gatlings_14,Bighorn_15,Tatu_16,Bander_S_17,Galura_18,Skeleton_19,Carcurser_20,UndeadRusk_21,PsychoHead_22,RockGarter_23,Gala_Cat_24,Cockatrice_25,Blocks_26,Elf_Toad_27,IceSoldier_28,RikaldMage_29,Wyvern_30,Padosule_31,Byblos_32,Aegil_33,Zuu_34,Wild_Nack_35,GrassTurtle_36,Silent_Bee_37,Mithril_Drgn_38,Ramuh_39,Crew_Dust_40,PoItergeist_41,Motor_Trap_42,Defeater_43,Garkimasra_44,Sergeant_45,Sorcerer_46,Karnak_47,Gigas_48,Page_32_49,Page_64_50,Page_128_51,Page_256_52,Ifrit_53,Bomb_54,TwinLizard_55,BioSoldier_56,Crescent_57,BlackFlame_58,StoneGolem_59,MiniDragon_60,Prototype_61,DChimera_62,Sand_Porky_63,Sand_Killer_64,Sand_Bear_65,Ra_Mage_66,LonkaKnght_67,StonedMask_68,Whirl_Demon_69,Lamia_70,ArchaeToad_71,Hyudora_72,Hydra_73,Water_Buzz_74,Torrent_75,Rock_Brain_76,Tarantula_77,Jail_Bear_78,Lunenta_79,Dilure_80,Faerie_Orc_81,Devourer_82,Mandrake_83,Kuzar_84,Cactus_85,Sand_Crawl_86,ShieldDrgn_87,Blood_Slime_88,Acrophese_89,MooglEater_90,Lopros_91,Skull_Eater_92,Aquathone_93,Weresnake_94,Conago_95,Ridicule_96,Andagranda_97,Drippy_98,Likaon_99,BoneDragon_100,Sting_Eagle_101,ZombieDrgn_102,Golem_103,Neon_104,Magnetes_105,Wall_Knight_106,Traveler_107,Tricker_108,Gravido_109,Ziggurat_110,Cure_Beast_111,Land_Turtle_112,Bold_Mani_113,Shoat_114,MiniMage_115,GajraGajri_116,Mammon_117,Imp_118,Wyrm_119,TwinLizard_120,Blind_Wolf_121,Arage_122,Wall_Mage_123,Magic_Drgn_124,DarkWizard_125,AdamaGolem_126,BandelKuar_127,Motordrive_128,BlueDragon_129,Red_Dragon_130,Yellow_Drgn_131,Sleepy_132,Treeman_133,Hedgehog_134,Python_135,Shadow_136,Elm_Gigas_137,Pao_138,Radiator_139,Metamorpha_140,Unknown_141,Desertpede_142,Barette_143,Sekmet_144,BlandLamia_145,Pyra_Layer_146,Nile_147,Archaesaur_148,ZephyrZone_149,ExdethSoul_150,Slug_151,GloomWidow_152,Mukare_153,Ixecrator_154,Owazoral_155,ShdwDancer_156,Cursed_One_157,Slownin_158,TinyMage_159,Dim_Master_160,BoneDragon_161,Flare_162,DuelKnight_163,Ion_164,Berserker_165,ZombieDrgn_166,Druid_167,Iron_Dress_168,Statue_169,Blizzard_170,Isteritos_171,Spizner_172,Unknown_173,Unknown_174,Unknown_175,Unknown_176,MercuryBat_177,Coral_178,Tonberi_179,Gel_Water_180,Fall_Guard_181,Alcumia_182,Red_Dragon_183,Hydra_184,BoneDragon_185,Grenade_186,SwrdDancer_187,Bardandels_188,DoomDealer_189,Anku_Heggu_190,Ammona_191,Land_Crawl_192,Chamcubia_193,Bella_Donna_194,Cherie_195,White_Flame_196,MossFungus_197,Orcat_198,Iron_Giant_199,Death_Claw_200,KBehemoth_201,Farfarerro_202,Necromancr_203,Ninja_204,Great_Drgn_205,AvisDragon_206,Gorchimera_207,LevelCheck_208,Mind_Mage_209,Fury_210,Thing_211,Mover_212,CrysDragon_213,Achelone_214,Bodyguard_215,Gilgamesh_216,Sahagin_217,ThAnemone_218,Sea_Avis_219,Corvette_220,Armon_221,SeaScorpio_222,Silvune_223,Gel_Fish_224,Giant_Bird_225,Sea_Devil_226,Stingray_227,QuestionMark_228,Golem_229,Chimera_230,Shiva_231,Ifrit_232,Ramuh_233,Gala_Cat_234,Wyvern_235,Elf_Toad_236,Crew_Dust_237,Whirl_Demon_238,ZombieDrgn_239,DChimera_240,AdamaGolem_241,Ziggurat_242,LonkaKnght_243,BioSoldier_244,Lunenta_245,Tote_Avis_246,Belfegor_247,Imp_248,Owazoral_249,Garkimasra_250,Gabbldegak_251,Gil_Turtle_252,Omega_253,Big_Boss_254,Blank_255,WingRaptor_256,WingRaptor_257,Karlabos_258,Twin_Tania_259,Siren_260,Siren_261,Forza_262,Magisa_263,Galura_264,LiquiFlame_265,LiquiFlame_266,LiquiFlame_267,Commander_268,Sandworm_269,Hole_270,Blank_271,AdamanTiMi_272,Flamegun_273,Rocket_274,Exdeath_275,Sol_Cannon_276,ArchaeAvis_277,ArchaeAvis_278,ArchaeAvis_279,ArchaeAvis_280,ArchaeAvis_281,ChimBrain_282,Titan_283,Puroboros_284,Abductor_285,Gilgamesh_286,Fishman_287,FlyingKillr_288,Lil_Chariot_289,NeoGalura_290,Gilgamesh_291,Tyrasaurus_292,Shiva_293,Abductor_294,HiryuuPlant_295,HiryuuFlowr_296,HiryuuFlowr_297,HiryuuFlowr_298,HiryuuFlowr_299,HiryuuFlowr_300,Gilgamesh_301,Enkidou_302,Atmos_303,Guardian_304,Guardian_305,Guardian_306,Guardian_307,Carbunkle_308,Merugene_309,Gilgamesh_310,Exdeath_311,Antlion_312,Mummy_313,Aspis_314,MachinHead_315,Merugene_316,Merugene_317,Merugene_318,Merugene_319,Odin_320,Gargoyle_321,Triton_322,Neregeid_323,Phobos_324,Omniscient_325,Minotauros_326,Leviathan_327,Stalker_328,Gogo_329,Bahamut_330,Jura_Avis_331,Halicarnaso_332,Exdeath_333,NeoExdeath_334,NeoExdeath_335,Goblin_336,Iron_Claw_337,Sergeant_338,Karnak_339,Crayclaw_340,NeoGoblin_341,Calofisteri_342,Apocalypse_343,Catastroph_344,Necrofobia_345,Twin_Tania_346,Launcher_347,Launcher_348,Gilgamesh_349,Carbunkle_350,GrandMummy_351,Apanda_352,Alte_Roite_353,Invisible_354,Abductor_355,BandelKuar_356,LiquiFlame_357,Kuzar_358,Sol_Cannon_359,Pantera_360,Shinryuu_361,Barrier_362,NeoExdeath_363,NeoExdeath_364,NeoExdeath_365,NeoExdeath_366,Gilgamesh_367]

for i in all_monsters:
    print(i.loot_output)
    
for i in all_monsters:
    i.randomize_loot('full')
    print(i.loot_output)

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