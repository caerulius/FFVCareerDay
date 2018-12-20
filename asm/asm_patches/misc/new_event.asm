hirom
!destinationindex = $7EF87F
!eventrewardindex = $C0FAB0
!typeid = $11
!rewardid = $12

; DESTINATION : Code $CC
; new event handler is going to be $CC with 1 operand argument

org $C0A580 ; new offset for generic event handler
db $90, $CD ; this will make the new loading code for this $C0CD90

org $C0CD90
lda $DF ; load in argument 
sta !destinationindex
JMP $A630




; REWARDS : Code $DE
; Apparently free space in area C0FAB0, used here for event reward indexing 

org $C0A5A4 ; new offset for generic event handler
db $A0, $CD ; this will make the new loading code for this $C0CD9A0

org $C0CDA0
pha
phx

lda $DF ; load in first argument, which will be the reward index.
asl ; asl it once, because we'll be indexing for every 2 bytes for reward type and id
tax
lda !eventrewardindex, x ; load in type id 
sta !typeid
lda !eventrewardindex+1, x ; load in reward id 
sta !rewardid
sta $16a2				; another reward id
plx
pla 
;sta !destinationindex
JMP $A630

org !eventrewardindex
db $60, $10


; REWARD TEXT BOX SWITCHER : Code $DF

; Here, we have separate text boxes for All-non magic rewards, and all-magic rewards
; So we used the reward type ID loaded in from event code $DE to distinguish which textbox to use

org $C0A5A6 ; new offset for generic event handler
db $C0, $CD ; this will make the new loading code for this $C0CD9A0

org $C0CDC0

; set up text, first and third operand always the same 
dec $D6 ; offset index by one
dec $D6 ; offset index by one
lda #$C8
STA $DE	; mimic dialogue event $C8 as first operand
LDA #$00 
STA $E0 ; mimic second argument (third operand) for dialogue

lda !typeid
CMP #$20
BEQ MagicTextBox

; standard text box
lda #$02
sta $DF
JMP $C7A4 ; branch the fk out and hope it works

; magic text box
MagicTextBox:
lda #$04
sta $DF 
JMP $C7A4 ; branch the fk out and hope it works