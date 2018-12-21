hirom

org $C99C9D
db $C8, $70, $00                ;Display Message/Text/Dialogue 70 00
db $CE, $08, $02                ;Play next 02 bytes 08 times
db $AA, $E0                     ;Add Item Potion
db $B5, $68                     ;Play Sound Effect Find item
db $A4, $4E                     ;Turn on bit 40 at address 0x7e0a3d
db $FF                          ;End Event
pad $C99CA9