hirom
!base = $C00000

; Walse Meteor Event
org $C86F6D

db $B4, $17						;Play Background Music Danger!
db $B6, $F4						;Play Movie F4
db $E1, $62, $00, $2A, $18, $00	;Return from cutscene? 62 00 2A 18 00
db $14
db $B9, $DF						;Toggle Subtracitve Tint by DF
db $72
db $B9, $DF						;Toggle Subtracitve Tint by DF
db $A5, $FE						;Clear Event Flag 1FE
db $CB, $9D, $00				;Clear Flag 2/3/4/5/9D 00
db $CB, $9E, $00				;Clear Flag 2/3/4/5/9E 00
db $CA, $9F, $00				;Set Flag 2/3/4/5/9F 00
db $CA, $A0, $00				;Set Flag 2/3/4/5/A0 00
db $CC, $08                  	;Custom destination flag 08
db $A4, $E2						;Set Event Flag 1E2

padbyte $00
pad $C870C8