hirom
!base = $C00000

; speed up the warp and skip Boko's tutorial prompt
org $C85B90

db $CD, $5B, $05				;Run event index 055B
db $73							;Medium pause
db $E3, $00, $00, $B6, $35, $00	;Inter-map cutscene? 00 00 B6 35 00
db $09							;Player Show
db $D3, $80, $40, $07			;Sprite 80 set map position 40, 07
db $C3, $02						;Fade in Speed 02
db $CC, $03                  ;Custom destination flag 03
db $FF							;End Event

padbyte $00
pad $C85BD8