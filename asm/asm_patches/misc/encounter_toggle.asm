hirom
!base = $C00000
!pointerloc = $7E0153
!encounterswitch = $7EF87C
!validater = $7E01C7
!gauge = $7E0973
!lastframesave = $7EF87E

org $E73d0E
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
org $E73215
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"

org $C2F746
JML MainHook


org $F20000 
MainHook:
PHA ; store a
LDA !pointerloc
CMP #$04
BNE FuncEnd

; Encounter Change
; first run validator check
LDA !validater
CMP #$5E
BEQ FuncEnd


LDA !lastframesave
CMP #$00
BNE FuncEnd

LDA #$01
STA !lastframesave
LDA !encounterswitch
CMP #$FF
BEQ SetOff
LDA #$FF
STA !encounterswitch
JML FuncEnd

SetOff:
LDA #$00
STA !encounterswitch
JML FuncEnd



FuncEnd:
PLA ; restore a
plx
lda $c0f0a7,x
ora $0970,y
sta $0970,y
JML $C2F751

; FuncEnd:
; PLA ; restore a
; plx
; JML $C2F751




; Saving these for reference. It shows up 8 times in the ROM data, but only need the above 2 to work. 
; org $EF3215
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
; org $EF3D0E
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
; org $F73215
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
; org $F73D0E
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
; org $FF3215
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
; org $FF3D0E
; db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"

