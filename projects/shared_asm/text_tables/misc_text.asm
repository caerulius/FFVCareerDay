
; WarpShard text
org $D11BDE
db $76, $7A, $8B, $89, $72, $81, $7A, $8B, $7D

; change text in config menu
org $E73d0E
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
org $E73215
db $64, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $8C ; "Encounters"
org $E731DB
; "Rwd Mult"
db $71, $90, $7D, $96, $6C, $8E, $85, $8D, $D2


org $E730E1 ; "Rare" → "Key"
db $6a, $7e, $92, $96

  


; Tutorial new text
org $E12D10
db $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $65, $82, $87, $7a, $85, $ff, $65, $7a, $87, $8d, $7a, $8c, $92, $ff, $75, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $62, $60, $71, $64, $64, $71, $96, $63, $60, $78, $ff, $ff, $00


; The world is open - collect four tablets to access the end of the Rift. Visit the Beginner House in Tule for help!
org $E12DD8
db $73, $81, $7E, $96, $90, $88, $8B, $85, $7D, $96, $82, $8C, $96, $88, $89, $7E, $87, $96, $C5, $96, $7C, $88, $85, $85, $7E, $7C, $8D, $96, $7F, $88, $8E, $8B
db $01, $FF, $FF, $73, $7A, $7B, $85, $7E, $8D, $8C, $96, $8D, $88, $96, $7A, $7C, $7C, $7E, $8C, $8C, $96, $8D, $81, $7E, $96, $75, $88, $82, $7D, $A3
db $01, $FF, $FF, $66, $88, $88, $7D, $96, $85, $8E, $7C, $84, $A1
db $00


; The world is open - collect four tablets to access the end of the Rift. Visit the Beginner House in Tule for help!
; org $E12DD8
; db $73, $81, $7E, $96, $90, $88, $8B, $85, $7D, $96, $82, $8C, $96, $88, $89, $7E, $87, $96, $C5, $96, $7C, $88, $85, $85, $7E, $7C, $8D, $96, $7F, $88, $8E, $8B
; db $01, $FF, $FF, $8D, $7A, $7B, $85, $7E, $8D, $8C, $96, $8D, $88, $96, $7A, $7C, $7C, $7E, $8C, $8C, $96, $8D, $81, $7E, $96, $7E, $87, $7D, $96, $88, $7F, $96, $8D, $81, $7E
; db $01, $FF, $FF, $71, $82, $7F, $8D, $A3, $96, $75, $82, $8C, $82, $8D, $96, $8D, $81, $7E, $96, $61, $7E, $80, $82, $87, $87, $7E, $8B, $96, $67, $88, $8E, $8C, $7E
; db $01, $FF, $FF, $82, $87, $96, $73, $8E, $85, $7E, $96, $7F, $88, $8B, $96, $81, $7E, $85, $89, $A1

; db $00


; beginner's house
org $E139BE
db $60, $8B, $7E, $96, $92, $88, $8E, $96, $87, $7E, $90, $96, $8D, $88, $96, $8B, $7A, $87, $7D, $88, $86, $82, $93, $7E, $8B, $8C, $A2, $00

org $E01687
db $DA, $39, $E1
org $E139DA
db $FF, $76, $7E, $85, $7C, $88, $86, $7E, $A1, $00

org $E139E5
db $FF, $78, $64, $60, $67, $96, $71, $68, $66, $67, $73, $A3, $A3, $A3, $00
