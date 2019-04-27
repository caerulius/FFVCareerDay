hirom

org $C95EF6

db $B5, $68						;Play Sound Effect Find item
if !vanillarewards == 1
	db $C8, $E9, $02			;Display Message/Text/Dialogue E9 02
	db $AA, $4D					;Add Item Thunder Whip
else
	db $DE, $46					; set up reward
	db $DF						; call text handler
endif
db $C8, $4C, $08				;Display Message/Text/Dialogue 4C 08
db $AA, $12						;Add Item Epee
db $A4, $98						;Turn on bit 01 at address 0x7e0a47
db $FF							;End Event