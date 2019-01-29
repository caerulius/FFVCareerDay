hirom
!base = $C00000

; First dialogue, remove text boxes
; There's a ton of events during the char switching, which was not changed

org $C99F7D

db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $01                          ;Player Move Up
db $B1, $02                     ;Set Player Sprite 02
db $D3, $80, $2F, $0A           ;Sprite 80 set map position 2F, 0A
db $D3, $82, $2F, $0A           ;Sprite 82 set map position 2F, 0A
db $80, $09                     ;Sprite 080 do event: Show
db $81, $09                     ;Sprite 081 do event: Show
db $82, $09                     ;Sprite 082 do event: Show
db $C7, $05                     ;Play next 05 bytes simultaneously
db $01                          ;Player Move Up
db $80, $04                     ;Sprite 080 do event: Move Left
db $82, $02                     ;Sprite 082 do event: Move Right
db $14                          ;Player pose: face down, left hand forward
db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
db $81, $20                     ;Sprite 081 do event: face down, left hand raised out
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $2E                          ;Player pose: face down, head lowered
db $14                          ;Player pose: face down, left hand forward
db $82, $3F                     ;Sprite 082 do event: face down, looking left, eyes lowered
db $80, $3F                     ;Sprite 080 do event: face down, looking left, eyes lowered
db $81, $3F                     ;Sprite 081 do event: face down, looking left, eyes lowered
db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
db $81, $20                     ;Sprite 081 do event: face down, left hand raised out
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $C8, $2F, $07                ;Display Message/Text/Dialogue 2F 07
db $A4, $5E                     ;Set Event Flag 15E
db $A4, $60                     ;Set Event Flag 160
db $CD, $42, $07                ;Run event index 0742
db $B7, $00                     ;Add/Remove character 00
db $B7, $89                     ;Add/Remove character 89
db $B7, $8B                     ;Add/Remove character 8B
db $B7, $8C                     ;Add/Remove character 8C
db $FF                          ;End Event


padbyte $00
pad $C99FCC