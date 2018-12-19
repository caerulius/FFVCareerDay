hirom
!unlockedjobs1 = $0840
!unlockedjobs2 = $0841
!unlockedjobs3 = $0842
!rewardid = $12
!typeid = $11
org $c00e3a
JML ChestHook1

org $F01000
ChestHook1:
lda $D13213,x
STA !rewardid
LDA !typeid
CMP #$50 ; if new id 'JOB' 
BEQ BranchToJobReward
LDA !typeid
BPL BranchIfPlusChestIDBranch
JML $C00E44

BranchIfPlusChestIDBranch:
JMP BranchIfPlusChestID

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
JML $c00e74

BranchIfPlusChestID:
JML $C00E47


; hook for changing indexing based on job id or not 
org $C08AC2
JML JobIndexing

org $F01200
JobIndexing:
ADC $0F
PHA
sep #$20
LDA !typeid ; $000B11, the reward type (50 = JOB)
CMP #$50
BNE DoNotAddJobIndex
; if job, then add #$1D00 to index
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