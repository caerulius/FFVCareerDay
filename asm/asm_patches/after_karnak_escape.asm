hirom
!base = $C00000

; Cutscene and job acquisition after Karnak
org $C87F79

db $7C							;<Unknown>
db $E1, $A3, $00, $21, $08, $00	;Return from cutscene? A3 00 21 08 00
db $BE, $00						;Rumble effect of 00 magnitude
db $D9, $0A, $03, $70			;Unknown (im guessing this stops the timer)
db $B1, $02						;Set Player Sprite 02
db $09							;Player Show
db $23							;Sprite 080 do event: face down, right hand raised out
db $B4, $08						;Play Background Music The Prelude
db $85, $09						;Sprite 085 do event: Show
db $86, $09						;Sprite 086 do event: Show
db $87, $09						;Sprite 087 do event: Show
db $C5, $80, $C8				;<unknown>
db $6C							;Player or Sprite Pose
db $08							;<Unknown>
db $C8, $73, $02				;Display Message/Text/Dialogue 73 02
db $85, $02						;Sprite 085 do event: Move Right
db $85, $0A						;Sprite 085 do event: Hide
db $C5, $80, $C8				;<unknown>
db $6C							;Player or Sprite Pose
db $08							;<Unknown>
db $C8, $74, $02				;Display Message/Text/Dialogue 74 02
db $86, $03						;Sprite 086 do event: Move Down
db $86, $0A						;Sprite 086 do event: Hide
db $C5, $80, $C8				;<unknown>
db $6C							;Player or Sprite Pose
db $08							;<Unknown>
db $C8, $75, $02				;Display Message/Text/Dialogue 75 02
db $87, $04						;Sprite 087 do event: Move Left
db $87, $0A						;Sprite 087 do event: Hide
db $73							;Medium pause
db $C6, $08						;Add job Mystic Knight
db $C6, $03						;Add job Dragoon
db $C6, $16						;Add job 16
db $C6, $08						;Add job Mystic Knight
db $C6, $03						;Add job Dragoon
db $C6, $16						;Add job 16
db $A4, $E4						;Set Event Flag 1E4
db $A4, $19						;Set Event Flag 119
db $CB, $81, $01				;Clear Flag 2/3/4/5/81 01
db $CA, $9D, $02				;Set Flag 2/3/4/5/9D 02
db $E3, $00, $00, $53, $4E, $00	;Inter-map cutscene? 00 00 53 4E 00
db $DB							;Restore Player status
db $B4, $23						;Play Background Music Four Valiant Hearts
db $C3, $0C						;Fade in Speed 0C

db $FF							;End event

padbyte $00
pad $C880B5