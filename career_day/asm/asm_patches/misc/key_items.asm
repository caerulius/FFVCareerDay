hirom
!rewarditemset = $001E20
; starts at index $60, at address $C0FB70
; torna canal key from zokk
org $C0FB70
db $30, $00

; TEST
org $D133E4
db $30, $00


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










; this function will load in a bit address then set the correct bit 
; A = bit to set
; X = offset from $000A00
SetKeyItemBits:
ORA $0A00, x
STA $0A00, x

RTL





; data for event text
; starts at E78100

;Torna Canal Key
org $E78100
db $73
db $88
db $8B
db $87
db $7A
db $96
db $62
db $7A
db $87
db $7A
db $85
db $96
db $6A
db $7E
db $92
db $FF