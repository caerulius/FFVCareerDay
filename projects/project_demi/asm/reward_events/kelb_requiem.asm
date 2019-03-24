hirom
org $C9256F

db $C8, $D7, $04                ;Display Message/Text/Dialogue D7 04
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $C8, $D8, $04                ;Display Message/Text/Dialogue D8 04
	db $E4							; ...?
	db $AC, $5C                     ;Add Magic Requiem
else
	db $DE, $1A				; set up reward
	db $DF					; call text handler
endif
db $A2, $D1                     ;Turn on bit 02 at address 0x7e0a2e
db $B4, $21                     ;Play Background Music Harvest
db $FF                          ;End Event

pad $C257E