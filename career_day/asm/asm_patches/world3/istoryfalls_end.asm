hirom
!base = $C00000

; Lev cutscene with minion destroyed

org $C99EC2

db $B4, $17                     ;Play Background Music Danger!
db $8A, $09                     ;Sprite 08A do event: Show
db $0A                          ;Player Hide
db $77                          ;<Unknown>
db $CE, $07, $01                ;Play next 01 bytes 07 times
db $01                          ;Player Move Up
db $CD, $5B, $06                ;Run event index 065B
db $CE, $07, $01                ;Play next 01 bytes 07 times
db $03                          ;Player Move Down
db $76                          ;<Unknown>
db $10                          ;Player pose: face up, left hand forward
db $09                          ;Player Show
db $8A, $0A                     ;Sprite 08A do event: Hide
db $B5, $4A                     ;Play Sound Effect Tsunami
db $BE, $0A                     ;Rumble effect of 0A magnitude
db $BE, $00                     ;Rumble effect of 00 magnitude
db $A4, $7B                     ;Set Event Flag 17B
db $CB, $5C, $02                ;Clear Flag 2/3/4/5/5C 02
db $FF                          ;End Event


padbyte $00
pad $C99F1D


; Leviathan fight

org $C9BBF8


db $BD, $31, $FF                ;Start Event Battle 31
db $CE, $0A, $1C                ;Play next 1C bytes 0A times
db $83, $09                     ;Sprite 083 do event: Show
db $84, $09                     ;Sprite 084 do event: Show
db $85, $09                     ;Sprite 085 do event: Show
db $86, $09                     ;Sprite 086 do event: Show
db $87, $09                     ;Sprite 087 do event: Show
db $88, $09                     ;Sprite 088 do event: Show
db $B2, $02                     ;Pause for 02 cycles
db $83, $0A                     ;Sprite 083 do event: Hide
db $84, $0A                     ;Sprite 084 do event: Hide
db $85, $0A                     ;Sprite 085 do event: Hide
db $86, $0A                     ;Sprite 086 do event: Hide
db $87, $0A                     ;Sprite 087 do event: Hide
db $88, $0A                     ;Sprite 088 do event: Hide
db $B2, $02                     ;Pause for 02 cycles
db $C5                          ;<unknown>
db $80, $BE                     ;Sprite 080 do event: BE
db $00                          ;Player Hold
db $89, $09                     ;Sprite 089 do event: Show
db $C5                          ;<unknown>
db $80, $71                     ;Sprite 080 do event: 71
db $89, $03                     ;Sprite 089 do event: Move Down
db $89, $03                     ;Sprite 089 do event: Move Down
db $89, $0A                     ;Sprite 089 do event: Hide
db $C5                          ;<unknown>
db $80, $39                     ;Sprite 080 do event: face down, both arms raised
db $71                          ;Short pause
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
if !vanillarewards == 1
	db $C8, $60, $07                ;Display Message/Text/Dialogue 60 07  		; <---reward--->
	db $AC, $55                     ;Add Magic Levia  		; <---reward--->
else
	db $DE, $10				; set up reward
	db $DF					; call text handler
endif
db $E4, $B4                     ;Unknown
db $24                          ;Player pose: face down, right hand raised in
db $A2, $92                     ;Set Event Flag 092
db $FF                          ;End Event


padbyte $00
pad $C9BC3F
