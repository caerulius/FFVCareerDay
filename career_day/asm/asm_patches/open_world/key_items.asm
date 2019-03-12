hirom
!rewarditemset = $001E20
; starts at index $60, at address $C0FB70
; torna canal key from zokk
org $C0FB70
db $30, $12


!startwithkeyitem = $02

; TEST IN WATERWAY
org $D133E2
db $30, !startwithkeyitem

; TESTING FOR EVENT SLOT $60. SAME AS ABOVE OVERWRITING TORNA CANAL!!
org $C0FB70
db $30, !startwithkeyitem


; FIXES TO CHANGES POINTERS TO KEY ITEMS:













; all of these below are specific bit setters based on the key item
; refer to chest_jobreward.asm for the code that calls these in
; at `BranchToKeyItemReward`

org $F00A00

KeyItemTornaCanal:

LDA #$10
LDX #$0017
JSL SetKeyItemBits

LDA #$20
LDX #$0017
JSL SetKeyItemBits

RTL

KeyItemWalseKey:

LDA #$20
LDX #$0067
JSL UnsetKeyItemBits

LDA #$01
LDX #$0068
JSL SetKeyItemBits

LDA #$20
LDX #$0067
JSL SetKeyItemBits

LDA #$40
LDX #$0067
JSL UnsetKeyItemBits

RTL

KeyItemSteamshipKey:
; blank for now, key item flag is enough

RTL

KeyItemIfritsFire:

LDA #$01
LDX #$0039
JSL SetKeyItemBits

LDA #$02
LDX #$0039
JSL SetKeyItemBits

LDA #$80
LDX #$0086
JSL UnsetKeyItemBits

RTL


; this function will load in a bit address then set the correct bit 
; A = bit to set
; X = offset from $000A00
SetKeyItemBits:
ORA $0A00, x
STA $0A00, x

RTL

UnsetKeyItemBits:
AND $0A00, x
STA $0A00, x

RTL

