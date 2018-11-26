hirom
!base = $C00000

; Event for when Faris comes out and tells you not to leave her
org $C85D7E

db $c7, $35	; skip as many 00 commands as we're about to write

fillbyte $00
fill 53

db $a5, $10, $ca, $0d, $00, $00, $00, $a4, $c6