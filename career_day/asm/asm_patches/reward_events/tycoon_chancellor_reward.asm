hirom

org $C874DE
db $B1, $03                     ;Set Player Sprite 03
if !vanillarewards == 1
	db $C8, $1E, $82                ;Display Message/Text/Dialogue 1E 82
	db $AA, $3B                     ;Add Item Healing Staff
else
	db $DE, $24				; set up reward
	db $DF					; call text handler
endif
db $80, $02                     ;Sprite 080 do event: Move Right
db $CE, $06, $02                ;Play next 02 bytes 06 times
db $80, $03                     ;Sprite 080 do event: Move Down
db $80, $0A                     ;Sprite 080 do event: Hide
db $CB, $3E, $01                ;Turn off bit 40 at address  0x7e0a7b
db $CA, $40, $01                ;Turn on bit 01 at address  0x7e0a7c
db $A2, $2C                     ;Turn on bit 10 at address 0x7e0a19
db $FF                          ;End Event
pad $C874F6