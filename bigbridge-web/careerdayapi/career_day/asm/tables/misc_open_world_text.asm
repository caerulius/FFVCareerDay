hirom 
; Tutorial new text
org $E12D10
db $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $65, $82, $87, $7a, $85, $ff, $65, $7a, $87, $8d, $7a, $8c, $92, $ff, $75, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $62, $60, $71, $64, $64, $71, $96, $63, $60, $78, $ff, $ff, $00


org $E12DD8
; The world is open
db $63, $7E, $7F, $7E, $7A, $8D, $96, $7B, $88, $8C, $8C, $7E, $8C, $96, $7F, $88, $8B, $96, $81, $82, $80, $81, $96, $8F, $7A, $85, $8E, $7E, $01
db $8B, $7E, $90, $7A, $8B, $7D, $8C, $96, $7A, $87, $7D, $96, $84, $7E, $92, $96, $82, $8D, $7E, $86, $8C, $A3, $01
db $62, $88, $85, $85, $7E, $7C, $8D, $96, $57, $96, $73, $7A, $7B, $85, $7E, $8D, $8C, $96, $8D, $88, $96, $8B, $7E, $7A, $7C, $81, $96, $8D, $81, $7E, $96, $7E, $87, $7D, $96, $01
db $88, $7F, $96, $8D, $81, $7E, $96, $71, $82, $7F, $8D, $A3, $96, $66, $88, $88, $7D, $96, $85, $8E, $7C, $84, $A1
db $00



; This is an open world randomizer of FINAL FANTASY V.
; 
org $E12E48
db $73, $81, $82, $8C, $96, $82, $8C, $96, $7A, $87, $96, $88, $89, $7E, $87, $96, $90, $88, $8B, $85, $7D, $96, $01
db $8B, $7A, $87, $7D, $88, $86, $82, $93, $7E, $8B, $96, $88, $7F, $96, $65, $68, $6D, $60, $6B, $96, $65, $60, $6D, $73, $60, $72, $78, $96, $75, $A3, $01
db $73, $81, $82, $8C, $96, $8B, $7E, $85, $7E, $7A, $8C, $7E, $96, $82, $8C, $96, $82, $87, $96, $61, $64, $73, $60, $A3, $96, $6F, $85, $7E, $7A, $8C, $7E, $96, $01
db $8B, $7E, $89, $88, $8B, $8D, $96, $7A, $87, $92, $96, $7B, $8E, $80, $8C, $96, $92, $88, $8E, $96, $7E, $87, $7C, $88, $8E, $87, $8D, $7E, $8B, $A3, $00


;The WarpShard is given to you at the start. Use it to warp between worlds!.
org $e12ef8
db $73, $81, $7E, $96, $76, $7A, $8B, $89, $72, $81, $7A, $8B, $7D, $96, $82, $8C, $96, $80, $82, $8F, $7E, $87, $96, $8D, $88, $96, $92, $88, $8E, $01
db $7A, $8D, $96, $8D, $81, $7E, $96, $8C, $8D, $7A, $8B, $8D, $A3, $96, $74, $8C, $7E, $96, $82, $8D, $96, $8D, $88, $96, $90, $7A, $8B, $89, $01
db $7B, $7E, $8D, $90, $7E, $7E, $87, $96, $90, $88, $8B, $85, $7D, $8C, $A1, $01, $01

;The WarpShard will not work in some locations by design. If you are ever lost, or warp to a strange location, use the WarpShard.
db $73, $81, $7E, $96, $76, $7A, $8B, $89, $72, $81, $7A, $8B, $7D, $96, $90, $82, $85, $85, $96, $87, $88, $8D, $96, $90, $88, $8B, $84, $96, $82, $87, $96, $01
db $8C, $88, $86, $7E, $96, $85, $88, $7C, $7A, $8D, $82, $88, $87, $8C, $96, $7B, $92, $96, $7D, $7E, $8C, $82, $80, $87, $A3, $96, $68, $7F, $96, $92, $88, $8E, $AA, $8B, $7E, $01
db $7E, $8F, $7E, $8B, $96, $85, $88, $8C, $8D, $9D, $96, $88, $8B, $96, $90, $7A, $8B, $89, $96, $8D, $88, $96, $7A, $96, $8C, $8D, $8B, $7A, $87, $80, $7E, $01
db $85, $88, $7C, $7A, $8D, $82, $88, $87, $9D, $96, $8E, $8C, $7E, $96, $8D, $81, $7E, $96, $76, $7A, $8B, $89, $72, $81, $7A, $8B, $7D, $A3, $00




; beginner's house
org $E139BE
db $60, $8B, $7E, $96, $92, $88, $8E, $96, $87, $7E, $90, $96, $8D, $88, $96, $8B, $7A, $87, $7D, $88, $86, $82, $93, $7E, $8B, $8C, $A2, $00

org $E01687
db $DA, $39, $E1
org $E139DA
db $FF, $76, $7E, $85, $7C, $88, $86, $7E, $A1, $00

org $E139E5
db $FF, $78, $64, $60, $67, $96, $71, $68, $66, $67, $73, $A3, $A3, $A3, $00