import ips
import easygui
import os
import codecs
import binascii
import sys
import copy
import random
import subprocess
import math
import time

writedirectory = os.getcwd()

if getattr(sys, 'frozen', False):
    app_path = sys._MEIPASS
else:
    app_path = os.path.dirname(os.path.abspath(__file__))

os.chdir(app_path)

from conductor import *

os.chdir(writedirectory)

RPGE_PATH = os.path.join(app_path, "patches/rpge.ips")
MAIN_PATH = os.path.join(app_path, "patches/ffv_project_demi_main.ips")
MAIN_RANDO_PATH = os.path.join(app_path, "patches/ffv_project_demi_main_rando.ips")
X2_EXP_PATH = os.path.join(app_path, "patches/ffv_project_demi_expabp2.ips")
X4_EXP_PATH = os.path.join(app_path, "patches/ffv_project_demi_expabp4.ips")
BOSS_EXP_PATH = os.path.join(app_path, "patches/ffv_project_demi_boss.ips")
ASAR_PATH = os.path.join(app_path, "asar.exe")

while True:
    rand = input("Do you want to randomize? (y/n) ")
    rand = rand.lower()
    if rand == 'y' or rand == 'n':
        break

rand = rand == 'y'

if rand:
    seed = input("Seed (leave blank for random seed): ")
    if seed == "":
        random.seed(None)
    else:
        random.seed(seed)
else:
    seed = str(random.randint(1, 1000000))

foldername =  seed + "-ff5careerday-" + str(math.floor(time.time()))


print("=================================")
print("Intializing Career Day Patcher...")
print("=================================\n")

path_to_rom = easygui.fileopenbox("Select an FF5 rom")

os.mkdir(foldername)

OUTPUT_PATH = os.path.join(writedirectory, foldername)

local_path = os.path.join(OUTPUT_PATH, "ffv-careerday.sfc")

if path_to_rom == "" or path_to_rom == None:
    input("No rom selected, press enter to exit...")
    sys.exit()

global original

reheader = False
unheader = False
rpge = False

headered_j = 2097664
unheadered_j = 2097152
headered_u = 2621952
unheadered_u = 2621440

fake_header = bytearray.fromhex('''0001 0080 0000 0000 aabb 0400 0000 0000
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

def add_header(byte_list):
    return fake_header + byte_list

def failure(exception, spoilerfile=None, patchfile=None):
    print("Error ocurred. Input ROM untouched. Press enter to exit...")
    os.remove(local_path)
    if spoilerfile is not None:
        os.remove(spoilerfile)
    if patchfile is not None:
        os.remove(patchfile)
    os.rmdir(foldername)
    input()
    sys.exit()

with open(path_to_rom, "rb") as file:
    data = bytearray(file.read())
    original = copy.deepcopy(data)

open(local_path, 'a').close()

with open(local_path, "r+b") as file:
    file.write(original)

if len(data) == unheadered_j:
    print("Detected unheadered, untranslated rom")
    unheader = True
    reheader = True
    rpge = True
if len(data) == headered_j:
    print("Detected headered, untranslated rom")
    unheader = True
    reheader = False
    rpge = True
if len(data) == unheadered_u:
    print("Detected unheadered, translated rom")
    unheader = False
    reheader = False
    rpge = False
if len(data) == headered_u:
    print("Detected headered, translated rom")
    unheader = True
    reheader = False
    rpge = False

if reheader:
    print("Reheadering rom for RPGe patch application")
    with open(local_path, "r+b") as file:
        data = bytearray(file.read())
        data = add_header(data)
        file.seek(0)
        file.write(data)
    print("Rom reheadered")

try:
    if rpge:
        print("Applying RPGe Translation")
        ips.apply(RPGE_PATH, local_path)
        print("RPGe Translation applied successfully")
except FileNotFoundError as e:
    print("Error applying RPGe Translation Patch")
    print("RPGe Patch Missing. Verify rpge.ips file exists in patches directory")
except Exception as e:
    print("Error applying RPGe Translation Patch")
    print("Unknown exception...")
    failure(e)

if unheader:
    print("Removing header for Project Demi path application")
    with open(local_path, "r+b") as file:
        data = bytearray(file.read())
        data = data[512:]
        file.seek(0)
        file.write(data)
    print("Header removed")

if rand:
    print("just checkin")
    main_path = MAIN_RANDO_PATH
else:
    main_path = MAIN_PATH

try:
    print("Applying main Project Demi patch")
    ips.apply(main_path, local_path)
    print("Main Project Demi Patch applied successfully")
except FileNotFoundError as e:
    print("Error applying Main Project Demi Patch")
    print("RPGe Patch Missing. Verify ffv_project_demi_main.ips file exists in patches directory")
    failure(e)
except Exception as e:
    print("Error applying Main Project Demi Patch")
    print("Unknown exception...")
    failure(e)

while True:
    x2 = input("Do you want to install the 2x EXP/ABP mod? (y/n) ")
    x2 = x2.lower()
    if x2 == 'y' or x2 == 'n':
        break

if x2 == 'y':
    try:
        print("Applying 2x Exp/ABP mod")
        ips.apply(X2_EXP_PATH, local_path)
        print("Applied 2x Exp/ABP mod successfully")
        print("Since you installed the 2x mod, skipping the 4x mod")
        skip4x = True
    except FileNotFoundError as e:
        print("Error applying 2x Exp/ABP mod")
        print("RPGe Patch Missing. Verify ffv_project_demi_expabp2.ips file exists in patches directory")
        failure(e)
    except Exception as e:
        print("Error applying 2x Exp/ABP mod")
        print("Unknown exception...")
        failure(e)
    
if x2 == 'n':
    skip4x = False

if not skip4x:
    while True:
        x4 = input("Do you want to install the 4x EXP/ABP mod? (y/n) ")
        x4 = x4.lower()
        if x4 == 'y' or x4 == 'n':
            break
    
    if x4 == 'y':
        try:
            print("Applying 4x Exp/ABP mod")
            ips.apply(X4_EXP_PATH, local_path)
            print("Applied 4x Exp/ABP mod successfully")
        except FileNotFoundError as e:
            print("Error applying 4x Exp/ABP mod")
            print("RPGe Patch Missing. Verify ffv_project_demi_expabp4.ips file exists in patches directory")
            failure(e)
        except Exception as e:
            print("Error applying 4x Exp/ABP mod")
            print("Unknown exception...")
            failure(e)

while True:
    bxp = input("Do you want to install the Boss Curve EXP mod? (y/n) ")
    bxp = bxp.lower()
    if bxp == 'y' or bxp == 'n':
        break

if bxp == 'y':
    try:
        print("Applying Boss Curve Exp mod")
        ips.apply(BOSS_EXP_PATH, local_path)
        print("Applied Boss Curve Exp mod successfully")
    except FileNotFoundError as e:
        print("Error applying Boss Curve Exp mod")
        print("RPGe Patch Missing. Verify ffv_project_demi_boss.ips file exists in patches directory")
        failure(e)
    except Exception as e:
        print("Error applying Boss Curve Exp mod")
        print("Unknown exception...")
        failure(e)

print("Project Demi Patching Complete!\n")

if rand:
    print("==========================")
    print("Randomizer patching start!")
    print("==========================\n")

    if getattr(sys, 'frozen', False):
        os.chdir(sys._MEIPASS)

    C = Conductor(random)
    spoilerandpatch = C.randomize()

    os.chdir(writedirectory)

    spoilerfile = os.path.join(OUTPUT_PATH, str(seed) + "-spoiler.txt")
    patchfile = os.path.join(OUTPUT_PATH, str(seed) + "-patch.asm")

    with open(spoilerfile, "w+") as f:
        f.write(spoilerandpatch[0])

    with open(patchfile, "w+") as f:
        f.write("hirom\n")
        f.write(spoilerandpatch[1])

    command = ASAR_PATH + " --no-title-check " + patchfile + " " + local_path
    output = subprocess.run(command)

    if output.returncode == 0:
        os.rename(local_path, os.path.join(OUTPUT_PATH, seed +"-ff5careerday.sfc"))
        print("Complete! Press enter to exit")
        input()
        sys.exit()
    else:
        input()
        print(output.stdout)
        print("Error while patching! ")
        failure(Exception(), spoilerfile, patchfile)

else:
    print("Complete! Press enter to exit")
    input()
    sys.exit()
