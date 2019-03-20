hirom

org $C92010

db $C8, $14, $03                ;Display Message/Text/Dialogue 14 03
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $C8, $15, $03                ;Display Message/Text/Dialogue 15 03
	db $AC, $59                     ;Add Magic Vitality Song
else
	db $DE, $17				; set up reward
	db $DF					; call text handler
endif
db $E4, $B4                     ;Unknown
db $05                          ;Player Bounce in Place
db $A2, $D0                     ;Turn on bit 01 at address 0x7e0a2e
db $FF                          ;End Event

pad $C9201F