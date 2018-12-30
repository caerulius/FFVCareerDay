hirom
!base = $C00000

; talking to cid on flying airship and crayclaw fight
org $C8BA3C

db $83, $55
db $30
db $73
db $BD, $35, $FF				;Start Event Battle 35
db $A5, $FE						;Clear Event Flag 1FE
db $CD, $15, $00				;Run event index 0015
db $A2, $44						;Set Event Flag 044
db $CA, $DD, $00				;Set Flag 2/3/4/5/DD 00
db $CA, $DE, $00				;Set Flag 2/3/4/5/DE 00
db $A3, $B0						;Clear Event Flag 0B0
db $A3, $B2						;Clear Event Flag 0B2
db $A2, $B1						;Set Event Flag 0B1

db $CC, $11                 	;Custom destination flag 11
db $FF							;End event

padbyte $00
pad $C8BB91