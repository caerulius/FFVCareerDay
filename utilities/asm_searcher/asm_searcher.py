import os

# DEFINE SEARCH TEXT HERE

SEARCH_TEXT = "db $BD"

with open ('log.txt','w') as f2:
    f2.write("")

for a, b, c in os.walk('../../project_demi/asm/asm_patches'):
    for i in c:
        with open(os.path.join(a,i),'r') as f:
            for line in f.readlines():
                if SEARCH_TEXT in line:
                    print(i)
                    print(line)
                    with open('log.txt','a') as f2:
                        f2.write(i)
                        f2.write("\n")
                        f2.write(line)
                        f2.write("\n")