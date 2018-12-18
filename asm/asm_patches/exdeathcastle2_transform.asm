hirom
!base = $C00000

; C8BE7D → $C8BE80 is the trigger cutscene when you try to leave with Cara (with all the right flags), then the main cutscene plays

; $C8BE7D → $C8C09A
; Cara's transform cutscene

org $C8BE81

db $C8, $F4, $05                ;Display Message/Text/Dialogue F4 05
;db $71                          ;Short pause
db $80, $09                     ;Sprite 080 do event: Show
db $81, $09                     ;Sprite 081 do event: Show
db $82, $09                     ;Sprite 082 do event: Show
db $77                          ;<Unknown>
db $CE, $07, $01                ;Play next 01 bytes 07 times
db $04                          ;Player move Left
db $CE, $03, $01                ;Play next 01 bytes 03 times
db $01                          ;Player Move Up
db $72
db $E3, $EC, $00, $8B, $34, $00 ;Inter-map cutscene? EC 00 8B 34 00
; db $31
db $A2, $76                     ;Set Event Flag 076
db $CD, $E4, $00                ;Run event index 00E4
db $10
db $C5                          ;<unknown>
db $BE, $00                     ;Rumble effect of 00 magnitude
db $CB, $C0, $02                ;Clear Flag 2/3/4/5/C0 02
db $A5, $FE                     ;Clear Event Flag 1FE
db $7D                          ;<Unknown>
db $B4, $12                     ;Play Background Music Exdeath's Castle
db $C3, $03
db $73

db $FF                          ;End Event


padbyte $00
pad $C8C09A



; $C8C0B9 → $C8C0D3
; This small cutscene sets the path for Exdeath's first stairwell
; Nothing was changed for this after all

; org $C8C0B9

; db $F3, $0A, $2D, $22           ;Set Map Tiles 0A 2D 22
; db $92, $9B                     ;Sprite 192 do event: 9B
; db $92, $A2                     ;Sprite 192 do event: A2
; db $3F                          ;Player pose: face down, looking left, eyes lowered
; db $A2, $B2                     ;Set Event Flag 0B2
; db $01                          ;Player Move Up
; db $B2, $F3                     ;Pause for F3 cycles
; db $4A                          ;Player pose: garbage
; db $2D                          ;Player pose: face right, right hand out
; db $22                          ;Player pose: face down, left hand on head
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
; db $F9                          ;Noop
; db $4F                          ;Player pose: garbage
; db $F9                          ;Noop
; db $FF                          ;End Event


; pad $C8C0D3