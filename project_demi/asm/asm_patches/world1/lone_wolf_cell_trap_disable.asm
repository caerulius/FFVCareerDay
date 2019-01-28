hirom
!base = $C00000

; Disable getting stuck in lone wolf's cell
org $C931C0

db $FF				;End Event

padbyte $00
pad $C931E6