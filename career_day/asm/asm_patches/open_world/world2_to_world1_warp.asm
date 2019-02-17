hirom

; Surgate castle guards

org $C8332C
db $00, $00, $F9

; World 1 Warp Dialogue
org $F90000

db $F0, $02, $02              ;Conditional yes/no dialogue at 04B7
db $CD, $2F, $01                ;Run event index 0408
db $FF
db $FF



; this overwrites the missing galuf cutscene after earth crystal
org $C836AD
db $40, $00, $F9

; world 1 warp
org $F90040
db $C4, $03
db $73
db $E1, $00, $00, $91, $73, $00 ;Return from cutscene? 00 00 9C 96 00
db $D2, $00, $91, $74, $D8
db $14

; WORLD CONDITIONALS
; Submarine deactivated
db $A5, $F9            ; set address 000A53 bit OFF 02
; Lonka ruin access
db $A4, $FA            ; set address 000A53 bit ON 04

db $C3, $03
db $73
db $FF







org $C83329
db $80, $00, $F9

; World 3 Warp Dialogue
org $F90080

db $F0, $02, $01              ;Conditional yes/no dialogue at 04B7
db $CD, $C7, $06                ;Run event index 0408
db $FF
db $FF



; this overwrites the first entering void cutscene
org $C84775
db $80, $01, $F9

; world 3 warp
org $F90180
db $C4, $03
db $73
db $E1, $02, $00, $93, $52, $00 ;Return from cutscene? 00 00 9C 96 00
db $D2, $02, $93, $51, $D8     ; airship
; WORLD CONDITIONALS
; Submarine activated
db $A4, $F9            ; set address 000A53 bit ON 02
; Lonka ruin restrict access
db $A5, $FA            ; set address 000A53 bit OFF 04

db $14
db $C3, $03
db $73
db $FF


; Warp message world 1
org $E19214
db $96
db $76
db $7A
db $8B
db $89
db $96
db $8D
db $88
db $96
db $76
db $88
db $8B
db $85
db $7D
db $96
db $54
db $C9
db $FF, $00

; Warp message world 3
org $E148B6
db $96
db $76
db $7A
db $8B
db $89
db $96
db $8D
db $88
db $96
db $76
db $88
db $8B
db $85
db $7D
db $96
db $56
db $C9
db $FF, $00