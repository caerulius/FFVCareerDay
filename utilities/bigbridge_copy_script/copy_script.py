import os
import shutil
import sys
import glob
import zipfile
from argparse import ArgumentParser, RawDescriptionHelpFormatter

parser = ArgumentParser(description="",
                        formatter_class=RawDescriptionHelpFormatter)
parser.add_argument('--copy_cd_files', dest='copy_cd_files', action='store_true',
                    help = 'Copies career_day files to careerdayapitest')
parser.set_defaults(copy_cd_files=False)
parser.add_argument('--copy_pd_files', dest='copy_pd_files', action='store_true',
                    help = 'Copies project_demi files to projectdemiapitest')
parser.set_defaults(copy_pd_files=False)
parser.add_argument('--deploy', dest='deploy', action='store_true',
                    help = 'Deploys from test subdirs to careerday and careerdayapi, and changes test references')
parser.set_defaults(deploy=False)

THIS_FILEPATH = os.path.dirname(__file__)

ROOT_PATH = os.path.abspath(os.path.join(THIS_FILEPATH,os.pardir,os.pardir))
if ROOT_PATH not in sys.path:
    sys.path.append(ROOT_PATH)
    
os.chdir(ROOT_PATH)


# Everything is relative to the root path of FFVCareerDay
    
def move_files(input_path,output_path,accepted_files):
    for file in input_path:
        if file.endswith(accepted_files):
            print("Moving file: "+file)
            shutil.copy(file,os.path.join(output_path,os.path.basename(file)))
            
def move_cd():    
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

def handle_cd_zip_files():
    cd_zip_name = os.path.join('bigbridge-web','careerdayapitest','career_day','cd_zip')
    cd_extract_dir = os.path.join('bigbridge-web','careerdayapitest','career_day')
    cd_directory_name = os.path.join(os.path.join('projects','career_day'))
    shared_zip_name = os.path.join('bigbridge-web','careerdayapitest','shared_asm','shared_zip')
    shared_extract_dir = os.path.join('bigbridge-web','careerdayapitest','shared_asm')
    shared_directory_name = os.path.join(os.path.join('projects','shared_asm'))

    # make zipfiles
    print("Creating zip to:" +cd_directory_name)
    shutil.make_archive(cd_zip_name, 'zip', cd_directory_name)
    print("Creating zip to:" +shared_directory_name)
    shutil.make_archive(shared_zip_name, 'zip', shared_directory_name)
    
    # Now unzip

    cd_zip_path = os.path.join(cd_zip_name.replace("cd_zip","cd_zip.zip"))
    shared_zip_path = os.path.join(shared_zip_name.replace("shared_zip","shared_zip.zip"))
    
    print("Unzipping:" +cd_zip_path)
    with zipfile.ZipFile(cd_zip_path, 'r') as zip_ref:
        zip_ref.extractall(cd_extract_dir)
    print("Unzipping:" +shared_zip_path)
    with zipfile.ZipFile(shared_zip_path, 'r') as zip_ref:
        zip_ref.extractall(shared_extract_dir)
        
    # remove zips
    os.remove(cd_zip_path)
    os.remove(shared_zip_path)
    
def handle_pd_zip_files():
    pd_zip_name = os.path.join('bigbridge-web','projectdemiapitest','career_day','pd_zip')
    pd_extract_dir = os.path.join('bigbridge-web','projectdemiapitest','project_demi')
    pd_directory_name = os.path.join(os.path.join('projects','project_demi'))
    shared_zip_name = os.path.join('bigbridge-web','projectdemiapitest','shared_asm','shared_zip')
    shared_extract_dir = os.path.join('bigbridge-web','projectdemiapitest','shared_asm')
    shared_directory_name = os.path.join(os.path.join('projects','shared_asm'))

    # make zipfiles
    print("Creating zip to:" +pd_directory_name)
    shutil.make_archive(pd_zip_name, 'zip', pd_directory_name)
    print("Creating zip to:" +shared_directory_name)
    shutil.make_archive(shared_zip_name, 'zip', shared_directory_name)
    
    # Now unzip
    pd_zip_path = os.path.join(pd_zip_name.replace("pd_zip","pd_zip.zip"))
    shared_zip_path = os.path.join(shared_zip_name.replace("shared_zip","shared_zip.zip"))
    
    print("Unzipping:" +pd_zip_path)
    with zipfile.ZipFile(pd_zip_path, 'r') as zip_ref:
        zip_ref.extractall(pd_extract_dir)
    print("Unzipping:" +shared_zip_path)
    with zipfile.ZipFile(shared_zip_path, 'r') as zip_ref:
        zip_ref.extractall(shared_extract_dir)
        
    # remove zips
    os.remove(pd_zip_path)
    os.remove(shared_zip_path)
    
def replace_data(file_path, string, replace):
    
    # Read in the file
    with open(file_path, 'r') as file :
      filedata = file.read()
    
    # Replace the target string
    filedata = filedata.replace(string, replace)
    
    # Write the file out again
    with open(file_path, 'w') as file:
      file.write(filedata)
      
      
def deploy_to_careerday():
    flag = input("Confirm deploying? Type undercase y to deploy.")
    if flag == "y":
        print("Clear out everything in careerday and careerdayapi")
        cd_path = os.path.join('bigbridge-web','careerday')
        shutil.rmtree(cd_path)
        
        cdapi_path = os.path.join('bigbridge-web','careerdayapi')
        shutil.rmtree(cdapi_path)
        
        print("Copying subdirs over")
        cdtest_path = os.path.join('bigbridge-web','careerdaytest')
        cdapitest_path = os.path.join('bigbridge-web','careerdayapitest')
        
        shutil.copytree(cdtest_path,cd_path)
        shutil.copytree(cdapitest_path,cdapi_path)
        
        print("Replacing references to careerdaytest/apitest to main processes...")
        print("Replacing apitest in main.js")
        replace_data(os.path.join("bigbridge-web","careerday","js","main.js"),"careerdayapitest","careerdayapi")
        print("Replacing apitest in server.py")
        replace_data(os.path.join("bigbridge-web","careerdayapi","server.py"),"careerdayapitest","careerdayapi")
        print("Replacing port 5002 to 5001 in server.py")
        replace_data(os.path.join("bigbridge-web","careerdayapi","server.py"),"5002","5001")

    
        input("Finished. Press enter to close.")
    else:
        input("NOT deployed. Press enter to close.")
    
    
def copy_cd_files():
    move_cd()
    handle_cd_zip_files()
    input("Finished copying. Press any key to close.")
    
def copy_pd_files():
    handle_pd_zip_files()
    input("Finished copying. Press any key to close.")
    
    
print("Loaded copy script. Checking for arguments...")
args = parser.parse_args()
if args.copy_cd_files:
    print("Starting career day copy.")
    copy_cd_files()
if args.copy_pd_files:
    print("Starting project demi copy.")
    copy_pd_files()
if args.deploy:
    print("Starting deploy.")
    deploy_to_careerday()