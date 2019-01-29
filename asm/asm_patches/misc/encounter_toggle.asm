hirom
!base = $C00000
!pointerloc = $7E0153
!pointerloc2 = $7E0156
!encounterswitch = $7E0973
!validater = $7E01C7
!lastframesave = $7EF87E

org $E73d0E
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
org $E73215
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"

org $E730E1 ; "Rare" → "Key"
db $6a, $7e, $92, $96

; org $c2f737
; JML MainHook


; org $F20000 
; MainHook:
; PHA ; store a
; LDA !pointerloc
; CMP #$04
; BNE FuncEnd

; ; Encounter Change
; ; first run validator check
; LDA !validater
; CMP #$5E
; BEQ FuncEnd


; LDA !lastframesave
; CMP #$00
; BNE FuncEnd

; LDA #$01
; STA !lastframesave
; LDA !pointerloc2
; CMP #$0D
; BEQ SetOff
; LDA #$FF
; STA !encounterswitch
; JML FuncEnd

; SetOff:
; LDA #$00
; STA !encounterswitch
; JML FuncEnd



; FuncEnd:
; PLA ; restore a
; lda $c0f0a5,x
; tay
; JML $c2f73c


; the below code disables gauge changing. it is always on, value #$80, loaded upon every battle.
; the address it loads from is the bitwise config option in WRAM $7E0973
org $C104f7
lda #$80
nop
nop
nop
nop
nop






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

