hirom
; Enemy: Forza
; Stats: 
org $D020C0
db $28, $32, $09, $00, $08, $00, $05, $05, $b8, $0b, $64, $00, $50, $02, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $06, $08
; Loot: 
org $D05018
db $00, $00, $00, $F3

; Enemy: Magisa
; Stats: 
org $D020E0
db $23, $32, $05, $05, $00, $28, $0a, $05, $b8, $0b, $c8, $00, $50, $02, $00, $00, $00, $00, $F0, $FB, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $07, $08
; Loot: 
org $D0501C
db $00, $00, $00, $4B

;rewrite locations to test location
org $D07804
db $01BA
org $D07806
db $01BA
org $D07828
db $01BA
org $D0782A
db $01BA
org $D078AC
db $01BA
org $D078AE
db $01BA
org $D07928
db $01BA
org $D0792A
db $01BA
