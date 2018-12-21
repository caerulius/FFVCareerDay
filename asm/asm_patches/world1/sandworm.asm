hirom
!base = $C00000

; sandworm fight
org $C88E5A

db $D8, $83, $09, $D8			;Unknown
db $84, $09						;Sprite 084 do event: Show
db $83, $10						;Sprite 083 do event: face up, left hand forward
db $84, $10						;Sprite 084 do event: face up, left hand forward
db $83, $09						;Sprite 083 do event: Show
db $84, $09						;Sprite 084 do event: Show
db $83, $03						;Sprite 083 do event: Move Down
db $CF, $02, $04				;Play next 04 bytes simultaneously 02 times
db $84, $03						;Sprite 084 do event: Move Down
db $83, $03						;Sprite 083 do event: Move Down
db $C7, $04						;Play next 04 bytes simultaneously
db $84, $03						;Sprite 084 do event: Move Down
db $83, $02						;Sprite 083 do event: Move Right
db $83, $24						;Sprite 083 do event: face down, right hand raised in
db $C7, $04						;Play next 04 bytes simultaneously
db $83, $02						;Sprite 083 do event: Move Right
db $84, $04						;Sprite 084 do event: Move Left
db $84, $04						;Sprite 084 do event: Move Left
db $CF, $04, $04				;Play next 04 bytes simultaneously 04 times
db $83, $03						;Sprite 083 do event: move down
db $84, $03						;Sprite 084 do event: move down
db $CB, $7A, $01				;Clear Flag 2/3/4/5/7A 01
db $CB, $7B, $01				;Clear Flag 2/3/4/5/7B 01
db $CA, $CB, $00				;Set Flag 2/3/4/5/CB 00
db $CA, $CC, $00				;Set Flag 2/3/4/5/CC 00
db $83, $26						;Sprite 083 do event: face up, right hand raised out
db $84, $22						;Sprite 084 do event: face down, left hand on head
db $83, $11						;Sprite 083 do event: face up, right hand forward
db $84, $11						;Sprite 084 do event: face up, right hand forward
db $72							;Shortish pause
db $A2, $3E						;Set Event Flag 03E
db $F3, $37, $11, $01, $CC, $CD	;Set Map Tiles 37 11 01 CC CD
db $F3, $77, $11, $01, $CC, $CD	;Set Map Tiles 77 11 01 CC CD
db $F3, $34, $10, $03, $CC, $AD	;Set Map Tiles 34 10 03 CC AD
db $AD, $AE						;Run Inn AE
db $F3, $77, $10, $00, $AE, $B2	;Set Map Tiles 77 10 00 AE B2
db $03							;Player Move Down
db $F3, $76, $10, $00, $AD, $B2	;Set Map Tiles 76 10 00 AD B2
db $03							;Player Move Down
db $F3, $75, $10, $00, $AD, $B2	;Set Map Tiles 75 10 00 AD B2
db $03							;Player Move Down
db $F3, $74, $10, $00, $CC, $B2	;Set Map Tiles 74 10 00 CC B2
db $03							;Player Move Down
db $F3, $34, $0E, $11, $AC, $AE	;Set Map Tiles 34 0E 11 AC AE
db $BC, $E3						;
db $BD, $0A, $FF				;Start Event Battle 0A
db $FF							;End Event

padbyte $00
pad $C88F07 