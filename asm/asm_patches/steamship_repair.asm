hirom
!base = $C00000

; Mid and Cid getting the steamship running and all of Galuf's memories
org $C97A5A

db $02							;Player move right
db $02							;Player move right
db $C4, $0C						;Fade out Speed 0C
db $CA, $77, $01				;Set Flag 2/3/4/5/77 01
db $CA, $78, $01				;Set Flag 2/3/4/5/78 01
db $CA, $79, $01				;Set Flag 2/3/4/5/79 01
db $A2, $37						;Set Event Flag 037
db $E1, $9C, $00, $8C, $11, $00	;Return from cutscene? 9C 00 8C 11 00
db $CD, $B9, $01				;Run event index 01B9
db $CD, $7F, $05				;Run event index 057F
db $C3, $0C						;Fade in Speed 04
db $CC, $0F                  ;Custom destination flag 0F
db $FF							;End Event

padbyte $00
pad $C97DB5