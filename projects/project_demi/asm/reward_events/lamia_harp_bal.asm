hirom

org $C9524E

db $80, $02			;Sprite 080 do event: Move Right
db $A4, $17			;Turn on bit 80 at address 0x7e0a36
if !vanillarewards == 1
	db $C8, $A7, $04		;Display Message/Text/Dialogue A7 04
	db $AA, $49			;Add Item Lamia Harp
else
	db $DE, $45				; set up reward
	db $DF					; call text handler
endif
db $80, $04			;Sprite 080 do event: Move Left
db $80, $24			;Sprite 080 do event: face down hand out

db $FF				;End Event