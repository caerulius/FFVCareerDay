hirom

org $C92297

if !vanillarewards == 1
	db $C8, $16, $04                ;Display Message/Text/Dialogue 16 04
	db $AC, $5E                     ;Add Magic Charm Song
else
	db $DE, $18				; set up reward
	db $DF					; call text handler
endif
db $A2, $D3                     ;Turn on bit 08 at address 0x7e0a2e
db $FF                          ;End Event

pad $C9229E