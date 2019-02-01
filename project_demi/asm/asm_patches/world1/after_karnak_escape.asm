hirom
!base = $C00000

; Cutscene and job acquisition after Karnak
org $C87F79

db $7C								;Stops the timer
db $D2, $00, $54, $4F, $B5			;(Map) 00 54 4F B5
db $C4, $0C							;Fade out Speed 0C
db $73	
db $A5, $FF							;Clear Event Flag 1FF
db $D0, $F0, $00					;(Music) F0 00
db $A4, $FE							;Set Event Flag 1FE
db $E1, $A3, $00, $21, $08, $00		;Return from cutscene? A3 00 21 08 00
db $A5, $FE							;Clear Event Flag 1FE
db $C1, $00							;<Unknown>
db $B1, $02							;Set Player Sprite 02
db $09								;Player Show
db $7D								;<Unknown>
db $BE, $00							;Rumble effect of 00 magnitude
db $D9, $0A, $03, $70				;Unknown
db $B1, $02							;Set Player Sprite 02
db $09								;Player Show
db $23								;Sprite 080 do event: face down, right hand raised out
db $B4, $08							;Play Background Music The Prelude
db $85, $09							;Sprite 085 do event: Show
db $86, $09							;Sprite 086 do event: Show
db $87, $09							;Sprite 087 do event: Show
db $C3, $0C							;Fade in Speed 0C
db $73	
if !vanillarewards == 1
	db $C5, $80, $C8				;<unknown>
	db $6C							;Player or Sprite Pose
	db $08							;<Unknown>
	db $C8, $73, $02				;Display Message/Text/Dialogue 73 02  		; <---reward--->
	db $85, $02						;Sprite 085 do event: Move Right
	db $85, $0A						;Sprite 085 do event: Hide
	db $C8, $74, $02				;Display Message/Text/Dialogue 74 02  		; <---reward--->
	db $86, $03						;Sprite 086 do event: Move Down
	db $86, $0A						;Sprite 086 do event: Hide
	db $C8, $75, $02				;Display Message/Text/Dialogue 75 02  		; <---reward--->
	db $87, $04						;Sprite 087 do event: Move Left
	db $87, $0A						;Sprite 087 do event: Hide
	db $73							;Medium pause
	db $C6, $08						;Add job Mystic Knight  					; <---reward--->
	db $C6, $03						;Add job Dragoon  							; <---reward--->
	db $C6, $16						;Add job 16  								; <---reward--->
	db $C6, $08						;Add job Mystic Knight  					; <---reward--->
	db $C6, $03						;Add job Dragoon  							; <---reward--->
	db $C6, $16						;Add job 16  								; <---reward--->
else
	db $DE, $07						; set up reward  							; <---reward--->
	db $DF							; call text handler  						; <---reward--->
	db $85, $02						;Sprite 085 do event: Move Right
	db $85, $0A						;Sprite 085 do event: Hide
	db $DE, $08						; set up reward  							; <---reward--->
	db $DF							; call text handler  						; <---reward--->
	db $86, $03						;Sprite 086 do event: Move Down
	db $86, $0A						;Sprite 086 do event: Hide
	db $DE, $09						; set up reward  							; <---reward--->
	db $DF							; call text handler  						; <---reward--->
	db $87, $04						;Sprite 087 do event: Move Left
	db $87, $0A						;Sprite 087 do event: Hide
	db $73							;Medium pause
	
endif

db $A5, $FF							;Clear Event Flag 1FF
db $A4, $E4							;Set Event Flag 1E4
db $A4, $19							;Set Event Flag 119
db $CB, $81, $01					;Clear Flag 2/3/4/5/81 01
db $CA, $9D, $02					;Set Flag 2/3/4/5/9D 02
db $CB, $54, $01					;Clear Flag 2/3/4/5/54 01
db $CA, $51, $01					;Set Flag 2/3/4/5/51 01
db $A2, $32							;Set Event Flag 032
db $A2, $33							;Set Event Flag 033
db $CC, $0C                  		;Custom destination flag 0C
db $E3, $00, $00, $53, $4E, $00		;Inter-map cutscene? 00 00 53 4E 00
db $DB								;Restore Player status
db $B4, $23							;Play Background Music Four Valiant Hearts
db $C3, $0C							;Fade in Speed 0C
	
db $FF								;End event

padbyte $00
pad $C880B5