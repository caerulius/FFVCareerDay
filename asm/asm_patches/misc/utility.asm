hirom

; Learning in battles will always pass the check against original 'AND #$10' check
org $C24C87
lda #$10
nop
; Passages always on
org $C05AB8
jmp $5ada
; Pitfalls always on 
org $C015B5
lda #$02
nop
