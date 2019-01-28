hirom
!base = $C00000

; Overall, going to have to preserve cutscene and not warp to post-fire state because of the Flame/Aegis shield 
; Will speed up first fire cutscene
; Then as soon as enter Moogle pit, immediately go to post-fire state

; First fire cutscene

org $C8DB99

db $D0, $81, $20                ;(Music) 81 20
db $84, $07                     ;Sprite 084 do event: 07
db $84, $08                     ;Sprite 084 do event: 08
db $85, $07                     ;Sprite 085 do event: 07
db $85, $08                     ;Sprite 085 do event: 08
db $86, $07                     ;Sprite 086 do event: 07
db $86, $08                     ;Sprite 086 do event: 08
db $87, $07                     ;Sprite 087 do event: 07
db $87, $08                     ;Sprite 087 do event: 08
db $88, $07                     ;Sprite 088 do event: 07
db $88, $08                     ;Sprite 088 do event: 08
db $89, $07                     ;Sprite 089 do event: 07
db $89, $08                     ;Sprite 089 do event: 08
db $8A, $07                     ;Sprite 08A do event: 07
db $8A, $08                     ;Sprite 08A do event: 08
db $8B, $07                     ;Sprite 08B do event: 07
db $8B, $08                     ;Sprite 08B do event: 08
db $8C, $07                     ;Sprite 08C do event: 07
db $8C, $08                     ;Sprite 08C do event: 08
db $8D, $07                     ;Sprite 08D do event: 07
db $8D, $08                     ;Sprite 08D do event: 08
db $8E, $07                     ;Sprite 08E do event: 07
db $8E, $08                     ;Sprite 08E do event: 08
db $8F, $07                     ;Sprite 08F do event: 07
db $8F, $08                     ;Sprite 08F do event: 08
db $90, $07                     ;Sprite 190 do event: 07
db $90, $08                     ;Sprite 190 do event: 08
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $04                          ;Player move Left
db $BE, $4F                     ;Rumble effect of 4F magnitude
db $B4, $2D                     ;Play Background Music The Evil Lord Exdeath
db $D5, $84, $06, $00           ;(Sound) 84 06 00
db $B1, $02                     ;Set Player Sprite 02
db $D8, $C0, $00, $D8           ;Unknown
db $C1, $00                     ;<Unknown>
db $D8, $C2, $00, $3A           ;Unknown
db $80, $4A                     ;Sprite 080 do event: garbage
db $82, $4A                     ;Sprite 082 do event: garbage
db $81, $4A                     ;Sprite 081 do event: garbage
db $0C                          ;<Unknown>
db $80, $0B                     ;Sprite 080 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $82, $0B                     ;Sprite 082 do event: 0B
db $80, $06                     ;Sprite 080 do event: Bounce
db $81, $06                     ;Sprite 081 do event: Bounce
db $82, $05                     ;Sprite 082 do event: Bounce
db $05                          ;Player Bounce in Place
db $C7, $07                     ;Play next 07 bytes simultaneously
db $80, $04                     ;Sprite 080 do event: Move Left
db $81, $02                     ;Sprite 081 do event: Move Right
db $82, $03                     ;Sprite 082 do event: Move Down
db $00                          ;Player Hold
db $80, $43                     ;Sprite 080 do event: face down, looking right, pointing finger right
db $81, $42                     ;Sprite 081 do event: garbage
db $82, $43                     ;Sprite 082 do event: face down, looking right, pointing finger right
db $32                          ;Player pose: collapsed, facing left
db $BE, $45                     ;Rumble effect of 45 magnitude
db $70                          ;Extremely long pause
db $14                          ;Player pose: face down, left hand forward
db $81, $26                     ;Sprite 081 do event: face up, right hand raised out
db $70                          ;Short pause
db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $A4, $FE                     ;Set Event Flag 1FE
db $C4, $02                     ;Fade out Speed 0A
db $75
db $CA, $4D, $03                ;Set Flag 2/3/4/5/4D 03
db $E1, $6B, $01, $24, $0B, $00 ;Return from cutscene? 6B 01 24 0B 00
db $A5, $FE                     ;Clear Event Flag 1FE
db $09                          ;Player Show
db $D8, $C2, $02, $D8           ;Unknown
db $40                          ;Player pose: face down, looking right, eyes lowered
db $E0, $D8                     ;Unknown
db $01                          ;Player Move Up
db $20                          ;Player pose: face down, left hand raised out
db $B9, $DA                     ;Toggle Subtracitve Tint by DA
db $C3, $02                     ;Fade in Speed 0A
db $75                          ;Extremely long pause
db $16                          ;Player pose: face left, standing
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $80, $22                     ;Sprite 080 do event: face down, left hand on head
db $81, $26                     ;Sprite 081 do event: face up, right hand raised out
db $73                          ;Long pause
db $BE, $4F                     ;Rumble effect of 4F magnitude
db $D0, $1A, $00                ;(Music) 1A 00
db $3A                          ;Player pose: face down, surprised
db $80, $4A                     ;Sprite 080 do event: garbage
db $82, $4A                     ;Sprite 082 do event: garbage
db $81, $4A                     ;Sprite 081 do event: garbage
db $0C                          ;<Unknown>
db $80, $0B                     ;Sprite 080 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $82, $0B                     ;Sprite 082 do event: 0B
db $80, $05                     ;Sprite 080 do event: Bounce
db $81, $05                     ;Sprite 081 do event: Bounce
db $82, $05                     ;Sprite 082 do event: Bounce
db $05                          ;Player Bounce in Place
db $C7, $07                     ;Play next 07 bytes simultaneously
db $00                          ;Player Hold
db $80, $00                     ;Sprite 080 do event: Hold
db $82, $00                     ;Sprite 082 do event: Hold
db $81, $00                     ;Sprite 081 do event: Hold
db $88, $09                     ;Sprite 088 do event: Show
db $89, $09                     ;Sprite 089 do event: Show
db $8A, $09                     ;Sprite 08A do event: Show
db $8B, $09                     ;Sprite 08B do event: Show
db $8C, $09                     ;Sprite 08C do event: Show
db $8D, $09                     ;Sprite 08D do event: Show
db $8E, $09                     ;Sprite 08E do event: Show
db $8F, $09                     ;Sprite 08F do event: Show
db $90, $09                     ;Sprite 190 do event: Show
db $91, $09                     ;Sprite 191 do event: Show
db $32                          ;Player pose: collapsed, facing left
db $82, $43                     ;Sprite 082 do event: face down, looking right, pointing finger right
db $80, $42                     ;Sprite 080 do event: garbage
db $81, $43                     ;Sprite 081 do event: face down, looking right, pointing finger right
db $CF, $03, $14                ;Play next 14 bytes simultaneously 03 times
db $88, $03                     ;Sprite 088 do event: Move Down
db $89, $03                     ;Sprite 089 do event: Move Down
db $8A, $03                     ;Sprite 08A do event: Move Down
db $8B, $03                     ;Sprite 08B do event: Move Down
db $8C, $03                     ;Sprite 08C do event: Move Down
db $8D, $03                     ;Sprite 08D do event: Move Down
db $8E, $03                     ;Sprite 08E do event: Move Down
db $8F, $03                     ;Sprite 08F do event: Move Down
db $90, $03                     ;Sprite 190 do event: Move Down
db $91, $03                     ;Sprite 191 do event: Move Down
db $0B                          ;<Unknown>
db $82, $0B                     ;Sprite 082 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $80, $0B                     ;Sprite 080 do event: 0B
db $80, $22                     ;Sprite 080 do event: face down, left hand on head
db $81, $26                     ;Sprite 081 do event: face up, right hand raised out
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $14                          ;Player pose: face down, left hand forward
db $72                          ;Medium pause
db $BE, $45                     ;Rumble effect of 45 magnitude
db $D0, $82, $80                ;(Music) 82 80
db $CF, $02, $06                ;Play next 06 bytes simultaneously 02 times
db $81, $04                     ;Sprite 081 do event: Move Left
db $80, $02                     ;Sprite 080 do event: Move Right
db $82, $01                     ;Sprite 082 do event: Move Up
db $81, $0A                     ;Sprite 081 do event: Hide
db $82, $0A                     ;Sprite 082 do event: Hide
db $80, $0A                     ;Sprite 080 do event: Hide
db $DB                          ;Restore Player status
db $D0, $F2, $00                ;(Music) F2 00
db $A4, $FF                     ;Set Event Flag 1FF
db $D1, $00, $10, $01           ;(Timer?) 01 10 01
db $FF                          ;End Event

padbyte $00
pad $C8DCD2


; $C8DCFA → $C8DD47
; Moogle appears. This is called by timer $D1 $00 $10 $01

org $C8DCFA

db $7C                          ;<Unknown>
db $F3, $20, $09, $01           ;Set Map Tiles 20 09 01
db $15                          ;Player pose: face down, right hand forward
db $16                          ;Player pose: face left, standing
db $D3, $83, $A1, $09           ;Sprite 83 set map position A1, 09
db $83, $5A                     ;Sprite 083 do event: 5A
db $83, $0B                     ;Sprite 083 do event: 0B
db $83, $06                     ;Sprite 083 do event: Bounce
db $83, $04                     ;Sprite 083 do event: Move Left
db $83, $0B                     ;Sprite 083 do event: 0B
db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
db $83, $22                     ;Sprite 083 do event: face down, left hand on head
db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
db $CE, $03, $06                ;Play next 06 bytes 03 times
db $83, $56                     ;Sprite 083 do event: 56
db $83, $57                     ;Sprite 083 do event: 57
db $83, $54                     ;Sprite 083 do event: 54
db $CE, $0A, $10                ;Play next 10 bytes 0A times
db $83, $20                     ;Sprite 083 do event: face down, left hand raised out
db $B2, $03                     ;Pause for 03 cycles
db $83, $22                     ;Sprite 083 do event: face down, left hand on head
db $B2, $03                     ;Pause for 03 cycles
db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
db $B2, $03                     ;Pause for 03 cycles
db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
db $B2, $03                     ;Pause for 03 cycles
db $83, $06                     ;Sprite 083 do event: Bounce
db $83, $02                     ;Sprite 083 do event: Move Right
db $83, $0A                     ;Sprite 083 do event: Hide
db $A4, $EC                     ;Set Event Flag 1EC
db $FF                          ;End Event

padbyte $00
pad $C8DCD2


; Underground moogle cave
; Immediately set flag to enter

org $C8DD49

db $A4, $FE                     ;Set Event Flag 1FE
db $D0, $81, $A0                ;(Music) 81 A0
db $CD, $13, $01                ;Run event index 0113
db $A5, $FE                     ;Clear Event Flag 1FE
db $82, $04                     ;Sprite 082 do event: Move Left
db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
db $B4, $19                     ;Play Background Music As I Feel, You Feel
db $D1, $00, $0E, $01           ;(Timer?) 00 0E 01
db $A5, $FF                     ;Clear Event Flag 1FF

db $A2, $74                     ;Set Event Flag 074     Event flags for showing branch to enter final area
db $A5, $C8                     ;Clear Event Flag 1C8   Event flags for showing branch to enter final area

padbyte $00
pad $C8DD61