hirom
!base = $C00000

; $C95C60 → $C95EF5

org $C95C60

db $E3, $09, $01, $A4, $11, $00 ;Inter-map cutscene? 09 01 A4 11 00
db $76							; Wait
db $C3, $0a					   ; Fade in
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $76							; Wait
db $76							; Wait
db $76							; Wait
db $C4, $01					   ; Fade out	


db $DB                          ;Restore Player status
db $E3, $01, $20, $55, $B0, $6C ;Inter-map cutscene? 01 20 55 B0 6C
db $09                          ;Player Show
db $14                          ;Player pose: face down, left hand forward
db $C3, $01					   ; Fade in	
db $74                          ;Very long pause
db $A2, $68                     ;Set Event Flag 068
db $CB, $73, $02                ;Clear Flag 2/3/4/5/73 02
db $CB, $7C, $02                ;Clear Flag 2/3/4/5/7C 02
db $CB, $6A, $02                ;Clear Flag 2/3/4/5/6A 02
db $CB, $6C, $02                ;Clear Flag 2/3/4/5/6C 02
db $A5, $C4                     ;Clear Event Flag 1C4
db $CC, $1D                  ;Custom destination flag 1D
db $FF                          ;End Event

padbyte $00
pad $C95EF5