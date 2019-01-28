hirom

org $C99515

db $C8, $02, $06                ;Display Message/Text/Dialogue 02 06
db $71                          ;Short pause
db $C5, $20                     ;<unknown>
db $C5, $20                     ;<unknown>
db $C5, $20                     ;<unknown>
db $80, $0A                     ;Sprite 080 do event: Hide
db $BD, $22, $FF                ;Start Event Battle 22
db $71                          ;Short pause
db $C5, $20                     ;<unknown>
db $71                          ;Short pause
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $C8, $03, $06                ;Display Message/Text/Dialogue 03 06 		; <---reward--->
	db $AC, $51                     ;Add Magic Crbnkl 		; <---reward--->
else
	db $DE, $12				; set up reward
	db $DF					; call text handler
endif
db $E4, $C9                     ;Unknown
db $48                          ;Player pose: garbage
db $0F                          ;<Unknown>
db $CB, $87, $01                ;Turn off bit 80 at address  0x7e0a84
db $FF                          ;End Event

pad $C99536