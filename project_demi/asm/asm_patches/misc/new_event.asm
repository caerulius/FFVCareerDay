hirom
!destinationindex = $7E1E20
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
phy


lda $DF ; load in first argument, which will be the reward index.
asl ; asl it once, because we'll be indexing for every 2 bytes for reward type and id
tax

lda !eventrewardindex+1, x ; load in reward id 
sta !rewardid
sta $16a2				; another reward id
lda !eventrewardindex, x ; load in type id 
sta !typeid

CMP #$40 ; compare type id
BEQ EventRewardItem
; below is for key items, need a deeper system for event flags, not just the 'item' itself. All this does is set up a textbox appropriately
; CMP #$30 ; compare type id
; BEQ EventRewardKeyItem
CMP #$20 ; compare type id
BEQ EventRewardMagic
CMP #$50 ; compare type id 
BEQ EventRewardCrystal
CMP #$60 ; compare type id
BEQ EventRewardAbility

JMP FinishRewardEvent ; in case no matches


EventRewardItem: ; give item
lda !rewardid
sta $16a2				; another reward id
jsr $bfdd ; this subroutine handles awarding item based on cycling through inventory
cpy #$0100 ; if 100 was reached (255 items), then award new item
BEQ AwardNewItem

; item was found, award it
lda $0740, y
cmp #$63
BEQ FinishRewardEvent ; if 99, don't add again, finish event 
; otherwise award item 
lda $0740, y
inc
sta $0740, y
JMP FinishRewardEvent




; no new item was reached, add an entirely new one 
AwardNewItem:
ldy $06
AwardNewItem2:
lda $0640,y
BEQ BlankSlotFound
iny
BRA AwardNewItem2

BlankSlotFound:
lda $16a2
sta $0640,y
lda #$01
sta $0740,y
JMP FinishRewardEvent







; EventRewardKeyItem: ; give key item
; JSL BranchToKeyItemReward
; JMP FinishRewardEvent


EventRewardMagic: ; give magic
lda !rewardid
sta $16a3				; another reward id
jsr $C9A5
JMP FinishRewardEvent

EventRewardCrystal:
JSL BranchToJobReward
JMP FinishRewardEvent

EventRewardAbility:
JSL BranchToAbilityReward
JMP FinishRewardEvent

FinishRewardEvent:
ply
plx
pla 
;sta !destinationindex
JMP $A630


; REWARD TEXT BOX SWITCHER : Code $DF

; Here, we have separate text boxes for All-non magic rewards, and all-magic rewards
; So we used the reward type ID loaded in from event code $DE to distinguish which textbox to use
; This system is cleverly advancing the 'event code index' ($D6) and hardcoding in the textbox to use for either magic or non-magic (Either C8 04 00 or C8 02 00 into arguments $E0, $DF, and $DE)

org $C0A5A6 ; new offset for generic event handler
db $A0, $CE ; this will make the new loading code for this $C0CD9A0

org $C0CEA0

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
JMP $C7A4 ; branch the fk out and hope it works (it does)




; org $E79F00
; db $09, $38, $13

; RANDOMIZER JOB SETTING  : Code $EC
; On rando seeds, this will trigger from the values written to E79F00:
; $00 = job id
; $01 = starting weapon
; $02 = starting magic

org $C0A5C0
db $20, $CE ; branch to $C0CE20

org $C0CE20
pha
phx

; turn off freelancer
LDA #$00
STA $000842


; set job value to learned jobs
LDX #$0000
LDA $E79F00
AND #$07
tax
LDA $C0C9B9,X
pha
LDA $E79F00
lsr
lsr
lsr
tax
pla
ora $0840,x
sta $0840,x

; set characters to default job
LDA $E79F00
STA $0501
STA $0551
STA $05A1
STA $05F1

; set characters' default weapon to right hard
LDA $E79F01
STA $0513
STA $0563
STA $05B3
STA $0603

; set default magic

LDA $E79F02
AND #$07
tax
LDA $C0C9B9,X
pha
LDA $E79F02
lsr
lsr
lsr
tax
pla
ora $0950,x
sta $0950,x



plx
pla

JMP $A630 ; hopefully this works 

