hirom
!base = $C00000


; Skip ifrit's text before the fight
org $C9728F

db $BD, $39, $FF		;Start Event Battle 39
db $A4, $28				;Set Event Flag 128
db $CB, $97, $01		;Clear Flag 2/3/4/5/97 01
db $83, $03				;Sprite 083 do event: Move Down
db $83, $0A				;Sprite 083 do event: Hide
db $C8, $A7, $02		;Display Message/Text/Dialogue A7 02
db $AC, $4D				;Add Magic Ifrit
db $FF					;End Event

padbyte $00
pad $C972A6