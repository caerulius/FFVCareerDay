hirom
!base = $C00000

;  Boco dismount Tycoon 
; $C85002 → $C85127
org $C85002

db $8B, $09                     ;Sprite 08B do event: Show
db $8C, $09                     ;Sprite 08C do event: Show
db $84, $09                     ;Sprite 084 do event: Show
db $84, $43                     ;Sprite 084 do event: face down, looking right, pointing finger right
db $84, $0B                     ;Sprite 084 do event: 0B
db $B4, $26                     ;Play Background Music Hurry! Hurry!
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $8B, $0A                     ;Sprite 08B do event: Hide
db $8C, $0A                     ;Sprite 08C do event: Hide
db $BD, $00, $FF                ;Start Event Battle 00
db $84, $20                     ;Sprite 084 do event: face down, left hand raised out
db $B4, $0D                     ;Play Background Music Lenna's Theme
db $A4, $FE                     ;Set Event Flag 1FE
db $C4, $04                     ;Fade out Speed 04
db $74                          ;Very long pause
db $E1, $0D, $00, $80, $00, $00 ;Return from cutscene? 0D 00 80 00 00
db $0A                          ;Player Hide
db $C3, $0C                     ;Fade in Speed 0C
db $C8, $07, $00                ;Display Message/Text/Dialogue 07 00
db $7A                          ;Naming Character
db $E3, $7A, $00, $66, $15, $00 ;Inter-map cutscene? 7A 00 66 15 00
db $09                          ;Player Show
db $12                          ;Player pose: face right, standing
db $87, $09                     ;Sprite 087 do event: Show
db $87, $20                     ;Sprite 087 do event: face down, left hand raised out
db $D3, $84, $27, $15           ;Sprite 84 set map position 27, 15
db $84, $09                     ;Sprite 084 do event: Show
db $84, $26                     ;Sprite 084 do event: face up, right hand raised out
db $C3, $0F                     ;Fade in Speed 0F
db $70                          ;Very short pause
db $89, $0A                     ;Sprite 089 do event: Hide
db $84, $26                     ;Sprite 084 do event: face up, right hand raised out
db $71                          ;Short pause
db $84, $04                     ;Sprite 084 do event: Move Left
db $84, $0A                     ;Sprite 084 do event: Hide
db $71                          ;Short pause
db $A4, $32                     ;Set Event Flag 132
db $A5, $FF                     ;Clear Event Flag 1FF
db $86, $09                     ;Sprite 086 do event: Show
db $CA, $32, $00                ;Set Flag 2/3/4/5/32 00
db $B7, $09                     ;Add/Remove character 09
db $A4, $C7                     ;Set Event Flag 1C7
db $FF                          ;End Event


; 8b098c0984098443840bb42602020202
; 02020202020303000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000008b0a
; 8c0abd00ff8420d08000000000000000
; 000000000000000000a4fe0000000000
; 0000000000000073c40474e10d008000
; 000ac30c00c80700007ae37a00661500
; 091287098720d384271584098426c30f
; 70890a8426718404840a71a4328609ca
; 3200b709a4c7ff000000000000a5ff00
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 000000000000e3


padbyte $00
pad $C85127







; $C85002 - Lenna/Galuf Tycoon meteor

; 8b098c0984098443840bb42602020202
; 02020202020303000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000008b0a
; 8c0abd00ff8420d080000000000000000000000000
; 00000000a4fe00000000000000000000
; 000073c40474e10d008000000ac30c00
; c80700007a

; $c8509c

; e37a00661500091287098720d3842715
; 84098426c30f70890000713170127484
; 20728401701074c82580738404842472
; 843e72842471c82680843e7084247184
; 041684042b8404c82780010404718422
; 74c82800718809890972c82900711084
; 2671128424711084227112842671880a
; 2d71c82a0070890a8422718402840a71
; a4328609ca3200b709a4c7ffe311000e
; 3b

; 890a8422718402840a71a4328609ca32
; 00b709a4c7ffe311000e3b00a5ff

; FINAL?

; 8b098c0984098443840bb42602020202
; 02020202020303000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000008b0a
; 8c0abd00ff8420d08000000000000000
; 000000000000000000a4fe0000000000
; 0000000000000073c40474e10d008000
; 000ac30c00c80700007ae37a00661500
; 091287098720d384271584098426c30f
; 70890a8426718404840a71a4328609ca
; 3200b709a4c7ff000000000000a5ff00
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 00000000000000000000000000000000
; 000000000000e3


; - Sprite $8D is the "!" box