import os

# DEFINE SEARCH TEXT HERE

searchables = ["db $A2, ","db $A3, ","db $A4, ","db $A5, ", "db $A6, ", "db $A7, "]

with open ('log.txt','w') as f2:
    f2.write("")

for a, b, c in os.walk('../../project_demi/asm/asm_patches'):
    for i in c:
        with open(os.path.join(a,i),'r') as f:
            num = 1
            store_text = i + "\n"
            for line in f.readlines():
                for SEARCH_TEXT in searchables:
                    if SEARCH_TEXT in line:
                        num = num + 1
                        store_text = store_text + line
            if num > 1:
                with open('log.txt','a') as f2:
                    store_text = store_text + "\n"
                    f2.write(store_text)