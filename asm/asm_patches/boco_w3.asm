hirom
!base = $C00000

; $C8AD91 → $C8AEF0

org $C8AD91

db $D0, $80, $80                ;(Music) 80 80
db $81, $09                     ;Sprite 081 do event: Show
db $81, $03                     ;Sprite 081 do event: Move Down
db $C4, $02
db $75
db $E1, $02, $00, $A5, $74, $24 ;Return from cutscene? 02 00 A5 74 24
db $14                          ;Player pose: face down, left hand forward
db $C3, $02
db $75
db $A2, $7D                     ;Set Event Flag 07D
db $CB, $5B, $00                ;Clear Flag 2/3/4/5/5B 00
db $CA, $5D, $00                ;Set Flag 2/3/4/5/5D 00
db $A4, $24                     ;Set Event Flag 124
db $FF                          ;End Event

padbyte $00
pad $C8AEF0