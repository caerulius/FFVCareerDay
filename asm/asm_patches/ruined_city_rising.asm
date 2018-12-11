hirom
!base = $C00000

; going near the ruined city and the city flying into the air
org $C89B54

db $CD, $A4, $04				;Run event index 04A4
db $CD, $5E, $01				;Run event index 015E
db $E1, $00, $20, $41, $A0, $D8	;Return from cutscene? 00 20 41 A0 D8
db $09							;Player Show
db $C3, $02						;Fade in Speed 02
db $A5, $FE						;Clear Event Flag 1FE

db $CC, $12                 	;Custom destination flag 12
db $FF							;End event

padbyte $00
pad $C89B79

; disable the meat of this cutscene. Has to happen here because calling
; the "city fly" event raw on the map causes bad sprites to show
org $C907C7

db $C3, $0A						;Fade in Speed 0A
db $BE, $45						;Rumble effect of 45 magnitude
db $D5, $84, $04, $00			;(Sound) 84 04 00
db $73							;Sort of long pause
db $A4, $E6						;Set Event Flag 1E6
db $BE, $00						;Cancel rumble
db $E3, $00, $00, $3F, $A2, $00	;Inter-map cutscene? 00 00 3F A2 00
db $FF							;End Event

padbyte $00
pad $C907EE