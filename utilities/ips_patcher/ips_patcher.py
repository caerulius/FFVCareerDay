# -*- coding: utf-8 -*-

# For use on CT's machine for now

import ips
import os
import shutil

base_dir = os.getcwd()

os.chdir('../../../../../ROM')

ips.createPatch('ffv.sfc','ffv_hacks.sfc','ffv_project_demi_main.ips')
