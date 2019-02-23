hirom
;================
;starting crystal
;================

org $E79F00
db $05, $02, $FF, $13
;=================
;Chests and Events
;=================
org $C0FAB2 
db $40, $EE
org $C0FAB4 
db $40, $39
org $C0FAB6 
db $40, $39
org $C0FAB8 
db $60, $40
org $C0FABA 
db $40, $22
org $C0FABC 
db $40, $C2
org $C0FABE 
db $40, $11
org $C0FAC0 
db $40, $99
org $C0FAC2 
db $40, $CD
org $C0FAC4 
db $40, $AC
org $C0FAC6 
db $40, $59
org $C0FAC8 
db $40, $F6
org $C0FACA 
db $20, $1B
org $C0FACC 
db $20, $1E
org $C0FACE 
db $40, $2A
org $C0FAD0 
db $40, $13
org $C0FAD2 
db $40, $83
org $C0FAD4 
db $60, $1C
org $C0FAD6 
db $20, $20
org $C0FAD8 
db $40, $FD
org $C0FADA 
db $40, $04
org $C0FADC 
db $40, $85
org $C0FADE 
db $20, $13
org $C0FAE0 
db $20, $22
org $C0FAE2 
db $40, $03
org $C0FAE4 
db $20, $25
org $C0FAE6 
db $60, $0D
org $C0FAE8 
db $20, $10
org $C0FAEA 
db $40, $AE
org $C0FAEC 
db $40, $B0
org $C0FAEE 
db $20, $19
org $C0FAF0 
db $40, $9B
org $C0FAF2 
db $40, $60
org $C0FAF4 
db $60, $4C
org $C0FAF6 
db $60, $4A
org $C0FAF8 
db $60, $2A
org $C0FAFA 
db $40, $D0
org $C0FAFC 
db $20, $25
org $C0FAFE 
db $40, $A0
org $C0FB00 
db $40, $2A
org $C0FB02 
db $20, $14
org $C0FB04 
db $20, $17
org $C0FB06 
db $20, $12
org $C0FB08 
db $40, $10
org $C0FB0A 
db $20, $07
org $C0FB0C 
db $20, $07
org $C0FB0E 
db $40, $44
org $C0FB10 
db $40, $B9
org $C0FB12 
db $40, $11
org $C0FB14 
db $50, $03
org $C0FB16 
db $60, $10
org $C0FB18 
db $40, $1F
org $C0FB1A 
db $40, $92
org $C0FB1C 
db $40, $86
org $C0FB1E 
db $40, $5F
org $C0FB20 
db $20, $1B
org $C0FB22 
db $40, $10
org $C0FB24 
db $40, $43
org $C0FB26 
db $40, $A6
org $C0FB28 
db $40, $61
org $C0FB2A 
db $40, $63
org $D13212 
db $40, $07
org $D13216 
db $40, $E1
org $D1321A 
db $40, $36
org $D1321E 
db $40, $65
org $D13222 
db $40, $48
org $D13226 
db $20, $27
org $D1322A 
db $40, $05
org $D1322E 
db $40, $33
org $D13232 
db $60, $85
org $D13236 
db $40, $99
org $D1323A 
db $20, $12
org $D1323E 
db $20, $23
org $D13242 
db $40, $B9
org $D13246 
db $40, $AC
org $D1324A 
db $60, $6F
org $D1324E 
db $40, $AB
org $D13252 
db $40, $3A
org $D13256 
db $40, $90
org $D1325A 
db $40, $C3
org $D1325E 
db $60, $69
org $D13262 
db $50, $0F
org $D13266 
db $40, $47
org $D1326A 
db $20, $21
org $D1326E 
db $60, $0C
org $D13272 
db $60, $16
org $D13276 
db $40, $35
org $D1327A 
db $40, $5A
org $D1327E 
db $20, $26
org $D13282 
db $20, $1D
org $D13286 
db $40, $9B
org $D1328A 
db $20, $20
org $D1328E 
db $40, $3B
org $D13292 
db $40, $19
org $D13296 
db $40, $1E
org $D1329A 
db $40, $03
org $D1329E 
db $40, $AD
org $D132A2 
db $40, $52
org $D132A6 
db $40, $5A
org $D132AA 
db $40, $57
org $D132AE 
db $50, $0B
org $D132B2 
db $60, $4D
org $D132B6 
db $40, $F9
org $D132BA 
db $20, $1F
org $D132BE 
db $60, $14
org $D132C2 
db $60, $7C
org $D132C6 
db $60, $50
org $D132CA 
db $20, $21
org $D132CE 
db $60, $0F
org $D132D2 
db $40, $8A
org $D132D6 
db $20, $08
org $D132DA 
db $40, $8F
org $D132DE 
db $40, $0D
org $D132E2 
db $40, $E8
org $D132E6 
db $40, $A5
org $D132EA 
db $40, $32
org $D132EE 
db $20, $12
org $D132F2 
db $20, $27
org $D132F6 
db $60, $77
org $D132FA 
db $40, $3A
org $D132FE 
db $40, $44
org $D13302 
db $40, $A9
org $D13306 
db $20, $1D
org $D1330A 
db $40, $5E
org $D1330E 
db $50, $04
org $D13312 
db $40, $B9
org $D13316 
db $40, $50
org $D1331A 
db $60, $19
org $D1331E 
db $40, $43
org $D13322 
db $40, $BA
org $D13326 
db $20, $23
org $D1332A 
db $40, $67
org $D1332E 
db $60, $0B
org $D13332 
db $20, $1F
org $D13336 
db $20, $27
org $D1333A 
db $60, $7B
org $D1333E 
db $20, $19
org $D13342 
db $20, $18
org $D13346 
db $20, $17
org $D1334A 
db $40, $8C
org $D1334E 
db $40, $81
org $D13352 
db $60, $79
org $D13356 
db $20, $14
org $D1335A 
db $60, $61
org $D1335E 
db $40, $06
org $D13362 
db $20, $16
org $D13366 
db $40, $FC
org $D1336A 
db $40, $AB
org $D1336E 
db $50, $14
org $D13372 
db $40, $81
org $D13376 
db $40, $C3
org $D1337A 
db $40, $FC
org $D1337E 
db $60, $18
org $D13382 
db $40, $C7
org $D13386 
db $60, $31
org $D1338A 
db $20, $13
org $D1338E 
db $40, $8E
org $D13392 
db $40, $08
org $D13396 
db $40, $0A
org $D1339A 
db $40, $31
org $D1339E 
db $60, $0E
org $D133A2 
db $50, $15
org $D133A6 
db $20, $1A
org $D133AA 
db $40, $38
org $D133AE 
db $40, $98
org $D133B2 
db $40, $0E
org $D133B6 
db $40, $03
org $D133BA 
db $50, $11
org $D133BE 
db $40, $C9
org $D133C2 
db $40, $AF
org $D133C6 
db $40, $5F
org $D133CA 
db $40, $10
org $D133CE 
db $40, $5A
org $D133D2 
db $20, $25
org $D133D6 
db $60, $3C
org $D133DA 
db $40, $5F
org $D133DE 
db $40, $AB
org $D133E2 
db $40, $38
org $D133E6 
db $40, $42
org $D133EA 
db $20, $24
org $D133EE 
db $20, $16
org $D133F2 
db $20, $21
org $D133F6 
db $60, $6B
org $D133FA 
db $40, $0C
org $D133FE 
db $40, $CE
org $D13402 
db $60, $15
org $D13406 
db $20, $07
org $D1340A 
db $20, $24
org $D1340E 
db $40, $8B
org $D13412 
db $40, $5F
org $D13416 
db $40, $03
org $D1341A 
db $40, $6D
org $D1341E 
db $40, $8A
org $D13422 
db $40, $85
org $D13426 
db $20, $14
org $D1342A 
db $40, $A1
org $D1342E 
db $60, $0A
org $D13432 
db $60, $72
org $D13436 
db $40, $C3
org $D1343A 
db $40, $92
org $D1343E 
db $20, $23
org $D13442 
db $40, $21
org $D13446 
db $40, $C3
org $D1344A 
db $20, $20
org $D1344E 
db $40, $8A
org $D13452 
db $40, $34
org $D13456 
db $40, $0D
org $D1345A 
db $20, $13
org $D1345E 
db $40, $5B
org $D13462 
db $40, $88
org $D13466 
db $40, $53
org $D1346A 
db $60, $22
org $D1346E 
db $60, $73
org $D13472 
db $40, $5F
org $D13476 
db $40, $9D
org $D1347A 
db $60, $7A
org $D1347E 
db $40, $3E
org $D13482 
db $40, $9E
org $D13486 
db $20, $13
org $D1348A 
db $20, $0F
org $D1348E 
db $60, $68
org $D13492 
db $40, $51
org $D13496 
db $40, $A8
org $D1349A 
db $50, $00
org $D1349E 
db $40, $3C
org $D134A2 
db $40, $87
org $D134A6 
db $40, $43
org $D134AA 
db $40, $3C
org $D134AE 
db $40, $61
org $D134B2 
db $40, $0E
org $D134B6 
db $40, $93
org $D134BA 
db $60, $28
org $D134BE 
db $40, $C3
org $D134C2 
db $40, $A2
org $D134C6 
db $40, $CD
org $D134CA 
db $40, $A4
org $D134CE 
db $40, $6C
org $D134D2 
db $20, $22
org $D134D6 
db $40, $42
org $D134DA 
db $40, $9E
org $D134DE 
db $40, $A5
org $D134E2 
db $40, $30
org $D134E6 
db $40, $BF
org $D134EA 
db $20, $26
org $D134EE 
db $50, $02
org $D134F2 
db $20, $17
org $D134F6 
db $20, $06
org $D134FA 
db $40, $BC
org $D134FE 
db $60, $6C
org $D13502 
db $40, $1B
org $D13506 
db $40, $FE
org $D1350A 
db $60, $09
org $D1350E 
db $40, $08
org $D13512 
db $20, $0F
org $D13516 
db $40, $A9
org $D1351A 
db $40, $1B
org $D1351E 
db $40, $B7
org $D13522 
db $40, $1D
org $D13526 
db $20, $15
org $D1352A 
db $40, $F4
org $D1352E 
db $20, $1C
org $D13532 
db $40, $AB
org $D13536 
db $40, $41
org $D1353A 
db $40, $69
org $D1353E 
db $40, $FD
org $D13542 
db $50, $07
org $D13546 
db $40, $1B
org $D1354A 
db $40, $36
org $D1354E 
db $60, $4B
org $D13552 
db $40, $28
org $D13556 
db $20, $22
org $D1355A 
db $40, $97
org $D1355E 
db $40, $3F
org $D13562 
db $40, $98
org $D13566 
db $20, $26
org $D1356A 
db $60, $53
org $D1356E 
db $40, $B5
org $D13572 
db $60, $48
org $D13576 
db $40, $3B
org $D1357A 
db $40, $3A
org $D1357E 
db $40, $BB
org $D13582 
db $20, $15
org $D13586 
db $60, $43
org $D1358A 
db $20, $14
org $D1358E 
db $40, $3D
org $D13592 
db $40, $34
org $D13596 
db $60, $78
org $D1359A 
db $40, $9D
org $D1359E 
db $20, $25
org $D135A2 
db $40, $6E
org $D135A6 
db $40, $68
org $D135AA 
db $40, $06
org $D135AE 
db $60, $3B
org $D135B2 
db $40, $62
org $D135B6 
db $60, $87
org $D135BA 
db $40, $2B
org $D135BE 
db $20, $18
org $D135C2 
db $40, $47
org $D135C6 
db $60, $82
org $D135CA 
db $40, $14
org $D135CE 
db $20, $1F
org $D135D2 
db $40, $0B
org $D135D6 
db $40, $0D
org $D135DA 
db $40, $A7
org $D135DE 
db $20, $15
org $D135E2 
db $40, $C5
org $D135E6 
db $50, $0D
org $D135EA 
db $40, $11
org $D135EE 
db $40, $8E
org $D135F2 
db $60, $83
org $D135F6 
db $20, $15
org $D135FA 
db $40, $45
org $D135FE 
db $20, $0E
;=====
;shops
;=====
org $D12D40
db $00, $1A, $2A, $9D, $00, $00, $00, $00, $00
org $D12D49
db $03, $26, $CF, $B4, $AD, $B1, $00, $00, $00
org $D12D52
db $03, $50, $97, $00, $00, $00, $00, $00, $00
org $D12D5B
db $07, $49, $51, $13, $20, $34, $76, $00, $00
org $D12D64
db $00, $2B, $8C, $35, $4A, $00, $00, $00, $00
org $D12D6D
db $00, $13, $1B, $88, $14, $28, $00, $00, $00
org $D12D76
db $07, $21, $7D, $08, $29, $3D, $1F, $32, $0E
org $D12D7F
db $03, $14, $6E, $B4, $EC, $AA, $8F, $5B, $10
org $D12D88
db $07, $08, $81, $0C, $70, $00, $00, $00, $00
org $D12D91
db $07, $12, $5A, $44, $75, $54, $00, $00, $00
org $D12D9A
db $03, $14, $CC, $59, $BB, $1D, $CD, $C8, $00
org $D12DA3
db $00, $56, $17, $24, $29, $1D, $19, $4D, $00
org $D12DAC
db $03, $39, $A7, $00, $00, $00, $00, $00, $00
org $D12DB5
db $07, $39, $1E, $58, $17, $74, $60, $52, $11
org $D12DBE
db $07, $6E, $7E, $27, $01, $24, $10, $09, $06
org $D12DC7
db $00, $33, $54, $23, $31, $1E, $20, $32, $51
org $D12DD0
db $03, $5B, $67, $21, $8B, $B9, $A7, $46, $C3
org $D12DD9
db $00, $5B, $4B, $2F, $30, $00, $00, $00, $00
org $D12DE2
db $07, $1B, $80, $06, $07, $00, $00, $00, $00
org $D12DEB
db $00, $22, $2E, $00, $00, $00, $00, $00, $00
org $D12DFD
db $03, $A3, $50, $1E, $00, $00, $00, $00, $00
org $D12E18
db $07, $3A, $6A, $0A, $45, $38, $59, $00, $00
org $D12E21
db $03, $03, $E2, $AB, $00, $00, $00, $00, $00
org $D12E2A
db $07, $41, $1D, $35, $30, $05, $13, $42, $12
org $D12E33
db $00, $25, $2C, $21, $18, $5C, $00, $00, $00
org $D12E3C
db $03, $57, $8F, $00, $00, $00, $00, $00, $00
org $D12E45
db $03, $B4, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $03, $A6, $09, $36, $B0, $15, $4B, $82, $B0
org $D12E57
db $03, $17, $FD, $EC, $A6, $FE, $9C, $34, $00
org $D12E60
db $03, $3D, $C4, $F7, $08, $B8, $C2, $0D, $2F
org $D12E69
db $03, $34, $13, $BA, $E7, $E9, $AC, $51, $A8
org $D12E72
db $03, $81, $3C, $9E, $8A, $84, $66, $03, $9D
org $D12E7B
db $03, $32, $A3, $2B, $FD, $05, $AA, $CD, $00
org $D12E84
db $03, $03, $11, $9D, $00, $00, $00, $00, $00
org $D12E8D
db $03, $EA, $8B, $AB, $00, $00, $00, $00, $00
org $D12E96
db $03, $3D, $CD, $5A, $00, $00, $00, $00, $00
org $D12E9F
db $03, $18, $8B, $A5, $00, $00, $00, $00, $00
org $D12EA8
db $03, $87, $59, $65, $5F, $00, $00, $00, $00
org $D12EB1
db $03, $C6, $F0, $32, $A6, $41, $BB, $31, $0E
org $D12EBA
db $03, $83, $00, $00, $00, $00, $00, $00, $00
org $D12EC3
db $03, $81, $13, $26, $1A, $B7, $B9, $59, $06
org $D12ECC
db $03, $F9, $C4, $40, $55, $B4, $56, $00, $00
org $D12ED5
db $03, $32, $59, $8C, $41, $8E, $00, $00, $00
org $D12EDE
db $03, $9B, $1A, $B9, $99, $C3, $C2, $87, $BC
org $D12EF9
db $03, $1C, $99, $1C, $5E, $88, $02, $64, $B1
org $D12F02
db $03, $3B, $8F, $1D, $85, $AC, $20, $00, $00
org $D12F0B
db $03, $05, $9B, $82, $10, $00, $00, $00, $00
org $D12F14
db $03, $B4, $82, $B0, $F0, $42, $85, $9B, $6E
org $D12F26
db $03, $6E, $08, $BA, $83, $57, $8A, $8B, $12
org $D12F2F
db $03, $43, $A4, $22, $42, $B4, $A3, $6B, $00
org $D12F38
db $03, $99, $98, $47, $41, $3C, $9D, $CA, $99
org $D12F41
db $03, $58, $12, $41, $36, $19, $B2, $00, $00
org $D12F4A
db $03, $33, $AB, $B7, $C4, $94, $83, $AC, $00
org $D12F53
db $03, $13, $1B, $5F, $A5, $0E, $98, $07, $F4
org $D12F5C
db $03, $8C, $57, $37, $49, $63, $A4, $4F, $B4
org $D12F65
db $03, $2C, $A9, $18, $E0, $0A, $19, $13, $17
org $D12F6E
db $03, $57, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $03, $8F, $00, $00, $00, $00, $00, $00, $00

