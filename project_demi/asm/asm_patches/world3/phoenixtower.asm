hirom
!base = $C00000

; $C99B2C → $C99C9C

org $C99B2C

db $D0, $80, $40                ;(Music) 80 40
db $01
db $01
db $01
db $C4, $03
db $74
db $80, $0A                     ;Sprite 080 do event: Hide
db $C3, $03
db $74
if !vanillarewards == 1
	db $C8, $24, $07                ;Display Message/Text/Dialogue 24 07 		; <---reward--->
	db $AC, $54                     ;Add Magic Phenix 		; <---reward--->
else
	db $DE, $15				; set up reward
	db $DF					; call text handler
endif
db $2E                          ;Player pose: face down, head lowered
db $D0, $80, $80                ;(Music) 80 80
db $14                          ;Player pose: face down, left hand forward
db $DB                          ;Restore Player status
db $CD, $7F, $05                ;Run event index 057F
db $CB, $40, $02                ;Clear Flag 2/3/4/5/40 02
db $A2, $96                     ;Set Event Flag 096
db $A5, $FE                     ;Clear Event Flag 1FE
db $FF                          ;End Event

padbyte $00
pad $C99C9C