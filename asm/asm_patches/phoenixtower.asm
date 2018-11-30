hirom
!base = $C00000

; $C99B2C → $C99C9C

org $C99B2C

db $D0, $80, $40                ;(Music) 80 40
; db $82, $09                     ;Sprite 082 do event: Show
; db $0A                          ;Player Hide
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $83, $09                     ;Sprite 083 do event: Show
; db $84, $09                     ;Sprite 084 do event: Show
; db $85, $09                     ;Sprite 085 do event: Show
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $84, $03                     ;Sprite 084 do event: Move Down
; db $85, $20                     ;Sprite 085 do event: face down, left hand raised out
; db $83, $20                     ;Sprite 083 do event: face down, left hand raised out
; db $84, $20                     ;Sprite 084 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $C8, $1E, $87                ;Display Message/Text/Dialogue 1E 87
; db $73                          ;Long pause
; db $80, $0C                     ;Sprite 080 do event: 0C
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $27                     ;Sprite 080 do event: face up, right hand raised in
; db $73                          ;Long pause
; db $80, $47                     ;Sprite 080 do event: face down, left hand up in
; db $70                          ;Very short pause
; db $B4, $11                     ;Play Background Music (Nothing)
; db $A4, $FE                     ;Set Event Flag 1FE
; db $B5, $5E                     ;Play Sound Effect Dragon whimper
; db $71                          ;Short pause
; db $80, $27                     ;Sprite 080 do event: face up, right hand raised in
; db $71                          ;Short pause
; db $83, $22                     ;Sprite 083 do event: face down, left hand on head
; db $71                          ;Short pause
; db $C8, $1F, $87                ;Display Message/Text/Dialogue 1F 87
; db $71                          ;Short pause
; db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
; db $83, $20                     ;Sprite 083 do event: face down, left hand raised out
; db $73                          ;Long pause
; db $CD, $B6, $01                ;Run event index 01B6
; db $73                          ;Long pause
; db $CD, $B7, $01                ;Run event index 01B7
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $72                          ;Medium pause
; db $CF, $04, $04                ;Play next 04 bytes simultaneously 04 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $85, $24                     ;Sprite 085 do event: face down, right hand raised in
; db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $D3, $81, $00, $00           ;Sprite 81 set map position 00, 00
; db $CE, $06, $02                ;Play next 02 bytes 06 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $CF, $03, $08                ;Play next 08 bytes simultaneously 03 times
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $84, $03                     ;Sprite 084 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $C8, $20, $07                ;Display Message/Text/Dialogue 20 07
; db $73                          ;Long pause
; db $CE, $06, $02                ;Play next 02 bytes 06 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $71                          ;Short pause
; db $C8, $22, $07                ;Display Message/Text/Dialogue 22 07
; db $75                          ;Extremely long pause
; db $C4, $06                     ;Fade out Speed 06
; db $75                          ;Extremely long pause
; db $E1, $74, $01, $08, $00, $00 ;Return from cutscene? 74 01 08 00 00
; db $80, $0C                     ;Sprite 080 do event: 0C
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $C3, $08                     ;Fade in Speed 08
; db $75                          ;Extremely long pause
; db $B9, $C7                     ;Toggle Subtracitve Tint by C7
; db $75                          ;Extremely long pause
; db $80, $13                     ;Sprite 080 do event: face right, down hand backward
; db $77                          ;<Unknown>
; db $CE, $0A, $02                ;Play next 02 bytes 0A times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $CF, $14, $03                ;Play next 03 bytes simultaneously 14 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $80, $45                     ;Sprite 080 do event: face down, looking left, pointing finger left
; db $CF, $14, $03                ;Play next 03 bytes simultaneously 14 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $D9, $0A, $09, $80           ;Unknown
; db $36                          ;Player pose: face down, eyes closed mouth open
; db $B5, $5D                     ;Play Sound Effect Dragon cry
; db $CF, $04, $03                ;Play next 03 bytes simultaneously 04 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $CF, $14, $03                ;Play next 03 bytes simultaneously 14 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $CF, $0A, $02                ;Play next 02 bytes simultaneously 0A times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $B5, $62                     ;Play Sound Effect Syldra pain
; db $73                          ;Long pause
; db $C4, $03                     ;Fade out Speed 03
; db $B3, $10                     ;Pause for 100 cycles
; db $E1, $CF, $01, $88, $3E, $00 ;Return from cutscene? CF 01 88 3E 00
; db $7D                          ;<Unknown>
; db $76                          ;<Unknown>
; db $B1, $03                     ;Set Player Sprite 03
; db $09                          ;Player Show
; db $2E                          ;Player pose: face down, head lowered
; db $D3, $83, $47, $3E           ;Sprite 83 set map position 47, 3E
; db $D3, $85, $C9, $3E           ;Sprite 85 set map position C9, 3E
; db $D3, $84, $CA, $3E           ;Sprite 84 set map position CA, 3E
; db $85, $09                     ;Sprite 085 do event: Show
; db $83, $09                     ;Sprite 083 do event: Show
; db $84, $09                     ;Sprite 084 do event: Show
; db $80, $0A                     ;Sprite 080 do event: Hide
; db $81, $0A                     ;Sprite 081 do event: Hide
; db $D4, $10, $88, $0F           ;(Music) 10 88 0F
; db $A4, $FE                     ;Set Event Flag 1FE
; db $C3, $02                     ;Fade in Speed 02
; db $B3, $18                     ;Pause for 180 cycles
; db $C8, $23, $07                ;Display Message/Text/Dialogue 23 07
; db $74                          ;Very long pause
; db $B9, $C4                     ;Toggle Subtracitve Tint by C4
; db $B3, $10                     ;Pause for 100 cycles
; db $CD, $B5, $06                ;Run event index 06B5
; db $B5, $5D                     ;Play Sound Effect Dragon cry
; db $71                          ;Short pause
; db $14                          ;Player pose: face down, left hand forward
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
; db $85, $24                     ;Sprite 085 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $86, $09                     ;Sprite 086 do event: Show
; db $CE, $08, $02                ;Play next 02 bytes 08 times
; db $86, $01                     ;Sprite 086 do event: Move Up
; db $74                          ;Very long pause
; db $86, $01                     ;Sprite 086 do event: Move Up
; db $86, $01                     ;Sprite 086 do event: Move Up
; db $84, $26                     ;Sprite 084 do event: face up, right hand raised out
; db $85, $26                     ;Sprite 085 do event: face up, right hand raised out
; db $83, $22                     ;Sprite 083 do event: face down, left hand on head
; db $86, $0A                     ;Sprite 086 do event: Hide
; db $C5                          ;<unknown>
; db $E0, $71                     ;Unknown
db $01
db $01
db $01
db $C4, $02
db $75

db $80, $0A                     ;Sprite 080 do event: Hide

db $C3, $02
db $75
db $C8, $24, $07                ;Display Message/Text/Dialogue 24 07
db $2E                          ;Player pose: face down, head lowered
;db $C8, $25, $07                ;Display Message/Text/Dialogue 25 07
db $D0, $80, $80                ;(Music) 80 80

db $14                          ;Player pose: face down, left hand forward

; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $85, $04                     ;Sprite 085 do event: Move Left
; db $84, $04                     ;Sprite 084 do event: Move Left
; db $83, $0A                     ;Sprite 083 do event: Hide
; db $85, $0A                     ;Sprite 085 do event: Hide
; db $84, $04                     ;Sprite 084 do event: Move Left
; db $84, $0A                     ;Sprite 084 do event: Hide
db $DB                          ;Restore Player status
db $AC, $54                     ;Add Magic Phenix
db $CD, $7F, $05                ;Run event index 057F
db $CB, $40, $02                ;Clear Flag 2/3/4/5/40 02
db $A2, $96                     ;Set Event Flag 096
db $A5, $FE                     ;Clear Event Flag 1FE
db $FF                          ;End Event

padbyte $00
pad $C99C9C