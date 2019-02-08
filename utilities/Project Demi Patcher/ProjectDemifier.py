import ips
import easygui
import os
import codecs
import binascii
import sys
import copy

print("===================================")
print("Intializing Project Demi Patcher...")
print("===================================\n")

path_to_rom = easygui.fileopenbox("Select an FF5 rom")

if path_to_rom == "" or path_to_rom == None:
    input("No rom selected, press any button to close...")
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

def failure(exception):
    print("Error ocurred. Restoring original rom. Press any key to exit...")
    os.remove(path_to_rom)
    with open(path_to_rom, "w+b") as file:
        file.write(original)
    input()
    sys.exit()

with open(path_to_rom, "rb") as file:
    data = bytearray(file.read())
    original = copy.deepcopy(data)

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
    with open(path_to_rom, "r+b") as file:
        data = bytearray(file.read())
        data = add_header(data)
        file.seek(0)
        file.write(data)
    print("Rom reheadered")

try:
    if rpge:
        print("Applying RPGe Translation")
        ips.apply("patches/rpge.ips", path_to_rom)
        print("RPGe Translation applied successfully")
except FileNotFoundError as e:
    print("Error applying RPGe Translation Patch")
    print("RPGe Patch Missing. Verify rpge.ips file exists in patches directory")
except Exception as e:
    print("Error applying RPGe Translation Patch")
    print("Unknown exception...")

if unheader:
    print("Removing header for Project Demi path application")
    with open(path_to_rom, "r+b") as file:
        data = bytearray(file.read())
        data = data[512:]
        file.seek(0)
        file.write(data)
    print("Header removed")
    
try:
    print("Applying main Project Demi patch")
    ips.apply("patches/ffv_project_demi_main.ips", path_to_rom)
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
        ips.apply("patches/ffv_project_demi_expabp2.ips", path_to_rom)
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
            ips.apply("patches/ffv_project_demi_expabp4.ips", path_to_rom)
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
        ips.apply("patches/ffv_project_demi_boss.ips", path_to_rom)
        print("Applied Boss Curve Exp mod successfully")
    except FileNotFoundError as e:
        print("Error applying Boss Curve Exp mod")
        print("RPGe Patch Missing. Verify ffv_project_demi_boss.ips file exists in patches directory")
        failure(e)
    except Exception as e:
        print("Error applying Boss Curve Exp mod")
        print("Unknown exception...")
        failure(e)
            
print("Complete! Press any key to exit")
input()
sys.exit()
