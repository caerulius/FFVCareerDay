hirom
; Rewrite enemy skills for enemy Titan
; new skill Fight
org $d0b59d
db $80
; new skill Fight
org $d0b59e
db $80
; new skill Specialty
org $d0b59f
db $81
; new skill Fight
org $d0b5a1
db $80
; new skill EarthShaker
org $d0b5a2
db $CF
; new skill Specialty
org $d0b5a3
db $81
; Enemy: Titan
; Stats: 
org $D02360
db $19, $05, $14, $0a, $0a, $00, $00, $00, $fa, $00, $d0, $07, $94, $09, $00, $00, $00, $00, $F7, $DF, $00, $20, $00, $00, $A0, $18, $00, $00, $00, $00, $1B, $01
; Loot: 
org $D0506C
db $26, $E0, $00, $E1

;rewrite locations to test location
org $D07804
db $01C6
org $D07806
db $01C6
org $D07828
db $01C6
org $D0782A
db $01C6
org $D078AC
db $01C6
org $D078AE
db $01C6
org $D07928
db $01C6
org $D0792A
db $01C6
