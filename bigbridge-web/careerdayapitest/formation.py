from data_manager import *
from enemy import *

NUM_FORMATIONS = 513

class Formation(object):
    def __init__(self,index,data_manager,enemy_manager,original_flag = False):
        self.idx = index
        self.generate_from_df(data_manager.files['formations'])
        '''
        self.offset
        self.randomized_boss
        self.rank
        self.boss_rank
        self.event_id
        self.event_lookup_loc1
        self.event_lookup_loc2
        self.event_formation_reference
        self.formationid_1
        self.escape_%
        self.abp
        self.visible_enemy
        self.enemy_1
        self.enemy_2
        self.enemy_3
        self.enemy_4
        self.enemy_5
        self.enemy_6
        self.enemy_7
        self.enemy_8
        self.formationid_13
        self.formationid_14
        self.formationid_15
        self.formationid_16
        self.enemy_list
        '''
        self.assign_enemies(enemy_manager, data_manager, original_flag)
        self.original_enemy_list = self.enemy_list
        self.enemy_change = ''

    @property
    def asar_output(self):
        return '; ' + str(self.enemy_change) + ' \norg $'+ str(self.event_lookup_loc1) + \
           '\ndb $' + str(self.event_formation_reference[0:2]) + ", $" + str(self.event_formation_reference[2:4]) + \
           ' \norg $' + str(self.event_lookup_loc2) + '\ndb $' + str(self.event_formation_reference[0:2]) + \
           ', $' + str(self.event_formation_reference[2:4])

    @property
    def short_output(self):
        try:
            split1, split2 = self.enemy_change.split(" > ",1)
            
            if self.offset == 'D04C90':
                split1 = split1.replace("Gilgamesh","Gilgamesh I")    
            elif self.offset == 'D04D00':
                split1 = split1.replace("Gilgamesh","Gilgamesh II")
            elif self.offset == 'D04D40':
                split1 = split1.replace("Gilgamesh","Gilgamesh III")
            elif self.offset == 'D04D80':
                split1 = split1.replace("Gilgamesh","Gilgamesh IV")


            if "Gilgamesh (Rank 4)" in split2:
                split2 = split2.replace("Gilgamesh","Gilgamesh I")
            elif "Gilgamesh (Rank 5)" in split2:
                split2 = split2.replace("Gilgamesh","Gilgamesh II")
            elif "Gilgamesh (Rank 6)" in split2:
                split2 = split2.replace("Gilgamesh","Gilgamesh III")
            elif "Gilgamesh (Rank 7)" in split2:
                split2 = split2.replace("Gilgamesh","Gilgamesh IV")
            split1 = split1.replace("Hole","Sandworm").replace("Forza","Magisa")
            split2 = split2.replace("Hole","Sandworm").replace("Forza","Magisa")

            
           #  split2 = split2.split(" (", 1)[0]
            
            return '{:25}'.format("%s" % (split1)) + '{:5}'.format(">") + '{:25}'.format("%s" % (split2)) 
        except Exception as e:
            print("Exception %s" % e)
            return ""

    def generate_from_df(self, df):
        s = df[df['idx']==str(self.idx)].iloc[0]
        if s.empty:
            print("No match on index found for Formation class "+self.idx)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
                
    def assign_enemies(self,enemy_manager, data_manager, original_flag):
        enemy_list = []
        for enemy in ['enemy_1','enemy_2','enemy_3','enemy_4','enemy_5','enemy_6','enemy_7','enemy_8']:
            # print(self.enemy_list,original_flag)
            # Find enemy ID
            enemy_id = getattr(self,enemy)

            # If it's $FF, then ignore entirely
            if enemy_id == 'FF':
                continue
            
            # ORIGINAL FLAG
            # if the original flag is called, a NEW enemy object is created per enemy
            # Otherwise, the shared pool of enemies for the output will be used
            
            # What happens is that we need to preserve the enemies that are being randomized elsewhere
            # primarly for loot and stats. But we need to make sure those same enemies are the same objects
            # All the way through the end for our randomized output. 
            
            # But when we use the original flag, it's for comparison to the vanilla enemy
            # which is VERY important for preserving boss swap
            
            # This avoids a situation such as:
            # Swap LiquidFlame with TwinTania, giving 55000 hp to LiquidFlame
            # Then, swap WingRaptor with LiquidFlame, giving 55000 hp to WingRaptor
            # That's NOT what we want. We want 3000hp to WingRaptor (LiquidFlame's vanilla hp), 
            # which is why this original clause exists
            
            #TODO: Some formations might be misassinging enemies to bosses and vice versa, will unfortunately
            #have to go through with a fine tooth comb to find them. Make sure to do this before randomzing
            #non boss formations
            elif original_flag:
                # Create new Enemy classes to grab from original, unaltered/randomized data
                # If it's Byblos or Ifrit, the only exceptions, grab from enemies, else grab from bosses
                if self.rank == 'boss':
                    new_enemy = Enemy(enemy_id,data_manager,'hex', True)
                else:
                    new_enemy = Enemy(enemy_id,data_manager,'hex', False)
            else:
                # If it's not original, iterate through the list of all enemies 
                if self.rank == 'standard':
                    for enemy_loop in [x for x in enemy_manager.enemies if x.enemy_rank == 'enemy']:  # Search through first set of enemies before bosses
#                        if self.enemy_list == 'Ifrit':
#                            breakpoint()                        
                        if enemy_loop.idx_hex == enemy_id:
                            new_enemy = enemy_loop
                else:
                    for enemy_loop in [x for x in enemy_manager.enemies if x.enemy_rank == 'boss']:  # Search through last set of enemies, bosses only
                        if enemy_loop.idx_hex == enemy_id:
                            new_enemy = enemy_loop
            enemy_list.append(new_enemy)
            
        # Assign list of enemy class objects to self for all enemies
        self.enemy_classes = enemy_list

class FormationManager(object):
    def __init__(self, data_manager, enemy_manager):
        self.formations = [Formation(x, data_manager, enemy_manager) for x in range(1, NUM_FORMATIONS)]

    def get_patch(self):
        output = ";=========="
        output = output + "\n;formations"
        output = output + "\n;==========\n"
        for i in [x for x in self.formations if x.randomized_boss == 'y']:
            output = output + i.asar_output + "\n"
        output = output + "\n"

        return output

    def get_spoiler(self):
        output = "-----FORMATIONS-----\n"
        for i in [x for x in self.formations if x.randomized_boss == 'y']:
            output = output + i.short_output + "\n"
        output = output + "-----**********-----\n"

        return output