hirom
!base = $C00000

; Patches for:
; Always Blue Mage learning passive
; Always passages


; Learning/Passages
; Original values: $A9, $10, $EA
org $C24C87
db $B9, $20, $20