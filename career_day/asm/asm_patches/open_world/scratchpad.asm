hirom


!mapid = $0AD6
!xycoordcheck = $0AD8

; used for testing misc hacks until they go into their own file

; STEAMSHIP LOCK

; new code area for conditional checking. EACH X/Y CHECKER HAS A CORRESPONDING OUTPUT HERE
org $D8FFA8
!keyitemarea = $FC, $B6

; Simple example, does not allow for directional confirm for something like a door
; db !keyitemarea, $FF, $4C, $00, $FF, $F0, $00

; Complex example, checks each direction first and nulls event, but if it's the matching direction, proceed with conditionals for checking key item flag then running event 
db $F7, $01, $FF, $00, $00, $F7, $02, $FF, $00, $00, $F7, $03, $FF, $00, $00, $F7, $00, !keyitemarea, $FF, $4C, $00, $FF, $F0, $00




; BIG BRIDGE
; first find area where it reads how many bytes to check for the map
org $CE2678
; redefine byte in this specific area to be 2 more from the outside area
db $88, $0D
; 2) how many bytes to check by defining last address to read in
; db $68, $12


; what x/y to check, then 2 bytes of action if so
; original for BIG BRIDGE is CE3190, moved to below:
org $CE3188
; new stuff.  YOU DON'T HAVE TO CARE ABOUT THE 3RD/4TH ARGUMENT HERE, BECAUSE YOU MANUALLY TREAT LATER
; write doorway to overwrite other cutscene, here at $F0 $00
db $2F, $12, $00, $00
; write doorway to overwrite other cutscene, here at $F1 $00
db $0D, $0B, $00, $00


; new code area for conditional checking
; second argument is LOCK_ID from "Key Items" sheet
org $D8FFC2
!keyitemarea = $FC, $B3

; No direction required here, just step on tile
; Failure case, blocking textbox & step down
; In this case, no need for another event on sucess case, just allow access, because door panel works fine
db !keyitemarea, $FF, $00, $00, $FF, $4D, $00
db !keyitemarea, $FF, $00, $00, $FF, $59, $00




; SUBMARINE BARRIER TOWER ACCESS

org $D8FFD2

; No direction required here, just step on tile
; Failure case, blocking textbox & step down
; In this case, no need for another event on sucess case, just allow access, because door panel works fine
db $FF, $5D, $03




; SOLITARY SHRINE PAGE 
org $D8FFD6
db $FB, $BB, $FF, $F4, $00, $FB, $66, $FF, $93, $06, $FF, $00, $00
; TRENCH PAGE 
org $D8FFE3
db $FB, $BA, $FF, $F4, $00, $FD, $A1, $FF, $C2, $05, $FF, $00, $00
; FALLS PAGE 
org $D8FFF0
db $FB, $B9, $FF, $F4, $00, $FB, $76, $FF, $94, $06, $FF, $00, $00


; PYRAMID RIFT TABLET CHECKING
org $D90000
db $FB, $71, $FF, $FF, $00, $FB, $70, $FF, $05, $01, $FF, $07, $01


; XY Coordinate hook
org $C00654
JML XYCoordinateHook

org $F01280
XYCoordinateHook:


; Submarine world 2
lda !mapid
CMP #$0003
BNE XYCoordinateHookContinueNormalCase
lda !xycoordcheck
CMP #$A4A9
BNE XYCoordinateHookContinueNormalCase

; IF these match, we're in submarine in world 2, so set up coordinates specifically
LDA #$6012
STA $23
LDA #$6B12
STA $26
; Set an event flag for submarine handling in 8 bit mode

phx
sep #$20
LDA #$02
LDX #$002C
JSL SetKeyItemBits
rep #$20
plx


XYCoordinateHookContinueNormalCase:
cpx $23
beq XYCoordinateHookBaseCase1
lda $0ad8
cmp $ce2400,x
beq XYCoordinateHookBaseCase2
txa
clc
adc #$0004
tax
jml $C00654

XYCoordinateHookBaseCase1:
JML $C00681
XYCoordinateHookBaseCase2:
JML $C0066a


org $CE3660
; submarine in world 2 for new access area

db $70, $65, $13, $00
db $39, $41, $2e, $00
db $A9, $A4, $5A, $00

; ; Lonka Rift
; org $CE3670
; db $0b, $0e, $7d, $02




; Key item hook for custom warp tiles/event triggering
org $C0046C
JML KeyItemLockingHook

org $F01400
KeyItemLockingHook:
LDA $D8E080,x 
STA $23
LDA $D8E082, X
STA $26

; case by case - when condition met, manually change loaded in values
; THIS IS STILL IN 16 BIT A MODE
; check map ID
; sep #$20 = 8 bit 
; rep #$20 = 16 bit 




; STEAMSHIP ACCESS
lda !mapid
CMP #$00D2
BNE KeyItemLockingNextCheck1
lda !xycoordcheck
CMP #$110C
BNE KeyItemLockingNextCheck1

; HANDLE STEAMSHIP
LDA #$1F28
STA $23
LDA #$1F41
STA $26
JMP KeyItemLockingImmediateFinish






KeyItemLockingNextCheck1:

; BIG BRIDGE ACCESS (SOUTH)
lda !mapid
CMP #$013C
BNE KeyItemLockingNextCheck1point5
lda !xycoordcheck
CMP #$0B0D
BNE KeyItemLockingNextCheck1point5

; HANDLE BIG BRIDGE
LDA #$1F42
STA $23
LDA #$1F4A
STA $26
JMP KeyItemLockingImmediateFinish

KeyItemLockingNextCheck1point5:
; BIG BRIDGE ACCESS (NORTH)
lda !mapid
CMP #$013C
BNE KeyItemLockingNextCheck2
lda !xycoordcheck
CMP #$122F
BNE KeyItemLockingNextCheck2

; HANDLE BIG BRIDGE
LDA #$1F4A
STA $23
LDA #$1F52
STA $26
JMP KeyItemLockingImmediateFinish





KeyItemLockingNextCheck2:




; SUBMARINE BARRIER TOWER ACCESS
lda !mapid
CMP #$0003
BNE KeyItemLockingNextCheck3
lda !xycoordcheck
CMP #$A4A9
BNE KeyItemLockingNextCheck3

; HANDLE BARRIER TOWER ACCESS


LDA #$1F52
STA $23
LDA #$1F56
STA $26
JMP KeyItemLockingImmediateFinish



KeyItemLockingNextCheck3:

; SOLITARY SHRINE ACCESS
lda !mapid
CMP #$0183
BNE KeyItemLockingNextCheck4
lda !xycoordcheck
CMP #$3A15
BNE KeyItemLockingNextCheck4

; HANDLE SOLITARY SHRINE ACCESS

LDA #$1F56
STA $23
LDA #$1F63
STA $26
JMP KeyItemLockingImmediateFinish



KeyItemLockingNextCheck4:


; TRENCH ACCESS
lda !mapid
CMP #$019E
BNE KeyItemLockingNextCheck5
lda !xycoordcheck
CMP #$2E13
BNE KeyItemLockingNextCheck5

; HANDLE TRENCH ACCESS

LDA #$1F63
STA $23
LDA #$1F70
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck5:



; FALLS ACCESS
lda !mapid
CMP #$01A6
BNE KeyItemLockingNextCheck6
lda !xycoordcheck
CMP #$2715
BNE KeyItemLockingNextCheck6

; HANDLE FALLS ACCESS

LDA #$1F70
STA $23
LDA #$1F7D
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck6:




; PYRAMID RIFT ACCESS
lda !mapid
CMP #$01DC
BNE KeyItemLockingNextCheck7
lda !xycoordcheck
CMP #$0E35
BNE KeyItemLockingNextCheck7

; HANDLE PYRAMID RIFT ACCESS

LDA #$1F80
STA $23
LDA #$1F8F
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck7:





; LONKA RIFT ACCESS
lda !mapid
CMP #$01DF
BNE KeyItemLockingNextCheck8
lda !xycoordcheck
CMP #$2E0C
BNE KeyItemLockingNextCheck8

; HANDLE LONKA RIFT ACCESS

LDA #$1F80
STA $23
LDA #$1F8F
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck8:




; FALLS RIFT ACCESS
lda !mapid
CMP #$01EC
BNE KeyItemLockingNextCheck9
lda !xycoordcheck
CMP #$382C
BNE KeyItemLockingNextCheck9

; HANDLE FALLS RIFT ACCESS

LDA #$1F80
STA $23
LDA #$1F8F
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck9:





; CASTLE RIFT ACCESS
lda !mapid
CMP #$01F0
BNE KeyItemLockingNextCheck10
lda !xycoordcheck
CMP #$2C16
BNE KeyItemLockingNextCheck10

; HANDLE CASTLE RIFT ACCESS

LDA #$1F80
STA $23
LDA #$1F8F
STA $26
JMP KeyItemLockingImmediateFinish
KeyItemLockingNextCheck10:



KeyItemLockingReplicateOriginal:
LDA $D8E080,x 
STA $23
LDA $D8E082, X
STA $26

KeyItemLockingImmediateFinish:
JML $C00478




org $C98882

db $E0, $03, $20, $A9, $A5, $D3
db $A3, $C1            ; set address 000A2C bit OFF 02
db $FF                          ;End Event
pad $C988F4




; xy coords
; barrier tower top
; 01 56 10 15










;;;;;;;;;;; NOTE ;;;;;;;;;;;;;;

; This original code worked for fully relocating a code area for a new event
; by relocating the x/y checking
; However, due to sequential nature of CE2678, changing any one of these messes up the 
; prior reference to another x/y checking. 


; ; BIG BRIDGE
; ; first find area where it reads how many bytes to check for the map
; org $CE2678
; ; redefine 1) where to find it 2) how many bytes to check
; ; 1) is offset by CE2400, so [final area] - CE2400 = values here, for start/end
; ; db $60, $12
; ; 2) how many bytes to check by defining last address to read in
; ; db $68, $12


; ; what x/y to check, then 2 bytes of action if so
; ; original for BIG BRIDGE is CE3190, moved to below:
; org $CE3660
; ; replicate original. This calls event [$21, $01] if [$1E, $0B] x/y is met
; db $1E, $0B, $21, $01 
; ; new stuff
; ; write doorway to overwrite other cutscene, here at $F0
; db $0D, $0B, $F0, $00

; ; how many bytes of code to read for conditional checking
; org $D8E260
; db $42, $1F
; db $4F, $1F

; ; new code area for conditional checking
; ; second argument is LOCK_ID from "Key Items" sheet
; org $D8FFC2
; !keyitemarea = $FC, $B3

; ; No direction required here, just step on tile
; ; Failure case, blocking textbox & step down
; ; In this case, no need for another event on sucess case, just allow access, because door panel works fine
; db !keyitemarea, $FF, $00, $00, $FF, $4D, $00