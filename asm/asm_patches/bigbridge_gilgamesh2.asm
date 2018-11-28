hirom
!base = $C00000

org $c9872e

; Gilgamesh at Big Bridge
; $c9872e → $C9875D


db $F3, $1E, $09, $10           ;Set Map Tiles 1E 09 10
db $04                          ;Player move Left
db $14                          ;Player pose: face down, left hand forward
db $80, $09                     ;Sprite 080 do event Show
db $06                          ;Player Bounce in Place
db $03                          ;Player Move Down
db $80, $03                     ;Sprite 080 do event Move Down
db $0B                          ;<Unknown>
db $10                          ;Player pose: face up, left hand forward
db $80, $03                     ;Sprite 080 do event Move Down
db $80, $0A                     ;Sprite 080 do event Hide
db $BD, $1B, $FF                ;Start Event Battle 1B
db $A2, $45                     ;Set Event Flag 045
db $00                          ;Player Hold
db $FF                          ;End Event


padbyte $00
pad $C9875D