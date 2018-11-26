hirom
!base = $C00000

; Event for when Faris waves at you and leaves (separate but identical event
; to when she leaves during the original pirate cutscene)
org $C8C0F6

db $c7, $59	; skip as many 00 commands as we're about to write

fillbyte $00
fill 89

db $a4, $fc
