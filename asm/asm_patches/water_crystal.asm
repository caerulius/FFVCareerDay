hirom
!base = $C00000

; Walse Meteor Event
org $C870C9

db $D0, $81, $20			;(Music) 81 20
db $01						;Player Move Up
db $F3, $08, $02, $10		;Set Map Tiles 08 02 10
db $8C, $9C					;Sprite 08C do event: 9C
db $73						;Long pause
db $B4, $0F					;Play Background Music Deception
db $73						;Long pause
db $B5, $59					;Play Sound Effect Specialty (monster)
db $84, $01					;Sprite 084 do event: Move Up
db $85, $0A					;Sprite 085 do event: Hide
db $84, $03					;Sprite 084 do event: Move Down
db $84, $03					;Sprite 084 do event: Move Down
db $84, $0A					;Sprite 084 do event: Hide
db $BD, $06, $FF			;Start Event Battle 06
;db $B9, $67				;Toggle Subtracitve Tint by 67
db $01						;Player Move Up
db $01						;Player Move Up
db $75						;Extremely long pause
db $75						;Wait a bit
db $CE, $04, $03			;Play next 03 bytes 04 times
db $CD, $66, $03			;Run event index 0366
db $D3, $90, $30, $30		;Sprite 90 set map position 30, 30
db $D3, $91, $30, $30		;Sprite 91 set map position 30, 30
db $D3, $92, $30, $30		;Sprite 92 set map position 30, 30
db $D3, $93, $30, $30		;Sprite 93 set map position 30, 30
db $87, $0A					;Sprite 087 do event: Hide
db $88, $0A					;Sprite 088 do event: Hide
db $B2, $01					;Pause for 01 cycles
db $C1, $02					;<Unknown>
db $D9, $0A, $04, $B5		;Unknown
db $81, $BF					;Sprite 081 do event: BF
db $B9, $78					;Toggle Subtracitve Tint by 78
db $C1, $00					;<Unknown>
db $CD, $8D, $03			;Run event index 038D
db $87, $0A					;Sprite 087 do event: Hide
db $88, $0A					;Sprite 088 do event: Hide

db $FF						;End event

padbyte $00
pad $C87299