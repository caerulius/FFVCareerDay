hirom
; Enemy: Omniscient
; Stats: 
org $D028A0
db $1a, $64, $14, $00, $00, $14, $08, $00, $98, $3a, $30, $75, $00, $68, $00, $00, $00, $00, $F4, $50, $00, $00, $00, $40, $20, $18, $00, $00, $61, $00, $45, $35
; Loot: 
org $D05114
db $C5, $E0, $00, $00

;rewrite locations to test location
org $D07804
db $01E4
org $D07806
db $01E4
org $D07828
db $01E4
org $D0782A
db $01E4
org $D078AC
db $01E4
org $D078AE
db $01E4
org $D07928
db $01E4
org $D0792A
db $01E4
