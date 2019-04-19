hirom


; overwrite pyramid quicksand discovery cutscene 
; corresponds to LDX #$003A, refer to UseableItemEE, which results in this cutscene 
org $C88F0C
db $C5, $80                     ;<unknown>
db $B5, $02                     ;Play Sound Effect Void, Image
db $72
db $C4, $02
db $75
db $E1, $FE, $01, $03, $13, $00 ;Return from cutscene? 00 00 9C 96 00
db $71

; this disables all timer related events 
db $CB, $38, $05
db $CB, $39, $05
db $CB, $3a, $05
db $CB, $3b, $05
db $CB, $3c, $05
db $CB, $3d, $05
db $CB, $3e, $05
db $CB, $3f, $05

; reset submarine bit each time
db $A3, $C7            ; set address 000A2C bit OFF 80
; db $A3, $C6            ; set address 000A2C bit OFF 40 (used elsewhere)
db $A3, $C5            ; set address 000A2C bit OFF 20
db $A3, $C4            ; set address 000A2C bit OFF 10
db $A3, $C3            ; set address 000A2C bit OFF 08
db $A3, $C2            ; set address 000A2C bit OFF 04
db $A3, $C1            ; set address 000A2C bit OFF 02
db $A3, $C0            ; set address 000A2C bit OFF 01

; restore player status for SAFETY
db $DB

db $C3, $03
db $74
db $FF
pad $C88F86


; rewrite npc locations and data
; these stars will functionally serve as warppoints


; NPC 1
org $CE9AD8
db $D9, $02 ; action 
org $CE9ADB
db $00, $10 ; x/y

; NPC 2
org $CE9ADF
db $D8, $02 ; action
org $CE9AE2
db $03, $10 ; x/y

; NPC 3
org $CE9B02
db $DA, $02 ; action
org $CE9B04
db $1B ; change sprite
org $CE9B05
db $06, $10 ; x/y
org $CE9B07
db $3F, $1B ; walk cycle properties

; changes trigger from pyramid cutscene 
; dont make warpshard need any bits
org $F046E9
db $ff, $8a, $00, $00, $00

; leftmost book in surgate library. These are the events only, tied to what the warps do
org $CE1DA9
db $FF, $E9, $02 ; triggers always
db $FF, $00, $00, $F0, $4A, $05 ;unsure, keeping consistent with original
org $CE1DB6
db $FF, $EA, $02 ; triggers always
db $FF, $00, $00
db $FF, $EA, $02, $F0, $4A, $05 ;unsure, keeping consistent with original
org $CE1DC6
db $FF, $EB, $02 ; triggers always
db $FF, $00, $00
db $FF, $EB, $02, $F0, $4A, $05 ;unsure, keeping consistent with original
; librarian always gives access
org $CE1DEE
db $FF, $A4, $03 ; triggers always
db $FF, $00, $00
db $FF, $A4, $03


; finally disable books entirely
org $CE8A7E
pad $CE8AA1