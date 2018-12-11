hirom
!base = $C00000

; Guard outside of tycoon (simply disables messages)
org $C91BC6

db $CD, $AE, $02	;Run event index 02AE
db $FF				;End Event

padbyte $00
pad $C91BCD

; Chancellor and faris/lenna balcony conversation
org $C8739B

db $CA, $09, $01		;Set Flag 2/3/4/5/09 01
db $CB, $06, $01		;Clear Flag 2/3/4/5/06 01
db $CB, $07, $01		;Clear Flag 2/3/4/5/07 01
db $CB, $08, $01		;Clear Flag 2/3/4/5/08 01
db $CB, $01, $01		;Clear Flag 2/3/4/5/01 01
db $CA, $0A, $01		;Set Flag 2/3/4/5/0A 01
db $CB, $09, $01		;Clear Flag 2/3/4/5/09 01
db $A5, $FE				;Clear Event Flag 1FE
db $A2, $2B				;Set Event Flag 02B
db $FF					;End Event
	
padbyte $00
pad $C874DD