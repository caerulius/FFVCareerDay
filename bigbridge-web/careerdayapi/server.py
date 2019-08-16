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
import zipfile
from conductor import *
app = Flask(__name__)

ASAR_PATH = '/usr/local/bin/asar/asar/asar-standalone'
MAIN_PATCH = 'all_patches.asm'
TRANSLATE_PATCH = 'patches/rpge.ips'

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

logging.basicConfig(filename="error.log", level=logging.ERROR)

@app.route("/careerdayapi/", methods=['POST'])
def patch_and_return():
    if request.method == 'POST':
        
        reheader = False
        smc = False
        rpge = False

        data = request.form.to_dict()
        seed = data["seed"]
        fjf = bool_translate(data["fjf"])
        jobpalettes = bool_translate(data["jobpalette"])

        if seed == "":
            seed = str(random.randint(1000000, 9999999))
        filename = "CareerDay-{}".format(seed)
        r = requests.get(data["fileLocation"])

        with open(filename, 'wb') as f:  
            f.write(r.content)

        with open(filename, "rb") as file:
            romdata = bytearray(file.read())

        if len(romdata) == UNHEADERED_J_SIZE:
            print("Detected unheadered, untranslated rom")
            reheader = True
            smc = True
            rpge = True
        if len(romdata) == HEADERED_J_SIZE:
            print("Detected headered, untranslated rom")
            reheader = False
            smc = True
            rpge = True
        if len(romdata) == UNHEADERED_U_SIZE:
            print("Detected unheadered, translated rom")
            reheader = False
            smc = False
            rpge = False
        if len(romdata) == HEADERED_U_SIZE:
            print("Detected headered, translated rom")
            reheader = False
            smc = True
            rpge = False

        if smc:
            os.rename(filename, filename + ".smc")
            filename = filename + ".smc"
        else:
            os.rename(filename, filename + ".sfc")
            filename = filename + ".sfc"

        headers_and_translate(filename, reheader, rpge)

        patch_careerday(filename, fjf)

        random.seed(seed)
        C = Conductor(random, fjf=fjf, jobpalettes=jobpalettes)
        spoilerandpatch = C.randomize()

        spoiler_file_name = "CareerDay-{}-spoiler.txt".format(seed)
        patch_file_name = "CareerDay-{}-patch.asm".format(seed)

        with open(patch_file_name, 'w') as f:
            f.write(spoilerandpatch[1].replace('\n', '\r\n'))
        with open(spoiler_file_name, 'w') as f:
            f.write(spoilerandpatch[0].replace('\n', '\r\n'))

        patch_random(filename, patch_file_name)

        file_list = []
        file_list.append(filename)
        file_list.append(patch_file_name)
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

        return jsonify(s3_filename)

def headers_and_translate(filename, reheader, rpge):
    if reheader:
        logging.error("Reheadering rom for RPGe patch application")
        with open(filename, "r+b") as file:
            data = bytearray(file.read())
            data = add_header(data)
            file.seek(0)
            file.write(data)
        logging.error("Rom reheadered")

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
        logging.error("Unknown exception...")

def add_header(byte_list):
    return FAKE_HEADER + byte_list

def patch_careerday(filename, fjf):        
    command = "(cd career_day/asm && {} --define dash=1 --define learning=1 --define pitfalls=1 \
--define passages=1 --define double_atb=0 --define boss_exp=1 --define fourjobmode={} \
--fix-checksum=off --define vanillarewards=0 --no-title-check {} ../../{})".format(ASAR_PATH, 1 if fjf else 0, MAIN_PATCH, filename)

    logging.error(command)
    
    response = subprocess.run(command, shell=True)

def patch_random(filename, patchname):
    command = "{} {} {}".format(ASAR_PATH, patchname, filename)

    logging.error(command)
    
    response = subprocess.run(command, shell=True)

def bool_translate(boolean):
    if boolean == "false":
        return False
    if boolean == "true":
        return True
    else:
        return None

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="5001")