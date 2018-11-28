hirom
!base = $C00000

; Frankly this one's a mess but it does work and I left in the old code in case something needs to be added in later. 
; This handles from starting Guardians boss to going back to world map, skipping a lot in between
; However, for the key item cutscene, Cara has 1 text box, then the world map is given 


; $C95FFC → $C96861
; Boss → Waiting for Cara

org $C95FFC



db $CE, $03, $01                ;Play next 01 bytes 03 times
db $01                          ;Player Move Up
db $BE, $05                     ;Rumble effect of 05 magnitude
db $71                          ;Short pause
db $B5, $43                     ;Play Sound Effect Gate opens
db $F3, $10, $16, $72           ;Set Map Tiles 10 16 72
db $79                          ;'The Crash Event'
db $79                          ;'The Crash Event'
db $79                          ;'The Crash Event'
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $11                          ;Player pose: face up, right hand forward
db $71                          ;Short pause
db $BE, $00                     ;Rumble effect of 00 magnitude
db $14                          ;Player pose: face down, left hand forward
db $73                          ;Long pause
db $CE, $05, $01                ;Play next 01 bytes 05 times
db $01                          ;Player Move Up
db $71                          ;Short pause
db $92, $09                     ;Sprite 192 do event: Show
db $0A                          ;Player Hide
db $94, $09                     ;Sprite 194 do event: Show
db $93, $09                     ;Sprite 193 do event: Show
db $95, $09                     ;Sprite 195 do event: Show
db $C7, $06                     ;Play next 06 bytes simultaneously
db $94, $02                     ;Sprite 194 do event: Move Right
db $95, $04                     ;Sprite 195 do event: Move Left
db $93, $03                     ;Sprite 193 do event: Move Down
db $94, $20                     ;Sprite 194 do event: face down, left hand raised out
db $95, $20                     ;Sprite 195 do event: face down, left hand raised out
db $93, $20                     ;Sprite 193 do event: face down, left hand raised out
db $8D, $11                     ;Sprite 08D do event: face up, right hand forward
db $8E, $11                     ;Sprite 08E do event: face up, right hand forward
db $8F, $11                     ;Sprite 08F do event: face up, right hand forward
db $90, $11                     ;Sprite 190 do event: face up, right hand forward
db $C5                          ;<unknown>
db $20                          ;Player pose: face down, left hand raised out
db $C7, $08                     ;Play next 08 bytes simultaneously
db $8D, $03                     ;Sprite 08D do event: Move Down
db $8E, $03                     ;Sprite 08E do event: Move Down
db $8F, $03                     ;Sprite 08F do event: Move Down
db $90, $03                     ;Sprite 190 do event: Move Down
db $C5                          ;<unknown>
db $20                          ;Player pose: face down, left hand raised out
db $C7, $08                     ;Play next 08 bytes simultaneously
db $8D, $03                     ;Sprite 08D do event: Move Down
db $8E, $03                     ;Sprite 08E do event: Move Down
db $8F, $03                     ;Sprite 08F do event: Move Down
db $90, $03                     ;Sprite 190 do event: Move Down
db $C5                          ;<unknown>
db $20                          ;Player pose: face down, left hand raised out
db $C5                          ;<unknown>
db $20                          ;Player pose: face down, left hand raised out
db $C5                          ;<unknown>
db $20                          ;Player pose: face down, left hand raised out
db $8D, $13                     ;Sprite 08D do event: face right, down hand backward
db $8E, $13                     ;Sprite 08E do event: face right, down hand backward
db $8F, $13                     ;Sprite 08F do event: face right, down hand backward
db $90, $13                     ;Sprite 190 do event: face right, down hand backward
db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
db $8D, $03                     ;Sprite 08D do event: Move Down
db $8E, $04                     ;Sprite 08E do event: Move Left
db $8F, $02                     ;Sprite 08F do event: Move Right
db $90, $03                     ;Sprite 190 do event: Move Down
db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
db $8D, $03                     ;Sprite 08D do event: Move Down
db $8E, $03                     ;Sprite 08E do event: Move Down
db $8F, $03                     ;Sprite 08F do event: Move Down
db $90, $03                     ;Sprite 190 do event: Move Down
db $C7, $04                     ;Play next 04 bytes simultaneously
db $8E, $03                     ;Sprite 08E do event: Move Down
db $8F, $03                     ;Sprite 08F do event: Move Down
db $95, $26                     ;Sprite 195 do event: face up, right hand raised out
db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
db $94, $22                     ;Sprite 194 do event: face down, left hand on head
db $93, $22                     ;Sprite 193 do event: face down, left hand on head
db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
db $8D, $02                     ;Sprite 08D do event: Move Right
db $8E, $02                     ;Sprite 08E do event: Move Right
db $8F, $04                     ;Sprite 08F do event: Move Left
db $90, $04                     ;Sprite 190 do event: Move Left
db $93, $20                     ;Sprite 193 do event: face down, left hand raised out
db $94, $20                     ;Sprite 194 do event: face down, left hand raised out
db $95, $20                     ;Sprite 195 do event: face down, left hand raised out
db $92, $20                     ;Sprite 192 do event: face down, left hand raised out
db $8D, $0A                     ;Sprite 08D do event: Hide
db $8E, $0A                     ;Sprite 08E do event: Hide
db $8F, $0A                     ;Sprite 08F do event: Hide
db $90, $0A                     ;Sprite 190 do event: Hide
db $BD, $21, $FF                ;Start Event Battle 21


; db $D0, $80, $00                ;(Music) 80 00
; db $8D, $12                     ;Sprite 08D do event: face right, standing
; db $8E, $12                     ;Sprite 08E do event: face right, standing
; db $8F, $12                     ;Sprite 08F do event: face right, standing
; db $90, $12                     ;Sprite 190 do event: face right, standing
; db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
; db $8D, $04                     ;Sprite 08D do event: Move Left
; db $8E, $01                     ;Sprite 08E do event: Move Up
; db $8F, $01                     ;Sprite 08F do event: Move Up
; db $90, $02                     ;Sprite 190 do event: Move Right
; db $CF, $03, $08                ;Play next 08 bytes simultaneously 03 times
; db $8D, $01                     ;Sprite 08D do event: Move Up
; db $8E, $01                     ;Sprite 08E do event: Move Up
; db $8F, $01                     ;Sprite 08F do event: Move Up
; db $90, $01                     ;Sprite 190 do event: Move Up
; db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
; db $8D, $01                     ;Sprite 08D do event: Move Up
; db $90, $01                     ;Sprite 190 do event: Move Up
; db $75                          ;Extremely long pause
; db $C8, $BE, $85                ;Display Message/Text/Dialogue BE 85
; db $B4, $2D                     ;Play Background Music The Evil Lord Exdeath
; db $A4, $FE                     ;Set Event Flag 1FE
; db $71                          ;Short pause
; db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
; db $70                          ;Very short pause
; db $94, $26                     ;Sprite 194 do event: face up, right hand raised out
; db $95, $26                     ;Sprite 195 do event: face up, right hand raised out
; db $93, $26                     ;Sprite 193 do event: face up, right hand raised out
; db $74                          ;Very long pause
; db $97, $09                     ;Sprite 197 do event: Show
; db $97, $12                     ;Sprite 197 do event: face right, standing
; db $CE, $02, $02                ;Play next 02 bytes 02 times
; db $97, $02                     ;Sprite 197 do event: Move Right
; db $71                          ;Short pause
; db $C8, $BF, $05                ;Display Message/Text/Dialogue BF 05
; db $73                          ;Long pause
; db $C8, $C0, $05                ;Display Message/Text/Dialogue C0 05
; db $73                          ;Long pause
; db $B5, $02                     ;Play Sound Effect Void, Image
; db $C5                          ;<unknown>
; db $E0, $89                     ;Unknown
; db $09                          ;Player Show
; db $8D, $0A                     ;Sprite 08D do event: Hide
; db $70                          ;Very short pause
; db $B5, $02                     ;Play Sound Effect Void, Image
; db $C5                          ;<unknown>
; db $E0, $8A                     ;Unknown
; db $09                          ;Player Show
; db $8E, $0A                     ;Sprite 08E do event: Hide
; db $70                          ;Very short pause
; db $B5, $02                     ;Play Sound Effect Void, Image
; db $C5                          ;<unknown>
; db $E0, $8B                     ;Unknown
; db $09                          ;Player Show
; db $8F, $0A                     ;Sprite 08F do event: Hide
; db $70                          ;Very short pause
; db $B5, $02                     ;Play Sound Effect Void, Image
; db $C5                          ;<unknown>
; db $E0, $8C                     ;Unknown
; db $09                          ;Player Show
; db $90, $0A                     ;Sprite 190 do event: Hide
; db $71                          ;Short pause
; db $92, $20                     ;Sprite 192 do event: face down, left hand raised out
; db $93, $20                     ;Sprite 193 do event: face down, left hand raised out
; db $94, $20                     ;Sprite 194 do event: face down, left hand raised out
; db $95, $20                     ;Sprite 195 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $C8, $C1, $85                ;Display Message/Text/Dialogue C1 85
; db $71                          ;Short pause
; db $97, $22                     ;Sprite 197 do event: face down, left hand on head
; db $94, $26                     ;Sprite 194 do event: face up, right hand raised out
; db $93, $26                     ;Sprite 193 do event: face up, right hand raised out
; db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
; db $95, $26                     ;Sprite 195 do event: face up, right hand raised out
; db $71                          ;Short pause
; db $C8, $C2, $05                ;Display Message/Text/Dialogue C2 05
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $E0, $89                     ;Unknown
; db $13                          ;Player pose: face right, down hand backward
; db $8A, $13                     ;Sprite 08A do event: face right, down hand backward
; db $8B, $13                     ;Sprite 08B do event: face right, down hand backward
; db $8C, $13                     ;Sprite 08C do event: face right, down hand backward
; db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
; db $89, $03                     ;Sprite 089 do event: Move Down
; db $8A, $04                     ;Sprite 08A do event: Move Left
; db $8B, $04                     ;Sprite 08B do event: Move Left
; db $8C, $04                     ;Sprite 08C do event: Move Left
; db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
; db $89, $03                     ;Sprite 089 do event: Move Down
; db $8A, $03                     ;Sprite 08A do event: Move Down
; db $8B, $04                     ;Sprite 08B do event: Move Left
; db $8C, $04                     ;Sprite 08C do event: Move Left
; db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
; db $89, $03                     ;Sprite 089 do event: Move Down
; db $8A, $03                     ;Sprite 08A do event: Move Down
; db $8B, $03                     ;Sprite 08B do event: Move Down
; db $8C, $04                     ;Sprite 08C do event: Move Left
; db $CF, $02, $08                ;Play next 08 bytes simultaneously 02 times
; db $89, $03                     ;Sprite 089 do event: Move Down
; db $8A, $03                     ;Sprite 08A do event: Move Down
; db $8B, $03                     ;Sprite 08B do event: Move Down
; db $8C, $03                     ;Sprite 08C do event: Move Down
; db $CF, $02, $06                ;Play next 06 bytes simultaneously 02 times
; db $8A, $03                     ;Sprite 08A do event: Move Down
; db $8B, $03                     ;Sprite 08B do event: Move Down
; db $8C, $03                     ;Sprite 08C do event: Move Down
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $8B, $03                     ;Sprite 08B do event: Move Down
; db $8C, $03                     ;Sprite 08C do event: Move Down
; db $97, $10                     ;Sprite 197 do event: face up, left hand forward
; db $97, $02                     ;Sprite 197 do event: Move Right
; db $97, $02                     ;Sprite 197 do event: Move Right
; db $C8, $C3, $05                ;Display Message/Text/Dialogue C3 05
; db $B5, $64                     ;Play Sound Effect Awoken
; db $C5                          ;<unknown>
; db $E0, $93                     ;Unknown
; db $10                          ;Player pose: face up, left hand forward
; db $94, $10                     ;Sprite 194 do event: face up, left hand forward
; db $95, $10                     ;Sprite 195 do event: face up, left hand forward
; db $92, $10                     ;Sprite 192 do event: face up, left hand forward
; db $89, $10                     ;Sprite 089 do event: face up, left hand forward
; db $8A, $10                     ;Sprite 08A do event: face up, left hand forward
; db $8B, $10                     ;Sprite 08B do event: face up, left hand forward
; db $8C, $10                     ;Sprite 08C do event: face up, left hand forward
; db $93, $42                     ;Sprite 193 do event: garbage
; db $94, $42                     ;Sprite 194 do event: garbage
; db $92, $43                     ;Sprite 192 do event: face down, looking right, pointing finger right
; db $95, $43                     ;Sprite 195 do event: face down, looking right, pointing finger right
; db $93, $0B                     ;Sprite 193 do event: 0B
; db $94, $0B                     ;Sprite 194 do event: 0B
; db $92, $0B                     ;Sprite 192 do event: 0B
; db $95, $0B                     ;Sprite 195 do event: 0B
; db $93, $05                     ;Sprite 193 do event: Bounce
; db $94, $05                     ;Sprite 194 do event: Bounce
; db $92, $05                     ;Sprite 192 do event: Bounce
; db $95, $05                     ;Sprite 195 do event: Bounce
; db $C7, $10                     ;Play next 10 bytes simultaneously
; db $89, $02                     ;Sprite 089 do event: Move Right
; db $8A, $02                     ;Sprite 08A do event: Move Right
; db $8B, $02                     ;Sprite 08B do event: Move Right
; db $8C, $02                     ;Sprite 08C do event: Move Right
; db $92, $00                     ;Sprite 192 do event: Hold
; db $95, $03                     ;Sprite 195 do event: Move Down
; db $94, $03                     ;Sprite 194 do event: Move Down
; db $93, $03                     ;Sprite 193 do event: Move Down
; db $C5                          ;<unknown>
; db $E0, $93                     ;Unknown
; db $05                          ;Player Bounce in Place
; db $94, $05                     ;Sprite 194 do event: Bounce
; db $92, $05                     ;Sprite 192 do event: Bounce
; db $95, $05                     ;Sprite 195 do event: Bounce
; db $C7, $10                     ;Play next 10 bytes simultaneously
; db $89, $02                     ;Sprite 089 do event: Move Right
; db $8A, $02                     ;Sprite 08A do event: Move Right
; db $8B, $02                     ;Sprite 08B do event: Move Right
; db $8C, $02                     ;Sprite 08C do event: Move Right
; db $92, $00                     ;Sprite 192 do event: Hold
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $03                     ;Sprite 194 do event: Move Down
; db $93, $03                     ;Sprite 193 do event: Move Down
; db $B5, $87                     ;Play Sound Effect ?
; db $F3, $90, $0E, $32           ;Set Map Tiles 90 0E 32
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $01                          ;Player Move Up
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $01                          ;Player Move Up
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $5E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $01                          ;Player Move Up
; db $CD, $73, $07                ;Run event index 0773
; db $97, $02                     ;Sprite 197 do event: Move Right
; db $97, $02                     ;Sprite 197 do event: Move Right
; db $CD, $73, $07                ;Run event index 0773
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $C5                          ;<unknown>
; db $E0, $F3                     ;Unknown
; db $90, $0E                     ;Sprite 190 do event: 0E
; db $32                          ;Player pose: collapsed, facing left
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $5E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $92, $0E, $31           ;Set Map Tiles 92 0E 31
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $93, $0E, $31           ;Set Map Tiles 93 0E 31
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $92, $13                     ;Sprite 192 do event: face right, down hand backward
; db $93, $13                     ;Sprite 193 do event: face right, down hand backward
; db $94, $13                     ;Sprite 194 do event: face right, down hand backward
; db $95, $13                     ;Sprite 195 do event: face right, down hand backward
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $94, $0E, $31           ;Set Map Tiles 94 0E 31
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $95, $0E, $31           ;Set Map Tiles 95 0E 31
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $96, $0E, $31           ;Set Map Tiles 96 0E 31
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $97, $0E, $31           ;Set Map Tiles 97 0E 31
; db $6E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6E                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $95, $02                     ;Sprite 195 do event: Move Right
; db $94, $02                     ;Sprite 194 do event: Move Right
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $F3, $98, $0E, $31           ;Set Map Tiles 98 0E 31
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $93, $0B                     ;Sprite 193 do event: 0B
; db $94, $0B                     ;Sprite 194 do event: 0B
; db $92, $0B                     ;Sprite 192 do event: 0B
; db $95, $0B                     ;Sprite 195 do event: 0B
; db $C5                          ;<unknown>
; db $E0, $BE                     ;Unknown
; db $05                          ;Player Bounce in Place
; db $93, $42                     ;Sprite 193 do event: garbage
; db $94, $42                     ;Sprite 194 do event: garbage
; db $92, $43                     ;Sprite 192 do event: face down, looking right, pointing finger right
; db $95, $43                     ;Sprite 195 do event: face down, looking right, pointing finger right
; db $C5                          ;<unknown>
; db $E0, $71                     ;Unknown
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $C5                          ;<unknown>
; db $E0, $B3                     ;Unknown
; db $10                          ;Player pose: face up, left hand forward
; db $D0, $82, $80                ;(Music) 82 80
; db $C4, $03                     ;Fade out Speed 03
; db $B3, $10                     ;Pause for 100 cycles
; db $D0, $F2, $00                ;(Music) F2 00
; db $E1, $12, $01, $A4, $14, $00 ;Return from cutscene? 12 01 A4 14 00
; db $82, $3E                     ;Sprite 082 do event: face up, both arms raised in
; db $C3, $06                     ;Fade in Speed 06
; db $75                          ;Extremely long pause
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $C8, $C4, $05                ;Display Message/Text/Dialogue C4 05
; db $83, $09                     ;Sprite 083 do event: Show
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $70                          ;Very short pause
; db $83, $5A                     ;Sprite 083 do event: 5A
; db $83, $0B                     ;Sprite 083 do event: 0B
; db $83, $05                     ;Sprite 083 do event: Bounce
; db $83, $00                     ;Sprite 083 do event: Hold
; db $83, $05                     ;Sprite 083 do event: Bounce
; db $83, $00                     ;Sprite 083 do event: Hold
; db $83, $0B                     ;Sprite 083 do event: 0B
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
; db $70                          ;Very short pause
; db $C8, $C5, $05                ;Display Message/Text/Dialogue C5 05
; db $83, $54                     ;Sprite 083 do event: 54
; db $70                          ;Very short pause
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $70                          ;Very short pause
; db $83, $54                     ;Sprite 083 do event: 54
; db $70                          ;Very short pause
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
; db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $C8, $C6, $05                ;Display Message/Text/Dialogue C6 05
; db $80, $0C                     ;Sprite 080 do event: 0C
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $27                     ;Sprite 080 do event: face up, right hand raised in
; db $71                          ;Short pause
; db $80, $67                     ;Sprite 080 do event: 67
; db $70                          ;Very short pause
; db $80, $27                     ;Sprite 080 do event: face up, right hand raised in
; db $72                          ;Medium pause
; db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $80, $21                     ;Sprite 080 do event: face down, left hand raised in
; db $70                          ;Very short pause
; db $80, $42                     ;Sprite 080 do event: garbage
; db $70                          ;Very short pause
; db $80, $32                     ;Sprite 080 do event: collapsed, facing left
; db $B5, $5D                     ;Play Sound Effect Dragon cry
; db $74                          ;Very long pause
; db $E3, $6D, $01, $94, $0E, $00 ;Inter-map cutscene? 6D 01 94 0E 00
; db $CD, $78, $07                ;Run event index 0778
; db $B5, $87                     ;Play Sound Effect ?
; db $C3, $03                     ;Fade in Speed 03
; db $B3, $10                     ;Pause for 100 cycles
; db $C8, $C7, $05                ;Display Message/Text/Dialogue C7 05
; db $71                          ;Short pause
; db $B5, $64                     ;Play Sound Effect Awoken
; db $C5                          ;<unknown>
; db $E0, $71                     ;Unknown
; db $C5                          ;<unknown>
; db $E0, $70                     ;Unknown
; db $B5, $84                     ;Play Sound Effect Exdeath destroyed 2
; db $F3, $90, $0E, $39           ;Set Map Tiles 90 0E 39
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6D                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $B8, $E3                     ;Toggle Additive Tint by E3
; db $BE, $0A                     ;Rumble effect of 0A magnitude
; db $75                          ;Extremely long pause
; db $BE, $0F                     ;Rumble effect of 0F magnitude
; db $75                          ;Extremely long pause
; db $7D                          ;<Unknown>
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $80, $71                     ;Sprite 080 do event: 71
; db $C5                          ;<unknown>
; db $80, $71                     ;Sprite 080 do event: 71
; db $88, $09                     ;Sprite 088 do event: Show
; db $CE, $0B, $02                ;Play next 02 bytes 0B times
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $93, $20                     ;Sprite 193 do event: face down, left hand raised out
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $D0, $81, $80                ;(Music) 81 80
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $B5, $02                     ;Play Sound Effect Void, Image
; db $C5                          ;<unknown>
; db $E0, $88                     ;Unknown
; db $0A                          ;Player Hide
; db $93, $5B                     ;Sprite 193 do event: 5B
; db $93, $0B                     ;Sprite 193 do event: 0B
; db $93, $05                     ;Sprite 193 do event: Bounce
; db $93, $04                     ;Sprite 193 do event: Move Left
; db $93, $0B                     ;Sprite 193 do event: 0B
; db $C5                          ;<unknown>
; db $E0, $70                     ;Unknown
; db $F3, $99, $0E, $30           ;Set Map Tiles 99 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $98, $0E, $30           ;Set Map Tiles 98 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $97, $0E, $30           ;Set Map Tiles 97 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $96, $0E, $30           ;Set Map Tiles 96 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $95, $0E, $30           ;Set Map Tiles 95 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $94, $0E, $30           ;Set Map Tiles 94 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $93, $0E, $30           ;Set Map Tiles 93 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $92, $0E, $30           ;Set Map Tiles 92 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $91, $0E, $30           ;Set Map Tiles 91 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $04                     ;Pause for 04 cycles
; db $F3, $90, $0E, $30           ;Set Map Tiles 90 0E 30
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $75                          ;Extremely long pause
; db $C8, $C8, $85                ;Display Message/Text/Dialogue C8 85
; db $92, $09                     ;Sprite 192 do event: Show
; db $CE, $05, $02                ;Play next 02 bytes 05 times
; db $92, $01                     ;Sprite 192 do event: Move Up
; db $CE, $05, $02                ;Play next 02 bytes 05 times
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $CE, $04, $02                ;Play next 02 bytes 04 times
; db $92, $01                     ;Sprite 192 do event: Move Up
; db $CE, $02, $02                ;Play next 02 bytes 02 times
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $71                          ;Short pause
; db $C8, $C9, $85                ;Display Message/Text/Dialogue C9 85
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
; db $74                          ;Very long pause
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $93, $54                     ;Sprite 193 do event: 54
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $93, $24                     ;Sprite 193 do event: face down, right hand raised in
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $71                          ;Short pause
; db $93, $22                     ;Sprite 193 do event: face down, left hand on head
; db $71                          ;Short pause
; db $B4, $17                     ;Play Background Music Danger!
; db $C8, $CA, $85                ;Display Message/Text/Dialogue CA 85
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $B5, $AC                     ;Play Sound Effect ?
; db $71                          ;Short pause
; db $80, $09                     ;Sprite 080 do event: Show
; db $82, $09                     ;Sprite 082 do event: Show
; db $81, $09                     ;Sprite 081 do event: Show
; db $83, $09                     ;Sprite 083 do event: Show
; db $84, $09                     ;Sprite 084 do event: Show
; db $85, $09                     ;Sprite 085 do event: Show
; db $87, $09                     ;Sprite 087 do event: Show
; db $86, $09                     ;Sprite 086 do event: Show
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $70                          ;Very short pause
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $70                          ;Very short pause
; db $CF, $03, $10                ;Play next 10 bytes simultaneously 03 times
; db $80, $02                     ;Sprite 080 do event: Move Right
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $81, $02                     ;Sprite 081 do event: Move Right
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $87, $02                     ;Sprite 087 do event: Move Right
; db $86, $02                     ;Sprite 086 do event: Move Right
; db $C7, $10                     ;Play next 10 bytes simultaneously
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $81, $01                     ;Sprite 081 do event: Move Up
; db $83, $01                     ;Sprite 083 do event: Move Up
; db $84, $01                     ;Sprite 084 do event: Move Up
; db $85, $01                     ;Sprite 085 do event: Move Up
; db $87, $01                     ;Sprite 087 do event: Move Up
; db $86, $01                     ;Sprite 086 do event: Move Up
; db $CF, $04, $10                ;Play next 10 bytes simultaneously 04 times
; db $80, $02                     ;Sprite 080 do event: Move Right
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $81, $02                     ;Sprite 081 do event: Move Right
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $87, $02                     ;Sprite 087 do event: Move Right
; db $86, $02                     ;Sprite 086 do event: Move Right
; db $71                          ;Short pause
; db $92, $20                     ;Sprite 192 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $92, $22                     ;Sprite 192 do event: face down, left hand on head
; db $71                          ;Short pause
; db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
; db $71                          ;Short pause
; db $C8, $CB, $85                ;Display Message/Text/Dialogue CB 85
; db $74                          ;Very long pause
; db $93, $02                     ;Sprite 193 do event: Move Right
; db $71                          ;Short pause
; db $C8, $CC, $85                ;Display Message/Text/Dialogue CC 85
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $71                          ;Short pause
; db $92, $13                     ;Sprite 192 do event: face right, down hand backward
; db $92, $07                     ;Sprite 192 do event: 07
; db $92, $08                     ;Sprite 192 do event: 08
; db $92, $26                     ;Sprite 192 do event: face up, right hand raised out
; db $92, $0B                     ;Sprite 192 do event: 0B
; db $92, $49                     ;Sprite 192 do event: face down, right hand up in
; db $CF, $06, $12                ;Play next 12 bytes simultaneously 06 times
; db $92, $03                     ;Sprite 192 do event: Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $84, $03                     ;Sprite 084 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $87, $03                     ;Sprite 087 do event: Move Down
; db $86, $03                     ;Sprite 086 do event: Move Down
; db $B5, $7E                     ;Play Sound Effect ?
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $92, $4A                     ;Sprite 192 do event: garbage
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $D0, $F2, $00                ;(Music) F2 00
; db $92, $49                     ;Sprite 192 do event: face down, right hand up in
; db $CF, $05, $12                ;Play next 12 bytes simultaneously 05 times
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $80, $04                     ;Sprite 080 do event: Move Left
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $81, $04                     ;Sprite 081 do event: Move Left
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $84, $04                     ;Sprite 084 do event: Move Left
; db $85, $04                     ;Sprite 085 do event: Move Left
; db $87, $04                     ;Sprite 087 do event: Move Left
; db $86, $04                     ;Sprite 086 do event: Move Left
; db $B5, $7E                     ;Play Sound Effect ?
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $92, $4A                     ;Sprite 192 do event: garbage
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $D0, $F2, $00                ;(Music) F2 00
; db $92, $49                     ;Sprite 192 do event: face down, right hand up in
; db $CF, $02, $12                ;Play next 12 bytes simultaneously 02 times
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $80, $02                     ;Sprite 080 do event: Move Right
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $81, $02                     ;Sprite 081 do event: Move Right
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $87, $02                     ;Sprite 087 do event: Move Right
; db $86, $02                     ;Sprite 086 do event: Move Right
; db $CF, $0A, $12                ;Play next 12 bytes simultaneously 0A times
; db $92, $01                     ;Sprite 192 do event: Move Up
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $81, $01                     ;Sprite 081 do event: Move Up
; db $83, $01                     ;Sprite 083 do event: Move Up
; db $84, $01                     ;Sprite 084 do event: Move Up
; db $85, $01                     ;Sprite 085 do event: Move Up
; db $87, $01                     ;Sprite 087 do event: Move Up
; db $86, $01                     ;Sprite 086 do event: Move Up
; db $B5, $7E                     ;Play Sound Effect ?
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $92, $4A                     ;Sprite 192 do event: garbage
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $D0, $F2, $00                ;(Music) F2 00
; db $92, $49                     ;Sprite 192 do event: face down, right hand up in
; db $CF, $02, $12                ;Play next 12 bytes simultaneously 02 times
; db $92, $03                     ;Sprite 192 do event: Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $84, $03                     ;Sprite 084 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $87, $03                     ;Sprite 087 do event: Move Down
; db $86, $03                     ;Sprite 086 do event: Move Down
; db $CF, $03, $12                ;Play next 12 bytes simultaneously 03 times
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $80, $02                     ;Sprite 080 do event: Move Right
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $81, $02                     ;Sprite 081 do event: Move Right
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $84, $02                     ;Sprite 084 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $87, $02                     ;Sprite 087 do event: Move Right
; db $86, $02                     ;Sprite 086 do event: Move Right
; db $B5, $7E                     ;Play Sound Effect ?
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $92, $4A                     ;Sprite 192 do event: garbage
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $D0, $F2, $00                ;(Music) F2 00
; db $92, $3E                     ;Sprite 192 do event: face up, both arms raised in
; db $73                          ;Long pause
; db $93, $10                     ;Sprite 193 do event: face up, left hand forward
; db $93, $01                     ;Sprite 193 do event: Move Up
; db $93, $01                     ;Sprite 193 do event: Move Up
; db $93, $01                     ;Sprite 193 do event: Move Up
; db $93, $22                     ;Sprite 193 do event: face down, left hand on head
; db $73                          ;Long pause
; db $C8, $CD, $85                ;Display Message/Text/Dialogue CD 85
; db $71                          ;Short pause
; db $8E, $3E                     ;Sprite 08E do event: face up, both arms raised in
; db $71                          ;Short pause
; db $C8, $CE, $85                ;Display Message/Text/Dialogue CE 85
; db $93, $03                     ;Sprite 193 do event: Move Down
; db $93, $03                     ;Sprite 193 do event: Move Down
; db $93, $03                     ;Sprite 193 do event: Move Down
; db $93, $22                     ;Sprite 193 do event: face down, left hand on head
; db $B5, $87                     ;Play Sound Effect ?
; db $C5                          ;<unknown>
; db $E0, $B2                     ;Unknown
; db $06                          ;Player Bounce in Place
; db $F3, $90, $0E, $30           ;Set Map Tiles 90 0E 30
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $91, $0E, $30           ;Set Map Tiles 91 0E 30
; db $5E                  ;Player or Sprite Pose
; db $5E                  ;Player or Sprite Pose
; db $5E                  ;Player or Sprite Pose
; db $5E                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $92, $0E, $30           ;Set Map Tiles 92 0E 30
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $93, $0E, $30           ;Set Map Tiles 93 0E 30
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $94, $0E, $30           ;Set Map Tiles 94 0E 30
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $95, $0E, $30           ;Set Map Tiles 95 0E 30
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $96, $0E, $30           ;Set Map Tiles 96 0E 30
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $6D                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $97, $0E, $30           ;Set Map Tiles 97 0E 30
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $6E                  ;Player or Sprite Pose
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $98, $0E, $31           ;Set Map Tiles 98 0E 31
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $6F                  ;Player or Sprite Pose
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $BE, $09                     ;Rumble effect of 09 magnitude
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $74                          ;Very long pause
; db $8E, $24                     ;Sprite 08E do event: face down, right hand raised in
; db $71                          ;Short pause
; db $8E, $26                     ;Sprite 08E do event: face up, right hand raised out
; db $73                          ;Long pause
; db $8E, $12                     ;Sprite 08E do event: face right, standing
; db $BE, $01                     ;Rumble effect of 01 magnitude
; db $F3, $98, $0E, $01           ;Set Map Tiles 98 0E 01
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $01                          ;Player Move Up
; db $CD, $79, $07                ;Run event index 0779
; db $BE, $01                     ;Rumble effect of 01 magnitude
; db $F3, $97, $0E, $01           ;Set Map Tiles 97 0E 01
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $01                          ;Player Move Up
; db $CD, $79, $07                ;Run event index 0779
; db $BE, $01                     ;Rumble effect of 01 magnitude
; db $F3, $96, $0E, $01           ;Set Map Tiles 96 0E 01
; db $7F                          ;*YOU DIDNT MEAN TO USE THIS*
; db $01                          ;Player Move Up
; db $CD, $79, $07                ;Run event index 0779
; db $C8, $CF, $85                ;Display Message/Text/Dialogue CF 85
; db $73                          ;Long pause
; db $8E, $20                     ;Sprite 08E do event: face down, left hand raised out
; db $73                          ;Long pause
; db $92, $42                     ;Sprite 192 do event: garbage
; db $71                          ;Short pause
; db $C8, $D0, $85                ;Display Message/Text/Dialogue D0 85
; db $71                          ;Short pause
; db $CD, $7B, $07                ;Run event index 077B
; db $B5, $81                     ;Play Sound Effect Crystal shatters
; db $CD, $7C, $07                ;Run event index 077C
; db $B5, $07                     ;Play Sound Effect Quicksand
; db $CD, $7D, $07                ;Run event index 077D
; db $B5, $07                     ;Play Sound Effect Quicksand
; db $CD, $7E, $07                ;Run event index 077E
; db $71                          ;Short pause
; db $B5, $07                     ;Play Sound Effect Quicksand
; db $CD, $7F, $07                ;Run event index 077F
; db $71                          ;Short pause
; db $B5, $07                     ;Play Sound Effect Quicksand
; db $CD, $80, $07                ;Run event index 0780
; db $C8, $D2, $05                ;Display Message/Text/Dialogue D2 05
; db $74                          ;Very long pause
; db $CD, $81, $07                ;Run event index 0781
; db $8D, $0A                     ;Sprite 08D do event: Hide
; db $CD, $42, $07                ;Run event index 0742
; db $B7, $80                     ;Add/Remove character 80
; db $B7, $89                     ;Add/Remove character 89
; db $B7, $8B                     ;Add/Remove character 8B
; db $D0, $80, $00                ;(Music) 80 00
; db $E2, $3B                     ;Unknown
; db $FF                          ;End Event

; -------------------------------
; db $CD, $43, $04                ;Run event index 0443
; db $FF                          ;End Event

; -------------------------------
; db $CD, $42, $07                ;Run event index 0742
; db $B7, $00                     ;Add/Remove character 00
; db $B7, $09                     ;Add/Remove character 09
; db $B7, $0B                     ;Add/Remove character 0B
; db $B7, $82                     ;Add/Remove character 82
; db $D3, $8E, $D0, $0E           ;Sprite 8E set map position D0, 0E
; db $8E, $09                     ;Sprite 08E do event: Show
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $BE, $0F                     ;Rumble effect of 0F magnitude
; db $8E, $42                     ;Sprite 08E do event: garbage
; db $93, $5B                     ;Sprite 193 do event: 5B
; db $8E, $0B                     ;Sprite 08E do event: 0B
; db $93, $0B                     ;Sprite 193 do event: 0B
; db $8E, $05                     ;Sprite 08E do event: Bounce
; db $93, $05                     ;Sprite 193 do event: Bounce
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $8E, $02                     ;Sprite 08E do event: Move Right
; db $93, $04                     ;Sprite 193 do event: Move Left
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $75                          ;Extremely long pause
; db $F3, $99, $0F, $20           ;Set Map Tiles 99 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $98, $0F, $20           ;Set Map Tiles 98 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $97, $0F, $20           ;Set Map Tiles 97 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $96, $0F, $20           ;Set Map Tiles 96 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $95, $0F, $20           ;Set Map Tiles 95 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $94, $0F, $20           ;Set Map Tiles 94 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $93, $0F, $20           ;Set Map Tiles 93 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $92, $0F, $20           ;Set Map Tiles 92 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $91, $0F, $20           ;Set Map Tiles 91 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B2, $06                     ;Pause for 06 cycles
; db $F3, $90, $0F, $20           ;Set Map Tiles 90 0F 20
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $01                          ;Player Move Up
; db $B3, $10                     ;Pause for 100 cycles
; db $8A, $12                     ;Sprite 08A do event: face right, standing
; db $8B, $12                     ;Sprite 08B do event: face right, standing
; db $8C, $12                     ;Sprite 08C do event: face right, standing
; db $8A, $04                     ;Sprite 08A do event: Move Left
; db $8A, $04                     ;Sprite 08A do event: Move Left
; db $8A, $01                     ;Sprite 08A do event: Move Up
; db $8A, $0A                     ;Sprite 08A do event: Hide
; db $8B, $04                     ;Sprite 08B do event: Move Left
; db $8B, $04                     ;Sprite 08B do event: Move Left
; db $8B, $01                     ;Sprite 08B do event: Move Up
; db $8B, $01                     ;Sprite 08B do event: Move Up
; db $8B, $0A                     ;Sprite 08B do event: Hide
; db $8C, $04                     ;Sprite 08C do event: Move Left
; db $8C, $04                     ;Sprite 08C do event: Move Left
; db $8C, $01                     ;Sprite 08C do event: Move Up
; db $8C, $01                     ;Sprite 08C do event: Move Up
; db $8C, $01                     ;Sprite 08C do event: Move Up
; db $8C, $0A                     ;Sprite 08C do event: Hide
; db $73                          ;Long pause
; db $93, $54                     ;Sprite 193 do event: 54
; db $73                          ;Long pause
; db $CE, $14, $08                ;Play next 08 bytes 14 times
; db $93, $09                     ;Sprite 193 do event: Show
; db $B2, $02                     ;Pause for 02 cycles
; db $93, $0A                     ;Sprite 193 do event: Hide
; db $B2, $02                     ;Pause for 02 cycles
; db $B5, $96                     ;Play Sound Effect Evil disappears
; db $C5                          ;<unknown>
; db $20                          ;Player pose: face down, left hand raised out
; db $B3, $18                     ;Pause for 180 cycles
; db $8F, $12                     ;Sprite 08F do event: face right, standing
; db $90, $12                     ;Sprite 190 do event: face right, standing
; db $91, $12                     ;Sprite 191 do event: face right, standing
; db $75                          ;Extremely long pause
; db $8F, $3E                     ;Sprite 08F do event: face up, both arms raised in
; db $75                          ;Extremely long pause
; db $8F, $24                     ;Sprite 08F do event: face down, right hand raised in
; db $71                          ;Short pause
; db $8F, $26                     ;Sprite 08F do event: face up, right hand raised out
; db $B2, $08                     ;Pause for 08 cycles
; db $8F, $20                     ;Sprite 08F do event: face down, left hand raised out
; db $90, $3E                     ;Sprite 190 do event: face up, both arms raised in
; db $71                          ;Short pause
; db $8F, $04                     ;Sprite 08F do event: Move Left
; db $8F, $01                     ;Sprite 08F do event: Move Up
; db $8F, $01                     ;Sprite 08F do event: Move Up
; db $8F, $22                     ;Sprite 08F do event: face down, left hand on head
; db $71                          ;Short pause
; db $91, $3E                     ;Sprite 191 do event: face up, both arms raised in
; db $71                          ;Short pause
; db $91, $24                     ;Sprite 191 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $90, $24                     ;Sprite 190 do event: face down, right hand raised in
; db $74                          ;Very long pause
; db $92, $0B                     ;Sprite 192 do event: 0B
; db $92, $3E                     ;Sprite 192 do event: face up, both arms raised in
; db $73                          ;Long pause
; db $92, $24                     ;Sprite 192 do event: face down, right hand raised in
; db $C8, $D4, $85                ;Display Message/Text/Dialogue D4 85
; db $71                          ;Short pause
; db $90, $26                     ;Sprite 190 do event: face up, right hand raised out
; db $71                          ;Short pause
; db $C8, $D5, $05                ;Display Message/Text/Dialogue D5 05
; db $70                          ;Very short pause
; db $91, $26                     ;Sprite 191 do event: face up, right hand raised out
; db $8F, $26                     ;Sprite 08F do event: face up, right hand raised out
; db $71                          ;Short pause
; db $8F, $10                     ;Sprite 08F do event: face up, left hand forward
; db $90, $10                     ;Sprite 190 do event: face up, left hand forward
; db $91, $10                     ;Sprite 191 do event: face up, left hand forward
; db $92, $10                     ;Sprite 192 do event: face up, left hand forward
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $8F, $04                     ;Sprite 08F do event: Move Left
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $92, $03                     ;Sprite 192 do event: Move Down
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $8F, $04                     ;Sprite 08F do event: Move Left
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $8F, $04                     ;Sprite 08F do event: Move Left
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $8F, $01                     ;Sprite 08F do event: Move Up
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $92, $04                     ;Sprite 192 do event: Move Left
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $8F, $04                     ;Sprite 08F do event: Move Left
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $92, $03                     ;Sprite 192 do event: Move Down
; db $92, $22                     ;Sprite 192 do event: face down, left hand on head
; db $B1, $02                     ;Set Player Sprite 02
; db $16                          ;Player pose: face left, standing
; db $09                          ;Player Show
; db $8F, $0A                     ;Sprite 08F do event: Hide
; db $C7, $05                     ;Play next 05 bytes simultaneously
; db $04                          ;Player move Left
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $C7, $05                     ;Play next 05 bytes simultaneously
; db $04                          ;Player move Left
; db $91, $01                     ;Sprite 191 do event: Move Up
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $91, $01                     ;Sprite 191 do event: Move Up
; db $90, $04                     ;Sprite 190 do event: Move Left
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $90, $01                     ;Sprite 190 do event: Move Up
; db $90, $20                     ;Sprite 190 do event: face down, left hand raised out
; db $91, $04                     ;Sprite 191 do event: Move Left
; db $91, $24                     ;Sprite 191 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $C8, $D6, $05                ;Display Message/Text/Dialogue D6 05
; db $75                          ;Extremely long pause
; db $D4, $10, $F8, $0F           ;(Music) 10 F8 0F
; db $C8, $D7, $05                ;Display Message/Text/Dialogue D7 05
; db $71                          ;Short pause
; db $92, $3D                     ;Sprite 192 do event: face up, both arms raised out
; db $71                          ;Short pause
; db $C8, $D8, $05                ;Display Message/Text/Dialogue D8 05
; db $71                          ;Short pause
; db $C8, $D9, $05                ;Display Message/Text/Dialogue D9 05
; db $C5                          ;<unknown>
; db $80, $73                     ;Sprite 080 do event: 73
; db $C8, $DA, $05                ;Display Message/Text/Dialogue DA 05
; db $C5                          ;<unknown>
; db $E0, $73                     ;Unknown
; db $C8, $DB, $05                ;Display Message/Text/Dialogue DB 05
; db $C5                          ;<unknown>
; db $40                          ;Player pose: face down, looking right, eyes lowered
; db $B3, $10                     ;Pause for 100 cycles
; db $CD, $87, $07                ;Run event index 0787
; db $75                          ;Extremely long pause
; db $C8, $DC, $05                ;Display Message/Text/Dialogue DC 05
; db $71                          ;Short pause
; db $92, $22                     ;Sprite 192 do event: face down, left hand on head
; db $71                          ;Short pause
; db $92, $02                     ;Sprite 192 do event: Move Right
; db $70                          ;Very short pause
; db $92, $43                     ;Sprite 192 do event: face down, looking right, pointing finger right
; db $71                          ;Short pause
; db $C8, $DD, $05                ;Display Message/Text/Dialogue DD 05
; db $74                          ;Very long pause
; db $91, $3E                     ;Sprite 191 do event: face up, both arms raised in
; db $30                          ;Player pose: face left, head lowered
; db $92, $43                     ;Sprite 192 do event: face down, looking right, pointing finger right
; db $B3, $20                     ;Pause for 200 cycles
; db $90, $02                     ;Sprite 190 do event: Move Right
; db $90, $01                     ;Sprite 190 do event: Move Up
; db $90, $0A                     ;Sprite 190 do event: Hide
; db $70                          ;Very short pause
; db $91, $02                     ;Sprite 191 do event: Move Right
; db $91, $03                     ;Sprite 191 do event: Move Down
; db $91, $0A                     ;Sprite 191 do event: Hide
; db $74                          ;Very long pause
; db $16                          ;Player pose: face left, standing
; db $92, $11                     ;Sprite 192 do event: face up, right hand forward
; db $92, $43                     ;Sprite 192 do event: face down, looking right, pointing finger right
db $75
db $C4, $00
db $A2, $75                     ;Set Event Flag 075
;db $D1, $1E, $EC, $00           ;(Timer?) 1E EC 00
;db $FF                          ;End Event














; Definitely include VVV
; db $D1, $1E, $EC, $00           ;(Timer?) 1E EC 00














; Below ported from cutscene after Cara timer 
; $C8C16A → $C8C3D8




; db $7C                          ;<Unknown>
; db $D0, $80, $80                ;(Music) 80 80
; db $B3, $18                     ;Pause for 180 cycles
; db $B4, $11                     ;Play Background Music (Nothing)
; db $C5                          ;<unknown>
; db $E0, $73                     ;Unknown
; db $C5                          ;<unknown>
; db $E0, $70                     ;Unknown
; db $CD, $73, $07                ;Run event index 0773
; db $92, $24                     ;Sprite 192 do event: face down, right hand raised in
; db $71                          ;Short pause
; db $C8, $E8, $05                ;Display Message/Text/Dialogue E8 05
; db $71                          ;Short pause
; db $BE, $05                     ;Rumble effect of 05 magnitude
; db $71                          ;Short pause
; db $F3, $10, $16, $72           ;Set Map Tiles 10 16 72
; db $D4, $32, $D5, $80           ;(Music) 32 D5 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $80                     ;Sprite 089 do event: 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $80                     ;Sprite 089 do event: 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $80                     ;Sprite 089 do event: 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $80                     ;Sprite 089 do event: 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $80                     ;Sprite 089 do event: 80
; db $32                          ;Player pose: collapsed, facing left
; db $89, $66                     ;Sprite 089 do event: 66
; db $78                          ;<Unknown>
; db $67                  ;Player or Sprite Pose
; db $71                          ;Short pause
; db $BE, $00                     ;Rumble effect of 00 magnitude
; db $14                          ;Player pose: face down, left hand forward
; db $71                          ;Short pause
; db $92, $10                     ;Sprite 192 do event: face up, left hand forward
; db $CE, $0E, $02                ;Play next 02 bytes 0E times
; db $92, $03                     ;Sprite 192 do event: Move Down
; db $92, $0A                     ;Sprite 192 do event: Hide


db $E3, $67, $01, $93, $12, $00 ;Inter-map cutscene? 67 01 93 12 00
db $CD, $40, $04                ;Run event index 0440
db $88, $09                     ;Sprite 088 do event: Show
db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
db $0A                          ;Player Hide
db $D3, $82, $93, $0F           ;Sprite 82 set map position 93, 0F
db $D3, $83, $93, $11           ;Sprite 83 set map position 93, 11
db $D3, $85, $93, $11           ;Sprite 85 set map position 93, 11
db $C3, $02                     ;Fade in Speed 08
db $B3, $10                     ;Pause for 100 cycles
db $CD, $73, $07                ;Run event index 0773
;db $C8, $DE, $05                ;Display Message/Text/Dialogue DE 05
; db $88, $02                     ;Sprite 088 do event: Move Right
; db $70                          ;Very short pause
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $71                          ;Short pause
; db $CD, $73, $07                ;Run event index 0773
; db $88, $20                     ;Sprite 088 do event: face down, left hand raised out
; db $74                          ;Very long pause
; db $B4, $30                     ;Play Background Music The Day Will Come
; db $CD, $88, $07                ;Run event index 0788
; db $CD, $73, $07                ;Run event index 0773
; ;db $C8, $DF, $05                ;Display Message/Text/Dialogue DF 05


db $71                          ;Short pause
db $88, $03                     ;Sprite 088 do event: Move Down
db $88, $03                     ;Sprite 088 do event: Move Down
db $71                          ;Short pause
;db $C8, $E0, $05                ;Display Message/Text/Dialogue E0 05
db $71                          ;Short pause
db $88, $3E                     ;Sprite 088 do event: face up, both arms raised in
db $B3, $0A                     ;Pause for 0A0 cycles
;db $C8, $E1, $05                ;Display Message/Text/Dialogue E1 05
db $75
db $B3, $0A                     ;Pause for 0A0 cycles
db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
;db $73                          ;Long pause
db $86, $01                     ;Sprite 086 do event: Move Up
db $C5                          ;<unknown>
db $40                          ;Player pose: face down, looking right, eyes lowered
db $86, $0A                     ;Sprite 086 do event: Hide
db $70                          ;Very short pause
db $C5                          ;<unknown>
db $40                          ;Player pose: face down, looking right, eyes lowered
db $70                          ;Very short pause
db $C5                          ;<unknown>
db $40                          ;Player pose: face down, looking right, eyes lowered
db $C8, $E2, $05                ;Display Message/Text/Dialogue E2 05

db $C4, $02
db $75
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $40                          ;Player pose: face down, looking right, eyes lowered
; db $73                          ;Long pause
; db $C8, $E3, $05                ;Display Message/Text/Dialogue E3 05
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $73                          ;Long pause
; db $88, $3E                     ;Sprite 088 do event: face up, both arms raised in
; db $B3, $10                     ;Pause for 100 cycles
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $75                          ;Extremely long pause
; db $88, $3E                     ;Sprite 088 do event: face up, both arms raised in
; db $70                          ;Very short pause
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $70                          ;Very short pause
; db $C8, $E4, $05                ;Display Message/Text/Dialogue E4 05
; db $71                          ;Short pause
; db $C5                          ;<unknown>
; db $40                          ;Player pose: face down, looking right, eyes lowered
; db $71                          ;Short pause
; db $75                          ;Extremely long pause
; db $82, $09                     ;Sprite 082 do event: Show
; db $70                          ;Very short pause
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $83, $09                     ;Sprite 083 do event: Show
; db $85, $09                     ;Sprite 085 do event: Show
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $85, $04                     ;Sprite 085 do event: Move Left
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $85, $24                     ;Sprite 085 do event: face down, right hand raised in
; db $C8, $E5, $05                ;Display Message/Text/Dialogue E5 05
; db $71                          ;Short pause
; db $88, $22                     ;Sprite 088 do event: face down, left hand on head
; db $B2, $08                     ;Pause for 08 cycles
; db $88, $20                     ;Sprite 088 do event: face down, left hand raised out
; db $73                          ;Long pause
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $73                          ;Long pause
; db $D0, $80, $40                ;(Music) 80 40
; db $C8, $E6, $05                ;Display Message/Text/Dialogue E6 05
; db $71                          ;Short pause
; db $85, $3E                     ;Sprite 085 do event: face up, both arms raised in
; db $83, $3E                     ;Sprite 083 do event: face up, both arms raised in
; db $82, $3E                     ;Sprite 082 do event: face up, both arms raised in
; db $70                          ;Very short pause
; db $85, $24                     ;Sprite 085 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $72                          ;Medium pause
; db $88, $3F                     ;Sprite 088 do event: face down, looking left, eyes lowered
; db $70                          ;Very short pause
; db $88, $20                     ;Sprite 088 do event: face down, left hand raised out
; db $72                          ;Medium pause
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $74                          ;Very long pause
; db $88, $30                     ;Sprite 088 do event: face left, head lowered
; db $73                          ;Long pause
; db $C8, $E7, $05                ;Display Message/Text/Dialogue E7 05
; db $73                          ;Long pause
; db $B5, $5D                     ;Play Sound Effect Dragon cry
; db $80, $09                     ;Sprite 080 do event: Show
; db $81, $09                     ;Sprite 081 do event: Show
; db $81, $12                     ;Sprite 081 do event: face right, standing
; db $CE, $05, $02                ;Play next 02 bytes 05 times
; db $81, $01                     ;Sprite 081 do event: Move Up
; db $71                          ;Short pause
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $80, $0E                     ;Sprite 080 do event: 0E
; db $80, $13                     ;Sprite 080 do event: face right, down hand backward
; db $CE, $04, $02                ;Play next 02 bytes 04 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $80, $10                     ;Sprite 080 do event: face up, left hand forward
; db $CE, $05, $02                ;Play next 02 bytes 05 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $80, $12                     ;Sprite 080 do event: face right, standing
; db $CE, $03, $02                ;Play next 02 bytes 03 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $80, $11                     ;Sprite 080 do event: face up, right hand forward
; db $CE, $02, $02                ;Play next 02 bytes 02 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $73                          ;Long pause
; db $80, $0D                     ;Sprite 080 do event: 0D
; db $80, $22                     ;Sprite 080 do event: face down, left hand on head
; db $70                          ;Very short pause
; db $80, $21                     ;Sprite 080 do event: face down, left hand raised in
; db $70                          ;Very short pause
; db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $88, $02                     ;Sprite 088 do event: Move Right
; db $88, $02                     ;Sprite 088 do event: Move Right
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $88, $26                     ;Sprite 088 do event: face up, right hand raised out
; db $72                          ;Medium pause
; db $72                          ;Medium pause
; db $88, $20                     ;Sprite 088 do event: face down, left hand raised out
; db $71                          ;Short pause
; db $85, $3E                     ;Sprite 085 do event: face up, both arms raised in
; db $83, $3E                     ;Sprite 083 do event: face up, both arms raised in
; db $82, $3E                     ;Sprite 082 do event: face up, both arms raised in
; db $70                          ;Very short pause
; db $85, $24                     ;Sprite 085 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $72                          ;Medium pause
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $88, $26                     ;Sprite 088 do event: face up, right hand raised out
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $85, $02                     ;Sprite 085 do event: Move Right
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $88, $05                     ;Sprite 088 do event: Bounce
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $88, $04                     ;Sprite 088 do event: Move Left
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $88, $0B                     ;Sprite 088 do event: 0B
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $83, $05                     ;Sprite 083 do event: Bounce
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $85, $03                     ;Sprite 085 do event: Move Down
; db $83, $0A                     ;Sprite 083 do event: Hide
; db $82, $05                     ;Sprite 082 do event: Bounce
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $85, $04                     ;Sprite 085 do event: Move Left
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $82, $0A                     ;Sprite 082 do event: Hide
; db $85, $05                     ;Sprite 085 do event: Bounce
; db $85, $04                     ;Sprite 085 do event: Move Left
; db $85, $0A                     ;Sprite 085 do event: Hide
; db $73                          ;Long pause
; db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
; db $72                          ;Medium pause
; db $CD, $B6, $01                ;Run event index 01B6
; db $CD, $B7, $01                ;Run event index 01B7
; db $88, $13                     ;Sprite 088 do event: face right, down hand backward
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $75                          ;Extremely long pause
; db $80, $12                     ;Sprite 080 do event: face right, standing
; db $88, $12                     ;Sprite 088 do event: face right, standing
; db $88, $07                     ;Sprite 088 do event: 07
; db $88, $08                     ;Sprite 088 do event: 08
; db $CF, $04, $04                ;Play next 04 bytes simultaneously 04 times
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $88, $01                     ;Sprite 088 do event: Move Up
; db $73                          ;Long pause
; db $80, $11                     ;Sprite 080 do event: face up, right hand forward
; db $88, $11                     ;Sprite 088 do event: face up, right hand forward
; db $81, $11                     ;Sprite 081 do event: face up, right hand forward
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $80, $12                     ;Sprite 080 do event: face right, standing
; db $88, $12                     ;Sprite 088 do event: face right, standing
; db $81, $12                     ;Sprite 081 do event: face right, standing
; db $CF, $02, $06                ;Play next 06 bytes simultaneously 02 times
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $80, $10                     ;Sprite 080 do event: face up, left hand forward
; db $88, $10                     ;Sprite 088 do event: face up, left hand forward
; db $81, $10                     ;Sprite 081 do event: face up, left hand forward
; db $76                          ;<Unknown>
; db $88, $22                     ;Sprite 088 do event: face down, left hand on head
; db $CF, $05, $07                ;Play next 07 bytes simultaneously 05 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $80, $13                     ;Sprite 080 do event: face right, down hand backward
; db $88, $13                     ;Sprite 088 do event: face right, down hand backward
; db $81, $13                     ;Sprite 081 do event: face right, down hand backward
; db $77                          ;<Unknown>
; db $CF, $0C, $07                ;Play next 07 bytes simultaneously 0C times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $C4, $03                     ;Fade out Speed 03
; db $CF, $08, $07                ;Play next 07 bytes simultaneously 08 times
; db $03                          ;Player Move Down
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $88, $03                     ;Sprite 088 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $73                          ;Long pause
; db $A5, $FE                     ;Clear Event Flag 1FE
; db $E1, $01, $20, $38, $79, $6C ;Return from cutscene? 01 20 38 79 6C
; db $B7, $0C                     ;Add/Remove character 0C
; db $76                          ;<Unknown>
; db $A4, $25                     ;Set Event Flag 125
; db $CB, $0E, $00                ;Clear Flag 2/3/4/5/0E 00
; db $CA, $0F, $00                ;Set Flag 2/3/4/5/0F 00
; db $CB, $1A, $03                ;Clear Flag 2/3/4/5/1A 03
; db $A4, $BF                     ;Set Event Flag 1BF
; db $CB, $44, $02                ;Clear Flag 2/3/4/5/44 02
; db $CB, $45, $02                ;Clear Flag 2/3/4/5/45 02
; db $CB, $46, $02                ;Clear Flag 2/3/4/5/46 02
; db $CB, $47, $02                ;Clear Flag 2/3/4/5/47 02
; db $CB, $48, $02                ;Clear Flag 2/3/4/5/48 02
; db $CB, $7B, $02                ;Clear Flag 2/3/4/5/7B 02
; db $CA, $49, $02                ;Set Flag 2/3/4/5/49 02
; db $CA, $4A, $02                ;Set Flag 2/3/4/5/4A 02
; db $CA, $4B, $02                ;Set Flag 2/3/4/5/4B 02
; db $CA, $4C, $02                ;Set Flag 2/3/4/5/4C 02
; db $CA, $4D, $02                ;Set Flag 2/3/4/5/4D 02
; db $09                          ;Player Show
; db $14                          ;Player pose: face down, left hand forward
; db $EB, $FF                     ;Unknown












;db $73                          ;Long pause
db $A5, $FE                     ;Clear Event Flag 1FE
db $E1, $01, $20, $38, $79, $6C ;Return from cutscene? 01 20 38 79 6C
db $B7, $0C                     ;Add/Remove character 0C
db $76                          ;<Unknown>
db $A4, $25                     ;Set Event Flag 125
db $CB, $0E, $00                ;Clear Flag 2/3/4/5/0E 00
db $CA, $0F, $00                ;Set Flag 2/3/4/5/0F 00
db $CB, $1A, $03                ;Clear Flag 2/3/4/5/1A 03
db $A4, $BF                     ;Set Event Flag 1BF
db $CB, $44, $02                ;Clear Flag 2/3/4/5/44 02
db $CB, $45, $02                ;Clear Flag 2/3/4/5/45 02
db $CB, $46, $02                ;Clear Flag 2/3/4/5/46 02
db $CB, $47, $02                ;Clear Flag 2/3/4/5/47 02
db $CB, $48, $02                ;Clear Flag 2/3/4/5/48 02
db $CB, $7B, $02                ;Clear Flag 2/3/4/5/7B 02
db $CA, $49, $02                ;Set Flag 2/3/4/5/49 02
db $CA, $4A, $02                ;Set Flag 2/3/4/5/4A 02
db $CA, $4B, $02                ;Set Flag 2/3/4/5/4B 02
db $CA, $4C, $02                ;Set Flag 2/3/4/5/4C 02
db $CA, $4D, $02                ;Set Flag 2/3/4/5/4D 02
db $C3, $02
db $09                          ;Player Show
db $14                          ;Player pose: face down, left hand forward
db $EB, $FF                     ;Unknown

padbyte $00
pad $C96861
