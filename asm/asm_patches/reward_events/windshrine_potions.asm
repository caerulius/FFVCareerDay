hirom 

org $C96EB4
db $C8, $90, $00                ;Display Message/Text/Dialogue 90 00
db $B5, $68                     ;Play Sound Effect Find item
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $AA, $E0                     ;Add Item Potion
db $A4, $26                     ;Turn on bit 40 at address 0x7e0a38
db $FF                          ;End Event
pad $C96EC5