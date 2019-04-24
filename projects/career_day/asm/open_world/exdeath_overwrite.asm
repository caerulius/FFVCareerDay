hirom

; change formation
; org $D07
; db $F7

; OVERWRITE EXDEATH GALUF
    ; Formation (changed $13 (after $4f) to $4D)
org $D04F70
db $20, $80, $00, $20, $4e, $4f, $4D, $6b, $6c, $6d, $6e, $ff, $1a, $a8, $28, $62

    ; AI
org $D0BF28
db $02, $0D, $FF, $FF, $FE, $FD, $F7, $1E, $F0, $FD, $F8, $00, $3E, $FD, $F6, $07, $E3, $FD, $F6, $07, $E4, $FD, $F6, $07, $E5, $FD, $F6, $07, $E6, $FD, $F6, $07, $E7, $FD, $F2, $8D, $DE, $EE, $FF

    ; Enemy 
org $D029A0
db $2c, $6f, $11, $0a, $23, $19, $19, $0f, $69, $bf, $30, $75, $00, $00, $00, $00, $00, $00, $ff, $ff, $10, $00, $40, $00, $a0, $18, $00, $00, $00, $00, $13, $4d

org $D098B8
db $a2, $16, $14, $98, $dd, $f6, $5c, $00