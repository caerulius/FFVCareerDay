hirom
!base = $C00000


; $C8D157 → C8D283

org $C8D157
db $B1, $04                     ;Set Player Sprite 04
db $86, $10                     ;Sprite 086 do event: face up, left hand forward
db $D3, $84, $8D, $1F           ;Sprite 84 set map position 8D, 1F
db $0A                          ;Player Hide
; db $A0, $01                     ;(Message) 01
db $70                          ;Very short pause
db $77                          ;<Unknown>
db $CE, $0F, $01                ;Play next 01 bytes 0F times
db $01                          ;Player Move Up
db $D3, $94, $8D, $0C           ;Sprite 94 set map position 8D, 0C
db $B5, $93                     ;Play Sound Effect Evil appears
db $CE, $14, $08                ;Play next 08 bytes 14 times
db $94, $0A                     ;Sprite 194 do event: Hide
db $B2, $02                     ;Pause for 02 cycles
db $94, $09                     ;Sprite 194 do event: Show
db $B2, $02                     ;Pause for 02 cycles
db $71                          ;Short pause
db $B5, $93                     ;Play Sound Effect Evil appears
db $CE, $14, $0C                ;Play next 0C bytes 14 times
db $8F, $0A                     ;Sprite 08F do event: Hide
db $90, $0A                     ;Sprite 190 do event: Hide
db $B2, $02                     ;Pause for 02 cycles
db $8F, $09                     ;Sprite 08F do event: Show
db $90, $09                     ;Sprite 190 do event: Show
db $B2, $02                     ;Pause for 02 cycles
db $CF, $09, $01                ;Play next 01 bytes simultaneously 09 times
db $03                          ;Player Move Down
db $84, $13                     ;Sprite 084 do event: face right, down hand backward
db $CF, $03, $03                ;Play next 03 bytes simultaneously 03 times
db $03                          ;Player Move Down
db $84, $01                     ;Sprite 084 do event: Move Up
db $84, $10                     ;Sprite 084 do event: face up, left hand forward
db $86, $A4                     ;Sprite 086 do event: A4
db $86, $0B                     ;Sprite 086 do event: 0B
db $CE, $0B, $01                ;Play next 01 bytes 0B times
db $03                          ;Player Move Down
db $87, $07                     ;Sprite 087 do event: 07
db $87, $08                     ;Sprite 087 do event: 08
db $B5, $93                     ;Play Sound Effect Evil appears
db $CE, $14, $14                ;Play next 14 bytes 14 times
db $87, $0A                     ;Sprite 087 do event: Hide
db $91, $0A                     ;Sprite 191 do event: Hide
db $92, $0A                     ;Sprite 192 do event: Hide
db $93, $0A                     ;Sprite 193 do event: Hide
db $B2, $02                     ;Pause for 02 cycles
db $87, $09                     ;Sprite 087 do event: Show
db $91, $09                     ;Sprite 191 do event: Show
db $92, $09                     ;Sprite 192 do event: Show
db $93, $09                     ;Sprite 193 do event: Show
db $B2, $02                     ;Pause for 02 cycles
db $D3, $8F, $8B, $17           ;Sprite 8F set map position 8B, 17
db $D3, $90, $8F, $17           ;Sprite 90 set map position 8F, 17
db $CE, $07, $01                ;Play next 01 bytes 07 times
db $01                          ;Player Move Up
db $76                          ;<Unknown>
db $91, $01                     ;Sprite 191 do event: Move Up
db $91, $01                     ;Sprite 191 do event: Move Up
db $B5, $03                     ;Play Sound Effect Katana
db $C5                          ;<unknown>
db $E0, $70                     ;Unknown
db $C5                          ;<unknown>
db $E0, $8A                     ;Unknown
db $10                          ;Player pose: face up, left hand forward
db $8A, $0B                     ;Sprite 08A do event: 0B
db $8A, $06                     ;Sprite 08A do event: Bounce
db $8A, $04                     ;Sprite 08A do event: Move Left
db $8A, $05                     ;Sprite 08A do event: Bounce
db $8A, $04                     ;Sprite 08A do event: Move Left
db $8A, $13                     ;Sprite 08A do event: face right, down hand backward
db $CE, $03, $02                ;Play next 02 bytes 03 times
db $8A, $03                     ;Sprite 08A do event: Move Down
db $8A, $0A                     ;Sprite 08A do event: Hide
db $CF, $03, $03                ;Play next 03 bytes simultaneously 03 times
db $86, $01                     ;Sprite 086 do event: Move Up
db $01                          ;Player Move Up
db $71                          ;Short pause
db $84, $A0                     ;Sprite 084 do event: A0
db $84, $0B                     ;Sprite 084 do event: 0B
db $C7, $04                     ;Play next 04 bytes simultaneously
db $84, $04                     ;Sprite 084 do event: Move Left
db $86, $02                     ;Sprite 086 do event: Move Right
db $C7, $04                     ;Play next 04 bytes simultaneously
db $84, $03                     ;Sprite 084 do event: Move Down
db $86, $01                     ;Sprite 086 do event: Move Up
db $84, $A4                     ;Sprite 084 do event: A4
db $86, $A0                     ;Sprite 086 do event: A0
db $C7, $04                     ;Play next 04 bytes simultaneously
db $84, $02                     ;Sprite 084 do event: Move Right
db $86, $04                     ;Sprite 086 do event: Move Left
db $84, $0B                     ;Sprite 084 do event: 0B
db $73                          ;Long pause
db $84, $50                     ;Sprite 084 do event: 50
db $73                          ;Long pause
; db $A0, $02                     ;(Message) 02
db $D3, $94, $8D, $16           ;Sprite 94 set map position 8D, 16
db $94, $A4                     ;Sprite 194 do event: A4
db $94, $0B                     ;Sprite 194 do event: 0B
db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
db $94, $03                     ;Sprite 194 do event: Move Down
db $86, $01                     ;Sprite 086 do event: Move Up
db $B5, $20                     ;Play Sound Effect Spear
db $C5                          ;<unknown>
db $E0, $C7                     ;Unknown
db $04                          ;Player move Left
db $94, $01                     ;Sprite 194 do event: Move Up
db $86, $03                     ;Sprite 086 do event: Move Down
db $70                          ;Very short pause
db $88, $10                     ;Sprite 088 do event: face up, left hand forward
db $89, $10                     ;Sprite 089 do event: face up, left hand forward
db $C7, $06                     ;Play next 06 bytes simultaneously
db $94, $03                     ;Sprite 194 do event: Move Down
db $86, $01                     ;Sprite 086 do event: Move Up
db $88, $01                     ;Sprite 088 do event: Move Up
db $B5, $20                     ;Play Sound Effect Spear
db $C5                          ;<unknown>
db $E0, $94                     ;Unknown
;db $A0, $86                     ;(Message) 86
db $A4, $C7                     ;Set Event Flag 1C7
db $04                          ;Player move Left
db $94, $03                     ;Sprite 194 do event: Move Down
db $86, $01                     ;Sprite 086 do event: Move Up
db $71                          ;Short pause
db $86, $03                     ;Sprite 086 do event: Move Down
db $B5, $20                     ;Play Sound Effect Spear
db $C5                          ;<unknown>
db $E0, $73                     ;Unknown
;db $A0, $03                     ;(Message) 03
db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
db $94, $02                     ;Sprite 194 do event: Move Right
db $86, $02                     ;Sprite 086 do event: Move Right
db $94, $06                     ;Sprite 194 do event: Bounce
db $86, $06                     ;Sprite 086 do event: Bounce
db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
db $94, $02                     ;Sprite 194 do event: Move Right
db $86, $02                     ;Sprite 086 do event: Move Right
db $CD, $FC, $02                ;Run event index 02FC
db $90, $13                     ;Sprite 190 do event: face right, down hand backward
db $90, $06                     ;Sprite 190 do event: Bounce
db $CD, $FC, $02                ;Run event index 02FC
db $90, $10                     ;Sprite 190 do event: face up, left hand forward
db $CD, $FC, $02                ;Run event index 02FC
db $CD, $FC, $02                ;Run event index 02FC
db $86, $0B                     ;Sprite 086 do event: 0B
db $94, $0B                     ;Sprite 194 do event: 0B
db $14                          ;Player pose: face down, left hand forward
db $09                          ;Player Show
db $B1, $04                     ;Set Player Sprite 04
db $D3, $84, $00, $00           ;Sprite 84 set map position 00, 00
db $CD, $FF, $02                ;Run event index 02FF
db $CD, $80, $04                ;Run event index 0480
db $CB, $F2, $02                ;Clear Flag 2/3/4/5/F2 02
db $CA, $F5, $02                ;Set Flag 2/3/4/5/F5 02
db $CA, $F6, $02                ;Set Flag 2/3/4/5/F6 02
db $CA, $F7, $02                ;Set Flag 2/3/4/5/F7 02
db $CA, $F8, $02                ;Set Flag 2/3/4/5/F8 02
db $CA, $F9, $02                ;Set Flag 2/3/4/5/F9 02
db $CA, $05, $03                ;Set Flag 2/3/4/5/05 03
db $CA, $06, $03                ;Set Flag 2/3/4/5/06 03
db $CA, $07, $03                ;Set Flag 2/3/4/5/07 03
db $A2, $AA                     ;Set Event Flag 0AA
db $CC, $1F                  ;Custom destination flag 1F
db $FF                          ;End Event


padbyte $00
pad $C8D283

; $C8D157 → $C3A2B
; First goblin fight

org $C93952

db $93, $0A                     ;Sprite 193 do event: Hide
db $BD, $29, $FF                ;Start Event Battle 29
db $CB, $F6, $02                ;Clear Flag 2/3/4/5/F6 02
db $CB, $00, $03                ;Clear Flag 2/3/4/5/00 03
db $A2, $69                     ;Set Event Flag 069
db $FF                          ;End Event


padbyte $00
pad $C3A2B

; gilgamesh 3
; $C93428 → C9356F

org $C93428

db $8F, $0A                     ;Sprite 08F do event: Hide
db $91, $0A                     ;Sprite 191 do event: Hide
db $92, $0A                     ;Sprite 192 do event: Hide
db $93, $0A                     ;Sprite 193 do event: Hide
db $86, $0A                     ;Sprite 086 do event: Hide
db $BD, $1F, $FF                ;Start Event Battle 1F
db $A5, $FE                     ;Clear Event Flag 1FE
db $94, $0A                     ;Sprite 194 do event: Hide
db $87, $0A                     ;Sprite 087 do event: Hide
db $84, $0A                     ;Sprite 084 do event: Hide
db $86, $0A                     ;Sprite 086 do event: Hide
db $D3, $81, $00, $00           ;Sprite 81 set map position 00, 00
db $01
db $01
db $01
db $01
db $01
db $01
db $A2, $6D                     ;Set Event Flag 06D
db $A2, $AA						; This is talking to Zeza in the sub first
db $CA, $01, $03                ;Set Flag 2/3/4/5/01 03
db $CB, $07, $03                ;Clear Flag 2/3/4/5/07 03
db $CB, $06, $03                ;Clear Flag 2/3/4/5/06 03
db $CB, $00, $03                ;Clear Flag 2/3/4/5/00 03
db $CA, $08, $03                ;Set Flag 2/3/4/5/08 03
db $CB, $F5, $02                ;Clear Flag 2/3/4/5/F5 02
db $CB, $F6, $02                ;Clear Flag 2/3/4/5/F6 02
db $CB, $F7, $02                ;Clear Flag 2/3/4/5/F7 02
db $CB, $F8, $02                ;Clear Flag 2/3/4/5/F8 02
db $CB, $F9, $02                ;Clear Flag 2/3/4/5/F9 02
db $FF                          ;End Event

padbyte $00
pad $C9356F