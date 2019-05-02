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
db $40, $8E
org $C0FAB4 
db $40, $2B
org $C0FAB6 
db $60, $1B
org $C0FAB8 
db $40, $CE
org $C0FABA 
db $40, $F0
org $C0FABC 
db $60, $32
org $C0FABE 
db $40, $42
org $C0FAC0 
db $40, $32
org $C0FAC2 
db $40, $87
org $C0FAC4 
db $40, $5B
org $C0FAC6 
db $20, $1E
org $C0FAC8 
db $20, $12
org $C0FACA 
db $60, $22
org $C0FACC 
db $40, $4E
org $C0FACE 
db $60, $1D
org $C0FAD0 
db $60, $24
org $C0FAD2 
db $60, $32
org $C0FAD4 
db $20, $04
org $C0FAD6 
db $40, $B0
org $C0FAD8 
db $20, $0F
org $C0FADA 
db $40, $0D
org $C0FADC 
db $60, $36
org $C0FADE 
db $40, $19
org $C0FAE0 
db $20, $06
org $C0FAE2 
db $40, $37
org $C0FAE4 
db $40, $2F
org $C0FAE6 
db $20, $17
org $C0FAE8 
db $40, $E2
org $C0FAEA 
db $40, $49
org $C0FAEC 
db $40, $EC
org $C0FAEE 
db $40, $62
org $C0FAF0 
db $20, $21
org $C0FAF2 
db $20, $18
org $C0FAF4 
db $50, $0F
org $C0FAF6 
db $20, $02
org $C0FAF8 
db $60, $30
org $C0FAFA 
db $20, $05
org $C0FAFC 
db $20, $01
org $C0FAFE 
db $60, $37
org $C0FB00 
db $20, $25
org $C0FB02 
db $20, $27
org $C0FB04 
db $40, $E1
org $C0FB06 
db $40, $1D
org $C0FB08 
db $40, $2B
org $C0FB0A 
db $60, $1C
org $C0FB0C 
db $40, $0D
org $C0FB0E 
db $50, $0E
org $C0FB10 
db $40, $84
org $C0FB12 
db $40, $9D
org $C0FB14 
db $40, $97
org $C0FB16 
db $40, $82
org $C0FB18 
db $40, $C5
org $C0FB1A 
db $60, $2F
org $C0FB1C 
db $20, $22
org $C0FB1E 
db $50, $0C
org $C0FB20 
db $40, $96
org $C0FB22 
db $40, $90
org $C0FB24 
db $40, $40
org $C0FB26 
db $40, $B8
org $C0FB28 
db $40, $B9
org $C0FB2A 
db $40, $63
org $C0FB2C 
db $40, $A9
org $C0FB2E 
db $40, $94
org $C0FB30 
db $40, $9C
org $C0FB32 
db $20, $26
org $C0FB34 
db $20, $11
org $C0FB36 
db $60, $3E
org $D13212 
db $20, $22
org $D13216 
db $60, $32
org $D1321A 
db $20, $0C
org $D1321E 
db $20, $25
org $D13222 
db $40, $B4
org $D13226 
db $20, $26
org $D1322A 
db $40, $0A
org $D1322E 
db $20, $1A
org $D13232 
db $40, $4C
org $D13236 
db $50, $15
org $D1323A 
db $20, $15
org $D1323E 
db $40, $53
org $D13242 
db $40, $4B
org $D13246 
db $40, $86
org $D1324A 
db $A4, $84
org $D1324E 
db $60, $3A
org $D13252 
db $20, $1A
org $D13256 
db $60, $25
org $D1325A 
db $20, $19
org $D1325E 
db $40, $B6
org $D13262 
db $40, $C3
org $D13266 
db $40, $4D
org $D1326A 
db $60, $0E
org $D1326E 
db $20, $07
org $D13272 
db $40, $03
org $D13276 
db $60, $11
org $D1327A 
db $40, $85
org $D1327E 
db $60, $20
org $D13282 
db $20, $0A
org $D13286 
db $40, $EC
org $D1328A 
db $50, $07
org $D1328E 
db $40, $B4
org $D13292 
db $20, $1F
org $D13296 
db $40, $35
org $D1329A 
db $40, $E2
org $D1329E 
db $60, $24
org $D132A2 
db $40, $92
org $D132A6 
db $40, $84
org $D132AA 
db $40, $5E
org $D132AE 
db $20, $21
org $D132B2 
db $40, $0E
org $D132B6 
db $40, $FE
org $D132BA 
db $50, $0D
org $D132BE 
db $20, $16
org $D132C2 
db $40, $29
org $D132C6 
db $40, $40
org $D132CA 
db $40, $57
org $D132CE 
db $40, $3F
org $D132D2 
db $60, $10
org $D132D6 
db $40, $F2
org $D132DA 
db $20, $1A
org $D132DE 
db $40, $92
org $D132E2 
db $40, $21
org $D132E6 
db $20, $24
org $D132EA 
db $40, $B1
org $D132EE 
db $60, $13
org $D132F2 
db $40, $05
org $D132F6 
db $A0, $83
org $D132FA 
db $A2, $93
org $D132FE 
db $A1, $24
org $D13302 
db $40, $81
org $D13306 
db $40, $FD
org $D1330A 
db $A0, $19
org $D1330E 
db $A0, $E9
org $D13312 
db $E2, $42
org $D13316 
db $A3, $9B
org $D1331A 
db $A0, $9C
org $D1331E 
db $A0, $4A
org $D13322 
db $40, $0F
org $D13326 
db $A3, $66
org $D1332A 
db $A1, $0F
org $D1332E 
db $A1, $5F
org $D13332 
db $40, $A0
org $D13336 
db $60, $23
org $D1333A 
db $40, $0C
org $D1333E 
db $60, $27
org $D13342 
db $40, $B4
org $D13346 
db $40, $B2
org $D1334A 
db $40, $88
org $D1334E 
db $40, $E8
org $D13352 
db $40, $BE
org $D13356 
db $20, $06
org $D1335A 
db $20, $25
org $D1335E 
db $20, $05
org $D13362 
db $60, $08
org $D13366 
db $40, $1D
org $D1336A 
db $40, $A7
org $D1336E 
db $60, $1A
org $D13372 
db $40, $BB
org $D13376 
db $40, $C1
org $D1337A 
db $60, $21
org $D1337E 
db $20, $11
org $D13382 
db $40, $E6
org $D13386 
db $40, $8B
org $D1338A 
db $60, $22
org $D1338E 
db $40, $20
org $D13392 
db $60, $0D
org $D13396 
db $60, $22
org $D1339A 
db $60, $3D
org $D1339E 
db $40, $2B
org $D133A2 
db $60, $3F
org $D133A6 
db $60, $17
org $D133AA 
db $60, $05
org $D133AE 
db $40, $9A
org $D133B2 
db $60, $0E
org $D133B6 
db $40, $9E
org $D133BA 
db $60, $25
org $D133BE 
db $40, $8F
org $D133C2 
db $40, $CE
org $D133C6 
db $40, $91
org $D133CA 
db $40, $21
org $D133CE 
db $50, $11
org $D133D2 
db $60, $21
org $D133D6 
db $20, $24
org $D133DA 
db $40, $62
org $D133DE 
db $50, $13
org $D133E2 
db $40, $0D
org $D133E6 
db $40, $A7
org $D133EA 
db $40, $03
org $D133EE 
db $40, $A8
org $D133F2 
db $40, $E8
org $D133F6 
db $40, $02
org $D133FA 
db $40, $50
org $D133FE 
db $40, $4C
org $D13402 
db $40, $9A
org $D13406 
db $20, $0F
org $D1340A 
db $40, $2C
org $D1340E 
db $20, $17
org $D13412 
db $20, $03
org $D13416 
db $20, $26
org $D1341A 
db $60, $20
org $D1341E 
db $20, $07
org $D13422 
db $40, $4C
org $D13426 
db $50, $03
org $D1342A 
db $20, $09
org $D1342E 
db $40, $33
org $D13432 
db $60, $25
org $D13436 
db $A5, $42
org $D1343A 
db $60, $22
org $D1343E 
db $20, $1D
org $D13442 
db $A5, $68
org $D13446 
db $20, $09
org $D1344A 
db $40, $40
org $D1344E 
db $60, $19
org $D13452 
db $20, $13
org $D13456 
db $40, $93
org $D1345A 
db $20, $24
org $D1345E 
db $40, $62
org $D13462 
db $20, $0A
org $D13466 
db $50, $02
org $D1346A 
db $60, $20
org $D1346E 
db $20, $1C
org $D13472 
db $60, $23
org $D13476 
db $40, $40
org $D1347A 
db $40, $31
org $D1347E 
db $40, $5F
org $D13482 
db $40, $AA
org $D13486 
db $A6, $57
org $D1348A 
db $40, $D0
org $D1348E 
db $A6, $A1
org $D13492 
db $40, $E1
org $D13496 
db $40, $93
org $D1349A 
db $AA, $E7
org $D1349E 
db $A6, $92
org $D134A2 
db $40, $9E
org $D134A6 
db $A6, $83
org $D134AA 
db $40, $CB
org $D134AE 
db $40, $BC
org $D134B2 
db $A6, $51
org $D134B6 
db $40, $2A
org $D134BA 
db $A6, $AB
org $D134BE 
db $A7, $0E
org $D134C2 
db $A8, $66
org $D134C6 
db $40, $51
org $D134CA 
db $40, $0E
org $D134CE 
db $A9, $BF
org $D134D2 
db $20, $1B
org $D134D6 
db $A6, $EA
org $D134DA 
db $A6, $AA
org $D134DE 
db $A6, $12
org $D134E2 
db $40, $9B
org $D134E6 
db $A6, $60
org $D134EA 
db $40, $82
org $D134EE 
db $AC, $14
org $D134F2 
db $20, $1F
org $D134F6 
db $40, $AF
org $D134FA 
db $40, $AA
org $D134FE 
db $40, $2A
org $D13502 
db $40, $28
org $D13506 
db $40, $5C
org $D1350A 
db $AB, $27
org $D1350E 
db $20, $11
org $D13512 
db $40, $A4
org $D13516 
db $20, $15
org $D1351A 
db $60, $1C
org $D1351E 
db $60, $16
org $D13522 
db $40, $BC
org $D13526 
db $40, $34
org $D1352A 
db $40, $69
org $D1352E 
db $40, $21
org $D13532 
db $20, $0A
org $D13536 
db $60, $39
org $D1353A 
db $40, $C6
org $D1353E 
db $40, $24
org $D13542 
db $40, $35
org $D13546 
db $20, $0E
org $D1354A 
db $40, $16
org $D1354E 
db $60, $20
org $D13552 
db $40, $12
org $D13556 
db $20, $00
org $D1355A 
db $40, $E4
org $D1355E 
db $40, $CA
org $D13562 
db $20, $0B
org $D13566 
db $60, $03
org $D1356A 
db $40, $14
org $D1356E 
db $40, $B9
org $D13572 
db $40, $63
org $D13576 
db $40, $38
org $D1357A 
db $20, $00
org $D1357E 
db $AD, $96
org $D13582 
db $40, $E6
org $D13586 
db $40, $9A
org $D1358A 
db $AD, $FE
org $D1358E 
db $AD, $90
org $D13592 
db $AD, $E9
org $D13596 
db $40, $A7
org $D1359A 
db $AD, $E2
org $D1359E 
db $40, $ED
org $D135A2 
db $40, $F1
org $D135A6 
db $40, $34
org $D135AA 
db $60, $2A
org $D135AE 
db $40, $68
org $D135B2 
db $40, $94
org $D135B6 
db $40, $51
org $D135BA 
db $40, $25
org $D135BE 
db $60, $2B
org $D135C2 
db $40, $45
org $D135C6 
db $40, $E5
org $D135CA 
db $20, $01
org $D135CE 
db $60, $33
org $D135D2 
db $40, $AE
org $D135D6 
db $40, $E4
org $D135DA 
db $50, $10
org $D135DE 
db $40, $A8
org $D135E2 
db $40, $10
org $D135E6 
db $20, $18
org $D135EA 
db $40, $0A
org $D135EE 
db $40, $13
org $D135F2 
db $40, $EB
org $D135F6 
db $20, $17
org $D135FA 
db $AE, $47
org $D135FE 
db $20, $19
org $C0FB70 
db $40, $2F
org $C0FB72 
db $40, $6E
org $C0FB74 
db $30, $00
org $C0FB76 
db $40, $27
org $C0FB78 
db $40, $C8
org $C0FB7A 
db $40, $A5
org $C0FB7C 
db $30, $07
org $C0FB7E 
db $30, $08
org $C0FB80 
db $30, $04
org $C0FB82 
db $30, $18
org $C0FB84 
db $30, $0D
org $C0FB86 
db $40, $5C
org $C0FB88 
db $30, $1C
org $C0FB8A 
db $40, $A6
org $C0FB8C 
db $40, $3E
org $C0FB8E 
db $30, $02
org $C0FB90 
db $30, $1D
org $C0FB92 
db $30, $05
org $C0FB94 
db $30, $0E
org $C0FB96 
db $30, $16
org $C0FB98 
db $40, $28
org $C0FB9A 
db $40, $C7
org $C0FB9C 
db $30, $0C
org $C0FB9E 
db $30, $1B
org $C0FBA0 
db $30, $06
org $C0FBA2 
db $30, $1A
org $C0FBA4 
db $40, $BD
org $C0FBA6 
db $30, $12
org $C0FBA8 
db $30, $0B
org $C0FBAA 
db $40, $6E
org $C0FBAC 
db $40, $EF
org $C0FBAE 
db $40, $87
org $C0FBB0 
db $40, $14
org $C0FBB2 
db $40, $30
org $C0FBB4 
db $30, $03
org $C0FBB6 
db $40, $8F
org $C0FBB8 
db $30, $15
org $C0FBBA 
db $30, $01
;=====
;shops
;=====
org $D12D40
db $00, $0E, $18, $00, $00, $00, $00, $00, $00
org $D12D49
db $00, $09, $5D, $86, $00, $00, $00, $00, $00
org $D12D52
db $01, $C3, $06, $69, $0B, $E1, $EC, $00, $00
org $D12D5B
db $07, $51, $0A, $87, $92, $00, $00, $00, $00
org $D12D64
db $01, $88, $F7, $61, $67, $00, $00, $00, $00
org $D12D6D
db $07, $8A, $9D, $1C, $00, $00, $00, $00, $00
org $D12D76
db $01, $98, $0F, $A5, $44, $6B, $CA, $CC, $88
org $D12D7F
db $00, $23, $19, $40, $9A, $0F, $00, $00, $00
org $D12D88
db $00, $27, $44, $3D, $00, $00, $00, $00, $00
org $D12D91
db $01, $9B, $05, $CA, $E4, $96, $00, $00, $00
org $D12D9A
db $01, $25, $58, $B7, $0F, $F0, $A5, $B8, $F1
org $D12DA3
db $07, $49, $80, $94, $72, $00, $00, $00, $00
org $D12DAC
db $07, $39, $20, $0F, $00, $00, $00, $00, $00
org $D12DB5
db $01, $3B, $EA, $6C, $E7, $BA, $AA, $95, $32
org $D12DBE
db $07, $08, $59, $3A, $4B, $00, $00, $00, $00
org $D12DC7
db $01, $9C, $0A, $E3, $04, $0E, $11, $AC, $6D
org $D12DD0
db $01, $52, $AF, $FD, $95, $BD, $1D, $87, $CA
org $D12DD9
db $00, $15, $8F, $91, $45, $30, $00, $00, $00
org $D12DE2
db $01, $2B, $09, $2E, $47, $00, $00, $00, $00
org $D12DEB
db $00, $84, $14, $00, $00, $00, $00, $00, $00
org $D12DFD
db $00, $96, $87, $07, $2B, $00, $00, $00, $00
org $D12E18
db $01, $07, $5B, $B3, $10, $CE, $BB, $E2, $00
org $D12E21
db $07, $10, $9B, $89, $00, $00, $00, $00, $00
org $D12E2A
db $07, $12, $85, $61, $0D, $00, $00, $00, $00
org $D12E33
db $00, $92, $49, $5B, $0B, $3E, $00, $00, $00
org $D12E3C
db $00, $0A, $34, $04, $95, $00, $00, $00, $00
org $D12E45
db $01, $33, $8F, $9B, $C7, $E3, $00, $00, $00
org $D12E4E
db $01, $9D, $1B, $91, $17, $9B, $42, $3C, $4F
org $D12E57
db $00, $3A, $58, $50, $97, $26, $00, $00, $00
org $D12E60
db $01, $B7, $13, $10, $B2, $42, $CD, $BE, $25
org $D12E69
db $00, $53, $17, $25, $42, $08, $00, $00, $00
org $D12E72
db $07, $69, $8F, $93, $1A, $00, $00, $00, $00
org $D12E7B
db $07, $31, $7C, $4A, $6D, $00, $00, $00, $00
org $D12E84
db $07, $50, $07, $3C, $40, $00, $00, $00, $00
org $D12E8D
db $07, $29, $6A, $11, $00, $00, $00, $00, $00
org $D12E96
db $01, $17, $A3, $EC, $E3, $EC, $F0, $00, $00
org $D12E9F
db $01, $B4, $F8, $9F, $E6, $00, $00, $00, $00
org $D12EA8
db $01, $93, $3D, $6A, $3E, $00, $00, $00, $00
org $D12EB1
db $00, $20, $47, $9E, $57, $90, $00, $00, $00
org $D12EBA
db $00, $38, $31, $00, $00, $00, $00, $00, $00
org $D12EC3
db $01, $19, $35, $48, $43, $E2, $24, $FC, $F4
org $D12ECC
db $07, $14, $0C, $52, $77, $00, $00, $00, $00
org $D12ED5
db $07, $17, $38, $06, $41, $00, $00, $00, $00
org $D12EDE
db $00, $3B, $51, $3C, $32, $56, $00, $00, $00
org $D12EF9
db $01, $5F, $AB, $5B, $09, $58, $3D, $8F, $04
org $D12F02
db $07, $33, $78, $8D, $48, $00, $00, $00, $00
org $D12F0B
db $00, $24, $8A, $39, $0C, $00, $00, $00, $00
org $D12F14
db $01, $0D, $4E, $96, $97, $6A, $5B, $49, $B1
org $D12F26
db $01, $A1, $2D, $CA, $6B, $00, $00, $00, $00
org $D12F2F
db $01, $E4, $EA, $B2, $21, $12, $F1, $E4, $00
org $D12F38
db $01, $50, $96, $EF, $F3, $E6, $E6, $E1, $00
org $D12F41
db $01, $A5, $1C, $84, $87, $09, $CD, $F1, $00
org $D12F4A
db $01, $B1, $55, $21, $02, $00, $00, $00, $00
org $D12F53
db $01, $E9, $49, $50, $AC, $88, $E1, $00, $00
org $D12F5C
db $01, $33, $C2, $51, $F9, $E4, $E2, $F0, $00
org $D12F65
db $01, $67, $99, $34, $35, $96, $C2, $87, $89

;===========
;shop prices
;===========
org $D12A00
db $01, $00
org $D12A02
db $01, $00
org $D12A04
db $01, $0f
org $D12A06
db $01, $1e
org $D12A08
db $01, $2d
org $D12A0A
db $01, $3c
org $D12A0C
db $01, $5a
org $D12A0E
db $02, $1a
org $D12A10
db $02, $33
org $D12A12
db $02, $22
org $D12A14
db $02, $44
org $D12A16
db $04, $02
org $D12A18
db $04, $02
org $D12A1A
db $01, $1c
org $D12A1C
db $01, $30
org $D12A1E
db $01, $58
org $D12A20
db $02, $1c
org $D12A22
db $02, $2a
org $D12A24
db $02, $54
org $D12A26
db $02, $38
org $D12A28
db $02, $6e
org $D12A2A
db $04, $02
org $D12A2C
db $04, $03
org $D12A2E
db $01, $0a
org $D12A30
db $01, $0a
org $D12A32
db $01, $4f
org $D12A34
db $02, $1b
org $D12A36
db $02, $36
org $D12A38
db $02, $66
org $D12A3A
db $02, $51
org $D12A3C
db $02, $6c
org $D12A3E
db $04, $02
org $D12A40
db $04, $03
org $D12A42
db $01, $41
org $D12A44
db $01, $69
org $D12A46
db $02, $20
org $D12A48
db $02, $40
org $D12A4A
db $02, $60
org $D12A4C
db $02, $80
org $D12A4E
db $04, $02
org $D12A50
db $04, $03
org $D12A52
db $02, $3a
org $D12A54
db $01, $0a
org $D12A56
db $02, $76
org $D12A58
db $02, $58
org $D12A5A
db $02, $94
org $D12A5C
db $04, $02
org $D12A5E
db $04, $02
org $D12A60
db $04, $03
org $D12A62
db $01, $14
org $D12A64
db $01, $4b
org $D12A66
db $01, $4b
org $D12A68
db $01, $4b
org $D12A6A
db $02, $0f
org $D12A6C
db $02, $1e
org $D12A6E
db $04, $02
org $D12A70
db $01, $14
org $D12A72
db $01, $32
org $D12A74
db $02, $12
org $D12A76
db $02, $09
org $D12A78
db $02, $1b
org $D12A7A
db $04, $02
org $D12A7C
db $04, $03
org $D12A7E
db $02, $19
org $D12A80
db $02, $19
org $D12A82
db $02, $19
org $D12A84
db $02, $26
org $D12A86
db $02, $32
org $D12A88
db $02, $4b
org $D12A8A
db $04, $02
org $D12A8C
db $04, $03
org $D12A8E
db $02, $08
org $D12A90
db $02, $10
org $D12A92
db $02, $20
org $D12A94
db $04, $02
org $D12A96
db $02, $0b
org $D12A98
db $02, $21
org $D12A9A
db $02, $16
org $D12A9C
db $04, $02
org $D12A9E
db $02, $2c
org $D12AA0
db $01, $32
org $D12AA2
db $03, $09
org $D12AA4
db $04, $02
org $D12AA6
db $02, $0f
org $D12AA8
db $01, $0a
org $D12AAA
db $03, $10
org $D12AAC
db $03, $13
org $D12AAE
db $02, $64
org $D12AB0
db $02, $6e
org $D12AB2
db $01, $6e
org $D12AB4
db $42, $19
org $D12AB6
db $43, $19
org $D12AB8
db $43, $0a
org $D12ABA
db $03, $0f
org $D12ABC
db $01, $4e
org $D12ABE
db $02, $4e
org $D12AC0
db $04, $01
org $D12AC2
db $04, $03
org $D12AC4
db $01, $0a
org $D12AC6
db $43, $19
org $D12AC8
db $02, $6e
org $D12ACA
db $02, $0f
org $D12ACC
db $02, $55
org $D12ACE
db $03, $0a
org $D12AD0
db $04, $02
org $D12AD2
db $02, $3b
org $D12AD4
db $04, $04
org $D12AD6
db $03, $19
org $D12AD8
db $02, $44
org $D12ADA
db $02, $3a
org $D12ADC
db $04, $02
org $D12ADE
db $01, $0a
org $D12AE0
db $01, $0a
org $D12AE2
db $01, $0a
org $D12AE4
db $01, $0a
org $D12AE6
db $01, $0a
org $D12AE8
db $01, $0a
org $D12AEA
db $01, $0a
org $D12AEC
db $01, $0a
org $D12AEE
db $01, $0a
org $D12AF0
db $01, $0a
org $D12AF2
db $01, $0a
org $D12AF4
db $01, $0a
org $D12AF6
db $01, $0a
org $D12AF8
db $01, $0a
org $D12AFA
db $01, $0a
org $D12AFC
db $01, $0a
org $D12AFE
db $01, $0a
org $D12B00
db $01, $0a
org $D12B02
db $01, $09
org $D12B04
db $01, $1d
org $D12B06
db $01, $27
org $D12B08
db $01, $3b
org $D12B0A
db $02, $1e
org $D12B0C
db $02, $2d
org $D12B0E
db $02, $3c
org $D12B10
db $02, $5a
org $D12B12
db $01, $05
org $D12B14
db $01, $19
org $D12B16
db $01, $23
org $D12B18
db $01, $37
org $D12B1A
db $02, $23
org $D12B1C
db $02, $46
org $D12B1E
db $02, $69
org $D12B20
db $01, $23
org $D12B22
db $02, $0f
org $D12B24
db $02, $1e
org $D12B26
db $02, $2d
org $D12B28
db $04, $03
org $D12B2A
db $03, $23
org $D12B2C
db $02, $23
org $D12B2E
db $02, $19
org $D12B30
db $02, $41
org $D12B32
db $02, $19
org $D12B34
db $01, $08
org $D12B36
db $01, $28
org $D12B38
db $01, $32
org $D12B3A
db $01, $46
org $D12B3C
db $02, $28
org $D12B3E
db $02, $50
org $D12B40
db $03, $0c
org $D12B42
db $01, $23
org $D12B44
db $01, $2d
org $D12B46
db $01, $3c
org $D12B48
db $02, $1e
org $D12B4A
db $02, $3c
org $D12B4C
db $02, $5a
org $D12B4E
db $01, $1e
org $D12B50
db $01, $32
org $D12B52
db $02, $14
org $D12B54
db $02, $0a
org $D12B56
db $02, $28
org $D12B58
db $03, $08
org $D12B5A
db $03, $08
org $D12B5C
db $03, $0a
org $D12B5E
db $04, $03
org $D12B60
db $03, $03
org $D12B62
db $03, $05
org $D12B64
db $02, $28
org $D12B66
db $03, $05
org $D12B68
db $01, $19
org $D12B6A
db $04, $05
org $D12B6C
db $01, $3c
org $D12B6E
db $01, $32
org $D12B70
db $02, $28
org $D12B72
db $02, $2d
org $D12B74
db $02, $19
org $D12B76
db $02, $1e
org $D12B78
db $04, $05
org $D12B7A
db $04, $05
org $D12B7C
db $04, $05
org $D12B7E
db $04, $03
org $D12B80
db $01, $07
org $D12B82
db $03, $0f
org $D12B84
db $02, $1e
org $D12B86
db $02, $32
org $D12B88
db $04, $04
org $D12B8A
db $04, $01
org $D12B8C
db $03, $14
org $D12B8E
db $03, $19
org $D12B90
db $03, $1e
org $D12B92
db $03, $0f
org $D12B94
db $04, $02
org $D12B96
db $03, $4b
org $D12B98
db $04, $02
org $D12B9A
db $04, $04
org $D12B9C
db $04, $01
org $D12B9E
db $02, $3a
org $D12BA0
db $02, $62
org $D12BA2
db $01, $0a
org $D12BA4
db $01, $0a
org $D12BA6
db $01, $0a
org $D12BA8
db $01, $0a
org $D12BAA
db $01, $0a
org $D12BAC
db $01, $0a
org $D12BAE
db $01, $0a
org $D12BB0
db $01, $0a
org $D12BB2
db $01, $0a
org $D12BB4
db $01, $0a
org $D12BB6
db $01, $0a
org $D12BB8
db $01, $0a
org $D12BBA
db $01, $0a
org $D12BBC
db $01, $0a
org $D12BBE
db $01, $0a
org $D12BC0
db $01, $04
org $D12BC2
db $01, $24
org $D12BC4
db $02, $0f
org $D12BC6
db $44, $05
org $D12BC8
db $03, $01
org $D12BCA
db $01, $06
org $D12BCC
db $01, $0f
org $D12BCE
db $01, $0f
org $D12BD0
db $01, $03
org $D12BD2
db $01, $02
org $D12BD4
db $03, $05
org $D12BD6
db $05, $01
org $D12BD8
db $01, $0f
org $D12BDA
db $01, $05
org $D12BDC
db $81, $00
org $D12BDE
db $04, $01
org $D12BE0
db $01, $19
org $D12BE2
db $01, $3c
org $D12BE4
db $01, $0b
org $D12BE6
db $01, $0b
org $D12BE8
db $01, $0b
org $D12BEA
db $01, $0b
org $D12BEC
db $01, $0b
org $D12BEE
db $83, $20
org $D12BF0
db $83, $20
org $D12BF2
db $83, $07
org $D12BF4
db $83, $09
org $D12BF6
db $83, $0e
org $D12BF8
db $02, $02
org $D12BFA
db $02, $02
org $D12BFC
db $02, $02
org $D12BFE
db $81, $00
org $F80000
db $01, $0f
org $F80002
db $01, $0f
org $F80004
db $01, $0f
org $F80006
db $01, $1d
org $F80008
db $01, $1c
org $F8000A
db $01, $1e
org $F8000C
db $01, $3c
org $F8000E
db $01, $3c
org $F80010
db $01, $3c
org $F80012
db $02, $1e
org $F80014
db $02, $1e
org $F80016
db $02, $1e
org $F80018
db $02, $3c
org $F8001A
db $02, $3c
org $F8001C
db $02, $3c
org $F8001E
db $02, $64
org $F80020
db $02, $64
org $F80022
db $02, $64
org $F80024
db $01, $12
org $F80026
db $01, $08
org $F80028
db $01, $09
org $F8002A
db $01, $1c
org $F8002C
db $01, $1c
org $F8002E
db $01, $1e
org $F80030
db $01, $3e
org $F80032
db $01, $46
org $F80034
db $01, $41
org $F80036
db $02, $1e
org $F80038
db $02, $1e
org $F8003A
db $02, $1e
org $F8003C
db $02, $3c
org $F8003E
db $02, $3c
org $F80040
db $02, $3c
org $F80042
db $02, $64
org $F80044
db $02, $64
org $F80046
db $02, $64
org $F80048
db $01, $0f
org $F8004A
db $01, $0f
org $F8004C
db $01, $0f
org $F8004E
db $01, $1d
org $F80050
db $01, $1e
org $F80052
db $01, $1e
org $F80054
db $01, $3c
org $F80056
db $01, $3c
org $F80058
db $01, $3c
org $F8005A
db $02, $1e
org $F8005C
db $02, $1e
org $F8005E
db $02, $1e
org $F80060
db $02, $3c
org $F80062
db $02, $3c
org $F80064
db $02, $3c
org $F80066
db $02, $64
org $F80068
db $02, $64
org $F8006A
db $02, $64
org $F8006C
db $01, $03
org $F8006E
db $01, $08
org $F80070
db $01, $0a
org $F80072
db $01, $20
org $F80074
db $01, $20
org $F80076
db $01, $1e
org $F80078
db $01, $3e
org $F8007A
db $01, $3a
org $F8007C
db $01, $3c
org $F8007E
db $02, $1e
org $F80080
db $02, $1e
org $F80082
db $02, $1e
org $F80084
db $02, $3c
org $F80086
db $02, $3c
org $F80088
db $02, $3c
org $F8008A
db $02, $64
org $F8008C
db $02, $64
org $F8008E
db $02, $64
org $F80090
db $01, $1e
org $F80092
db $01, $23
org $F80094
db $01, $19
org $F80096
db $02, $0f
org $F80098
db $02, $0f
org $F8009A
db $02, $0f
org $F8009C
db $03, $08
org $F8009E
db $04, $02
org $F800A0
db $03, $08
org $F800A2
db $02, $0c
org $F800A4
db $03, $08
org $F800A6
db $03, $08
org $F800A8
db $03, $08
org $F800AA
db $03, $0c
org $F800AC
db $03, $0c
org $F800AE
db $02, $23
org $F800B0
db $03, $05
org $F800B2
db $02, $23
org $F800B4
db $02, $23
org $F800B6
db $03, $05
org $F800B8
db $03, $02
org $F800BA
db $02, $07
org $F800BC
db $02, $07
org $F800BE
db $00, $00
org $F800C0
db $00, $00
org $F800C2
db $00, $00
org $F800C4
db $00, $00
org $F800C6
db $00, $00
org $F800C8
db $00, $00
org $F800CA
db $00, $00
org $F800CC
db $00, $00
org $F800CE
db $00, $00
org $F800D0
db $00, $00
org $F800D2
db $00, $00
org $F800D4
db $00, $00
org $F800D6
db $00, $00
org $F800D8
db $00, $00
org $F800DA
db $00, $00
org $F800DC
db $00, $00
org $F800DE
db $00, $00
org $F800E0
db $00, $00
org $F800E2
db $00, $00
org $F800E4
db $00, $00
org $F800E6
db $00, $00
org $F800E8
db $00, $00
org $F800EA
db $00, $00
org $F800EC
db $00, $00
org $F800EE
db $00, $00
org $F800F0
db $00, $00
org $F800F2
db $00, $00
org $F800F4
db $00, $00
org $F800F6
db $00, $00
org $F800F8
db $00, $00
org $F800FA
db $00, $00
org $F800FC
db $00, $00
org $F800FE
db $00, $00
org $F80100
db $00, $00
org $F80102
db $00, $00
org $F80104
db $02, $0a
org $F80106
db $02, $0a
org $F80108
db $03, $05
org $F8010A
db $03, $08
org $F8010C
db $02, $0a
org $F8010E
db $03, $08
org $F80110
db $02, $0a
org $F80112
db $02, $0a
org $F80114
db $02, $0a
org $F80116
db $02, $0c
org $F80118
db $02, $0a
org $F8011A
db $02, $0a
org $F8011C
db $03, $05
org $F8011E
db $01, $0f
org $F80120
db $01, $3c
org $F80122
db $02, $3c
org $F80124
db $02, $0a
org $F80126
db $01, $0f
org $F80128
db $03, $05
org $F8012A
db $02, $0a
org $F8012C
db $02, $0a
org $F8012E
db $02, $0a
org $F80130
db $02, $08
org $F80132
db $02, $05
org $F80134
db $03, $0a
org $F80136
db $02, $0a
org $F80138
db $02, $0a
org $F8013A
db $03, $0a
org $F8013C
db $03, $04
org $F8013E
db $03, $02
org $F80140
db $00, $00
org $F80142
db $00, $00
org $F80144
db $00, $00
org $F80146
db $00, $00
org $F80148
db $00, $00
org $F8014A
db $00, $00
org $F8014C
db $00, $00
org $F8014E
db $00, $00
org $F80150
db $00, $00
org $F80152
db $00, $00
org $F80154
db $00, $00
org $F80156
db $00, $00
org $F80158
db $00, $00
org $F8015A
db $00, $00
org $F8015C
db $00, $00
org $F8015E
db $00, $00
org $F80160
db $00, $00
org $F80162
db $00, $00
org $F80164
db $00, $00
org $F80166
db $00, $00
org $F80168
db $00, $00
org $F8016A
db $00, $00
org $F8016C
db $00, $00
org $F8016E
db $00, $00
org $F80170
db $00, $00
org $F80172
db $00, $00
org $F80174
db $00, $00
org $F80176
db $00, $00
org $F80178
db $00, $00
org $F8017A
db $00, $00
org $F8017C
db $00, $00
org $F8017E
db $00, $00
org $F80180
db $00, $00
org $F80182
db $00, $00
org $F80184
db $00, $00
org $F80186
db $00, $00
org $F80188
db $00, $00
org $F8018A
db $00, $00
org $F8018C
db $00, $00
org $F8018E
db $00, $00
org $F80190
db $00, $00
org $F80192
db $00, $00
org $F80194
db $00, $00
org $F80196
db $00, $00
org $F80198
db $00, $00
org $F8019A
db $00, $00
org $F8019C
db $00, $00
org $F8019E
db $00, $00
org $F801A0
db $00, $00
org $F801A2
db $00, $00
org $F801A4
db $00, $00
org $F801A6
db $00, $00
org $F801A8
db $00, $00
org $F801AA
db $00, $00
org $F801AC
db $00, $00
org $F801AE
db $00, $00
org $F801B0
db $00, $00
org $F801B2
db $00, $00
org $F801B4
db $00, $00
org $F801B6
db $00, $00
org $F801B8
db $00, $00
org $F801BA
db $00, $00
org $F801BC
db $00, $00
org $F801BE
db $00, $00
org $F801C0
db $00, $00
org $F801C2
db $00, $00
org $F801C4
db $00, $00
org $F801C6
db $00, $00
org $F801C8
db $00, $00
org $F801CA
db $00, $00
org $F801CC
db $00, $00
org $F801CE
db $00, $00
org $F801D0
db $00, $00
org $F801D2
db $00, $00
org $F801D4
db $00, $00
org $F801D6
db $00, $00
org $F801D8
db $00, $00
org $F801DA
db $00, $00
org $F801DC
db $00, $00
org $F801DE
db $00, $00
org $F801E0
db $00, $00
org $F801E2
db $00, $00
org $F801E4
db $00, $00
org $F801E6
db $00, $00
org $F801E8
db $00, $00
org $F801EA
db $00, $00
org $F801EC
db $00, $00
org $F801EE
db $00, $00
org $F801F0
db $00, $00
org $F801F2
db $00, $00
org $F801F4
db $00, $00
org $F801F6
db $00, $00
org $F801F8
db $00, $00
org $F801FA
db $00, $00
org $F801FC
db $00, $00
org $F801FE
db $00, $00
org $F80200
db $02, $01
org $F80202
db $02, $01
org $F80204
db $02, $01
org $F80206
db $02, $01
org $F80208
db $02, $01
org $F8020A
db $02, $01
org $F8020C
db $02, $03
org $F8020E
db $02, $0a
org $F80210
db $02, $0f
org $F80212
db $02, $0a
org $F80214
db $02, $05
org $F80216
db $02, $0a
org $F80218
db $03, $02
org $F8021A
db $03, $03
org $F8021C
db $02, $05
org $F8021E
db $02, $0f
org $F80220
db $02, $0c
org $F80222
db $02, $05
org $F80224
db $04, $03
org $F80226
db $02, $0a
org $F80228
db $02, $05
org $F8022A
db $03, $03
org $F8022C
db $04, $02
org $F8022E
db $03, $07
org $F80230
db $02, $03
org $F80232
db $02, $07
org $F80234
db $02, $0a
org $F80236
db $03, $02
org $F80238
db $03, $03
org $F8023A
db $02, $01
org $F8023C
db $03, $0a
org $F8023E
db $03, $02
org $F80240
db $03, $03
org $F80242
db $03, $05
org $F80244
db $03, $03
org $F80246
db $02, $01
org $F80248
db $02, $0a
org $F8024A
db $02, $0a
org $F8024C
db $02, $0a
org $F8024E
db $02, $0a
org $F80250
db $02, $0a
org $F80252
db $03, $02
org $F80254
db $04, $01
org $F80256
db $02, $01
org $F80258
db $02, $01
org $F8025A
db $02, $01
org $F8025C
db $02, $01
org $F8025E
db $02, $01
org $F80260
db $03, $01
org $F80262
db $03, $02
org $F80264
db $03, $04
org $F80266
db $03, $06
org $F80268
db $03, $08
org $F8026A
db $03, $0c
org $F8026C
db $02, $01
org $F8026E
db $02, $01
org $F80270
db $03, $01
org $F80272
db $03, $02
org $F80274
db $03, $04
org $F80276
db $03, $06
org $F80278
db $03, $08
org $F8027A
db $03, $0c
org $F8027C
db $02, $01
org $F8027E
db $02, $01
org $F80280
db $03, $01
org $F80282
db $03, $02
org $F80284
db $03, $04
org $F80286
db $03, $06
org $F80288
db $03, $08
org $F8028A
db $03, $0c
org $F8028C
db $02, $01
org $F8028E
db $02, $01
org $F80290
db $03, $01
org $F80292
db $03, $02
org $F80294
db $03, $04
org $F80296
db $03, $06
org $F80298
db $03, $08
org $F8029A
db $03, $0c
org $F8029C
db $02, $01
org $F8029E
db $02, $01
org $F802A0
db $03, $02
org $F802A2
db $03, $04
org $F802A4
db $03, $06
org $F802A6
db $03, $08
org $F802A8
db $03, $0c
org $F802AA
db $02, $01
org $F802AC
db $02, $01
org $F802AE
db $02, $01
org $F802B0
db $02, $05
org $F802B2
db $03, $02
org $F802B4
db $03, $04
org $F802B6
db $02, $01
org $F802B8
db $02, $01
org $F802BA
db $02, $01
org $F802BC
db $02, $01
org $F802BE
db $02, $01
org $F802C0
db $04, $02
org $F802C2
db $03, $05
org $F802C4
db $02, $01
org $F802C6
db $02, $01
org $F802C8
db $02, $01
org $F802CA
db $02, $01
org $F802CC
db $02, $01
org $F802CE
db $02, $01
org $F802D0
db $03, $02
org $F802D2
db $03, $03
org $F802D4
db $04, $01
org $F802D6
db $03, $04
org $F802D8
db $03, $02
org $F802DA
db $03, $03
org $F802DC
db $03, $02
org $F802DE
db $02, $0f
org $F802E0
db $03, $01
org $F802E2
db $02, $05
org $F802E4
db $03, $05
org $F802E6
db $02, $03
org $F802E8
db $03, $01
org $F802EA
db $03, $03
org $F802EC
db $03, $01
org $F802EE
db $03, $03
org $F802F0
db $03, $03
org $F802F2
db $03, $05
org $F802F4
db $03, $05
org $F802F6
db $02, $0a
org $F802F8
db $02, $07
org $F802FA
db $02, $08
org $F802FC
db $02, $0a
org $F802FE
db $02, $01
org $F80300
db $02, $0f
org $F80302
db $02, $0c
org $F80304
db $02, $04
org $F80306
db $02, $04
org $F80308
db $02, $01
org $F8030A
db $02, $01
org $F8030C
db $02, $01
org $F8030E
db $02, $05
org $F80310
db $02, $01
org $F80312
db $03, $0f
org $F80314
db $03, $0f
org $F80316
db $03, $0f
org $F80318
db $03, $0f
org $F8031A
db $03, $0f
org $F8031C
db $03, $0f
org $F8031E
db $03, $0f
org $F80320
db $03, $0f
org $F80322
db $03, $0f
org $F80324
db $03, $0f
org $F80326
db $03, $0f
org $F80328
db $03, $0f
org $F8032A
db $03, $0f
org $F8032C
db $03, $0f
org $F8032E
db $03, $0f
org $F80330
db $03, $0f
org $F80332
db $03, $0f
org $F80334
db $03, $0f
org $F80336
db $03, $0f
org $F80338
db $03, $0f
org $F8033A
db $03, $0f
org $F8033C
db $03, $0f
org $F8033E
db $00, $00
org $F80340
db $00, $00
org $F80342
db $00, $00
org $F80344
db $00, $00
org $F80346
db $00, $00
org $F80348
db $00, $00
org $F8034A
db $00, $00
org $F8034C
db $00, $00
org $F8034E
db $00, $00
org $F80350
db $00, $00
org $F80352
db $00, $00
org $F80354
db $00, $00
org $F80356
db $00, $00
org $F80358
db $00, $00
org $F8035A
db $00, $00
org $F8035C
db $00, $00
org $F8035E
db $00, $00
org $F80360
db $00, $00
org $F80362
db $00, $00
org $F80364
db $00, $00
org $F80366
db $00, $00
org $F80368
db $00, $00
org $F8036A
db $00, $00
org $F8036C
db $00, $00
org $F8036E
db $00, $00
org $F80370
db $00, $00
org $F80372
db $00, $00
org $F80374
db $00, $00
org $F80376
db $00, $00
org $F80378
db $00, $00
org $F8037A
db $00, $00
org $F8037C
db $00, $00
org $F8037E
db $00, $00
org $F80380
db $00, $00
org $F80382
db $00, $00
org $F80384
db $00, $00
org $F80386
db $00, $00
org $F80388
db $00, $00
org $F8038A
db $00, $00
org $F8038C
db $00, $00
org $F8038E
db $00, $00
org $F80390
db $00, $00
org $F80392
db $00, $00
org $F80394
db $00, $00
org $F80396
db $00, $00
org $F80398
db $00, $00
org $F8039A
db $00, $00
org $F8039C
db $00, $00
org $F8039E
db $00, $00
org $F803A0
db $00, $00
org $F803A2
db $00, $00
org $F803A4
db $00, $00
org $F803A6
db $00, $00
org $F803A8
db $00, $00
org $F803AA
db $00, $00
org $F803AC
db $00, $00
org $F803AE
db $00, $00
org $F803B0
db $00, $00
org $F803B2
db $00, $00
org $F803B4
db $00, $00
org $F803B6
db $00, $00
org $F803B8
db $00, $00
org $F803BA
db $00, $00
org $F803BC
db $00, $00
org $F803BE
db $00, $00
org $F803C0
db $00, $00
org $F803C2
db $00, $00
org $F803C4
db $00, $00
org $F803C6
db $00, $00
org $F803C8
db $00, $00
org $F803CA
db $00, $00
org $F803CC
db $00, $00
org $F803CE
db $00, $00
org $F803D0
db $00, $00
org $F803D2
db $00, $00
org $F803D4
db $00, $00
org $F803D6
db $00, $00
org $F803D8
db $00, $00
org $F803DA
db $00, $00
org $F803DC
db $00, $00
org $F803DE
db $00, $00
org $F803E0
db $00, $00
org $F803E2
db $00, $00
org $F803E4
db $00, $00
org $F803E6
db $00, $00
org $F803E8
db $00, $00
org $F803EA
db $00, $00
org $F803EC
db $00, $00
org $F803EE
db $00, $00
org $F803F0
db $00, $00
org $F803F2
db $00, $00
org $F803F4
db $00, $00
org $F803F6
db $00, $00
org $F803F8
db $00, $00
org $F803FA
db $00, $00
org $F803FC
db $00, $00
;=======
;enemies
;=======
; Enemy: Byblos
; Stats: 
org $D00400
db $25, $18, $07, $0a, $04, $08, $10, $0a, $70, $45, $e8, $03, $fc, $21, $00, $00, $00, $00, $F8, $D4, $10, $FE, $00, $11, $04, $18, $00, $00, $00, $00, $20, $13
; Loot: 
org $D05080
db $EB, $ED, $00, $F5
; --------------------------
; Original boss Byblos rank 4 -> Randomized boss Gilgamesh, Enkidou rank 6
; HP: 3600 -> 17776
; ENEMY: Byblos
; Skills: ['WindSlash', 'WindSlash']
; New skill: WindSlash
org $d0a0db
db $AB
; New skill: WindSlash
org $d0a0e1
db $AB

; Enemy: WingRaptor
; Stats: 
org $D02000
db $20, $24, $06, $00, $00, $01, $0c, $0a, $b8, $0b, $19, $00, $98, $08, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $00, $01
; Loot: 
org $D05400
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 250 -> 3000
; ENEMY: WingRaptor

; Enemy: WingRaptor
; Stats: 
org $D02020
db $20, $24, $07, $28, $18, $01, $0c, $0a, $b8, $0b, $00, $00, $98, $08, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $01, $02
; Loot: 
org $D05404
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 250 -> 3000
; ENEMY: WingRaptor
; ENEMY: WingRaptor

; Enemy: Karlabos
; Stats: 
org $D02040
db $2d, $38, $08, $00, $06, $00, $0e, $00, $40, $9c, $64, $00, $34, $3a, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $04, $20, $18, $00, $00, $00, $00, $02, $04
; Loot: 
org $D05408
db $00, $E0, $00, $F0
; --------------------------
; Original boss Karlabos rank 1 -> Randomized boss Bahamut rank 9
; HP: 650 -> 40000
; ENEMY: Karlabos

; Enemy: Siren
; Stats: 
org $D02080
db $2a, $0f, $06, $00, $00, $14, $28, $00, $8a, $4d, $20, $03, $d4, $30, $00, $00, $00, $00, $30, $44, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $04, $02
; Loot: 
org $D05410
db $00, $00, $00, $9B
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Minotauros rank 8
; HP: 900 -> 19850
; ENEMY: Siren
; Skills: ['Mute', 'Slow2', 'Haste', 'Cure2', 'Ice3', 'Scan', 'Armor', 'Sleep', 'Bolt2']
; New skill: Mute
org $d0b2e6
db $15
; New skill: Slow2
org $d0b2e7
db $40
; New skill: Haste
org $d0b2e8
db $3A
; New skill: Cure2
org $d0b2ea
db $18
; New skill: Ice3
org $d0b2eb
db $31
; New skill: Scan
org $d0b2ec
db $13
; New skill: Armor
org $d0b2ee
db $16
; New skill: Sleep
org $d0b2ef
db $28
; New skill: Bolt2
org $d0b2f0
db $2C

; Enemy: Siren
; Stats: 
org $D020A0
db $2a, $46, $0b, $00, $1e, $00, $00, $00, $8a, $4d, $c8, $00, $d4, $30, $00, $00, $00, $00, $34, $FF, $10, $08, $00, $01, $A1, $18, $00, $00, $00, $00, $05, $02
; Loot: 
org $D05414
db $00, $00, $00, $82
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Minotauros rank 8
; HP: 900 -> 19850
; ENEMY: Siren
; Skills: ['Mute', 'Slow2', 'Haste', 'Cure2', 'Ice3', 'Scan', 'Armor', 'Sleep', 'Bolt2']
; New skill: Mute
org $d0b2e6
db $15
; New skill: Slow2
org $d0b2e7
db $40
; New skill: Haste
org $d0b2e8
db $3A
; New skill: Cure2
org $d0b2ea
db $18
; New skill: Ice3
org $d0b2eb
db $31
; New skill: Scan
org $d0b2ec
db $13
; New skill: Armor
org $d0b2ee
db $16
; New skill: Sleep
org $d0b2ef
db $28
; New skill: Bolt2
org $d0b2f0
db $2C
; ENEMY: Siren

; Enemy: Forza
; Stats: 
org $D020C0
db $25, $0b, $09, $00, $02, $00, $04, $00, $dc, $05, $64, $00, $bc, $02, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $06, $06
; Loot: 
org $D05418
db $00, $00, $00, $F3
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Ifrit rank 3
; HP: 850 -> 3000
; ENEMY: Forza

; Enemy: Magisa
; Stats: 
org $D020E0
db $1e, $0b, $05, $00, $00, $01, $00, $00, $dc, $05, $c8, $00, $bc, $02, $00, $00, $00, $00, $F0, $FB, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $07, $06
; Loot: 
org $D0541C
db $00, $00, $00, $4B
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Ifrit rank 3
; HP: 850 -> 3000
; ENEMY: Forza
; ENEMY: Magisa
; Skills: ['Fire', 'Ice', 'Bolt', 'Aero', 'Specialty', 'Drain']
; New skill: Fire
org $d0b34d
db $24
; New skill: Ice
org $d0b34e
db $25
; New skill: Bolt
org $d0b34f
db $26
; New skill: Aero
org $d0b351
db $8F
; New skill: Specialty
org $d0b352
db $81
; New skill: Drain
org $d0b353
db $2D
; Original HP: 1500
; New trigger HP: 690
org $d0b329
db $b2, $02

; Enemy: Galura
; Stats: 
org $D02100
db $1f, $32, $09, $00, $07, $00, $04, $00, $64, $19, $64, $00, $ec, $13, $00, $00, $00, $00, $10, $40, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $08, $03
; Loot: 
org $D05420
db $E1, $E0, $00, $E1
; --------------------------
; Original boss Galura rank 3 -> Randomized boss Gilgamesh rank 5
; HP: 1200 -> 6500
; ENEMY: Galura
; Original HP: 6500
; New trigger HP: 4290
org $d0b36a
db $c2, $10

; Enemy: LiquiFlame
; Stats: 
org $D02120
db $2e, $48, $0b, $14, $00, $0a, $0f, $00, $1d, $4e, $20, $03, $b8, $6f, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D05424
db $00, $00, $00, $FC
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
; ENEMY: LiquiFlame
; Skills: ['Fight', 'Specialty', 'Flame']
; New skill: Fight
org $d0b381
db $80
; New skill: Specialty
org $d0b382
db $81
; New skill: Flame
org $d0b383
db $DB

; Enemy: LiquiFlame
; Stats: 
org $D02140
db $2e, $48, $08, $0a, $00, $1e, $1e, $00, $1d, $4e, $58, $02, $b8, $6f, $00, $00, $00, $FE, $77, $EF, $FF, $41, $00, $02, $20, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D05428
db $00, $00, $00, $32
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
; ENEMY: LiquiFlame
; Skills: ['Fight', 'Specialty', 'Flame']
; New skill: Fight
org $d0b381
db $80
; New skill: Specialty
org $d0b382
db $81
; New skill: Flame
org $d0b383
db $DB
; ENEMY: LiquiFlame
; Skills: ['Flare']
; New skill: Flare
org $d0b3a8
db $33

; Enemy: LiquiFlame
; Stats: 
org $D02160
db $2e, $48, $05, $1e, $00, $14, $0f, $00, $1d, $4e, $90, $01, $b8, $6f, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D0542C
db $00, $00, $00, $3F
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
; ENEMY: LiquiFlame
; Skills: ['Fight', 'Specialty', 'Flame']
; New skill: Fight
org $d0b381
db $80
; New skill: Specialty
org $d0b382
db $81
; New skill: Flame
org $d0b383
db $DB
; ENEMY: LiquiFlame
; Skills: ['Flare']
; New skill: Flare
org $d0b3a8
db $33
; ENEMY: LiquiFlame
; Skills: ['Fire3']
; New skill: Fire3
org $d0b3b8
db $30

; Enemy: Sergeant
; Stats: 
org $D02A40
db $14, $07, $02, $00, $00, $05, $0a, $0a, $dc, $05, $19, $00, $d4, $17, $64, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $52, $00
; Loot: 
org $D05548
db $00, $E0, $E9, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 1000 -> 1500
; ENEMY: Sergeant

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $c2, $01, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 1000 -> 1500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $c2, $01, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 1000 -> 1500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $c2, $01, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 1000 -> 1500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Iron Claw
; Stats: 
org $D02A20
db $28, $32, $09, $00, $14, $01, $0a, $0a, $dc, $05, $96, $00, $00, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $51, $27
; Loot: 
org $D05544
db $00, $F6, $B4, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 1000 -> 1500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Iron Claw

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $19, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $12
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $19, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $12
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $19, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $12
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42

; Enemy: Sandworm
; Stats: 
org $D021A0
db $32, $64, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $12
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9

; Enemy: Sandworm
; Stats: 
org $D021A0
db $32, $64, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $12
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9

; Enemy: Sandworm
; Stats: 
org $D021A0
db $32, $64, $0a, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $12
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9

; Enemy: Hole
; Stats: 
org $D021E0
db $62, $07, $02, $00, $00, $01, $0a, $0a, $35, $82, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $80, $60, $18, $00, $00, $00, $80, $0F, $12
; Loot: 
org $D0543C
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Hole
; Skills: ['Quarter']
; New skill: Quarter
org $d0b3fd
db $42
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Fight', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Fight
org $d0b3dc
db $80
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Hole

; Enemy: AdamanTiMi
; Stats: 
org $D02200
db $1e, $66, $12, $00, $1e, $00, $06, $32, $50, $46, $7d, $00, $7c, $60, $00, $00, $00, $00, $7A, $70, $10, $00, $00, $02, $00, $18, $00, $00, $60, $00, $10, $18
; Loot: 
org $D05440
db $00, $F5, $00, $E7
; --------------------------
; Original boss AdamanTiMi rank 4 -> Randomized boss Calofisteri rank 10
; HP: 2000 -> 18000
; ENEMY: AdamanTiMi

; Enemy: Sol Cannon
; Stats: 
org $D02280
db $37, $07, $02, $00, $05, $01, $0a, $0a, $c4, $09, $e8, $03, $b0, $1d, $64, $00, $00, $C8, $FF, $FF, $10, $00, $00, $04, $20, $98, $00, $00, $00, $00, $14, $24
; Loot: 
org $D05450
db $E3, $E2, $00, $EB
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Titan rank 5
; HP: 22500 -> 2500
; ENEMY: Sol Cannon
; Original HP: 2500
; New trigger HP: 1100
org $d0b4ef
db $4c, $04

; Enemy: Launcher
; Stats: 
org $D02B60
db $14, $07, $02, $00, $00, $01, $05, $05, $e2, $04, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $32
; Loot: 
org $D0556C
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Titan rank 5
; HP: 22500 -> 2500
; ENEMY: Sol Cannon
; Original HP: 2500
; New trigger HP: 1100
org $d0b4ef
db $4c, $04
; ENEMY: Launcher

; Enemy: Launcher
; Stats: 
org $D02B80
db $14, $07, $02, $00, $00, $01, $05, $05, $e2, $04, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $32
; Loot: 
org $D05570
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Titan rank 5
; HP: 22500 -> 2500
; ENEMY: Sol Cannon
; Original HP: 2500
; New trigger HP: 1100
org $d0b4ef
db $4c, $04
; ENEMY: Launcher
; ENEMY: Launcher

; Enemy: ArchaeAvis
; Stats: 
org $D022A0
db $1e, $0a, $07, $0a, $05, $01, $02, $00, $82, $00, $d0, $07, $c8, $00, $00, $00, $00, $20, $F4, $FF, $10, $00, $40, $40, $20, $98, $88, $00, $00, $00, $15, $11
; Loot: 
org $D05454
db $00, $00, $00, $F2
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Karlabos rank 1
; HP: 1600 -> 650
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'BreathWing', 'Specialty']
; New skill: Fight
org $d0b4fe
db $80
; New skill: BreathWing
org $d0b4ff
db $DA
; New skill: Specialty
org $d0b500
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D022C0
db $1e, $0a, $07, $0a, $06, $01, $03, $00, $82, $00, $d0, $07, $c8, $00, $00, $00, $00, $20, $F4, $FF, $10, $02, $40, $00, $00, $98, $88, $00, $00, $00, $15, $0f
; Loot: 
org $D05458
db $00, $00, $00, $F3
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Karlabos rank 1
; HP: 1600 -> 650
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'BreathWing', 'Specialty']
; New skill: Fight
org $d0b4fe
db $80
; New skill: BreathWing
org $d0b4ff
db $DA
; New skill: Specialty
org $d0b500
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: MiniBlaze
org $d0b514
db $CB
; New skill: Specialty
org $d0b515
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D022E0
db $1e, $0a, $07, $0a, $06, $01, $06, $00, $82, $00, $d0, $07, $c8, $00, $00, $00, $00, $20, $F4, $FF, $10, $01, $40, $00, $20, $98, $88, $00, $00, $00, $15, $12
; Loot: 
org $D0545C
db $00, $00, $00, $F4
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Karlabos rank 1
; HP: 1600 -> 650
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'BreathWing', 'Specialty']
; New skill: Fight
org $d0b4fe
db $80
; New skill: BreathWing
org $d0b4ff
db $DA
; New skill: Specialty
org $d0b500
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: MiniBlaze
org $d0b514
db $CB
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Fight', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Fight
org $d0b529
db $80
; New skill: Specialty
org $d0b52a
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D02300
db $1e, $0a, $07, $0a, $07, $01, $0a, $00, $82, $00, $d0, $07, $c8, $00, $00, $00, $00, $20, $F4, $FF, $10, $04, $40, $00, $00, $98, $88, $00, $00, $00, $15, $13
; Loot: 
org $D05460
db $00, $00, $00, $F5
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Karlabos rank 1
; HP: 1600 -> 650
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'BreathWing', 'Specialty']
; New skill: Fight
org $d0b4fe
db $80
; New skill: BreathWing
org $d0b4ff
db $DA
; New skill: Specialty
org $d0b500
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: MiniBlaze
org $d0b514
db $CB
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Fight', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Fight
org $d0b529
db $80
; New skill: Specialty
org $d0b52a
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Fight', 'Specialty']
; New skill: Fight
org $d0b53d
db $80
; New skill: Fight
org $d0b53e
db $80
; New skill: Specialty
org $d0b53f
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D02320
db $23, $0a, $09, $0a, $06, $01, $0c, $00, $82, $00, $d0, $07, $c8, $00, $00, $00, $00, $67, $F4, $FF, $10, $00, $40, $00, $20, $98, $88, $00, $00, $00, $15, $10
; Loot: 
org $D05464
db $00, $00, $00, $F6
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Karlabos rank 1
; HP: 1600 -> 650
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'BreathWing', 'Specialty']
; New skill: Fight
org $d0b4fe
db $80
; New skill: BreathWing
org $d0b4ff
db $DA
; New skill: Specialty
org $d0b500
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: MiniBlaze
org $d0b514
db $CB
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Fight', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Fight
org $d0b529
db $80
; New skill: Specialty
org $d0b52a
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Fight', 'Specialty']
; New skill: Fight
org $d0b53d
db $80
; New skill: Fight
org $d0b53e
db $80
; New skill: Specialty
org $d0b53f
db $81
; ENEMY: ArchaeAvis
; Skills: ['BreathWing', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'Flame', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'Thunder', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'MiniBlaze', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty']
; New skill: BreathWing
org $d0b567
db $DA
; New skill: Maelstrom
org $d0b568
db $C2
; New skill: Specialty
org $d0b569
db $81
; New skill: Entangle
org $d0b56b
db $BC
; New skill: Fight
org $d0b56c
db $80
; New skill: Specialty
org $d0b56d
db $81
; New skill: Flame
org $d0b56f
db $DB
; New skill: Maelstrom
org $d0b570
db $C2
; New skill: Specialty
org $d0b571
db $81
; New skill: Entangle
org $d0b573
db $BC
; New skill: Fight
org $d0b574
db $80
; New skill: Specialty
org $d0b575
db $81
; New skill: Thunder
org $d0b577
db $DC
; New skill: Maelstrom
org $d0b578
db $C2
; New skill: Specialty
org $d0b579
db $81
; New skill: Entangle
org $d0b57b
db $BC
; New skill: Fight
org $d0b57c
db $80
; New skill: Specialty
org $d0b57d
db $81
; New skill: MiniBlaze
org $d0b57f
db $CB
; New skill: Maelstrom
org $d0b580
db $C2
; New skill: Specialty
org $d0b581
db $81
; New skill: Entangle
org $d0b583
db $BC
; New skill: Fight
org $d0b584
db $80
; New skill: Specialty
org $d0b585
db $81

; Enemy: Chim.Brain
; Stats: 
org $D02340
db $1e, $08, $07, $0a, $08, $01, $10, $00, $b0, $04, $e8, $03, $b0, $04, $00, $00, $00, $00, $30, $70, $00, $02, $00, $00, $04, $18, $00, $00, $00, $00, $1A, $0f
; Loot: 
org $D05468
db $1B, $EA, $00, $E4
; --------------------------
; Original boss Chim.Brain rank 5 -> Randomized boss Galura rank 3
; HP: 3300 -> 1200
; ENEMY: Chim.Brain
; Skills: ['Fight', 'Fight', 'Specialty', 'AquaRake', 'MiniBlaze', 'Fight']
; New skill: Fight
org $d0b58e
db $80
; New skill: Fight
org $d0b58f
db $80
; New skill: Specialty
org $d0b590
db $81
; New skill: AquaRake
org $d0b592
db $84
; New skill: MiniBlaze
org $d0b593
db $CB
; New skill: Fight
org $d0b594
db $80

; Enemy: Titan
; Stats: 
org $D02360
db $19, $55, $0a, $0a, $0a, $00, $00, $00, $20, $4e, $d0, $07, $ec, $45, $00, $00, $00, $00, $F7, $DF, $00, $20, $00, $00, $A0, $18, $00, $00, $00, $00, $1B, $01
; Loot: 
org $D0546C
db $26, $E0, $00, $E1
; --------------------------
; Original boss Titan rank 5 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 2500 -> 20000
; ENEMY: Titan
; Skills: ['Fight', 'Fight', 'Specialty', 'Fight', 'EarthShaker', 'Specialty']
; New skill: Fight
org $d0b59d
db $80
; New skill: Fight
org $d0b59e
db $80
; New skill: Specialty
org $d0b59f
db $81
; New skill: Fight
org $d0b5a1
db $80
; New skill: EarthShaker
org $d0b5a2
db $CF
; New skill: Specialty
org $d0b5a3
db $81

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $24, $07, $00, $00, $08, $00, $00, $46, $05, $64, $00, $d6, $06, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $06
; Loot: 
org $D05470
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Antlion rank 6
; HP: 1500 -> 8100
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Gilgamesh
; Stats: 
org $D023C0
db $19, $28, $06, $00, $00, $00, $00, $00, $e4, $57, $d0, $07, $b0, $1d, $00, $00, $0E, $00, $64, $70, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $1E, $1a
; Loot: 
org $D05478
db $00, $00, $00, $E3
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 11500 -> 22500
; ENEMY: Gilgamesh
; Original HP: 22500
; New trigger HP: 19575
org $d0b5f5
db $77, $4c

; Enemy: Gilgamesh
; Stats: 
org $D02460
db $2d, $70, $07, $0a, $10, $00, $08, $00, $ff, $ff, $e8, $03, $20, $80, $00, $00, $10, $00, $F4, $70, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $23, $16
; Loot: 
org $D0548C
db $1A, $F6, $00, $91
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 6500 -> 65535
; ENEMY: Gilgamesh
; Original HP: 65535
; New trigger HP: 24903
org $d0b674
db $47, $61

; Enemy: Tyrasaurus
; Stats: 
org $D02480
db $32, $2d, $08, $00, $14, $00, $14, $00, $40, $1f, $e8, $03, $b0, $1d, $00, $00, $00, $02, $74, $74, $10, $00, $00, $01, $11, $18, $00, $00, $00, $00, $24, $1d
; Loot: 
org $D05490
db $85, $00, $E3, $00
; --------------------------
; Original boss Tyrasaurus rank 5 -> Randomized boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5
; HP: 5000 -> 8000
; ENEMY: Tyrasaurus

; Enemy: Abductor
; Stats: 
org $D024C0
db $23, $20, $06, $00, $04, $28, $06, $00, $d0, $07, $e8, $03, $2c, $33, $00, $00, $00, $00, $34, $20, $00, $00, $40, $00, $00, $18, $88, $00, $00, $00, $26, $17
; Loot: 
org $D05498
db $BA, $E1, $E0, $00
; --------------------------
; Original boss Abductor rank 6 -> Randomized boss Crayclaw rank 6
; HP: 2500 -> 2000
; ENEMY: Abductor

; Enemy: HiryuuPlant
; Stats: 
org $D024E0
db $2d, $41, $08, $00, $00, $32, $32, $00, $67, $42, $e8, $03, $a4, $51, $00, $00, $00, $00, $74, $74, $00, $00, $00, $00, $80, $18, $80, $00, $01, $00, $27, $21
; Loot: 
org $D0549C
db $00, $00, $00, $E3
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant

; Enemy: HiryuuFlowr
; Stats: 
org $D02500
db $16, $0f, $14, $00, $00, $32, $32, $1e, $52, $03, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D054A0
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02520
db $11, $0f, $14, $00, $00, $32, $32, $1e, $52, $03, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D054A4
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02540
db $1b, $0f, $14, $00, $00, $32, $32, $1e, $52, $03, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $21
; Loot: 
org $D054A8
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02560
db $16, $0f, $14, $00, $00, $32, $32, $1e, $52, $03, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D054AC
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02580
db $12, $0f, $14, $00, $00, $32, $32, $1e, $52, $03, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $23
; Loot: 
org $D054B0
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Omniscient rank 8
; HP: 12000 -> 16999
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: Gilgamesh
; Stats: 
org $D025A0
db $2e, $28, $05, $0a, $08, $20, $08, $0a, $70, $17, $78, $03, $96, $19, $00, $00, $2A, $00, $74, $70, $10, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $2D, $19
; Loot: 
org $D054B4
db $00, $C9, $00, $85
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 8888 -> 12000
; ENEMY: Gilgamesh
; Original HP: 6000
; New trigger HP: 4020
org $d0b761
db $b4, $0f

; Enemy: Enkidou
; Stats: 
org $D025C0
db $2e, $28, $05, $14, $00, $18, $00, $14, $70, $17, $e8, $03, $96, $19, $00, $00, $23, $20, $74, $70, $10, $00, $00, $00, $80, $08, $88, $00, $00, $00, $2E, $17
; Loot: 
org $D054B8
db $00, $97, $00, $1A
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 8888 -> 12000
; ENEMY: Gilgamesh
; Original HP: 6000
; New trigger HP: 4020
org $d0b761
db $b4, $0f
; ENEMY: Enkidou
; Skills: ['Aero2']
; New skill: Aero2
org $d0b7c0
db $90

; Enemy: Atmos
; Stats: 
org $D025E0
db $24, $0a, $0a, $00, $0e, $50, $14, $14, $84, $03, $10, $27, $2c, $01, $00, $00, $00, $00, $FF, $BF, $FF, $00, $00, $00, $20, $18, $00, $00, $08, $00, $2F, $29
; Loot: 
org $D054BC
db $5E, $E2, $00, $EB
; --------------------------
; Original boss Atmos rank 6 -> Randomized boss Siren, Siren rank 2
; HP: 19997 -> 900
; ENEMY: Atmos

; Enemy: Guardian
; Stats: 
org $D02600
db $23, $28, $0a, $00, $07, $0f, $0a, $0f, $e2, $04, $10, $27, $fb, $04, $00, $00, $00, $1E, $74, $FC, $10, $01, $00, $00, $00, $18, $00, $00, $00, $00, $30, $4d
; Loot: 
org $D054C0
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Tyrasaurus rank 5
; HP: 7777 -> 5000
; ENEMY: Guardian
; Skills: ['Fire2']
; New skill: Fire2
org $d0b865
db $2A
; Original HP: 1250
; New trigger HP: 475
org $d0b85e
db $db, $01

; Enemy: Guardian
; Stats: 
org $D02620
db $23, $28, $0a, $00, $07, $01, $0a, $0f, $e2, $04, $10, $27, $fb, $04, $00, $00, $00, $1E, $74, $FC, $10, $20, $00, $00, $00, $18, $00, $00, $00, $00, $31, $4d
; Loot: 
org $D054C4
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Tyrasaurus rank 5
; HP: 7777 -> 5000
; ENEMY: Guardian
; Skills: ['Fire2']
; New skill: Fire2
org $d0b865
db $2A
; Original HP: 1250
; New trigger HP: 475
org $d0b85e
db $db, $01
; ENEMY: Guardian
; Skills: ['Quicksand']
; New skill: Quicksand
org $d0b877
db $C9
; Original HP: 1250
; New trigger HP: 475
org $d0b874
db $db, $01

; Enemy: Guardian
; Stats: 
org $D02640
db $28, $28, $0a, $00, $07, $05, $0a, $0f, $e2, $04, $10, $27, $fb, $04, $00, $00, $00, $1E, $74, $FC, $10, $80, $00, $00, $00, $18, $00, $00, $00, $00, $32, $4d
; Loot: 
org $D054C8
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Tyrasaurus rank 5
; HP: 7777 -> 5000
; ENEMY: Guardian
; Skills: ['Fire2']
; New skill: Fire2
org $d0b865
db $2A
; Original HP: 1250
; New trigger HP: 475
org $d0b85e
db $db, $01
; ENEMY: Guardian
; Skills: ['Quicksand']
; New skill: Quicksand
org $d0b877
db $C9
; Original HP: 1250
; New trigger HP: 475
org $d0b874
db $db, $01
; ENEMY: Guardian
; Skills: ['MiniBlaze']
; New skill: MiniBlaze
org $d0b889
db $CB
; Original HP: 1250
; New trigger HP: 475
org $d0b886
db $db, $01

; Enemy: Guardian
; Stats: 
org $D02660
db $2d, $28, $0a, $00, $07, $0a, $0a, $0f, $e2, $04, $10, $27, $fb, $04, $00, $00, $00, $1E, $74, $FC, $10, $40, $00, $00, $00, $18, $00, $00, $00, $00, $33, $4d
; Loot: 
org $D054CC
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Tyrasaurus rank 5
; HP: 7777 -> 5000
; ENEMY: Guardian
; Skills: ['Fire2']
; New skill: Fire2
org $d0b865
db $2A
; Original HP: 1250
; New trigger HP: 475
org $d0b85e
db $db, $01
; ENEMY: Guardian
; Skills: ['Quicksand']
; New skill: Quicksand
org $d0b877
db $C9
; Original HP: 1250
; New trigger HP: 475
org $d0b874
db $db, $01
; ENEMY: Guardian
; Skills: ['MiniBlaze']
; New skill: MiniBlaze
org $d0b889
db $CB
; Original HP: 1250
; New trigger HP: 475
org $d0b886
db $db, $01
; ENEMY: Guardian
; Skills: ['Aero2']
; New skill: Aero2
org $d0b89f
db $90
; Original HP: 1250
; New trigger HP: 475
org $d0b898
db $db, $01

; Enemy: Carbunkle
; Stats: 
org $D02680
db $28, $24, $0a, $46, $24, $24, $24, $1e, $b8, $0b, $10, $27, $98, $08, $00, $00, $00, $20, $F4, $FB, $10, $00, $00, $00, $24, $18, $88, $00, $80, $00, $34, $35
; Loot: 
org $D054D0
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 15000 -> 3000
; ENEMY: Carbunkle
; Original HP: 3000
; New trigger HP: 1980
org $d0b8ae
db $bc, $07
; Original HP: 3000
; New trigger HP: 990
org $d0b8d1
db $de, $03

; Enemy: Carbunkle
; Stats: 
org $D02BC0
db $19, $06, $02, $07, $08, $08, $00, $00, $b8, $0b, $e8, $03, $98, $08, $00, $00, $00, $00, $80, $0B, $00, $00, $00, $FF, $00, $18, $00, $00, $00, $00, $5E, $01
; Loot: 
org $D05578
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 15000 -> 3000
; ENEMY: Carbunkle
; Original HP: 3000
; New trigger HP: 1980
org $d0b8ae
db $bc, $07
; Original HP: 3000
; New trigger HP: 990
org $d0b8d1
db $de, $03
; ENEMY: Carbunkle

; Enemy: Gilgamesh
; Stats: 
org $D02BA0
db $41, $4e, $0c, $00, $0a, $01, $12, $1e, $84, $79, $d0, $07, $a4, $51, $00, $00, $00, $00, $F7, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $5D, $40
; Loot: 
org $D05574
db $C2, $E1, $00, $00
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 55000 -> 31108
; ENEMY: Gilgamesh
; Original HP: 31108
; New trigger HP: 23642
org $d0c3a5
db $5a, $5c

; Enemy: Gilgamesh
; Stats: 
org $D026C0
db $4b, $3c, $01, $00, $18, $00, $0c, $00, $84, $79, $28, $23, $a4, $51, $00, $00, $5C, $00, $F4, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $01, $00, $36, $50
; Loot: 
org $D054D8
db $00, $C7, $00, $5C
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 55000 -> 31108
; ENEMY: Gilgamesh
; Original HP: 31108
; New trigger HP: 23642
org $d0c3a5
db $5a, $5c
; ENEMY: Gilgamesh

; Enemy: Antlion
; Stats: 
org $D02700
db $32, $58, $0d, $0d, $14, $00, $0c, $0d, $50, $c3, $e8, $03, $04, $8d, $60, $09, $00, $20, $F4, $30, $10, $00, $00, $80, $20, $18, $00, $00, $00, $00, $38, $1b
; Loot: 
org $D054E0
db $00, $E1, $00, $F1
; --------------------------
; Original boss Antlion rank 6 -> Randomized boss Twin Tania, Twin Tania rank 12
; HP: 8100 -> 50000
; ENEMY: Antlion

; Enemy: Halicarnaso
; Stats: 
org $D02980
db $28, $1c, $0c, $00, $04, $28, $08, $2d, $c4, $09, $88, $13, $a8, $16, $00, $00, $00, $00, $E4, $78, $10, $00, $00, $00, $20, $18, $00, $00, $00, $00, $4C, $4e
; Loot: 
org $D05530
db $86, $3C, $B2, $00
; --------------------------
; Original boss Halicarnaso rank 11 -> Randomized boss Abductor rank 6
; HP: 33333 -> 2500
; ENEMY: Halicarnaso

; Enemy: Merugene
; Stats: 
org $D02780
db $28, $19, $0d, $0a, $1e, $1e, $00, $0a, $ec, $2c, $f4, $01, $cc, $10, $00, $00, $00, $F8, $F4, $88, $00, $06, $00, $01, $20, $18, $00, $00, $00, $00, $3C, $1d
; Loot: 
org $D054F0
db $00, $9A, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Gilgamesh rank 5
; HP: 20000 -> 11500
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Ice2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2']
; New skill: Fight
org $d0bac0
db $80
; New skill: Fight
org $d0bac1
db $80
; New skill: Bolt2
org $d0bac4
db $2C
; New skill: Fight
org $d0bac5
db $80
; New skill: Ice2
org $d0bac8
db $2B
; New skill: Fight
org $d0bac9
db $80
; New skill: Fight
org $d0bacc
db $80
; New skill: NoDamage
org $d0bacd
db $AC
; New skill: Bolt2
org $d0bad0
db $2C
; New skill: NoDamage
org $d0bad1
db $AC
; New skill: Ice2
org $d0bad4
db $2B
; New skill: NoDamage
org $d0bad5
db $AC
; New skill: Fight
org $d0bad8
db $80
; New skill: NoDamage
org $d0bad9
db $AC
; New skill: Bolt2
org $d0badc
db $2C
; New skill: NoDamage
org $d0badd
db $AC
; New skill: Ice2
org $d0bae0
db $2B
; New skill: NoDamage
org $d0bae1
db $AC
; New skill: Ice2
org $d0baf1
db $2B

; Enemy: Merugene
; Stats: 
org $D027A0
db $28, $19, $0d, $0a, $1e, $1e, $00, $0a, $ec, $2c, $f4, $01, $cc, $10, $00, $00, $00, $F8, $F4, $88, $00, $05, $00, $02, $20, $18, $00, $00, $00, $00, $3C, $1d
; Loot: 
org $D054F4
db $00, $89, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Gilgamesh rank 5
; HP: 20000 -> 11500
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Ice2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2']
; New skill: Fight
org $d0bac0
db $80
; New skill: Fight
org $d0bac1
db $80
; New skill: Bolt2
org $d0bac4
db $2C
; New skill: Fight
org $d0bac5
db $80
; New skill: Ice2
org $d0bac8
db $2B
; New skill: Fight
org $d0bac9
db $80
; New skill: Fight
org $d0bacc
db $80
; New skill: NoDamage
org $d0bacd
db $AC
; New skill: Bolt2
org $d0bad0
db $2C
; New skill: NoDamage
org $d0bad1
db $AC
; New skill: Ice2
org $d0bad4
db $2B
; New skill: NoDamage
org $d0bad5
db $AC
; New skill: Fight
org $d0bad8
db $80
; New skill: NoDamage
org $d0bad9
db $AC
; New skill: Bolt2
org $d0badc
db $2C
; New skill: NoDamage
org $d0badd
db $AC
; New skill: Ice2
org $d0bae0
db $2B
; New skill: NoDamage
org $d0bae1
db $AC
; New skill: Ice2
org $d0baf1
db $2B
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Fire2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Bolt2']
; New skill: Fight
org $d0baff
db $80
; New skill: Fight
org $d0bb00
db $80
; New skill: Bolt2
org $d0bb03
db $2C
; New skill: Fight
org $d0bb04
db $80
; New skill: Fire2
org $d0bb07
db $2A
; New skill: Fight
org $d0bb08
db $80
; New skill: Fight
org $d0bb0b
db $80
; New skill: NoDamage
org $d0bb0c
db $AC
; New skill: Bolt2
org $d0bb0f
db $2C
; New skill: NoDamage
org $d0bb10
db $AC
; New skill: Fire2
org $d0bb13
db $2A
; New skill: NoDamage
org $d0bb14
db $AC
; New skill: Fight
org $d0bb17
db $80
; New skill: NoDamage
org $d0bb18
db $AC
; New skill: Bolt2
org $d0bb1b
db $2C
; New skill: NoDamage
org $d0bb1c
db $AC
; New skill: Fire2
org $d0bb1f
db $2A
; New skill: NoDamage
org $d0bb20
db $AC
; New skill: Bolt2
org $d0bb30
db $2C

; Enemy: Merugene
; Stats: 
org $D027C0
db $28, $19, $0d, $0a, $1e, $1e, $00, $0a, $ec, $2c, $f4, $01, $cc, $10, $00, $00, $00, $F8, $F4, $88, $00, $03, $00, $04, $20, $18, $00, $00, $00, $00, $3C, $1d
; Loot: 
org $D054F8
db $00, $C0, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Gilgamesh rank 5
; HP: 20000 -> 11500
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Ice2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2']
; New skill: Fight
org $d0bac0
db $80
; New skill: Fight
org $d0bac1
db $80
; New skill: Bolt2
org $d0bac4
db $2C
; New skill: Fight
org $d0bac5
db $80
; New skill: Ice2
org $d0bac8
db $2B
; New skill: Fight
org $d0bac9
db $80
; New skill: Fight
org $d0bacc
db $80
; New skill: NoDamage
org $d0bacd
db $AC
; New skill: Bolt2
org $d0bad0
db $2C
; New skill: NoDamage
org $d0bad1
db $AC
; New skill: Ice2
org $d0bad4
db $2B
; New skill: NoDamage
org $d0bad5
db $AC
; New skill: Fight
org $d0bad8
db $80
; New skill: NoDamage
org $d0bad9
db $AC
; New skill: Bolt2
org $d0badc
db $2C
; New skill: NoDamage
org $d0badd
db $AC
; New skill: Ice2
org $d0bae0
db $2B
; New skill: NoDamage
org $d0bae1
db $AC
; New skill: Ice2
org $d0baf1
db $2B
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Fire2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Bolt2']
; New skill: Fight
org $d0baff
db $80
; New skill: Fight
org $d0bb00
db $80
; New skill: Bolt2
org $d0bb03
db $2C
; New skill: Fight
org $d0bb04
db $80
; New skill: Fire2
org $d0bb07
db $2A
; New skill: Fight
org $d0bb08
db $80
; New skill: Fight
org $d0bb0b
db $80
; New skill: NoDamage
org $d0bb0c
db $AC
; New skill: Bolt2
org $d0bb0f
db $2C
; New skill: NoDamage
org $d0bb10
db $AC
; New skill: Fire2
org $d0bb13
db $2A
; New skill: NoDamage
org $d0bb14
db $AC
; New skill: Fight
org $d0bb17
db $80
; New skill: NoDamage
org $d0bb18
db $AC
; New skill: Bolt2
org $d0bb1b
db $2C
; New skill: NoDamage
org $d0bb1c
db $AC
; New skill: Fire2
org $d0bb1f
db $2A
; New skill: NoDamage
org $d0bb20
db $AC
; New skill: Bolt2
org $d0bb30
db $2C
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Ice2', 'Fight', 'Fire2', 'Fight', 'Fight', 'NoDamage', 'Ice2', 'NoDamage', 'Fire2', 'NoDamage', 'Fight', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2', 'NoDamage', 'Fire2']
; New skill: Fight
org $d0bb3e
db $80
; New skill: Fight
org $d0bb3f
db $80
; New skill: Ice2
org $d0bb42
db $2B
; New skill: Fight
org $d0bb43
db $80
; New skill: Fire2
org $d0bb46
db $2A
; New skill: Fight
org $d0bb47
db $80
; New skill: Fight
org $d0bb4a
db $80
; New skill: NoDamage
org $d0bb4b
db $AC
; New skill: Ice2
org $d0bb4e
db $2B
; New skill: NoDamage
org $d0bb4f
db $AC
; New skill: Fire2
org $d0bb52
db $2A
; New skill: NoDamage
org $d0bb53
db $AC
; New skill: Fight
org $d0bb56
db $80
; New skill: NoDamage
org $d0bb57
db $AC
; New skill: Ice2
org $d0bb5a
db $2B
; New skill: NoDamage
org $d0bb5b
db $AC
; New skill: Ice2
org $d0bb5e
db $2B
; New skill: NoDamage
org $d0bb5f
db $AC
; New skill: Fire2
org $d0bb6f
db $2A

; Enemy: Merugene
; Stats: 
org $D027E0
db $28, $19, $0d, $00, $00, $00, $1e, $1e, $ec, $2c, $f4, $01, $cc, $10, $00, $00, $00, $F8, $F4, $88, $00, $07, $40, $00, $20, $18, $00, $00, $00, $00, $3C, $21
; Loot: 
org $D054FC
db $00, $81, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Gilgamesh rank 5
; HP: 20000 -> 11500
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Ice2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2']
; New skill: Fight
org $d0bac0
db $80
; New skill: Fight
org $d0bac1
db $80
; New skill: Bolt2
org $d0bac4
db $2C
; New skill: Fight
org $d0bac5
db $80
; New skill: Ice2
org $d0bac8
db $2B
; New skill: Fight
org $d0bac9
db $80
; New skill: Fight
org $d0bacc
db $80
; New skill: NoDamage
org $d0bacd
db $AC
; New skill: Bolt2
org $d0bad0
db $2C
; New skill: NoDamage
org $d0bad1
db $AC
; New skill: Ice2
org $d0bad4
db $2B
; New skill: NoDamage
org $d0bad5
db $AC
; New skill: Fight
org $d0bad8
db $80
; New skill: NoDamage
org $d0bad9
db $AC
; New skill: Bolt2
org $d0badc
db $2C
; New skill: NoDamage
org $d0badd
db $AC
; New skill: Ice2
org $d0bae0
db $2B
; New skill: NoDamage
org $d0bae1
db $AC
; New skill: Ice2
org $d0baf1
db $2B
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Bolt2', 'Fight', 'Fire2', 'Fight', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Fight', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Bolt2']
; New skill: Fight
org $d0baff
db $80
; New skill: Fight
org $d0bb00
db $80
; New skill: Bolt2
org $d0bb03
db $2C
; New skill: Fight
org $d0bb04
db $80
; New skill: Fire2
org $d0bb07
db $2A
; New skill: Fight
org $d0bb08
db $80
; New skill: Fight
org $d0bb0b
db $80
; New skill: NoDamage
org $d0bb0c
db $AC
; New skill: Bolt2
org $d0bb0f
db $2C
; New skill: NoDamage
org $d0bb10
db $AC
; New skill: Fire2
org $d0bb13
db $2A
; New skill: NoDamage
org $d0bb14
db $AC
; New skill: Fight
org $d0bb17
db $80
; New skill: NoDamage
org $d0bb18
db $AC
; New skill: Bolt2
org $d0bb1b
db $2C
; New skill: NoDamage
org $d0bb1c
db $AC
; New skill: Fire2
org $d0bb1f
db $2A
; New skill: NoDamage
org $d0bb20
db $AC
; New skill: Bolt2
org $d0bb30
db $2C
; ENEMY: Merugene
; Skills: ['Fight', 'Fight', 'Ice2', 'Fight', 'Fire2', 'Fight', 'Fight', 'NoDamage', 'Ice2', 'NoDamage', 'Fire2', 'NoDamage', 'Fight', 'NoDamage', 'Ice2', 'NoDamage', 'Ice2', 'NoDamage', 'Fire2']
; New skill: Fight
org $d0bb3e
db $80
; New skill: Fight
org $d0bb3f
db $80
; New skill: Ice2
org $d0bb42
db $2B
; New skill: Fight
org $d0bb43
db $80
; New skill: Fire2
org $d0bb46
db $2A
; New skill: Fight
org $d0bb47
db $80
; New skill: Fight
org $d0bb4a
db $80
; New skill: NoDamage
org $d0bb4b
db $AC
; New skill: Ice2
org $d0bb4e
db $2B
; New skill: NoDamage
org $d0bb4f
db $AC
; New skill: Fire2
org $d0bb52
db $2A
; New skill: NoDamage
org $d0bb53
db $AC
; New skill: Fight
org $d0bb56
db $80
; New skill: NoDamage
org $d0bb57
db $AC
; New skill: Ice2
org $d0bb5a
db $2B
; New skill: NoDamage
org $d0bb5b
db $AC
; New skill: Ice2
org $d0bb5e
db $2B
; New skill: NoDamage
org $d0bb5f
db $AC
; New skill: Fire2
org $d0bb6f
db $2A
; ENEMY: Merugene
; Skills: ['Fire2', 'Nothing', 'Ice2', 'Nothing', 'Bolt2', 'Nothing', 'Fire2', 'NoDamage', 'Ice2', 'NoDamage', 'Bolt2', 'NoDamage', 'Fire2', 'NoDamage', 'Ice2', 'NoDamage', 'Bolt2', 'NoDamage']
; New skill: Fire2
org $d0bb7d
db $2A
; New skill: Nothing
org $d0bb7e
db $AA
; New skill: Ice2
org $d0bb81
db $2B
; New skill: Nothing
org $d0bb82
db $AA
; New skill: Bolt2
org $d0bb85
db $2C
; New skill: Nothing
org $d0bb86
db $AA
; New skill: Fire2
org $d0bb89
db $2A
; New skill: NoDamage
org $d0bb8a
db $AC
; New skill: Ice2
org $d0bb8d
db $2B
; New skill: NoDamage
org $d0bb8e
db $AC
; New skill: Bolt2
org $d0bb91
db $2C
; New skill: NoDamage
org $d0bb92
db $AC
; New skill: Fire2
org $d0bb95
db $2A
; New skill: NoDamage
org $d0bb96
db $AC
; New skill: Ice2
org $d0bb99
db $2B
; New skill: NoDamage
org $d0bb9a
db $AC
; New skill: Bolt2
org $d0bb9d
db $2C
; New skill: NoDamage
org $d0bb9e
db $AC

; Enemy: Odin
; Stats: 
org $D02800
db $28, $1c, $0a, $0a, $08, $08, $08, $32, $1d, $4e, $f4, $01, $4c, $1d, $00, $00, $2F, $00, $B4, $10, $00, $10, $00, $00, $A0, $18, $00, $00, $00, $00, $40, $02
; Loot: 
org $D05500
db $AF, $00, $C4, $00
; --------------------------
; Original boss Odin rank 9 -> Randomized boss Atmos rank 6
; HP: 17000 -> 19997
; ENEMY: Odin
; Skills: ['ReaperSword']
; New skill: ReaperSword
org $d0bbb8
db $B0

; Enemy: Gargoyle
; Stats: 
org $D02820
db $22, $46, $09, $0a, $0e, $3c, $0e, $23, $4c, $1d, $2c, $01, $d2, $28, $00, $00, $00, $00, $30, $10, $00, $10, $40, $00, $A0, $18, $00, $00, $00, $00, $41, $30
; Loot: 
org $D05504
db $E4, $E0, $E1, $00
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Carbunkle, Carbunkle rank 7
; HP: 5000 -> 15000
; ENEMY: Gargoyle
; ENEMY: Gargoyle

; Enemy: Gargoyle
; Stats: 
org $D02820
db $22, $46, $09, $0a, $0e, $3c, $0e, $23, $4c, $1d, $2c, $01, $d2, $28, $00, $00, $00, $00, $30, $10, $00, $10, $40, $00, $A0, $18, $00, $00, $00, $00, $41, $30
; Loot: 
org $D05504
db $E4, $E0, $E1, $00
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Carbunkle, Carbunkle rank 7
; HP: 5000 -> 15000
; ENEMY: Gargoyle
; ENEMY: Gargoyle

; Enemy: Triton
; Stats: 
org $D02840
db $28, $48, $0b, $00, $00, $10, $19, $3c, $54, $24, $10, $27, $19, $44, $00, $00, $00, $00, $30, $08, $04, $01, $00, $02, $01, $18, $00, $00, $00, $00, $42, $25
; Loot: 
org $D05508
db $E3, $EC, $F5, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Apocalypse rank 11
; HP: 13333 -> 27900
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Flare']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire3
org $d0bc0d
db $30
; New skill: Fire3
org $d0bc0e
db $30
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Flare
org $d0bc16
db $33

; Enemy: Neregeid
; Stats: 
org $D02860
db $28, $47, $0b, $00, $00, $10, $19, $3c, $54, $24, $10, $27, $19, $44, $00, $00, $00, $00, $30, $08, $04, $02, $00, $01, $01, $18, $00, $00, $00, $00, $43, $14
; Loot: 
org $D0550C
db $E3, $EC, $F3, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Apocalypse rank 11
; HP: 13333 -> 27900
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Flare']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire3
org $d0bc0d
db $30
; New skill: Fire3
org $d0bc0e
db $30
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Flare
org $d0bc16
db $33
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'TidalWave', 'Snowstorm', 'Fight', 'Fight', 'Fight', 'Ice3']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: TidalWave
org $d0bc34
db $D1
; New skill: Snowstorm
org $d0bc35
db $CC
; New skill: Fight
org $d0bc38
db $80
; New skill: Fight
org $d0bc39
db $80
; New skill: Fight
org $d0bc3c
db $80
; New skill: Ice3
org $d0bc3d
db $31

; Enemy: Phobos
; Stats: 
org $D02880
db $28, $48, $0b, $00, $00, $10, $19, $3c, $54, $24, $10, $27, $19, $44, $00, $00, $00, $00, $30, $08, $04, $08, $00, $20, $01, $18, $00, $00, $00, $00, $44, $27
; Loot: 
org $D05510
db $E3, $EC, $F2, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Apocalypse rank 11
; HP: 13333 -> 27900
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Flare']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire3
org $d0bc0d
db $30
; New skill: Fire3
org $d0bc0e
db $30
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Flare
org $d0bc16
db $33
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'TidalWave', 'Snowstorm', 'Fight', 'Fight', 'Fight', 'Ice3']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: TidalWave
org $d0bc34
db $D1
; New skill: Snowstorm
org $d0bc35
db $CC
; New skill: Fight
org $d0bc38
db $80
; New skill: Fight
org $d0bc39
db $80
; New skill: Fight
org $d0bc3c
db $80
; New skill: Ice3
org $d0bc3d
db $31
; ENEMY: Phobos
; Skills: ['Fight', 'Fight', 'Bio', 'Bio', 'Fight', 'Fight', 'Fight', 'Holy']
; New skill: Fight
org $d0bc57
db $80
; New skill: Fight
org $d0bc58
db $80
; New skill: Bio
org $d0bc5f
db $2F
; New skill: Bio
org $d0bc60
db $2F
; New skill: Fight
org $d0bc63
db $80
; New skill: Fight
org $d0bc64
db $80
; New skill: Fight
org $d0bc67
db $80
; New skill: Holy
org $d0bc68
db $22

; Enemy: Omniscient
; Stats: 
org $D028A0
db $28, $78, $14, $00, $00, $0c, $0a, $00, $e8, $03, $30, $75, $d0, $07, $00, $00, $00, $00, $F4, $50, $00, $00, $00, $40, $20, $18, $00, $00, $61, $00, $45, $40
; Loot: 
org $D05514
db $C5, $E0, $00, $00
; --------------------------
; Original boss Omniscient rank 8 -> Randomized boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4
; HP: 16999 -> 1000
; ENEMY: Omniscient
; Skills: ['Bolt2', 'Fire2', 'Ice2', 'Cure', 'Fire', 'Ice', 'Cure2', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Bolt2
org $d0bc72
db $2C
; New skill: Fire2
org $d0bc73
db $2A
; New skill: Ice2
org $d0bc74
db $2B
; New skill: Cure
org $d0bc7c
db $12
; New skill: Fire
org $d0bc7d
db $24
; New skill: Ice
org $d0bc81
db $25
; New skill: Cure2
org $d0bc8c
db $18
; New skill: Fire2
org $d0bc91
db $2A
; New skill: Bolt2
org $d0bc94
db $2C
; New skill: Ice2
org $d0bc95
db $2B
; Original HP: 1000
; New trigger HP: 240
org $d0bc6e
db $f0, $00

; Enemy: Minotauros
; Stats: 
org $D028C0
db $2a, $48, $09, $00, $00, $00, $00, $00, $10, $0e, $00, $00, $d0, $07, $00, $00, $00, $B8, $FF, $FF, $FF, $B8, $00, $00, $A0, $18, $00, $00, $00, $00, $46, $2c
; Loot: 
org $D05518
db $5B, $C0, $00, $00
; --------------------------
; Original boss Minotauros rank 8 -> Randomized boss Byblos rank 4
; HP: 19850 -> 3600
; ENEMY: Minotauros

; Enemy: Leviathan
; Stats: 
org $D028E0
db $2a, $19, $0c, $04, $08, $01, $08, $28, $e4, $0c, $d0, $07, $d8, $0e, $00, $00, $00, $21, $F4, $F8, $10, $80, $00, $04, $30, $18, $00, $00, $00, $00, $47, $25
; Loot: 
org $D0551C
db $00, $E3, $00, $CA
; --------------------------
; Original boss Leviathan rank 9 -> Randomized boss Chim.Brain rank 5
; HP: 40000 -> 3300
; ENEMY: Leviathan
; Skills: ['Fight', 'Fight', 'AquaRake', 'Fight', 'Fight', 'Ice', 'Fight', 'Fight', 'Ice2', 'Fight', 'AquaRake', 'Fight', 'Fight', 'Fight', 'Ice2', 'Fight', 'AquaRake', 'Fight', 'Fight', 'AquaRake', 'AquaRake', 'AquaRake', 'AquaRake', 'AquaRake', 'AquaRake', 'Fight', 'AquaRake', 'Fight', 'AquaRake', 'AquaRake', 'Fight', 'Fight', 'AquaRake', 'Fight', 'AquaRake', 'AquaRake', 'Fight', 'AquaRake', 'AquaRake', 'AquaRake']
; New skill: Fight
org $d0bcde
db $80
; New skill: Fight
org $d0bcdf
db $80
; New skill: AquaRake
org $d0bce0
db $84
; New skill: Fight
org $d0bce2
db $80
; New skill: Fight
org $d0bce3
db $80
; New skill: Ice
org $d0bce4
db $25
; New skill: Fight
org $d0bcea
db $80
; New skill: Fight
org $d0bceb
db $80
; New skill: Ice2
org $d0bcec
db $2B
; New skill: Fight
org $d0bcee
db $80
; New skill: AquaRake
org $d0bcef
db $84
; New skill: Fight
org $d0bcf0
db $80
; New skill: Fight
org $d0bcf2
db $80
; New skill: Fight
org $d0bcf3
db $80
; New skill: Ice2
org $d0bcf4
db $2B
; New skill: Fight
org $d0bcf6
db $80
; New skill: AquaRake
org $d0bcf7
db $84
; New skill: Fight
org $d0bcf8
db $80
; New skill: Fight
org $d0bcfa
db $80
; New skill: AquaRake
org $d0bcfb
db $84
; New skill: AquaRake
org $d0bcfc
db $84
; New skill: AquaRake
org $d0bd02
db $84
; New skill: AquaRake
org $d0bd03
db $84
; New skill: AquaRake
org $d0bd04
db $84
; New skill: AquaRake
org $d0bd06
db $84
; New skill: Fight
org $d0bd07
db $80
; New skill: AquaRake
org $d0bd08
db $84
; New skill: Fight
org $d0bd0a
db $80
; New skill: AquaRake
org $d0bd0b
db $84
; New skill: AquaRake
org $d0bd0c
db $84
; New skill: Fight
org $d0bd0e
db $80
; New skill: Fight
org $d0bd0f
db $80
; New skill: AquaRake
org $d0bd10
db $84
; New skill: Fight
org $d0bd16
db $80
; New skill: AquaRake
org $d0bd17
db $84
; New skill: AquaRake
org $d0bd18
db $84
; New skill: Fight
org $d0bd1a
db $80
; New skill: AquaRake
org $d0bd1b
db $84
; New skill: AquaRake
org $d0bd1c
db $84
; New skill: AquaRake
org $d0bd24
db $84

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $28, $0a, $00, $04, $04, $08, $05, $62, $ba, $00, $20, $00, $af, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $03
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Gogo rank 9
; HP: 20000 -> 47714
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $28, $0a, $00, $04, $04, $08, $05, $62, $ba, $00, $20, $00, $af, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $03
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Gogo rank 9
; HP: 20000 -> 47714
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $28, $0a, $00, $04, $04, $08, $05, $62, $ba, $00, $20, $00, $af, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $03
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Gogo rank 9
; HP: 20000 -> 47714
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $28, $0a, $00, $04, $04, $08, $05, $62, $ba, $00, $20, $00, $af, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $03
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Gogo rank 9
; HP: 20000 -> 47714
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Gogo
; Stats: 
org $D02920
db $32, $90, $19, $1e, $24, $2a, $18, $63, $b8, $56, $60, $ea, $f8, $c0, $00, $00, $00, $80, $F5, $F8, $10, $00, $00, $80, $A0, $98, $00, $00, $00, $00, $49, $5c
; Loot: 
org $D05524
db $94, $9A, $C3, $00
; --------------------------
; Original boss Gogo rank 9 -> Randomized boss Apanda rank 10
; HP: 47714 -> 22200
; ENEMY: Gogo
; Original HP: 22200
; New trigger HP: 15318
org $d0be14
db $d6, $3b

; Enemy: Bahamut
; Stats: 
org $D02940
db $28, $53, $10, $05, $0c, $18, $18, $21, $10, $27, $10, $27, $4c, $36, $00, $00, $00, $20, $F4, $F8, $00, $00, $60, $00, $20, $18, $88, $00, $00, $00, $4A, $77
; Loot: 
org $D05528
db $EA, $EA, $EA, $00
; --------------------------
; Original boss Bahamut rank 9 -> Randomized boss Gargoyle, Gargoyle rank 7
; HP: 40000 -> 10000
; ENEMY: Bahamut
; Skills: ['MegaFlare', 'Flare', 'Fight', 'PoisonBreath', 'DanceoftheDead', 'Fight', 'ZombieBreath', 'DanceoftheDead', 'Fight', 'Maelstrom', 'Maelstrom', 'Fight', 'Snowstorm', 'Snowstorm', 'Fight', 'WindSlash', 'AquaRake', 'Fight', 'Thunder', 'Thunder', 'Fight', 'Flame', 'Flame', 'Fight', 'Quicksand', 'EarthShaker', 'Fight', 'Flame', 'Flame', 'Fight', 'MiniBlaze', 'MiniBlaze', 'Fight', 'MegaFlare', 'Flare', 'Flare']
; New skill: MegaFlare
org $d0be62
db $D2
; New skill: Flare
org $d0be63
db $33
; New skill: Fight
org $d0be64
db $80
; New skill: PoisonBreath
org $d0be6c
db $B6
; New skill: DanceoftheDead
org $d0be6d
db $B7
; New skill: Fight
org $d0be6e
db $80
; New skill: ZombieBreath
org $d0be70
db $B9
; New skill: DanceoftheDead
org $d0be71
db $B7
; New skill: Fight
org $d0be72
db $80
; New skill: Maelstrom
org $d0be7a
db $C2
; New skill: Maelstrom
org $d0be7b
db $C2
; New skill: Fight
org $d0be7c
db $80
; New skill: Snowstorm
org $d0be7e
db $CC
; New skill: Snowstorm
org $d0be7f
db $CC
; New skill: Fight
org $d0be80
db $80
; New skill: WindSlash
org $d0be88
db $AB
; New skill: AquaRake
org $d0be89
db $84
; New skill: Fight
org $d0be8a
db $80
; New skill: Thunder
org $d0be8c
db $DC
; New skill: Thunder
org $d0be8d
db $DC
; New skill: Fight
org $d0be8e
db $80
; New skill: Flame
org $d0be96
db $DB
; New skill: Flame
org $d0be97
db $DB
; New skill: Fight
org $d0be98
db $80
; New skill: Quicksand
org $d0be9a
db $C9
; New skill: EarthShaker
org $d0be9b
db $CF
; New skill: Fight
org $d0be9c
db $80
; New skill: Flame
org $d0bea4
db $DB
; New skill: Flame
org $d0bea5
db $DB
; New skill: Fight
org $d0bea6
db $80
; New skill: MiniBlaze
org $d0bea8
db $CB
; New skill: MiniBlaze
org $d0bea9
db $CB
; New skill: Fight
org $d0beaa
db $80
; New skill: MegaFlare
org $d0beb3
db $D2
; New skill: Flare
org $d0bebb
db $33
; New skill: Flare
org $d0bebe
db $33
; Original HP: 10000
; New trigger HP: 2500
org $d0be5e
db $c4, $09
; Original HP: 10000
; New trigger HP: 3800
org $d0be68
db $d8, $0e
; Original HP: 10000
; New trigger HP: 5000
org $d0be76
db $88, $13
; Original HP: 10000
; New trigger HP: 6300
org $d0be84
db $9c, $18
; Original HP: 10000
; New trigger HP: 7500
org $d0be92
db $4c, $1d
; Original HP: 10000
; New trigger HP: 8700
org $d0bea0
db $fc, $21
; Original HP: 10000
; New trigger HP: 2500
org $d0beb7
db $c4, $09

; Enemy: Ifrit
; Stats: 
org $D006A0
db $28, $40, $08, $14, $08, $00, $10, $0a, $20, $4e, $e8, $03, $ec, $45, $00, $00, $00, $08, $30, $40, $00, $01, $00, $82, $20, $18, $00, $00, $00, $00, $35, $12
; Loot: 
org $D050D4
db $00, $E4, $00, $FC
; --------------------------
; Original boss Ifrit rank 3 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 3000 -> 20000
; ENEMY: Ifrit
; Skills: ['Flame', 'Fire3', 'Fire3', 'Blaze', 'Fight', 'Specialty']
; New skill: Flame
org $d0a2fb
db $DB
; New skill: Fire3
org $d0a2fc
db $30
; New skill: Fire3
org $d0a2fd
db $30
; New skill: Blaze
org $d0a2ff
db $CD
; New skill: Fight
org $d0a300
db $80
; New skill: Specialty
org $d0a301
db $81

; Enemy: Shiva
; Stats: 
org $D024A0
db $1e, $20, $06, $00, $00, $08, $08, $14, $40, $9c, $e8, $03, $bc, $4d, $00, $00, $00, $00, $FA, $FF, $10, $02, $00, $01, $A0, $18, $00, $00, $00, $00, $25, $09
; Loot: 
org $D05494
db $E4, $E1, $00, $33
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Leviathan rank 9
; HP: 1500 -> 40000
; ENEMY: Shiva
; Skills: ['Ice3', 'Ice3']
; New skill: Ice3
org $d0b6c0
db $31
; New skill: Ice3
org $d0b6c5
db $31

; Enemy: Commander
; Stats: 
org $D02180
db $19, $22, $06, $0a, $00, $08, $00, $00, $80, $3e, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Leviathan rank 9
; HP: 1500 -> 40000
; ENEMY: Shiva
; Skills: ['Ice3', 'Ice3']
; New skill: Ice3
org $d0b6c0
db $31
; New skill: Ice3
org $d0b6c5
db $31
; ENEMY: Commander
; ENEMY: Commander
; ENEMY: Commander

; Enemy: Commander
; Stats: 
org $D02180
db $19, $22, $06, $0a, $00, $08, $00, $00, $80, $3e, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Leviathan rank 9
; HP: 1500 -> 40000
; ENEMY: Shiva
; Skills: ['Ice3', 'Ice3']
; New skill: Ice3
org $d0b6c0
db $31
; New skill: Ice3
org $d0b6c5
db $31
; ENEMY: Commander
; ENEMY: Commander
; ENEMY: Commander

; Enemy: Commander
; Stats: 
org $D02180
db $19, $22, $06, $0a, $00, $08, $00, $00, $80, $3e, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Leviathan rank 9
; HP: 1500 -> 40000
; ENEMY: Shiva
; Skills: ['Ice3', 'Ice3']
; New skill: Ice3
org $d0b6c0
db $31
; New skill: Ice3
org $d0b6c5
db $31
; ENEMY: Commander
; ENEMY: Commander
; ENEMY: Commander

; Enemy: Calofisteri
; Stats: 
org $D02AC0
db $28, $2c, $0c, $07, $14, $10, $0c, $07, $3f, $9c, $e8, $03, $d8, $8b, $00, $00, $3D, $00, $F0, $78, $10, $00, $20, $00, $A4, $18, $00, $00, $00, $00, $56, $36
; Loot: 
org $D05558
db $CA, $90, $A5, $00
; --------------------------
; Original boss Calofisteri rank 10 -> Randomized boss Triton, Neregeid, Phobos rank 9
; HP: 18000 -> 39999
; ENEMY: Calofisteri

; Enemy: Apocalypse
; Stats: 
org $D02AE0
db $2d, $14, $15, $07, $10, $28, $28, $21, $68, $42, $50, $c3, $cc, $74, $00, $00, $2D, $00, $F4, $FC, $14, $00, $00, $08, $20, $18, $00, $00, $00, $00, $57, $2e
; Loot: 
org $D0555C
db $B1, $E3, $98, $00
; --------------------------
; Original boss Apocalypse rank 11 -> Randomized boss Odin rank 9
; HP: 27900 -> 17000
; ENEMY: Apocalypse
; Skills: ['Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2', 'Aero2']
; New skill: Aero2
org $d0c0d5
db $90
; New skill: Aero2
org $d0c0d6
db $90
; New skill: Aero2
org $d0c0d7
db $90
; New skill: Aero2
org $d0c0d9
db $90
; New skill: Aero2
org $d0c0da
db $90
; New skill: Aero2
org $d0c0db
db $90
; New skill: Aero2
org $d0c0dd
db $90
; New skill: Aero2
org $d0c0de
db $90
; New skill: Aero2
org $d0c0df
db $90
; New skill: Aero2
org $d0c0e5
db $90
; New skill: Aero2
org $d0c0e6
db $90
; New skill: Aero2
org $d0c0e7
db $90
; New skill: Aero2
org $d0c11d
db $90
; New skill: Aero2
org $d0c15d
db $90

; Enemy: Catastroph
; Stats: 
org $D02B00
db $28, $35, $10, $0f, $24, $12, $10, $21, $d8, $d6, $1d, $4e, $a0, $28, $00, $00, $00, $00, $F4, $5C, $10, $20, $00, $00, $20, $18, $00, $00, $00, $00, $58, $55
; Loot: 
org $D05560
db $F1, $E3, $00, $EC
; --------------------------
; Original boss Catastroph rank 11 -> Randomized boss Gilgamesh, Gilgamesh rank 7
; HP: 19997 -> 55000
; ENEMY: Catastroph
; Skills: ['Quicksand', 'ReversePolarity', 'DemonEye', 'Fight', 'EarthShaker', 'Specialty']
; New skill: Quicksand
org $d0c1e0
db $C9
; New skill: ReversePolarity
org $d0c1e1
db $E7
; New skill: DemonEye
org $d0c1e2
db $EB
; New skill: Fight
org $d0c1e4
db $80
; New skill: EarthShaker
org $d0c1e5
db $CF
; New skill: Specialty
org $d0c1e6
db $81

; Enemy: Necrofobia
; Stats: 
org $D02B20
db $25, $18, $10, $0a, $0c, $24, $0c, $25, $dc, $05, $10, $27, $14, $05, $00, $00, $1E, $00, $F4, $F8, $10, $00, $00, $FF, $20, $18, $00, $00, $02, $00, $59, $4f
; Loot: 
org $D05564
db $B0, $E3, $AB, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B

; Enemy: Barrier
; Stats: 
org $D02D40
db $19, $24, $0a, $00, $06, $0c, $00, $00, $2c, $01, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $5c
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26

; Enemy: Barrier
; Stats: 
org $D02D40
db $19, $24, $0a, $00, $06, $0c, $00, $00, $2c, $01, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $5c
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26

; Enemy: Barrier
; Stats: 
org $D02D40
db $19, $24, $0a, $00, $06, $0c, $00, $00, $2c, $01, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $5c
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26

; Enemy: Barrier
; Stats: 
org $D02D40
db $19, $24, $0a, $00, $06, $0c, $00, $00, $2c, $01, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $5c
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26

; Enemy: Gilgamesh
; Stats: 
org $D02DE0
db $58, $8a, $19, $1e, $2a, $00, $00, $00, $d8, $d6, $28, $23, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $6F, $70
; Loot: 
org $D055BC
db $00, $C8, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 44044 -> 1500
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire2
org $d0c21b
db $2A
; New skill: Bolt2
org $d0c21c
db $2C
; New skill: Ice2
org $d0c222
db $2B
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire2', 'Ice2', 'Bolt2', 'Fire', 'Ice', 'Bolt']
; New skill: Fire
org $d0c581
db $24
; New skill: Ice
org $d0c582
db $25
; New skill: Bolt
org $d0c583
db $26
; New skill: Fire
org $d0c589
db $24
; New skill: Ice
org $d0c58a
db $25
; New skill: Bolt
org $d0c58b
db $26
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire
org $d0c599
db $24
; New skill: Ice
org $d0c59a
db $25
; New skill: Bolt
org $d0c59b
db $26
; ENEMY: Gilgamesh

; Enemy: Twin Tania
; Stats: 
org $D02B40
db $19, $0a, $0e, $00, $00, $00, $00, $00, $52, $03, $10, $27, $c8, $00, $00, $00, $00, $00, $F4, $F8, $10, $00, $00, $90, $24, $18, $00, $00, $00, $00, $5A, $27
; Loot: 
org $D05568
db $C4, $E4, $53, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Forza, Magisa rank 2
; HP: 50000 -> 850
; ENEMY: Twin Tania
; Skills: ['Flame', 'Thunder', 'Fight', 'Flame', 'Thunder', 'Fight', 'Bone', 'BreathWing', 'BreathWing', 'AquaRake', 'Flare']
; New skill: Flame
org $d0c2f6
db $DB
; New skill: Thunder
org $d0c2f7
db $DC
; New skill: Fight
org $d0c2f8
db $80
; New skill: Flame
org $d0c2fa
db $DB
; New skill: Thunder
org $d0c2fb
db $DC
; New skill: Fight
org $d0c2fc
db $80
; New skill: Bone
org $d0c301
db $C3
; New skill: BreathWing
org $d0c302
db $DA
; New skill: BreathWing
org $d0c303
db $DA
; New skill: AquaRake
org $d0c310
db $84
; New skill: Flare
org $d0c31a
db $33

; Enemy: Twin Tania
; Stats: 
org $D02060
db $51, $0a, $0e, $00, $00, $00, $00, $00, $52, $03, $10, $27, $c8, $00, $00, $00, $00, $00, $14, $F8, $00, $00, $00, $90, $04, $18, $00, $00, $00, $00, $03, $1e
; Loot: 
org $D0540C
db $00, $6A, $2E, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Forza, Magisa rank 2
; HP: 50000 -> 850
; ENEMY: Twin Tania
; Skills: ['Flame', 'Thunder', 'Fight', 'Flame', 'Thunder', 'Fight', 'Bone', 'BreathWing', 'BreathWing', 'AquaRake', 'Flare']
; New skill: Flame
org $d0c2f6
db $DB
; New skill: Thunder
org $d0c2f7
db $DC
; New skill: Fight
org $d0c2f8
db $80
; New skill: Flame
org $d0c2fa
db $DB
; New skill: Thunder
org $d0c2fb
db $DC
; New skill: Fight
org $d0c2fc
db $80
; New skill: Bone
org $d0c301
db $C3
; New skill: BreathWing
org $d0c302
db $DA
; New skill: BreathWing
org $d0c303
db $DA
; New skill: AquaRake
org $d0c310
db $84
; New skill: Flare
org $d0c31a
db $33
; ENEMY: Twin Tania
; Skills: ['Flare']
; New skill: Flare
org $d0b2d8
db $33

; Enemy: Apanda
; Stats: 
org $D02C00
db $1e, $06, $12, $00, $00, $00, $00, $00, $fa, $00, $e8, $03, $64, $00, $00, $00, $00, $00, $F4, $F0, $10, $00, $00, $01, $24, $18, $00, $00, $00, $00, $60, $2f
; Loot: 
org $D05580
db $62, $62, $00, $62
; --------------------------
; Original boss Apanda rank 10 -> Randomized boss WingRaptor, WingRaptor rank 1
; HP: 22200 -> 250
; ENEMY: Apanda
; Skills: ['BreathWing', 'BreathWing']
; New skill: BreathWing
org $d0c409
db $DA
; New skill: BreathWing
org $d0c410
db $DA

; Enemy: Crayclaw
; Stats: 
org $D02A80
db $28, $2c, $06, $00, $11, $01, $11, $0a, $d0, $07, $f4, $01, $28, $0a, $00, $00, $00, $00, $30, $00, $00, $80, $00, $04, $24, $18, $00, $00, $00, $00, $54, $34
; Loot: 
org $D05550
db $00, $10, $00, $40
; --------------------------
; Original boss Crayclaw rank 6 -> Randomized boss AdamanTiMi rank 4
; HP: 2000 -> 2000
; ENEMY: Crayclaw


;==========
;formations
;==========
; Byblos (Rank 4) > Gilgamesh (Rank 6) 
org $D0787C
db $BE, $01 
org $D0787E
db $BE, $01
; WingRaptor (Rank 1) > LiquiFlame (Rank 4) 
org $D0781C
db $B7, $01 
org $D0781E
db $B7, $01
; Karlabos (Rank 1) > Bahamut (Rank 9) 
org $D078D0
db $B8, $01 
org $D078D2
db $B8, $01
; Siren (Rank 2) > Minotauros (Rank 8) 
org $D078C0
db $B9, $01 
org $D078C2
db $B9, $01
; Forza (Rank 2) > Ifrit (Rank 3) 
org $D078E4
db $BA, $01 
org $D078E6
db $BA, $01
; Galura (Rank 3) > Gilgamesh (Rank 5) 
org $D0786C
db $BB, $01 
org $D0786E
db $BB, $01
; LiquiFlame (Rank 4) > Catastroph (Rank 11) 
org $D07924
db $BC, $01 
org $D07926
db $BC, $01
; Sergeant (Rank 4) > Puroboros (Rank 5) 
org $D07848
db $BD, $01 
org $D0784A
db $BD, $01
; Hole (Rank 4) > Halicarnaso (Rank 11) 
org $D078E0
db $BF, $01 
org $D078E2
db $BF, $01
; AdamanTiMi (Rank 4) > Calofisteri (Rank 10) 
org $D0791C
db $C0, $01 
org $D0791E
db $C0, $01
; Sol Cannon (Rank 5) > Titan (Rank 5) 
org $D07844
db $C3, $01 
org $D07846
db $C3, $01
; ArchaeAvis (Rank 5) > Karlabos (Rank 1) 
org $D07808
db $C4, $01 
org $D0780A
db $C4, $01
; Chim.Brain (Rank 5) > Galura (Rank 3) 
org $D07818
db $C5, $01 
org $D0781A
db $C5, $01
; Titan (Rank 5) > Merugene (Rank 8) 
org $D078AC
db $C6, $01 
org $D078AE
db $C6, $01
; Puroboros (Rank 5) > Antlion (Rank 6) 
org $D07894
db $C7, $01 
org $D07896
db $C7, $01
; Gilgamesh (Rank 5) > Sol Cannon (Rank 5) 
org $D07838
db $C9, $01 
org $D0783A
db $C9, $01
; Gilgamesh (Rank 5) > Necrofobia (Rank 12) 
org $D0792C
db $D0, $01 
org $D0792E
db $D0, $01
; Tyrasaurus (Rank 5) > ArchaeAvis (Rank 5) 
org $D0783C
db $D1, $01 
org $D0783E
db $D1, $01
; Abductor (Rank 6) > Crayclaw (Rank 6) 
org $D078D4
db $D2, $01 
org $D078D6
db $D2, $01
; HiryuuPlant (Rank 6) > Omniscient (Rank 8) 
org $D078BC
db $D3, $01 
org $D078BE
db $D3, $01
; Gilgamesh (Rank 6) > HiryuuPlant (Rank 6) 
org $D07878
db $D4, $01 
org $D0787A
db $D4, $01
; Atmos (Rank 6) > Siren (Rank 2) 
org $D0780C
db $D5, $01 
org $D0780E
db $D5, $01
; Guardian (Rank 7) > Tyrasaurus (Rank 5) 
org $D07870
db $D6, $01 
org $D07872
db $D6, $01
; Carbunkle (Rank 7) > Hole (Rank 4) 
org $D07828
db $D7, $01 
org $D0782A
db $D7, $01
; Gilgamesh (Rank 7) > Guardian (Rank 7) 
org $D07884
db $D8, $01 
org $D07886
db $D8, $01
; Antlion (Rank 6) > Twin Tania (Rank 12) 
org $D07928
db $DA, $01 
org $D0792A
db $DA, $01
; Halicarnaso (Rank 11) > Abductor (Rank 6) 
org $D07874
db $DE, $01 
org $D07876
db $DE, $01
; Merugene (Rank 8) > Gilgamesh (Rank 5) 
org $D07850
db $E0, $01 
org $D07852
db $E0, $01
; Odin (Rank 9) > Atmos (Rank 6) 
org $D07880
db $E1, $01 
org $D07882
db $E1, $01
; Gargoyle (Rank 7) > Carbunkle (Rank 7) 
org $D07888
db $E2, $01 
org $D0788A
db $E2, $01
; Triton (Rank 9) > Apocalypse (Rank 11) 
org $D07920
db $E3, $01 
org $D07922
db $E3, $01
; Omniscient (Rank 8) > Sergeant (Rank 4) 
org $D07820
db $E4, $01 
org $D07822
db $E4, $01
; Minotauros (Rank 8) > Byblos (Rank 4) 
org $D07824
db $E5, $01 
org $D07826
db $E5, $01
; Leviathan (Rank 9) > Chim.Brain (Rank 5) 
org $D07840
db $E6, $01 
org $D07842
db $E6, $01
; Stalker (Rank 9) > Gogo (Rank 9) 
org $D078CC
db $E7, $01 
org $D078CE
db $E7, $01
; Gogo (Rank 9) > Apanda (Rank 10) 
org $D078D8
db $E8, $01 
org $D078DA
db $E8, $01
; Bahamut (Rank 9) > Gargoyle (Rank 7) 
org $D078B4
db $E9, $01 
org $D078B6
db $E9, $01
; Ifrit (Rank 3) > Stalker (Rank 9) 
org $D078B8
db $EE, $01 
org $D078BA
db $EE, $01
; Shiva (Rank 4) > Leviathan (Rank 9) 
org $D078C4
db $F1, $01 
org $D078C6
db $F1, $01
; Calofisteri (Rank 10) > Triton (Rank 9) 
org $D078C8
db $F2, $01 
org $D078CA
db $F2, $01
; Apocalypse (Rank 11) > Odin (Rank 9) 
org $D078B0
db $F3, $01 
org $D078B2
db $F3, $01
; Catastroph (Rank 11) > Gilgamesh (Rank 7) 
org $D0788C
db $F4, $01 
org $D0788E
db $F4, $01
; Necrofobia (Rank 12) > Shiva (Rank 4) 
org $D07814
db $F5, $01 
org $D07816
db $F5, $01
; Twin Tania (Rank 12) > Forza (Rank 2) 
org $D07810
db $F6, $01 
org $D07812
db $F6, $01
; Apanda (Rank 10) > WingRaptor (Rank 1) 
org $D07804
db $F8, $01 
org $D07806
db $F8, $01
; Crayclaw (Rank 6) > AdamanTiMi (Rank 4) 
org $D0782C
db $FA, $01 
org $D0782E
db $FA, $01

;=====================
;Kuzar Reward Text Fix
;=====================
; Vampire\nMindBlst\nWhiteWind
org $E23F98
db  $75, $7A, $86, $89, $82, $8B, $7E, $01, $6C, $82, $87, $7D, $61, $85, $8C, $8D, $01, $76, $81, $82, $8D, $7E, $76, $82, $87, $7D, $00
; HiPotion
org $E240A5
db  $67, $82, $6F, $88, $8D, $82, $88, $87, $00
; Gungnir
org $E23F7A
db  $66, $8E, $87, $80, $87, $82, $8B, $00
; Kotetsu
org $E2404C
db  $6A, $88, $8D, $7E, $8D, $8C, $8E, $00
; Mimic
org $E240C4
db  $6C, $82, $86, $82, $7C, $00
; Broadsword
org $E23FD6
db  $61, $8B, $88, $7A, $7D, $8C, $90, $88, $8B, $7D, $00
; RedMage Job Crystal
org $E24011
db  $71, $7E, $7D, $6C, $7A, $80, $7E, $96, $69, $88, $7B, $96, $62, $8B, $92, $8C, $8D, $7A, $85, $00
; Mythril Shield
org $E24088
db  $6C, $92, $8D, $81, $8B, $82, $85, $96, $72, $81, $82, $7E, $85, $7D, $00
; Mythril Armor
org $E23FF4
db  $6C, $92, $8D, $81, $8B, $82, $85, $96, $60, $8B, $86, $88, $8B, $00
; GrnBeret
org $E2406A
db  $66, $8B, $87, $61, $7E, $8B, $7E, $8D, $00
; Bronze Shield
org $E23FB7
db  $61, $8B, $88, $87, $93, $7E, $96, $72, $81, $82, $7E, $85, $7D, $00
; CornaJar
org $E2402D
db  $62, $88, $8B, $87, $7A, $69, $7A, $8B, $00
