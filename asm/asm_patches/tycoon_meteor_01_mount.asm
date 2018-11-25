hirom
!base = $C00000

;  Boco dismount Tycoon 
org $C84FD2
; org $C851E2

db $87, $09 ; show sprite for choco. $8x refers to active sprites
db $87, $20 ; choco pose
db $0a
db $b1
db $02
db $10
db $09
db $05, $01 ; player bounce up
db $a5,$ff ; clear event flag. as of now, not messing with these. if it was in the original function, keep 
db $ff

fillbyte $00
fill 15
; 0000000000000000000000000000