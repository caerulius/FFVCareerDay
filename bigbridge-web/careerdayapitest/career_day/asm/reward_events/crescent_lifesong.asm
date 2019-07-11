hirom

org $C92010

db $C8, $14, $03                ;Display Message/Text/Dialogue 14 03
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $DE, $17				; set up reward
db $DF					; call text handler
db $E4, $B4                     ;Unknown
db $05                          ;Player Bounce in Place
db $A2, $D0                     ;Turn on bit 01 at address 0x7e0a2e
db $FF                          ;End Event

pad $C9201F