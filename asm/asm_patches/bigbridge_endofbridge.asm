hirom
!base = $C00000

org $c8b745


; $c8b745 → $C8BA3B
; Big Bridge: End of bridge → placement on continent


db $D3, $88, $8F, $0F           ;Sprite 88 set map position 8F, 0F
db $B1, $04                     ;Set Player Sprite 04
db $88, $03                     ;Sprite 088 do event Move Down
db $88, $03                     ;Sprite 088 do event Move Down
db $C4, $02                     ;Fade out Speed 02
db $71                          ;Timing
db $71                          ;Timing
db $71                          ;Timing
db $A5, $FE                     ;Clear Event Flag 1FE
db $E1, $01, $00, $63, $2D, $00 ;Return from cutscene? 01 00 63 2D 00
db $DB                          ;Restore Player status
db $09                          ;Player Show
db $0B                          ;<Unknown>
db $C3, $02                     ;Fade in Speed 02
db $03                          ;Player Move Down
db $FF                          ;End Event

; d3888f0fb1048803880371c402709024
; 7190037190487000009049900b900690
; 039013ce04029003a5fee10100632d00
; db090bc30103ff

padbyte $00
pad $C8BA3B