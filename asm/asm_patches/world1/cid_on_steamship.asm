hirom
!base = $C00000

; Cid on steamship
org $C96FEB

;db $F3, $0C, $10, $10		;Set Map Tiles 0C 10 10
db $CA, $52, $01			;Set Flag 2/3/4/5/52 01
db $A2, $2E					;Set Event Flag 02E
db $CC, $0C                  ;Custom destination flag 0C
db $FF						;End Event

padbyte $00
pad $C97079