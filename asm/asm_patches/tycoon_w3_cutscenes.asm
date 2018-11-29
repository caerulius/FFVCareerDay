hirom
!base = $C00000

; $C8DE22 → $C8E127

org $C8DE22

db $CD, $90, $03                ;Run event index 0390
db $CA, $40, $01                ;Set Flag 2/3/4/5/40 01
db $CA, $10, $01                ;Set Flag 2/3/4/5/10 01
db $CA, $11, $01                ;Set Flag 2/3/4/5/11 01
db $CA, $12, $01                ;Set Flag 2/3/4/5/12 01
db $CA, $13, $01                ;Set Flag 2/3/4/5/13 01
db $CA, $14, $01                ;Set Flag 2/3/4/5/14 01
db $CA, $19, $01                ;Set Flag 2/3/4/5/19 01
db $CA, $1A, $01                ;Set Flag 2/3/4/5/1A 01
db $CA, $1B, $01                ;Set Flag 2/3/4/5/1B 01
db $CA, $17, $01                ;Set Flag 2/3/4/5/17 01
db $CA, $18, $01                ;Set Flag 2/3/4/5/18 01
db $CB, $0E, $01                ;Clear Flag 2/3/4/5/0E 01
db $E3, $4C, $00, $23, $13, $00 ;Inter-map cutscene? 4C 00 23 13 00
db $CD, $7F, $05                ;Run event index 057F
db $CD, $42, $07                ;Run event index 0742
db $0A                          ;Player Hide
db $D8, $00, $0D, $D8           ;Unknown
db $02                          ;Player Move Right
db $0E                          ;<Unknown>
db $D8, $03, $0F, $D3           ;Unknown
db $84, $00                     ;Sprite 084 do event: Hold
db $00                          ;Player Hold
db $D3, $81, $00, $00           ;Sprite 81 set map position 00, 00
db $D8, $47, $CD, $D8           ;Unknown
db $48                          ;Player pose: garbage
db $CE, $D8, $49                ;Play next 49 bytes D8 times
db $CF, $D8, $CA                ;Play next CA bytes simultaneously D8 times
db $4D                          ;Player pose: garbage
db $D8, $CB, $4E, $D8           ;Unknown
db $CC                          ;Noop
db $4F                          ;Player pose: garbage
db $81, $10                     ;Sprite 081 do event: face up, left hand forward
db $80, $10                     ;Sprite 080 do event: face up, left hand forward
db $84, $10                     ;Sprite 084 do event: face up, left hand forward
db $87, $10                     ;Sprite 087 do event: face up, left hand forward
db $88, $10                     ;Sprite 088 do event: face up, left hand forward
db $89, $10                     ;Sprite 089 do event: face up, left hand forward
db $8A, $10                     ;Sprite 08A do event: face up, left hand forward
db $8B, $10                     ;Sprite 08B do event: face up, left hand forward
db $8C, $10                     ;Sprite 08C do event: face up, left hand forward
db $C3, $0A                     ;Fade in Speed 0A
db $CF, $04, $07                ;Play next 07 bytes simultaneously 04 times
db $80, $01                     ;Sprite 080 do event: Move Up
db $82, $01                     ;Sprite 082 do event: Move Up
db $83, $01                     ;Sprite 083 do event: Move Up
db $01                          ;Player Move Up
db $C7, $07                     ;Play next 07 bytes simultaneously
db $80, $01                     ;Sprite 080 do event: Move Up
db $82, $02                     ;Sprite 082 do event: Move Right
db $83, $01                     ;Sprite 083 do event: Move Up
db $01                          ;Player Move Up
db $CF, $02, $06                ;Play next 06 bytes simultaneously 02 times
db $80, $02                     ;Sprite 080 do event: Move Right
db $82, $02                     ;Sprite 082 do event: Move Right
db $83, $02                     ;Sprite 083 do event: Move Right
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $80, $0B                     ;Sprite 080 do event: 0B
db $C7, $04                     ;Play next 04 bytes simultaneously
db $82, $01                     ;Sprite 082 do event: Move Up
db $83, $02                     ;Sprite 083 do event: Move Right
db $C7, $04                     ;Play next 04 bytes simultaneously
db $82, $01                     ;Sprite 082 do event: Move Up
db $83, $01                     ;Sprite 083 do event: Move Up
db $C7, $04                     ;Play next 04 bytes simultaneously
db $82, $02                     ;Sprite 082 do event: Move Right
db $83, $01                     ;Sprite 083 do event: Move Up
db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
db $70                          ;Very short pause
db $80, $01                     ;Sprite 080 do event: Move Up
db $80, $0B                     ;Sprite 080 do event: 0B
db $CE, $05, $01                ;Play next 01 bytes 05 times
db $04                          ;Player move Left
db $F3, $1B, $0B, $10           ;Set Map Tiles 1B 0B 10
db $04                          ;Player move Left
db $14                          ;Player pose: face down, left hand forward
db $70                          ;Very short pause
db $D8, $04, $DE, $70           ;Unknown
;db $c8, $16, $86                ;Display Message/Text/Dialogue 16 86
db $CD, $DD, $06                ;Run event index 06DD
;db $c8, $17, $06                ;Display Message/Text/Dialogue 17 06
db $CE, $04, $04                ;Play next 04 bytes 04 times
db $82, $05                     ;Sprite 082 do event: Bounce
db $82, $00                     ;Sprite 082 do event: Hold
db $82, $0B                     ;Sprite 082 do event: 0B
db $82, $03                     ;Sprite 082 do event: Move Down
db $82, $04                     ;Sprite 082 do event: Move Left
db $82, $03                     ;Sprite 082 do event: Move Down
db $82, $03                     ;Sprite 082 do event: Move Down
db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
db $82, $04                     ;Sprite 082 do event: Move Left
db $70                          ;Very short pause
;db $c8, $18, $86                ;Display Message/Text/Dialogue 18 86
db $8D, $09                     ;Sprite 08D do event: Show
db $8E, $09                     ;Sprite 08E do event: Show
db $8F, $09                     ;Sprite 08F do event: Show
db $CE, $03, $10                ;Play next 10 bytes 03 times
db $B5, $0A                     ;Play Sound Effect Bouncing
db $8D, $05                     ;Sprite 08D do event: Bounce
db $8E, $05                     ;Sprite 08E do event: Bounce
db $8F, $05                     ;Sprite 08F do event: Bounce
db $C7, $06                     ;Play next 06 bytes simultaneously
db $8D, $00                     ;Sprite 08D do event: Hold
db $8E, $00                     ;Sprite 08E do event: Hold
db $8F, $00                     ;Sprite 08F do event: Hold
db $CE, $03, $06                ;Play next 06 bytes 03 times
db $82, $31                     ;Sprite 082 do event: face right, head lowered
db $70                          ;Very short pause
db $82, $32                     ;Sprite 082 do event: collapsed, facing left
db $70                          ;Very short pause
db $CE, $04, $02                ;Play next 02 bytes 04 times
db $83, $03                     ;Sprite 083 do event: Move Down
db $83, $04                     ;Sprite 083 do event: Move Left
db $83, $20                     ;Sprite 083 do event: face down, left hand raised out
db $70                          ;Very short pause
;db $c8, $19, $06                ;Display Message/Text/Dialogue 19 06
db $71                          ;Short pause
db $8D, $0A                     ;Sprite 08D do event: Hide
db $8E, $0A                     ;Sprite 08E do event: Hide
db $8F, $0A                     ;Sprite 08F do event: Hide
db $73                          ;Long pause
db $82, $26                     ;Sprite 082 do event: face up, right hand raised out
db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
db $D0, $81, $80                ;(Music) 81 80
db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
db $81, $01                     ;Sprite 081 do event: Move Up
db $84, $01                     ;Sprite 084 do event: Move Up
db $CF, $02, $04                ;Play next 04 bytes simultaneously 02 times
db $81, $04                     ;Sprite 081 do event: Move Left
db $84, $04                     ;Sprite 084 do event: Move Left
db $81, $24                     ;Sprite 081 do event: face down, right hand raised in
db $84, $04                     ;Sprite 084 do event: Move Left
db $84, $24                     ;Sprite 084 do event: face down, right hand raised in
db $81, $0B                     ;Sprite 081 do event: 0B
db $73                          ;Long pause
db $81, $01                     ;Sprite 081 do event: Move Up
db $81, $0B                     ;Sprite 081 do event: 0B
db $CF, $03, $04                ;Play next 04 bytes simultaneously 03 times
db $82, $02                     ;Sprite 082 do event: Move Right
db $83, $02                     ;Sprite 083 do event: Move Right
db $82, $26                     ;Sprite 082 do event: face up, right hand raised out
db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
db $B4, $14                     ;Play Background Music Waltz Suomi
db $CF, $02, $0C                ;Play next 0C bytes simultaneously 02 times
db $87, $01                     ;Sprite 087 do event: Move Up
db $88, $01                     ;Sprite 088 do event: Move Up
db $89, $01                     ;Sprite 089 do event: Move Up
db $8A, $04                     ;Sprite 08A do event: Move Left
db $8B, $04                     ;Sprite 08B do event: Move Left
db $8C, $04                     ;Sprite 08C do event: Move Left
db $C7, $0A                     ;Play next 0A bytes simultaneously
db $87, $02                     ;Sprite 087 do event: Move Right
db $88, $01                     ;Sprite 088 do event: Move Up
db $89, $02                     ;Sprite 089 do event: Move Right
db $8B, $04                     ;Sprite 08B do event: Move Left
db $8C, $04                     ;Sprite 08C do event: Move Left
db $CF, $02, $0C                ;Play next 0C bytes simultaneously 02 times
db $87, $02                     ;Sprite 087 do event: Move Right
db $88, $02                     ;Sprite 088 do event: Move Right
db $89, $02                     ;Sprite 089 do event: Move Right
db $8A, $01                     ;Sprite 08A do event: Move Up
db $8B, $04                     ;Sprite 08B do event: Move Left
db $8C, $04                     ;Sprite 08C do event: Move Left
db $C7, $08                     ;Play next 08 bytes simultaneously
db $87, $02                     ;Sprite 087 do event: Move Right
db $89, $02                     ;Sprite 089 do event: Move Right
db $8B, $01                     ;Sprite 08B do event: Move Up
db $8C, $01                     ;Sprite 08C do event: Move Up
db $C7, $06                     ;Play next 06 bytes simultaneously
db $87, $02                     ;Sprite 087 do event: Move Right
db $8B, $01                     ;Sprite 08B do event: Move Up
db $8C, $01                     ;Sprite 08C do event: Move Up
db $8B, $01                     ;Sprite 08B do event: Move Up
db $8A, $26                     ;Sprite 08A do event: face up, right hand raised out
db $8B, $26                     ;Sprite 08B do event: face up, right hand raised out
db $8C, $26                     ;Sprite 08C do event: face up, right hand raised out
db $87, $12                     ;Sprite 087 do event: face right, standing
db $88, $12                     ;Sprite 088 do event: face right, standing
db $89, $12                     ;Sprite 089 do event: face right, standing
db $8A, $12                     ;Sprite 08A do event: face right, standing
db $8B, $12                     ;Sprite 08B do event: face right, standing
db $8C, $12                     ;Sprite 08C do event: face right, standing
db $CD, $AA, $05                ;Run event index 05AA
db $75                          ;Extremely long pause
db $CE, $02, $10                ;Play next 10 bytes 02 times
db $CD, $A3, $05                ;Run event index 05A3
db $71                          ;Short pause
db $CD, $A4, $05                ;Run event index 05A4
db $71                          ;Short pause
db $CD, $A5, $05                ;Run event index 05A5
db $71                          ;Short pause
db $CD, $A6, $05                ;Run event index 05A6
db $71                          ;Short pause
db $78                          ;<Unknown>
db $02                          ;Player Move Right
db $C7, $0D                     ;Play next 0D bytes simultaneously
db $02                          ;Player Move Right
db $87, $02                     ;Sprite 087 do event: Move Right
db $88, $02                     ;Sprite 088 do event: Move Right
db $89, $04                     ;Sprite 089 do event: Move Left
db $8A, $02                     ;Sprite 08A do event: Move Right
db $8B, $02                     ;Sprite 08B do event: Move Right
db $8C, $04                     ;Sprite 08C do event: Move Left
db $02                          ;Player Move Right
db $C7, $0D                     ;Play next 0D bytes simultaneously
db $02                          ;Player Move Right
db $87, $03                     ;Sprite 087 do event: Move Down
db $88, $03                     ;Sprite 088 do event: Move Down
db $89, $03                     ;Sprite 089 do event: Move Down
db $8A, $03                     ;Sprite 08A do event: Move Down
db $8B, $03                     ;Sprite 08B do event: Move Down
db $8C, $03                     ;Sprite 08C do event: Move Down
db $02                          ;Player Move Right
db $76                          ;<Unknown>
db $CD, $A3, $05                ;Run event index 05A3
db $16                          ;Player pose: face left, standing
db $09                          ;Player Show
db $82, $0A                     ;Sprite 082 do event: Hide
db $71                          ;Short pause
db $CD, $A6, $05                ;Run event index 05A6
db $71                          ;Short pause
db $CD, $A3, $05                ;Run event index 05A3
db $71                          ;Short pause
db $CD, $A4, $05                ;Run event index 05A4
db $83, $0B                     ;Sprite 083 do event: 0B
db $83, $02                     ;Sprite 083 do event: Move Right
db $83, $0B                     ;Sprite 083 do event: 0B
db $83, $40                     ;Sprite 083 do event: face down, looking right, eyes lowered
db $71                          ;Short pause
db $CD, $A4, $05                ;Run event index 05A4
db $71                          ;Short pause
db $CD, $A3, $05                ;Run event index 05A3
db $71                          ;Short pause
db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
db $71                          ;Short pause
db $14                          ;Player pose: face down, left hand forward
db $CE, $06, $02                ;Play next 02 bytes 06 times
db $83, $03                     ;Sprite 083 do event: Move Down
db $83, $0A                     ;Sprite 083 do event: Hide
db $87, $58                     ;Sprite 087 do event: 58
db $88, $58                     ;Sprite 088 do event: 58
db $89, $58                     ;Sprite 089 do event: 58
db $8A, $58                     ;Sprite 08A do event: 58
db $8B, $58                     ;Sprite 08B do event: 58
db $8C, $58                     ;Sprite 08C do event: 58
db $74                          ;Very long pause
db $87, $54                     ;Sprite 087 do event: 54
db $88, $54                     ;Sprite 088 do event: 54
db $89, $54                     ;Sprite 089 do event: 54
db $8A, $54                     ;Sprite 08A do event: 54
db $8B, $54                     ;Sprite 08B do event: 54
db $8C, $54                     ;Sprite 08C do event: 54
db $74                          ;Very long pause
db $87, $24                     ;Sprite 087 do event: face down, right hand raised in
db $88, $24                     ;Sprite 088 do event: face down, right hand raised in
db $89, $24                     ;Sprite 089 do event: face down, right hand raised in
db $8A, $24                     ;Sprite 08A do event: face down, right hand raised in
db $8B, $24                     ;Sprite 08B do event: face down, right hand raised in
db $8C, $24                     ;Sprite 08C do event: face down, right hand raised in
db $73                          ;Long pause
db $87, $22                     ;Sprite 087 do event: face down, left hand on head
db $88, $22                     ;Sprite 088 do event: face down, left hand on head
db $89, $26                     ;Sprite 089 do event: face up, right hand raised out
db $8A, $26                     ;Sprite 08A do event: face up, right hand raised out
db $8B, $26                     ;Sprite 08B do event: face up, right hand raised out
db $8C, $22                     ;Sprite 08C do event: face down, left hand on head
db $CD, $AB, $05                ;Run event index 05AB
db $81, $12                     ;Sprite 081 do event: face right, standing
db $80, $12                     ;Sprite 080 do event: face right, standing
db $84, $12                     ;Sprite 084 do event: face right, standing
db $CA, $0E, $01                ;Set Flag 2/3/4/5/0E 01
db $B7, $89                     ;Add/Remove character 89
db $B7, $8B                     ;Add/Remove character 8B
db $B7, $8C                     ;Add/Remove character 8C
db $CB, $0C, $00                ;Clear Flag 2/3/4/5/0C 00
db $CB, $0D, $00                ;Clear Flag 2/3/4/5/0D 00
db $CB, $CF, $02                ;Clear Flag 2/3/4/5/CF 02
db $CB, $CE, $02                ;Clear Flag 2/3/4/5/CE 02
db $CB, $CD, $02                ;Clear Flag 2/3/4/5/CD 02
db $CB, $CC, $02                ;Clear Flag 2/3/4/5/CC 02
db $CB, $DE, $02                ;Clear Flag 2/3/4/5/DE 02
db $CB, $CB, $02                ;Clear Flag 2/3/4/5/CB 02
db $CB, $DB, $02                ;Clear Flag 2/3/4/5/DB 02
db $CB, $DC, $02                ;Clear Flag 2/3/4/5/DC 02
db $CB, $DD, $02                ;Clear Flag 2/3/4/5/DD 02
db $CA, $1F, $00                ;Set Flag 2/3/4/5/1F 00
db $CB, $C9, $02                ;Clear Flag 2/3/4/5/C9 02
db $CB, $06, $01                ;Clear Flag 2/3/4/5/06 01
db $CB, $07, $01                ;Clear Flag 2/3/4/5/07 01
db $CB, $08, $01                ;Clear Flag 2/3/4/5/08 01
db $CB, $82, $00                ;Clear Flag 2/3/4/5/82 00
db $CB, $3E, $01                ;Clear Flag 2/3/4/5/3E 01
db $CB, $CA, $02                ;Clear Flag 2/3/4/5/CA 02
db $CB, $13, $00                ;Clear Flag 2/3/4/5/13 00
db $A2, $2C                     ;Set Event Flag 02C
db $A2, $98                     ;Set Event Flag 098
db $A4, $FE                     ;Set Event Flag 1FE
db $FF                          ;End Event

padbyte $00
pad $C8E127

; $C8E128 → C8E157
; Cara on the balcony

org $C8E128

db $02                          ;Player Move Right
db $92, $0A                     ;Sprite 192 do event: Hide
db $DB                          ;Restore Player status
db $CB, $0E, $01                ;Clear Flag 2/3/4/5/0E 01
db $B7, $0C                     ;Add/Remove character 0C
db $A2, $7A                     ;Set Event Flag 07A
db $CA, $0D, $01                ;Set Flag 2/3/4/5/0D 01

; future cutscenes in Tycoon, Cara at leaving ballroom, leaving with guard 

db $A2, $7B                     ;Set Event Flag 07B
db $A4, $F0                     ;Set Event Flag 1F0
db $A4, $FC                     ;Set Event Flag 1FC

db $FF                          ;End Event
padbyte $00
pad $C8E157

