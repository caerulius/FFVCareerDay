hirom


;Remove part before black chocobo chase
org $C88D00

db $CD, $A5, $00		;Run event index 00A5
db $CD, $98, $03		;Run event index 0398
db $A2, $A8				;Set Event Flag 0A8
db $FF					;End Event
	
padbyte $00
pad $C88D0B

; From catching the chocobo to taking off for real
org $C94606

db $DE, $0A							; set up reward
db $DF								; call text handler
db $70								;Very short pause
db $DE, $0B							; set up reward
db $DF								; call text handler
db $CB, $FD, $01					;Clear Flag 2/3/4/5/FD 01
db $CD, $95, $03					;Run event index 0395
db $CD, $96, $03					;Run event index 0396
db $CA, $FD, $01						;Set Flag 2/3/4/5/FD 01
db $A2, $3A								;Set Event Flag 03A
db $CC, $10                  			;Custom destination flag 10
db $FF									;End Event

padbyte $00
pad $C94774



org $C947DF
db $A0, $00                     ;(Message) 00
db $C7, $04                     ;Play next 04 bytes simultaneously
db $80, $01                     ;Sprite 080 do event: Move Up
db $82, $01                     ;Sprite 082 do event: Move Up
db $80, $22                     ;Sprite 080 do event: face down, left hand on head
db $82, $26                     ;Sprite 082 do event: face up, right hand raised out
db $71                          ;Short pause
db $A0, $01                     ;(Message) 01
db $C7, $06                     ;Play next 06 bytes simultaneously
db $80, $02                     ;Sprite 080 do event: Move Right
db $82, $04                     ;Sprite 082 do event: Move Left
db $81, $01                     ;Sprite 081 do event: Move Up
db $80, $0A                     ;Sprite 080 do event: Hide
db $82, $0A                     ;Sprite 082 do event: Hide
db $81, $0A                     ;Sprite 081 do event: Hide
db $E0, $00, $00, $D4, $D1, $00 ;Unknown
db $FF                          ;End Event


org $C89A86
db $B1, $02                     ;Set Player Sprite 02
db $80, $09                     ;Sprite 080 do event: Show
db $82, $09                     ;Sprite 082 do event: Show
db $81, $09                     ;Sprite 081 do event: Show
db $C7, $05                     ;Play next 05 bytes simultaneously
db $80, $04                     ;Sprite 080 do event: Move Left
db $82, $02                     ;Sprite 082 do event: Move Right
db $01                          ;Player Move Up
db $80, $20                     ;Sprite 080 do event: face down, left hand raised out
db $82, $20                     ;Sprite 082 do event: face down, left hand raised out
db $80, $12                     ;Sprite 080 do event: face right, standing
db $82, $12                     ;Sprite 082 do event: face right, standing
db $81, $12                     ;Sprite 081 do event: face right, standing
db $FF                          ;End Event



;Remove text after catching black chocobo (from right)
org $C93719

db $CD, $92, $03		;Run event index 0392
db $FF					;End Event

padbyte $00
pad $C93724

;Remove text after catching black chocobo (from left)
org $C9370D

db $CD, $92, $03		;Run event index 0392
db $FF					;End Event

padbyte $00
pad $C93718

;Remove text after catching black chocobo (from top)
org $C93701

db $CD, $92, $03		;Run event index 0392
db $FF					;End Event

padbyte $00
pad $C9370C

;Remove text after catching black chocobo (from bottom)
org $C936F5

db $CD, $92, $03		;Run event index 0392
db $FF					;End Event

padbyte $00
pad $C93700