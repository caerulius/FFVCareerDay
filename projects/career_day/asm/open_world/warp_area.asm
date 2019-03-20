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

; org $CE9B02
; db $7f, $03, $43, $10, $0b, $0d, $60

; FIX THIS !!!!!!!!!!!!!!!!!
; org $D8E769
org $F046E9
db $FB, $19


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