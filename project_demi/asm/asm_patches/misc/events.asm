hirom

; this is on hold
; you can set the speed at the beginning of the event but everytime the player moves, its overwritten by the generic handler anyways 


; org ### $C0A248
; JML AllEventHandler


; org $
; AllEventHandler:
; lda #$01
; sta $bc0
; stz $ba
; ldx $d4
; ldy #$0005
; JML $C0A24F