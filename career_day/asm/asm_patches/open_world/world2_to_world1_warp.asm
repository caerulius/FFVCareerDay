hirom

; Surgate castle guards


; Set Outside Surgate guard to new text box
org $CE8912
db $D9


org $C83BDE
db $00, $00, $F9

; disable event flag at surage so the left guard's dialogue doesnt change to `world 3 warp`
org $C935D7
db $00, $00

; if you're still having guard problems, it's because of a pyramid/melusine flag (A24 '02'). 
; this is when dialogue permanently shifts
; so fix when the guards are conditional on this bit and instead make it always treat it as if
; $A24 '02' is set 


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
; Set world 3 off status
db $A3, $79            ; set address 000A23 bit OFF 02

db $C3, $03
db $73
db $FF







; Set Outside Surgate guard to new text box
org $CE8919
db $DA


org $C83BE1
db $80, $00, $F9
; World 3 Warp Dialogue
org $F90080

db $F0, $02, $01              ;Conditional yes/no dialogue at 04B7
db $CD, $A4, $04				;Run event index 04A4
db $FF
db $FF








; this overwrites an event from ruined_city_rising that does not get called any longer. $CD, $A4, $04
org $C8410C
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
; Set world 3 on status
db $A2, $79            ; set address 000A23 bit ON 02


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