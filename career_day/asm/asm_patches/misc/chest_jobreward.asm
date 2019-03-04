hirom
!unlockedjobs1 = $0840
!unlockedjobs2 = $0841
!unlockedjobs3 = $0842
!rewardid = $12
!typeid = $11
org $c00e3a
JML ChestHook1

org $F00200
ChestHook1:
STZ $BB0
lda $D13213,x
STA !rewardid
LDA !typeid
CMP #$50 ; if new id 'JOB' 
BEQ IntermediateBranchToJobReward
LDA !typeid
CMP #$60
BEQ IntermediateBranchToAbilityReward
LDA !typeid
CMP #$30
BEQ IntermediateBranchToKeyItemReward
LDA !typeid
BPL BranchIfPlusChestIDBranch
JML $C00E44

IntermediateBranchToAbilityReward:
JSL BranchToAbilityReward
JML $c00e74

IntermediateBranchToKeyItemReward:
JSL BranchToKeyItemReward
JML $c00e74

BranchIfPlusChestIDBranch:
JML $C00E47

IntermediateBranchToJobReward:
JSL BranchToJobReward
JML $c00e74

BranchToJobReward:
LDA !rewardid
; sets of 8 jobs per unlockedjobs1/2/3
;unlockedjobs1
CMP #$00; Knight
BEQ RewardKnight
CMP #$01; Monk
BEQ RewardMonk
CMP #$02; Thief
BEQ RewardThief
CMP #$03; Dragoon
BEQ RewardDragoon
CMP #$04; Ninja
BEQ RewardNinja
CMP #$05; Samurai
BEQ RewardSamurai
CMP #$06; Berserker
BEQ RewardBerserker
CMP #$07; Hunter
BEQ RewardHunter
JMP CheckSecondJobs


RewardKnight:
LDA #$80
TSB !unlockedjobs1
JMP JobsAssigned
RewardMonk:
LDA #$40
TSB !unlockedjobs1
JMP JobsAssigned
RewardThief:
LDA #$20
TSB !unlockedjobs1
JMP JobsAssigned
RewardDragoon:
LDA #$10
TSB !unlockedjobs1
JMP JobsAssigned
RewardNinja:
LDA #$08
TSB !unlockedjobs1
JMP JobsAssigned
RewardSamurai:
LDA #$04
TSB !unlockedjobs1
JMP JobsAssigned
RewardBerserker:
LDA #$02
TSB !unlockedjobs1
JMP JobsAssigned
RewardHunter:
LDA #$01
TSB !unlockedjobs1
JMP JobsAssigned



;unlockedjobs2
CheckSecondJobs:
CMP #$08; MysticKnight
BEQ RewardMysticKnight
CMP #$09; WhiteMage
BEQ RewardWhiteMage
CMP #$0A; BlackMage
BEQ RewardBlackMage
CMP #$0B; TimeMage
BEQ RewardTimeMage
CMP #$0C; Summoner
BEQ RewardSummoner
CMP #$0D; Blue Mage
BEQ RewardRedMage
CMP #$0E; Red Mage
BEQ RewardRedMage
CMP #$0F; Mediator
BEQ RewardMediator
JMP CheckThirdJobs


RewardMysticKnight:
LDA #$80
TSB !unlockedjobs2
JMP JobsAssigned
RewardWhiteMage:
LDA #$40
TSB !unlockedjobs2
JMP JobsAssigned
RewardBlackMage:
LDA #$20
TSB !unlockedjobs2
JMP JobsAssigned
RewardTimeMage:
LDA #$10
TSB !unlockedjobs2
JMP JobsAssigned
RewardSummoner:
LDA #$08
TSB !unlockedjobs2
JMP JobsAssigned
RewardBlueMage:
LDA #$04
TSB !unlockedjobs2
JMP JobsAssigned
RewardRedMage:
LDA #$02
TSB !unlockedjobs2
JMP JobsAssigned
RewardMediator:
LDA #$01
TSB !unlockedjobs2
JMP JobsAssigned


;unlockedjobs3
CheckThirdJobs:
CMP #$10; Chemist
BEQ RewardChemist
CMP #$11; Geomancer
BEQ RewardGeomancer
CMP #$12; Bard
BEQ RewardBard
CMP #$13; Dancer
BEQ RewardDancer
CMP #$14; Mimic
BEQ RewardMimic
CMP #$15; Freelancer
BEQ RewardFreelancer
; for some reason if none are met, JMP to end
JMP JobsAssigned

RewardChemist:
LDA #$80
TSB !unlockedjobs3
JMP JobsAssigned
RewardGeomancer:
LDA #$40
TSB !unlockedjobs3
JMP JobsAssigned
RewardBard:
LDA #$20
TSB !unlockedjobs3
JMP JobsAssigned
RewardDancer:
LDA #$10
TSB !unlockedjobs3
JMP JobsAssigned
RewardMimic:
LDA #$08
TSB !unlockedjobs3
JMP JobsAssigned
RewardFreelancer:
LDA #$04
TSB !unlockedjobs3
JMP JobsAssigned

JobsAssigned:
LDA #$02
STA $AF
LDA !rewardid
STA $16a2
RTL









BranchToAbilityReward:
!1pabilities = $08F7
!2pabilities = $090B
!3pabilities = $091F
!4pabilities = $0933

!1pabilitiescount = $08F3
!2pabilitiescount = $08F4
!3pabilitiescount = $08F5
!4pabilitiescount = $08F6

LDA !rewardid
pha
lsr a
lsr a
lsr a
tay
pla
and #$07
tax
lda !1pabilities, y
ora $C0C9B9,X
sta !1pabilities, y

lda !2pabilities, y
ora $C0C9B9,X
sta !2pabilities, y

lda !3pabilities, y
ora $C0C9B9,X
sta !3pabilities, y

lda !4pabilities, y
ora $C0C9B9,X
sta !4pabilities, y

inc !1pabilitiescount
inc !2pabilitiescount
inc !3pabilitiescount
inc !4pabilitiescount


; Check innates
; JSL CheckInnateAbility

; end with generic finisher
JML JobsAssigned




; this code will set the proper bits per key item
; refer to key_items.asm 
BranchToKeyItemReward:

; these are set up manually. this is for debugging & cleanliness
; no reason to come up with a complex indexing table here

; we're going to be using a custom bit setter 
; so we'll push A and X
pha 
phx
LDA !rewardid
CMP #$00
BEQ KeyItemTornaCanalLocator
BNE EndKeyItemReward

KeyItemTornaCanalLocator:
JSL KeyItemTornaCanal


EndKeyItemReward:

plx
pla

; end with generic finisher
JML JobsAssigned








; Innate checking
; org $F01100
; CheckInnateAbility:
; !1pinnate = $054E
; !2pinnate = $059E
; !3pinnate = $05EE
; !4pinnate = $063E

; LDA !rewardid





; hook for changing indexing based on job id or not 
org $C08AC2
JML JobIndexing

org $F00400
JobIndexing:
ADC $0F
PHA
sep #$20
LDA !typeid ; $000B11, the reward type (50 = JOB)
CMP #$50
BEQ AddJobIndex
CMP #$30
BEQ AddKeyItemIndex
CMP #$60
BEQ AddAbilityIndex
BNE DoNotAddJobIndex


; if job, then add #$1D00 to index
AddJobIndex:
rep #$20
PLA
STA $0F ; store A into $000B0F
LDA #$1D00
CLC
ADC $0F ; original contents + 1D00
; continue as usual
TAX
LDA $06
JML $C08AC7

AddKeyItemIndex:
; if ability, then add #$28A0 (for E78100 starting)
rep #$20
PLA
STA $0F ; store A into $000B0F
LDA #$28A0
CLC
ADC $0F ; original contents + 1D00
; continue as usual
TAX
LDA $06
JML $C08AC7

AddAbilityIndex:
; if ability, then add #$2EA0 (for E78700 starting)
rep #$20
PLA
STA $0F ; store A into $000B0F
LDA #$2EA0
CLC
ADC $0F ; original contents + 1D00
; continue as usual
TAX
LDA $06
JML $C08AC7




DoNotAddJobIndex:
rep #$20
PLA
TAX
LDA $06
JML $C08AC7