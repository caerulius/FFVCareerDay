hirom
!base = $C00000

org $C90E7C



db $CD, $7F, $05  
db $FF                                 ;End Event

padbyte $00
pad $C90E94