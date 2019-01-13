hirom
!base = $C00000
padbyte $00

; Talking to Moogle first time in house
org $C97579
db $80, $10                     ;Sprite 080 do event: face up, left hand forward
db $80, $05                     ;Sprite 080 do event: Bounce
db $80, $00                     ;Sprite 080 do event: Hold
db $80, $05                     ;Sprite 080 do event: Bounce
db $80, $00                     ;Sprite 080 do event: Hold
db $80, $54                     ;Sprite 080 do event: 54
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $80, $54                     ;Sprite 080 do event: 54
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $80, $11                     ;Sprite 080 do event: face up, right hand forward
db $A4, $2E                     ;Turn on bit 40 at address 0x7e0a39
db $D1, $01, $73, $04           ;(Timer?) 14 73 04
db $FF                          ;End Event
pad $C9759B

org $C975D5


; From Moogle Hiryuu call to Bal:
; There are TWO different events at $C975D5 then $C8C3EE
; 1) Moogle cutscene immediately branches to Bal after a fade-out
; 2) Bal cutscene immediately does "inter-event map change", then sets all flags and resumes player status

; Moogle summons Hiryuu
; >>>>>   This plays from start of cutscene until on Castle Bal Map
;             It ends with "Run Event Index 00EF"


db $C4, $02                      ;Fade out Speed 02
db $CD, $EF, $00                 ;Run event index 00EF
db $FF                          ;End Event
pad $C97A2E

        
        
org $C8C3EE

; Enter Bal with Hiryuu

db $E3, $0E, $01, $0B, $09, $00 ;Inter-map cutscene? 0E 01 0B 09 00
db $80, $0A                      ;Sprite 080 do event Hide
db $A2, $5F                     ;Set Event Flag 05F
db $CA, $69, $02                        ;Set Flag 2/3/4/5/69 02
db $CA, $6A, $02                        ;Set Flag 2/3/4/5/6A 02
db $CA, $6B, $02                        ;Set Flag 2/3/4/5/6B 02
db $CA, $6C, $02                        ;Set Flag 2/3/4/5/6C 02
db $CA, $6D, $02                        ;Set Flag 2/3/4/5/6D 02
db $CA, $6E, $02                        ;Set Flag 2/3/4/5/6E 02
db $CA, $6F, $02                        ;Set Flag 2/3/4/5/6F 02
db $CA, $70, $02                        ;Set Flag 2/3/4/5/70 02
db $CA, $71, $02                        ;Set Flag 2/3/4/5/71 02
db $CA, $72, $02                        ;Set Flag 2/3/4/5/72 02
db $CA, $73, $02                        ;Set Flag 2/3/4/5/73 02
db $CA, $7C, $02                        ;Set Flag 2/3/4/5/7C 02
db $CA, $74, $02                        ;Set Flag 2/3/4/5/74 02
db $CA, $75, $02                        ;Set Flag 2/3/4/5/75 02
db $CA, $76, $02                        ;Set Flag 2/3/4/5/76 02
db $CA, $77, $02                        ;Set Flag 2/3/4/5/77 02
db $CA, $78, $02                        ;Set Flag 2/3/4/5/78 02
db $CA, $79, $02                        ;Set Flag 2/3/4/5/79 02
db $CA, $7A, $02                        ;Set Flag 2/3/4/5/7A 02
db $A2, $60                     ;Set Event Flag 060 (this is taken from Cara's cutscene with Hiryuu to immediately set flag)
; Kelb unlock cutscenes
db $A2, $62                     ;Set Event Flag 062 (this cutscene)
db $A2, $64                     ;Set Event Flag 062 (Kelgar cutscene)
db $CA, $AE, $02                ;Turn on bit 40 at address  0x7e0aa9
db $CA, $AF, $02                ;Turn on bit 80 at address  0x7e0aa9
db $CA, $B0, $02                ;Turn on bit 01 at address  0x7e0aaa
db $CA, $B1, $02                ;Turn on bit 02 at address  0x7e0aaa
db $CA, $B2, $02                ;Turn on bit 04 at address  0x7e0aaa
db $CA, $B5, $02                ;Turn on bit 20 at address  0x7e0aaa
db $CA, $B6, $02                ;Turn on bit 40 at address  0x7e0aaa
db $CA, $B7, $02                ;Turn on bit 80 at address  0x7e0aaa
db $CA, $C1, $02                ;Turn on bit 02 at address  0x7e0aac
db $CB, $C2, $02                ;Turn off bit 04 at address  0x7e0aac
db $CB, $A1, $02                ;Turn off bit 02 at address  0x7e0aa8
db $CA, $29, $00                ;Turn on bit 02 at address  0x7e0a59
db $CA, $2A, $00                ;Turn on bit 04 at address  0x7e0a59
db $CC, $1B                  ;Custom destination flag 1B
db $14                          ;Player pose: face down, left hand forward
db $DB                                 ;Restore Player status
db $C3, $02                     ;Fade in Speed 02
db $73
db $09                                 ;Player Show
db $FF                                ;End Event

padbyte $00
pad $C8C71C