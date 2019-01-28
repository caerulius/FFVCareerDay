hirom
!base = $C00000
!input = $7E0114
!input2 = $7E0B03
!configmenucheck = $7E0159 ; when this is #$06, player is in config menu
!menutype = $7E0143
!itemmenuvalidater = $7E01E0
!itemmenuloc = $7E0200
!speedvalue = $7E0BC0
!itemboxwriter = $7E7511
!encounterswitch = $7E0973
!lastframesave = $7EF87E
!destinationindex = $7E1E20
!destinationdata1 = $E79400
!destinationdata2 = $E79420

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


















; ; Frame by frame hook, NOT in menu

; org ###$C0043F
; nop
; nop

; JML FrameHook

; org $
; FrameHook:


; PHA


; ; do stuff 



; PLA ; pull A from above


; ; original instructions
; PLD
; PLB
; PLY
; PLX
; PLA
; PLP
; JML $C00445




















; For MENU frame by frame
org $C2FBE9
JML FrameHookMenu

org $F00500

FrameHookMenu:
PHA
PHX
PHY

; this code will block out the 4/5/6 on the config menu
; due to the index system and ROM data, the game automatically copies the "1 2 3 4 5 6 " twice from ROM, so it's not possible to isolate "1 2 3" for walk speed
; therefore, we use vram to block it out, which is only active in the config menu 

sep #$20
lda !configmenucheck ; load config menu id
CMP #$06 ; if anything else, branch 
bne CheckDestinationWriter


; this writes to vram 

LDA #$53  ; WRITE address  - location of "3" 
STA $002116
LDA #$11  ; WRITE address
STA $002117
LDA #$80
STA $002115

LDA #$96
STA $002118



LDA #$55  ; WRITE address  - location of "4" 
STA $002116
LDA #$11  ; WRITE address
STA $002117
LDA #$80
STA $002115

LDA #$96
STA $002118



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
JML FinishFrameHookMenu


; this code will check for destinations
; it confirms if in the item menu $7E0143 == $07
; then confirms if the pointer is on the Rare icon $7E0200 == $A8
; then confirms if the "Rare" menu is actually selected $7E01E0 == $00, then triggers text
; if all conditions met, then write destination data and trigger via storing $01 in $7E7511

; still in 8 bit mode
CheckDestinationWriter:
lda !menutype
CMP #$07
BNE FinishFrameHookMenuHook
lda !itemmenuloc 
CMP #$A8
BNE FinishFrameHookMenuHook
lda !itemmenuvalidater
CMP #$00
BNE ClearItemText ; here, if leaving the "Rare" menu, set back to no text
BEQ FillItemText

FinishFrameHookMenuHook:
JML FinishFrameHookMenu
; if conditions met, then execute destination writer
; !destinationdata2 - lookup table for index 
; Load in value at $7EF87F and asl 5 times to get an index location
; Example base F18300 (UPDATE: old code, changed to $E7 bank instead of $F1)
; Value at $7EF87F is 02
; $0002 asl x5 → $0020
; then index will be $F18500

; 28 characters per per line
FillItemText:
ldx #$0000 ; First loop for "Destination"
ldy #$0000 ; First loop for "Destination"
FillTextLoop1st:
    lda !destinationdata1, x ; begins at index, increases x until 28 char limit
    sta $51C4, y
    inx
    iny
    iny
    CPY #$0038 ; Max chars in hex
    BNE FillTextLoop1st

rep #$20
lda #$0000
sep #$20
lda !destinationindex
rep #$20
asl
asl
asl
asl
asl  ; now an index 
TAX
sep #$20

ldy #$0000 ; 28 character limit to length of line 
FillTextLoop:
    lda !destinationdata2, x ; begins at index, increases x until 28 char limit
    sta $5244, y
    inx
    iny
    iny
    CPY #$0038 ; Max chars in hex
    BNE FillTextLoop

lda #$01
sta !itemboxwriter
JML FinishFrameHookMenu

ClearItemText:
LDA #$FF
LDX #$0000
ClearTextLoop1st:
    sta $51C4, x
    inx
    inx
    CPX #$0038 ; Max chars in hex
    BNE ClearTextLoop1st
LDX #$0000    
ClearTextLoop:
    sta $5244, x
    inx
    inx
    CPX #$0038 ; Max chars in hex
    BNE ClearTextLoop

lda #$01
sta !itemboxwriter
JML FinishFrameHookMenu







FinishFrameHookMenu:
; original instructions
rep #$20
PLY
PLX
PLA

LDA #$0001
clc
ADC $094a
STA $094a

JML $C2FBF3
