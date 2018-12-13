hirom
!base = $C00000

padbyte $00
org $C94D1D

; db $D8, $80, $00, $D8           ;Unknown
; db $81, $00                     ;Sprite 081 do event: Hold
; db $D8, $83, $00, $D8           ;Unknown
; db $82, $00                     ;Sprite 082 do event: Hold
; db $B1, $02                     ;Set Player Sprite 02
; db $80, $07                     ;Sprite 080 do event: 07
; db $81, $07                     ;Sprite 081 do event: 07
; db $82, $07                     ;Sprite 082 do event: 07
; db $83, $07                     ;Sprite 083 do event: 07
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $81, $01                     ;Sprite 081 do event: Move Up
; db $82, $03                     ;Sprite 082 do event: Move Down
; db $83, $03                     ;Sprite 083 do event: Move Down
; db $C7, $09                     ;Play next 09 bytes simultaneously
; db $81, $01                     ;Sprite 081 do event: Move Up
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $82, $02                     ;Sprite 082 do event: Move Right
; db $83, $02                     ;Sprite 083 do event: Move Right
; db $03                          ;Player Move Down
; db $D0, $81, $40                ;(Music) 81 40
; db $B9, $67                     ;Toggle Subtracitve Tint by 67
; db $C7, $05                     ;Play next 05 bytes simultaneously
; db $81, $02                     ;Sprite 081 do event: Move Right
; db $80, $01                     ;Sprite 080 do event: Move Up
; db $04                          ;Player move Left
; db $80, $04                     ;Sprite 080 do event: Move Left
; db $73                          ;Long pause
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $81, $24                     ;Sprite 081 do event: face down, right hand raised in
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $14                          ;Player pose: face down, left hand forward
; db $73                          ;Long pause
; db $80, $46                     ;Sprite 080 do event: garbage
; db $81, $46                     ;Sprite 081 do event: garbage
; db $82, $46                     ;Sprite 082 do event: garbage
; db $83, $46                     ;Sprite 083 do event: garbage
;db $36                          ;Player pose: face down, eyes closed mouth open
db $B4, $34                     ;Play Background Music Good Night!
db $C4, $04                     ;Fade out Speed 04
db $75
db $73
db $A8, $1F                     ;Adjust Character HP by 1F
db $A8, $5F                     ;Adjust Character HP by 5F
db $A8, $9F                     ;Adjust Character HP by 9F
db $A8, $DF                     ;Adjust Character HP by DF
db $A9, $1F                     ;Adjust Character MP by 1F
db $A9, $5F                     ;Adjust Character MP by 5F
db $A9, $9F                     ;Adjust Character MP by 9F
db $A9, $DF                     ;Adjust Character MP by DF
db $BA, $00, $02                ;Clear Character Butz Curable status to Zombie
db $BA, $01, $02                ;Clear Character Lenna Curable status to Zombie
db $BA, $02, $02                ;Clear Character Galuf Curable status to Zombie
db $BA, $03, $02                ;Clear Character Faris Curable status to Zombie
db $C3, $04                     ;Fade out Speed 04
db $14
db $72
db $C9, $68, $0F                ;Play Music 68 0F
db $DB                          ;Restore Player status

;db $B3, $0A                     ;Pause for 0A0 cycles
db $FF                          ;End Event

pad $C94D6F

org $C94D70
; db $7D                          ;<Unknown>
; db $75                          ;Extremely long pause
; db $C3, $10                     ;Fade in Speed 10
; db $C9, $68, $0F                ;Play Music 68 0F
; db $74                          ;Very long pause
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $81, $24                     ;Sprite 081 do event: face down, right hand raised in
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $14                          ;Player pose: face down, left hand forward
; db $70                          ;Very short pause
; db $C7, $09                     ;Play next 09 bytes simultaneously
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $80, $04                     ;Sprite 080 do event: Move Left
; db $81, $04                     ;Sprite 081 do event: Move Left
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $04                          ;Player move Left
; db $C7, $04                     ;Play next 04 bytes simultaneously
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $71                          ;Short pause
; db $CE, $03, $2C                ;Play next 2C bytes 03 times
; db $80, $26                     ;Sprite 080 do event: face up, right hand raised out
; db $81, $26                     ;Sprite 081 do event: face up, right hand raised out
; db $82, $26                     ;Sprite 082 do event: face up, right hand raised out
; db $83, $26                     ;Sprite 083 do event: face up, right hand raised out
; db $16                          ;Player pose: face left, standing
; db $B2, $01                     ;Pause for 01 cycles
; db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
; db $81, $20                     ;Sprite 081 do event: face down, left hand raised out
; db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
; db $83, $20                     ;Sprite 083 do event: face down, left hand raised out
; db $10                          ;Player pose: face up, left hand forward
; db $B2, $01                     ;Pause for 01 cycles
; db $80, $22                     ;Sprite 080 do event: face down, left hand on head
; db $81, $22                     ;Sprite 081 do event: face down, left hand on head
; db $82, $22                     ;Sprite 082 do event: face down, left hand on head
; db $83, $22                     ;Sprite 083 do event: face down, left hand on head
; db $12                          ;Player pose: face right, standing
; db $B2, $01                     ;Pause for 01 cycles
; db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
; db $81, $24                     ;Sprite 081 do event: face down, right hand raised in
; db $82, $24                     ;Sprite 082 do event: face down, right hand raised in
; db $83, $24                     ;Sprite 083 do event: face down, right hand raised in
; db $14                          ;Player pose: face down, left hand forward
; db $B2, $01                     ;Pause for 01 cycles
; db $80, $48                     ;Sprite 080 do event: garbage
; db $81, $48                     ;Sprite 081 do event: garbage
; db $82, $48                     ;Sprite 082 do event: garbage
; db $83, $48                     ;Sprite 083 do event: garbage
; db $38                          ;Player pose: face down, squatting
; db $71                          ;Short pause
; db $80, $30                     ;Sprite 080 do event: face left, head lowered
; db $81, $30                     ;Sprite 081 do event: face left, head lowered
; db $82, $30                     ;Sprite 082 do event: face left, head lowered
; db $83, $30                     ;Sprite 083 do event: face left, head lowered
; db $20                          ;Player pose: face down, left hand raised out
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $81, $0B                     ;Sprite 081 do event: 0B
; db $82, $0B                     ;Sprite 082 do event: 0B
; db $83, $0B                     ;Sprite 083 do event: 0B
; db $0C                          ;<Unknown>
; db $80, $05                     ;Sprite 080 do event: Bounce
; db $81, $05                     ;Sprite 081 do event: Bounce
; db $82, $05                     ;Sprite 082 do event: Bounce
; db $83, $05                     ;Sprite 083 do event: Bounce
; db $05                          ;Player Bounce in Place
; db $C7, $09                     ;Play next 09 bytes simultaneously
; db $80, $00                     ;Sprite 080 do event: Hold
; db $81, $00                     ;Sprite 081 do event: Hold
; db $82, $00                     ;Sprite 082 do event: Hold
; db $83, $00                     ;Sprite 083 do event: Hold
; db $00                          ;Player Hold
; db $70                          ;Very short pause
; db $CD, $DE, $03                ;Run event index 03DE
db $FF                          ;End Event

pad $C94DF7
org $C94DF8
; db $80, $0B                     ;Sprite 080 do event: 0B
; db $81, $0B                     ;Sprite 081 do event: 0B
; db $82, $0B                     ;Sprite 082 do event: 0B
; db $83, $0B                     ;Sprite 083 do event: 0B
; db $0B                          ;<Unknown>
; db $80, $07                     ;Sprite 080 do event: 07
; db $82, $07                     ;Sprite 082 do event: 07
; db $81, $07                     ;Sprite 081 do event: 07
; db $83, $07                     ;Sprite 083 do event: 07
; db $C7, $05                     ;Play next 05 bytes simultaneously
; db $01                          ;Player Move Up
; db $82, $01                     ;Sprite 082 do event: Move Up
; db $83, $01                     ;Sprite 083 do event: Move Up
; db $C7, $08                     ;Play next 08 bytes simultaneously
; db $80, $03                     ;Sprite 080 do event: Move Down
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $81, $03                     ;Sprite 081 do event: Move Down
; db $D3, $80, $00, $00           ;Sprite 80 set map position 00, 00
; db $C7, $06                     ;Play next 06 bytes simultaneously
; db $82, $04                     ;Sprite 082 do event: Move Left
; db $83, $04                     ;Sprite 083 do event: Move Left
; db $81, $04                     ;Sprite 081 do event: Move Left
; db $14                          ;Player pose: face down, left hand forward
; db $D3, $82, $00, $00           ;Sprite 82 set map position 00, 00
; db $D3, $83, $00, $00           ;Sprite 83 set map position 00, 00
; db $81, $04                     ;Sprite 081 do event: Move Left
; db $D3, $81, $00, $00           ;Sprite 81 set map position 00, 00
; db $CD, $7F, $05                ;Run event index 057F
; db $DB                          ;Restore Player status
db $FF                          ;End Event

pad $C94E39