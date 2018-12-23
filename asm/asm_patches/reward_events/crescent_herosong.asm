hirom

org $C91FDD

db $A0, $02                     ;(Message) 02
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $A0, $04                     ;(Message) 04	
	db $AC, $5B                     ;Add Magic Hero Song
else
	db $DE, $1E				; set up reward
	db $DF					; call text handler
endif
db $E4, $B4                     ;Unknown
db $05                          ;Player Bounce in Place
db $A2, $CE                     ;Turn on bit 40 at address 0x7e0a2d
db $FF                          ;End Event

pad $C91FEA