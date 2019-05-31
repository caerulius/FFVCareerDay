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

@app.route("/projectdemiapi/", methods=['POST'])
def patch_and_return():
    if request.method == 'POST':
        
        reheader = False
        onlyheader = False
        rpge = False

        data = request.form.to_dict()
        filename = str(random.randint(1000000,9999999)) + '.smc'
        r = requests.get(data["fileLocation"])

        with open(filename, 'wb') as f:  
            f.write(r.content)

        with open(filename, "rb") as file:
            romdata = bytearray(file.read())

        if len(romdata) == UNHEADERED_J_SIZE:
            print("Detected unheadered, untranslated rom")
            onlyheader = False
            reheader = True
            rpge = True
        if len(romdata) == HEADERED_J_SIZE:
            print("Detected headered, untranslated rom")
            onlyheader = False
            reheader = False
            rpge = True
        if len(romdata) == UNHEADERED_U_SIZE:
            print("Detected unheadered, translated rom")
            onlyheader = True
            reheader = False
            rpge = False
        if len(romdata) == HEADERED_U_SIZE:
            print("Detected headered, translated rom")
            onlyheader = False
            reheader = False
            rpge = False

        headers_and_translate(filename, onlyheader, reheader, rpge)

        patch(filename, to_int(data["dash"]), to_int(data["learning"]), to_int(data["pitfalls"]), to_int(data["passages"]), to_int(data["atb"]), to_int(data["boss"]))

        s3 = boto3.client('s3')
        s3_filename = "projectdemidownloads/ProjectDemi" + filename[:3] + ".smc" 
        bucket_name = "bigbridgecareerday"

        s3.upload_file(filename, bucket_name, s3_filename, ExtraArgs={'ContentType': "application/vnd.nintendo.snes.rom"})

        os.remove(filename)

        sys.stdout.flush()

        return jsonify(s3_filename)

def headers_and_translate(filename, onlyheader, reheader, rpge):
    with open(filename, "rb") as file:
        romdata = bytearray(file.read())

    logging.error("entering headering/translating with file of size: " + str(len(romdata)))

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

    with open(filename, "rb") as file:
        romdata = bytearray(file.read())
    logging.error("before unheader with file of size: " + str(len(romdata)))

    if onlyheader:
        logging.error("Adding header for Project Demi patch application")
        with open(filename, "r+b") as file:
            data = bytearray(file.read())
            data = add_header(data)
            file.seek(0)
            file.write(data)
        logging.error("Rom reheadered")

    with open(filename, "rb") as file:
        romdata = bytearray(file.read())
    logging.error("leaving headering/translating with file of size: " + str(len(romdata)))

def add_header(byte_list):
    return FAKE_HEADER + byte_list

def patch(filename, dash, learning, pitfalls, passages, atb, boss):
    command = "(cd project_demi/asm && {} --define dash={} --define learning={} --define pitfalls={} \
--define passages={} --define double_atb={} --define boss_exp={} \
--fix-checksum=off --define vanillarewards=1 --no-title-check {} ../../{})".format(ASAR_PATH, dash, learning, pitfalls, passages, atb, boss, MAIN_PATCH, filename)

    logging.error(command)
    
    response = subprocess.run(command, shell=True)
    logging.error(response)

def to_int(bool):
    if bool == "true":
        return 1
    elif bool == "false":
        return 0
    else:
        return None

if __name__ == "__main__":
    app.run("0.0.0.0")