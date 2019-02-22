hirom
;================
;starting crystal
;================

org $E79F00
db $11, $50, $FF, $23
;=================
;Chests and Events
;=================
org $C0FAB2 
db $20, $28
org $C0FAB4 
db $20, $2C
org $C0FAB6 
db $40, $2C
org $C0FAB8 
db $40, $9D
org $C0FABA 
db $60, $28
org $C0FABC 
db $40, $A6
org $C0FABE 
db $40, $32
org $C0FAC0 
db $40, $14
org $C0FAC2 
db $40, $0E
org $C0FAC4 
db $60, $7C
org $C0FAC6 
db $40, $91
org $C0FAC8 
db $20, $9E
org $C0FACA 
db $40, $42
org $C0FACC 
db $20, $29
org $C0FACE 
db $40, $4A
org $C0FAD0 
db $40, $C2
org $C0FAD2 
db $40, $A4
org $C0FAD4 
db $60, $7E
org $C0FAD6 
db $20, $3A
org $C0FAD8 
db $60, $1D
org $C0FADA 
db $20, $97
org $C0FADC 
db $20, $9F
org $C0FADE 
db $20, $4D
org $C0FAE0 
db $20, $8E
org $C0FAE2 
db $50, $08
org $C0FAE4 
db $40, $56
org $C0FAE6 
db $40, $F8
org $C0FAE8 
db $40, $A2
org $C0FAEA 
db $20, $49
org $C0FAEC 
db $40, $31
org $C0FAEE 
db $40, $A2
org $C0FAF0 
db $60, $76
org $C0FAF2 
db $20, $17
org $C0FAF4 
db $60, $74
org $C0FAF6 
db $20, $1C
org $C0FAF8 
db $40, $04
org $C0FAFA 
db $40, $AB
org $C0FAFC 
db $40, $4C
org $C0FAFE 
db $60, $75
org $C0FB00 
db $20, $1A
org $C0FB02 
db $40, $14
org $C0FB04 
db $40, $13
org $C0FB06 
db $40, $2C
org $C0FB08 
db $20, $21
org $C0FB0A 
db $60, $4D
org $C0FB0C 
db $20, $4F
org $C0FB0E 
db $20, $31
org $C0FB10 
db $60, $51
org $C0FB12 
db $60, $60
org $C0FB14 
db $60, $17
org $C0FB16 
db $40, $3D
org $C0FB18 
db $50, $13
org $C0FB1A 
db $60, $0B
org $C0FB1C 
db $40, $58
org $C0FB1E 
db $40, $B8
org $C0FB20 
db $40, $93
org $C0FB22 
db $40, $9B
org $C0FB24 
db $20, $8F
org $C0FB26 
db $60, $38
org $C0FB28 
db $40, $61
org $C0FB2A 
db $40, $63
org $D13212 
db $40, $55
org $D13216 
db $40, $86
org $D1321A 
db $40, $EA
org $D1321E 
db $60, $53
org $D13222 
db $60, $08
org $D13226 
db $20, $93
org $D1322A 
db $60, $35
org $D1322E 
db $40, $D0
org $D13232 
db $60, $61
org $D13236 
db $20, $96
org $D1323A 
db $40, $A1
org $D1323E 
db $60, $41
org $D13242 
db $40, $8B
org $D13246 
db $40, $57
org $D1324A 
db $40, $E3
org $D1324E 
db $40, $23
org $D13252 
db $40, $AE
org $D13256 
db $40, $0A
org $D1325A 
db $20, $19
org $D1325E 
db $40, $8A
org $D13262 
db $20, $84
org $D13266 
db $40, $BA
org $D1326A 
db $40, $C7
org $D1326E 
db $60, $54
org $D13272 
db $40, $14
org $D13276 
db $40, $5C
org $D1327A 
db $40, $A5
org $D1327E 
db $60, $33
org $D13282 
db $40, $C6
org $D13286 
db $20, $56
org $D1328A 
db $40, $61
org $D1328E 
db $60, $7B
org $D13292 
db $40, $4D
org $D13296 
db $60, $68
org $D1329A 
db $40, $B7
org $D1329E 
db $20, $55
org $D132A2 
db $60, $7A
org $D132A6 
db $20, $58
org $D132AA 
db $40, $12
org $D132AE 
db $20, $24
org $D132B2 
db $40, $95
org $D132B6 
db $40, $15
org $D132BA 
db $40, $31
org $D132BE 
db $40, $4C
org $D132C2 
db $20, $91
org $D132C6 
db $40, $5B
org $D132CA 
db $40, $CC
org $D132CE 
db $20, $9A
org $D132D2 
db $40, $3B
org $D132D6 
db $60, $79
org $D132DA 
db $40, $4E
org $D132DE 
db $40, $2A
org $D132E2 
db $40, $EE
org $D132E6 
db $20, $1B
org $D132EA 
db $40, $A1
org $D132EE 
db $60, $0D
org $D132F2 
db $50, $0D
org $D132F6 
db $50, $0A
org $D132FA 
db $40, $09
org $D132FE 
db $40, $66
org $D13302 
db $40, $A0
org $D13306 
db $40, $8E
org $D1330A 
db $40, $E6
org $D1330E 
db $40, $B5
org $D13312 
db $40, $0F
org $D13316 
db $40, $B1
org $D1331A 
db $40, $C8
org $D1331E 
db $40, $BD
org $D13322 
db $60, $44
org $D13326 
db $60, $34
org $D1332A 
db $40, $8D
org $D1332E 
db $40, $AD
org $D13332 
db $20, $35
org $D13336 
db $40, $58
org $D1333A 
db $40, $C3
org $D1333E 
db $40, $91
org $D13342 
db $20, $54
org $D13346 
db $40, $B4
org $D1334A 
db $60, $19
org $D1334E 
db $60, $32
org $D13352 
db $40, $4E
org $D13356 
db $60, $6F
org $D1335A 
db $60, $7D
org $D1335E 
db $40, $0A
org $D13362 
db $20, $9C
org $D13366 
db $20, $16
org $D1336A 
db $20, $38
org $D1336E 
db $20, $18
org $D13372 
db $20, $92
org $D13376 
db $40, $F1
org $D1337A 
db $40, $2A
org $D1337E 
db $60, $6D
org $D13382 
db $50, $07
org $D13386 
db $20, $40
org $D1338A 
db $20, $1F
org $D1338E 
db $20, $87
org $D13392 
db $40, $49
org $D13396 
db $20, $12
org $D1339A 
db $50, $00
org $D1339E 
db $20, $82
org $D133A2 
db $40, $94
org $D133A6 
db $40, $2D
org $D133AA 
db $20, $98
org $D133AE 
db $40, $A4
org $D133B2 
db $40, $31
org $D133B6 
db $40, $99
org $D133BA 
db $60, $4C
org $D133BE 
db $50, $01
org $D133C2 
db $20, $26
org $D133C6 
db $60, $29
org $D133CA 
db $40, $0A
org $D133CE 
db $40, $B6
org $D133D2 
db $20, $83
org $D133D6 
db $40, $4D
org $D133DA 
db $60, $6C
org $D133DE 
db $40, $99
org $D133E2 
db $40, $82
org $D133E6 
db $40, $2F
org $D133EA 
db $40, $E8
org $D133EE 
db $40, $A5
org $D133F2 
db $40, $B1
org $D133F6 
db $40, $35
org $D133FA 
db $20, $2D
org $D133FE 
db $40, $85
org $D13402 
db $20, $8B
org $D13406 
db $20, $88
org $D1340A 
db $20, $4B
org $D1340E 
db $60, $11
org $D13412 
db $60, $73
org $D13416 
db $40, $AE
org $D1341A 
db $60, $3B
org $D1341E 
db $60, $30
org $D13422 
db $40, $BA
org $D13426 
db $60, $52
org $D1342A 
db $40, $4F
org $D1342E 
db $20, $9D
org $D13432 
db $40, $97
org $D13436 
db $60, $1C
org $D1343A 
db $60, $43
org $D1343E 
db $20, $85
org $D13442 
db $40, $63
org $D13446 
db $60, $18
org $D1344A 
db $40, $25
org $D1344E 
db $40, $50
org $D13452 
db $20, $90
org $D13456 
db $20, $2F
org $D1345A 
db $20, $4C
org $D1345E 
db $40, $BA
org $D13462 
db $40, $06
org $D13466 
db $20, $53
org $D1346A 
db $40, $2E
org $D1346E 
db $20, $8C
org $D13472 
db $20, $2A
org $D13476 
db $40, $8E
org $D1347A 
db $20, $95
org $D1347E 
db $20, $4A
org $D13482 
db $40, $F4
org $D13486 
db $20, $86
org $D1348A 
db $20, $32
org $D1348E 
db $40, $92
org $D13492 
db $40, $90
org $D13496 
db $40, $AB
org $D1349A 
db $50, $0B
org $D1349E 
db $40, $32
org $D134A2 
db $40, $14
org $D134A6 
db $40, $2A
org $D134AA 
db $40, $AA
org $D134AE 
db $20, $1D
org $D134B2 
db $20, $45
org $D134B6 
db $40, $91
org $D134BA 
db $20, $52
org $D134BE 
db $40, $3A
org $D134C2 
db $40, $98
org $D134C6 
db $20, $27
org $D134CA 
db $60, $22
org $D134CE 
db $40, $39
org $D134D2 
db $40, $36
org $D134D6 
db $40, $A7
org $D134DA 
db $40, $04
org $D134DE 
db $50, $0F
org $D134E2 
db $40, $58
org $D134E6 
db $50, $05
org $D134EA 
db $40, $93
org $D134EE 
db $40, $FE
org $D134F2 
db $20, $50
org $D134F6 
db $60, $72
org $D134FA 
db $40, $57
org $D134FE 
db $40, $B1
org $D13502 
db $60, $6A
org $D13506 
db $40, $A7
org $D1350A 
db $20, $51
org $D1350E 
db $60, $31
org $D13512 
db $60, $1A
org $D13516 
db $40, $C2
org $D1351A 
db $50, $0C
org $D1351E 
db $40, $AD
org $D13522 
db $60, $12
org $D13526 
db $60, $06
org $D1352A 
db $40, $81
org $D1352E 
db $20, $94
org $D13532 
db $60, $3A
org $D13536 
db $60, $70
org $D1353A 
db $40, $BF
org $D1353E 
db $40, $03
org $D13542 
db $40, $10
org $D13546 
db $40, $B6
org $D1354A 
db $40, $F3
org $D1354E 
db $60, $77
org $D13552 
db $60, $80
org $D13556 
db $60, $45
org $D1355A 
db $40, $0E
org $D1355E 
db $40, $04
org $D13562 
db $20, $30
org $D13566 
db $20, $9B
org $D1356A 
db $60, $69
org $D1356E 
db $60, $13
org $D13572 
db $40, $99
org $D13576 
db $50, $15
org $D1357A 
db $20, $37
org $D1357E 
db $40, $68
org $D13582 
db $40, $3A
org $D13586 
db $40, $B9
org $D1358A 
db $20, $46
org $D1358E 
db $40, $4D
org $D13592 
db $20, $5E
org $D13596 
db $20, $25
org $D1359A 
db $60, $78
org $D1359E 
db $20, $8D
org $D135A2 
db $20, $8A
org $D135A6 
db $60, $59
org $D135AA 
db $40, $4E
org $D135AE 
db $40, $CD
org $D135B2 
db $40, $02
org $D135B6 
db $60, $58
org $D135BA 
db $40, $A0
org $D135BE 
db $50, $0E
org $D135C2 
db $20, $34
org $D135C6 
db $40, $8F
org $D135CA 
db $60, $40
org $D135CE 
db $60, $07
org $D135D2 
db $40, $B3
org $D135D6 
db $40, $B6
org $D135DA 
db $40, $0C
org $D135DE 
db $40, $37
org $D135E2 
db $40, $A2
org $D135E6 
db $40, $0B
org $D135EA 
db $20, $4E
org $D135EE 
db $40, $30
org $D135F2 
db $20, $2E
org $D135F6 
db $20, $89
org $D135FA 
db $20, $2B
org $D135FE 
db $20, $48
;=====
;shops
;=====
org $D12D40
db $03, $6D, $CD, $55, $00, $00, $00, $00, $00
org $D12D49
db $03, $2D, $47, $4E, $00, $00, $00, $00, $00
org $D12D52
db $03, $BD, $2A, $38, $00, $00, $00, $00, $00
org $D12D5B
db $07, $5A, $42, $6E, $0C, $1B, $0F, $00, $00
org $D12D64
db $00, $5C, $14, $3C, $00, $00, $00, $00, $00
org $D12D6D
db $03, $38, $3C, $38, $AA, $39, $95, $00, $00
org $D12D76
db $00, $15, $33, $22, $5D, $99, $36, $13, $47
org $D12D7F
db $03, $9E, $56, $03, $4E, $8D, $2B, $B9, $B0
org $D12D88
db $00, $39, $3B, $59, $00, $00, $00, $00, $00
org $D12D91
db $07, $4B, $21, $50, $6B, $00, $00, $00, $00
org $D12D9A
db $03, $87, $AA, $C9, $F1, $16, $3D, $0D, $00
org $D12DA3
db $00, $3D, $5A, $5B, $42, $23, $43, $00, $00
org $D12DAC
db $03, $8A, $ED, $82, $2A, $00, $00, $00, $00
org $D12DB5
db $07, $12, $10, $10, $81, $85, $02, $27, $0A
org $D12DBE
db $03, $8F, $B1, $04, $2A, $62, $8D, $8F, $AD
org $D12DC7
db $07, $04, $87, $3C, $15, $09, $20, $71, $00
org $D12DD0
db $07, $0E, $16, $11, $48, $83, $03, $82, $4A
org $D12DD9
db $03, $4E, $13, $1E, $9D, $A0, $8F, $00, $00
org $D12DE2
db $07, $1F, $49, $14, $2A, $00, $00, $00, $00
org $D12DEB
db $03, $BE, $83, $00, $00, $00, $00, $00, $00
org $D12DFD
db $03, $99, $82, $04, $00, $00, $00, $00, $00
org $D12E18
db $03, $48, $B9, $AC, $06, $39, $6E, $92, $32
org $D12E21
db $03, $58, $99, $9D, $00, $00, $00, $00, $00
org $D12E2A
db $03, $91, $8E, $4B, $87, $8E, $B7, $39, $00
org $D12E33
db $03, $92, $94, $3D, $F0, $32, $00, $00, $00
org $D12E3C
db $07, $14, $06, $00, $00, $00, $00, $00, $00
org $D12E45
db $07, $3D, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $03, $3D, $B6, $A3, $5E, $60, $2C, $4E, $AB
org $D12E57
db $03, $26, $FB, $89, $2D, $32, $A3, $42, $00
org $D12E60
db $03, $C4, $A7, $0F, $3E, $B7, $82, $0F, $8B
org $D12E69
db $03, $20, $5E, $A8, $56, $39, $17, $E5, $56
org $D12E72
db $03, $51, $11, $A3, $EC, $E3, $C3, $A6, $C1
org $D12E7B
db $03, $E9, $93, $FB, $14, $04, $4E, $87, $00
org $D12E84
db $03, $2B, $29, $00, $00, $00, $00, $00, $00
org $D12E8D
db $03, $3C, $0D, $E5, $00, $00, $00, $00, $00
org $D12E96
db $03, $95, $CF, $AB, $00, $00, $00, $00, $00
org $D12E9F
db $03, $AB, $97, $00, $00, $00, $00, $00, $00
org $D12EA8
db $03, $94, $09, $A2, $CD, $00, $00, $00, $00
org $D12EB1
db $03, $35, $A1, $51, $AC, $56, $3F, $57, $A7
org $D12EBA
db $03, $AC, $C4, $00, $00, $00, $00, $00, $00
org $D12EC3
db $03, $AD, $A0, $6C, $58, $96, $43, $95, $FB
org $D12ECC
db $03, $25, $EF, $4C, $85, $B8, $33, $00, $00
org $D12ED5
db $03, $21, $CB, $CD, $C2, $5D, $00, $00, $00
org $D12EDE
db $03, $58, $5A, $6A, $3C, $8A, $BA, $9B, $00
org $D12EF9
db $03, $62, $B6, $2A, $8C, $FC, $03, $8C, $69
org $D12F02
db $03, $A9, $9D, $B1, $3A, $AB, $27, $00, $00
org $D12F0B
db $03, $A7, $26, $2C, $00, $00, $00, $00, $00
org $D12F14
db $03, $1B, $3A, $A3, $14, $2D, $11, $4D, $5D
org $D12F26
db $03, $13, $92, $B1, $37, $92, $85, $CC, $6E
org $D12F2F
db $03, $36, $02, $5F, $24, $65, $03, $21, $00
org $D12F38
db $03, $47, $4D, $CC, $2D, $AA, $55, $CD, $FB
org $D12F41
db $03, $C3, $03, $94, $29, $06, $9B, $00, $00
org $D12F4A
db $03, $92, $13, $A5, $36, $AD, $06, $00, $00
org $D12F53
db $03, $31, $27, $E7, $9C, $99, $6E, $A7, $E1
org $D12F5C
db $03, $6E, $46, $8B, $31, $21, $35, $95, $09
org $D12F65
db $03, $87, $A7, $3C, $06, $2C, $8A, $97, $64
org $D12F6E
db $03, $E9, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $03, $C2, $00, $00, $00, $00, $00, $00, $00
