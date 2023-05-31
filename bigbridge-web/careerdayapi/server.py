import binascii
import subprocess
import random
import requests
import boto3
import os
import ips
import codecs
import sys
import logging
from flask import Flask
from flask import request
from flask import jsonify
import datetime
import zipfile
from conductor import *
app = Flask(__name__)

ASAR_PATH = '/usr/local/bin/asar/asar/asar-standalone'
MAIN_PATCH = 'all_patches.asm'
TRANSLATE_PATCH = 'patches/rpge.ips'

# EXTRA_PATCH1 = 'patches/ff5_equip_change.ips'
# EXTRA_PATCH2 = 'patches/ff5_hp_color.ips'
# EXTRA_PATCH3 = 'patches/ff5_items_total.ips'
EXTRA_PATCH4 = 'patches/ff5_lr_menu-1.0.ips'
EXTRA_PATCH5 = 'patches/ff5_optimize.ips'
EXTRA_PATCH6 = 'patches/ff5_reequip.ips'
# EXTRA_PATCH7 = 'patches/ff5_sortplus.ips'

HEADERED_J_SIZE = 2097664
UNHEADERED_J_SIZE = 2097152
HEADERED_U_SIZE = 2621952
UNHEADERED_U_SIZE = 2621440

FAKE_HEADER = bytearray.fromhex('''0001 0080 0000 0000 aabb 0400 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000''')

logging.basicConfig(filename="error.log", level=logging.ERROR, format="%(asctime)-15s %(message)s")

@app.route("/careerdayapi/", methods=['POST'])
def patch_and_return():
    if request.method == 'POST':
        logging.error("Begin patch & return process")
        reheader = False
        smc = False
        rpge = False

        data = request.form.to_dict()
        logging.error("Request data %s" % (str(data)))
        seed = str(data["seed"]).strip()
        if seed == "":
            seed = str(random.randint(1000000, 9999999))
        filename = "CareerDay-{}".format(seed)
        r = requests.get(data["fileLocation"])

        with open(filename, 'wb') as f:  
            f.write(r.content)

        with open(filename, "rb") as file:
            romdata = bytearray(file.read())

        if len(romdata) == UNHEADERED_J_SIZE:
            logging.error("Detected unheadered, untranslated rom")
            reheader = True
            smc = False
            rpge = True
        if len(romdata) == HEADERED_J_SIZE:
            logging.error("Detected headered, untranslated rom")
            reheader = False
            smc = True
            rpge = True
        if len(romdata) == UNHEADERED_U_SIZE:
            logging.error("Detected unheadered, translated rom")
            reheader = True
            smc = False
            rpge = False
        if len(romdata) == HEADERED_U_SIZE:
            logging.error("Detected headered, translated rom")
            reheader = False
            smc = True
            rpge = False

        extra_patches_flag = translateBool(data['extra_patches'])
        logging.error("Header flags: REHEADER %s SMC %s RPGE %s EXTRA_PATCHES %s (%s)" % (reheader,smc,rpge, data['extra_patches'], extra_patches_flag))
        smc = headers_and_translate(filename, reheader, rpge, extra_patches_flag, smc)

        if smc:
            os.rename(filename, filename + ".smc")
            filename = filename + ".smc"
        else:
            os.rename(filename, filename + ".sfc")
            filename = filename + ".sfc"



        patch_careerday(filename, data)

        spoiler_log_flag = data["spoiler_log"]
        if type(spoiler_log_flag) != bool:
            spoiler_log_flag = translateBool(spoiler_log_flag)
        
        if spoiler_log_flag:
            spoiler_log_flag = False
        else:
            spoiler_log_flag = True
        
        if spoiler_log_flag:
            logging.error("Spoiler log enabled")
            random.seed(seed)
        else:
            logging.error("Spoiler log disabled")
            random.seed(seed)
            random.seed(random.randint(0,1000000))
            
        # We're going to pass in conductor_config into Conductor() object now
        # Any configuration for new parameters belong here
        
        conductor_config = {
                            'fjf':          data["fjf"],
                            'fjf_strict':   data["fjf_strict"],
                            'fjf_num_jobs': data["fjf_num_jobs"],
                            'jobpalettes':  data['jobpalette'],
                            'world_lock':   data['world_lock'],
                            'job_1':   data['job_1'],
                            'job_2':   data['job_2'],
                            'job_3':   data['job_3'],
                            'job_4':   data['job_4'],
                            'lenna_name':   data['lenna_name'],
                            'galuf_name':   data['galuf_name'],
                            'cara_name':   data['cara_name'],
                            'faris_name':   data['faris_name'],
                            'starting_cara':   data['starting_cara'],
                            'tiering_config':   data['tiering_config'],
                            'tiering_percentage':   data['tiering_percentage'],
                            'tiering_threshold':   data['tiering_threshold'],
                            'enforce_all_jobs':   data['enforce_all_jobs'],
                            'everysteprandomencounter' : data['everysteprandomencounter'],
                            'progressive_bosses':   data['progressive_bosses'],
                            'progressive_rewards':   data['progressive_rewards'],
                            'item_randomization':   data['item_randomization'],
                            'item_randomization_percent':   data['item_randomization_percent'],
                            'boss_exp_percent':   data['boss_exp_percent'],
                            'battle_speed':   data['battle_speed'],
                            'red_color':   data['red_color'],
                            'green_color':   data['green_color'],
                            'blue_color':   data['blue_color'],
                            'exp_mult':   data['exp_mult'],
                            'free_tablets':   data['free_tablets'],
                            'place_all_rewards':   data['place_all_rewards'],
                            'randomize_loot':   data['randomize_loot'],
                            'portal_boss':   data['portal_boss'],
                            'loot_percent':   data['loot_percent'],
                            'grantkeyitems':   data['grantkeyitems'],
                            'abbreviated':   data['abbreviated'],
                            'default_abilities':   data['default_abilities'],
                            'learning_abilities':   data['learning_abilities'],
                            'setting_string':   data['setting_string'],
                            'music_randomization':   data['music_randomization'],
                            'remove_ned':   data['remove_ned'],
                            'key_items_in_mib':   data['key_items_in_mib'],
                            'free_shops':   data['free_shops'],
                            'end_on_exdeath1': data['end_on_exdeath1'],
                            'hints_flag': data['hints_flag'],
                            'remove_flashes': data['remove_flashes'],
                            'extra_patches': data['extra_patches'],
                            'kuzar_credits_warp': data['kuzar_credits_warp'],
                            'seed':   seed
                            }
        logging.error("Begin randomization process")

        attempts = 0
        seed_success = False
        
        while attempts < 25:
            logging.error("Seed generation attempt # %s out of 25" % (attempts + 1))
            C = Conductor(random, conductor_config)
            pass_flag, spoilerandpatch = C.randomize()
            if pass_flag:
                attempts = 100
                seed_success = True
            else:
                attempts += 1
        
        if not seed_success:
            logging.error("\n ***** FAILED GENERATION, NO SEED CREATED ***** \n\n")

        else:
            logging.error("Finish randomization process")
            spoiler_file_name = "CareerDay-{}-spoiler.txt".format(seed)
            patch_file_name = "CareerDay-{}-patch.asm".format(seed)

            with open(patch_file_name, 'w') as f:
                f.write(spoilerandpatch[1].replace('\n', '\r\n'))
            with open(spoiler_file_name, 'w') as f:
                f.write(spoilerandpatch[0].replace('\n', '\r\n'))

            patch_random(filename, patch_file_name);

            file_list = []
            file_list.append(filename)
            # file_list.append(patch_file_name) #removed patch file for zip to players
            os.remove(patch_file_name)
            
            if spoiler_log_flag:
                file_list.append(spoiler_file_name)

            zip_file_name = "{}.zip".format(filename[:-4])

            with zipfile.ZipFile(zip_file_name, 'w') as zip:
                for file_name in file_list:
                    zip.write(file_name)
            
            s3 = boto3.client('s3')
            s3_filename = "careerdaydownloads/CareerDay-{}.zip".format(seed) 
            bucket_name = "bigbridgecareerday"

            s3.upload_file(zip_file_name, bucket_name, s3_filename, ExtraArgs={'ContentType': "application/zip"})

            os.remove(zip_file_name)

            for i in file_list:
                os.remove(i)

            sys.stdout.flush()
            logging.error("Finish patch & return process")
            return jsonify(s3_filename)

def headers_and_translate(filename, reheader, rpge, extra_patches, smc):

    # reheader = there is no header on the rom 
    # not reheader = there is a header on the rom 



    try:
        if extra_patches:
            logging.error("Applying extra patches")

            logging.error("Checking for unheadered files")
            if not reheader:
                logging.error("REMOVING header from rom for extra_patches")
                with open(filename, "r+b") as file:
                    data = bytearray(file.read())
                    data = remove_header(data)
                    file.seek(0)
                    logging.error(len(data))
                    file.write(data)
                logging.error("Rom REMOVED header")
                smc = True
                reheader = True

            # ips.apply(EXTRA_PATCH1, filename)
            # ips.apply(EXTRA_PATCH2, filename)
            # ips.apply(EXTRA_PATCH3, filename)
            ips.apply(EXTRA_PATCH4, filename)
            ips.apply(EXTRA_PATCH5, filename)
            ips.apply(EXTRA_PATCH6, filename) 
            # ips.apply(EXTRA_PATCH7, filename)
            logging.error("Extra patches applied successfully")
    except FileNotFoundError as e:
        logging.error("Error applying extra patches")
        logging.error("Extra patches missing. Verify patches files exist in patches directory")
    except Exception as e:
        logging.error("Error applying extra patches")
        logging.error("Unknown exception: "+str(e))
        
        
        
    if reheader:
        logging.error("Reheadering rom for RPGe patch application")
        with open(filename, "r+b") as file:
            data = bytearray(file.read())
            data = add_header(data)
            file.seek(0)
            logging.error(len(data))
            file.write(data)
        logging.error("Rom reheadered")
        smc = True

    try:
        if rpge:
            logging.error("Applying RPGe Translation")
            ips.apply(TRANSLATE_PATCH, filename)
            logging.error("RPGe Translation applied successfully")
    except FileNotFoundError as e:
        logging.error("Error applying RPGe Translation Patch")
        logging.error("RPGe Patch Missing. Verify rpge.ips file exists in patches directory")
    except Exception as e:
        logging.error("Error applying RPGe Translation Patch")
        logging.error("Unknown exception: "+str(e))

    return smc


def add_header(byte_list):
    return FAKE_HEADER + byte_list

def remove_header(byte_list):
    new_bytes = byte_list[512:]
    return new_bytes

def translateBool(boolean):
    if type(boolean) == bool:
        return boolean
    if boolean == "false":
        return False
    if boolean == "true":
        return True
    else:
        return None

def bool_to_int(boolean):
    if boolean:
        return 1
    else:
        return 0
    
def patch_careerday(filename, data):
    fjf = bool_to_int(translateBool(data['fjf']))
    fourjoblock = 1 if int(data['fjf_num_jobs']) == 4 and fjf == 1 else 0
    logging.error(int(data['fjf_num_jobs']))
    logging.error(fjf)
    logging.error(fourjoblock)
    progressive_rewards = bool_to_int(translateBool(data['progressive_rewards']))
    abbreviated = bool_to_int(translateBool(data['abbreviated']))
    grantkeyitems = bool_to_int(translateBool(data['grantkeyitems']))
    free_tablets = int(data['free_tablets'])
    starting_cara = bool_to_int(translateBool(data['starting_cara']))
    everysteprandomencounter = bool_to_int(translateBool(data['everysteprandomencounter']))
    explv50 = bool_to_int(translateBool(data['everysteprandomencounter']))
    end_on_exdeath1 = bool_to_int(translateBool(data['end_on_exdeath1']))
    remove_ned = bool_to_int(translateBool(data['end_on_exdeath1']))
    kuzar_credits_warp = bool_to_int(translateBool(data['kuzar_credits_warp']))
    # world_lock should be passed as an integer (either 0, 1 or 2). If it's not, make a function to do so
    world_lock = int(data['world_lock'])
    remove_flashes = bool_to_int(translateBool(data['remove_flashes']))
    
    command = "(cd career_day/asm && {} --define dash=1 --define learning=1 --define pitfalls=1 \
    --define passages=1 --define double_atb=0 --define progressive={} --define abbreviated={} --define grantkeyitems={} --define boss_exp=1 --define free_tablets={} \
    --define fourjobmode={} --define fourjoblock={} --define world_lock={} --define starting_cara={} --define end_on_exdeath1={}  --define remove_ned={} --define everysteprandomencounter={} --define explv50={} --define remove_flashes={} --define kuzar_credits_warp={}\
    --fix-checksum=off --define vanillarewards=0 --no-title-check {} ../../{})".format(ASAR_PATH,progressive_rewards, abbreviated, grantkeyitems, free_tablets, fjf, fourjoblock, world_lock, starting_cara, end_on_exdeath1, remove_ned, everysteprandomencounter, explv50, remove_flashes, kuzar_credits_warp, MAIN_PATCH, filename)

    logging.error(command)
    
    response = subprocess.run(command, shell=True)

def patch_random(filename, patchname):
    command = "{} {} {}".format(ASAR_PATH, patchname, filename)

    logging.error(command)
    
    response = subprocess.run(command, shell=True)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="5001")