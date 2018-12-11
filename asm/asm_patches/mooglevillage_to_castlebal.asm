hirom
!base = $C00000

org $C975D5


; From Moogle Hiryuu call to Bal:
; There are TWO different events at $C975D5 then $C8C3EE
; 1) Moogle cutscene immediately branches to Bal after a fade-out
; 2) Bal cutscene immediately does "inter-event map change", then sets all flags and resumes player status

; $C975D5 → $C97A2E
; Moogle summons Hiryuu
; >>>>>   This plays from start of cutscene until on Castle Bal Map
;             It ends with "Run Event Index 00EF"


db $C4, $02                      ;Fade out Speed 02
db $CD, $EF, $00                 ;Run event index 00EF
db $FF                          ;End Event

padbyte $00
pad $C97A2E

        
        
org $C8C3EE

; $C8C3EE → C8C71C
; Enter Bal with Hiryuu

db $E3, $0E, $01, $0B, $09, $00 ;Inter-map cutscene? 0E 01 0B 09 00
db $C3, $02                     ;Fade in Speed 02
db $DB                                 ;Restore Player status
db $14                          ;Player pose: face down, left hand forward
db $09                                 ;Player Show
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
db $CC, $1B                  ;Custom destination flag 1B
db $FF                                ;End Event

; e30e010b0900c302db1409800aa25fca
; 6902ca6a02ca6b02ca6c02ca6d02ca6e
; 02ca6f02ca7002ca7102ca7202ca7302
; ca7c02ca7402ca7502ca7602ca7702ca
; 7802ca7902ca7a02ff00


padbyte $00
pad $C8C71C