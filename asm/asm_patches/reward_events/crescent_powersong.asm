hirom

org $C92002

db $A0, $02                     ;(Message) 02
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $A0, $03                     ;(Message) 03
db $E4, $B4                     ;Unknown
db $05                          ;Player Bounce in Place
db $AC, $57                     ;Add Magic Power Song
db $A2, $CF                     ;Turn on bit 80 at address 0x7e0a2d
db $FF                          ;End Event

org $C9200F