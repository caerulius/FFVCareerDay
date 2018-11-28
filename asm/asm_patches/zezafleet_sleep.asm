hirom
!base = $C00000

; $C93725 → $C9377F
; Sleep at Zeza cabin. Preserved, only text box removed
; Zeza talk flag triggered instantly

org $C93725

db $CD, $F3, $04                ;Run event index 04F3
db $D0, $F1, $00                ;(Music) F1 00
db $B4, $22                     ;Play Background Music Battle with Gilgamesh
db $7D                          ;<Unknown>
db $C3, $10                     ;Fade in Speed 10
db $BE, $4E                     ;Rumble effect of 4E magnitude
db $3A                          ;Player pose: face down, surprised
; db $82, $4A                     ;Sprite 082 do event: garbage
; db $80, $4A                     ;Sprite 080 do event: garbage
; db $81, $4A                     ;Sprite 081 do event: garbage
; db $0C                          ;<Unknown>
db $82, $0B                     ;Sprite 082 do event: 0B
db $80, $0B                     ;Sprite 080 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $05                          ;Player Bounce in Place
db $82, $05                     ;Sprite 082 do event: Bounce
db $80, $05                     ;Sprite 080 do event: Bounce
db $81, $05                     ;Sprite 081 do event: Bounce
db $C7, $07                     ;Play next 07 bytes simultaneously
db $04                          ;Player move Left
db $82, $04                     ;Sprite 082 do event: Move Left
db $80, $04                     ;Sprite 080 do event: Move Left
db $81, $04                     ;Sprite 081 do event: Move Left
db $32                          ;Player pose: collapsed, facing left
db $82, $42                     ;Sprite 082 do event: garbage
db $80, $42                     ;Sprite 080 do event: garbage
db $81, $42                     ;Sprite 081 do event: garbage
db $BE, $40                     ;Rumble effect of 40 magnitude
db $14                          ;Player pose: face down, left hand forward
db $80, $0B                     ;Sprite 080 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $C7, $04                     ;Play next 04 bytes simultaneously
db $80, $03                     ;Sprite 080 do event: Move Down
db $81, $03                     ;Sprite 081 do event: Move Down
db $80, $0B                     ;Sprite 080 do event: 0B
db $81, $0B                     ;Sprite 081 do event: 0B
db $CD, $DE, $03                ;Run event index 03DE
db $A4, $FE                     ;Set Event Flag 1FE
db $CB, $01, $03                ;Clear Flag 2/3/4/5/01 03
db $CB, $02, $03                ;Clear Flag 2/3/4/5/02 03
db $CB, $03, $03                ;Clear Flag 2/3/4/5/03 03
db $A2, $6C                     ;Set Event Flag 06C
; db $A2, $AA						; Trigger for Zeza talk on ship
db $FF                          ;End Event

padbyte $00
pad $C9377F