hirom
!base = $C00000

; Note that this alone without a second patch will cause
; Faris' "hey don't leave me" event to trigger when you
; walk into Tule. This patch alone doesn't fix the Tule
; entrance.

; Event for first time entrance to Tule
org $C85C83

; this might not be required but this strategy keeps
; the memory footprint the same for this event. we might
; be able to simply ignore these 00's and replace the first 
; bytes with whatever flags we need to set, but for now
; this preserves the same block per event. - Cae 11/25/18

db $c7, $ee	; skip as many 00 commands as we're about to write

fillbyte $00
fill 238