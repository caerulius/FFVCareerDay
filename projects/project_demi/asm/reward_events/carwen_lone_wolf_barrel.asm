hirom

org $C927F2

db $B5, $68			;Play Sound Effect Find item
if !vanillarewards == 1
	db $C8, $14, $00	;Display Message/Text/Dialogue 14 00
	db $AA, $F1			;Add Item Cabin
else
	db $DE, $44			; set up reward
	db $DF					; call text handler
endif
db $A2, $85			;Turn on bit 20 at address 0x7e0a24
db $FF				;End Event

