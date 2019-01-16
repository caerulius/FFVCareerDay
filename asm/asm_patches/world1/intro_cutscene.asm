hirom
!base = $C00000

; $C84C80 → $C84FD0
; Intro cutscene skips
; Apparently, the first two lines spawn the Tycoon meteor, but another event doesn't appear to be called. Unsure atm 

org $C84C80

db $E1, $10, $00, $91, $1C, $00 ;Return from cutscene? 10 00 91 1C 00
db $A4, $E0                     ;Turn on bit 01 at address 0x7e0a50

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

; tycoon chancellor & guard already set
;db $CB, $01, $01                ;Turn off bit 02 at address  0x7e0a74
;db $CA, $0A, $01                ;Turn on bit 04 at address  0x7e0a75
;db $A2, $52                     ;Turn on bit 04 at address 0x7e0a1e

db $CC, $00                  ;Custom destination flag 00
db $C3, $02                     ;Fade in Speed 08
db $75                          ;Long pause
db $FF                          ;End Event

padbyte $00
pad $C84FD0