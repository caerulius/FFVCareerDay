hirom
!unlockedjobs1 = $0840
!unlockedjobs2 = $0841
!unlockedjobs3 = $0842
!rewardid = $12
!typeid = $11
!progmagictable = $F80400
!unlockedmagic = $0950
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
CMP #$20
BEQ IntermediateBranchToMagicReward
LDA !typeid
BPL BranchIfPlusChestIDBranch
JML $C00E44

IntermediateBranchToAbilityReward:
JSL BranchToAbilityReward
JML $c00e74

BranchIfPlusChestIDBranch:
JML $C00E47

IntermediateBranchToMagicReward:
JSL BranchToMagicReward
JML $C00E69

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

; end with generic finisher
JML JobsAssigned

BranchToMagicReward:
lda !rewardid
asl a
asl a
tax
ldy #$0000 ;loop counter
phy
phx

ProgressionLoop:
plx ;grab loop counter
ply ;grab our loop counter to check
tya

phy ;store our loop counter
phx

; if our index is 4, we already have everything in that progression, exit early
cmp #$04 
beq GetLastAndExit

; if the current progression value is $#FF, no more progression is defined, exit early
lda !progmagictable, x ;load the current magic to check
cmp #$FF
beq GetLastAndExit

pha ;store the current magic to reuse later

;divide by 8 to get the byte we want to reference and store in y
lsr a
lsr a
lsr a
tay

;retrieve the current magic again and test it against #$07 to 
;know which bit we're referring to
pla
and #$07
tax

;load the byte storing the relevant spell info. And it vs
;the correct bit.
lda !unlockedmagic,y
and $C0C9B9,x

;if the result isn't 0, we have that spell already, so loop again
bne ProgressionReloop

;otherwise, we don't have that spell, so load the value back into a and exit, also clean up our stack
plx
lda !progmagictable, x
ply ;clean up stack
jmp ExitProgression

ProgressionReloop:
;grab our loop counter, increment it, restore it
plx
inx
ply
iny
phy
phx
jmp ProgressionLoop

GetLastAndExit: ;get last result, which should be valid, and exit with that in a
dex
lda !progmagictable, x
plx
ply ;clean up the stack
jmp ExitProgression

ExitProgression:
RTL














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


;Knight
org $E77560
db $6A
db $87
db $82
db $80
db $81
db $8D
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Monk
org $E77578
db $6C
db $88
db $87
db $84
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Thief
org $E77590
db $73
db $81
db $82
db $7E
db $7F
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Dragoon
org $E775A8
db $63
db $8B
db $7A
db $80
db $88
db $88
db $87
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Ninja
org $E775C0
db $6D
db $82
db $87
db $83
db $7A
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Samurai
org $E775D8
db $72
db $7A
db $86
db $8E
db $8B
db $7A
db $82
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Berserker
org $E775F0
db $61
db $7E
db $8B
db $8C
db $7E
db $8B
db $84
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Hunter
org $E77608
db $67
db $8E
db $87
db $8D
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;MysticKnight
org $E77620
db $6C
db $92
db $8C
db $8D
db $82
db $7C
db $6A
db $87
db $82
db $80
db $81
db $8D
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;WhiteMage
org $E77638
db $76
db $81
db $82
db $8D
db $7E
db $6C
db $7A
db $80
db $7E
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;BlackMage
org $E77650
db $61
db $85
db $7A
db $7C
db $84
db $6C
db $7A
db $80
db $7E
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;TimeMage
org $E77668
db $73
db $82
db $86
db $7E
db $6C
db $7A
db $80
db $7E
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Summoner
org $E77680
db $72
db $8E
db $86
db $86
db $88
db $87
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;BlueMage
org $E77698
db $61
db $85
db $8E
db $7E
db $6C
db $7A
db $80
db $7E
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;RedMage
org $E776B0
db $71
db $7E
db $7D
db $6C
db $7A
db $80
db $7E
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Mediator
org $E776C8
db $6C
db $7E
db $7D
db $82
db $7A
db $8D
db $88
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Chemist
org $E776E0
db $62
db $81
db $7E
db $86
db $82
db $8C
db $8D
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Geomancer
org $E776F8
db $66
db $7E
db $88
db $86
db $7A
db $87
db $7C
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Bard
org $E77710
db $61
db $7A
db $8B
db $7D
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Dancer
org $E77728
db $63
db $7A
db $87
db $7C
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Mimic
org $E77740
db $6C
db $82
db $86
db $82
db $7C
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF
;Freelancer
org $E77758
db $65
db $8B
db $7E
db $7E
db $85
db $7A
db $87
db $7C
db $7E
db $8B
db $96
db $62, $8B, $92, $8C
db $8D, $7A, $85, $FF



; Abilities
;Other Ability
org $E78700
db $6E
db $8D
db $81
db $7E
db $8B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Item Ability
org $E78718
db $68
db $8D
db $7E
db $86
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Row Ability
org $E78730
db $71
db $88
db $90
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Def. Ability
org $E78748
db $63
db $7E
db $7F
db $A3
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Attack Ability
org $E78760
db $60
db $8D
db $8D
db $7A
db $7C
db $84
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Guard Ability
org $E78778
db $66
db $8E
db $7A
db $8B
db $7D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Kick Ability
org $E78790
db $6A
db $82
db $7C
db $84
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;BuildUp Ability
org $E787A8
db $61
db $8E
db $82
db $85
db $7D
db $74
db $89
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Mantra Ability
org $E787C0
db $6C
db $7A
db $87
db $8D
db $8B
db $7A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Escape Ability
org $E787D8
db $64
db $8C
db $7C
db $7A
db $89
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Steal Ability
org $E787F0
db $72
db $8D
db $7E
db $7A
db $85
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Capture Ability
org $E78808
db $62
db $7A
db $89
db $8D
db $8E
db $8B
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Jump Ability
org $E78820
db $69
db $8E
db $86
db $89
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;DrgnSwd Ability
org $E78838
db $63
db $8B
db $80
db $87
db $72
db $90
db $7D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Smoke Ability
org $E78850
db $72
db $86
db $88
db $84
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Image Ability
org $E78868
db $68
db $86
db $7A
db $80
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Throw Ability
org $E78880
db $73
db $81
db $8B
db $88
db $90
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;SwdSlap Ability
org $E78898
db $72
db $90
db $7D
db $72
db $85
db $7A
db $89
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;GilToss Ability
org $E788B0
db $66
db $82
db $85
db $73
db $88
db $8C
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Slash Ability
org $E788C8
db $72
db $85
db $7A
db $8C
db $81
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Animals Ability
org $E788E0
db $60
db $87
db $82
db $86
db $7A
db $85
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Aim Ability
org $E788F8
db $60
db $82
db $86
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;X-Fight Ability
org $E78910
db $77
db $96
db $65
db $82
db $80
db $81
db $8D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Conjure Ability
org $E78928
db $62
db $88
db $87
db $83
db $8E
db $8B
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Observe Ability
org $E78940
db $6E
db $7B
db $8C
db $7E
db $8B
db $8F
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Analyze Ability
org $E78958
db $60
db $87
db $7A
db $85
db $92
db $93
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Tame Ability
org $E78970
db $73
db $7A
db $86
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Control Ability
org $E78988
db $62
db $88
db $87
db $8D
db $8B
db $88
db $85
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Catch Ability
org $E789A0
db $62
db $7A
db $8D
db $7C
db $81
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Release Ability
org $E789B8
db $71
db $7E
db $85
db $7E
db $7A
db $8C
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Combine Ability
org $E789D0
db $62
db $88
db $86
db $7B
db $82
db $87
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Drink Ability
org $E789E8
db $63
db $8B
db $82
db $87
db $84
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Pray Ability
org $E78A00
db $6F
db $8B
db $7A
db $92
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Revive Ability
org $E78A18
db $71
db $7E
db $8F
db $82
db $8F
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Terrain Ability
org $E78A30
db $73
db $7E
db $8B
db $8B
db $7A
db $82
db $87
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;*Dummy01 Ability
org $E78A48
db $96
db $63
db $8E
db $86
db $86
db $92
db $53
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Hide Ability
org $E78A60
db $67
db $82
db $7D
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Show Ability
org $E78A78
db $72
db $81
db $88
db $90
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;*Dummy02 Ability
org $E78A90
db $96
db $63
db $8E
db $86
db $86
db $92
db $53
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Sing Ability
org $E78AA8
db $72
db $82
db $87
db $80
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Flirt Ability
org $E78AC0
db $65
db $85
db $82
db $8B
db $8D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dance Ability
org $E78AD8
db $63
db $7A
db $87
db $7C
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Mimic Ability
org $E78AF0
db $6C
db $82
db $86
db $82
db $7C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank18 Ability
org $E78B08
db $61
db $85
db $7A
db $87
db $84
db $54
db $5B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank19 Ability
org $E78B20
db $61
db $85
db $7A
db $87
db $84
db $54
db $5C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank20 Ability
org $E78B38
db $61
db $85
db $7A
db $87
db $84
db $55
db $53
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank21 Ability
org $E78B50
db $61
db $85
db $7A
db $87
db $84
db $55
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank22 Ability
org $E78B68
db $61
db $85
db $7A
db $87
db $84
db $55
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.2 Ability
org $E78B80
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.3 Ability
org $E78B98
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.4 Ability
org $E78BB0
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.5 Ability
org $E78BC8
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.6 Ability
org $E78BE0
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MgcSwrd Lv.7 Ability
org $E78BF8
db $6C
db $80
db $7C
db $72
db $90
db $8B
db $7D
db $96
db $6B
db $8F
db $A3
db $5A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank23 Ability
org $E78C10
db $61
db $85
db $7A
db $87
db $84
db $55
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank24 Ability
org $E78C28
db $61
db $85
db $7A
db $87
db $84
db $55
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.1 Ability
org $E78C40
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.2 Ability
org $E78C58
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.3 Ability
org $E78C70
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.4 Ability
org $E78C88
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.5 Ability
org $E78CA0
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;White Lv.6 Ability
org $E78CB8
db $76
db $81
db $82
db $8D
db $7E
db $96
db $6B
db $8F
db $A3
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank25 Ability
org $E78CD0
db $61
db $85
db $7A
db $87
db $84
db $55
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank26 Ability
org $E78CE8
db $61
db $85
db $7A
db $87
db $84
db $55
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.1 Ability
org $E78D00
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.2 Ability
org $E78D18
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.3 Ability
org $E78D30
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.4 Ability
org $E78D48
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.5 Ability
org $E78D60
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Black Lv.6 Ability
org $E78D78
db $61
db $85
db $7A
db $7C
db $84
db $96
db $6B
db $8F
db $A3
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank1 Ability
org $E78D90
db $61
db $85
db $7A
db $87
db $84
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank2 Ability
org $E78DA8
db $61
db $85
db $7A
db $87
db $84
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.1 Ability
org $E78DC0
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.2 Ability
org $E78DD8
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.3 Ability
org $E78DF0
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.4 Ability
org $E78E08
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.5 Ability
org $E78E20
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dimen Lv.6 Ability
org $E78E38
db $63
db $82
db $86
db $7E
db $87
db $96
db $6B
db $8F
db $A3
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank3 Ability
org $E78E50
db $61
db $85
db $7A
db $87
db $84
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank4 Ability
org $E78E68
db $61
db $85
db $7A
db $87
db $84
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Summon Lv.1 Ability
org $E78E80
db $72
db $8E
db $86
db $86
db $88
db $87
db $96
db $6B
db $8F
db $A3
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Summon Lv.2 Ability
org $E78E98
db $72
db $8E
db $86
db $86
db $88
db $87
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Summon Lv.3 Ability
org $E78EB0
db $72
db $8E
db $86
db $86
db $88
db $87
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Summon Lv.4 Ability
org $E78EC8
db $72
db $8E
db $86
db $86
db $88
db $87
db $96
db $6B
db $8F
db $A3
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Summon Lv.5 Ability
org $E78EE0
db $72
db $8E
db $86
db $86
db $88
db $87
db $96
db $6B
db $8F
db $A3
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank5 Ability
org $E78EF8
db $61
db $85
db $7A
db $87
db $84
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank6 Ability
org $E78F10
db $61
db $85
db $7A
db $87
db $84
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank7 Ability
org $E78F28
db $61
db $85
db $7A
db $87
db $84
db $5A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Red Lv.1 Ability
org $E78F40
db $71
db $7E
db $7D
db $96
db $6B
db $8F
db $A3
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Red Lv.2 Ability
org $E78F58
db $71
db $7E
db $7D
db $96
db $6B
db $8F
db $A3
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Red Lv.3 Ability
org $E78F70
db $71
db $7E
db $7D
db $96
db $6B
db $8F
db $A3
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank8 Ability
org $E78F88
db $61
db $85
db $7A
db $87
db $84
db $5B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank9 Ability
org $E78FA0
db $61
db $85
db $7A
db $87
db $84
db $5C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank10 Ability
org $E78FB8
db $61
db $85
db $7A
db $87
db $84
db $54
db $53
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank11 Ability
org $E78FD0
db $61
db $85
db $7A
db $87
db $84
db $54
db $54
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank27 Ability
org $E78FE8
db $61
db $85
db $7A
db $87
db $84
db $55
db $5A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;X-Magic Ability
org $E79000
db $77
db $96
db $6C
db $7A
db $80
db $82
db $7C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blue Ability
org $E79018
db $61
db $85
db $8E
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank12 Ability
org $E79030
db $61
db $85
db $7A
db $87
db $84
db $54
db $55
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank13 Ability
org $E79048
db $61
db $85
db $7A
db $87
db $84
db $54
db $56
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank14 Ability
org $E79060
db $61
db $85
db $7A
db $87
db $84
db $54
db $57
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank15 Ability
org $E79078
db $61
db $85
db $7A
db $87
db $84
db $54
db $58
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank16 Ability
org $E79090
db $61
db $85
db $7A
db $87
db $84
db $54
db $59
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Blank17 Ability
org $E790A8
db $61
db $85
db $7A
db $87
db $84
db $54
db $5A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Shield Ability
org $E790C0
db $64
db $8A
db $8E
db $82
db $89
db $96
db $72
db $81
db $82
db $7E
db $85
db $7D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Armors Ability
org $E790D8
db $64
db $8A
db $8E
db $82
db $89
db $96
db $60
db $8B
db $86
db $88
db $8B
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Ribbon Ability
org $E790F0
db $64
db $8A
db $8E
db $82
db $89
db $96
db $71
db $82
db $7B
db $7B
db $88
db $87
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Swords Ability
org $E79108
db $64
db $8A
db $8E
db $82
db $89
db $96
db $72
db $90
db $88
db $8B
db $7D
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Spears Ability
org $E79120
db $64
db $8A
db $8E
db $82
db $89
db $96
db $72
db $89
db $7E
db $7A
db $8B
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Katana Ability
org $E79138
db $64
db $8A
db $8E
db $82
db $89
db $96
db $6A
db $7A
db $8D
db $7A
db $87
db $7A
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Axes Ability
org $E79150
db $64
db $8A
db $8E
db $82
db $89
db $96
db $60
db $91
db $7E
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Bows Ability
org $E79168
db $64
db $8A
db $8E
db $82
db $89
db $96
db $61
db $88
db $90
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Whips Ability
org $E79180
db $64
db $8A
db $8E
db $82
db $89
db $96
db $76
db $81
db $82
db $89
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Harps Ability
org $E79198
db $64
db $8A
db $8E
db $82
db $89
db $96
db $67
db $7A
db $8B
db $89
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Agility Ability
org $E791B0
db $60
db $80
db $82
db $85
db $82
db $8D
db $92
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;HP +10% Ability
org $E791C8
db $67
db $6F
db $96
db $E2
db $54
db $53
db $CD
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;HP +20% Ability
org $E791E0
db $67
db $6F
db $96
db $E2
db $55
db $53
db $CD
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;HP +30% Ability
org $E791F8
db $67
db $6F
db $96
db $E2
db $56
db $53
db $CD
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MP +10% Ability
org $E79210
db $6C
db $6F
db $96
db $E2
db $54
db $53
db $CD
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;MP +30% Ability
org $E79228
db $6C
db $6F
db $96
db $E2
db $56
db $53
db $CD
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Brawl Ability
org $E79240
db $61
db $8B
db $7A
db $90
db $85
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dbl Grip Ability
org $E79258
db $63
db $7B
db $85
db $96
db $66
db $8B
db $82
db $89
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;2-Handed Ability
org $E79270
db $55
db $96
db $67
db $7A
db $87
db $7D
db $7E
db $7D
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Medicine Ability
org $E79288
db $6C
db $7E
db $7D
db $82
db $7C
db $82
db $87
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Cover Ability
org $E792A0
db $62
db $88
db $8F
db $7E
db $8B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Counter Ability
org $E792B8
db $62
db $88
db $8E
db $87
db $8D
db $7E
db $8B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Evade Ability
org $E792D0
db $64
db $8F
db $7A
db $7D
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Learning Ability
org $E792E8
db $6B
db $7E
db $7A
db $8B
db $87
db $82
db $87
db $80
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Barrier Ability
org $E79300
db $61
db $7A
db $8B
db $8B
db $82
db $7E
db $8B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Berserk Ability
org $E79318
db $61
db $7E
db $8B
db $8C
db $7E
db $8B
db $84
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Caution Ability
org $E79330
db $62
db $7A
db $8E
db $8D
db $82
db $88
db $87
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Preemptive Ability
org $E79348
db $6F
db $8B
db $7E
db $7E
db $86
db $89
db $8D
db $82
db $8F
db $7E
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Passages Ability
org $E79360
db $6F
db $7A
db $8C
db $8C
db $7A
db $80
db $7E
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;DmgFloor Ability
org $E79378
db $63
db $86
db $80
db $65
db $85
db $88
db $88
db $8B
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Pitfalls Ability
org $E79390
db $6F
db $82
db $8D
db $7F
db $7A
db $85
db $85
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Equip Rods Ability
org $E793A8
db $64
db $8A
db $8E
db $82
db $89
db $96
db $71
db $88
db $7D
db $8C
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF
;Dash Ability
org $E793C0
db $63
db $7A
db $8C
db $81
db $96
db $60
db $7B
db $82
db $85
db $82
db $8D
db $92
db $FF