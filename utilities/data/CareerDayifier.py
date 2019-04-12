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

HEADERED_J = 2097664
UNHEADERED_J = 2097152
HEADERED_U = 2621952
UNHEADERED_U = 2621440

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

if getattr(sys, 'frozen', False):
    app_path = sys._MEIPASS
else:
    app_path = os.path.dirname(os.path.abspath(__file__))

RPGE_PATH = os.path.join(app_path, "patches/rpge.ips")
MAIN_PATH = os.path.join(app_path, "patches/ffv_projectdemi_vanilla.ips")
MAIN_RANDO_PATH = os.path.join(app_path, "patches/ffv_careerday.ips")
ASAR_PATH = os.path.join(app_path, "asar.exe")

WRITEDIRECTORY = os.getcwd()
os.chdir(app_path)

from conductor import *

os.chdir(WRITEDIRECTORY)

def create_career_day_seed(rompath, seed, options):
    rand = True #TODO: remove this, holdover from this serving basic project demi patching too

    foldername =  seed + "-ff5careerday-" + str(math.floor(time.time()))

    print("=================================")
    print("Intializing Career Day Patcher...")
    print("=================================\n")

    os.mkdir(foldername)

    OUTPUT_PATH = os.path.join(WRITEDIRECTORY, foldername)

    local_path = os.path.join(OUTPUT_PATH, "ffv-careerday.sfc")
    print(local_path)

    if rompath == "" or rompath == None:
        input("No rom selected, press enter to exit...")
        sys.exit()

    global original

    with open(rompath, "rb") as file:
        data = bytearray(file.read())
        original = copy.deepcopy(data)

    open(local_path, 'a').close()

    with open(local_path, "r+b") as file:
        file.write(original)


    reheader = False
    unheader = False
    rpge = False

    if len(data) == UNHEADERED_J:
        print("Detected unheadered, untranslated rom")
        unheader = True
        reheader = True
        rpge = True
    if len(data) == HEADERED_J:
        print("Detected headered, untranslated rom")
        unheader = True
        reheader = False
        rpge = True
    if len(data) == UNHEADERED_U:
        print("Detected unheadered, translated rom")
        unheader = False
        reheader = False
        rpge = False
    if len(data) == HEADERED_U:
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

    print("Career Day Prepatching Complete!\n")

    '''
    if options['xp'] == '2x':
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
        
    if options['xp'] == '4x':
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

    if options['bossxp'] == True:
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
    '''

    if rand:
        print("==========================")
        print("Career Day patching start!")
        print("==========================\n")

        if getattr(sys, 'frozen', False):
            os.chdir(sys._MEIPASS)

        C = Conductor(random)
        spoilerandpatch = C.randomize()

        os.chdir(WRITEDIRECTORY)

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
            print("Complete!")
            os.rename(local_path, os.path.join(OUTPUT_PATH, seed +"-ff5careerday.sfc"))
            return True, foldername
        else:
            input()
            print(output.stdout)
            print("Error while patching! ")
            failure(Exception(), spoilerfile, patchfile)

    else:
        print("Complete!")
        return True, foldername

def add_header(byte_list):
    return FAKE_HEADER + byte_list

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

create_career_day_seed("C:\\Users\\cae\\headers\\ffvh.smc", str(random.randint(0,1000000)), None)