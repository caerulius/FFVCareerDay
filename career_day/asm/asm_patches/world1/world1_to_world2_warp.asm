; World 1 → World 2 Warp
; Bypasses tent cutscene, straight to Exdeath's castle as Galuf 
; Addresses $C8A6D3 → $C8A94C


hirom
!base = $C00000

org $C8A6D3

db $C4, $03                     ;Fade out Speed 03
db $72                          ;Timing
db $72                          ;Timing
db $72                          ;Timing
db $0A                          ;Player Hide
db $E1, $E1, $00, $97, $1A, $00 ;Return from cutscene? E1 00 97 1A 00
db $A5, $FE                     ;Clear Event Flag 1FE
db $F3, $1B, $1E, $00           ;Set Map Tiles 1B 1E 00
db $02                          ;Player Move Right
db $B1, $04                     ;Set Player Sprite 04
db $38                          ;Player pose: face down, squatting
db $C3, $0A                     ;Fade in Speed 0A
db $82, $07                     ;Sprite 082 do event 07
db $82, $08                     ;Sprite 082 do event 08
db $82, $0B                     ;Sprite 082 do event 0B
db $82, $44                     ;Sprite 082 do event face down, head lowered, left hand forward
db $CE, $0C, $02                ;Play next 02 bytes 0C times
db $82, $03                     ;Sprite 082 do event Move Down
db $09                          ;Player Show
db $82, $0A                     ;Sprite 082 do event Hide
db $72                          ;Timing
db $14                          ;Player pose: face down, left hand forward
db $73                          ;Timing
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $B5, $8E                     ;Play Sound Effect Treasure chest
db $F3, $1B, $1E, $00           ;Set Map Tiles 1B 1E 00
db $12                          ;Player pose: face right, standing
; db $3F                          ;Player pose: face down, looking left, eyes lowered
db $CA, $15, $03                ;Set Flag 2/3/4/5/15 03
db $CB, $2D, $03                ;Clear Flag 2/3/4/5/2D 03
db $CB, $2E, $03                ;Clear Flag 2/3/4/5/2E 03
db $CA, $18, $03                ;Set Flag 2/3/4/5/18 03
db $A2, $55                     ;Set Event Flag 055
db $A4, $7F                     ;Set Event Flag 17F
db $B7, $02                     ;Add/Remove character 02
db $CD, $7F, $05                ;Run event index 057F
db $CD, $42, $07                ;Run event index 0742
db $B7, $80                     ;Add/Remove character 80
db $C2, $03                     ;Map 03
db $B7, $F0                     ;Add/Remove character F0
db $B7, $F1                     ;Add/Remove character F1
db $B7, $F3                     ;Add/Remove character F3
db $A5, $F8                     ;Turn off bit 01 at address 0x7e0a53 (removes world map 4 meteors waypoint)
db $CC, $18                  ;Custom destination flag 18
db $FF                          ;End Event


padbyte $00
pad $C8A94C