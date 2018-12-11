# -*- coding: utf-8 -*-

import pandas as pd
# from boss_data import *


boss_hex_map = {
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

class Boss(object):
    base_address = "D00000"
    def generate_from_df(self, df):
        s = df[df['boss_name']==self.boss_name].iloc[0]
        if s.empty:
            print("No match found for Boss class "+self.boss_name)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
    def __init__(self,name):
        self.boss_name = name
        self.generate_from_df(df_boss_table)
        self.offset = hex(int(self.base_address,base=16)+int(self.address,base=16))
    def output_asar(self,attrlist):
        print("; "+self.boss_name)
        if attrlist == 'exp':
            local_address = hex(int(self.offset,base=16) + int(boss_hex_map['exp_lo'],base=16))
            print("org $"+local_address.replace("0x","").upper()+"; exp_lo")
            print("db $"+getattr(self,'exp_lo').upper())    
            local_address = hex(int(self.offset,base=16) + int(boss_hex_map['exp_hi'],base=16))
            print("org $"+local_address.replace("0x","").upper()+"; exp_hi")
            print("db $"+getattr(self,'exp_hi').upper())    
        else:
            for attr in attrlist:
                local_address = hex(int(self.offset,base=16) + int(boss_hex_map[attr],base=16))
                print("org $"+local_address.replace("0x","").upper()+"; "+attr)
                print("db $"+getattr(self,attr).upper())
         
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
            
      
df_boss_table = pd.read_excel('boss_table.xlsx', dtype=str)
        
WingRaptor_Form1 = Boss('WingRaptor_Form1')
WingRaptor_Form2 = Boss('WingRaptor_Form2')
Karlabos = Boss('Karlabos')
TwinTania_Form2 = Boss('TwinTania_Form2')
Siren_Form1 = Boss('Siren_Form1')
Siren_Form2 = Boss('Siren_Form2')
Forza = Boss('Forza')
Magisa = Boss('Magisa')
Galura = Boss('Galura')
LiquidFlame_Form1 = Boss('LiquidFlame_Form1')
LiquidFlame_Form2 = Boss('LiquidFlame_Form2')
LiquidFlame_Form3 = Boss('LiquidFlame_Form3')
IceCommander = Boss('IceCommander')
Sandworm = Boss('Sandworm')
SandwormHole = Boss('SandwormHole')
SandwormHole2 = Boss('SandwormHole2')
Adamantium = Boss('Adamantium')
Reflection = Boss('Reflection')
Rocket = Boss('Rocket')
Exdeath_1 = Boss('Exdeath_1')
SolCannon = Boss('SolCannon')
ArcheoAvis_Form1 = Boss('ArcheoAvis_Form1')
ArcheoAvis_Form2 = Boss('ArcheoAvis_Form2')
ArcheoAvis_Form3 = Boss('ArcheoAvis_Form3')
ArcheoAvis_Form4 = Boss('ArcheoAvis_Form4')
ArcheoAvis_Form5 = Boss('ArcheoAvis_Form5')
ChimeraBrain = Boss('ChimeraBrain')
Titan = Boss('Titan')
Pyroboros = Boss('Pyroboros')
Abductor = Boss('Abductor')
Gilgamesh_1 = Boss('Gilgamesh_1')
Merrow = Boss('Merrow')
FlyingKiller = Boss('FlyingKiller')
LittleChariot = Boss('LittleChariot')
NeoGalura = Boss('NeoGalura')
Gilgamesh_2 = Boss('Gilgamesh_2')
Tyrannosaur = Boss('Tyrannosaur')
Shiva = Boss('Shiva')
Abductor = Boss('Abductor')
HiryuuPlant = Boss('HiryuuPlant')
HiryuuPlant_Sub1 = Boss('HiryuuPlant_Sub1')
HiryuuPlant_Sub2 = Boss('HiryuuPlant_Sub2')
HiryuuPlant_Sub3 = Boss('HiryuuPlant_Sub3')
HiryuuPlant_Sub4 = Boss('HiryuuPlant_Sub4')
HiryuuPlant_Sub5 = Boss('HiryuuPlant_Sub5')
Gilgamesh_3 = Boss('Gilgamesh_3')
Enkidou = Boss('Enkidou')
Atomos = Boss('Atomos')
Guardian_Fire = Boss('Guardian_Fire')
Guardian_Earth = Boss('Guardian_Earth')
Guardian_Water = Boss('Guardian_Water')
Guardian_Wind = Boss('Guardian_Wind')
Carbuncle_Form1 = Boss('Carbuncle_Form1')
Melusine = Boss('Melusine')
Gilgamesh_4 = Boss('Gilgamesh_4')
Exdeath_2 = Boss('Exdeath_2')
Antlion = Boss('Antlion')
Mummy = Boss('Mummy')
Aspis = Boss('Aspis')
MachineHead = Boss('MachineHead')
Melusine_Form1 = Boss('Melusine_Form1')
Melusine_Form2 = Boss('Melusine_Form2')
Melusine_Form3 = Boss('Melusine_Form3')
Melusine_Form4 = Boss('Melusine_Form4')
Odin = Boss('Odin')
Gargoyle = Boss('Gargoyle')
Triton = Boss('Triton')
Neregade = Boss('Neregade')
Phobos = Boss('Phobos')
Omniscient = Boss('Omniscient')
Minotaur = Boss('Minotaur')
Leviathan = Boss('Leviathan')
Stalker = Boss('Stalker')
Gogo = Boss('Gogo')
Bahamut = Boss('Bahamut')
JuraAvis = Boss('JuraAvis')
Halicarnaso = Boss('Halicarnaso')
Exdeath_3 = Boss('Exdeath_3')
NeoExdeath_Form1 = Boss('NeoExdeath_Form1')
NeoExdeath_Form2 = Boss('NeoExdeath_Form2')
Goblin = Boss('Goblin')
IronClaw = Boss('IronClaw')
Sargeant = Boss('Sargeant')
Karnak = Boss('Karnak')
CrayClaw = Boss('CrayClaw')
NeoGoblin = Boss('NeoGoblin')
Calofisteri = Boss('Calofisteri')
Apocalyptus = Boss('Apocalyptus')
Catastrophe = Boss('Catastrophe')
Necrofobia = Boss('Necrofobia')
TwinTania_Form1 = Boss('TwinTania_Form1')
Launcher_1 = Boss('Launcher_1')
Launcher_2 = Boss('Launcher_2')
Gilgamesh_5 = Boss('Gilgamesh_5')
Carbuncle_Form2 = Boss('Carbuncle_Form2')
GrandMummy = Boss('GrandMummy')
Apanda = Boss('Apanda')
ArteReite = Boss('ArteReite')
Invisible = Boss('Invisible')
Abductor = Boss('Abductor')
Bandercoerl = Boss('Bandercoerl')
Liquidflame = Boss('Liquidflame')
Kuzar = Boss('Kuzar')
SolCannon = Boss('SolCannon')
Pantera = Boss('Pantera')
Shinryuu = Boss('Shinryuu')
Barrier = Boss('Barrier')
NeoExdeath_Form3 = Boss('NeoExdeath_Form3')
NeoExdeath_Form4 = Boss('NeoExdeath_Form4')
NeoExdeath_Form5 = Boss('NeoExdeath_Form5')
NeoExdeath_Form6 = Boss('NeoExdeath_Form6')
Gilgamesh_6 = Boss('Gilgamesh_6')



# First rebalancing attempt:

WingRaptor_Form1.update_val('exp',200)
WingRaptor_Form2.update_val('exp',200)
Karlabos.update_val('exp',264)
Siren_Form1.update_val('exp',404)
Siren_Form2.update_val('exp',404)
Forza.update_val('exp',592)
Magisa.update_val('exp',592)
Galura.update_val('exp',840)
LiquidFlame_Form1.update_val('exp',1156)
LiquidFlame_Form2.update_val('exp',1156)
LiquidFlame_Form3.update_val('exp',1156)
IronClaw.update_val('exp',1552)
Sandworm.update_val('exp',2620)
CrayClaw.update_val('exp',3312)
Adamantium.update_val('exp',4120)
SolCannon.update_val('exp',5060)
ArcheoAvis_Form1.update_val('exp',6132)
ArcheoAvis_Form2.update_val('exp',6132)
ArcheoAvis_Form3.update_val('exp',6132)
ArcheoAvis_Form4.update_val('exp',6132)
ArcheoAvis_Form5.update_val('exp',6132)
ChimeraBrain.update_val('exp',2452)
Titan.update_val('exp',2452)
Pyroboros.update_val('exp',2452)
Gilgamesh_2.update_val('exp',8736)
HiryuuPlant.update_val('exp',10284)
Gilgamesh_3.update_val('exp',12008)
Enkidou.update_val('exp',12008)
Atomos.update_val('exp',13920)
Guardian_Fire.update_val('exp',4007)
Guardian_Earth.update_val('exp',4007)
Guardian_Water.update_val('exp',4007)
Guardian_Wind.update_val('exp',4007)
Exdeath_2.update_val('exp',18340)
Antlion.update_val('exp',20872)
Melusine_Form1.update_val('exp',23628)
Melusine_Form2.update_val('exp',23628)
Melusine_Form3.update_val('exp',23628)
Melusine_Form4.update_val('exp',23628)
Omniscient.update_val('exp',26624)
Minotaur.update_val('exp',26624)
Stalker.update_val('exp',26624)
Triton.update_val('exp',29864)
Neregade.update_val('exp',29864)
Phobos.update_val('exp',29864)
Leviathan.update_val('exp',33360)
Calofisteri.update_val('exp',37120)
Apanda.update_val('exp',41156)
Catastrophe.update_val('exp',45480)
Halicarnaso.update_val('exp',50096)
TwinTania_Form1.update_val('exp',55016)
TwinTania_Form2.update_val('exp',55016)

WingRaptor_Form1.output_asar('exp')
WingRaptor_Form2.output_asar('exp')
Karlabos.output_asar('exp')
Siren_Form1.output_asar('exp')
Siren_Form2.output_asar('exp')
Forza.output_asar('exp')
Magisa.output_asar('exp')
Galura.output_asar('exp')
LiquidFlame_Form1.output_asar('exp')
LiquidFlame_Form2.output_asar('exp')
LiquidFlame_Form3.output_asar('exp')
IronClaw.output_asar('exp')
Sandworm.output_asar('exp')
CrayClaw.output_asar('exp')
Adamantium.output_asar('exp')
SolCannon.output_asar('exp')
ArcheoAvis_Form1.output_asar('exp')
ArcheoAvis_Form2.output_asar('exp')
ArcheoAvis_Form3.output_asar('exp')
ArcheoAvis_Form4.output_asar('exp')
ArcheoAvis_Form5.output_asar('exp')
ChimeraBrain.output_asar('exp')
Titan.output_asar('exp')
Pyroboros.output_asar('exp')
Gilgamesh_2.output_asar('exp')
HiryuuPlant.output_asar('exp')
Gilgamesh_3.output_asar('exp')
Enkidou.output_asar('exp')
Atomos.output_asar('exp')
Guardian_Fire.output_asar('exp')
Guardian_Earth.output_asar('exp')
Guardian_Water.output_asar('exp')
Guardian_Wind.output_asar('exp')
Exdeath_2.output_asar('exp')
Antlion.output_asar('exp')
Melusine_Form1.output_asar('exp')
Melusine_Form2.output_asar('exp')
Melusine_Form3.output_asar('exp')
Melusine_Form4.output_asar('exp')
Omniscient.output_asar('exp')
Minotaur.output_asar('exp')
Stalker.output_asar('exp')
Triton.output_asar('exp')
Neregade.output_asar('exp')
Phobos.output_asar('exp')
Leviathan.output_asar('exp')
Calofisteri.output_asar('exp')
Apanda.output_asar('exp')
Catastrophe.output_asar('exp')
Halicarnaso.output_asar('exp')
TwinTania_Form1.output_asar('exp')
TwinTania_Form2.output_asar('exp')