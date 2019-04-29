hirom

org $c98874
; warp to barrier tower instead of guido 
db $E0, $4B, $01, $11, $0d, $00 ;Unknown
db $FF                          ;End Event

; disable guido warp
org $F046AC
db $00