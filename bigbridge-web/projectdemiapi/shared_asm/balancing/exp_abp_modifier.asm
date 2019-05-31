hirom

; change config to only allow for 4 options
org $C0F078
db $03 ; change 'too far' metric



org $C23F8E

JML EXPHook

org !ADDRESS_expmod
EXPHook:

CPY #$0000
BNE FinishEXPHookImmediate

; Load reward config 
LDA #$0000
sep #$20
LDA !rewardconfig
and #$70
CMP #$20
BEQ EXPMult4
CMP #$10
BEQ EXPMult2
; no config
JMP FinishEXPHookImmediate


EXPMult2:
rep #$20
lda $3F0B, x
asl
JMP FinishExpReward
EXPMult4:
rep #$20
lda $3F0B, x
asl
asl
JMP FinishExpReward


FinishExpReward:
sta $2267,y
JML $C23F94

FinishEXPHookImmediate:
rep #$20
lda $3F0B, x
sta $2267,y
JML $C23F94



org $C24D27
JML ABPHook

org !ADDRESS_abpmod
ABPHook:
; TYA
CPY #$0002
BNE FinishABPHookImmediate

; Load reward config 
LDA !rewardconfig
and #$70
CMP #$20
BEQ ABPMult4
CMP #$10
BEQ ABPMult2
; no config
JMP FinishABPHookImmediate




ABPMult2:
CLC
lda $d03000,x
asl
BCS LoadMaxABP
JMP FinishABPReward
ABPMult4:
CLC
lda $d03000,x
asl
BCS LoadMaxABP
asl
BCS LoadMaxABP
JMP FinishABPReward

LoadMaxABP:
lda #$FF

FinishABPReward:
sta $3eef,y
JML $C24D2E

FinishABPHookImmediate:

lda $d03000,x
sta $3eef,y
JML $C24D2E