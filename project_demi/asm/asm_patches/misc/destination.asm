hirom
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
; addresses 005244 → 00527A

org $E79400
padbyte $FF
pad $E79A00

; this will say Destination: and will never change
org $E79400
db $63, $7e, $8c, $8d
db $82, $87, $7a, $8d
db $82, $88, $87, $9b

org $E79420
=======
; addresses 7E5244 → 7E527A

org $F18200
padbyte $FF
pad $F18800

; this will say Destination: and will never change 
org $F18200
db $63, $7e, $8c, $8d
db $82, $87, $7a, $8d 
db $82, $88, $87, $9b

org $F18220 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $73, $78, $62, $6E
db $6E, $6D, $FF, $6C
db $64, $73, $64, $6E
db $71, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79440
=======
org $F18240 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6F, $68, $71, $60
db $73, $64, $FF, $67
db $68, $63, $64, $6E
db $74, $73, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79460
=======
org $F18260 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $76, $68, $6D, $63
db $FF, $72, $67, $71
db $68, $6D, $64, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79480
=======
org $F18280 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $73, $74, $6B, $64
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E794A0
=======
org $F182A0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $73, $6E, $71, $6D
db $60, $FF, $62, $60
db $6D, $60, $6B, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E794C0
=======
org $F182C0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $72, $67, $68, $6F
db $FF, $66, $71, $60
db $75, $64, $78, $60
db $71, $63, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E794E0
=======
org $F182E0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $67, $68, $71, $78
db $74, $74, $FF, $6C
db $6E, $74, $6D, $73
db $60, $68, $6D, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79500
=======
org $F18300 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $76, $60, $6B, $72
db $64, $FF, $62, $60
db $72, $73, $6B, $64
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79520
=======
org $F18320 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $76, $60, $6B, $72
db $64, $FF, $73, $6E
db $76, $64, $71, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79540
=======
org $F18340 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $76, $60, $6B, $72
db $64, $FF, $6C, $64
db $73, $64, $6E, $71
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79560
=======
org $F18360 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6A, $60, $71, $6D
db $60, $6A, $FF, $73
db $6E, $76, $6D, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79580
=======
org $F18380 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6A, $60, $71, $6D
db $60, $6A, $FF, $72
db $73, $64, $60, $6C
db $72, $67, $68, $6F
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E795A0
=======
org $F183A0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $60, $6D, $62, $68
db $64, $6D, $73, $FF
db $6B, $68, $61, $71
db $60, $71, $78, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E795C0
=======
org $F183C0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6A, $60, $71, $6D
db $60, $6A, $FF, $6F
db $74, $61, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E795E0
=======
org $F183E0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6A, $60, $71, $6D
db $60, $6A, $FF, $72
db $73, $64, $60, $6C
db $72, $67, $68, $6F
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79600
=======
org $F18400 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $62, $71, $64, $72
db $62, $64, $6D, $73
db $FF, $68, $72, $6B
db $60, $6D, $63, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79620
=======
org $F18420 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $60, $6D, $62, $68
db $64, $6D, $73, $FF
db $6B, $68, $61, $71
db $60, $71, $78, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79640
=======
org $F18440 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $63, $64, $72, $64
db $71, $73, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79660
=======
org $F18460 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6B, $6E, $6D, $6A
db $60, $FF, $71, $74
db $68, $6D, $72, $FF
db $9E, $60, $72, $62
db $64, $6D, $63, $9F
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79680
=======
org $F18480 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $73, $78, $62, $6E
db $6E, $6D, $FF, $6C
db $64, $73, $64, $6E
db $71, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E796A0
=======
org $F184A0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $62, $71, $64, $72
db $62, $64, $6D, $73
db $FF, $68, $72, $6B
db $60, $6D, $63, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
; org $E796C0 ; unused for now
=======
; org $F184C0  ; unused for now
>>>>>>> master:asm/asm_patches/misc/destination.asm
; db $6B, $6E, $6D, $6A
; db $60, $FF, $71, $74
; db $68, $6D, $72, $FF
; db $FF, $FF, $FF, $FF
; db $FF, $FF, $FF, $FF
; db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E796E0
=======
org $F184E0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $65, $6E, $74, $71
db $FF, $6C, $64, $73
db $64, $6E, $71, $72
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79700
=======
org $F18500 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $61, $60, $67, $60
db $6C, $74, $73, $FF
db $6F, $64, $6D, $68
db $6D, $72, $74, $6B
db $60, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79720
=======
org $F18520 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $61, $68, $66, $FF
db $61, $71, $68, $63
db $66, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79740
=======
org $F18540 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6C, $6E, $6E, $66
db $6B, $64, $FF, $65
db $6E, $71, $64, $72
db $73, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79760
=======
org $F18560 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6C, $6E, $6E, $66
db $6B, $64, $FF, $75
db $68, $6B, $6B, $60
db $66, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79780
=======
org $F18580 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $67, $68, $71, $78
db $74, $74, $FF, $6C
db $6E, $74, $6D, $73
db $60, $68, $6D, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E797A0
=======
org $F185A0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $61, $60, $6B, $FF
db $62, $60, $72, $73
db $6B, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E797C0
=======
org $F185C0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $66, $74, $68, $63
db $6E, $FF, $62, $60
db $75, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E797E0
=======
org $F185E0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $79, $64, $79, $60
db $FF, $65, $6B, $64
db $64, $73, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79800
=======
org $F18600 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $79, $64, $79, $60
db $FF, $65, $6B, $64
db $64, $73, $FF, $62
db $60, $61, $68, $6D
db $72, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79820
=======
org $F18620 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $61, $60, $71, $71
db $68, $64, $71, $FF
db $73, $6E, $76, $64
db $71, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79840
=======
org $F18640 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $72, $74, $61, $6C
db $64, $71, $66, $64
db $63, $FF, $66, $74
db $68, $63, $6E
db $FF, $62, $60
db $75, $64, $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79860
=======
org $F18660 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6C, $74, $60, $FF
db $65, $6E, $71, $64
db $72, $73, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79880
=======
org $F18680 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $64, $77, $63, $64
db $60, $73, $67, $FF
db $62, $60, $72, $73
db $6B, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E798A0
=======
org $F186A0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $73, $78, $62, $6E
db $6E, $6D, $FF, $62
db $60, $72, $73, $6B
db $64, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E798C0
=======
org $F186C0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $66, $74, $68, $63
db $6E, $FF, $62, $60
db $75, $64, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E798E0
=======
org $F186E0 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6F, $78, $71, $60
db $6C, $68, $63, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79900
=======
org $F18700 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $60, $68, $71, $72
db $67, $68, $6F, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79920
=======
org $F18720 
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $62, $6B, $64, $65
db $73, $FF, $A0, $FF
db $73, $60, $61, $6B
db $64, $73, $72, $FF
db $FF, $FF, $FF, $FF
db $FF, $FF

;Karnak Meteor
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79940
=======
org $F18740
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $6A
db $60
db $71
db $6D
db $60
db $6A
db $96
db $6C
db $64
db $73
db $64
db $6E
db $71
db $FF
;Walse Meteor
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79960
=======
org $F18760
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $76
db $60
db $6B
db $72
db $64
db $96
db $6C
db $64
db $73
db $64
db $6E
db $71
db $FF
;Ruined City Meteor
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
org $E79980
=======
org $F18780
>>>>>>> master:asm/asm_patches/misc/destination.asm
db $71
db $74
db $68
db $6D
db $64
db $63
db $96
db $62
db $68
db $73
db $78
db $96
db $6C
db $64
db $73
db $64
db $6E
db $71
db $FF



<<<<<<< HEAD:project_demi/asm/asm_patches/misc/destination.asm
=======

>>>>>>> master:asm/asm_patches/misc/destination.asm
; 7E2CE5 → 7E2D0E - [TEXT RAM] text box in Item desc 

    ; 7E2CE7 - length of text

; D14000 - indices for address starts for each item

; E03177 - loads in the proper index into A
; E0317B - JML to below

; C2AC88 - stores index into 7E2CEB
; C2AC8B - JSR

    ; C2DA16 - loads into TEXT RAM, JSL
        ; E03191 - Moves proper data to 7E2CF0
    ; C2DA36 - Identifies end point, stores $0000
    ; C2DA38 → C2DA4A - loop to ... check?... data, branches upon hitting text length from 7E2CE7

    ; c2da5a - Lots of stack pushing. Then it pushes to 7E51C0 → 7E5186 in [xx 00] format per character

; C2AC2C - JSR C2A698
        ; [ a whole bunch of stuff in 7E75xx range]
; C2AC2F - JSR $E6AB

; C2E6AB



; If you write values to the proper area in 7E51C0, then simply write $01 to address $7E7511, it'll populate the text box area 

