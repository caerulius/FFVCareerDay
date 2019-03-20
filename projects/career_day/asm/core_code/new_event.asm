hirom


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
db $A0, $CD ; this will make the new loading code for this $C0CDA0

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
CMP #$30 ; compare type id
BEQ EventRewardKeyItem
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







EventRewardKeyItem: ; give key item
JSL BranchToKeyItemReward
JMP FinishRewardEvent


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
JML $C0A630



; Ran into space issues
; For the base case 







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



; RANDOMIZER JOB SETTING  : Code $EC
; On rando seeds, this will trigger from the values written to E79F00:
; $00 = job id
; $01 = starting weapon
; $02 = starting magic

org $C0A5C0
db $F0, $CE ; branch to $C0CE20

org $C0CEF0
JML RandomizerJobSetting

org !ADDRESS_NEWEVENT_jobsetting
RandomizerJobSetting:
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

; Do it with E79F03
LDA $E79F03
STA $0517
STA $0567
STA $05B7
STA $0607


; for the weapon code, if monk, need to set both hands correctly
CMP #$01
BEQ SetMonkWeapons
BNE SetWeaponsNormal

; Just need to set left hand
SetMonkWeapons:
LDA #$01
STA $0514
STA $0564
STA $05B4
STA $0604


SetWeaponsNormal:

; set characters' default weapon to right hand
LDA $E79F01
STA $0513
STA $0563
STA $05B3
STA $0603
; set left hand to blank
STZ $0514
STZ $0564
STZ $05B4
STZ $0604
; set shield to blank on faris
STZ $0602

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

JML $C0A630 ; hopefully this works 





; CONDITIONAL VEHICLE PLACEMENT : Code $ED
; Based on whether certain event flags are set, place/do not place vehicles

org $C0A5C2
db $F4, $CE ; branch to $C0CE20

org $C0CEF4
JML ConditionalVehicles

org !ADDRESS_NEWEVENT_conditionalvehicles
ConditionalVehicles:

; check vehicle type
LDY #$0004 ; offset for how far into $D2 command for vehicle type
LDA [$D6], y
; SUBMARINE
CMP #$6C ; submarine code
BNE ConditionalVehiclesCheckHiryuu
LDA $000A4A
AND #$04 ; 000A4A, test bit 04
CMP #$04
BEQ ConditionalVehiclesPlaceVehicle
BNE ConditionalVehiclesFailure



JMP ConditionalVehiclesPlaceVehicle


ConditionalVehiclesCheckHiryuu:
; check vehicle type
LDY #$0004 ; offset for how far into $D2 command for vehicle type
LDA [$D6], y
; HIRYUU
CMP #$90 ; hiryuu code
BNE ConditionalVehiclesFailure
LDA $000A4A
AND #$02 ; 000A4A, test bit 02
CMP #$02
BEQ ConditionalVehiclesPlaceVehicle
BNE ConditionalVehiclesFailure

; replicate original code, but manually set #$D2 at the end to place vehicle
ConditionalVehiclesPlaceVehicle:
STZ $BA
LDX $D4
LDY #$0005
LDA [$D6], y
STA $E3
DEY
LDA [$D6], y
STA $E2
DEY
LDA [$D6], y
STA $E1
DEY
LDA [$D6], y
STA $E0
DEY
LDA [$D6], y
STA $DF
DEY
LDA #$D2
STA $DE
JML $C0A26C


ConditionalVehiclesFailure:
; failure
LDA $D6
ADC #$05
STA $D6
JML $C0A248



; CONDITIONAL EVENT FLAGS ON WARP : Code $EE
; Based on whether certain event flags are set, change event flags. Primarily for vehicles
; And changing worlds. Also Ronka access 


org $C0A5C4
db $F8, $CE ; branch to $C0CE20

org $C0CEF8
JML ConditionalEventFlags

org !ADDRESS_NEWEVENT_conditionaleventflags
ConditionalEventFlags:

; no matter what, treat these flags:

; flag for leaving the Rift (important for Exit spell, otherwise Rift exit spell cutscene plays and places player in w3)
LDA #$01
TRB $0A14

; load world
LDA $000AD6
CMP #$00
BNE ConditionalEventFlagsCheckWorld2
; World 1
; Set RONKA RUINS access to on IF Adamantite active
LDA $000A4C
AND #$04
CMP #$04
BNE ConditionalEventFlagsCheckWorld1Next1 
; Condition met 
phx
LDA #$04
LDX #$0053
JSL SetKeyItemBits
plx

ConditionalEventFlagsCheckWorld1Next1:

JMP ConditionalEventFlagsFinish

ConditionalEventFlagsCheckWorld2:
LDA $000AD6
CMP #$01
BNE ConditionalEventFlagsCheckWorld3


ConditionalEventFlagsCheckWorld3:
LDA $000AD6
CMP #$02
BNE ConditionalEventFlagsFinish
; Set SUBMARINE ON AIRSHIP if SUBMARINE KEY
LDA $000A4A
AND #$02
CMP #$02
BNE ConditionalEventFlagsCheckWorld3Next1 
; Condition met
phx
LDA #$02
LDX #$0053
JSL SetKeyItemBits
plx
ConditionalEventFlagsCheckWorld3Next1:

ConditionalEventFlagsFinish:
JML $C0A628 ; hopefully this works 




; RIFT TABLET COUNTING : Code $EF
; Checks 4 tablets and gets a count
; Then checks map ID for position and determine if player belongs or not
; Uses unused event flag 

org $C0A5C6
db $FC, $CE ; branch to $C0CE20

org $C0CEFC
JML RiftTabletConditional

org !ADDRESS_NEWEVENT_conditionalrifttablet
RiftTabletConditional:
STZ !unusedram1
STZ !unusedram2


; Get count of how many tablets 
; 1st tablet
LDA $0A24
AND #$08
CMP #$08
BNE CheckNextTablet2
INC !unusedram1

CheckNextTablet2:
; 2nd tablet
LDA $0A25
AND #$40
CMP #$40
BNE CheckNextTablet3
INC !unusedram1

CheckNextTablet3:
; 3rd tablet
LDA $0A26
AND #$02
CMP #$02
BNE CheckNextTablet4
INC !unusedram1

CheckNextTablet4:
; 4th tablet
LDA $0A26
AND #$08
CMP #$08
BNE RiftTabletContinue1
INC !unusedram1

RiftTabletContinue1:

; Check map id, 1 byte's enough
lda $0AD4
; Pyramid area, 1st check
CMP #$DC
BNE CheckNextRiftMap1
LDA #$01
JMP RiftTabletContinue2
CheckNextRiftMap1:
; Lonka area, 2nd check
CMP #$DF
BNE CheckNextRiftMap2
LDA #$02
JMP RiftTabletContinue2
CheckNextRiftMap2:
; Falls area, 3rd check
CMP #$EC
BNE CheckNextRiftMap3
LDA #$03
JMP RiftTabletContinue2
CheckNextRiftMap3:
; Castle area, 4th check
CMP #$F0
BNE RiftTabletContinue2
LDA #$04



RiftTabletContinue2:
STA !unusedram2
LDA !unusedram1
; A has now has count of tablets, !unusedram2 has value to check against per map
CMP !unusedram2
; Branch if carry clear means A is less than the count per the map ID
BCC RiftTabletFailureCase

; Success case - A42 to 01
LDA #$01
LDX #$0041
JSL SetKeyItemBits
; This marks the event as complete for conditional branchhing
LDA #$02
LDX #$0041
JSL SetKeyItemBits
JML $C0A628 ; end event function

RiftTabletFailureCase:
LDA #$01
TRB $0A41
; Failure case - A42 set to 02 only
LDA #$02
LDX #$0041
JSL SetKeyItemBits
JML $C0A628 ; end event function



; Unused, saved for syntax
;; RONKA RUINS always unset
; LDA #$04
; TRB $0A53