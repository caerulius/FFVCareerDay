hirom
!base = $C00000

; Cutscene at first door in sand area
; This is going to be used as the main trigger for setting most cutscenes watched flags
; If space is ran out, use 
; db $CD, $3A, $05                ;Run event index 053A
; at address 


org $C9E728

; first door cutscene flag
db $A4, $7A                     ;Set Event Flag 17A
; final Exdeath cutscene 
db $A5, $FE                     ;Clear Event Flag 1FE
db $A4, $9F                     ;Set Event Flag 19F
db $CB, $97, $03                ;Clear Flag 2/3/4/5/97 03

db $FF                          ;End Event

padbyte $00
pad $C9E755






; Part of the original cutscene where the minions show up & fade out. Free space now

org $C99E10

padbyte $00
pad $C99E39


; clear out Exdeath's final cutscene, lots of space
org $C9DCCE

db $FF

pad $C9E727