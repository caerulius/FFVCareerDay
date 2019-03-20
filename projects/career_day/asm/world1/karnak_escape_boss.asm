hirom

; rewrite location of event

org $C83476
db $E7, $7F, $C8

; in new freed area, write event
org $C87FE7
db $BD, $08, $FF                ;Start Event Battle 08
db $A2, $31                     ;Turn on bit 02 at address 0x7e0a1a
db $DE, $67 ; custom reward
db $DF
db $FF                          ;End Event
