hirom

; chicken knife/brave blade event


; choosing brave blade
org $C9210E

if !vanillarewards == 1
	db $C8, $19, $04				;Display Message/Text/Dialogue 19 04
	db $AA, $61						;Add Item Brave Blade
else
	db $DE, $3C						; set up reward
	db $DF							; call text handler
endif
db $CD, $47, $02					;Run event index 0247
db $FF								;End Event

padbyte $00
pad $C92116

; choosing chicken knife
org $C92117

if !vanillarewards == 1
	db $C8, $1A, $04				;Display Message/Text/Dialogue 1A 04
	db $AA, $63						;Add Item Chicken Knife
else
	db $DE, $3D						; set up reward
	db $DF							; call text handler
endif
db $CD, $47, $02					;Run event index 0247
db $FF								;End Event

padbyte $00
pad $C9211F

; after choosing either

org $C9218E

db $85, $0A			;Sprite 085 do event: Hide
db $86, $09			;Sprite 086 do event: Show
db $D0, $81, $8F		;(Music) 81 8F
db $86, $03			;Sprite 086 do event: Move Down
db $86, $0A			;Sprite 086 do event: Show
db $C5, $E0			;<unknown>
db $F3, $07, $36, $44, $95	;Set Map Tiles 07 36 44 95
db $95, $CB			;Sprite 195 do event: CB
db $95, $95			;Sprite 195 do event: 95
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $CB, $79, $79		;Turn off bit 02 at address  0x7e1443
db $95, $95			;Sprite 195 do event: 95
db $CB, $95, $95		;Turn off bit 20 at address  0x7e1646
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $95, $95			;Sprite 195 do event: 95
db $95, $95			;Sprite 195 do event: 95
db $95, $F3			;Sprite 195 do event: F3
db $47				;Player pose: face down, left hand up in
db $36				;Player pose: face down, eyes closed mouth open
db $44				;Player pose: face down, head lowered, left hand forward
db $95, $95			;Sprite 195 do event: 95
db $95, $95			;Sprite 195 do event: 95
db $95, $79			;Sprite 195 do event: 79
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $95, $95			;Sprite 195 do event: 95
db $95, $95			;Sprite 195 do event: 95
db $95, $79			;Sprite 195 do event: 79
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $79				;'The Crash Event'
db $95, $95			;Sprite 195 do event: 95
db $95, $95			;Sprite 195 do event: 95
db $95, $A2			;Sprite 195 do event: A2
db $01				;Player Move Up
db $FF				;End Event

padbyte $00
pad $C921F4