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
db $DE, $02 ; action
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
org $D8E769
db $FB, $19