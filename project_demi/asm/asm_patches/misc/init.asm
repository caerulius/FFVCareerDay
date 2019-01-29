hirom


; this code standardizes the romfile to be 4MB 
org $FF0000
padbyte $00
pad $FFFFFF
org $FFFFFF
db $00