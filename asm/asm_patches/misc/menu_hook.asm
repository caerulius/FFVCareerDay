hirom
!base = $C00000
!input = $7E0114
!input2 = $7E0B03
!configmenucheck = $7E0159 ; when this is #$06, player is in config menu
!speedvalue = $7E0BC0
!encounterswitch = $7E0973
!lastframesave = $7EF87E

org $C0CAB2
; Step counter increaser area 
; These are the step increasers
JML EncounterHook
nop
nop
nop
nop

org $F00000
EncounterHook:
sep #$20

LDA !encounterswitch
AND #$80
BPL EncountersOn

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








; Hook for world map encounters
; These are the step increasers
org $c0cbbe
JML WorldMapHook

org $F00050
WorldMapHook:

sep #$20

; swap speed if input == B:
JSL SpeedHookGeneric
STA !speedvalue

LDA !encounterswitch
AND #$80
BPL WorldMapReturnEnc


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


; do stuff 



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


; this code will block out the 5/6 on the config menu
; due to the index system and ROM data, the game automatically copies the "1 2 3 4 5 6 " twice from ROM, so it's not possible to isolate "1 2 3 4" for walk speed
; therefore, we use vram to block it out, which is only active in the config menu 

sep #$20
lda !configmenucheck ; load config menu id
CMP #$06 ; if anything else, branch 
bne FinishFrameHookMenu


; this writes to vram 
LDA #$57  ; WRITE address  - location of "5" 
STA $002116
LDA #$11  ; WRITE address
STA $002117
LDA #$80
STA $002115

LDA #$96
STA $002118

LDA #$59  ; WRITE address  - location of "6" 
STA $002116
LDA #$11  ; WRITE address
STA $002117
LDA #$80
STA $002115

LDA #$96
STA $002118

lda #$00
sta $7E5000
rep #$20

FinishFrameHookMenu:

; this old code was for switching a value based on L/R input 
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


;FrameFinishMenu:

; this old code was for switching a value based on L/R input 
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
; original instructions
LDA #$00
STA !lastframesave
lda #$08
sta $7E0BC0
rep #$20


; FinishEnd:

; original instructions
PLA

LDA #$0001
clc
ADC $094a
STA $094a

JML $C2FBF3
