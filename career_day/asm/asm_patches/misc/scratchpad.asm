hirom

; used for testing misc hacks until they go into their own file

; STEAMSHIP LOCK

; how many bytes of code
org $D8E236
db $28, $1F
db $41, $1F

; new code area 
org $D8FFA8
!keyitemarea = $FC, $B6

; Simple example, does not allow for directional confirm for something like a door
; db !keyitemarea, $FF, $4C, $00, $FF, $F0, $00

; Complex example, checks each direction first and nulls event, but if it's the matching direction, proceed with conditionals for checking key item flag then running event 
db $F7, $01, $FF, $00, $00, $F7, $02, $FF, $00, $00, $F7, $03, $FF, $00, $00, $F7, $00, !keyitemarea, $FF, $4C, $00, $FF, $F0, $00



; d8ffa8