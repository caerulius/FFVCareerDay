hirom

; TO DO: CHECK IF C806 C906 ARE USED ELSEWHERE. IF SO, USE OTHER EVENTS
; what to do next:
; use an event flag that actually is free, not $FE, $54 / $A2, $54
; use an event that is acrtually free instead of CA 06. Check $20, $00 which appears to be canal cutscene 
; write conditional event for odin's spot for whatever the timer will be (new event code)






; bal underground door always opens
; new event flag to use FD07/FE07

; from the south
org $F05EA7
db $FC, $FB

org $F05EAF
db $FC, $FB

; from the north
org $F05EB8
db $FC, $FB

org $F05EC0
db $FC, $FB

; disable c8 06 and c9 06
org $F05EAD
db $00, $00
org $F05EBE
db $00, $00
; unused cutscenes
; C8 06
; C9 06
; CA 06 (REALLY NEED TO CHECK)


; change underguard bal guard 
org $CE1B1A
db $FE, $D5, $FF, $CA, $06, $FD, $D5, $FF, $C8, $06

; relocate C8 06 & C9 06
org $C84778
db $80, $02, $F9 
org $C8477B
db $90, $02, $F9 
org $C8477E
db $B0, $02, $F9

; new conditional event for guard, C8 06
org $F90280
db $F0, $06, $02              ;Conditional yes/no dialogue at 04B7
db $CD, $C9, $06
db $FF
db $FF

; If so, perform award, C9 06
org $F90290
db $C5, $A0
db $B5, $02
db $71
db $A2, $D5            ; set address 000A1E bit ON 10
db $FF


; Reject event
org $F902B0
db $C8, $0B, $02
db $FF





; free space CE22A0 → CE23FF

; odin spot
org $CE22A0
db $FD, $D5, $FF, $A6, $00, $FF, $C9, $00, $F0


; use event C9 00 

org $C8357B
db $80, $03, $F9
 
org $F90380
db $C8, $EE, $02                ;Display Message/Text/Dialogue EE 02
db $D7, $2D, $A8, $02           ;(Timer?) 0F A8 02
db $A4, $00                     ;Turn on bit 01 at address 0x7e0a34
db $BD, $2C, $FF                ;Start Event Battle 2C
db $A4, $01                     ;Turn on bit 02 at address 0x7e0a34

db $FF                          ;End Event

; disable c8 














; Text for guard prompt (06 02 & 07 02) 
org $E193B6

db $68, $96, $81, $7E, $7A, $8B, $96, $8D, $81, $7E, $8B, $7E, $96, $82, $8C, $96, $7A, $96, $8D, $88, $8E, $80, $81, $96, $7B, $88, $8C, $8C, $96, $01
db $7D, $88, $90, $87, $8C, $8D, $7A, $82, $8B, $8C, $A3, $A3, $A3, $01, $01, $01
db $68, $96, $81, $7A, $8F, $7E, $96, $8D, $81, $7E, $96, $89, $88, $90, $7E, $8B, $96, $8D, $88, $96, $80, $82, $8F, $7E, $96, $92, $88, $8E, $01
db $86, $88, $8B, $7E, $96, $8D, $82, $86, $7E, $96, $82, $87, $96, $92, $88, $8E, $8B, $96, $7F, $82, $80, $81, $8D, $A3, $A3, $A3, $01
db $7F, $88, $8B, $96, $7A, $96, $89, $8B, $82, $7C, $7E, $A3, $01, $01
db $58, $53, $53, $53, $53, $96, $66, $82, $85, $96, $8D, $88, $96, $8D, $8B, $82, $89, $85, $7E, $96, $92, $88, $8E, $8B, $96, $8D, $82, $86, $7E, $A2, $00

; Text for yes case 
org $E19470
db $60, $85, $8B, $82, $80, $81, $8D, $96, $8D, $81, $7E, $87, $A3, $A3, $A3, $96, $66, $88, $88, $7D, $96, $85, $8E, $7C, $84, $A3, $00

; Text for having already purchased 
org $E194ED
db $68, $96, $81, $7A, $8F, $7E, $96, $7A, $85, $8B, $7E, $7A, $7D, $92, $96, $81, $7E, $85, $89, $7E, $7D, $96, $92, $88, $8E, $9D, $96, $01
db $92, $88, $8E, $96, $7A, $8B, $7E, $96, $88, $87, $96, $92, $88, $8E, $8B, $96, $88, $90, $87, $A3, $00
