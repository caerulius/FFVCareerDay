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


; Custom item - attempting an event
CustomItemEvent1:
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

ProceedRegularItem:
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

; Data rewrites:
; Allow for item $EE to be used 
org $C0EEF2
db $EE

; Remove item $12 for now to end loop code...?
org $C0EEF4
db $00

; WarpShard cannot sell
org $D12BDC
db $81, $00