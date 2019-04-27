hirom

org $C9497A
; first question
db $F0, $AA, $05                ; Text: Phase 1 against final Exdeath weakened!
db $CD, $88, $03                ;Run event index 0408
db $FF                          ;End Event
db $CD, $9F, $03
db $FF

;second question
org $C949E7
db $F0, $AB, $05                ; Text: Phase 1 against final Exdeath weakened!
db $CD, $4D, $03                ;Run event index 0408
db $FF                          ;End Event
db $CD, $94, $03
db $FF
; third question

org $C9477D
db $F0, $AC, $05                ; Text: Phase 1 against final Exdeath weakened!
db $CD, $C2, $03                ;Run event index 0408
db $FF                          ;End Event
; db $CD, $9C, $03 ; disabled for now - answering no immediately ends the sequence
db $FF



; relocate event 1 for confirm ; relates to original event code CD8803
org $C83DB8
db $00, 04, $F9
org $F90400
db $C5, $60
db $B5, $02
db $71
db $DE, $77 ; custom reward
db $DF
db $FF

; relocate event 2 for confirm  ; relates to CD4D03
org $c93e36
db $C5, $20
db $B5, $02
db $71
db $DE, $7E ; custom reward
db $DF
db $FF

; relocate event 3 for confirm ; relates to CDC203
org $c83e66
db $80, 04, $F9
org $F90480
db $C5, $A0
db $B5, $02
db $71
db $DE, $7B ; custom reward
db $DF
db $FF






; related to exdeath in world 2
; Phase 1 against final Exdeath weakened!
org $E2A067
db $6F, $81, $7A, $8C, $7E, $96, $54, $96, $7A, $80, $7A, $82, $87, $8C, $8D, $96, $7F, $82, $87, $7A, $85, $01
db $64, $91, $7D, $7E, $7A, $8D, $81, $96, $90, $7E, $7A, $84, $7E, $87, $7E, $7D, $A1, $01, $01, $01
; Now choose an item...
db $6D, $88, $90, $96, $7C, $81, $88, $88, $8C, $7E, $96, $7A, $87, $96, $82, $8D, $7E, $86, $A3, $A3, $A3, $01
; Key items menu 
;Big Bridge Key
org $E2A10B
db  $61, $82, $80, $96, $61, $8B, $82, $7D, $80, $7E, $96, $6A, $7E, $92, $A2, $00
;Walse Tower Key
org $E2A166
db  $76, $7A, $85, $8C, $7E, $96, $73, $88, $90, $7E, $8B, $96, $6A, $7E, $92, $A2, $00
;Hiryuu Call
org $E2A1C6
db  $67, $82, $8B, $92, $8E, $8E, $96, $62, $7A, $85, $85, $A2, $00

; Key items individual text 
org $E2A0A7
db $61, $82, $80, $96, $61, $8B, $82, $7D, $80, $7E, $96, $6A, $7E, $92, $01,  $76, $7A, $85, $8C, $7E, $96, $73, $88, $90, $7E, $8B, $96, $6A, $7E, $92, $01,  $67, $82, $8B, $92, $8E, $8E, $96, $62, $7A, $85, $85, $01, $00

; Addresses for key item actual rewards
org $F90406
db $65
org $C93E3C
db $6B
org $F90486
db $72