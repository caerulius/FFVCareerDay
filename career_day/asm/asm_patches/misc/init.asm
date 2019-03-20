hirom


; this code standardizes the romfile to be 4MB 
org !ADDRESS_STARTROM
padbyte $00
pad !ADDRESS_ENDROM
org !ADDRESS_ENDROM
db $00