hirom
;================
;starting crystal
;================

org $E79F00
db $08, $02, $02, $31
;=================
;Chests and Events
;=================
org $C0FAB2 
db $60, $1B
org $C0FAB4 
db $40, $C2
org $C0FAB6 
db $40, $CB
org $C0FAB8 
db $40, $A1
org $C0FABA 
db $40, $17
org $C0FABC 
db $20, $14
org $C0FABE 
db $20, $10
org $C0FAC0 
db $50, $0B
org $C0FAC2 
db $20, $06
org $C0FAC4 
db $20, $10
org $C0FAC6 
db $40, $23
org $C0FAC8 
db $20, $11
org $C0FACA 
db $20, $26
org $C0FACC 
db $40, $AC
org $C0FACE 
db $20, $0E
org $C0FAD0 
db $50, $07
org $C0FAD2 
db $40, $E5
org $C0FAD4 
db $40, $68
org $C0FAD6 
db $40, $81
org $C0FAD8 
db $60, $22
org $C0FADA 
db $40, $8A
org $C0FADC 
db $40, $82
org $C0FADE 
db $40, $66
org $C0FAE0 
db $40, $39
org $C0FAE2 
db $40, $82
org $C0FAE4 
db $60, $0C
org $C0FAE6 
db $60, $5A
org $C0FAE8 
db $20, $14
org $C0FAEA 
db $60, $70
org $C0FAEC 
db $20, $1D
org $C0FAEE 
db $20, $0B
org $C0FAF0 
db $60, $6B
org $C0FAF2 
db $40, $0B
org $C0FAF4 
db $40, $45
org $C0FAF6 
db $40, $A8
org $C0FAF8 
db $40, $E4
org $C0FAFA 
db $60, $4A
org $C0FAFC 
db $40, $34
org $C0FAFE 
db $40, $23
org $C0FB00 
db $40, $24
org $C0FB02 
db $40, $63
org $C0FB04 
db $40, $08
org $C0FB06 
db $60, $24
org $C0FB08 
db $40, $64
org $C0FB0A 
db $40, $3D
org $C0FB0C 
db $40, $AF
org $C0FB0E 
db $20, $15
org $C0FB10 
db $40, $81
org $C0FB12 
db $20, $25
org $C0FB14 
db $50, $12
org $C0FB16 
db $60, $43
org $C0FB18 
db $60, $4B
org $C0FB1A 
db $40, $9E
org $C0FB1C 
db $20, $0F
org $C0FB1E 
db $20, $13
org $C0FB20 
db $40, $AA
org $C0FB22 
db $40, $24
org $C0FB24 
db $40, $3B
org $C0FB26 
db $40, $83
org $C0FB28 
db $40, $61
org $C0FB2A 
db $40, $63
org $D13212 
db $40, $3A
org $D13216 
db $20, $07
org $D1321A 
db $40, $94
org $D1321E 
db $40, $AE
org $D13222 
db $40, $8D
org $D13226 
db $40, $97
org $D1322A 
db $40, $8F
org $D1322E 
db $40, $9A
org $D13232 
db $40, $A7
org $D13236 
db $40, $4B
org $D1323A 
db $40, $81
org $D1323E 
db $20, $0A
org $D13242 
db $40, $C4
org $D13246 
db $20, $1B
org $D1324A 
db $40, $C0
org $D1324E 
db $20, $06
org $D13252 
db $40, $09
org $D13256 
db $40, $03
org $D1325A 
db $40, $21
org $D1325E 
db $60, $6F
org $D13262 
db $40, $E7
org $D13266 
db $40, $25
org $D1326A 
db $40, $C4
org $D1326E 
db $40, $3E
org $D13272 
db $20, $15
org $D13276 
db $60, $48
org $D1327A 
db $20, $1C
org $D1327E 
db $60, $6E
org $D13282 
db $20, $18
org $D13286 
db $20, $0C
org $D1328A 
db $40, $42
org $D1328E 
db $60, $0D
org $D13292 
db $40, $94
org $D13296 
db $60, $15
org $D1329A 
db $40, $95
org $D1329E 
db $40, $66
org $D132A2 
db $20, $17
org $D132A6 
db $60, $87
org $D132AA 
db $20, $21
org $D132AE 
db $40, $21
org $D132B2 
db $20, $0D
org $D132B6 
db $40, $BA
org $D132BA 
db $40, $6E
org $D132BE 
db $40, $8B
org $D132C2 
db $40, $A3
org $D132C6 
db $20, $1E
org $D132CA 
db $40, $60
org $D132CE 
db $40, $A4
org $D132D2 
db $40, $C3
org $D132D6 
db $40, $AD
org $D132DA 
db $40, $1F
org $D132DE 
db $40, $6A
org $D132E2 
db $20, $15
org $D132E6 
db $40, $B1
org $D132EA 
db $20, $0E
org $D132EE 
db $40, $8E
org $D132F2 
db $60, $60
org $D132F6 
db $40, $0F
org $D132FA 
db $40, $1D
org $D132FE 
db $40, $E1
org $D13302 
db $60, $27
org $D13306 
db $40, $5C
org $D1330A 
db $60, $29
org $D1330E 
db $20, $27
org $D13312 
db $40, $64
org $D13316 
db $40, $32
org $D1331A 
db $20, $0E
org $D1331E 
db $40, $65
org $D13322 
db $60, $08
org $D13326 
db $40, $85
org $D1332A 
db $40, $0F
org $D1332E 
db $40, $F4
org $D13332 
db $40, $B9
org $D13336 
db $60, $81
org $D1333A 
db $40, $86
org $D1333E 
db $40, $8C
org $D13342 
db $40, $38
org $D13346 
db $60, $10
org $D1334A 
db $40, $87
org $D1334E 
db $60, $16
org $D13352 
db $40, $C9
org $D13356 
db $40, $62
org $D1335A 
db $20, $13
org $D1335E 
db $40, $B0
org $D13362 
db $50, $09
org $D13366 
db $40, $33
org $D1336A 
db $20, $1E
org $D1336E 
db $20, $14
org $D13372 
db $40, $4E
org $D13376 
db $40, $A9
org $D1337A 
db $40, $90
org $D1337E 
db $40, $B9
org $D13382 
db $40, $87
org $D13386 
db $60, $09
org $D1338A 
db $20, $09
org $D1338E 
db $40, $9F
org $D13392 
db $40, $A1
org $D13396 
db $40, $C3
org $D1339A 
db $40, $1B
org $D1339E 
db $60, $14
org $D133A2 
db $20, $0B
org $D133A6 
db $40, $68
org $D133AA 
db $20, $26
org $D133AE 
db $40, $23
org $D133B2 
db $40, $C1
org $D133B6 
db $20, $0C
org $D133BA 
db $20, $20
org $D133BE 
db $40, $5F
org $D133C2 
db $40, $BA
org $D133C6 
db $40, $31
org $D133CA 
db $20, $23
org $D133CE 
db $20, $20
org $D133D2 
db $20, $13
org $D133D6 
db $50, $03
org $D133DA 
db $40, $50
org $D133DE 
db $40, $A0
org $D133E2 
db $60, $17
org $D133E6 
db $40, $B8
org $D133EA 
db $40, $56
org $D133EE 
db $60, $58
org $D133F2 
db $20, $14
org $D133F6 
db $40, $CE
org $D133FA 
db $40, $0D
org $D133FE 
db $40, $A3
org $D13402 
db $40, $9C
org $D13406 
db $40, $AC
org $D1340A 
db $40, $B4
org $D1340E 
db $40, $4A
org $D13412 
db $40, $C6
org $D13416 
db $40, $46
org $D1341A 
db $60, $0B
org $D1341E 
db $40, $83
org $D13422 
db $40, $5F
org $D13426 
db $20, $08
org $D1342A 
db $40, $99
org $D1342E 
db $60, $6A
org $D13432 
db $40, $40
org $D13436 
db $60, $72
org $D1343A 
db $60, $50
org $D1343E 
db $60, $82
org $D13442 
db $60, $6C
org $D13446 
db $60, $1D
org $D1344A 
db $40, $28
org $D1344E 
db $40, $66
org $D13452 
db $60, $71
org $D13456 
db $40, $25
org $D1345A 
db $40, $E7
org $D1345E 
db $40, $9C
org $D13462 
db $60, $78
org $D13466 
db $40, $8B
org $D1346A 
db $60, $0A
org $D1346E 
db $40, $CD
org $D13472 
db $40, $35
org $D13476 
db $40, $04
org $D1347A 
db $20, $0C
org $D1347E 
db $20, $12
org $D13482 
db $40, $5F
org $D13486 
db $40, $5F
org $D1348A 
db $40, $ED
org $D1348E 
db $40, $A8
org $D13492 
db $20, $1B
org $D13496 
db $40, $50
org $D1349A 
db $40, $AA
org $D1349E 
db $20, $16
org $D134A2 
db $40, $0D
org $D134A6 
db $40, $FA
org $D134AA 
db $40, $AD
org $D134AE 
db $40, $2C
org $D134B2 
db $40, $A7
org $D134B6 
db $60, $76
org $D134BA 
db $40, $87
org $D134BE 
db $60, $49
org $D134C2 
db $50, $02
org $D134C6 
db $40, $A9
org $D134CA 
db $40, $94
org $D134CE 
db $40, $C4
org $D134D2 
db $40, $11
org $D134D6 
db $20, $0F
org $D134DA 
db $60, $38
org $D134DE 
db $40, $23
org $D134E2 
db $20, $1A
org $D134E6 
db $40, $03
org $D134EA 
db $20, $1F
org $D134EE 
db $40, $64
org $D134F2 
db $40, $1A
org $D134F6 
db $50, $06
org $D134FA 
db $40, $C8
org $D134FE 
db $40, $CE
org $D13502 
db $40, $64
org $D13506 
db $40, $8B
org $D1350A 
db $60, $4C
org $D1350E 
db $20, $20
org $D13512 
db $40, $14
org $D13516 
db $40, $37
org $D1351A 
db $40, $41
org $D1351E 
db $20, $15
org $D13522 
db $60, $44
org $D13526 
db $40, $99
org $D1352A 
db $40, $34
org $D1352E 
db $20, $12
org $D13532 
db $40, $02
org $D13536 
db $40, $81
org $D1353A 
db $20, $09
org $D1353E 
db $40, $56
org $D13542 
db $20, $0A
org $D13546 
db $40, $81
org $D1354A 
db $20, $0D
org $D1354E 
db $20, $06
org $D13552 
db $40, $9E
org $D13556 
db $60, $59
org $D1355A 
db $40, $C3
org $D1355E 
db $40, $AC
org $D13562 
db $40, $C2
org $D13566 
db $40, $AE
org $D1356A 
db $40, $17
org $D1356E 
db $40, $A4
org $D13572 
db $40, $9F
org $D13576 
db $40, $20
org $D1357A 
db $50, $05
org $D1357E 
db $40, $AC
org $D13582 
db $40, $40
org $D13586 
db $20, $08
org $D1358A 
db $20, $13
org $D1358E 
db $20, $12
org $D13592 
db $40, $0A
org $D13596 
db $40, $97
org $D1359A 
db $40, $A4
org $D1359E 
db $60, $4D
org $D135A2 
db $40, $F9
org $D135A6 
db $20, $11
org $D135AA 
db $40, $F3
org $D135AE 
db $40, $21
org $D135B2 
db $40, $68
org $D135B6 
db $40, $91
org $D135BA 
db $40, $8E
org $D135BE 
db $40, $48
org $D135C2 
db $40, $9F
org $D135C6 
db $40, $1C
org $D135CA 
db $40, $B9
org $D135CE 
db $50, $0E
org $D135D2 
db $50, $0F
org $D135D6 
db $20, $16
org $D135DA 
db $40, $92
org $D135DE 
db $40, $1D
org $D135E2 
db $40, $A8
org $D135E6 
db $40, $9F
org $D135EA 
db $40, $11
org $D135EE 
db $20, $08
org $D135F2 
db $40, $1C
org $D135F6 
db $20, $1D
org $D135FA 
db $20, $09
org $D135FE 
db $40, $B8
;=====
;shops
;=====
org $D12D40
db $03, $11, $AC, $8F, $00, $00, $00, $00, $00
org $D12D49
db $03, $35, $FE, $BC, $AB, $00, $00, $00, $00
org $D12D52
db $00, $58, $83, $48, $88, $00, $00, $00, $00
org $D12D5B
db $03, $09, $35, $0D, $C5, $69, $68, $00, $00
org $D12D64
db $03, $C2, $66, $9B, $23, $00, $00, $00, $00
org $D12D6D
db $07, $1C, $14, $11, $80, $15, $00, $00, $00
org $D12D76
db $00, $92, $31, $52, $84, $4A, $4B, $1C, $55
org $D12D7F
db $00, $4E, $86, $50, $8C, $94, $53, $8D, $1F
org $D12D88
db $03, $5F, $44, $23, $00, $00, $00, $00, $00
org $D12D91
db $07, $68, $40, $08, $0F, $53, $00, $00, $00
org $D12D9A
db $07, $7D, $0D, $74, $0C, $13, $30, $12, $00
org $D12DA3
db $00, $23, $95, $4D, $9B, $56, $89, $9E, $00
org $D12DAC
db $03, $CC, $BE, $88, $00, $00, $00, $00, $00
org $D12DB5
db $03, $56, $48, $93, $6D, $47, $42, $5D, $65
org $D12DBE
db $03, $84, $96, $1A, $47, $3B, $65, $98, $00
org $D12DC7
db $07, $32, $7A, $01, $34, $6D, $20, $07, $42
org $D12DD0
db $00, $85, $96, $54, $51, $33, $8E, $34, $2D
org $D12DD9
db $07, $75, $31, $61, $69, $04, $1A, $00, $00
org $D12DE2
db $03, $96, $9A, $21, $1D, $00, $00, $00, $00
org $D12DEB
db $00, $82, $98, $00, $00, $00, $00, $00, $00
org $D12DFD
db $00, $93, $22, $8B, $9A, $00, $00, $00, $00
org $D12E18
db $07, $11, $39, $19, $45, $00, $85, $00, $00
org $D12E21
db $07, $83, $51, $1E, $00, $00, $00, $00, $00
org $D12E2A
db $03, $E0, $93, $F1, $BF, $10, $41, $8F, $9D
org $D12E33
db $03, $35, $1B, $FE, $24, $AB, $00, $00, $00
org $D12E3C
db $03, $94, $0F, $00, $00, $00, $00, $00, $00
org $D12E45
db $03, $1D, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $07, $73, $3C, $13, $33, $7B, $3B, $2A, $7E
org $D12E57
db $03, $BE, $C7, $22, $FE, $92, $56, $8B, $67
org $D12E60
db $07, $0A, $77, $28, $3D, $0E, $79, $18, $3A
org $D12E69
db $03, $65, $98, $B9, $E3, $92, $69, $67, $3C
org $D12E72
db $03, $6B, $BC, $64, $E8, $27, $67, $C4, $9F
org $D12E7B
db $03, $38, $02, $3C, $03, $B9, $37, $B7, $00
org $D12E84
db $03, $AB, $99, $26, $00, $00, $00, $00, $00
org $D12E8D
db $03, $3F, $91, $40, $00, $00, $00, $00, $00
org $D12E96
db $03, $84, $2D, $68, $00, $00, $00, $00, $00
org $D12E9F
db $07, $21, $06, $35, $00, $00, $00, $00, $00
org $D12EA8
db $07, $7C, $1F, $10, $52, $00, $00, $00, $00
org $D12EB1
db $03, $B1, $3A, $66, $85, $A2, $CD, $CD, $F7
org $D12EBA
db $03, $9B, $69, $00, $00, $00, $00, $00, $00
org $D12EC3
db $03, $AD, $CD, $43, $64, $A6, $96, $1E, $00
org $D12ECC
db $03, $CE, $BD, $3C, $42, $9F, $64, $1B, $00
org $D12ED5
db $03, $36, $08, $93, $11, $44, $9E, $00, $00
org $D12EDE
db $03, $EB, $F9, $F0, $1E, $1E, $25, $00, $00
org $D12EF9
db $03, $12, $B2, $23, $9B, $42, $21, $67, $B2
org $D12F02
db $03, $96, $8C, $FD, $F3, $83, $B0, $00, $00
org $D12F0B
db $03, $1C, $11, $09, $08, $00, $00, $00, $00
org $D12F14
db $03, $22, $8A, $CE, $9D, $11, $26, $26, $ED
org $D12F26
db $03, $19, $6B, $23, $84, $0E, $6C, $A6, $CC
org $D12F2F
db $03, $11, $31, $C4, $4F, $81, $0E, $EB, $00
org $D12F38
db $03, $9E, $8F, $56, $44, $9B, $6A, $99, $F4
org $D12F41
db $03, $94, $43, $19, $E9, $23, $AB, $00, $00
org $D12F4A
db $03, $27, $1A, $62, $AD, $8C, $04, $00, $00
org $D12F53
db $03, $CE, $59, $AE, $43, $0D, $59, $FE, $18
org $D12F5C
db $03, $3A, $EE, $AA, $A2, $94, $1E, $9E, $00
org $D12F65
db $03, $5F, $0F, $A7, $C3, $24, $C0, $1B, $B9
org $D12F6E
db $03, $0E, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $03, $34, $00, $00, $00, $00, $00, $00, $00

