hirom


; admantoise fight
org $C85F9B

db $B9, $63							;Toggle Subtracitve Tint by 63
db $BE, $05							;Rumble effect of 05 magnitude
db $72								;Short pause
db $C5, $80							;<unknown>
db $BE, $00							;Rumble effect of 00 magnitude
db $BD, $0B, $FF					;Start Event Battle 0B
db $C5, $80
db $B5, $02
db $71
db $DE, $69 ; custom reward
db $DF
db $A2, $48							;Set Event Flag 048

; CAREERDAY
; This is setting automatically upgrading the ship
db $A2, $4A							;Set Event Flag 04A
db $A4, $FA							;Set Event Flag 1FA


db $CC, $14                 		;Custom destination flag 14
db $FF								;End event

padbyte $00
pad $C85FC9