hirom
!base = $C00000

; $C84C80 → $C84FD0

org $C84C80

db $E1, $00, $00, $9C, $96, $00 ;Return from cutscene? 00 00 9C 96 00
db $B1, $07                     ;Set Player Sprite 07
db $09                          ;Player Show
db $02                          ;Player Move Right
db $C6, $12                     ;Add job Bard
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $CB, $58, $00	            ;Clear Flag 2/3/4/5/58 00 ;removes faris sleeping in tule
db $A4, $DC                     ;Set Event Flag 1DC
db $A4, $FF                     ;Set Event Flag 1FF
db $A4, $BE                     ;Set Event Flag 1BE
db $C3, $08                     ;Fade in Speed 08
db $73                          ;Long pause
db $FF                          ;End Event

padbyte $00
pad $C84FD0