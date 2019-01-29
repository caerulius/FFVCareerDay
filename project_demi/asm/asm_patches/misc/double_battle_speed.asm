hirom
!base = $C00000

org $C22075
<<<<<<< HEAD:project_demi/asm/asm_patches/misc/double_battle_speed.asm
JML DoubleSpeedHook

org $F00100
DoubleSpeedHook:
=======
JML Hook

org $F30000
Hook:
>>>>>>> master:asm/asm_patches/misc/double_battle_speed.asm

lda $3d75,x
CMP #$01
BEQ DecreaseOnce
dec $3d75,x
dec $3d75,x
lda $3d75,x
JMP FinishLine

DecreaseOnce:
dec $3d75,x
JMP FinishLine



;CMP #$FF
;BNE FinishLine
;LDA #$01
;sta $3d75,x

FinishLine:
lda $3d75,x
JML $c2207b