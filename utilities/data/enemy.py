NUM_ENEMIES = 368
STAT_HEX_MAP = {
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
        'enemy_type' : '18',
        'special_immune' : '19',
        'initial_status0' : '1A',
        'initial_status1' : '1B',
        'initial_status2' : '1C',
        'initial_status3' : '1D',
        'name_index' : '1E',
        'level' : '1F'
        }

class Enemy(object):
    def __init__(self,index, data_manager, pass_type = 'id', use_boss_table = True):
        self.idx = index
        self.generate_from_df(data_manager,pass_type,use_boss_table)
        '''
        self.idx_hex
        self.enemy_name
        self.enemy_rank (enemy, boss)
        self.stats_address
        self.drops_address
        self.name_address
        self.enemy_name_python
        self.unique_name
        self.num_gauge_time
        self.num_phys_power
        self.num_phys_mult
        self.num_evade
        self.num_phys_def
        self.num_mag_power
        self.num_mag_def
        self.num_mag_evade
        self.num_hp
        self.num_mp
        self.num_exp
        self.num_gil
        self.num_level
        self.gauge_time
        self.phys_power
        self.phys_mult
        self.evade
        self.phys_def
        self.mag_power
        self.mag_def
        self.mag_evade
        self.hp_lo
        self.hp_hi
        self.mp_lo
        self.mp_hi
        self.exp_lo
        self.exp_hi
        self.gil_lo
        self.gil_hi
        self.atk_index
        self.elemental_immune
        self.status0_immune
        self.status1_immune
        self.sattus2_immune
        self.elemental_absorb
        self.unavoidable_atk
        self.elemental_weakness
        self.enemy_type
        self.special_immune
        self.initial_status0
        self.initial_status1
        self.initial_status2
        self.initial_status3
        self.name_index
        self.level
        self.steal_common
        self.steal_rare
        self.drop_common
        self.drop_rare
        self.steal_common_name
        self.steal_rare_name
        self.drop_common_name
        self.drop_rare_name
        self.name_string
        '''
        self.original_num_hp = self.num_hp
        self.original_hp_hi = self.hp_hi
        self.original_hp_lo = self.hp_lo
        self.ai_patch_text = None

    @property
    def asar_output(self):
        # This outputs asar code for a enemy's stats
        final_output = ''
        
        final_output = final_output + "; Enemy: "+str(self.enemy_name)
        
        stat_data = '; Stats: \norg $'+self.stats_address+"\ndb "
        for stat in STAT_HEX_MAP:
            hex_val = getattr(self, stat)
            stat_data = stat_data + "$" + hex_val + ", "
        final_output = final_output + "\n" + stat_data[:-2] + "\n"

        final_output = final_output +  '; Loot: \norg $'+self.drops_address+"\ndb $"+self.steal_common+", $"+self.steal_rare+", $"+self.drop_common+", $"+self.drop_rare+"\n"
        
        if self.ai_patch_text is not None:
            final_output = final_output + self.ai_patch_text

        return final_output

    @property
    def short_output(self, length='full'):
        # This prints the stat values that are in HEX therefore what will specifically be coded to the game
        # NOT the "num_" values, which are used for updating THESE values 
        
        # Arguments
        # length : 
        # 'short' is name & loot
        # 'full' is stats
        # 'loot_only' returns loot
        
        if length == 'loot_only':
            return '{0: <15}'.format(self.enemy_name)+'{0: <40}'.format("Steal: "+self.steal_common_name+" / "+self.steal_rare_name)+'{0: <40}'.format("Drop: "+self.drop_common_name+" / "+self.drop_rare_name)
        
        final_output = ''
        # Name
        final_output  = final_output  + '{0: <15}'.format("Enemy:")+self.enemy_name+"\n"

        # Loot
        final_output  = final_output  + '{0: <15}'.format("Steal: ")+self.steal_common_name+" / "+self.steal_rare_name+"\n"+'{0: <15}'.format("Drop: ")+self.drop_common_name+" / "+self.drop_rare_name+"\n"

    
        # Stats 
        if length == 'full':
            for stat in ['hp','mp','exp','gil']:
                new_val = int(getattr(self,stat+"_hi"),base=16) * 256  + int(getattr(self,stat+"_lo"),base=16)
                final_output  = final_output  + '{0: <15}'.format(stat +": ") +str(new_val)+"\n"
            for stat in ['gauge_time','phys_power','phys_mult','evade','phys_def','mag_power','mag_def','mag_evade','level']:
                new_val = int(getattr(self,stat),base=16)
                final_output  = final_output  + '{0: <15}'.format(stat +": ") +str(new_val)+"\n"

        # AI
        #TODO
        
        return final_output

    def generate_from_df(self,data_manager,pass_type,use_boss_table):
        if pass_type == 'id': #if we're passing in ids, we can look anywhere
            s = data_manager.files['enemies'][data_manager.files['enemies']['idx']==str(self.idx)].iloc[0]
        if pass_type == 'hex': #if we're passing in hexes, we have to star
            if use_boss_table:
                s = data_manager.files['enemies_bosses'][data_manager.files['enemies_bosses']['idx_hex'].str.match(str(self.idx))].iloc[0]
            else:
                s = data_manager.files['enemies_nonbosses'][data_manager.files['enemies_nonbosses']['idx_hex'].str.match(str(self.idx))].iloc[0]

        if s.empty:
            print("No match on index found for enemy class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])

    def update_val(self, attr, val):
        val = int(val)
        if val > 65535:
            val = 65535
        val_bytes = val.to_bytes(2, 'little') or b'\0' #format our data as little endian bytes
        val_lo = format(val_bytes[0], '02x') #pass through format with 'x' to get just
        val_hi = format(val_bytes[1], '02x') #hex value (no '0x')

        if attr == 'exp':
            self.num_exp = val
            self.exp_lo = val_lo
            self.exp_hi = val_hi
        elif attr == 'gil':
            self.num_gil = val
            self.gil_lo = val_lo
            self.gil_hi = val_hi
        elif attr == 'hp':
            self.num_hp = val
            self.hp_lo = val_lo
            self.hp_hi = val_hi
        elif attr == 'mp':
            self.num_mp = val
            self.mp_lo = val_lo
            self.mp_hi = val_hi
        else:
            # For now, have to cap
            if val >= 255:
                val = 255
            val_byte = val.to_bytes(1, 'little') or b'\0'
            setattr(self,attr,format(val_byte[0], '02x'))

    def apply_rank_mult(self):
        rank_mult = self.rank_mult
        for stat in ['num_phys_power','num_phys_def','num_mag_power','num_mag_def','num_gil','num_level']:
            setattr(self,stat,str(round(int(getattr(self,stat)) * rank_mult)))
        self.update_all()

    def update_all(self):
        self.update_val('exp',self.num_exp)
        self.update_val('gil',self.num_gil)
        self.update_val('hp',self.num_hp)
        self.update_val('mp',self.num_mp)
        self.update_val('gauge_time',self.num_gauge_time)
        self.update_val('phys_power',self.num_phys_power)
        self.update_val('phys_mult',self.num_phys_mult)
        self.update_val('evade',self.num_evade)
        self.update_val('phys_def',self.num_phys_def)
        self.update_val('mag_power',self.num_mag_power)
        self.update_val('mag_def',self.num_mag_def)
        self.update_val('mag_evade',self.num_mag_evade)
        self.update_val('level',self.num_level)  

class EnemyManager(object):
    def __init__(self, data_manager):
        self.enemies = [Enemy(x, data_manager) for x in range(0, NUM_ENEMIES)]

    def get_patch(self):
        output = ";======="
        output = output + "\n;enemies"
        output = output + "\n;=======\n"
        for i in self.enemies:
            output = output + i.asar_output + "\n"
        output = output + "\n"

        return output

    def get_spoiler(self):
        output = "-----ENEMIES-----\n"
        for i in self.enemies:
            output = output + i.short_output + "\n"
        output = output + "-----*******-----\n"

        return output