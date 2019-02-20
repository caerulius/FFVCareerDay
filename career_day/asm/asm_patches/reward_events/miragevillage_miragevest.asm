hirom

org $C9F733

if !vanillarewards == 1
	db $C8, $59, $08                ;Display Message/Text/Dialogue 59 08
	db $AA, $AE                     ;Add Item Mirage Vest
else
	db $DE, $28				; set up reward
	db $DF					; call text handler
endif
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $39                          ;Player pose: face down, both arms raised
db $E4, $C9                     ;Unknown
db $48                          ;Player pose: garbage
db $0F                          ;<Unknown>
db $A4, $95                     ;Turn on bit 20 at address 0x7e0a46
db $FF                          ;End Event

pad $C9F741