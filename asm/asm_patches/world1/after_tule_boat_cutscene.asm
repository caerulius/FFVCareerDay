hirom
!base = $C00000

; Disables cutscene on boat after leaving Tule with Faris
org $C99998

db $E1, $00, $00, $8C, $5C, $B4	;Return from cutscene? 00 00 8C 5C B4
db $12				;Player pose: face right, standing
db $C3, $06			;Fade in Speed 06
db $75				;Extremely long pause
db $A4, $4C			;Set Event Flag 14C
db $FF				;End Event

padbyte $00
pad $C99ACD