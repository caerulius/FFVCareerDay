hirom
!base = $C00000

; MAgisa on the North Mountain
org $C86A58

db $86, $0A				;Sprite 086 do event: Hide
db $84, $09				;Sprite 084 do event: Show
db $CF, $0e, $01        ;Play the next 03 bytes simultaneously 07 times
db $04                  ;Player move Left
db $BB, $01, $04		;Set Character Lenna  Curable status to Poison
db $73
db $84, $0A				;Sprite 084 do event: Hide
db $BD, $04, $FF		;Start Event Battle 04
db $DB					;Restore Player status
if !vanillarewards == 1
	db $AA, $8C				;Add Item Mythril Helmet
else
	db $DE, $25				; set up reward
	db $DF					; call text handler
endif
db $CB, $98, $00		;Clear Flag 2/3/4/5/98 00
db $A2, $23				;Set Event Flag 023
db $FF 					;End Event

padbyte $00
pad $C86D33 