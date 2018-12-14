hirom
!base = $C00000

; First visit to kelb
; $C8C814 → $C8C84C

; Big cutscene with Kelgar 
; $C8C868 → $C8C8D0

; This sets the flag instantly upon visiting Kelb for the Kelgar cutscene. 
; Everything here was moved to the previous event, so that when loading Kelb for the first time, everything is spawned and open

org $C8C814
db $FF                          ;End Event

padbyte $00
pad $C8C84C