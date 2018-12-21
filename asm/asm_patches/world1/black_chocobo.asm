hirom
!base = $C00000

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

db $0A								;Player Hide
db $A0, $09							;(Message) 09
db $70								;Very short pause
db $A0, $06							;(Message) 06
db $CB, $FD, $01					;Clear Flag 2/3/4/5/FD 01
db $A4, $FE							;Set Event Flag 1FE
db $CD, $96, $03					;Run event index 0396
db $C6, $15							;Add job 15
db $C6, $00							;Add job Knight
db $B7, $02							;Add/Remove character 02
db $B7, $09							;Add/Remove character 09
db $B7, $0B							;Add/Remove character 0B
db $CA, $FD, $01					;Set Flag 2/3/4/5/FD 01
db $A2, $3A							;Set Event Flag 03A
db $CC, $10                  		;Custom destination flag 10
db $FF								;End Event

padbyte $00
pad $C94774

;Remove text after catching black chocobo (form right)
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