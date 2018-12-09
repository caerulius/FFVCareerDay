hirom
!base = $C00000

; teleporter and explosion beneath ruined city
org $C89678

db $A2, $43						;Set Event Flag 043
db $FF							;End event

padbyte $00
pad $C89715