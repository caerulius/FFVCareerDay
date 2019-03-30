from enemy_handler import Enemy
import pandas as pd

# Ensure vanilla locations original for event formation references
LOC_WINGRAPTOR = 'D04B75'
LOC_SANDWORM = 'D04BF5'
LOC_MELUSINE = 'D04E05'
LOC_TWINTANIA = 'D04F65'
LOC_WINGRAPTOR2 = 'D04B70'
LOC_SANDWORM2 = 'D04BF0'
LOC_MELUSINE2 = 'D04E00'
LOC_TWINTANIA2 = 'D04F60'

TESTING_HP = {1:250, 2:3000, 3:15000, 4:55000}




FORMATION_OFFSET = 'D04BA0'         # what formation you want to replicate
FORMATION_TIER = 2                  # tier #
ENEMY_IDX = [262,263]              # enemies to rewrite stats for. idx






df_formation = pd.read_csv('../data/tables/formation_id.csv')
df_formation = df_formation[df_formation['randomized_boss']=='y']

df_formation_data = df_formation[['offset','formationid_1','escape_%','abp','visible_enemy','enemy_1','enemy_2','enemy_3','enemy_4','enemy_5','enemy_6','enemy_7','enemy_8','formationid_13','formationid_14','formationid_15','formationid_16']]

df_boss_scaling = pd.read_csv('../data/tables/boss_scaling.csv',dtype={'idx_hex':'str'})

df_enemy_table = pd.read_csv('tables/enemy_data.csv', dtype=str)
df_boss_data = df_enemy_table[df_enemy_table['enemy_rank']=='boss']

df_stats = pd.read_csv('../data/tables/enemy_data.csv')
df_stats = df_stats[df_stats['enemy_rank']=='boss']

pd.options.display.max_rows = 999
pd.options.display.max_columns = 999

       


ENEMY_LIST = [Enemy(str(x),df_boss_data) for x in ENEMY_IDX]


############################################################################
############################################################################
############################################################################
############################################################################
############################################################################
# When you're done with testing, REMOVE
# HP TESTING below
# HP is ONLY for testing and should
# Be written only when swapping locs
# And new formation gets old formation's HP
############################################################################
############################################################################
############################################################################
############################################################################
############################################################################
HP_TESTING = True



def call_formations():
    for i in df_formation[['offset','event_formation_reference','enemy_1','enemy_2','enemy_list']].iterrows():
        print(str(i[1][0])+" "+str(i[1][1])+" "+str(i[1][2])+" "+str(i[1][3])+" "+str(i[1][4]))
    for i in df_boss_data[['idx','enemy_name']].iterrows():
        print(str(i[1][0])+" "+str(i[1][1]))
        

def prepare_testing():
    '''
    Outputs a file to projects/test_asm/    
    '''
    text_string = 'hirom\n'
    
    for iterate_index, enemy_index in enumerate(ENEMY_IDX):
        df = df_boss_scaling[(df_boss_scaling['idx']==enemy_index) & (df_boss_scaling['tier']==FORMATION_TIER)]
        COLUMNS = ['num_gauge_time','num_phys_power','num_phys_mult','num_evade','num_phys_def','num_mag_power','num_mag_def','num_mag_evade','num_mp']
        for col in COLUMNS:
            val = df[col].iloc[0]
            setattr(ENEMY_LIST[iterate_index],col,int(val))
            
        # HP TESTING
        if HP_TESTING:
            setattr(ENEMY_LIST[iterate_index],'num_hp',TESTING_HP[FORMATION_TIER])
        
        ENEMY_LIST[iterate_index].update_all()
        text_string = text_string + (ENEMY_LIST[iterate_index].retrieve_asar())+"\n"
    
    
    # data prep
    df_chosen = df_formation_data[df_formation_data['offset']==FORMATION_OFFSET]
    df_chosen = df_chosen[['escape_%','abp','visible_enemy','enemy_1','enemy_2','enemy_3','enemy_4','enemy_5','enemy_6','enemy_7','enemy_8','formationid_13','formationid_14','formationid_15','formationid_16']]
    
    # output for formation data to be written 
    formation_asar = 'db '
    for col in df_chosen.iloc[0]:
        formation_asar = formation_asar + "$"+str(col)+", "
    formation_asar = formation_asar[:-2]
    
    
    
    event_dict = df_formation[['offset','event_formation_reference']].set_index('offset').to_dict()['event_formation_reference']
    this_formation = event_dict[FORMATION_OFFSET]
    
    
    text_string = text_string + (';rewrite locations to test location')+"\n"
    df_write = df_formation[df_formation['offset'].isin([LOC_WINGRAPTOR2,LOC_SANDWORM2, LOC_MELUSINE2, LOC_TWINTANIA2])]
    for i, r in df_write.iterrows():
        event_lookup = this_formation[2:4] + this_formation[0:2]
        text_string = text_string + ('org $'+df_write['event_lookup_loc1'].loc[i])+"\n"
        text_string = text_string + ('db $'+event_lookup)+"\n"
        text_string = text_string + ('org $'+df_write['event_lookup_loc2'].loc[i])+"\n"
        text_string = text_string + ('db $'+event_lookup)+"\n"
#    
#    text_string = text_string + (';overwrite with new formation')+"\n"
#    for loc in [LOC_WINGRAPTOR,LOC_SANDWORM, LOC_MELUSINE, LOC_TWINTANIA]:
#        text_string = text_string + ('org $'+loc)+"\n"
#        text_string = text_string + (formation_asar)+"\n"
        
    print(text_string)
    with open('../../projects/test_asm/boss_testing_stats.asm','w') as f:
        f.write(text_string)
        
prepare_testing()    

def output_all_stats():
    '''
    This function will ignore specified FORMATION_TIER and output the stats for each enemy in the formation at every FORMATION_TIER
    Need this for creating final stat files, which will be conditional 
    
    '''
    
    ENEMY_LIST = [Enemy(str(x),df_boss_data) for x in ENEMY_IDX]

    for tier in range(1,5):
        print('; TIER '+str(tier))
        for iterate_index, enemy_index in enumerate(ENEMY_IDX):
            df = df_boss_scaling[(df_boss_scaling['idx']==enemy_index) & (df_boss_scaling['tier']==tier)]
            COLUMNS = ['num_gauge_time','num_phys_power','num_phys_mult','num_evade','num_phys_def','num_mag_power','num_mag_def','num_mag_evade','num_mp']
            for col in COLUMNS:
                val = df[col].iloc[0]
                setattr(ENEMY_LIST[iterate_index],col,int(val))
            ENEMY_LIST[iterate_index].update_all()
            print(ENEMY_LIST[iterate_index].retrieve_asar())