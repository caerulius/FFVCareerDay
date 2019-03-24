; this solely sits as event data within intro cutscene, within `starting_flags.asm`
; this should take place before the warp out happens


db $E3, $0D, $00, $8A, $07, $00 ;Inter-map cutscene? 0D 00 8A 07 00
db $0A                          ;Player Hide
db $C3, $0C                     ;Fade in Speed 0C
db $73                          ;Long pause
db $D3, $80, $40, $07           ;Sprite 80 set map position 40, 07
db $80, $09                     ;Sprite 080 do event: Show
db $CE, $0A, $02                ;Play next 02 bytes 0A times
db $80, $02                     ;Sprite 080 do event: Move Right
db $70                          ;Very short pause
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $71                          ;Short pause
db $80, $05                     ;Sprite 080 do event: Bounce
db $80, $00                     ;Sprite 080 do event: Hold
db $71                          ;Short pause




db $80, $54                     ;Sprite 080 do event: 54
db $70                          ;Very short pause
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $73                          ;Long pause
db $C8, $AF, $00                ;Display Message/Text/Dialogue AF 00
db $71                          ;Short pause
db $C8, $B0, $00                ;Display Message/Text/Dialogue B0 00
db $71                          ;Short pause
db $80, $05                     ;Sprite 080 do event: Bounce
db $80, $00                     ;Sprite 080 do event: Hold
db $80, $0B                     ;Sprite 080 do event: 0B
db $80, $05                     ;Sprite 080 do event: Bounce
db $80, $00                     ;Sprite 080 do event: Hold
db $80, $0B                     ;Sprite 080 do event: 0B
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $71                          ;Short pause
db $CE, $0A, $02                ;Play next 02 bytes 0A times
db $80, $02                     ;Sprite 080 do event: Move Right


; db $71                          ;Short pause
; db $71                          ;Short pause
; db $80, $53                     ;Sprite 080 do event: 53
; db $70                          ;Very short pause
; db $80, $22                     ;Sprite 080 do event: face down, left hand on head
; db $71                          ;Short pause
; db $C8, $B1, $00                ;Display Message/Text/Dialogue B1 00
; db $71                          ;Short pause
; db $70                          ;Very short pause
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $C8, $B2, $00                ;Display Message/Text/Dialogue B2 00
; db $71                          ;Short pause
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $05                     ;Sprite 080 do event: Bounce
; db $80, $00                     ;Sprite 080 do event: Hold
; db $70                          ;Very short pause
; db $80, $05                     ;Sprite 080 do event: Bounce
; db $80, $00                     ;Sprite 080 do event: Hold
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $71                          ;Short pause




db $D0, $80, $20                ;(Music) 80 20
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $71                          ;Short pause
db $D0, $F0, $00                ;(Music) F0 00