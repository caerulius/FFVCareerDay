hirom
!base = $C00000

; $C8CECB → $C8CFE9

org $C8CECB

db $E0, $2A                     ;Unknown
db $01                          ;Player Move Up
db $20                          ;Player pose: face down, left hand raised out
db $20                          ;Player pose: face down, left hand raised out
db $00                          ;Player Hold
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $02                          ;Player Move Right
db $B1, $02                     ;Set Player Sprite 02
db $80, $09                     ;Sprite 080 do event: Show
db $82, $09                     ;Sprite 082 do event: Show
db $81, $09                     ;Sprite 081 do event: Show
db $C7, $06                     ;Play next 06 bytes simultaneously
db $80, $02                     ;Sprite 080 do event: Move Right
db $81, $01                     ;Sprite 081 do event: Move Up
db $82, $04                     ;Sprite 082 do event: Move Left
db $10                          ;Player pose: face up, left hand forward
db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $81, $01                     ;Sprite 081 do event: Move Up
db $70                          ;Very short pause
db $81, $24                     ;Sprite 081 do event: face down, right hand raised in
db $70                          ;Short pause
db $D0, $81, $60                ;(Music) 81 60
db $70                          ;Very short pause
db $82, $26                     ;Sprite 082 do event: face up, right hand raised out
db $70                          ;Very short pause
db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
db $70                          ;Medium pause
db $BE, $41                     ;Rumble effect of 41 magnitude
db $B5, $84                     ;Play Sound Effect Exdeath destroyed 2
db $70                          ;Medium pause
db $70                          ;Long pause
db $B4, $31                     ;Play Background Music Run!
db $B5, $84                     ;Play Sound Effect Exdeath destroyed 2
db $BE, $4F                     ;Rumble effect of 4F magnitude
db $3A                          ;Player pose: face down, surprised
db $80, $4A                     ;Sprite 080 do event: garbage
db $82, $4A                     ;Sprite 082 do event: garbage
db $81, $4A                     ;Sprite 081 do event: garbage
db $70                          ;Very long pause
db $BE, $45                     ;Rumble effect of 45 magnitude
db $70                          ;Short pause
db $81, $03                     ;Sprite 081 do event: Move Down
db $10                          ;Player pose: face up, left hand forward
db $80, $26                     ;Sprite 080 do event: face up, right hand raised out
db $70                          ;Very short pause
db $82, $22                     ;Sprite 082 do event: face down, left hand on head
db $70                          ;Short pause
db $70                          ;Very short pause
db $C7, $05                     ;Play next 05 bytes simultaneously
db $82, $03                     ;Sprite 082 do event: Move Down
db $04                          ;Player move Left
db $80, $04                     ;Sprite 080 do event: Move Left
db $C7, $07                     ;Play next 07 bytes simultaneously
db $82, $03                     ;Sprite 082 do event: Move Down
db $03                          ;Player Move Down
db $80, $04                     ;Sprite 080 do event: Move Left
db $81, $03                     ;Sprite 081 do event: Move Down
db $C7, $07                     ;Play next 07 bytes simultaneously
db $82, $03                     ;Sprite 082 do event: Move Down
db $03                          ;Player Move Down
db $80, $03                     ;Sprite 080 do event: Move Down
db $81, $04                     ;Sprite 081 do event: Move Left
db $C4, $08                     ;Fade out Speed 08
db $BE, $40                     ;Rumble effect of 40 magnitude
db $A4, $E8                     ;Set Event Flag 1E8
db $A4, $E9                     ;Set Event Flag 1E9
db $E3, $01, $00, $70, $65, $6C ;Inter-map cutscene? 01 00 70 65 6C
db $C1, $00                     ;<Unknown>
db $DB                          ;Restore Player status
db $09                          ;Player Show
db $C3, $0A                     ;Fade in Speed 0A
db $B4, $1D                     ;Play Background Music The Dragon Spreads its Wings
db $7B                          ;*YOU DIDNT MEAN TO USE THIS*
db $CC, $1E                  ;Custom destination flag 1E
db $FF                          ;End Event

padbyte $00
pad $C8CFE9