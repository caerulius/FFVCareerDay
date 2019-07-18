import os
import shutil
import sys
import glob

THIS_FILEPATH = os.path.dirname(__file__)

ROOT_PATH = os.path.join(THIS_FILEPATH,os.pardir,os.pardir)
if ROOT_PATH not in sys.path:
    sys.path.append(ROOT_PATH)
    
os.chdir(ROOT_PATH)


# Everything is relative to the root path of FFVCareerDay

def move_careerday(test_flag = False):
    '''
    test_flag = set to False if careerdayapi is the desired copy output path
                set to True if careerdayapitest is the desired copy output path
    '''
    # test_flag = True
    
    # utilities/data
    data_input_path = glob.glob(os.path.join('utilities','data','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest')
    move_files(data_input_path,data_output_path,('py','ini'))
    
    # utilities/data/tables
    data_input_path = glob.glob(os.path.join('utilities','data','tables','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest','tables')
    move_files(data_input_path,data_output_path,('csv'))
    
    # utilities/data/tables/text_tables
    data_input_path = glob.glob(os.path.join('utilities','data','tables','text_tables','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest','tables','text_tables')
    move_files(data_input_path,data_output_path,('csv'))
    
    
def move_files(input_path,output_path,accepted_files):
    for file in input_path:
        if file.endswith(accepted_files):
            print("Moving file: "+file)
            shutil.copy(file,os.path.join(output_path,os.path.basename(file)))