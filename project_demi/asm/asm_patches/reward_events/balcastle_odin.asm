hirom



org $C92F58

db $7C                          ;<Unknown>
db $80, $0A                     ;Sprite 080 do event: Hide
db $B4, $29                     ;Play Background Music Fanfare 1 (short)

if !vanillarewards == 1
	db $C8, $F0, $02                ;Display Message/Text/Dialogue F0 02 		; <---reward--->
	db $AC, $53                     ;Add Magic Odin 		; <---reward--->
else
	db $DE, $14				; set up reward
	db $DF					; call text handler
endif

db $E4, $B4                     ;Unknown
db $06                          ;Player Bounce in Place
db $CB, $2F, $00                ;Turn off bit 80 at address  0x7e0a59
db $A5, $00                     ;Turn off bit 01 at address 0x7e0a34
db $A5, $01                     ;Turn off bit 02 at address 0x7e0a34
db $FF                          ;End Event

pad $C92F64