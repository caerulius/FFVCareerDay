hirom
!base = $C00000

; collecting adamantium
org $C8553B

db $83, $0A							;Sprite 083 do event: Hide
db $B4, $29							;Play Background Music Fanfare 1 (short)
db $C8, $91, $03					;Display Message/Text/Dialogue 91 03
db $CB, $5A, $00					;Clear Flag 2/3/4/5/5A 00
db $A2, $49							;Set Event Flag 049
db $A4, $C2							;Set Event Flag 1C2
		
db $FF								;End event

padbyte $00
pad $C8559F