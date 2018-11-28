hirom
!base = $C00000

; ; Talk to Zeza in cabin to get to sub
; ; Set first cutscene flag right here

; ; $C93A5B → $C93AB9
; org $C93A5B

; db $3D                          ;Player pose: face up, both arms raised out
; db $0C                          ;<Unknown>
; db $87, $A4                     ;Sprite 087 do event: A4
; db $87, $0B                     ;Sprite 087 do event: 0B
; db $78                          ;<Unknown>
; db $C7, $03                     ;Play next 03 bytes simultaneously
; db $87, $02                     ;Sprite 087 do event: Move Right
; db $02                          ;Player Move Right
; db $B5, $66                     ;Play Sound Effect Fire beast
; db $F3, $1F, $10, $11           ;Set Map Tiles 1F 10 11
; db $69                  ;Player or Sprite Pose
; db $68                  ;Player or Sprite Pose
; db $79                          ;'The Crash Event'
; db $78                          ;<Unknown>
; db $0B                          ;<Unknown>
; db $87, $0B                     ;Sprite 087 do event: 0B
; db $76                          ;<Unknown>
; db $87, $10                     ;Sprite 087 do event: face up, left hand forward
; db $87, $07                     ;Sprite 087 do event: 07
; db $87, $08                     ;Sprite 087 do event: 08
; db $87, $04                     ;Sprite 087 do event: Move Left
; db $87, $06                     ;Sprite 087 do event: Bounce
; db $87, $03                     ;Sprite 087 do event: Move Down
; db $87, $0A                     ;Sprite 087 do event: Hide
; db $04                          ;Player move Left
; db $05                          ;Player Bounce in Place
; db $01                          ;Player Move Up
; db $0A                          ;Player Hide
; db $D0, $81, $40                ;(Music) 81 40
; db $C4, $08                     ;Fade out Speed 08
; db $E1, $57, $01, $8D, $0D, $00 ;Return from cutscene? 57 01 8D 0D 00
; db $09                          ;Player Show
; db $C3, $0A                     ;Fade in Speed 0A
; db $A2, $C1                     ;Set Event Flag 0C1
; db $A2, $0F                     ;Set Event Flag 00F
; db $CB, $F5, $02                ;Clear Flag 2/3/4/5/F5 02
; db $CB, $F6, $02                ;Clear Flag 2/3/4/5/F6 02
; db $CB, $F7, $02                ;Clear Flag 2/3/4/5/F7 02
; db $CB, $F8, $02                ;Clear Flag 2/3/4/5/F8 02
; db $CB, $F9, $02                ;Clear Flag 2/3/4/5/F9 02
; db $CA, $44, $02                ;Set Flag 2/3/4/5/44 02
; db $CA, $45, $02                ;Set Flag 2/3/4/5/45 02
; db $CA, $46, $02                ;Set Flag 2/3/4/5/46 02
; db $CA, $47, $02                ;Set Flag 2/3/4/5/47 02
; db $CA, $48, $02                ;Set Flag 2/3/4/5/48 02
; db $FF                          ;End Event



; padbyte $00
; pad $C93AB9



; $C93F24 → $C93F49
; then
; $C94CFA → $C94CFA

; Zeza talk in sub to get into tower

org $C93F24

db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
db $E0, $03                     ;Unknown
db $20                          ;Player pose: face down, left hand raised out
db $B3, $A3, $91
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $04                          ;Player move Left
db $04                          ;Player move Left
db $E3, $57, $01, $8D, $0F, $00 ;Inter-map cutscene? 57 01 8D 0F 00
db $40                          ;Player pose: face down, looking right, eyes lowered
db $3F                          ;Player pose: face down, looking left, eyes lowered
db $14                          ;Player pose: face down, left hand forward

db $CD, $D9, $03                ;Run event index 03D9
db $FF                          ;End Event


padbyte $00
pad $C93F49


org $C94CAE

db $C3, $0a					  ; Fade in
db $84, $10                     ;Sprite 084 do event: face up, left hand forward
db $84, $02                     ;Sprite 084 do event: Move Right
db $84, $01                     ;Sprite 084 do event: Move Up
db $84, $01                     ;Sprite 084 do event: Move Up
db $84, $04                     ;Sprite 084 do event: Move Left
db $84, $01                     ;Sprite 084 do event: Move Up
db $10                          ;Player pose: face up, left hand forward
db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
db $84, $58                     ;Sprite 084 do event: 58
db $84, $20                     ;Sprite 084 do event: face down, left hand raised out
db $B5, $8E                     ;Play Sound Effect Treasure chest
db $F3, $0D, $0B, $10           ;Set Map Tiles 0D 0B 10
db $04                          ;Player move Left
db $14                          ;Player pose: face down, left hand forward
db $85, $0A                     ;Sprite 085 do event: Hide
db $84, $01                     ;Sprite 084 do event: Move Up
db $84, $0A                     ;Sprite 084 do event: Hide
db $B5, $8E                     ;Play Sound Effect Treasure chest
db $F3, $0D, $0B, $10           ;Set Map Tiles 0D 0B 10
db $03                          ;Player Move Down
db $13                          ;Player pose: face right, down hand backward
db $A2, $6E                     ;Set Event Flag 06E. This sets Zeza's bombing cutscene immediately
db $CB, $D8, $00                ;Clear Flag 2/3/4/5/D8 00
db $CB, $DA, $00                ;Clear Flag 2/3/4/5/DA 00
db $CB, $DB, $00                ;Clear Flag 2/3/4/5/DB 00
db $FF                          ;End Event


padbyte $00
pad $C94CFA

; Zeza first cutscene in barrier tower

; org $C8D2D7


