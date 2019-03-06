hirom
;================
;starting crystal
;================

org $E79F00
db $0B, $31, $38, $43
;=================
;Chests and Events
;=================
org $C0FAB2 
db $40, $EF
org $C0FAB4 
db $40, $A3
org $C0FAB6 
db $20, $1C
org $C0FAB8 
db $40, $C7
org $C0FABA 
db $40, $3C
org $C0FABC 
db $20, $08
org $C0FABE 
db $40, $4E
org $C0FAC0 
db $20, $17
org $C0FAC2 
db $60, $43
org $C0FAC4 
db $40, $AB
org $C0FAC6 
db $60, $21
org $C0FAC8 
db $40, $38
org $C0FACA 
db $50, $0C
org $C0FACC 
db $40, $0A
org $C0FACE 
db $60, $2B
org $C0FAD0 
db $40, $4E
org $C0FAD2 
db $20, $0A
org $C0FAD4 
db $40, $37
org $C0FAD6 
db $40, $19
org $C0FAD8 
db $20, $10
org $C0FADA 
db $40, $A8
org $C0FADC 
db $40, $5B
org $C0FADE 
db $40, $22
org $C0FAE0 
db $20, $06
org $C0FAE2 
db $40, $58
org $C0FAE4 
db $40, $19
org $C0FAE6 
db $40, $C4
org $C0FAE8 
db $60, $21
org $C0FAEA 
db $60, $07
org $C0FAEC 
db $20, $1F
org $C0FAEE 
db $20, $0A
org $C0FAF0 
db $40, $2A
org $C0FAF2 
db $20, $27
org $C0FAF4 
db $60, $33
org $C0FAF6 
db $20, $00
org $C0FAF8 
db $40, $9A
org $C0FAFA 
db $20, $22
org $C0FAFC 
db $20, $27
org $C0FAFE 
db $20, $09
org $C0FB00 
db $40, $FE
org $C0FB02 
db $40, $30
org $C0FB04 
db $40, $A2
org $C0FB06 
db $40, $29
org $C0FB08 
db $40, $69
org $C0FB0A 
db $40, $19
org $C0FB0C 
db $40, $CC
org $C0FB0E 
db $50, $0D
org $C0FB10 
db $50, $00
org $C0FB12 
db $40, $91
org $C0FB14 
db $20, $0D
org $C0FB16 
db $40, $49
org $C0FB18 
db $40, $2B
org $C0FB1A 
db $40, $17
org $C0FB1C 
db $40, $0C
org $C0FB1E 
db $40, $09
org $C0FB20 
db $40, $CE
org $C0FB22 
db $40, $A8
org $C0FB24 
db $40, $6E
org $C0FB26 
db $60, $0D
org $C0FB28 
db $40, $61
org $C0FB2A 
db $40, $63
org $D13212 
db $60, $13
org $D13216 
db $40, $48
org $D1321A 
db $20, $19
org $D1321E 
db $40, $88
org $D13222 
db $60, $20
org $D13226 
db $40, $84
org $D1322A 
db $20, $1F
org $D1322E 
db $60, $2F
org $D13232 
db $20, $25
org $D13236 
db $40, $3E
org $D1323A 
db $40, $CE
org $D1323E 
db $40, $2B
org $D13242 
db $60, $36
org $D13246 
db $40, $13
org $D1324A 
db $20, $0B
org $D1324E 
db $20, $06
org $D13252 
db $40, $B7
org $D13256 
db $40, $41
org $D1325A 
db $60, $2C
org $D1325E 
db $40, $4B
org $D13262 
db $60, $33
org $D13266 
db $60, $21
org $D1326A 
db $40, $1B
org $D1326E 
db $40, $33
org $D13272 
db $20, $0D
org $D13276 
db $40, $F1
org $D1327A 
db $40, $A6
org $D1327E 
db $40, $0F
org $D13282 
db $20, $07
org $D13286 
db $40, $F4
org $D1328A 
db $60, $08
org $D1328E 
db $40, $4E
org $D13292 
db $40, $64
org $D13296 
db $40, $2A
org $D1329A 
db $40, $1D
org $D1329E 
db $20, $24
org $D132A2 
db $20, $07
org $D132A6 
db $60, $3E
org $D132AA 
db $40, $12
org $D132AE 
db $20, $0F
org $D132B2 
db $40, $0F
org $D132B6 
db $20, $21
org $D132BA 
db $40, $1F
org $D132BE 
db $40, $4F
org $D132C2 
db $40, $E5
org $D132C6 
db $40, $F9
org $D132CA 
db $20, $26
org $D132CE 
db $60, $0B
org $D132D2 
db $40, $A3
org $D132D6 
db $40, $E3
org $D132DA 
db $40, $8A
org $D132DE 
db $60, $30
org $D132E2 
db $40, $94
org $D132E6 
db $40, $11
org $D132EA 
db $60, $25
org $D132EE 
db $20, $25
org $D132F2 
db $40, $2D
org $D132F6 
db $60, $22
org $D132FA 
db $40, $F0
org $D132FE 
db $40, $A9
org $D13302 
db $60, $21
org $D13306 
db $40, $9B
org $D1330A 
db $50, $05
org $D1330E 
db $40, $4C
org $D13312 
db $40, $1D
org $D13316 
db $60, $14
org $D1331A 
db $40, $93
org $D1331E 
db $40, $BA
org $D13322 
db $40, $17
org $D13326 
db $40, $12
org $D1332A 
db $40, $82
org $D1332E 
db $20, $1A
org $D13332 
db $40, $A6
org $D13336 
db $60, $25
org $D1333A 
db $20, $09
org $D1333E 
db $40, $0A
org $D13342 
db $20, $0B
org $D13346 
db $20, $23
org $D1334A 
db $40, $91
org $D1334E 
db $40, $BE
org $D13352 
db $60, $05
org $D13356 
db $40, $AC
org $D1335A 
db $40, $D0
org $D1335E 
db $40, $98
org $D13362 
db $40, $BF
org $D13366 
db $20, $07
org $D1336A 
db $20, $25
org $D1336E 
db $40, $37
org $D13372 
db $40, $96
org $D13376 
db $40, $12
org $D1337A 
db $40, $21
org $D1337E 
db $40, $3B
org $D13382 
db $40, $03
org $D13386 
db $40, $64
org $D1338A 
db $40, $FD
org $D1338E 
db $40, $2A
org $D13392 
db $60, $0F
org $D13396 
db $40, $FD
org $D1339A 
db $20, $22
org $D1339E 
db $20, $14
org $D133A2 
db $40, $08
org $D133A6 
db $40, $34
org $D133AA 
db $40, $37
org $D133AE 
db $50, $0F
org $D133B2 
db $20, $26
org $D133B6 
db $40, $AE
org $D133BA 
db $50, $03
org $D133BE 
db $20, $06
org $D133C2 
db $20, $11
org $D133C6 
db $40, $34
org $D133CA 
db $40, $5A
org $D133CE 
db $40, $65
org $D133D2 
db $40, $2F
org $D133D6 
db $40, $93
org $D133DA 
db $40, $29
org $D133DE 
db $40, $E1
org $D133E2 
db $20, $11
org $D133E6 
db $40, $03
org $D133EA 
db $60, $15
org $D133EE 
db $20, $07
org $D133F2 
db $60, $11
org $D133F6 
db $60, $21
org $D133FA 
db $60, $0C
org $D133FE 
db $60, $34
org $D13402 
db $40, $37
org $D13406 
db $60, $25
org $D1340A 
db $20, $20
org $D1340E 
db $40, $FC
org $D13412 
db $40, $CC
org $D13416 
db $40, $98
org $D1341A 
db $20, $0F
org $D1341E 
db $40, $8C
org $D13422 
db $60, $37
org $D13426 
db $40, $F7
org $D1342A 
db $40, $59
org $D1342E 
db $40, $B4
org $D13432 
db $40, $A3
org $D13436 
db $20, $0E
org $D1343A 
db $20, $05
org $D1343E 
db $20, $1A
org $D13442 
db $20, $09
org $D13446 
db $40, $0A
org $D1344A 
db $40, $BE
org $D1344E 
db $40, $2B
org $D13452 
db $40, $31
org $D13456 
db $40, $0E
org $D1345A 
db $40, $11
org $D1345E 
db $40, $0B
org $D13462 
db $40, $3F
org $D13466 
db $40, $03
org $D1346A 
db $40, $2D
org $D1346E 
db $60, $03
org $D13472 
db $60, $12
org $D13476 
db $20, $25
org $D1347A 
db $40, $5E
org $D1347E 
db $20, $24
org $D13482 
db $40, $1E
org $D13486 
db $40, $4D
org $D1348A 
db $40, $6E
org $D1348E 
db $40, $2B
org $D13492 
db $50, $09
org $D13496 
db $40, $B8
org $D1349A 
db $40, $FC
org $D1349E 
db $60, $24
org $D134A2 
db $40, $8B
org $D134A6 
db $40, $A6
org $D134AA 
db $40, $BB
org $D134AE 
db $60, $3F
org $D134B2 
db $40, $BA
org $D134B6 
db $40, $99
org $D134BA 
db $40, $B3
org $D134BE 
db $40, $4D
org $D134C2 
db $40, $BB
org $D134C6 
db $40, $8D
org $D134CA 
db $40, $95
org $D134CE 
db $40, $8E
org $D134D2 
db $20, $0A
org $D134D6 
db $40, $09
org $D134DA 
db $40, $0E
org $D134DE 
db $40, $C3
org $D134E2 
db $40, $2C
org $D134E6 
db $40, $14
org $D134EA 
db $20, $0E
org $D134EE 
db $40, $A8
org $D134F2 
db $60, $0E
org $D134F6 
db $20, $23
org $D134FA 
db $60, $26
org $D134FE 
db $40, $02
org $D13502 
db $20, $1F
org $D13506 
db $20, $18
org $D1350A 
db $40, $94
org $D1350E 
db $60, $21
org $D13512 
db $40, $86
org $D13516 
db $40, $81
org $D1351A 
db $20, $1F
org $D1351E 
db $40, $C2
org $D13522 
db $60, $20
org $D13526 
db $20, $27
org $D1352A 
db $20, $26
org $D1352E 
db $40, $F1
org $D13532 
db $20, $1D
org $D13536 
db $40, $C6
org $D1353A 
db $60, $10
org $D1353E 
db $40, $2B
org $D13542 
db $50, $15
org $D13546 
db $20, $04
org $D1354A 
db $40, $63
org $D1354E 
db $40, $85
org $D13552 
db $50, $0E
org $D13556 
db $40, $82
org $D1355A 
db $20, $23
org $D1355E 
db $40, $AC
org $D13562 
db $40, $97
org $D13566 
db $40, $11
org $D1356A 
db $40, $3A
org $D1356E 
db $40, $4D
org $D13572 
db $40, $CB
org $D13576 
db $60, $06
org $D1357A 
db $40, $97
org $D1357E 
db $40, $9C
org $D13582 
db $20, $20
org $D13586 
db $40, $2E
org $D1358A 
db $60, $25
org $D1358E 
db $40, $97
org $D13592 
db $40, $50
org $D13596 
db $40, $15
org $D1359A 
db $60, $1D
org $D1359E 
db $40, $5C
org $D135A2 
db $40, $14
org $D135A6 
db $20, $26
org $D135AA 
db $40, $64
org $D135AE 
db $40, $A5
org $D135B2 
db $20, $22
org $D135B6 
db $60, $09
org $D135BA 
db $20, $0C
org $D135BE 
db $20, $08
org $D135C2 
db $20, $21
org $D135C6 
db $40, $ED
org $D135CA 
db $40, $92
org $D135CE 
db $40, $0A
org $D135D2 
db $60, $32
org $D135D6 
db $50, $04
org $D135DA 
db $40, $1B
org $D135DE 
db $40, $38
org $D135E2 
db $40, $37
org $D135E6 
db $40, $BA
org $D135EA 
db $40, $B1
org $D135EE 
db $20, $13
org $D135F2 
db $40, $8B
org $D135F6 
db $20, $0C
org $D135FA 
db $40, $02
org $D135FE 
db $40, $24
;=====
;shops
;=====
org $D12D40
db $03, $85, $9F, $B1, $00, $00, $00, $00, $00
org $D12D49
db $00, $8F, $8C, $3D, $00, $00, $00, $00, $00
org $D12D52
db $07, $10, $00, $00, $00, $00, $00, $00, $00
org $D12D5B
db $03, $02, $A9, $2B, $B1, $A8, $AB, $B2, $00
org $D12D64
db $00, $46, $02, $50, $8A, $00, $00, $00, $00
org $D12D6D
db $00, $2E, $3E, $5E, $30, $32, $00, $00, $00
org $D12D76
db $00, $35, $5A, $5B, $52, $05, $38, $4C, $00
org $D12D7F
db $03, $13, $6B, $AD, $8F, $5A, $32, $25, $5B
org $D12D88
db $03, $4C, $5B, $04, $27, $00, $00, $00, $00
org $D12D91
db $07, $35, $6A, $08, $34, $81, $00, $00, $00
org $D12D9A
db $07, $41, $45, $32, $50, $07, $69, $12, $00
org $D12DA3
db $07, $43, $27, $73, $07, $11, $08, $4C, $00
org $D12DAC
db $03, $56, $9B, $00, $00, $00, $00, $00, $00
org $D12DB5
db $03, $35, $0E, $5D, $4B, $88, $5E, $13, $18
org $D12DBE
db $07, $31, $6F, $10, $7C, $80, $7E, $0A, $00
org $D12DC7
db $07, $01, $72, $1F, $85, $40, $4B, $79, $2A
org $D12DD0
db $00, $08, $59, $4A, $4E, $20, $0D, $0A, $3F
org $D12DD9
db $03, $A8, $40, $B1, $11, $9C, $C2, $00, $00
org $D12DE2
db $00, $43, $06, $2F, $3B, $3C, $10, $00, $00
org $D12DEB
db $03, $4D, $04, $00, $00, $00, $00, $00, $00
org $D12DFD
db $03, $C2, $6C, $5D, $00, $00, $00, $00, $00
org $D12E18
db $00, $37, $34, $3A, $45, $48, $00, $00, $00
org $D12E21
db $00, $41, $31, $03, $00, $00, $00, $00, $00
org $D12E2A
db $07, $06, $4A, $68, $24, $52, $14, $02, $51
org $D12E33
db $00, $00, $4B, $04, $44, $58, $00, $00, $00
org $D12E3C
db $03, $62, $29, $00, $00, $00, $00, $00, $00
org $D12E45
db $07, $20, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $07, $13, $48, $4D, $06, $54, $29, $0A, $0B
org $D12E57
db $03, $46, $29, $A2, $98, $FD, $9B, $13, $00
org $D12E60
db $03, $8B, $C9, $B8, $BA, $96, $24, $3A, $B1
org $D12E69
db $00, $53, $49, $51, $0E, $42, $07, $09, $40
org $D12E72
db $03, $2D, $3D, $AC, $8B, $E0, $17, $32, $64
org $D12E7B
db $07, $21, $16, $14, $44, $49, $75, $6B, $00
org $D12E84
db $00, $57, $0F, $01, $00, $00, $00, $00, $00
org $D12E8D
db $03, $A7, $B6, $A3, $00, $00, $00, $00, $00
org $D12E96
db $07, $22, $7D, $1E, $00, $00, $00, $00, $00
org $D12E9F
db $03, $FD, $06, $5E, $00, $00, $00, $00, $00
org $D12EA8
db $03, $11, $FC, $3A, $1A, $00, $00, $00, $00
org $D12EB1
db $03, $9C, $1E, $5D, $17, $29, $2D, $1E, $00
org $D12EBA
db $03, $8B, $00, $00, $00, $00, $00, $00, $00
org $D12EC3
db $03, $0F, $23, $5A, $5F, $4D, $2C, $24, $A3
org $D12ECC
db $03, $09, $ED, $83, $CE, $8E, $E4, $AB, $00
org $D12ED5
db $03, $13, $24, $B6, $85, $17, $F4, $00, $00
org $D12EDE
db $03, $09, $EE, $68, $A4, $BB, $02, $00, $00
org $D12EF9
db $03, $3B, $9F, $FC, $FC, $23, $42, $83, $AD
org $D12F02
db $03, $36, $87, $8E, $AD, $E2, $42, $00, $00
org $D12F0B
db $03, $CE, $AE, $05, $C3, $00, $00, $00, $00
org $D12F14
db $03, $1C, $C2, $AB, $AE, $F5, $C2, $0D, $13
org $D12F26
db $03, $33, $81, $6E, $8E, $C5, $F3, $82, $00
org $D12F2F
db $03, $5A, $A5, $B8, $5D, $09, $FC, $C2, $00
org $D12F38
db $03, $44, $A8, $13, $5E, $1E, $8E, $2C, $9B
org $D12F41
db $03, $F9, $5B, $5D, $19, $8E, $B8, $00, $00
org $D12F4A
db $03, $02, $4D, $09, $F3, $0E, $13, $00, $00
org $D12F53
db $03, $F1, $29, $32, $33, $B7, $1C, $3D, $8E
org $D12F5C
db $03, $4B, $9C, $2C, $58, $0E, $2B, $16, $FD
org $D12F65
db $03, $A4, $82, $FD, $1E, $2A, $FA, $8A, $69
org $D12F6E
db $03, $0A, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $03, $29, $00, $00, $00, $00, $00, $00, $00

