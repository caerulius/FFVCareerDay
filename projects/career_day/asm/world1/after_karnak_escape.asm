hirom


; Cutscene and job acquisition after Karnak
org $C87F79

db $7C							;Stops the timer
db $C4, $0C						;Fade out Speed 0C
db $73
db $A5, $FF						;Clear Event Flag 1FF
db $D0, $F0, $00				;(Music) F0 00
db $A4, $FE						;Set Event Flag 1FE
db $E1, $A3, $00, $21, $08, $00	;Return from cutscene? A3 00 21 08 00
db $A5, $FE						;Clear Event Flag 1FE
db $C1, $00						;<Unknown>
db $B1, $02						;Set Player Sprite 02
db $09							;Player Show
db $7D							;<Unknown>
db $BE, $00						;Rumble effect of 00 magnitude
db $D9, $0A, $03, $70			;Unknown
db $B1, $02						;Set Player Sprite 02
db $09							;Player Show
db $23							;Sprite 080 do event: face down, right hand raised out
db $B4, $08						;Play Background Music The Prelude
db $85, $09						;Sprite 085 do event: Show
db $86, $09						;Sprite 086 do event: Show
db $87, $09						;Sprite 087 do event: Show
db $C3, $0C						;Fade in Speed 0C
db $73
db $DE, $07		; set up reward  		; <---reward--->
db $DF			; call text handler  	; <---reward--->
db $85, $02						;Sprite 085 do event: Move Right
db $85, $0A						;Sprite 085 do event: Hide
db $DE, $08		; set up reward  		; <---reward--->
db $DF			; call text handler  	; <---reward--->
db $86, $03						;Sprite 086 do event: Move Down
db $86, $0A						;Sprite 086 do event: Hide
db $DE, $09		; set up reward  		; <---reward--->
db $DF			; call text handler  	; <---reward--->
db $87, $04						;Sprite 087 do event: Move Left
db $87, $0A						;Sprite 087 do event: Hide
db $73							;Medium pause

db $A5, $FF						;Clear Event Flag 1FF
db $A4, $E4						;Set Event Flag 1E4
db $A4, $19						;Set Event Flag 119
db $CB, $81, $01				;Clear Flag 2/3/4/5/81 01
db $CA, $9D, $02				;Set Flag 2/3/4/5/9D 02
db $CB, $54, $01				;Clear Flag 2/3/4/5/54 01
db $CA, $51, $01				;Set Flag 2/3/4/5/51 01
db $A2, $32						;Set Event Flag 032
db $A2, $33						;Set Event Flag 033
db $CC, $0C                  ;Custom destination flag 0C

; CAREERDAY
db $D2, $00, $54, $4E, $D8          ; set airship again
; db $D2, $00, $54, $4F, $B5		; disable standard steamship

; db $71
; db $C8, $AF, $01 ; CUSTOM MESSAGE FOR WARPZONE
db $C4, $03						;Fade in speed 0C
db $73
db $E1, $00, $00, $56, $4D, $00 ;Return from cutscene? 00 00 9C 96 00


; db $E3, $00, $00, $53, $4E, $00	;Inter-map cutscene? 00 00 53 4E 00
; db $DB							;Restore Player status
; db $B4, $23						;Play Background Music Four Valiant Hearts
db $C3, $03						;Fade in speed 0C
db $73

db $FF							;End event

padbyte $00
pad $C880B5