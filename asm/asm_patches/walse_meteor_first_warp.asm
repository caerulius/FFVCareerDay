hirom
!base = $C00000

; Speed up first walse meteor warp
org $C8731B

db $B1, $02					;Set Player Sprite 02
db $D8, $87, $00, $D8		;Unknown
db $88, $00					;Sprite 088 do event: Hold
db $D8, $89, $00, $87		;Unknown
db $5B						;Player or Sprite Pose
db $3A						;Player pose: face down, surprised
db $05						;Player Bounce in Place
db $87, $0A					;Sprite 087 do event: Hide
db $88, $0A					;Sprite 088 do event: Hide
db $89, $0A					;Sprite 089 do event: Hide
db $CD, $C8, $02			;Run event index 02C8
db $A2, $A4                 ;Set Event Flag 0A4
db $A2, $2A                 ;Set Event Flag 02A

db $FF						;End Event


padbyte $00
pad $C8739A