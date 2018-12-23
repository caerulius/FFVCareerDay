hirom

org $C9BD29

db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $C8, $52, $04                ;Display Message/Text/Dialogue 52 04
	db $AA, $95                     ;Add Item Ribbon
else
	db $DE, $27				; set up reward
	db $DF					; call text handler
endif
db $39                          ;Player pose: face down, both arms raised
db $E4, $C9                     ;Unknown
db $48                          ;Player pose: garbage
db $0F                          ;<Unknown>
db $14                          ;Player pose: face down, left hand forward
db $A4, $6B                     ;Turn on bit 08 at address 0x7e0a41
db $FF                          ;End Event

pad $C9BD38