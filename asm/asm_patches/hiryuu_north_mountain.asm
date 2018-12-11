hirom
!base = $C00000

; Saving Hiryuu on the North Mountain
org $C86D34

db $BA, $01, $FB				;Clear Character Lenna Curable status to FB
db $85, $0A						;Sprite 085 do event: Hide
db $01                  		;Player move up
db $01                  		;Player move up
db $01                  		;Player move up
db $01                  		;Player move up
db $04							;Player move left
db $01                  		;Player move up
db $2C							;Player do pose: face right, right hand raised
db $73							;Pause for a short while
db $05							;Player Bounce Slow
db $02							;Player Move Right
db $0A							;Player Hide
db $80, $0C						;Sprite 080 do event: 0C
db $80, $0B						;Sprite 080 do event: 0B
db $80, $67						;Sprite 080 do event: 67
db $B4, $1D						;Play Background Music The Dragon Spreads its Wings
db $CD, $8C, $03				;Run event index 038C
db $CF, $07, $04				;Play next 04 bytes simultaneously 07 times
db $82, $01						;Sprite 082 do event: Move Up
db $80, $01						;Sprite 080 do event: Move Up
db $DB							;Restore Player status
db $E1, $00, $00, $E2, $27, $6C	;Return from cutscene? 00 00 E2 27 6C
db $09							;Player Show
db $14							;Player pose: face down, left hand forward
db $C3, $10						;Fade in Speed 10
db $70							;Very short pause
db $7B							;*YOU DIDNT MEAN TO USE THIS*
db $A2, $24						;Set Event Flag 024
db $CB, $97, $00				;Clear Flag 2/3/4/5/97 00
db $CB, $99, $00				;Clear Flag 2/3/4/5/99 00
db $CA, $88, $00				;Set Flag 2/3/4/5/88 00
db $CA, $83, $00				;Set Flag 2/3/4/5/83 00
db $CC, $07                  ;Custom destination flag 07
db $FF							;End Event

padbyte $00
pad $C86F12