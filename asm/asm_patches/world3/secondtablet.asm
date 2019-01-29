hirom
!base = $C00000

; $C9A4AD → $C9A5B1
; Before fight, then after fight, show fork tower fast (gives player direction)

org $C9A4AD


db $B5, $93                     ;Play Sound Effect Evil appears
db $CE, $08, $08                ;Play next 08 bytes 14 times
db $86, $0A                     ;Sprite 086 do event: Hide
db $B2, $04                     ;Pause for 04 cycles
db $86, $09                     ;Sprite 086 do event: Show
db $B2, $04                     ;Pause for 04 cycles
;db $73                          ;Long pause
db $86, $16                     ;Sprite 086 do event: face left, standing
;db $71                          ;Short pause
;db $C8, $3E, $08                ;Display Message/Text/Dialogue 3E 08
db $14                          ;Player pose: face down, left hand forward
;db $71                          ;Short pause
db $86, $01                     ;Sprite 086 do event: Move Up
db $86, $01                     ;Sprite 086 do event: Move Up
db $86, $01                     ;Sprite 086 do event: Move Up
;db $AE, $03                     ;Blur Screen 03
;db $75                          ;Extremely long pause
db $86, $0A                     ;Sprite 086 do event: Hide
db $BD, $2E, $FF                ;Start Event Battle 2E
;db $74                          ;Very long pause
db $10                          ;Player pose: face up, left hand forward
;db $71                          ;Short pause
;db $3D                          ;Player pose: face up, both arms raised out
db $71                          ;Short pause
db $82, $03                     ;Sprite 082 do event: Move Down
db $82, $0A                     ;Sprite 082 do event: Hide
;db $70                          ;Very short pause
db $12                          ;Player pose: face right, standing
db $B2, $03                     ;Pause for 03 cycles
db $14                          ;Player pose: face down, left hand forward
;db $71                          ;Short pause
db $39                          ;Player pose: face down, both arms raised
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $C8, $50, $07                ;Display Message/Text/Dialogue 50 07
db $E4, $C4                     ;Unknown
db $06                          ;Player Bounce in Place
db $73                          ;Long pause
db $0A
db $E1, $02, $00, $CE, $C9, $00 ;Return from cutscene? 02 00 CE C9 00
db $D0, $80, $00                ;(Music) 80 00
db $B4, $11                     ;Play Background Music (Nothing)
db $A4, $FE                     ;Set Event Flag 1FE
db $0A                          ;Player Hide
db $C3, $08                     ;Fade in Speed 08
db $75                          ;Extremely long pause
db $E3, $89, $01, $2F, $10, $00 ;Inter-map cutscene? 89 01 2F 10 00
db $F3, $AD, $0E, $20           ;Set Map Tiles AD 0E 20
; db $C1, $D1                     ;<Unknown>
; db $F1, $F3                     ;Unknown
; db $B1, $0E                     ;Set Player Sprite 0E
; db $20                          ;Player pose: face down, left hand raised out
; db $C1, $D1                     ;<Unknown>
; db $F1, $F3                     ;Unknown
; db $AE, $0E                     ;Blur Screen 0E
; db $20                          ;Player pose: face down, left hand raised out
; db $C1, $D1                     ;<Unknown>
; db $F1, $F3                     ;Unknown
; db $B0, $0E                     ;Subtract 0E Gil 
; db $20                          ;Player pose: face down, left hand raised out
; db $C1, $D1                     ;<Unknown>
; db $F1, $F3                     ;Unknown
; db $AF, $0E                     ;Add 0E Gil
; db $20                          ;Player pose: face down, left hand raised out
; db $C1, $D1                     ;<Unknown>
; db $F1, $C3                     ;Unknown
; db $08                          ;<Unknown>
; db $75                          ;Extremely long pause
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $74                          ;Very long pause
; db $B5, $02                     ;Play Sound Effect Void, Image
db $F3, $AD, $0E, $24           ;Set Map Tiles AD 0E 24
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $C5                          ;<unknown>
; db $C0, $70                     ;Circle Mask 70
; db $C5                          ;<unknown>
; db $C0, $70                     ;Circle Mask 70
; db $C5                          ;<unknown>
; db $C0, $BE                     ;Circle Mask BE
; db $00                          ;Player Hold
; db $73                          ;Long pause
; db $C8, $51, $07                ;Display Message/Text/Dialogue 51 07
; db $73                          ;Long pause
; db $C4, $06                     ;Fade out Speed 06
; db $73                          ;Long pause
db $CB, $43, $02                ;Clear Flag 2/3/4/5/43 02
db $E1, $88, $01, $8F, $05, $00 ;Return from cutscene? 88 01 8F 05 00
db $09                          ;Player Show
db $B1, $02                     ;Set Player Sprite 02
db $14                          ;Player pose: face down, left hand forward
db $D3, $82, $0F, $06           ;Sprite 82 set map position 0F, 06

; db $82, $09                     ;Sprite 082 do event: Show
db $83, $09                     ;Sprite 083 do event: Show
db $85, $09                     ;Sprite 085 do event: Show
db $84, $09                     ;Sprite 084 do event: Show
db $85, $40                     ;Sprite 085 do event: face down, looking right, eyes lowered
db $C3, $08                     ;Fade in Speed 08
db $75                          ;Extremely long pause
;db $74                          ;Very long pause
;db $C8, $52, $07                ;Display Message/Text/Dialogue 52 07
;db $72                          ;Medium pause
db $85, $03                     ;Sprite 085 do event: Move Down
db $85, $04                     ;Sprite 085 do event: Move Left
db $85, $20                     ;Sprite 085 do event: face down, left hand raised out
db $14                          ;Player pose: face down, left hand forward
;db $73                          ;Long pause
db $85, $0B                     ;Sprite 085 do event: 0B
db $85, $4D                     ;Sprite 085 do event: garbage
db $C7, $04                     ;Play next 04 bytes simultaneously
db $85, $01                     ;Sprite 085 do event: Move Up
db $82, $01                     ;Sprite 082 do event: Move Up
db $82, $0A                     ;Sprite 082 do event: Hide
;db $70                          ;Very short pause
db $85, $20                     ;Sprite 085 do event: face down, left hand raised out
;db $71                          ;Short pause
db $83, $22                     ;Sprite 083 do event: face down, left hand on head
db $84, $26                     ;Sprite 084 do event: face up, right hand raised out
;db $71                          ;Short pause
db $C7, $06                     ;Play next 06 bytes simultaneously
db $85, $01                     ;Sprite 085 do event: Move Up
db $83, $02                     ;Sprite 083 do event: Move Right
db $84, $04                     ;Sprite 084 do event: Move Left
db $83, $0A                     ;Sprite 083 do event: Hide
db $84, $0A                     ;Sprite 084 do event: Hide
db $85, $0A                     ;Sprite 085 do event: Hide
db $DB                          ;Restore Player status
;db $70                          ;Very short pause
db $03                          ;Player Move Down
db $B4, $24                     ;Play Background Music The Book of Sealings
db $A5, $FE                     ;Clear Event Flag 1FE
db $A2, $8E                     ;Set Event Flag 08E
db $A4, $53                     ;Set Event Flag 153
db $CB, $43, $02                ;Clear Flag 2/3/4/5/43 02
db $A4, $CC                     ;Set Event Flag 1CC
db $CB, $5A, $02                ;Clear Flag 2/3/4/5/5A 02
db $FF                          ;End Event



padbyte $00
pad $C9A5B1