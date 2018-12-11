hirom
!base = $C00000

; Patches for:
; Always run
; Always Blue Mage learning passive
; Always passages

; Always save
; Remove conditional for on save-point flag
org $C000E6
nop
nop
nop
nop