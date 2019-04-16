hirom
; custom item hacking

org $C2BB02
JML CustomItem

org $C2BCB1
JML AllowItemWarping


org !ADDRESS_customitem1
CustomItem:

; Load in A
LDA $7A00,X
; If specific conditions met, do something else

; Using $EE for custom item 1
CMP #$EE
BEQ CustomItemEvent1
; if no condition met
BNE ProceedRegularItem

ProceedRegularItem:
JMP ProceedRegularItemFinish


; Custom item - attempting an event
CustomItemEvent1:
; ALL CONDITIONALS FOR MAP BLOCKING HAPPENS HERE. 
; IF ANY CONDITION FAILS, the item id "FA" is loaded, which is Shoat - all it means is that it will return a non-action upon trying to use the item (and a nice little sound effect). 
; 000AD5 000AD6 are map locations. the below references are in LE format

rep #$20
lda $0AD5
; sealed room of kuzar
CMP #$3601
BEQ ProceedRejectedItem
; sealed room of kuzar
CMP #$4201
BEQ ProceedRejectedItem
; Pirate cave entrance
CMP #$1200
BEQ ProceedRejectedItem
; Wind shrine chamber
CMP #$1F00
BEQ ProceedRejectedItem
; Torna Canal
CMP #$2800
BEQ ProceedRejectedItem
; Karnak castle
CMP #$5700
BEQ ProceedRejectedItem
; Water shrine chamber
CMP #$7300
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8300
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8400
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8500
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8600
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8700
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8800
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8900
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8A00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8B00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8C00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8D00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8E00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$8F00
BEQ ProceedRejectedItem
; Karnak castle
CMP #$9000
BEQ ProceedRejectedItem
; Karnak castle
CMP #$9100
BEQ ProceedRejectedItem
; Karnak castle
CMP #$9200
BEQ ProceedRejectedItem
; Airship
CMP #$BE00
BEQ ProceedRejectedItem
BNE CustomItemEvent1Checking2

ProceedRejectedItem:
JMP ProceedRejectedItemFinish

CustomItemEvent1Checking2:
; Bchoco
CMP #$BF00
BEQ ProceedRejectedItem2
; Fire powered ship boiler room
CMP #$A200
BEQ ProceedRejectedItem2
; Earth crystal chamber
CMP #$DC00
BEQ ProceedRejectedItem2
; Zeza fleet
CMP #$4601
BEQ ProceedRejectedItem2
; Zeza fleet below deck
CMP #$4701
BEQ ProceedRejectedItem2
; Submarine
CMP #$5701
BEQ ProceedRejectedItem2
; Death Valley
CMP #$7201
BEQ ProceedRejectedItem2
; Antlion's nest
CMP #$7301
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8901
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8A01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8B01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8C01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8D01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8E01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$8F01
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9001
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9101
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9201
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9301
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9401
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9501
BEQ ProceedRejectedItem2
; Fork Tower
CMP #$9601
BEQ ProceedRejectedItem2
BNE CustomItemEvent1Checking3

ProceedRejectedItem2:
JMP ProceedRejectedItemFinish

CustomItemEvent1Checking3:

; Fork Tower
CMP #$9701
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9801
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9901
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9A01
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9B01
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9C01
BEQ ProceedRejectedItem3
; Fork Tower
CMP #$9D01
BEQ ProceedRejectedItem3
; Magic Lamp
CMP #$1F01
BEQ ProceedRejectedItem3

BNE CustomItemEvent1Pass

ProceedRejectedItem3:
JMP ProceedRejectedItemFinish


CustomItemEvent1Pass:
sep #$20
LDA #$B1
STA $C7
LDA #$BC
STA $C8
LDA #$EE ; <<<<<<<<<<<< This is setting the conditional for checking if "WARP" got called. F0 = tent, F1 = cabin, 3E = warp. Corresponds to EVENTS
STA $39
JML $C2A335

JMP FinishCustomItem


FinishCustomItem:
; Original code and branch
STZ $29E7
; PHX
JML $c2bbac

ProceedRegularItemFinish:
; reload in A
LDA $7A00,X
; Original code and branch
STA $29E7
PHX
JML $C2BB09

ProceedRejectedItemFinish:
sep #$20
; Load in specifically omegamedl for failed item use
LDA #$FA
; Original code and branch
STA $29E7
PHX
JML $C2BB09



org $C0011F
JML UseableItemActionTable

org !ADDRESS_customitem2
UseableItemActionTable:
LDA $0139
; This is for any custom action table from above. You can use any code you'd like as long as its not F0, F1 or 3E
; This would be corresponding to similar events like CustomItemEvent1 above 
CMP #$EE
BEQ UseableItemEE
BNE PreReturnToItemChecking
UseableItemEE:
LDX #$003A ; Removes unused pyramid cutscene from w3 where party discovers quicksand stopped
JML $C0013B ; now with x loaded, go back to event


PreReturnToItemChecking:
; Perform enough of old code and jump back:
CMP #$F0
BEQ JumpToItemF0
BNE ReturnToItemChecking

JumpToItemF0:
JML $C00126

ReturnToItemChecking:
JML $C0012B


AllowItemWarping:
STA $39
CMP #$EE ; custom item1 
BEQ BranchToItemWarpClause
LDA $44
AND #$02
BEQ BranchToItemWarpClause2
BNE BranchToItemWarpClause

BranchToItemWarpClause2:
JML $C2BCA9

BranchToItemWarpClause:
JML $C2BCB9


; ; CUSTOM CODE TO ALLOW SHOAT SOUND EFFECT WITHOUT AWARDING
; org $c2bb66
; JML !ADDRESS_shoatsound

; org !ADDRESS_shoatsound
; ; if using EE item (WarpShard), don't award player anything
; sep #$20
; PHA
; LDA $7A00,X
; CMP #$EE
; BEQ SkipSummonAward


; ; Else, do the reward, then branch back
; PLA
; rep #$20
; AND #$00FF
; SEC
; SBC #$00F8
; TAX
; LDA $C0EEAE,X
; JML $C2BB72

; ; SkipSummonAward:
; ; just branch back
; ; PLA
; ; JML $C2BB72

; Data rewrites:
; Allow for item $EE to be used 
org $C0EEF2
db $EE

; ; Remove item $12 for now to end loop code...?
; org $C0EEF4
; db $00

; WarpShard cannot sell
org $D12BDC
db $81, $00