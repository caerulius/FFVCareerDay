hirom
; Rewrite enemy skills for enemy Byblos
; new skill WindSlash
org $d0a0db
db $AB
; new skill RainbowWind
org $d0a0e1
db $BD
; Enemy: Byblos
; Stats: 
org $D00400
db $2b, $50, $0f, $1e, $0a, $32, $1e, $14, $d8, $d6, $e8, $03, $00, $00, $00, $00, $00, $00, $F8, $D4, $10, $FE, $00, $11, $04, $18, $00, $00, $00, $00, $20, $18
; Loot: 
org $D05080
db $EB, $ED, $00, $F5

;rewrite locations to test location
org $D07804
db $01BE
org $D07806
db $01BE
org $D07828
db $01BE
org $D0782A
db $01BE
org $D078AC
db $01BE
org $D078AE
db $01BE
org $D07928
db $01BE
org $D0792A
db $01BE
