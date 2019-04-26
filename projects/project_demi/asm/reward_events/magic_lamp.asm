hirom

org $C9F760

db $C5, $E0					;<unknown>
db $70						;Very short pause
db $B4, $29					;Play Background Music Fanfare 1 (short)
db $C8, $49, $08			;Display Message/Text/Dialogue 49 08
db $E4, $C9					;Unknown
db $48						;Player pose: garbage
db $0F						;<Unknown>
if !vanillarewards == 1
	db $C8, $A7, $04		;Display Message/Text/Dialogue A7 04
	db $AA, $EF				;Add Item Magic Lamp
else
	db $DE, $48 			; set up reward
	db $DF					; call text handler
endif 
db $A4, $96					;Turn on bit 40 at address 0x7e0a46
db $FF						;End Event