if !testing == 1

    !startwithkeyitem1 = $07
    
    
    ; TEST IN WATERWAY
    org $D133E2
    db $30, !startwithkeyitem1

    if !allkeysunlocked == 1
        org $C0FB72
        db $30, $04
        org $C0FB70
        db $30, $01
        org $C0FB74
        db $30, $18
        org $C0FB76
        db $30, $1C
        org $C0FB78
        db $30, $0C
        org $C0FB7A
        db $30, $02
        org $C0FB7C
        db $30, $0E
        org $C0FB7E
        db $30, $12
        org $C0FB80
        db $30, $0D
        org $C0FB82
        db $30, $1B
        org $C0FB84
        db $30, $00
        org $C0FB86
        db $30, $07
        org $C0FB88
        db $30, $1A
        org $C0FB8A
        db $30, $03
        org $C0FB8C
        db $30, $15
        org $C0FB8E
        db $30, $05
        org $C0FB90
        db $30, $06
        org $C0FB92
        db $30, $1D
        org $C0FB94
        db $30, $0B
        org $C0FB96
        db $30, $08
        org $C0FB98
        db $30, $16
    else

        ; TESTING FOR EVENT SLOT $60. SAME AS ABOVE OVERWRITING TORNA CANAL!!
        org $C0FB70
        db $30, $06
        org $C0FB72
        db $30, !startwithkeyitem1

    endif
endif