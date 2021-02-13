import os
import shutil
import sys
import glob
import zipfile
import hashlib
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

def file_hasher(file):
    with open(file, "rb") as f:
        file_hash = hashlib.md5()
        chunk = f.read(8192)
        while chunk:
            file_hash.update(chunk)
            chunk = f.read(8192)

    return file_hash.hexdigest()


def hash_directory(directory):
    files = [i for i in glob.glob(os.path.join(directory,"**"), recursive=True) if os.path.isfile(i)]
    hashes = {}
    for f in files:
        hashes[os.path.abspath(f)] = file_hasher(f)
    return hashes

    
def move_files(input_path,output_path,accepted_files):
    for file in input_path:
        if file.endswith(accepted_files):
            print("Moving file: "+file)
            shutil.copy(file,os.path.join(output_path,os.path.basename(file)))
            
def retrieve_new_files(dir1, dir2, accepted_filetypes=()):
    # returns unique files in dir1 not present yet in dir2
    
    final_files = {}
    for k, v in dir1.items():
        if v not in dir2.values() and k.endswith(accepted_filetypes):
            final_files[k] = v

    pass
    return final_files

# Everything is relative to the root path of FFVCareerDay            
def move_cd():    
    # utilities/data
    apitest_hashes = hash_directory(os.path.join(THIS_FILEPATH,os.pardir,os.pardir,'bigbridge-web','careerdayapitest'))
    accepted_filetypes = ('py','ini')
    data_input_path = hash_directory(os.path.join('utilities','data'))
    new_files = retrieve_new_files(data_input_path, apitest_hashes, accepted_filetypes)
    data_output_path = os.path.join('bigbridge-web','careerdayapitest')
    move_files(new_files,data_output_path,accepted_filetypes)
    
    # utilities/data/tables
    accepted_filetypes = ('csv')
    data_input_path = hash_directory(os.path.join('utilities','data', 'tables'))
    new_files = retrieve_new_files(data_input_path, apitest_hashes, accepted_filetypes)
    data_output_path = os.path.join('bigbridge-web','careerdayapitest', 'tables')
    move_files(new_files,data_output_path,accepted_filetypes)    
    
    # utilities/data/portal_boss_ai
    accepted_filetypes = ('txt')
    data_input_path = hash_directory(os.path.join('utilities','data', 'portal_boss_ai'))
    new_files = retrieve_new_files(data_input_path, apitest_hashes, accepted_filetypes)
    data_output_path = os.path.join('bigbridge-web','careerdayapitest', 'portal_boss_ai')
    move_files(new_files,data_output_path,accepted_filetypes)    
    
    
    # utilities/data/tables/text_tables
    accepted_filetypes = ('csv')
    data_input_path = hash_directory(os.path.join('utilities','data', 'tables','text_tables'))
    new_files = retrieve_new_files(data_input_path, apitest_hashes, accepted_filetypes)
    data_output_path = os.path.join('bigbridge-web','careerdayapitest', 'tables', 'text_tables')
    move_files(new_files,data_output_path,accepted_filetypes)    
    
    
def move_cd_old():        
    # utilities/data
    data_input_path = glob.glob(os.path.join('utilities','data','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest')
    move_files(data_input_path,data_output_path,('py','ini'))
    
    # utilities/data/tables
    data_input_path = glob.glob(os.path.join('utilities','data','tables','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest','tables')
    move_files(data_input_path,data_output_path,('csv'))

    # utilities/data/portal_boss_ai
    data_input_path = glob.glob(os.path.join('utilities','data','portal_boss_ai','*'))
    data_output_path = os.path.join('bigbridge-web','careerdayapitest','portal_boss_ai')
    move_files(data_input_path,data_output_path,('txt'))

    
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
        cdapi_path = os.path.join('bigbridge-web','careerdayapi')
        cd_path = os.path.join('bigbridge-web','careerday')
        try:
            shutil.rmtree(cd_path)
        except:
            pass
        try:
            shutil.rmtree(cdapi_path)
        except:
            pass
        
        print("Copying subdirs over")
        # try:
            # os.mkdir(cd_path)
            # os.mkdir(cdapi_path)
        # except Exception as e:
            # print("Error %s" % str(e))
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