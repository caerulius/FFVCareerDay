import random
import argparse
import urllib.request
import os
import sys
import subprocess

import chest_data
import shop_data

parser = argparse.ArgumentParser("careerday")
parser.add_argument("--seed", metavar="s", default="", help="An up to 8 character seed for the random engine (leave blank for random)", type=str)
#parser.add_argument("--path", metavar="p", default="", help="Path to an unpatched rom (leave blank to download a fresh copy)", type=str)

args = parser.parse_args()

if args.seed == "":
    args.seed = random.randint(10000000, 99999999)
elif len(args.seed) > 8:
    args.seed = args.seed[0:8]

directory = "Career Day-" + str(args.seed)
os.mkdir(directory)

#if args.path == "":
urllib.request.urlretrieve("http://polywhack.com/ffv.sfc", directory + "/ffv.sfc")

log = ""
patch = "hirom\n"

all_checks = chest_data.randomize(args.seed)
all_shops = shop_data.randomize(args.seed)

for check in all_checks:
    log += check.output_short + "\n"
    patch += check.asar_output + "\n"

for shop in all_shops:
    #log += shop.asar_output + "\n"
    patch += shop.asar_output + "\n"

with open(directory + "/spoilerlog.txt", "w+", encoding="utf-8") as file:
    file.write(log)

with open(directory + "/patch.asm", "w+", encoding="utf-8") as file:
    file.write(patch)

subprocess.run(['asar/asar.exe', '--fix-checksum=off', "../asm/asm_patches/all_patches.asm", \
                 directory + "/ffv.sfc"])

subprocess.run(['asar/asar.exe', '--fix-checksum=off', directory + "/patch.asm", \
                 directory + "/ffv.sfc"])

print("Success")
