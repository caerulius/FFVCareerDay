hirom
!base = $C00000

; Pre dialogue, Atomos, post

org $C8D4C9

db $D0, $81, $F0                ;(Music) 81 F0
db $CD, $09, $01                ;Run event index 0109
db $83, $0A                     ;Sprite 083 do event: Hide
db $86, $0A                     ;Sprite 086 do event: Hide
db $89, $0A                     ;Sprite 089 do event: Hide
db $8C, $0A                     ;Sprite 08C do event: Hide
db $8F, $0A                     ;Sprite 08F do event: Hide
db $CD, $09, $01                ;Run event index 0109
db $82, $0A                     ;Sprite 082 do event: Hide
db $85, $0A                     ;Sprite 085 do event: Hide
db $88, $0A                     ;Sprite 088 do event: Hide
db $8B, $0A                     ;Sprite 08B do event: Hide
db $8E, $0A                     ;Sprite 08E do event: Hide
db $CD, $09, $01                ;Run event index 0109
db $BD, $20, $FF          ;Start Event Battle 20
db $C4, $02                     ;Fade out
db $75
db $75
db $A4, $EA                     ;Set Event Flag 1EA
db $A2, $7C                     ;Set Event Flag 07C
db $A4, $EB                     ;Set Event Flag 1EB
db $D2, $01, $AD, $9F, $6C      ;(Map) 01 AD 9F 6C
db $CA, $DB, $02                ;Set Flag 2/3/4/5/DB 02
db $CA, $DC, $02                ;Set Flag 2/3/4/5/DC 02
db $CA, $DD, $02                ;Set Flag 2/3/4/5/DD 02
db $CA, $DE, $02                ;Set Flag 2/3/4/5/DE 02
db $CA, $DF, $02                ;Set Flag 2/3/4/5/DF 02
db $CB, $E3, $02                ;Clear Flag 2/3/4/5/E3 02
db $CB, $E4, $02                ;Clear Flag 2/3/4/5/E4 02
db $CB, $E5, $02                ;Clear Flag 2/3/4/5/E5 02
db $CB, $11, $03                ;Clear Flag 2/3/4/5/11 03
db $CB, $0E, $00                ;Clear Flag 2/3/4/5/0E 00

; below skips sub cutscene with Galuf waiting. No timer is ever set, Galuf never removed from party

db $A5, $FE                     ;Clear Event Flag 1FE
db $E1, $03, $20, $A9, $A5, $91 ;Return from cutscene? 03 20 A9 A5 91
db $DB                          ;Restore Player status
db $C3, $02                     ;Fade in Speed 0A
db $73
db $CA, $0E, $00                ;Set Flag 2/3/4/5/0E 00
db $A3, $C1                     ;Clear Event Flag 0C1
db $CC, $21                  ;Custom destination flag 21

db $FF                          ;End Event


padbyte $00
pad $C8D9AA