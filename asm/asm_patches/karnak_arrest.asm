hirom
!base = $C00000

; Arrest to Cid blowing up the wall (this actually combines two events into one)
org $C87514

db $A1, $3E			;Run Shop Karnak Weapon (pre arrest)
db $CD, $63, $07	;Run event index 0763
db $75
db $7C				;<Unknown>
db $83, $10			;Sprite 083 do event: face up, left hand forward
db $83, $03			;Sprite 083 do event: Move Down
db $83, $03			;Sprite 083 do event: Move Down
db $83, $03			;Sprite 083 do event: Move Down
db $83, $02			;Sprite 083 do event: Move Right
db $BE, $05			;Rumble effect of 05 magnitude
db $71				;Short pause
db $C5, $E0, $71		;<unknown>
db $B5, $56			;Play Sound Effect Exploder
db $CD, $73, $07		;Run event index 0773
db $F3, $12, $36, $20		;Set Map Tiles 12 36 20
db $74				;Very long pause
db $74				;Very long pause
db $51			;Player or Sprite Pose
db $74				;Very long pause
db $BE, $00			;Rumble effect of 00 magnitude
db $83, $11			;Sprite 083 do event: face up, right hand forward
db $FF				;End Event
db $ff

padbyte $00
pad $C87566