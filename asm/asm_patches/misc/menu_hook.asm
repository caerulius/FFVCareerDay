hirom
!base = $C00000
!input = $7E0114
!encounterswitch = $7EF87C
!lastframesave = $7EF87E

org $C0CAB2
; Step counter increaser area 

JML EncounterHook
nop
nop
nop
nop

org $F00000
EncounterHook:
sep #$20

LDA !encounterswitch
CMP $00
BNE EncountersOn

; Code executes if encounters are off
LDA $00
rep #$20
BEQ Finish

; standard code for when encounters are on 
EncountersOn:
rep #$20
LDA $16A8
BEQ Finish


Finish:
CLC
ADC $c0cb09,x

JML $C0CABA

; c0cab2 lda $16a8     [0016a8] A:0000 X:0000 Y:0000 S:1ffd D:0b00 DB:00 nvmxdiZc V: 21 H:236 F: 9
; c0cab5 clc                    A:0000 X:0000 Y:0000 S:1ffd D:0b00 DB:00 nvmxdiZc V: 21 H:265 F: 1
; c0cab6 adc $c0cb09,x [c0cb09] A:0000 X:0000 Y:0000 S:1ffd D:0b00 DB:00 nvmxdiZc V: 21 H:268 F: 1



; Hook for world map encounters
org $c0cbbe
JML WorldMapHook

org $F00050
WorldMapHook:

sep #$20
LDA !encounterswitch
CMP #$00
BNE WorldMapReturnEnc


rep #$20
lda #$0000
sta $16a8
lda $06
sep #$20
JML $c0cbc5

WorldMapReturnEnc:
rep #$20
sta $16a8
lda $06
sep #$20
JML $c0cbc5














; Frame by frame hook, NOT in menu

org $C0043F
nop
nop

JML FrameHook

org $F10000
FrameHook:


PHA
; LDA !input
; CMP #$0020 ; if l pushed
; BEQ LPushed
; CMP #$0010 ; if r pushed
; BEQ RPushed
; JMP FrameFinish

; ; if pushed, execute below
; LPushed:
; LDA #$0000
; STA !encounterswitch
; BEQ FrameFinish

; ; if pushed, execute below
; RPushed:
; LDA #$FFFF
; STA !encounterswitch
; BEQ FrameFinish


FrameFinish:
sep #$20
LDA #$00
STA !lastframesave
rep #$20
PLA ; pull A from above


; original instructions
PLD
PLB
PLY
PLX
PLA
PLP
JML $C00445












; For MENU frame by frame
org $C2FBE9
JML FrameHookMenu

org $F18000

FrameHookMenu:
PHA
; LDA !input
; CMP #$0020 ; if l pushed
; BEQ LPushedMenu
; CMP #$0010 ; if r pushed
; BEQ RPushedMenu
; JMP FrameFinishMenu

; ; if pushed, execute below
; LPushedMenu:
; LDA #$0000
; STA !encounterswitch
; BEQ FrameFinishMenu

; ; if pushed, execute below
; RPushedMenu:
; LDA #$FFFF
; STA !encounterswitch
; BEQ FrameFinishMenu


FrameFinishMenu:
; ; write the last frame
; LDA !lastframesave
; CMP #$0001
; BEQ Save1
; LDA #$0001
; STA !lastframesave
; JML FinishEnd
; Save1:
; LDA #$0000
; STA !lastframesave
sep #$20
LDA #$00
STA !lastframesave
rep #$20


; FinishEnd:

; original instructions
PLA
LDA #$0001
clc
ADC $094a
STA $094a

JML $C2FBF3
