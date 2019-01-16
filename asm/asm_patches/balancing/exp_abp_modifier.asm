hirom

org $C23F8E

JML EXPHook

org $F000A0
EXPHook:

CPY #$0000
BNE FinishEXPHookImmediate
lda $3F0B, x

; for each multipler, add an asl command. its effectively 2x to the value for exp 
asl ;2x
; asl ;4x
; asl ;8x
sta $2267,y
JML $C23F94

FinishEXPHookImmediate:
lda $3F0B, x
sta $2267,y
JML $C23F94



org $C24D27
JML ABPHook

org $F000C0
ABPHook:
; TYA
CPY #$0002
BNE FinishABPHook

lda $d03000,x
; for each multipler, add an asl command. its effectively 2x to the value for abp
asl ;2x
; asl ;4x
;asl ;8x


sta $3eef,y
JML $C24D2E

FinishABPHook:
lda $d03000,x
sta $3eef,y
JML $C24D2E