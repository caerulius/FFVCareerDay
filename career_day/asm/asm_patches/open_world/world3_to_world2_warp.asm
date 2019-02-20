hirom


org $C8464C
db $B0, $00, $F9

; World 2 Warp Dialogue
org $F900B0
db $C5, $80                     ;<unknown>
db $B5, $02                     ;Play Sound Effect Void, Image
db $CD, $7F, $05                ;Run event index 057F
db $F0, $01, $02              ;Conditional yes/no dialogue at 04B7
db $CD, $C6, $06                ;Run event index 0408
db $FF
db $FF




; Change first warp to void scene 
org $C84772
db $00, $02, $F9

; world 2 warp
org $F90200
db $C4, $03
db $73
db $E1, $01, $00, $4C, $6F, $00 ;Return from cutscene? E1 00 97 1A 00
db $D2, $01, $4B, $6E, $6C ; hiryuu
db $D2, $01, $4C, $73, $90 ; submarine
db $D2, $01, $4D, $6F, $D8 ; airship ???

; WORLD CONDITIONALS
; Set world 3 off status
db $A3, $79            ; set address 000A23 bit OFF 02
; Submarine deactivated
db $A5, $F9            ; set address 000A53 bit OFF 02

db $14
db $C3, $03
db $73
db $FF

; Warp message world 2
org $E191EA
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
db $55
db $C9
db $FF, $00