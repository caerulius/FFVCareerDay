hirom
!base = $C00000


; Skip chat before byblos fight
org $C88562

db $BD, $09, $FF		;Start Event Battle 09
db $A4, $2A				;Set Event Flag 12A
db $CC, $0D                  ;Custom destination flag 0D
db $FF					;End Event

padbyte $00
pad $C885CC