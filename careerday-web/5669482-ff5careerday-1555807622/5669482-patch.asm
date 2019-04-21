hirom
;================
;starting crystal
;================
org $E79F00
db $07, $02, $FF, $16

;=================
;Chests and Events
;=================
org $C0FAB2 
db $20, $0B
org $C0FAB4 
db $60, $3F
org $C0FAB6 
db $20, $09
org $C0FAB8 
db $20, $14
org $C0FABA 
db $40, $96
org $C0FABC 
db $20, $26
org $C0FABE 
db $60, $1A
org $C0FAC0 
db $20, $14
org $C0FAC2 
db $60, $25
org $C0FAC4 
db $40, $F4
org $C0FAC6 
db $60, $23
org $C0FAC8 
db $40, $28
org $C0FACA 
db $20, $14
org $C0FACC 
db $40, $ED
org $C0FACE 
db $60, $19
org $C0FAD0 
db $60, $25
org $C0FAD2 
db $40, $F2
org $C0FAD4 
db $20, $23
org $C0FAD6 
db $40, $F0
org $C0FAD8 
db $20, $05
org $C0FADA 
db $40, $89
org $C0FADC 
db $40, $82
org $C0FADE 
db $40, $EB
org $C0FAE0 
db $40, $69
org $C0FAE2 
db $40, $2B
org $C0FAE4 
db $60, $23
org $C0FAE6 
db $20, $00
org $C0FAE8 
db $40, $81
org $C0FAEA 
db $40, $8A
org $C0FAEC 
db $20, $20
org $C0FAEE 
db $20, $20
org $C0FAF0 
db $60, $26
org $C0FAF2 
db $40, $64
org $C0FAF4 
db $40, $9C
org $C0FAF6 
db $40, $0E
org $C0FAF8 
db $20, $27
org $C0FAFA 
db $20, $0E
org $C0FAFC 
db $20, $10
org $C0FAFE 
db $60, $16
org $C0FB00 
db $40, $10
org $C0FB02 
db $20, $15
org $C0FB04 
db $20, $02
org $C0FB06 
db $40, $A6
org $C0FB08 
db $40, $4D
org $C0FB0A 
db $20, $24
org $C0FB0C 
db $60, $22
org $C0FB0E 
db $40, $A2
org $C0FB10 
db $50, $0B
org $C0FB12 
db $60, $11
org $C0FB14 
db $60, $03
org $C0FB16 
db $40, $A2
org $C0FB18 
db $20, $03
org $C0FB1A 
db $20, $0D
org $C0FB1C 
db $60, $25
org $C0FB1E 
db $60, $22
org $C0FB20 
db $20, $21
org $C0FB22 
db $40, $3A
org $C0FB24 
db $60, $10
org $C0FB26 
db $50, $0C
org $C0FB28 
db $20, $04
org $C0FB2A 
db $40, $63
org $C0FB2C 
db $40, $92
org $C0FB2E 
db $20, $15
org $C0FB30 
db $50, $05
org $C0FB32 
db $40, $91
org $C0FB34 
db $40, $38
org $C0FB36 
db $40, $86
org $D13212 
db $60, $04
org $D13216 
db $60, $05
org $D1321A 
db $20, $26
org $D1321E 
db $20, $0C
org $D13222 
db $20, $04
org $D13226 
db $20, $05
org $D1322A 
db $40, $31
org $D1322E 
db $40, $CE
org $D13232 
db $40, $90
org $D13236 
db $40, $81
org $D1323A 
db $40, $9A
org $D1323E 
db $60, $20
org $D13242 
db $40, $F1
org $D13246 
db $40, $12
org $D1324A 
db $A4, $1B
org $D1324E 
db $40, $40
org $D13252 
db $40, $06
org $D13256 
db $20, $0F
org $D1325A 
db $60, $37
org $D1325E 
db $40, $B8
org $D13262 
db $60, $43
org $D13266 
db $20, $13
org $D1326A 
db $40, $08
org $D1326E 
db $60, $20
org $D13272 
db $20, $05
org $D13276 
db $40, $F4
org $D1327A 
db $20, $23
org $D1327E 
db $40, $A8
org $D13282 
db $40, $40
org $D13286 
db $20, $25
org $D1328A 
db $20, $0C
org $D1328E 
db $20, $23
org $D13292 
db $40, $CF
org $D13296 
db $40, $B1
org $D1329A 
db $20, $08
org $D1329E 
db $40, $AD
org $D132A2 
db $50, $02
org $D132A6 
db $40, $F1
org $D132AA 
db $60, $22
org $D132AE 
db $60, $1B
org $D132B2 
db $40, $5E
org $D132B6 
db $20, $0A
org $D132BA 
db $40, $5A
org $D132BE 
db $60, $32
org $D132C2 
db $20, $13
org $D132C6 
db $60, $23
org $D132CA 
db $60, $39
org $D132CE 
db $20, $02
org $D132D2 
db $50, $08
org $D132D6 
db $40, $91
org $D132DA 
db $20, $0E
org $D132DE 
db $40, $88
org $D132E2 
db $20, $02
org $D132E6 
db $40, $3E
org $D132EA 
db $40, $58
org $D132EE 
db $40, $38
org $D132F2 
db $40, $AA
org $D132F6 
db $40, $8F
org $D132FA 
db $A1, $6B
org $D132FE 
db $A0, $91
org $D13302 
db $A1, $67
org $D13306 
db $A1, $8A
org $D1330A 
db $A0, $02
org $D1330E 
db $A3, $AA
org $D13312 
db $A0, $F6
org $D13316 
db $A0, $CD
org $D1331A 
db $A2, $FE
org $D1331E 
db $40, $3F
org $D13322 
db $A0, $8B
org $D13326 
db $E2, $51
org $D1332A 
db $A3, $5D
org $D1332E 
db $40, $8A
org $D13332 
db $20, $0D
org $D13336 
db $40, $5E
org $D1333A 
db $40, $81
org $D1333E 
db $40, $82
org $D13342 
db $50, $01
org $D13346 
db $40, $AC
org $D1334A 
db $40, $69
org $D1334E 
db $20, $15
org $D13352 
db $40, $11
org $D13356 
db $60, $33
org $D1335A 
db $60, $17
org $D1335E 
db $60, $1D
org $D13362 
db $20, $11
org $D13366 
db $40, $5E
org $D1336A 
db $20, $27
org $D1336E 
db $50, $0D
org $D13372 
db $40, $52
org $D13376 
db $40, $CE
org $D1337A 
db $40, $97
org $D1337E 
db $20, $0D
org $D13382 
db $40, $CD
org $D13386 
db $40, $BB
org $D1338A 
db $40, $0F
org $D1338E 
db $20, $00
org $D13392 
db $40, $C9
org $D13396 
db $60, $24
org $D1339A 
db $40, $9C
org $D1339E 
db $20, $21
org $D133A2 
db $20, $1B
org $D133A6 
db $60, $02
org $D133AA 
db $20, $1F
org $D133AE 
db $40, $1E
org $D133B2 
db $40, $F5
org $D133B6 
db $40, $53
org $D133BA 
db $20, $16
org $D133BE 
db $20, $11
org $D133C2 
db $50, $13
org $D133C6 
db $60, $22
org $D133CA 
db $40, $06
org $D133CE 
db $60, $35
org $D133D2 
db $40, $0D
org $D133D6 
db $20, $08
org $D133DA 
db $20, $01
org $D133DE 
db $20, $12
org $D133E2 
db $60, $18
org $D133E6 
db $40, $A1
org $D133EA 
db $20, $25
org $D133EE 
db $20, $22
org $D133F2 
db $40, $07
org $D133F6 
db $40, $C4
org $D133FA 
db $40, $6D
org $D133FE 
db $40, $A8
org $D13402 
db $60, $32
org $D13406 
db $40, $F9
org $D1340A 
db $20, $16
org $D1340E 
db $40, $1E
org $D13412 
db $40, $31
org $D13416 
db $40, $90
org $D1341A 
db $40, $A8
org $D1341E 
db $40, $04
org $D13422 
db $40, $82
org $D13426 
db $40, $02
org $D1342A 
db $40, $E1
org $D1342E 
db $20, $1F
org $D13432 
db $20, $0F
org $D13436 
db $A5, $F4
org $D1343A 
db $20, $03
org $D1343E 
db $60, $00
org $D13442 
db $A5, $49
org $D13446 
db $20, $22
org $D1344A 
db $40, $6B
org $D1344E 
db $40, $68
org $D13452 
db $20, $13
org $D13456 
db $40, $17
org $D1345A 
db $40, $82
org $D1345E 
db $20, $20
org $D13462 
db $60, $24
org $D13466 
db $60, $1E
org $D1346A 
db $40, $F2
org $D1346E 
db $50, $0A
org $D13472 
db $40, $EB
org $D13476 
db $40, $CB
org $D1347A 
db $AC, $2F
org $D1347E 
db $40, $10
org $D13482 
db $A8, $96
org $D13486 
db $A6, $50
org $D1348A 
db $20, $11
org $D1348E 
db $A6, $9F
org $D13492 
db $AA, $88
org $D13496 
db $A6, $0C
org $D1349A 
db $40, $A6
org $D1349E 
db $40, $A1
org $D134A2 
db $40, $A5
org $D134A6 
db $A6, $C4
org $D134AA 
db $40, $A6
org $D134AE 
db $A6, $50
org $D134B2 
db $40, $59
org $D134B6 
db $40, $56
org $D134BA 
db $A6, $2C
org $D134BE 
db $60, $2F
org $D134C2 
db $40, $3B
org $D134C6 
db $40, $A4
org $D134CA 
db $A6, $F5
org $D134CE 
db $A6, $94
org $D134D2 
db $20, $27
org $D134D6 
db $A7, $8F
org $D134DA 
db $A9, $BC
org $D134DE 
db $A6, $CC
org $D134E2 
db $A6, $B9
org $D134E6 
db $20, $12
org $D134EA 
db $40, $F6
org $D134EE 
db $AB, $BA
org $D134F2 
db $60, $31
org $D134F6 
db $40, $BA
org $D134FA 
db $40, $9D
org $D134FE 
db $40, $AC
org $D13502 
db $40, $8A
org $D13506 
db $40, $59
org $D1350A 
db $20, $06
org $D1350E 
db $60, $0F
org $D13512 
db $40, $8B
org $D13516 
db $60, $22
org $D1351A 
db $40, $F3
org $D1351E 
db $20, $07
org $D13522 
db $50, $10
org $D13526 
db $60, $41
org $D1352A 
db $20, $08
org $D1352E 
db $60, $22
org $D13532 
db $20, $25
org $D13536 
db $40, $84
org $D1353A 
db $20, $10
org $D1353E 
db $40, $9E
org $D13542 
db $40, $F4
org $D13546 
db $40, $06
org $D1354A 
db $40, $8C
org $D1354E 
db $50, $11
org $D13552 
db $60, $3A
org $D13556 
db $60, $20
org $D1355A 
db $20, $0C
org $D1355E 
db $40, $9E
org $D13562 
db $60, $23
org $D13566 
db $20, $10
org $D1356A 
db $40, $8D
org $D1356E 
db $40, $46
org $D13572 
db $60, $2B
org $D13576 
db $20, $26
org $D1357A 
db $60, $21
org $D1357E 
db $40, $50
org $D13582 
db $AD, $9B
org $D13586 
db $40, $96
org $D1358A 
db $40, $8A
org $D1358E 
db $AD, $0E
org $D13592 
db $40, $50
org $D13596 
db $AD, $50
org $D1359A 
db $AD, $E0
org $D1359E 
db $AD, $4C
org $D135A2 
db $40, $38
org $D135A6 
db $20, $12
org $D135AA 
db $20, $19
org $D135AE 
db $20, $00
org $D135B2 
db $20, $14
org $D135B6 
db $40, $92
org $D135BA 
db $40, $8E
org $D135BE 
db $40, $09
org $D135C2 
db $60, $3C
org $D135C6 
db $40, $83
org $D135CA 
db $60, $25
org $D135CE 
db $40, $C7
org $D135D2 
db $50, $0E
org $D135D6 
db $40, $E1
org $D135DA 
db $40, $4C
org $D135DE 
db $40, $33
org $D135E2 
db $20, $21
org $D135E6 
db $60, $01
org $D135EA 
db $40, $4D
org $D135EE 
db $40, $A6
org $D135F2 
db $60, $34
org $D135F6 
db $20, $15
org $D135FA 
db $AE, $97
org $D135FE 
db $20, $0F
org $C0FB70 
db $40, $6E
org $C0FB72 
db $30, $18
org $C0FB74 
db $40, $37
org $C0FB76 
db $40, $A6
org $C0FB78 
db $30, $01
org $C0FB7A 
db $40, $69
org $C0FB7C 
db $30, $0B
org $C0FB7E 
db $30, $0E
org $C0FB80 
db $30, $08
org $C0FB82 
db $30, $1D
org $C0FB84 
db $30, $0C
org $C0FB86 
db $40, $86
org $C0FB88 
db $40, $68
org $C0FB8A 
db $40, $53
org $C0FB8C 
db $30, $02
org $C0FB8E 
db $30, $1A
org $C0FB90 
db $30, $16
org $C0FB92 
db $30, $1B
org $C0FB94 
db $40, $EF
org $C0FB96 
db $30, $07
org $C0FB98 
db $30, $03
org $C0FB9A 
db $40, $A5
org $C0FB9C 
db $30, $1C
org $C0FB9E 
db $40, $15
org $C0FBA0 
db $30, $12
org $C0FBA2 
db $40, $C6
org $C0FBA4 
db $40, $C8
org $C0FBA6 
db $30, $0D
org $C0FBA8 
db $40, $AE
org $C0FBAA 
db $30, $05
org $C0FBAC 
db $40, $26
org $C0FBAE 
db $40, $3E
org $C0FBB0 
db $30, $04
org $C0FBB2 
db $40, $3E
org $C0FBB4 
db $30, $15
org $C0FBB6 
db $30, $06
org $C0FBB8 
db $40, $A6
org $C0FBBA 
db $30, $00
;=====
;shops
;=====
org $D12D40
db $01, $37, $B9, $51, $AC, $00, $00, $00, $00
org $D12D49
db $00, $5A, $94, $87, $00, $00, $00, $00, $00
org $D12D52
db $01, $37, $F6, $AB, $AE, $00, $00, $00, $00
org $D12D5B
db $01, $8C, $A0, $10, $94, $15, $EC, $00, $00
org $D12D64
db $07, $75, $48, $31, $90, $00, $00, $00, $00
org $D12D6D
db $01, $59, $38, $33, $8F, $8C, $03, $EC, $00
org $D12D76
db $07, $6F, $53, $30, $3C, $00, $00, $00, $00
org $D12D7F
db $00, $83, $03, $13, $18, $92, $00, $00, $00
org $D12D88
db $00, $1E, $53, $48, $00, $00, $00, $00, $00
org $D12D91
db $00, $4E, $50, $54, $00, $00, $00, $00, $00
org $D12D9A
db $01, $9F, $3C, $B9, $A7, $A5, $E6, $E3, $00
org $D12DA3
db $01, $87, $5E, $3C, $2D, $CC, $67, $00, $00
org $D12DAC
db $07, $95, $15, $54, $00, $00, $00, $00, $00
org $D12DB5
db $07, $38, $6A, $12, $6D, $00, $00, $00, $00
org $D12DBE
db $00, $8E, $21, $1B, $52, $1D, $00, $00, $00
org $D12DC7
db $01, $95, $AD, $F5, $6E, $61, $86, $EB, $4A
org $D12DD0
db $01, $89, $C4, $CE, $EF, $B4, $8F, $00, $00
org $D12DD9
db $01, $11, $0E, $A6, $30, $A5, $B8, $00, $00
org $D12DE2
db $00, $26, $56, $22, $00, $00, $00, $00, $00
org $D12DEB
db $00, $49, $5E, $00, $00, $00, $00, $00, $00
org $D12DFD
db $01, $5F, $F5, $99, $37, $00, $00, $00, $00
org $D12E18
db $00, $5C, $5D, $57, $4F, $5B, $00, $00, $00
org $D12E21
db $00, $4C, $1F, $1C, $00, $00, $00, $00, $00
org $D12E2A
db $01, $9A, $35, $A4, $3A, $FC, $F3, $1B, $03
org $D12E33
db $07, $2A, $81, $7A, $9D, $00, $00, $00, $00
org $D12E3C
db $07, $8D, $00, $00, $00, $00, $00, $00, $00
org $D12E45
db $07, $13, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $07, $11, $9B, $0E, $3D, $00, $00, $00, $00
org $D12E57
db $01, $B1, $3A, $36, $8F, $95, $A8, $38, $00
org $D12E60
db $00, $58, $55, $4B, $23, $51, $00, $00, $00
org $D12E69
db $07, $1B, $71, $7C, $14, $00, $00, $00, $00
org $D12E72
db $07, $6E, $69, $68, $10, $00, $00, $00, $00
org $D12E7B
db $07, $9E, $0C, $8F, $1C, $00, $00, $00, $00
org $D12E84
db $01, $10, $BB, $A4, $3D, $00, $00, $00, $00
org $D12E8D
db $01, $04, $BF, $E7, $00, $00, $00, $00, $00
org $D12E96
db $01, $AB, $F6, $64, $00, $00, $00, $00, $00
org $D12E9F
db $01, $A2, $3D, $85, $00, $00, $00, $00, $00
org $D12EA8
db $01, $E2, $38, $8F, $58, $00, $00, $00, $00
org $D12EB1
db $07, $6B, $89, $8C, $52, $00, $00, $00, $00
org $D12EBA
db $07, $27, $00, $00, $00, $00, $00, $00, $00
org $D12EC3
db $01, $F3, $F1, $A6, $6C, $95, $8B, $83, $0D
org $D12ECC
db $01, $E1, $A7, $3B, $63, $5F, $CE, $00, $00
org $D12ED5
db $01, $AB, $C3, $5A, $93, $3C, $00, $00, $00
org $D12EDE
db $01, $32, $96, $BB, $38, $64, $68, $00, $00
org $D12EF9
db $07, $0F, $98, $92, $76, $00, $00, $00, $00
org $D12F02
db $01, $3C, $0A, $24, $33, $4B, $00, $00, $00
org $D12F0B
db $01, $11, $49, $12, $A6, $00, $00, $00, $00
org $D12F14
db $07, $16, $0D, $1A, $3B, $00, $00, $00, $00
org $D12F26
db $01, $F5, $B8, $E8, $E4, $0A, $00, $00, $00
org $D12F2F
db $01, $8C, $84, $60, $F2, $65, $CE, $EB, $00
org $D12F38
db $01, $64, $B9, $87, $23, $00, $00, $00, $00
org $D12F41
db $01, $A8, $B6, $B2, $C2, $83, $00, $00, $00
org $D12F4A
db $01, $A2, $F4, $F4, $3D, $A0, $00, $00, $00
org $D12F53
db $01, $02, $B9, $55, $32, $A8, $03, $5C, $3B
org $D12F5C
db $01, $39, $10, $33, $B7, $00, $00, $00, $00
org $D12F65
db $01, $12, $34, $BC, $59, $9F, $07, $96, $8B
org $D12F6E
db $01, $34, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $01, $CD, $00, $00, $00, $00, $00, $00, $00

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
; Enemy: Goblin
; Stats: 
org $D00000
db $0A, $05, $01, $00, $00, $00, $05, $00, $10, $00, $03, $00, $0A, $00, $14, $00, $02, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06
; Loot: 
org $D05000
db $00, $E0, $89, $00

; Enemy: Killer Bee
; Stats: 
org $D00020
db $0A, $05, $02, $0A, $00, $00, $05, $00, $14, $00, $00, $00, $0F, $00, $14, $00, $00, $20, $30, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $01, $01
; Loot: 
org $D05004
db $E0, $00, $00, $00

; Enemy: Nut Eater
; Stats: 
org $D00040
db $0A, $05, $02, $00, $00, $00, $05, $00, $14, $00, $00, $00, $0A, $00, $14, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $01, $00, $02, $01
; Loot: 
org $D05008
db $E0, $E0, $E0, $00

; Enemy: Stray Cat
; Stats: 
org $D00060
db $0A, $05, $02, $00, $00, $00, $05, $00, $14, $00, $00, $00, $0F, $00, $14, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $03, $02
; Loot: 
org $D0500C
db $E0, $00, $00, $00

; Enemy: Steel Bat
; Stats: 
org $D00080
db $05, $03, $02, $00, $00, $00, $05, $00, $14, $00, $10, $27, $09, $00, $14, $00, $00, $20, $30, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $04, $02
; Loot: 
org $D05010
db $E0, $00, $00, $00

; Enemy: Dearo
; Stats: 
org $D000A0
db $07, $04, $01, $00, $03, $00, $05, $00, $10, $00, $00, $00, $07, $00, $14, $00, $00, $00, $10, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $05, $03
; Loot: 
org $D05014
db $E0, $00, $00, $00

; Enemy: Stroper
; Stats: 
org $D000C0
db $07, $04, $02, $00, $00, $00, $05, $00, $14, $00, $00, $00, $08, $00, $14, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $03
; Loot: 
org $D05018
db $E0, $E0, $00, $00

; Enemy: Black Goblin
; Stats: 
org $D000E0
db $0A, $05, $03, $00, $00, $00, $05, $00, $14, $00, $00, $00, $14, $00, $15, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07
; Loot: 
org $D0501C
db $E0, $E0, $C0, $00

; Enemy: White Snake
; Stats: 
org $D00100
db $0A, $05, $02, $00, $00, $00, $05, $00, $19, $00, $00, $00, $14, $00, $18, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $08, $04
; Loot: 
org $D05020
db $E0, $00, $00, $00

; Enemy: Mold Wind
; Stats: 
org $D00120
db $0A, $05, $03, $00, $00, $00, $05, $00, $14, $00, $05, $00, $14, $00, $1B, $00, $00, $20, $00, $00, $00, $40, $40, $00, $00, $00, $88, $00, $00, $00, $09, $01
; Loot: 
org $D05024
db $00, $00, $E3, $00

; Enemy: ManiWizard
; Stats: 
org $D00140
db $07, $05, $02, $00, $00, $00, $05, $00, $14, $00, $07, $00, $14, $00, $1E, $00, $00, $00, $00, $00, $00, $00, $80, $00, $80, $00, $00, $00, $00, $00, $0A, $05
; Loot: 
org $D05028
db $E0, $E0, $31, $00

; Enemy: Magic Pot
; Stats: 
org $D00160
db $02, $46, $19, $5F, $FF, $5A, $FF, $63, $E7, $FE, $50, $C3, $10, $27, $10, $27, $00, $00, $FF, $FF, $10, $00, $00, $00, $20, $18, $00, $00, $60, $00, $0B, $5B
; Loot: 
org $D0502C
db $E1, $00, $E3, $00

; Enemy: Sucker
; Stats: 
org $D00180
db $14, $07, $03, $00, $00, $00, $05, $00, $32, $00, $00, $00, $15, $00, $28, $00, $00, $00, $10, $00, $00, $00, $00, $04, $00, $18, $00, $00, $00, $00, $0C, $06
; Loot: 
org $D05030
db $00, $00, $E0, $00

; Enemy: Octoraken
; Stats: 
org $D001A0
db $14, $08, $03, $00, $00, $00, $05, $00, $3C, $00, $00, $00, $15, $00, $2D, $00, $00, $00, $10, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $0D, $07
; Loot: 
org $D05034
db $00, $00, $E0, $00

; Enemy: Gatlings
; Stats: 
org $D001C0
db $14, $09, $03, $00, $00, $00, $05, $00, $50, $00, $00, $00, $1E, $00, $2A, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $0E, $07
; Loot: 
org $D05038
db $EC, $00, $EC, $00

; Enemy: Bighorn
; Stats: 
org $D001E0
db $14, $0A, $04, $00, $00, $00, $05, $00, $5A, $00, $00, $00, $28, $00, $32, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $0F, $08
; Loot: 
org $D0503C
db $E0, $00, $E0, $00

; Enemy: Tatu
; Stats: 
org $D00200
db $14, $0B, $03, $0A, $03, $00, $0A, $0A, $64, $00, $00, $00, $32, $00, $46, $00, $00, $00, $10, $00, $00, $00, $00, $82, $04, $00, $00, $00, $00, $00, $10, $08
; Loot: 
org $D05040
db $E0, $00, $F0, $00

; Enemy: Bander S.
; Stats: 
org $D00220
db $0F, $0E, $05, $0A, $00, $00, $05, $00, $78, $00, $00, $00, $3C, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $11, $09
; Loot: 
org $D05044
db $00, $E0, $E0, $00

; Enemy: Galura
; Stats: 
org $D00240
db $0A, $0C, $04, $00, $05, $00, $05, $00, $F4, $01, $00, $00, $00, $00, $00, $00, $00, $00, $30, $00, $00, $00, $00, $FF, $20, $18, $00, $00, $00, $00, $12, $09
; Loot: 
org $D05048
db $E5, $E5, $00, $00

; Enemy: Skeleton
; Stats: 
org $D00260
db $0F, $08, $03, $00, $00, $00, $05, $00, $46, $00, $00, $00, $26, $00, $39, $00, $03, $00, $F7, $F7, $01, $08, $00, $11, $01, $00, $00, $00, $00, $00, $13, $0A
; Loot: 
org $D0504C
db $00, $00, $03, $00

; Enemy: Carcurser
; Stats: 
org $D00280
db $0F, $08, $04, $00, $00, $00, $05, $00, $4B, $00, $32, $00, $26, $00, $3C, $00, $00, $01, $30, $00, $00, $80, $00, $04, $01, $00, $00, $00, $00, $00, $14, $0A
; Loot: 
org $D05050
db $E0, $E0, $E3, $00

; Enemy: UndeadRusk
; Stats: 
org $D002A0
db $14, $0A, $03, $00, $01, $00, $05, $00, $82, $00, $00, $00, $2E, $00, $3F, $00, $00, $00, $10, $00, $00, $20, $02, $44, $01, $00, $00, $00, $00, $00, $15, $0B
; Loot: 
org $D05054
db $E2, $E0, $E3, $00

; Enemy: PsychoHead
; Stats: 
org $D002C0
db $0A, $09, $03, $00, $00, $00, $05, $00, $5A, $00, $64, $00, $2E, $00, $42, $00, $00, $00, $7F, $FF, $FF, $00, $00, $00, $01, $00, $00, $00, $00, $00, $16, $0B
; Loot: 
org $D05058
db $00, $00, $FC, $00

; Enemy: RockGarter
; Stats: 
org $D002E0
db $0A, $0D, $03, $00, $00, $00, $05, $00, $78, $00, $00, $00, $2E, $00, $45, $00, $00, $00, $30, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $17, $0B
; Loot: 
org $D0505C
db $00, $E0, $00, $00

; Enemy: Gala Cat
; Stats: 
org $D00300
db $0F, $0C, $04, $0F, $00, $00, $00, $00, $64, $00, $14, $00, $37, $00, $48, $00, $00, $20, $00, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $18, $0C
; Loot: 
org $D05060
db $E0, $E0, $00, $00

; Enemy: Cockatrice
; Stats: 
org $D00320
db $0F, $0F, $03, $1E, $00, $00, $05, $00, $64, $00, $00, $00, $37, $00, $4B, $00, $00, $10, $30, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $19, $0C
; Loot: 
org $D05064
db $00, $EC, $00, $00

; Enemy: Blocks
; Stats: 
org $D00340
db $0A, $0D, $04, $00, $08, $00, $05, $00, $32, $00, $00, $00, $37, $00, $4E, $00, $00, $EB, $7E, $FF, $00, $00, $20, $04, $00, $00, $00, $00, $00, $00, $1A, $0C
; Loot: 
org $D05068
db $E1, $B4, $00, $00

; Enemy: Elf Toad
; Stats: 
org $D00360
db $0A, $0F, $04, $00, $00, $00, $05, $00, $A0, $00, $32, $00, $41, $00, $51, $00, $00, $00, $30, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $1B, $0D
; Loot: 
org $D0506C
db $00, $00, $E0, $00

; Enemy: IceSoldier
; Stats: 
org $D00380
db $0F, $11, $04, $00, $00, $00, $05, $00, $A0, $00, $14, $00, $41, $00, $54, $00, $0E, $00, $20, $00, $00, $02, $40, $01, $80, $00, $00, $00, $00, $00, $1C, $0D
; Loot: 
org $D05070
db $E0, $0F, $0E, $00

; Enemy: RikaldMage
; Stats: 
org $D003A0
db $0F, $11, $02, $00, $00, $01, $05, $00, $64, $00, $46, $00, $4B, $00, $57, $00, $00, $00, $20, $40, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $1D, $0A
; Loot: 
org $D05074
db $00, $31, $32, $00

; Enemy: Wyvern
; Stats: 
org $D003C0
db $12, $11, $05, $00, $00, $00, $05, $00, $C8, $00, $00, $00, $A0, $00, $5A, $00, $00, $00, $30, $60, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $1E, $0E
; Loot: 
org $D05078
db $00, $04, $00, $E0

; Enemy: Padosule
; Stats: 
org $D003E0
db $0F, $13, $06, $00, $00, $00, $05, $00, $18, $01, $32, $00, $64, $00, $5D, $00, $00, $00, $30, $60, $00, $00, $00, $04, $00, $18, $00, $00, $00, $00, $1F, $0E
; Loot: 
org $D0507C
db $00, $E0, $00, $00

; Enemy: Byblos
; Stats: 
org $D00400
db $22, $04, $00, $00, $00, $04, $08, $00, $b0, $04, $e8, $03, $78, $05, $00, $00, $00, $00, $F8, $D4, $10, $FE, $00, $11, $04, $18, $00, $00, $00, $00, $20, $13
; Loot: 
org $D05080
db $EB, $ED, $00, $F5
; --------------------------
; Original boss Byblos rank 4 -> Randomized boss Galura rank 3
; HP: 3600 -> 1200
; ENEMY: Byblos
; Skills: ['BreathWing', 'BreathWing']
; New skill: BreathWing
org $d0a0db
db $DA
; New skill: BreathWing
org $d0a0e1
db $DA

; Enemy: Aegil
; Stats: 
org $D00420
db $0F, $13, $04, $00, $00, $00, $05, $00, $B4, $00, $00, $00, $78, $00, $63, $00, $00, $00, $30, $00, $00, $08, $00, $00, $00, $00, $00, $00, $00, $00, $21, $0E
; Loot: 
org $D05084
db $00, $E0, $00, $00

; Enemy: Zuu
; Stats: 
org $D00440
db $0F, $16, $04, $00, $00, $00, $05, $00, $52, $03, $00, $00, $68, $01, $96, $00, $00, $20, $30, $40, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $22, $0F
; Loot: 
org $D05088
db $E3, $00, $E3, $00

; Enemy: Wild Nack
; Stats: 
org $D00460
db $0A, $14, $03, $00, $00, $00, $0A, $28, $5F, $00, $64, $00, $46, $00, $7D, $00, $00, $00, $10, $00, $00, $00, $00, $01, $04, $00, $00, $00, $00, $00, $23, $0F
; Loot: 
org $D0508C
db $00, $E0, $00, $00

; Enemy: GrassTurtle
; Stats: 
org $D00480
db $0A, $14, $05, $00, $0B, $00, $04, $00, $FA, $00, $00, $00, $E6, $00, $64, $00, $00, $00, $30, $00, $00, $00, $40, $02, $00, $00, $00, $00, $00, $00, $24, $0F
; Loot: 
org $D05090
db $E7, $00, $00, $E7

; Enemy: Silent Bee
; Stats: 
org $D004A0
db $0F, $14, $05, $00, $00, $00, $05, $00, $DC, $00, $32, $00, $78, $00, $6F, $00, $00, $20, $30, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $25, $10
; Loot: 
org $D05094
db $00, $00, $EC, $00

; Enemy: Mithril Drgn
; Stats: 
org $D004C0
db $0F, $1C, $08, $00, $0F, $00, $14, $00, $58, $02, $C8, $00, $0E, $01, $72, $00, $00, $20, $30, $40, $00, $00, $00, $00, $10, $00, $88, $00, $00, $00, $26, $10
; Loot: 
org $D05098
db $9D, $E0, $B6, $00

; Enemy: Ramuh
; Stats: 
org $D004E0
db $2D, $1B, $08, $0A, $14, $32, $05, $0A, $A0, $0F, $2C, $01, $00, $00, $00, $00, $34, $00, $64, $F4, $00, $04, $00, $00, $80, $18, $00, $00, $00, $00, $27, $15
; Loot: 
org $D0509C
db $E1, $E1, $00, $F9

; Enemy: Crew Dust
; Stats: 
org $D00500
db $0F, $15, $03, $00, $00, $00, $05, $00, $F0, $00, $64, $00, $82, $00, $78, $00, $00, $3D, $F6, $FF, $FF, $00, $21, $C2, $00, $00, $88, $00, $00, $00, $28, $11
; Loot: 
org $D050A0
db $E9, $E0, $00, $00

; Enemy: PoItergeist
; Stats: 
org $D00520
db $14, $15, $05, $0A, $00, $00, $05, $00, $F0, $00, $64, $00, $87, $00, $7B, $00, $00, $3D, $F7, $FF, $FF, $02, $00, $C0, $01, $00, $88, $00, $00, $00, $29, $11
; Loot: 
org $D050A4
db $00, $E1, $00, $00

; Enemy: Motor Trap
; Stats: 
org $D00540
db $14, $18, $05, $00, $0A, $00, $00, $00, $F0, $00, $64, $00, $96, $00, $7E, $00, $00, $20, $77, $F0, $00, $00, $40, $04, $00, $08, $88, $00, $00, $00, $2A, $11
; Loot: 
org $D050A8
db $00, $E2, $00, $00

; Enemy: Defeater
; Stats: 
org $D00560
db $14, $16, $04, $00, $00, $00, $00, $00, $04, $01, $64, $00, $96, $00, $81, $00, $00, $20, $30, $00, $00, $00, $00, $02, $00, $00, $88, $00, $00, $00, $2B, $12
; Loot: 
org $D050AC
db $00, $E0, $F4, $00

; Enemy: Garkimasra
; Stats: 
org $D00580
db $23, $32, $0A, $32, $32, $32, $32, $32, $9A, $02, $88, $13, $00, $00, $01, $00, $00, $00, $FF, $FF, $10, $FF, $00, $FF, $20, $00, $00, $00, $00, $00, $2C, $14
; Loot: 
org $D050B0
db $E3, $F5, $E4, $00

; Enemy: Sergeant
; Stats: 
org $D005A0
db $14, $19, $05, $00, $00, $00, $00, $00, $90, $01, $64, $00, $A0, $00, $84, $00, $0D, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $2D, $00
; Loot: 
org $D050B4
db $E0, $E0, $A3, $00

; Enemy: Sorcerer
; Stats: 
org $D005C0
db $14, $14, $05, $00, $00, $00, $00, $00, $5E, $01, $F4, $01, $B4, $00, $8A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $2E, $12
; Loot: 
org $D050B8
db $A9, $06, $E2, $00

; Enemy: Karnak
; Stats: 
org $D005E0
db $0A, $14, $04, $0A, $00, $00, $00, $14, $8C, $00, $00, $00, $8C, $00, $8D, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $2F, $13
; Loot: 
org $D050BC
db $00, $E0, $00, $00

; Enemy: Gigas
; Stats: 
org $D00600
db $14, $1C, $05, $00, $00, $00, $00, $0A, $F8, $02, $23, $00, $5E, $01, $90, $00, $00, $00, $30, $40, $00, $40, $00, $00, $80, $00, $88, $00, $00, $00, $30, $13
; Loot: 
org $D050C0
db $00, $E3, $00, $F2

; Enemy: Page 32
; Stats: 
org $D00620
db $1E, $1B, $05, $00, $00, $00, $05, $00, $E0, $01, $F4, $01, $B4, $00, $93, $00, $00, $00, $F6, $FF, $10, $00, $00, $01, $00, $00, $00, $00, $00, $00, $31, $13
; Loot: 
org $D050C4
db $97, $E0, $E0, $00

; Enemy: Page 64
; Stats: 
org $D00640
db $23, $1B, $05, $00, $01, $00, $05, $00, $F4, $01, $F4, $01, $C8, $00, $96, $00, $00, $00, $F6, $FF, $10, $00, $00, $01, $00, $00, $00, $00, $00, $00, $32, $14
; Loot: 
org $D050C8
db $B4, $E0, $E4, $00

; Enemy: Page 128
; Stats: 
org $D00660
db $23, $1C, $05, $00, $00, $00, $05, $00, $BC, $02, $F4, $01, $BE, $00, $99, $00, $00, $00, $F6, $FF, $10, $00, $00, $01, $00, $00, $00, $00, $00, $00, $33, $14
; Loot: 
org $D050CC
db $00, $E2, $E0, $00

; Enemy: Page 256
; Stats: 
org $D00680
db $23, $1D, $06, $0A, $00, $00, $05, $00, $84, $03, $F4, $01, $D2, $00, $9C, $00, $00, $00, $F6, $FF, $10, $00, $00, $01, $00, $00, $00, $00, $00, $00, $34, $15
; Loot: 
org $D050D0
db $A4, $E1, $84, $00

; Enemy: Ifrit
; Stats: 
org $D006A0
db $28, $40, $08, $14, $08, $00, $10, $0a, $40, $9c, $e8, $03, $ec, $45, $00, $00, $00, $08, $30, $40, $00, $01, $00, $82, $20, $18, $00, $00, $00, $00, $35, $12
; Loot: 
org $D050D4
db $00, $E4, $00, $FC
; --------------------------
; Original boss Ifrit rank 3 -> Randomized boss Bahamut rank 9
; HP: 3000 -> 40000
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

; Enemy: Bomb
; Stats: 
org $D006C0
db $0F, $1D, $05, $00, $00, $00, $05, $00, $B8, $01, $32, $00, $E6, $00, $A2, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $36, $15
; Loot: 
org $D050D8
db $00, $E0, $E0, $00

; Enemy: TwinLizard
; Stats: 
org $D006E0
db $0F, $1D, $05, $00, $14, $00, $05, $00, $BC, $02, $00, $00, $04, $01, $A5, $00, $00, $00, $10, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $37, $15
; Loot: 
org $D050DC
db $00, $00, $E0, $00

; Enemy: BioSoldier
; Stats: 
org $D00700
db $0F, $1E, $06, $0A, $00, $00, $05, $00, $1C, $02, $F4, $01, $40, $01, $A8, $00, $0E, $08, $24, $00, $00, $08, $00, $00, $80, $00, $00, $00, $00, $00, $38, $12
; Loot: 
org $D050E0
db $24, $21, $E8, $00

; Enemy: Crescent
; Stats: 
org $D00720
db $14, $1E, $06, $00, $00, $00, $05, $00, $44, $02, $00, $00, $2C, $01, $AB, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $39, $16
; Loot: 
org $D050E4
db $00, $65, $69, $00

; Enemy: BlackFlame
; Stats: 
org $D00740
db $14, $1C, $06, $32, $00, $00, $19, $00, $DC, $00, $64, $00, $22, $01, $AE, $00, $00, $00, $70, $40, $00, $78, $20, $80, $00, $00, $00, $00, $00, $00, $3A, $16
; Loot: 
org $D050E8
db $F4, $00, $F4, $00

; Enemy: StoneGolem
; Stats: 
org $D00760
db $14, $20, $06, $00, $14, $00, $32, $00, $E8, $03, $00, $00, $26, $02, $B1, $00, $00, $28, $FE, $80, $00, $00, $00, $04, $20, $00, $00, $00, $40, $00, $3B, $16
; Loot: 
org $D050EC
db $00, $EC, $E1, $00

; Enemy: MiniDragon
; Stats: 
org $D00780
db $14, $1E, $06, $1E, $1E, $32, $14, $00, $E8, $03, $64, $00, $84, $03, $B4, $00, $00, $00, $DF, $FF, $10, $00, $00, $00, $10, $00, $00, $00, $00, $00, $3C, $16
; Loot: 
org $D050F0
db $EA, $00, $00, $00

; Enemy: Prototype
; Stats: 
org $D007A0
db $14, $21, $06, $00, $64, $0A, $64, $00, $88, $13, $E8, $03, $D0, $07, $00, $00, $00, $00, $B4, $F0, $10, $00, $00, $00, $20, $00, $00, $00, $00, $00, $3D, $17
; Loot: 
org $D050F4
db $00, $E2, $00, $EB

; Enemy: D.Chimera
; Stats: 
org $D007C0
db $28, $32, $0A, $00, $14, $00, $14, $00, $E8, $03, $96, $00, $E8, $03, $BA, $00, $00, $00, $FF, $FF, $10, $80, $00, $00, $24, $00, $00, $00, $00, $00, $3E, $17
; Loot: 
org $D050F8
db $1A, $00, $E4, $00

; Enemy: Sand Porky
; Stats: 
org $D007E0
db $14, $21, $05, $00, $05, $00, $05, $00, $A4, $01, $00, $00, $04, $01, $BD, $00, $00, $00, $30, $00, $00, $00, $00, $80, $40, $00, $00, $00, $00, $00, $3F, $17
; Loot: 
org $D050FC
db $00, $E0, $E0, $00

; Enemy: Sand Killer
; Stats: 
org $D00800
db $14, $22, $06, $00, $00, $00, $05, $00, $6C, $02, $00, $00, $2C, $01, $C0, $00, $00, $00, $10, $00, $00, $00, $00, $80, $41, $00, $00, $00, $00, $00, $40, $17
; Loot: 
org $D05100
db $00, $00, $E8, $00

; Enemy: Sand Bear
; Stats: 
org $D00820
db $23, $24, $08, $00, $0A, $00, $0A, $0A, $E8, $03, $00, $00, $68, $01, $C3, $00, $00, $00, $10, $00, $00, $00, $00, $80, $44, $00, $00, $00, $00, $00, $41, $18
; Loot: 
org $D05104
db $17, $00, $00, $E8

; Enemy: Ra Mage
; Stats: 
org $D00840
db $19, $19, $05, $00, $00, $00, $00, $00, $F8, $02, $C8, $00, $72, $01, $C6, $00, $00, $00, $20, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $42, $13
; Loot: 
org $D05108
db $00, $AA, $E3, $00

; Enemy: LonkaKnght
; Stats: 
org $D00860
db $19, $24, $06, $14, $14, $00, $0A, $0A, $5C, $03, $00, $00, $7C, $01, $C9, $00, $00, $00, $24, $10, $00, $00, $40, $00, $80, $00, $00, $00, $00, $00, $43, $18
; Loot: 
org $D0510C
db $F3, $E1, $84, $00

; Enemy: StonedMask
; Stats: 
org $D00880
db $19, $22, $04, $00, $14, $00, $00, $00, $C2, $01, $14, $00, $40, $01, $CC, $00, $00, $00, $FC, $E0, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $44, $18
; Loot: 
org $D05110
db $00, $EC, $00, $00

; Enemy: Whirl Demon
; Stats: 
org $D008A0
db $1E, $23, $05, $00, $02, $0A, $00, $00, $E8, $03, $C8, $00, $D6, $01, $CF, $00, $00, $00, $30, $00, $00, $40, $00, $00, $00, $00, $88, $00, $00, $00, $45, $18
; Loot: 
org $D05114
db $E3, $E0, $42, $00

; Enemy: Lamia
; Stats: 
org $D008C0
db $23, $23, $05, $00, $00, $00, $03, $00, $84, $03, $64, $00, $EA, $01, $D2, $00, $00, $00, $50, $10, $00, $08, $00, $02, $04, $00, $00, $00, $00, $00, $46, $18
; Loot: 
org $D05118
db $99, $E5, $00, $00

; Enemy: ArchaeToad
; Stats: 
org $D008E0
db $19, $22, $06, $00, $00, $00, $00, $00, $20, $03, $64, $00, $86, $01, $D5, $00, $00, $00, $30, $00, $00, $00, $00, $02, $02, $00, $00, $00, $00, $00, $47, $19
; Loot: 
org $D0511C
db $E1, $00, $00, $00

; Enemy: Hyudora
; Stats: 
org $D00900
db $2D, $26, $06, $00, $0A, $00, $05, $00, $D0, $07, $E8, $03, $08, $07, $D8, $00, $00, $00, $70, $20, $00, $04, $00, $00, $10, $00, $00, $00, $00, $00, $48, $19
; Loot: 
org $D05120
db $E1, $E2, $EA, $00

; Enemy: Hydra
; Stats: 
org $D00920
db $32, $2A, $08, $0A, $14, $00, $05, $0A, $B8, $0B, $E8, $03, $24, $0C, $DB, $00, $00, $00, $3C, $50, $10, $EE, $00, $00, $11, $10, $80, $00, $80, $00, $49, $1A
; Loot: 
org $D05124
db $43, $00, $00, $E4

; Enemy: Water Buzz
; Stats: 
org $D00940
db $19, $25, $05, $00, $00, $00, $05, $00, $58, $02, $32, $00, $4A, $01, $DE, $00, $00, $00, $10, $00, $00, $80, $00, $04, $04, $00, $00, $00, $00, $00, $4A, $1A
; Loot: 
org $D05128
db $E2, $00, $00, $00

; Enemy: Torrent
; Stats: 
org $D00960
db $19, $24, $06, $00, $00, $00, $05, $00, $BC, $02, $32, $00, $4A, $01, $E1, $00, $00, $00, $30, $20, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $4B, $1A
; Loot: 
org $D0512C
db $E0, $E1, $E0, $00

; Enemy: Rock Brain
; Stats: 
org $D00980
db $1E, $25, $05, $00, $00, $00, $05, $00, $58, $02, $64, $00, $4A, $01, $E4, $00, $00, $00, $FF, $FF, $00, $01, $00, $04, $00, $00, $00, $00, $00, $00, $4C, $1A
; Loot: 
org $D05130
db $E3, $00, $00, $00

; Enemy: Tarantula
; Stats: 
org $D009A0
db $14, $23, $04, $00, $00, $00, $00, $00, $C8, $00, $00, $00, $58, $00, $E7, $00, $00, $00, $30, $00, $00, $08, $00, $02, $00, $00, $00, $00, $00, $00, $4D, $1B
; Loot: 
org $D05134
db $00, $00, $00, $E0

; Enemy: Jail Bear
; Stats: 
org $D009C0
db $14, $25, $06, $00, $00, $00, $00, $00, $7C, $01, $00, $00, $59, $00, $4E, $01, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $4E, $1B
; Loot: 
org $D05138
db $18, $00, $E1, $00

; Enemy: Lunenta
; Stats: 
org $D009E0
db $1E, $24, $06, $00, $00, $00, $05, $00, $E8, $03, $64, $00, $61, $01, $ED, $00, $00, $00, $10, $64, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $4F, $1B
; Loot: 
org $D0513C
db $E4, $00, $E2, $00

; Enemy: Dilure
; Stats: 
org $D00A00
db $19, $23, $06, $00, $00, $00, $05, $00, $E8, $03, $F4, $01, $61, $01, $F0, $00, $00, $00, $10, $00, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, $50, $1B
; Loot: 
org $D05140
db $00, $E0, $E0, $00

; Enemy: Faerie Orc
; Stats: 
org $D00A20
db $19, $24, $07, $00, $00, $00, $05, $00, $E8, $03, $E8, $03, $81, $01, $F3, $00, $00, $20, $30, $00, $00, $10, $40, $00, $00, $00, $88, $00, $00, $00, $51, $1C
; Loot: 
org $D05144
db $E0, $E6, $E1, $00

; Enemy: Devourer
; Stats: 
org $D00A40
db $19, $25, $07, $00, $00, $00, $05, $00, $E8, $03, $64, $00, $81, $01, $F6, $00, $00, $00, $10, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $52, $1C
; Loot: 
org $D05148
db $E1, $00, $00, $00

; Enemy: Mandrake
; Stats: 
org $D00A60
db $19, $24, $07, $00, $00, $00, $05, $00, $E8, $03, $64, $00, $81, $01, $F9, $00, $00, $00, $30, $60, $00, $00, $00, $01, $01, $00, $00, $00, $00, $00, $53, $1C
; Loot: 
org $D0514C
db $E8, $E9, $00, $00

; Enemy: Kuzar
; Stats: 
org $D00A80
db $23, $2D, $07, $00, $0A, $00, $00, $00, $88, $13, $E8, $03, $E8, $03, $E8, $03, $00, $00, $30, $E0, $00, $00, $00, $40, $04, $00, $00, $00, $00, $00, $54, $1C
; Loot: 
org $D05150
db $00, $00, $E3, $00

; Enemy: Cactus
; Stats: 
org $D00AA0
db $19, $25, $07, $00, $00, $00, $05, $00, $E8, $03, $32, $00, $A3, $01, $FF, $00, $00, $00, $10, $00, $00, $00, $00, $80, $60, $00, $00, $00, $00, $00, $55, $1D
; Loot: 
org $D05154
db $EC, $E0, $00, $00

; Enemy: Sand Crawl
; Stats: 
org $D00AC0
db $23, $2D, $07, $00, $0A, $00, $05, $32, $98, $3A, $E8, $03, $E8, $03, $E8, $03, $00, $00, $30, $00, $00, $00, $00, $00, $60, $00, $00, $00, $00, $00, $56, $1D
; Loot: 
org $D05158
db $F0, $00, $00, $F3

; Enemy: ShieldDrgn
; Stats: 
org $D00AE0
db $28, $28, $19, $00, $28, $00, $19, $32, $1F, $4E, $20, $4E, $10, $27, $E8, $03, $00, $00, $F0, $70, $10, $00, $00, $00, $30, $00, $80, $00, $E0, $00, $57, $1D
; Loot: 
org $D0515C
db $85, $84, $85, $00

; Enemy: Blood Slime
; Stats: 
org $D00B00
db $19, $24, $06, $00, $27, $00, $00, $00, $58, $02, $64, $00, $6D, $01, $08, $01, $00, $00, $10, $00, $00, $00, $7F, $01, $00, $00, $04, $00, $00, $00, $58, $1D
; Loot: 
org $D05160
db $00, $E6, $E6, $00

; Enemy: Acrophese
; Stats: 
org $D00B20
db $19, $24, $07, $00, $14, $00, $14, $00, $84, $03, $00, $00, $9A, $01, $0B, $01, $00, $00, $30, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $59, $1E
; Loot: 
org $D05164
db $00, $E0, $00, $00

; Enemy: MooglEater
; Stats: 
org $D00B40
db $1E, $27, $06, $00, $05, $00, $05, $00, $E8, $03, $32, $00, $99, $02, $0E, $01, $00, $00, $10, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $5A, $17
; Loot: 
org $D05168
db $E1, $00, $00, $00

; Enemy: Lopros
; Stats: 
org $D00B60
db $27, $2A, $07, $00, $1E, $00, $0F, $00, $FC, $08, $C8, $00, $78, $03, $11, $01, $00, $08, $34, $60, $00, $00, $40, $01, $08, $00, $88, $00, $00, $00, $5B, $20
; Loot: 
org $D0516C
db $00, $E1, $E1, $00

; Enemy: Skull Eater
; Stats: 
org $D00B80
db $32, $32, $1E, $5A, $5A, $5A, $5A, $5A, $01, $00, $64, $00, $2C, $01, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $5C, $20
; Loot: 
org $D05170
db $00, $F0, $E3, $00

; Enemy: Aquathone
; Stats: 
org $D00BA0
db $1E, $27, $06, $00, $00, $00, $05, $00, $20, $03, $64, $00, $EA, $01, $17, $01, $00, $00, $10, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $5D, $1F
; Loot: 
org $D05174
db $00, $E0, $E8, $00

; Enemy: Weresnake
; Stats: 
org $D00BC0
db $1E, $28, $05, $0A, $00, $00, $05, $00, $84, $03, $14, $00, $EA, $01, $1A, $01, $00, $00, $10, $00, $00, $00, $00, $02, $00, $00, $04, $00, $00, $00, $5E, $1F
; Loot: 
org $D05178
db $00, $E0, $E1, $00

; Enemy: Conago
; Stats: 
org $D00BE0
db $1E, $26, $06, $00, $00, $00, $05, $00, $E8, $03, $2C, $01, $00, $02, $1D, $01, $00, $00, $30, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $5F, $1F
; Loot: 
org $D0517C
db $00, $E0, $E9, $00

; Enemy: Ridicule
; Stats: 
org $D00C00
db $23, $29, $07, $00, $05, $00, $00, $00, $64, $05, $C8, $00, $84, $03, $20, $01, $00, $00, $20, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $60, $1F
; Loot: 
org $D05180
db $00, $E5, $F6, $00

; Enemy: Andagranda
; Stats: 
org $D00C20
db $1E, $2A, $08, $00, $05, $00, $00, $00, $AA, $05, $C8, $00, $08, $02, $23, $01, $00, $00, $30, $00, $00, $20, $00, $20, $00, $00, $00, $00, $00, $00, $61, $18
; Loot: 
org $D05184
db $00, $00, $F5, $00

; Enemy: Drippy
; Stats: 
org $D00C40
db $23, $23, $05, $00, $05, $00, $05, $00, $84, $03, $64, $00, $1C, $02, $26, $01, $00, $00, $20, $40, $00, $00, $00, $08, $80, $00, $00, $00, $00, $00, $62, $20
; Loot: 
org $D05188
db $AA, $22, $F0, $00

; Enemy: Likaon
; Stats: 
org $D00C60
db $1E, $24, $07, $00, $05, $00, $00, $00, $F4, $01, $00, $00, $2C, $01, $C8, $00, $00, $00, $10, $00, $00, $00, $00, $01, $04, $00, $00, $00, $00, $00, $63, $20
; Loot: 
org $D0518C
db $E1, $00, $E6, $00

; Enemy: BoneDragon
; Stats: 
org $D00C80
db $1C, $27, $07, $00, $0A, $00, $05, $0A, $1E, $0A, $10, $27, $7A, $03, $2C, $01, $00, $00, $34, $40, $00, $00, $00, $01, $31, $00, $00, $00, $00, $00, $64, $20
; Loot: 
org $D05190
db $00, $EC, $E2, $00

; Enemy: Sting Eagle
; Stats: 
org $D00CA0
db $23, $25, $07, $32, $00, $00, $00, $32, $64, $00, $00, $00, $F4, $01, $2F, $01, $00, $28, $34, $00, $00, $08, $40, $00, $00, $00, $88, $00, $00, $00, $65, $20
; Loot: 
org $D05194
db $66, $00, $E8, $00

; Enemy: ZombieDrgn
; Stats: 
org $D00CC0
db $1D, $2E, $08, $00, $0A, $00, $05, $14, $EE, $11, $00, $00, $72, $06, $F4, $01, $00, $00, $14, $70, $00, $00, $00, $01, $11, $00, $00, $00, $00, $00, $66, $18
; Loot: 
org $D05198
db $EB, $00, $00, $EA

; Enemy: Golem
; Stats: 
org $D00CE0
db $0A, $28, $08, $00, $00, $00, $00, $00, $C4, $09, $E8, $03, $00, $00, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $67, $03
; Loot: 
org $D0519C
db $EC, $EC, $00, $00

; Enemy: Neon
; Stats: 
org $D00D00
db $19, $2C, $06, $14, $05, $00, $05, $00, $BC, $02, $64, $00, $58, $02, $38, $01, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $68, $21
; Loot: 
org $D051A0
db $00, $F4, $F4, $00

; Enemy: Magnetes
; Stats: 
org $D00D20
db $23, $2B, $05, $28, $0A, $00, $05, $00, $B0, $04, $64, $00, $62, $02, $3B, $01, $00, $20, $30, $70, $00, $00, $00, $04, $20, $00, $88, $00, $00, $00, $69, $21
; Loot: 
org $D051A4
db $00, $00, $E1, $00

; Enemy: Wall Knight
; Stats: 
org $D00D40
db $1E, $2F, $07, $00, $1E, $00, $00, $00, $40, $06, $C8, $00, $BC, $02, $3E, $01, $23, $00, $20, $00, $00, $00, $00, $00, $80, $00, $80, $00, $80, $00, $6A, $21
; Loot: 
org $D051A8
db $25, $24, $CA, $00

; Enemy: Traveler
; Stats: 
org $D00D60
db $23, $28, $06, $14, $00, $00, $05, $00, $78, $05, $64, $00, $44, $02, $41, $01, $3C, $20, $20, $00, $00, $00, $00, $00, $80, $00, $88, $00, $00, $00, $6B, $21
; Loot: 
org $D051AC
db $48, $00, $48, $00

; Enemy: Tricker
; Stats: 
org $D00D80
db $1E, $29, $06, $0A, $0A, $00, $05, $0A, $14, $05, $64, $00, $C6, $02, $44, $01, $00, $00, $30, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $6C, $22
; Loot: 
org $D051B0
db $00, $E0, $E1, $00

; Enemy: Gravido
; Stats: 
org $D00DA0
db $23, $26, $07, $0A, $14, $00, $0A, $00, $08, $07, $C8, $00, $D0, $02, $47, $01, $00, $00, $20, $00, $00, $00, $00, $00, $A0, $00, $00, $00, $00, $00, $6D, $22
; Loot: 
org $D051B4
db $E1, $00, $A9, $00

; Enemy: Ziggurat
; Stats: 
org $D00DC0
db $1F, $31, $08, $0A, $14, $00, $0A, $14, $74, $09, $F4, $01, $B0, $04, $4A, $01, $00, $20, $30, $00, $00, $40, $00, $00, $80, $00, $88, $00, $00, $00, $6E, $22
; Loot: 
org $D051B8
db $1C, $00, $F2, $00

; Enemy: Cure Beast
; Stats: 
org $D00DE0
db $23, $2A, $06, $0A, $00, $00, $05, $00, $E8, $03, $64, $00, $6C, $02, $4D, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $6F, $22
; Loot: 
org $D051BC
db $E1, $00, $E3, $00

; Enemy: Land Turtle
; Stats: 
org $D00E00
db $19, $2A, $09, $00, $1E, $00, $0F, $00, $14, $05, $00, $00, $16, $03, $50, $01, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $70, $22
; Loot: 
org $D051C0
db $00, $E0, $00, $E7

; Enemy: Bold Mani
; Stats: 
org $D00E20
db $1E, $2B, $06, $0A, $00, $00, $05, $00, $14, $05, $00, $00, $94, $02, $53, $01, $00, $00, $70, $00, $00, $04, $00, $00, $04, $00, $00, $00, $00, $00, $71, $23
; Loot: 
org $D051C4
db $E1, $00, $E6, $00

; Enemy: Shoat
; Stats: 
org $D00E40
db $2D, $37, $0A, $00, $14, $32, $0A, $00, $88, $13, $F4, $01, $00, $00, $00, $00, $00, $00, $FB, $FF, $EF, $00, $00, $00, $34, $18, $00, $00, $00, $00, $72, $26
; Loot: 
org $D051C8
db $E4, $00, $00, $FA

; Enemy: MiniMage
; Stats: 
org $D00E60
db $1E, $1E, $08, $00, $05, $01, $00, $00, $4C, $04, $0A, $00, $58, $02, $59, $01, $00, $00, $10, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $73, $0B
; Loot: 
org $D051CC
db $91, $00, $91, $00

; Enemy: GajraGajri
; Stats: 
org $D00E80
db $19, $2D, $07, $32, $14, $00, $00, $00, $4B, $00, $64, $00, $EE, $02, $5C, $01, $00, $00, $F4, $EC, $10, $BF, $00, $00, $00, $00, $88, $00, $00, $00, $74, $22
; Loot: 
org $D051D0
db $00, $E9, $E2, $00

; Enemy: Mammon
; Stats: 
org $D00EA0
db $1E, $2E, $09, $00, $05, $00, $05, $00, $A4, $06, $64, $00, $BC, $02, $5F, $01, $00, $00, $80, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $75, $23
; Loot: 
org $D051D4
db $E1, $00, $E1, $00

; Enemy: Imp
; Stats: 
org $D00EC0
db $1E, $5A, $01, $1E, $05, $00, $05, $00, $D0, $07, $C8, $00, $48, $03, $62, $01, $00, $10, $C4, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $76, $24
; Loot: 
org $D051D8
db $00, $E0, $B8, $00

; Enemy: Wyrm
; Stats: 
org $D00EE0
db $23, $37, $09, $14, $14, $00, $05, $00, $8C, $0A, $64, $00, $98, $08, $65, $01, $00, $00, $30, $60, $00, $00, $40, $00, $14, $00, $88, $00, $00, $00, $77, $24
; Loot: 
org $D051DC
db $00, $E8, $EA, $00

; Enemy: TwinLizard
; Stats: 
org $D00F00
db $23, $36, $07, $00, $0A, $00, $05, $00, $DC, $05, $00, $00, $D0, $02, $68, $01, $00, $00, $10, $00, $00, $00, $00, $02, $04, $00, $00, $00, $00, $00, $78, $21
; Loot: 
org $D051E0
db $E1, $00, $E0, $00

; Enemy: Blind Wolf
; Stats: 
org $D00F20
db $19, $36, $08, $14, $05, $00, $05, $1E, $84, $03, $00, $00, $F4, $01, $6B, $01, $00, $00, $00, $00, $00, $00, $00, $01, $04, $00, $81, $00, $00, $00, $79, $21
; Loot: 
org $D051E4
db $E9, $00, $E9, $00

; Enemy: Arage
; Stats: 
org $D00F40
db $1E, $31, $06, $0A, $05, $00, $05, $00, $1A, $04, $64, $00, $EE, $02, $6E, $01, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $7A, $22
; Loot: 
org $D051E8
db $E1, $E0, $E4, $00

; Enemy: Wall Mage
; Stats: 
org $D00F60
db $1C, $34, $04, $00, $05, $00, $00, $00, $14, $05, $64, $00, $84, $03, $71, $01, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $80, $00, $80, $00, $7B, $24
; Loot: 
org $D051EC
db $CA, $00, $E2, $00

; Enemy: Magic Drgn
; Stats: 
org $D00F80
db $1B, $3A, $08, $00, $0A, $00, $05, $00, $54, $0B, $2C, $01, $B0, $04, $74, $01, $00, $00, $30, $00, $00, $00, $40, $48, $14, $00, $88, $00, $00, $00, $7C, $24
; Loot: 
org $D051F0
db $E1, $E0, $E3, $00

; Enemy: DarkWizard
; Stats: 
org $D00FA0
db $1E, $32, $01, $00, $0A, $1E, $05, $00, $CF, $07, $F4, $01, $B6, $03, $77, $01, $00, $00, $24, $20, $00, $00, $00, $10, $A0, $00, $00, $00, $00, $00, $7D, $24
; Loot: 
org $D051F4
db $3E, $35, $3A, $00

; Enemy: AdamaGolem
; Stats: 
org $D00FC0
db $23, $3E, $09, $00, $0A, $00, $05, $00, $42, $0E, $00, $00, $4C, $04, $7A, $01, $00, $00, $74, $60, $10, $00, $00, $04, $00, $00, $00, $00, $00, $00, $7E, $25
; Loot: 
org $D051F8
db $E1, $E0, $E1, $00

; Enemy: BandelKuar
; Stats: 
org $D00FE0
db $23, $3B, $08, $00, $05, $00, $05, $00, $28, $0A, $64, $00, $7E, $04, $7D, $01, $00, $00, $10, $00, $00, $00, $00, $01, $04, $00, $00, $00, $00, $00, $7F, $25
; Loot: 
org $D051FC
db $E4, $00, $E4, $00

; Enemy: Motordrive
; Stats: 
org $D01000
db $20, $3F, $09, $14, $0F, $00, $0F, $32, $E4, $0C, $00, $00, $14, $05, $80, $01, $00, $00, $04, $00, $00, $00, $40, $07, $80, $00, $00, $00, $00, $00, $80, $26
; Loot: 
org $D05200
db $5D, $E0, $F6, $00

; Enemy: BlueDragon
; Stats: 
org $D01020
db $23, $40, $09, $14, $0A, $00, $05, $1E, $F4, $1A, $E8, $03, $C4, $09, $F4, $01, $00, $20, $30, $70, $00, $02, $00, $00, $10, $10, $88, $00, $00, $00, $81, $26
; Loot: 
org $D05204
db $F1, $EA, $EA, $00

; Enemy: Red Dragon
; Stats: 
org $D01040
db $22, $41, $09, $00, $0C, $32, $08, $05, $4C, $1D, $E8, $03, $B8, $0B, $F4, $01, $00, $00, $70, $70, $00, $01, $00, $A2, $31, $00, $00, $00, $00, $00, $82, $1E
; Loot: 
org $D05208
db $BD, $E1, $E3, $00

; Enemy: Yellow Drgn
; Stats: 
org $D01060
db $23, $41, $09, $00, $0A, $00, $05, $0A, $34, $21, $E8, $03, $28, $0A, $F4, $01, $00, $00, $74, $70, $00, $04, $00, $00, $10, $00, $00, $00, $00, $00, $83, $26
; Loot: 
org $D0520C
db $E2, $34, $BE, $00

; Enemy: Sleepy
; Stats: 
org $D01080
db $1E, $32, $04, $0A, $05, $00, $05, $00, $40, $06, $64, $00, $BC, $02, $8C, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $84, $24
; Loot: 
org $D05210
db $E1, $3B, $89, $00

; Enemy: Treeman
; Stats: 
org $D010A0
db $23, $34, $07, $00, $05, $00, $05, $0A, $98, $08, $64, $00, $39, $03, $8F, $01, $00, $00, $00, $00, $00, $00, $00, $01, $80, $00, $00, $00, $00, $00, $85, $25
; Loot: 
org $D05214
db $F5, $F3, $F4, $00

; Enemy: Hedgehog
; Stats: 
org $D010C0
db $1C, $36, $06, $00, $19, $00, $05, $00, $E8, $03, $00, $00, $52, $03, $92, $01, $00, $00, $10, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $86, $25
; Loot: 
org $D05218
db $00, $EC, $EC, $00

; Enemy: Python
; Stats: 
org $D010E0
db $18, $31, $06, $00, $05, $00, $05, $00, $08, $07, $00, $00, $A8, $02, $95, $01, $00, $00, $10, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $87, $27
; Loot: 
org $D0521C
db $00, $E8, $E9, $00

; Enemy: Shadow
; Stats: 
org $D01100
db $1A, $39, $07, $1E, $19, $00, $05, $00, $E8, $03, $00, $00, $70, $03, $98, $01, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $88, $00, $00, $00, $88, $28
; Loot: 
org $D05220
db $E1, $00, $E6, $00

; Enemy: Elm Gigas
; Stats: 
org $D01120
db $25, $3E, $0A, $14, $05, $1E, $1E, $14, $4A, $10, $88, $13, $2A, $03, $9B, $01, $00, $20, $36, $00, $00, $40, $40, $00, $80, $00, $08, $40, $00, $00, $89, $27
; Loot: 
org $D05224
db $F6, $00, $F2, $00

; Enemy: Pao
; Stats: 
org $D01140
db $14, $28, $09, $00, $00, $00, $00, $00, $F4, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $8A, $1B
; Loot: 
org $D05228
db $E1, $E0, $00, $F0

; Enemy: Radiator
; Stats: 
org $D01160
db $05, $2F, $08, $00, $1E, $00, $14, $00, $84, $03, $E8, $03, $20, $03, $A1, $01, $00, $00, $30, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $8B, $28
; Loot: 
org $D0522C
db $E0, $00, $E0, $00

; Enemy: Metamorpha
; Stats: 
org $D01180
db $21, $28, $0A, $00, $0A, $0A, $05, $00, $58, $1B, $10, $27, $14, $00, $09, $03, $00, $00, $E4, $84, $00, $00, $00, $C0, $A0, $00, $00, $00, $00, $00, $8C, $2B
; Loot: 
org $D05230
db $E1, $38, $3C, $00

; Enemy: Unknown
; Stats: 
org $D011A0
db $16, $3C, $06, $00, $19, $00, $00, $00, $C4, $09, $00, $00, $B0, $04, $0D, $02, $00, $00, $34, $F0, $10, $08, $20, $10, $01, $00, $00, $00, $40, $00, $8D, $29
; Loot: 
org $D05234
db $5D, $00, $00, $00

; Enemy: Desertpede
; Stats: 
org $D011C0
db $16, $3B, $06, $00, $0A, $FA, $05, $0A, $66, $08, $00, $00, $84, $03, $AA, $01, $00, $00, $10, $00, $00, $00, $00, $02, $40, $00, $00, $00, $00, $00, $8E, $28
; Loot: 
org $D05238
db $E8, $E0, $EB, $00

; Enemy: Barette
; Stats: 
org $D011E0
db $15, $3D, $0A, $00, $37, $00, $14, $0A, $E8, $03, $00, $00, $1A, $04, $AD, $01, $00, $00, $10, $00, $00, $00, $00, $02, $40, $00, $00, $00, $00, $00, $8F, $29
; Loot: 
org $D0523C
db $00, $E0, $E1, $00

; Enemy: Sekmet
; Stats: 
org $D01200
db $2B, $46, $0B, $00, $0A, $00, $05, $14, $70, $17, $00, $00, $03, $00, $0A, $00, $00, $00, $F4, $40, $00, $00, $00, $00, $A4, $00, $00, $00, $00, $00, $90, $29
; Loot: 
org $D05240
db $B0, $E1, $A0, $00

; Enemy: BlandLamia
; Stats: 
org $D01220
db $1B, $36, $06, $00, $0A, $00, $05, $0A, $34, $08, $58, $02, $BC, $02, $B3, $01, $00, $00, $00, $00, $00, $00, $00, $02, $85, $00, $00, $00, $00, $00, $91, $28
; Loot: 
org $D05244
db $CC, $E5, $99, $00

; Enemy: Pyra Layer
; Stats: 
org $D01240
db $1A, $3D, $08, $00, $0A, $00, $05, $05, $98, $08, $E8, $03, $20, $03, $B6, $01, $00, $20, $30, $60, $10, $00, $40, $04, $05, $00, $88, $00, $00, $00, $92, $29
; Loot: 
org $D05248
db $00, $F3, $E0, $00

; Enemy: Nile
; Stats: 
org $D01260
db $15, $33, $08, $00, $23, $00, $06, $00, $B0, $04, $0A, $00, $E0, $01, $B9, $01, $00, $00, $F4, $80, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $93, $26
; Loot: 
org $D0524C
db $00, $00, $F5, $00

; Enemy: Archaesaur
; Stats: 
org $D01280
db $21, $43, $0B, $00, $14, $00, $05, $00, $E8, $26, $E8, $03, $08, $07, $BC, $01, $00, $08, $74, $7F, $10, $08, $00, $21, $31, $00, $00, $00, $00, $00, $94, $23
; Loot: 
org $D05250
db $E4, $00, $00, $EA

; Enemy: ZephyrZone
; Stats: 
org $D012A0
db $1E, $37, $0A, $1E, $19, $3C, $1E, $1E, $C4, $0E, $88, $13, $D0, $07, $F4, $01, $00, $00, $D0, $00, $00, $00, $00, $00, $A4, $00, $00, $00, $00, $00, $95, $35
; Loot: 
org $D05254
db $E3, $E0, $E3, $00

; Enemy: ExdethSoul
; Stats: 
org $D012C0
db $28, $4D, $0D, $32, $28, $00, $2D, $00, $20, $4E, $20, $4E, $00, $00, $00, $00, $00, $20, $7F, $FF, $10, $00, $00, $10, $A1, $98, $00, $00, $00, $00, $96, $01
; Loot: 
org $D05258
db $00, $00, $00, $EB

; Enemy: Slug
; Stats: 
org $D012E0
db $14, $3E, $07, $0A, $0A, $00, $05, $00, $1C, $07, $64, $00, $4C, $04, $C5, $01, $00, $00, $30, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $97, $2A
; Loot: 
org $D0525C
db $E1, $E0, $00, $00

; Enemy: GloomWidow
; Stats: 
org $D01300
db $14, $3C, $08, $00, $0A, $00, $05, $00, $1C, $07, $00, $00, $4C, $04, $C8, $01, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $98, $2A
; Loot: 
org $D05260
db $E1, $E0, $00, $00

; Enemy: Mukare
; Stats: 
org $D01320
db $19, $41, $08, $00, $0A, $00, $05, $0A, $D0, $07, $C8, $00, $B0, $04, $CB, $01, $00, $20, $30, $00, $00, $00, $40, $00, $A0, $00, $88, $00, $00, $00, $99, $2A
; Loot: 
org $D05264
db $69, $A8, $AB, $00

; Enemy: Ixecrator
; Stats: 
org $D01340
db $23, $34, $07, $00, $0A, $00, $05, $32, $D0, $07, $10, $27, $14, $05, $CE, $01, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $9A, $2A
; Loot: 
org $D05268
db $E2, $00, $B8, $00

; Enemy: Owazoral
; Stats: 
org $D01360
db $18, $3C, $0A, $00, $0A, $00, $05, $14, $6C, $07, $64, $00, $E2, $04, $D1, $01, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $9B, $2B
; Loot: 
org $D0526C
db $AE, $E1, $E6, $00

; Enemy: ShdwDancer
; Stats: 
org $D01380
db $1E, $4B, $09, $14, $0A, $00, $05, $1E, $80, $11, $64, $00, $0E, $06, $D4, $01, $00, $00, $31, $00, $00, $00, $40, $00, $80, $00, $88, $00, $00, $00, $9C, $2B
; Loot: 
org $D05270
db $6D, $BA, $ED, $00

; Enemy: Cursed One
; Stats: 
org $D013A0
db $14, $41, $09, $00, $0A, $00, $05, $05, $BC, $07, $00, $00, $B0, $04, $D7, $01, $00, $00, $44, $80, $00, $08, $00, $00, $05, $00, $00, $00, $00, $00, $9D, $2C
; Loot: 
org $D05274
db $E6, $00, $E6, $00

; Enemy: Slownin
; Stats: 
org $D013C0
db $23, $51, $0B, $1E, $0A, $00, $05, $28, $60, $09, $00, $00, $78, $05, $DA, $01, $2F, $00, $11, $50, $10, $00, $00, $00, $80, $00, $00, $00, $00, $00, $9E, $2B
; Loot: 
org $D05278
db $CD, $29, $2B, $00

; Enemy: TinyMage
; Stats: 
org $D013E0
db $14, $50, $10, $0F, $28, $00, $00, $00, $04, $06, $F4, $01, $0C, $03, $DD, $01, $00, $00, $B0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $9F, $2B
; Loot: 
org $D0527C
db $E2, $00, $E0, $00

; Enemy: Dim Master
; Stats: 
org $D01400
db $14, $52, $10, $14, $2D, $14, $00, $1E, $28, $0A, $E8, $03, $84, $03, $E0, $01, $00, $00, $D0, $28, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $A0, $2B
; Loot: 
org $D05280
db $3B, $E0, $E1, $00

; Enemy: BoneDragon
; Stats: 
org $D01420
db $1E, $2D, $0A, $0A, $28, $00, $14, $0A, $B8, $0B, $F4, $01, $00, $00, $00, $00, $00, $08, $34, $E0, $00, $08, $00, $01, $31, $00, $00, $00, $00, $00, $A1, $25
; Loot: 
org $D05284
db $00, $00, $00, $00

; Enemy: Flare
; Stats: 
org $D01440
db $15, $59, $0F, $00, $23, $0A, $00, $0A, $B8, $0B, $E8, $03, $4C, $04, $E6, $01, $00, $00, $A0, $60, $10, $00, $00, $00, $80, $00, $00, $00, $00, $00, $A2, $2C
; Loot: 
org $D05288
db $4D, $E3, $92, $00

; Enemy: DuelKnight
; Stats: 
org $D01460
db $01, $4E, $0B, $00, $05, $00, $00, $00, $5C, $08, $00, $00, $4C, $04, $E9, $01, $00, $00, $C0, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $A3, $2C
; Loot: 
org $D0528C
db $C4, $F3, $F3, $00

; Enemy: Ion
; Stats: 
org $D01480
db $14, $50, $0B, $00, $19, $00, $00, $00, $5C, $08, $00, $00, $B0, $04, $EC, $01, $00, $00, $C0, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $A4, $2C
; Loot: 
org $D05290
db $00, $F2, $F2, $00

; Enemy: Berserker
; Stats: 
org $D014A0
db $14, $4D, $0B, $00, $05, $00, $00, $00, $5C, $08, $00, $00, $E8, $03, $EF, $01, $00, $00, $C0, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $A5, $2C
; Loot: 
org $D05294
db $44, $F4, $69, $00

; Enemy: ZombieDrgn
; Stats: 
org $D014C0
db $23, $2F, $0A, $0A, $14, $00, $14, $0A, $A0, $0F, $E8, $03, $00, $00, $00, $00, $00, $08, $74, $60, $00, $08, $00, $01, $31, $00, $00, $00, $00, $00, $A6, $25
; Loot: 
org $D05298
db $00, $00, $00, $00

; Enemy: Druid
; Stats: 
org $D014E0
db $1E, $3C, $0B, $00, $0A, $1E, $05, $32, $98, $08, $84, $03, $DC, $05, $F5, $01, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $A7, $2C
; Loot: 
org $D0529C
db $BC, $E0, $E4, $00

; Enemy: Iron Dress
; Stats: 
org $D01500
db $1E, $46, $0B, $0A, $32, $00, $0F, $0A, $98, $08, $00, $00, $14, $05, $F8, $01, $00, $00, $00, $00, $00, $00, $00, $02, $04, $00, $00, $00, $00, $00, $A8, $2C
; Loot: 
org $D052A0
db $00, $E0, $F0, $00

; Enemy: Statue
; Stats: 
org $D01520
db $1A, $4C, $0A, $00, $14, $00, $05, $14, $E4, $0C, $14, $00, $64, $00, $FB, $01, $56, $00, $F4, $F0, $10, $00, $00, $04, $00, $00, $00, $00, $00, $00, $A9, $2D
; Loot: 
org $D052A4
db $1E, $E1, $EC, $00

; Enemy: Blizzard
; Stats: 
org $D01540
db $14, $4D, $0B, $00, $0A, $00, $05, $32, $FC, $08, $00, $00, $B0, $04, $FE, $01, $00, $00, $10, $00, $00, $02, $00, $01, $04, $00, $00, $00, $00, $00, $AA, $2D
; Loot: 
org $D052A8
db $E1, $00, $E1, $00

; Enemy: Isteritos
; Stats: 
org $D01560
db $19, $55, $0A, $14, $1E, $00, $1E, $5A, $FC, $08, $00, $00, $D0, $07, $01, $02, $00, $00, $30, $60, $00, $00, $00, $00, $14, $00, $00, $00, $00, $00, $AB, $2D
; Loot: 
org $D052AC
db $3E, $E8, $EA, $00

; Enemy: Spizner
; Stats: 
org $D01580
db $14, $47, $0B, $00, $0A, $00, $00, $00, $FC, $08, $00, $00, $E2, $04, $04, $02, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $AC, $27
; Loot: 
org $D052B0
db $00, $E0, $E0, $00

; Enemy: Unknown
; Stats: 
org $D015A0
db $14, $3D, $09, $00, $28, $00, $00, $00, $AC, $0D, $F4, $01, $38, $04, $07, $02, $00, $00, $84, $F4, $10, $08, $20, $90, $01, $00, $00, $00, $40, $00, $AD, $2F
; Loot: 
org $D052B4
db $E1, $E0, $F2, $00

; Enemy: Unknown
; Stats: 
org $D015C0
db $14, $3E, $08, $00, $1E, $00, $00, $00, $C4, $09, $F4, $01, $46, $05, $0A, $02, $00, $00, $44, $20, $00, $08, $20, $10, $01, $00, $00, $00, $40, $00, $AE, $2E
; Loot: 
org $D052B8
db $E1, $E0, $F3, $00

; Enemy: Unknown
; Stats: 
org $D015E0
db $14, $3C, $06, $00, $19, $00, $00, $00, $C4, $09, $F4, $01, $B0, $04, $0D, $02, $00, $00, $34, $F0, $10, $08, $20, $10, $01, $00, $00, $00, $40, $00, $AF, $29
; Loot: 
org $D052BC
db $E1, $E0, $F4, $00

; Enemy: Unknown
; Stats: 
org $D01600
db $14, $43, $0A, $00, $23, $00, $00, $00, $64, $19, $F4, $01, $D0, $07, $10, $02, $00, $20, $F4, $00, $00, $08, $20, $10, $01, $00, $00, $00, $40, $00, $B0, $2F
; Loot: 
org $D052C0
db $E1, $E0, $F5, $00

; Enemy: MercuryBat
; Stats: 
org $D01620
db $14, $41, $0A, $32, $0A, $00, $00, $00, $F4, $01, $F4, $01, $FC, $03, $13, $02, $00, $20, $00, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $B1, $2E
; Loot: 
org $D052C4
db $00, $E0, $E1, $00

; Enemy: Coral
; Stats: 
org $D01640
db $19, $42, $0B, $00, $14, $00, $00, $00, $66, $08, $64, $00, $F4, $04, $16, $02, $00, $00, $31, $60, $00, $88, $00, $04, $00, $00, $00, $00, $00, $00, $B2, $2E
; Loot: 
org $D052C8
db $F5, $E0, $00, $00

; Enemy: Tonberi
; Stats: 
org $D01660
db $31, $77, $0E, $1E, $0A, $00, $00, $5A, $E1, $99, $64, $00, $F4, $04, $19, $02, $00, $00, $F0, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $B3, $2E
; Loot: 
org $D052CC
db $E3, $90, $AE, $00

; Enemy: Gel Water
; Stats: 
org $D01680
db $16, $43, $0A, $00, $14, $00, $00, $00, $E4, $0C, $64, $00, $F4, $04, $1C, $02, $00, $00, $FF, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $B4, $2E
; Loot: 
org $D052D0
db $E1, $E0, $F4, $00

; Enemy: Fall Guard
; Stats: 
org $D016A0
db $14, $3C, $0B, $00, $1E, $00, $00, $32, $A0, $0F, $64, $00, $37, $05, $1F, $02, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $B5, $2F
; Loot: 
org $D052D4
db $F6, $96, $C1, $00

; Enemy: Alcumia
; Stats: 
org $D016C0
db $23, $46, $0B, $32, $0A, $5A, $0A, $00, $94, $11, $3C, $0F, $E8, $03, $22, $02, $00, $00, $F4, $74, $00, $00, $00, $00, $A0, $00, $00, $00, $00, $00, $B6, $2F
; Loot: 
org $D052D8
db $6B, $E5, $E3, $00

; Enemy: Red Dragon
; Stats: 
org $D016E0
db $23, $53, $0B, $00, $14, $00, $00, $00, $4C, $1D, $00, $00, $D0, $07, $25, $02, $00, $00, $10, $00, $00, $00, $00, $00, $11, $00, $20, $00, $00, $00, $B7, $2C
; Loot: 
org $D052DC
db $EA, $FC, $EB, $00

; Enemy: Hydra
; Stats: 
org $D01700
db $23, $55, $0B, $00, $0A, $00, $00, $00, $70, $17, $00, $00, $D0, $07, $28, $02, $00, $20, $10, $00, $00, $00, $00, $00, $11, $00, $20, $00, $00, $00, $B8, $2E
; Loot: 
org $D052E0
db $EA, $FE, $EB, $00

; Enemy: BoneDragon
; Stats: 
org $D01720
db $23, $55, $0B, $00, $1E, $00, $00, $00, $A8, $16, $00, $00, $D0, $07, $2B, $02, $00, $00, $10, $00, $00, $00, $00, $00, $11, $00, $20, $00, $00, $00, $B9, $2C
; Loot: 
org $D052E4
db $EA, $FD, $EB, $00

; Enemy: Grenade
; Stats: 
org $D01740
db $19, $4B, $0C, $00, $0A, $00, $00, $00, $B8, $0B, $F4, $01, $4C, $04, $2E, $02, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BA, $2F
; Loot: 
org $D052E8
db $C4, $E1, $E1, $00

; Enemy: SwrdDancer
; Stats: 
org $D01760
db $19, $4B, $0C, $00, $0F, $00, $00, $00, $B8, $0B, $00, $00, $60, $09, $31, $02, $58, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $BB, $30
; Loot: 
org $D052EC
db $6E, $8C, $58, $00

; Enemy: Bardandels
; Stats: 
org $D01780
db $19, $4B, $0C, $00, $0A, $00, $00, $0A, $B8, $0B, $64, $00, $64, $05, $34, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BC, $30
; Loot: 
org $D052F0
db $BC, $E7, $52, $00

; Enemy: DoomDealer
; Stats: 
org $D017A0
db $19, $4B, $0C, $00, $0A, $5A, $00, $1E, $B8, $0B, $64, $00, $78, $05, $37, $02, $00, $00, $00, $00, $00, $00, $00, $00, $A0, $00, $00, $00, $00, $00, $BD, $3F
; Loot: 
org $D052F4
db $92, $E6, $E4, $00

; Enemy: Anku Heggu
; Stats: 
org $D017C0
db $19, $4B, $0C, $00, $0A, $00, $00, $19, $DC, $0A, $64, $00, $E2, $04, $3A, $02, $00, $00, $10, $00, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $BE, $30
; Loot: 
org $D052F8
db $E1, $E0, $E1, $00

; Enemy: Ammona
; Stats: 
org $D017E0
db $19, $47, $0C, $00, $0A, $00, $00, $00, $DC, $0A, $00, $00, $92, $04, $3D, $02, $00, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BF, $30
; Loot: 
org $D052FC
db $E0, $E1, $E6, $00

; Enemy: Land Crawl
; Stats: 
org $D01800
db $19, $64, $10, $00, $14, $00, $05, $21, $F0, $55, $F4, $01, $C6, $0C, $40, $02, $00, $00, $74, $60, $00, $20, $00, $00, $44, $00, $00, $00, $00, $00, $C0, $30
; Loot: 
org $D05300
db $14, $11, $E3, $00

; Enemy: Chamcubia
; Stats: 
org $D01820
db $14, $4D, $0C, $0A, $1E, $00, $0A, $00, $D8, $0E, $2C, $01, $DC, $05, $43, $02, $4C, $20, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $C1, $31
; Loot: 
org $D05304
db $95, $CA, $49, $00

; Enemy: Bella Donna
; Stats: 
org $D01840
db $14, $4C, $0C, $0A, $1E, $00, $05, $00, $3C, $0F, $2C, $01, $DC, $05, $46, $02, $39, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $C2, $31
; Loot: 
org $D05308
db $BE, $CF, $CA, $00

; Enemy: Cherie
; Stats: 
org $D01860
db $14, $4E, $0C, $0A, $1E, $00, $00, $00, $A0, $0F, $2C, $01, $DC, $05, $49, $02, $36, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $C3, $31
; Loot: 
org $D0530C
db $B2, $D0, $B5, $00

; Enemy: White Flame
; Stats: 
org $D01880
db $19, $41, $0C, $21, $32, $00, $23, $0A, $40, $06, $64, $00, $96, $05, $4C, $02, $00, $20, $34, $60, $00, $10, $00, $00, $00, $00, $88, $00, $00, $00, $C4, $31
; Loot: 
org $D05310
db $E3, $E9, $E2, $00

; Enemy: MossFungus
; Stats: 
org $D018A0
db $19, $4B, $0C, $00, $0F, $00, $00, $42, $88, $13, $C8, $00, $F0, $05, $4F, $02, $00, $00, $04, $00, $00, $08, $00, $81, $04, $00, $00, $00, $00, $00, $C5, $30
; Loot: 
org $D05314
db $0A, $E1, $E8, $00

; Enemy: Orcat
; Stats: 
org $D018C0
db $16, $4B, $0C, $00, $21, $00, $10, $0A, $34, $08, $00, $00, $46, $05, $52, $02, $00, $00, $30, $00, $00, $10, $00, $A0, $00, $00, $00, $00, $00, $00, $C6, $31
; Loot: 
org $D05318
db $EC, $EB, $E4, $00

; Enemy: Iron Giant
; Stats: 
org $D018E0
db $37, $64, $0D, $00, $32, $32, $00, $5A, $50, $46, $10, $27, $10, $27, $55, $02, $27, $00, $3F, $FF, $10, $00, $00, $80, $00, $18, $00, $00, $00, $00, $C7, $3D
; Loot: 
org $D0531C
db $9C, $8B, $00, $F2

; Enemy: Death Claw
; Stats: 
org $D01900
db $19, $46, $09, $00, $1D, $32, $00, $00, $A0, $0F, $C8, $00, $A4, $06, $58, $02, $08, $00, $FF, $00, $00, $00, $00, $80, $00, $18, $00, $00, $00, $00, $C8, $33
; Loot: 
org $D05320
db $28, $F6, $EC, $00

; Enemy: K.Behemoth
; Stats: 
org $D01920
db $19, $5F, $0D, $00, $0F, $00, $00, $4B, $50, $46, $2C, $01, $00, $00, $E8, $03, $00, $00, $10, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $C9, $52
; Loot: 
org $D05324
db $55, $E4, $1E, $00

; Enemy: Farfarerro
; Stats: 
org $D01940
db $19, $5A, $02, $14, $0F, $46, $00, $14, $14, $0A, $E5, $01, $6E, $05, $5E, $02, $36, $00, $00, $00, $00, $00, $00, $08, $80, $00, $00, $00, $40, $00, $CA, $30
; Loot: 
org $D05328
db $36, $F4, $E9, $00

; Enemy: Necromancr
; Stats: 
org $D01960
db $1B, $4F, $0D, $00, $0F, $00, $1E, $32, $F4, $1A, $2C, $01, $00, $00, $E8, $03, $00, $20, $00, $00, $00, $00, $00, $80, $01, $00, $00, $00, $00, $00, $CB, $36
; Loot: 
org $D0532C
db $BF, $E6, $E6, $00

; Enemy: Ninja
; Stats: 
org $D01980
db $1A, $5A, $0C, $46, $0F, $00, $00, $5A, $88, $13, $C8, $00, $08, $07, $64, $02, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $88, $00, $00, $00, $CC, $34
; Loot: 
org $D05330
db $2D, $5A, $5B, $00

; Enemy: Great Drgn
; Stats: 
org $D019A0
db $14, $64, $0D, $00, $14, $00, $14, $21, $10, $27, $E8, $03, $6C, $07, $67, $02, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $CD, $33
; Loot: 
org $D05334
db $F3, $EA, $EA, $00

; Enemy: AvisDragon
; Stats: 
org $D019C0
db $16, $64, $0B, $00, $0F, $00, $0F, $21, $58, $1B, $E8, $03, $E4, $07, $6A, $02, $00, $00, $B0, $70, $10, $00, $00, $80, $28, $00, $00, $00, $00, $00, $CE, $31
; Loot: 
org $D05338
db $46, $1A, $00, $EA

; Enemy: Gorchimera
; Stats: 
org $D019E0
db $14, $64, $0D, $00, $0F, $00, $00, $28, $10, $27, $E8, $03, $00, $00, $84, $03, $00, $00, $30, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $CF, $33
; Loot: 
org $D0533C
db $86, $E1, $93, $00

; Enemy: LevelCheck
; Stats: 
org $D01A00
db $14, $5A, $0A, $00, $14, $00, $00, $00, $88, $13, $F4, $01, $F0, $05, $70, $02, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $D0, $36
; Loot: 
org $D05340
db $E2, $E0, $E3, $00

; Enemy: Mind Mage
; Stats: 
org $D01A20
db $14, $5A, $04, $00, $14, $00, $00, $42, $5C, $12, $F4, $01, $00, $00, $20, $03, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $D1, $35
; Loot: 
org $D05344
db $07, $97, $AD, $00

; Enemy: Fury
; Stats: 
org $D01A40
db $14, $50, $0A, $00, $14, $00, $00, $14, $88, $13, $E8, $03, $CA, $08, $76, $02, $00, $00, $00, $00, $00, $00, $00, $80, $20, $00, $00, $00, $00, $00, $D2, $32
; Loot: 
org $D05348
db $B3, $CA, $AC, $00

; Enemy: Thing
; Stats: 
org $D01A60
db $14, $64, $07, $32, $32, $00, $00, $21, $03, $00, $F4, $01, $00, $00, $D0, $07, $00, $00, $34, $80, $00, $FF, $00, $00, $20, $00, $00, $00, $00, $00, $D3, $34
; Loot: 
org $D0534C
db $88, $E2, $8F, $00

; Enemy: Mover
; Stats: 
org $D01A80
db $23, $80, $03, $00, $28, $00, $00, $0A, $10, $27, $F4, $01, $00, $00, $50, $C3, $00, $00, $F4, $00, $00, $08, $00, $01, $21, $00, $00, $00, $00, $00, $D4, $34
; Loot: 
org $D05350
db $FD, $FC, $FE, $00

; Enemy: CrysDragon
; Stats: 
org $D01AA0
db $32, $80, $0D, $00, $28, $00, $14, $32, $5C, $44, $10, $27, $00, $00, $10, $27, $00, $00, $7F, $00, $00, $47, $40, $00, $30, $10, $08, $00, $01, $00, $D5, $3E
; Loot: 
org $D05354
db $20, $E3, $A0, $00

; Enemy: Achelone
; Stats: 
org $D01AC0
db $14, $64, $0D, $46, $46, $00, $00, $21, $80, $0C, $00, $00, $C8, $05, $82, $02, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $D6, $34
; Loot: 
org $D05358
db $57, $E7, $E3, $00

; Enemy: Bodyguard
; Stats: 
org $D01AE0
db $14, $6D, $0D, $0A, $05, $00, $00, $32, $78, $0F, $00, $00, $D0, $07, $85, $02, $2E, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $D7, $34
; Loot: 
org $D0535C
db $30, $F1, $B9, $00

; Enemy: Gilgamesh
; Stats: 
org $D01B00
db $2F, $6D, $0D, $05, $00, $00, $23, $00, $88, $90, $00, $00, $00, $00, $0F, $00, $30, $00, $FF, $FF, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $D8, $3B
; Loot: 
org $D05360
db $00, $C6, $67, $00

; Enemy: Sahagin
; Stats: 
org $D01B20
db $1A, $1B, $05, $00, $00, $00, $05, $00, $26, $02, $0A, $00, $B4, $00, $64, $00, $00, $80, $00, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $D9, $14
; Loot: 
org $D05364
db $E0, $E0, $E0, $00

; Enemy: Th.Anemone
; Stats: 
org $D01B40
db $19, $1B, $05, $00, $00, $0A, $05, $00, $58, $02, $64, $00, $A0, $00, $64, $00, $00, $00, $30, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $DA, $15
; Loot: 
org $D05368
db $00, $00, $E0, $FE

; Enemy: Sea Avis
; Stats: 
org $D01B60
db $32, $1E, $05, $5A, $0A, $0A, $23, $50, $19, $00, $64, $00, $C8, $00, $64, $00, $00, $A0, $30, $00, $00, $00, $40, $00, $00, $00, $88, $00, $00, $00, $DB, $13
; Loot: 
org $D0536C
db $EC, $00, $EC, $00

; Enemy: Corvette
; Stats: 
org $D01B80
db $23, $28, $09, $00, $00, $00, $19, $00, $F0, $0A, $00, $00, $00, $00, $E8, $03, $00, $20, $F0, $F0, $00, $80, $00, $04, $00, $00, $88, $00, $00, $00, $DC, $1D
; Loot: 
org $D05370
db $1A, $00, $E1, $00

; Enemy: Armon
; Stats: 
org $D01BA0
db $19, $5A, $01, $00, $23, $00, $00, $00, $DC, $05, $2C, $01, $00, $00, $E4, $02, $00, $00, $00, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $DD, $19
; Loot: 
org $D05374
db $E1, $E8, $E1, $00

; Enemy: SeaScorpio
; Stats: 
org $D01BC0
db $23, $3B, $12, $50, $14, $00, $00, $00, $F4, $01, $00, $00, $00, $00, $A8, $02, $00, $80, $10, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $DE, $1A
; Loot: 
org $D05378
db $00, $E0, $E0, $00

; Enemy: Silvune
; Stats: 
org $D01BE0
db $3B, $4D, $13, $28, $28, $0A, $1E, $5A, $38, $4A, $10, $27, $00, $00, $10, $27, $49, $00, $00, $00, $00, $F0, $00, $00, $A0, $00, $00, $00, $00, $00, $DF, $1B
; Loot: 
org $D0537C
db $B4, $E5, $BC, $00

; Enemy: Gel Fish
; Stats: 
org $D01C00
db $1E, $00, $00, $00, $00, $00, $00, $00, $E8, $03, $00, $00, $00, $00, $1C, $02, $00, $00, $10, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $E0, $1C
; Loot: 
org $D05380
db $00, $E0, $E1, $00

; Enemy: Giant Bird
; Stats: 
org $D01C20
db $37, $4B, $13, $05, $14, $00, $0A, $32, $28, $23, $F4, $01, $00, $00, $88, $13, $00, $20, $30, $00, $00, $00, $40, $00, $28, $00, $88, $00, $00, $00, $E1, $1D
; Loot: 
org $D05384
db $2E, $E1, $F2, $00

; Enemy: Sea Devil
; Stats: 
org $D01C40
db $14, $47, $08, $00, $0F, $00, $0A, $00, $88, $13, $E8, $03, $00, $00, $B8, $0B, $00, $00, $00, $00, $00, $80, $00, $04, $00, $00, $00, $00, $00, $00, $E2, $1E
; Loot: 
org $D05388
db $14, $E1, $E7, $00

; Enemy: Stingray
; Stats: 
org $D01C60
db $46, $42, $10, $28, $3C, $46, $14, $0A, $30, $75, $E8, $03, $00, $00, $00, $00, $00, $20, $F0, $00, $00, $80, $00, $00, $20, $00, $00, $00, $00, $00, $E3, $5D
; Loot: 
org $D0538C
db $56, $EB, $4F, $00

; Enemy: ????
; Stats: 
org $D01C80
db $32, $32, $0A, $1E, $1E, $00, $1E, $00, $D0, $07, $F4, $01, $88, $13, $01, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $20, $18, $00, $00, $00, $00, $E4, $21
; Loot: 
org $D05390
db $00, $E0, $E0, $00

; Enemy: Golem
; Stats: 
org $D01CA0
db $3C, $32, $0A, $00, $32, $00, $32, $00, $30, $75, $E8, $03, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $00, $00, $00, $20, $18, $00, $00, $00, $00, $E5, $47
; Loot: 
org $D05394
db $00, $EC, $00, $FB

; Enemy: Chimera
; Stats: 
org $D01CC0
db $14, $00, $00, $00, $00, $00, $00, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $E6, $00
; Loot: 
org $D05398
db $00, $00, $00, $00

; Enemy: Shiva
; Stats: 
org $D01CE0
db $19, $00, $00, $00, $00, $32, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $E7, $33
; Loot: 
org $D0539C
db $00, $E0, $FD, $00

; Enemy: Ifrit
; Stats: 
org $D01D00
db $19, $00, $00, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $E8, $01
; Loot: 
org $D053A0
db $00, $E0, $FC, $00

; Enemy: Ramuh
; Stats: 
org $D01D20
db $19, $00, $00, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $E9, $01
; Loot: 
org $D053A4
db $00, $E0, $FE, $00

; Enemy: Gala Cat
; Stats: 
org $D01D40
db $19, $37, $08, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $EA, $2F
; Loot: 
org $D053A8
db $00, $E0, $E2, $00

; Enemy: Wyvern
; Stats: 
org $D01D60
db $19, $28, $0A, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $EB, $2F
; Loot: 
org $D053AC
db $00, $E0, $E1, $00

; Enemy: Elf Toad
; Stats: 
org $D01D80
db $19, $28, $0A, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $EC, $2F
; Loot: 
org $D053B0
db $00, $E0, $E5, $00

; Enemy: Crew Dust
; Stats: 
org $D01DA0
db $19, $28, $0A, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $ED, $2F
; Loot: 
org $D053B4
db $00, $E0, $E9, $00

; Enemy: Whirl Demon
; Stats: 
org $D01DC0
db $19, $28, $0A, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $EE, $2F
; Loot: 
org $D053B8
db $00, $E0, $E3, $00

; Enemy: ZombieDrgn
; Stats: 
org $D01DE0
db $19, $32, $0A, $00, $00, $00, $00, $00, $58, $1B, $10, $27, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $EF, $2F
; Loot: 
org $D053BC
db $00, $E0, $EA, $00

; Enemy: D.Chimera
; Stats: 
org $D01E00
db $28, $3C, $08, $00, $00, $00, $00, $00, $8C, $0A, $E8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F0, $2D
; Loot: 
org $D053C0
db $00, $E1, $F5, $00

; Enemy: AdamaGolem
; Stats: 
org $D01E20
db $23, $3C, $09, $00, $00, $00, $00, $00, $D0, $07, $E8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F1, $2C
; Loot: 
org $D053C4
db $00, $E1, $EC, $00

; Enemy: Ziggurat
; Stats: 
org $D01E40
db $23, $3C, $08, $00, $00, $00, $00, $00, $B8, $0B, $E8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F2, $2B
; Loot: 
org $D053C8
db $9F, $F3, $00, $F2

; Enemy: LonkaKnght
; Stats: 
org $D01E60
db $23, $46, $0A, $00, $00, $00, $00, $00, $D0, $07, $E8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F3, $2A
; Loot: 
org $D053CC
db $00, $F6, $FC, $00

; Enemy: BioSoldier
; Stats: 
org $D01E80
db $32, $3C, $0B, $00, $00, $00, $00, $00, $D0, $07, $88, $13, $00, $00, $00, $00, $00, $00, $04, $00, $00, $08, $00, $00, $80, $00, $00, $00, $00, $00, $F4, $29
; Loot: 
org $D053D0
db $8E, $E8, $25, $00

; Enemy: Lunenta
; Stats: 
org $D01EA0
db $2D, $3C, $09, $00, $32, $00, $32, $00, $40, $06, $10, $27, $00, $00, $00, $00, $00, $00, $D0, $80, $00, $00, $20, $00, $04, $00, $00, $00, $00, $00, $F5, $28
; Loot: 
org $D053D4
db $00, $E9, $E8, $00

; Enemy: Tote Avis
; Stats: 
org $D01EC0
db $32, $46, $0F, $14, $0A, $0A, $0A, $3C, $42, $81, $E8, $03, $00, $00, $00, $00, $00, $20, $F4, $E8, $10, $40, $00, $00, $28, $00, $88, $00, $00, $00, $F6, $2F
; Loot: 
org $D053D8
db $E2, $68, $68, $00

; Enemy: Belfegor
; Stats: 
org $D01EE0
db $28, $49, $0A, $0F, $1E, $32, $0A, $46, $70, $17, $F4, $01, $00, $00, $B6, $03, $00, $00, $10, $00, $00, $20, $00, $00, $04, $00, $00, $00, $00, $00, $F7, $37
; Loot: 
org $D053DC
db $64, $59, $CD, $00

; Enemy: Imp
; Stats: 
org $D01F00
db $28, $41, $00, $00, $00, $00, $00, $00, $E8, $03, $F4, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $84, $00, $00, $00, $00, $00, $F8, $34
; Loot: 
org $D053E0
db $E1, $E0, $E1, $00

; Enemy: Owazoral
; Stats: 
org $D01F20
db $28, $3C, $00, $00, $00, $00, $00, $00, $E8, $03, $F4, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $00, $00, $84, $00, $00, $00, $00, $00, $F9, $35
; Loot: 
org $D053E4
db $E1, $E0, $E2, $00

; Enemy: Garkimasra
; Stats: 
org $D01F40
db $28, $3C, $0A, $32, $41, $3C, $3C, $32, $9A, $02, $88, $13, $00, $00, $01, $00, $00, $00, $00, $00, $00, $30, $00, $00, $84, $00, $00, $00, $00, $00, $FA, $36
; Loot: 
org $D053E8
db $E1, $E0, $E3, $00

; Enemy: Gabbldegak
; Stats: 
org $D01F60
db $19, $27, $0A, $0F, $05, $00, $05, $00, $B0, $04, $64, $00, $7A, $03, $E8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $84, $00, $00, $00, $00, $00, $FB, $18
; Loot: 
org $D053EC
db $E1, $E0, $E4, $00

; Enemy: Gil Turtle
; Stats: 
org $D01F80
db $42, $73, $0D, $28, $28, $5A, $37, $28, $00, $80, $40, $1F, $00, $00, $88, $13, $00, $10, $FF, $FC, $10, $ED, $00, $02, $21, $18, $00, $00, $60, $00, $FC, $39
; Loot: 
org $D053F0
db $E1, $E0, $00, $00

; Enemy: Omega
; Stats: 
org $D01FA0
db $4C, $73, $19, $5F, $BE, $C7, $96, $5A, $EA, $D8, $1C, $ED, $00, $00, $50, $C3, $00, $00, $F5, $FC, $00, $FB, $20, $04, $20, $98, $80, $00, $B0, $00, $FD, $77
; Loot: 
org $D053F4
db $00, $00, $00, $F8

; Enemy: Big Boss
; Stats: 
org $D01FC0
db $1C, $FA, $0A, $63, $FA, $FA, $FA, $63, $03, $00, $10, $27, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $FF, $21, $98, $00, $00, $00, $00, $FE, $0D
; Loot: 
org $D053F8
db $00, $00, $00, $00

; Enemy: <blank>
; Stats: 
org $D01FE0
db $14, $00, $00, $00, $00, $00, $00, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $FF, $00
; Loot: 
org $D053FC
db $00, $00, $00, $00

; Enemy: WingRaptor
; Stats: 
org $D02000
db $20, $1e, $06, $00, $00, $01, $0a, $0a, $dc, $05, $19, $00, $d8, $0e, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $00, $01
; Loot: 
org $D05000
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 250 -> 1500
; ENEMY: WingRaptor

; Enemy: WingRaptor
; Stats: 
org $D02020
db $20, $1e, $07, $28, $14, $01, $0a, $0a, $dc, $05, $00, $00, $d8, $0e, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $01, $02
; Loot: 
org $D05004
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 250 -> 1500
; ENEMY: WingRaptor
; ENEMY: WingRaptor

; Enemy: Karlabos
; Stats: 
org $D02040
db $2d, $54, $08, $00, $08, $00, $14, $00, $98, $3a, $64, $00, $d0, $20, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $04, $20, $18, $00, $00, $00, $00, $02, $06
; Loot: 
org $D05008
db $00, $E0, $00, $F0
; --------------------------
; Original boss Karlabos rank 1 -> Randomized boss Carbunkle, Carbunkle rank 7
; HP: 650 -> 15000
; ENEMY: Karlabos

; Enemy: Twin Tania
; Stats: 
org $D02060
db $51, $2d, $0e, $00, $00, $24, $00, $00, $8a, $4d, $10, $27, $54, $3d, $00, $00, $00, $00, $14, $F8, $00, $00, $00, $90, $04, $18, $00, $00, $00, $00, $03, $1e
; Loot: 
org $D0500C
db $00, $6A, $2E, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Minotauros rank 8
; HP: 50000 -> 19850
; ENEMY: Twin Tania
; Skills: ['MiniBlaze', 'Blaze', 'Fight', 'MiniBlaze', 'Blaze', 'Fight', 'MindBlast', 'WindSlash', 'BreathWing', 'TidalWave', 'Flare']
; New skill: MiniBlaze
org $d0c2f6
db $CB
; New skill: Blaze
org $d0c2f7
db $CD
; New skill: Fight
org $d0c2f8
db $80
; New skill: MiniBlaze
org $d0c2fa
db $CB
; New skill: Blaze
org $d0c2fb
db $CD
; New skill: Fight
org $d0c2fc
db $80
; New skill: MindBlast
org $d0c301
db $97
; New skill: WindSlash
org $d0c302
db $AB
; New skill: BreathWing
org $d0c303
db $DA
; New skill: TidalWave
org $d0c310
db $D1
; New skill: Flare
org $d0c31a
db $33
; ENEMY: Twin Tania
; Skills: ['MegaFlare']
; New skill: MegaFlare
org $d0b2d8
db $D2

; Enemy: Siren
; Stats: 
org $D02080
db $28, $0c, $06, $00, $00, $08, $18, $00, $d0, $07, $f4, $01, $c8, $19, $00, $00, $00, $00, $30, $44, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $04, $02
; Loot: 
org $D05010
db $00, $00, $00, $9B
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Crayclaw rank 6
; HP: 900 -> 2000
; ENEMY: Siren
; Skills: ['Mute', 'Slow', 'Haste', 'Cure2', 'Ice2', 'Scan', 'Armor', 'Sleep', 'Bolt2']
; New skill: Mute
org $d0b2e6
db $15
; New skill: Slow
org $d0b2e7
db $37
; New skill: Haste
org $d0b2e8
db $3A
; New skill: Cure2
org $d0b2ea
db $18
; New skill: Ice2
org $d0b2eb
db $2B
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
db $28, $28, $0a, $00, $10, $00, $00, $00, $d0, $07, $c8, $00, $c8, $19, $00, $00, $00, $00, $34, $FF, $10, $08, $00, $01, $A1, $18, $00, $00, $00, $00, $05, $02
; Loot: 
org $D05014
db $00, $00, $00, $82
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Crayclaw rank 6
; HP: 900 -> 2000
; ENEMY: Siren
; Skills: ['Mute', 'Slow', 'Haste', 'Cure2', 'Ice2', 'Scan', 'Armor', 'Sleep', 'Bolt2']
; New skill: Mute
org $d0b2e6
db $15
; New skill: Slow
org $d0b2e7
db $37
; New skill: Haste
org $d0b2e8
db $3A
; New skill: Cure2
org $d0b2ea
db $18
; New skill: Ice2
org $d0b2eb
db $2B
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
db $25, $0e, $09, $00, $03, $00, $05, $00, $c2, $01, $64, $00, $2c, $01, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $06, $08
; Loot: 
org $D05018
db $00, $00, $00, $F3
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Siren, Siren rank 2
; HP: 850 -> 900
; ENEMY: Forza

; Enemy: Magisa
; Stats: 
org $D020E0
db $1e, $0e, $05, $00, $00, $01, $00, $00, $c2, $01, $c8, $00, $2c, $01, $00, $00, $00, $00, $F0, $FB, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $07, $08
; Loot: 
org $D0501C
db $00, $00, $00, $4B
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Siren, Siren rank 2
; HP: 850 -> 900
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
; Original HP: 450
; New trigger HP: 207
org $d0b329
db $cf, $00

; Enemy: Galura
; Stats: 
org $D02100
db $1f, $4b, $09, $00, $07, $00, $04, $00, $20, $4e, $64, $00, $4c, $36, $00, $00, $00, $00, $10, $40, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $08, $03
; Loot: 
org $D05020
db $E1, $E0, $00, $E1
; --------------------------
; Original boss Galura rank 3 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 1200 -> 20000
; ENEMY: Galura
; Original HP: 20000
; New trigger HP: 13200
org $d0b36a
db $90, $33

; Enemy: LiquiFlame
; Stats: 
org $D02120
db $25, $1a, $0b, $14, $00, $08, $0c, $00, $c4, $09, $c8, $00, $fc, $21, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $0f
; Loot: 
org $D05024
db $00, $00, $00, $FC
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Abductor rank 6
; HP: 3000 -> 2500
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
db $25, $1a, $08, $0a, $00, $18, $18, $00, $c4, $09, $5a, $00, $fc, $21, $00, $00, $00, $FE, $77, $EF, $FF, $41, $00, $02, $20, $18, $00, $00, $00, $00, $09, $0f
; Loot: 
org $D05028
db $00, $00, $00, $32
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Abductor rank 6
; HP: 3000 -> 2500
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
; Skills: ['Fire2']
; New skill: Fire2
org $d0b3a8
db $2A

; Enemy: LiquiFlame
; Stats: 
org $D02160
db $25, $1a, $05, $1e, $00, $10, $0c, $00, $c4, $09, $64, $00, $fc, $21, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $0f
; Loot: 
org $D0502C
db $00, $00, $00, $3F
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Abductor rank 6
; HP: 3000 -> 2500
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
; Skills: ['Fire2']
; New skill: Fire2
org $d0b3a8
db $2A
; ENEMY: LiquiFlame
; Skills: ['Fire2']
; New skill: Fire2
org $d0b3b8
db $2A

; Enemy: Commander
; Stats: 
org $D02180
db $19, $19, $06, $0a, $00, $0c, $00, $00, $b0, $04, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $07
; Loot: 
org $D05030
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 1500 -> 3000
; ENEMY: Shiva
; Skills: ['Ice2', 'Ice2']
; New skill: Ice2
org $d0b6c0
db $2B
; New skill: Ice2
org $d0b6c5
db $2B
; ENEMY: Commander
; ENEMY: Commander
; ENEMY: Commander

; Enemy: Sandworm
; Stats: 
org $D021A0
db $32, $64, $0a, $00, $00, $01, $0a, $0a, $1d, $4e, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $12
; Loot: 
org $D05034
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
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
org $D021C0
db $01, $19, $0a, $00, $00, $01, $0a, $0a, $1d, $4e, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $12
; Loot: 
org $D05038
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
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
org $D021E0
db $62, $07, $02, $00, $00, $01, $0a, $0a, $1d, $4e, $8d, $27, $b8, $6f, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $80, $60, $18, $00, $00, $00, $80, $0F, $12
; Loot: 
org $D0503C
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Catastroph rank 11
; HP: 3000 -> 19997
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
db $1e, $44, $12, $00, $14, $00, $04, $32, $ff, $ff, $7d, $00, $94, $75, $00, $00, $00, $00, $7A, $70, $10, $00, $00, $02, $00, $18, $00, $00, $60, $00, $10, $10
; Loot: 
org $D05040
db $00, $F5, $00, $E7
; --------------------------
; Original boss AdamanTiMi rank 4 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 2000 -> 65535
; ENEMY: AdamanTiMi

; Enemy: Flamegun
; Stats: 
org $D02220
db $23, $07, $02, $00, $0F, $01, $14, $0A, $60, $09, $7D, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $04, $00, $18, $00, $00, $00, $00, $11, $16
; Loot: 
org $D05044
db $E2, $E0, $00, $F4

; Enemy: Rocket
; Stats: 
org $D02240
db $21, $07, $02, $00, $14, $01, $0F, $0A, $C4, $09, $C8, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $04, $00, $18, $00, $00, $00, $00, $12, $17
; Loot: 
org $D05048
db $E2, $E0, $00, $F5

; Enemy: Exdeath
; Stats: 
org $D02260
db $2C, $6F, $11, $0A, $23, $19, $19, $0F, $69, $BF, $30, $75, $00, $00, $00, $00, $00, $00, $FF, $FF, $10, $00, $40, $00, $A0, $18, $00, $00, $00, $00, $13, $4D
; Loot: 
org $D0504C
db $60, $E4, $00, $00

; Enemy: Sol Cannon
; Stats: 
org $D02280
db $37, $07, $02, $00, $05, $01, $0a, $0a, $88, $13, $e8, $03, $b0, $1d, $64, $00, $00, $C8, $FF, $FF, $10, $00, $00, $04, $20, $98, $00, $00, $00, $00, $14, $24
; Loot: 
org $D05050
db $E3, $E2, $00, $EB
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Tyrasaurus rank 5
; HP: 22500 -> 5000
; ENEMY: Sol Cannon
; Original HP: 5000
; New trigger HP: 2200
org $d0b4ef
db $98, $08

; Enemy: ArchaeAvis
; Stats: 
org $D022A0
db $1e, $27, $07, $0a, $0c, $01, $06, $00, $fc, $08, $d0, $07, $b0, $1d, $00, $00, $00, $20, $F4, $FF, $10, $00, $40, $40, $20, $98, $88, $00, $00, $00, $15, $15
; Loot: 
org $D05054
db $00, $00, $00, $F2
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 1600 -> 11500
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
db $1e, $27, $07, $0a, $0d, $01, $0c, $00, $fc, $08, $d0, $07, $b0, $1d, $00, $00, $00, $20, $F4, $FF, $10, $02, $40, $00, $00, $98, $88, $00, $00, $00, $15, $13
; Loot: 
org $D05058
db $00, $00, $00, $F3
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 1600 -> 11500
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
db $1e, $27, $07, $0a, $0e, $01, $12, $00, $fc, $08, $d0, $07, $b0, $1d, $00, $00, $00, $20, $F4, $FF, $10, $01, $40, $00, $20, $98, $88, $00, $00, $00, $15, $17
; Loot: 
org $D0505C
db $00, $00, $00, $F4
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 1600 -> 11500
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
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: MiniBlaze
org $d0b529
db $CB
; New skill: Specialty
org $d0b52a
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D02300
db $1e, $27, $07, $0a, $10, $01, $18, $00, $fc, $08, $d0, $07, $b0, $1d, $00, $00, $00, $20, $F4, $FF, $10, $04, $40, $00, $00, $98, $88, $00, $00, $00, $15, $18
; Loot: 
org $D05060
db $00, $00, $00, $F5
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 1600 -> 11500
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
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: MiniBlaze
org $d0b529
db $CB
; New skill: Specialty
org $d0b52a
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Thunder', 'Specialty']
; New skill: Fight
org $d0b53d
db $80
; New skill: Thunder
org $d0b53e
db $DC
; New skill: Specialty
org $d0b53f
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D02320
db $23, $2a, $09, $0a, $0a, $01, $1e, $00, $fc, $08, $d0, $07, $b0, $1d, $00, $00, $00, $67, $F4, $FF, $10, $00, $40, $00, $20, $98, $88, $00, $00, $00, $15, $14
; Loot: 
org $D05064
db $00, $00, $00, $F6
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 1600 -> 11500
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
; Skills: ['Fight', 'MiniBlaze', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: MiniBlaze
org $d0b529
db $CB
; New skill: Specialty
org $d0b52a
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Thunder', 'Specialty']
; New skill: Fight
org $d0b53d
db $80
; New skill: Thunder
org $d0b53e
db $DC
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
db $28, $6e, $07, $0a, $0a, $1e, $14, $00, $35, $82, $e8, $03, $a8, $7a, $00, $00, $00, $00, $30, $70, $00, $02, $00, $00, $04, $18, $00, $00, $00, $00, $1A, $13
; Loot: 
org $D05068
db $1B, $EA, $00, $E4
; --------------------------
; Original boss Chim.Brain rank 5 -> Randomized boss Halicarnaso rank 11
; HP: 3300 -> 33333
; ENEMY: Chim.Brain
; Skills: ['AquaRake', 'Fight', 'Specialty', 'AquaRake', 'Blaze', 'Blaze']
; New skill: AquaRake
org $d0b58e
db $84
; New skill: Fight
org $d0b58f
db $80
; New skill: Specialty
org $d0b590
db $81
; New skill: AquaRake
org $d0b592
db $84
; New skill: Blaze
org $d0b593
db $CD
; New skill: Blaze
org $d0b594
db $CD

; Enemy: Titan
; Stats: 
org $D02360
db $19, $24, $09, $0a, $08, $00, $00, $00, $1d, $4e, $d0, $07, $04, $29, $00, $00, $00, $00, $F7, $DF, $00, $20, $00, $00, $A0, $18, $00, $00, $00, $00, $1B, $01
; Loot: 
org $D0506C
db $26, $E0, $00, $E1
; --------------------------
; Original boss Titan rank 5 -> Randomized boss Atmos rank 6
; HP: 2500 -> 19997
; ENEMY: Titan
; Skills: ['Fight', 'Fight', 'Specialty', 'Fight', 'Quicksand', 'Specialty']
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
; New skill: Quicksand
org $d0b5a2
db $C9
; New skill: Specialty
org $d0b5a3
db $81

; Enemy: Puroboros
; Stats: 
org $D02380
db $14, $84, $07, $00, $00, $0c, $00, $00, $74, $0e, $64, $00, $d7, $11, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $1C, $40
; Loot: 
org $D05070
db $E9, $00, $E0, $00
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Apanda rank 10
; HP: 1500 -> 22200
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros
; ENEMY: Puroboros

; Enemy: Abductor
; Stats: 
org $D023A0
db $19, $28, $07, $00, $00, $0A, $00, $00, $DC, $05, $D0, $07, $00, $00, $00, $00, $00, $00, $30, $60, $00, $00, $40, $00, $00, $18, $88, $00, $00, $00, $1D, $16
; Loot: 
org $D05074
db $A9, $00, $00, $E2

; Enemy: Gilgamesh
; Stats: 
org $D023C0
db $19, $8c, $06, $00, $00, $00, $00, $00, $fc, $6c, $d0, $07, $a8, $7a, $00, $00, $0E, $00, $64, $70, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $1E, $1a
; Loot: 
org $D05078
db $00, $00, $00, $E3
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Apocalypse rank 11
; HP: 11500 -> 27900
; ENEMY: Gilgamesh
; Original HP: 27900
; New trigger HP: 24273
org $d0b5f5
db $d1, $5e

; Enemy: Fishman
; Stats: 
org $D023E0
db $19, $28, $06, $00, $00, $00, $00, $00, $90, $01, $00, $00, $2C, $01, $C8, $00, $00, $00, $10, $00, $00, $80, $00, $04, $00, $08, $00, $00, $00, $00, $1F, $19
; Loot: 
org $D0507C
db $00, $00, $E0, $00

; Enemy: FlyingKillr
; Stats: 
org $D02400
db $1C, $28, $06, $00, $00, $00, $00, $00, $2C, $01, $00, $00, $2C, $01, $C8, $00, $00, $20, $30, $00, $00, $00, $00, $00, $00, $08, $88, $00, $00, $00, $20, $1A
; Loot: 
org $D05080
db $00, $00, $E8, $00

; Enemy: Lil Chariot
; Stats: 
org $D02420
db $19, $28, $06, $00, $00, $00, $00, $00, $E0, $01, $64, $00, $2C, $01, $C8, $00, $00, $00, $34, $F0, $00, $00, $00, $04, $00, $08, $00, $00, $00, $00, $21, $08
; Loot: 
org $D05084
db $00, $00, $E1, $00

; Enemy: NeoGalura
; Stats: 
org $D02440
db $19, $28, $06, $00, $00, $00, $00, $00, $D4, $03, $E8, $03, $2C, $01, $F4, $01, $00, $00, $10, $00, $00, $04, $00, $00, $04, $18, $00, $00, $00, $00, $22, $1B
; Loot: 
org $D05088
db $00, $00, $FD, $00

; Enemy: Gilgamesh
; Stats: 
org $D02460
db $2d, $30, $07, $0a, $11, $00, $0c, $00, $dc, $05, $e8, $03, $1c, $0c, $00, $00, $10, $00, $F4, $70, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $23, $22
; Loot: 
org $D0508C
db $1A, $F6, $00, $91
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 6500 -> 1500
; ENEMY: Gilgamesh
; Original HP: 1500
; New trigger HP: 570
org $d0b674
db $3a, $02

; Enemy: Tyrasaurus
; Stats: 
org $D02480
db $32, $3c, $08, $00, $14, $00, $14, $00, $40, $9c, $e8, $03, $80, $57, $00, $00, $00, $02, $74, $74, $10, $00, $00, $01, $11, $18, $00, $00, $00, $00, $24, $17
; Loot: 
org $D05090
db $85, $00, $E3, $00
; --------------------------
; Original boss Tyrasaurus rank 5 -> Randomized boss Leviathan rank 9
; HP: 5000 -> 40000
; ENEMY: Tyrasaurus

; Enemy: Shiva
; Stats: 
org $D024A0
db $19, $1e, $06, $00, $00, $00, $06, $00, $b8, $0b, $e8, $03, $3c, $0f, $00, $00, $00, $00, $FA, $FF, $10, $02, $00, $01, $A0, $18, $00, $00, $00, $00, $25, $0d
; Loot: 
org $D05094
db $E4, $E1, $00, $33
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 1500 -> 3000
; ENEMY: Shiva
; Skills: ['Ice2', 'Ice2']
; New skill: Ice2
org $d0b6c0
db $2B
; New skill: Ice2
org $d0b6c5
db $2B

; Enemy: Abductor
; Stats: 
org $D024C0
db $23, $0a, $06, $00, $00, $00, $00, $00, $fa, $00, $e8, $03, $64, $00, $00, $00, $00, $00, $34, $20, $00, $00, $40, $00, $00, $18, $88, $00, $00, $00, $26, $17
; Loot: 
org $D05098
db $BA, $E1, $E0, $00
; --------------------------
; Original boss Abductor rank 6 -> Randomized boss WingRaptor, WingRaptor rank 1
; HP: 2500 -> 250
; ENEMY: Abductor

; Enemy: HiryuuPlant
; Stats: 
org $D024E0
db $27, $14, $06, $00, $00, $32, $28, $00, $52, $03, $e8, $03, $2c, $01, $00, $00, $00, $00, $74, $74, $00, $00, $00, $00, $80, $18, $80, $00, $01, $00, $27, $21
; Loot: 
org $D0509C
db $00, $00, $00, $E3
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant

; Enemy: HiryuuFlowr
; Stats: 
org $D02500
db $16, $03, $14, $00, $00, $1e, $1e, $1e, $2a, $00, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D050A0
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02520
db $11, $03, $14, $00, $00, $1e, $1e, $1e, $2a, $00, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D050A4
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02540
db $1b, $03, $14, $00, $00, $1e, $1e, $1e, $2a, $00, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $21
; Loot: 
org $D050A8
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02560
db $16, $03, $14, $00, $00, $1e, $1e, $1e, $2a, $00, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $1f
; Loot: 
org $D050AC
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: HiryuuFlowr
; Stats: 
org $D02580
db $12, $03, $14, $00, $00, $1e, $1e, $1e, $2a, $00, $e8, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $80, $00, $01, $00, $28, $23
; Loot: 
org $D050B0
db $00, $00, $E4, $00
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; ENEMY: HiryuuPlant
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr
; ENEMY: HiryuuFlowr

; Enemy: Gilgamesh
; Stats: 
org $D025A0
db $2e, $3c, $05, $0a, $0c, $30, $0c, $0a, $dc, $05, $78, $03, $14, $05, $00, $00, $2A, $00, $74, $70, $10, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $2D, $25
; Loot: 
org $D050B4
db $00, $C9, $00, $85
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 8888 -> 3000
; ENEMY: Gilgamesh
; Original HP: 1500
; New trigger HP: 1005
org $d0b761
db $ed, $03

; Enemy: Enkidou
; Stats: 
org $D025C0
db $2e, $3c, $05, $14, $00, $24, $00, $14, $dc, $05, $e8, $03, $14, $05, $00, $00, $23, $20, $74, $70, $10, $00, $00, $00, $80, $08, $88, $00, $00, $00, $2E, $23
; Loot: 
org $D050B8
db $00, $97, $00, $1A
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 8888 -> 3000
; ENEMY: Gilgamesh
; Original HP: 1500
; New trigger HP: 1005
org $d0b761
db $ed, $03
; ENEMY: Enkidou
; Skills: ['Aero2']
; New skill: Aero2
org $d0b7c0
db $90

; Enemy: Atmos
; Stats: 
org $D025E0
db $28, $08, $0a, $00, $0b, $40, $10, $14, $70, $45, $10, $27, $2c, $33, $00, $00, $00, $00, $FF, $BF, $FF, $00, $00, $00, $20, $18, $00, $00, $08, $00, $2F, $21
; Loot: 
org $D050BC
db $5E, $E2, $00, $EB
; --------------------------
; Original boss Atmos rank 6 -> Randomized boss Gilgamesh, Enkidou rank 6
; HP: 19997 -> 17776
; ENEMY: Atmos

; Enemy: Guardian
; Stats: 
org $D02600
db $28, $30, $0a, $00, $08, $0c, $10, $14, $98, $2e, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $01, $00, $00, $00, $18, $00, $00, $00, $00, $30, $3e
; Loot: 
org $D050C0
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Gogo rank 9
; HP: 7777 -> 47714
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 11928
; New trigger HP: 4533
org $d0b85e
db $b5, $11

; Enemy: Guardian
; Stats: 
org $D02620
db $28, $30, $0a, $00, $08, $01, $10, $14, $98, $2e, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $20, $00, $00, $00, $18, $00, $00, $00, $00, $31, $3e
; Loot: 
org $D050C4
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Gogo rank 9
; HP: 7777 -> 47714
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 11928
; New trigger HP: 4533
org $d0b85e
db $b5, $11
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 11928
; New trigger HP: 4533
org $d0b874
db $b5, $11

; Enemy: Guardian
; Stats: 
org $D02640
db $2d, $30, $0a, $00, $08, $0c, $10, $14, $98, $2e, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $80, $00, $00, $00, $18, $00, $00, $00, $00, $32, $3e
; Loot: 
org $D050C8
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Gogo rank 9
; HP: 7777 -> 47714
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 11928
; New trigger HP: 4533
org $d0b85e
db $b5, $11
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 11928
; New trigger HP: 4533
org $d0b874
db $b5, $11
; ENEMY: Guardian
; Skills: ['AquaRake']
; New skill: AquaRake
org $d0b889
db $84
; Original HP: 11928
; New trigger HP: 4533
org $d0b886
db $b5, $11

; Enemy: Guardian
; Stats: 
org $D02660
db $32, $30, $0a, $00, $08, $08, $10, $14, $98, $2e, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $40, $00, $00, $00, $18, $00, $00, $00, $00, $33, $3e
; Loot: 
org $D050CC
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Gogo rank 9
; HP: 7777 -> 47714
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 11928
; New trigger HP: 4533
org $d0b85e
db $b5, $11
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 11928
; New trigger HP: 4533
org $d0b874
db $b5, $11
; ENEMY: Guardian
; Skills: ['AquaRake']
; New skill: AquaRake
org $d0b889
db $84
; Original HP: 11928
; New trigger HP: 4533
org $d0b886
db $b5, $11
; ENEMY: Guardian
; Skills: ['Aero3']
; New skill: Aero3
org $d0b89f
db $91
; Original HP: 11928
; New trigger HP: 4533
org $d0b898
db $b5, $11

; Enemy: Carbunkle
; Stats: 
org $D02680
db $2d, $2c, $0a, $46, $28, $40, $28, $32, $68, $42, $10, $27, $cc, $74, $00, $00, $00, $20, $F4, $FB, $10, $00, $00, $00, $24, $18, $88, $00, $80, $00, $34, $23
; Loot: 
org $D050D0
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Odin rank 9
; HP: 15000 -> 17000
; ENEMY: Carbunkle
; Original HP: 17000
; New trigger HP: 11220
org $d0b8ae
db $d4, $2b
; Original HP: 17000
; New trigger HP: 5610
org $d0b8d1
db $ea, $15

; Enemy: Merugene
; Stats: 
org $D026A0
db $32, $4B, $0F, $14, $32, $32, $32, $0F, $98, $3A, $10, $27, $00, $00, $00, $00, $4D, $20, $FF, $7F, $10, $00, $00, $07, $20, $18, $88, $00, $00, $00, $35, $29
; Loot: 
org $D050D4
db $F2, $CA, $E7, $00

; Enemy: Gilgamesh
; Stats: 
org $D026C0
db $4b, $3c, $01, $00, $18, $00, $0c, $00, $10, $27, $28, $23, $a4, $51, $00, $00, $5C, $00, $F4, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $01, $00, $36, $50
; Loot: 
org $D050D8
db $00, $C7, $00, $5C
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Gargoyle, Gargoyle rank 7
; HP: 55000 -> 10000
; ENEMY: Gilgamesh
; Original HP: 10000
; New trigger HP: 7600
org $d0b98c
db $b0, $1d
; ENEMY: Gilgamesh

; Enemy: Exdeath
; Stats: 
org $D026E0
db $32, $3A, $14, $0A, $19, $00, $19, $55, $00, $80, $00, $80, $A4, $47, $00, $00, $14, $08, $FF, $FC, $10, $00, $00, $10, $20, $18, $80, $00, $01, $00, $37, $42
; Loot: 
org $D050DC
db $3E, $E3, $00, $00

; Enemy: Antlion
; Stats: 
org $D02700
db $32, $58, $0d, $0d, $14, $00, $0c, $0d, $50, $c3, $e8, $03, $04, $8d, $60, $09, $00, $20, $F4, $30, $10, $00, $00, $80, $20, $18, $00, $00, $00, $00, $38, $1b
; Loot: 
org $D050E0
db $00, $E1, $00, $F1
; --------------------------
; Original boss Antlion rank 6 -> Randomized boss Twin Tania, Twin Tania rank 12
; HP: 8100 -> 50000
; ENEMY: Antlion

; Enemy: Mummy
; Stats: 
org $D02720
db $32, $30, $0D, $0A, $19, $00, $14, $0A, $54, $0B, $32, $00, $00, $00, $F4, $01, $00, $00, $24, $70, $00, $00, $00, $01, $81, $08, $00, $00, $00, $00, $39, $1B
; Loot: 
org $D050E4
db $E1, $E0, $E6, $00

; Enemy: Aspis
; Stats: 
org $D02740
db $2A, $39, $0B, $0A, $14, $00, $14, $0A, $00, $05, $32, $00, $20, $03, $00, $00, $00, $00, $14, $70, $00, $00, $00, $02, $01, $08, $00, $00, $00, $00, $3A, $23
; Loot: 
org $D050E8
db $E1, $E8, $E8, $00

; Enemy: MachinHead
; Stats: 
org $D02760
db $25, $3B, $0D, $0A, $1C, $00, $12, $24, $2A, $1C, $88, $13, $00, $00, $00, $00, $00, $00, $F4, $E7, $00, $00, $00, $84, $04, $08, $00, $00, $00, $00, $3B, $25
; Loot: 
org $D050EC
db $C2, $E2, $F4, $00

; Enemy: Merugene
; Stats: 
org $D02780
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $10, $0e, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $06, $00, $01, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D050F0
db $00, $9A, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Byblos rank 4
; HP: 20000 -> 3600
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
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $10, $0e, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $05, $00, $02, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D050F4
db $00, $89, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Byblos rank 4
; HP: 20000 -> 3600
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
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $10, $0e, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $03, $00, $04, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D050F8
db $00, $C0, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Byblos rank 4
; HP: 20000 -> 3600
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
db $28, $1e, $0d, $00, $00, $00, $24, $1e, $10, $0e, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $07, $40, $00, $20, $18, $00, $00, $00, $00, $3C, $28
; Loot: 
org $D050FC
db $00, $81, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Byblos rank 4
; HP: 20000 -> 3600
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
db $2d, $48, $0a, $0a, $18, $24, $18, $46, $d8, $d6, $f4, $01, $4c, $36, $00, $00, $2F, $00, $B4, $10, $00, $10, $00, $00, $A0, $18, $00, $00, $00, $00, $40, $02
; Loot: 
org $D05100
db $AF, $00, $C4, $00
; --------------------------
; Original boss Odin rank 9 -> Randomized boss Gilgamesh, Gilgamesh rank 7
; HP: 17000 -> 55000
; ENEMY: Odin
; Skills: ['TrueEdge']
; New skill: TrueEdge
org $d0bbb8
db $D0

; Enemy: Gargoyle
; Stats: 
org $D02820
db $22, $3a, $09, $0a, $0c, $32, $0c, $23, $34, $21, $2c, $01, $d4, $30, $00, $00, $00, $00, $30, $10, $00, $10, $40, $00, $A0, $18, $00, $00, $00, $00, $41, $21
; Loot: 
org $D05104
db $E4, $E0, $E1, $00
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Omniscient rank 8
; HP: 5000 -> 16999
; ENEMY: Gargoyle
; ENEMY: Gargoyle

; Enemy: Triton
; Stats: 
org $D02840
db $1e, $19, $0b, $00, $00, $04, $0a, $28, $77, $08, $10, $27, $f3, $04, $00, $00, $00, $00, $30, $08, $04, $01, $00, $02, $01, $18, $00, $00, $00, $00, $42, $25
; Loot: 
org $D05108
db $E3, $EC, $F5, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Gilgamesh rank 5
; HP: 13333 -> 6500
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire2', 'Fire2', 'Fight', 'Fight', 'Fight', 'Fire2']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire2
org $d0bc0d
db $2A
; New skill: Fire2
org $d0bc0e
db $2A
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Fire2
org $d0bc16
db $2A

; Enemy: Neregeid
; Stats: 
org $D02860
db $1e, $18, $0b, $00, $00, $04, $0a, $28, $77, $08, $10, $27, $f3, $04, $00, $00, $00, $00, $30, $08, $04, $02, $00, $01, $01, $18, $00, $00, $00, $00, $43, $14
; Loot: 
org $D0510C
db $E3, $EC, $F3, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Gilgamesh rank 5
; HP: 13333 -> 6500
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire2', 'Fire2', 'Fight', 'Fight', 'Fight', 'Fire2']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire2
org $d0bc0d
db $2A
; New skill: Fire2
org $d0bc0e
db $2A
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Fire2
org $d0bc16
db $2A
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'Ice2', 'Ice2', 'Fight', 'Fight', 'Fight', 'Ice2']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: Ice2
org $d0bc34
db $2B
; New skill: Ice2
org $d0bc35
db $2B
; New skill: Fight
org $d0bc38
db $80
; New skill: Fight
org $d0bc39
db $80
; New skill: Fight
org $d0bc3c
db $80
; New skill: Ice2
org $d0bc3d
db $2B

; Enemy: Phobos
; Stats: 
org $D02880
db $1e, $19, $0b, $00, $00, $00, $0a, $28, $77, $08, $10, $27, $f3, $04, $00, $00, $00, $00, $30, $08, $04, $08, $00, $20, $01, $18, $00, $00, $00, $00, $44, $27
; Loot: 
org $D05110
db $E3, $EC, $F2, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Gilgamesh rank 5
; HP: 13333 -> 6500
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire2', 'Fire2', 'Fight', 'Fight', 'Fight', 'Fire2']
; New skill: Fight
org $d0bc05
db $80
; New skill: Fight
org $d0bc06
db $80
; New skill: Fire2
org $d0bc0d
db $2A
; New skill: Fire2
org $d0bc0e
db $2A
; New skill: Fight
org $d0bc11
db $80
; New skill: Fight
org $d0bc12
db $80
; New skill: Fight
org $d0bc15
db $80
; New skill: Fire2
org $d0bc16
db $2A
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'Ice2', 'Ice2', 'Fight', 'Fight', 'Fight', 'Ice2']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: Ice2
org $d0bc34
db $2B
; New skill: Ice2
org $d0bc35
db $2B
; New skill: Fight
org $d0bc38
db $80
; New skill: Fight
org $d0bc39
db $80
; New skill: Fight
org $d0bc3c
db $80
; New skill: Ice2
org $d0bc3d
db $2B
; ENEMY: Phobos
; Skills: ['Fight', 'Fight', 'Venom', 'Sleep', 'Fight', 'Fight', 'Fight', 'Bio']
; New skill: Fight
org $d0bc57
db $80
; New skill: Fight
org $d0bc58
db $80
; New skill: Venom
org $d0bc5f
db $27
; New skill: Sleep
org $d0bc60
db $28
; New skill: Fight
org $d0bc63
db $80
; New skill: Fight
org $d0bc64
db $80
; New skill: Fight
org $d0bc67
db $80
; New skill: Bio
org $d0bc68
db $2F

; Enemy: Omniscient
; Stats: 
org $D028A0
db $2a, $50, $14, $00, $00, $10, $06, $00, $20, $4e, $30, $75, $d8, $8b, $00, $00, $00, $00, $F4, $50, $00, $00, $00, $40, $20, $18, $00, $00, $61, $00, $45, $2a
; Loot: 
org $D05114
db $C5, $E0, $00, $00
; --------------------------
; Original boss Omniscient rank 8 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 16999 -> 20000
; ENEMY: Omniscient
; Skills: ['Bolt3', 'Fire3', 'Ice3', 'Cure', 'Fire', 'Ice', 'Cure2', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Bolt3
org $d0bc72
db $0E
; New skill: Fire3
org $d0bc73
db $30
; New skill: Ice3
org $d0bc74
db $31
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
; Original HP: 20000
; New trigger HP: 4800
org $d0bc6e
db $c0, $12

; Enemy: Minotauros
; Stats: 
org $D028C0
db $2e, $90, $0c, $00, $00, $00, $00, $00, $50, $46, $64, $00, $f0, $a0, $00, $00, $00, $B8, $FF, $FF, $FF, $B8, $00, $00, $A0, $18, $00, $00, $00, $00, $46, $2c
; Loot: 
org $D05118
db $5B, $C0, $00, $00
; --------------------------
; Original boss Minotauros rank 8 -> Randomized boss Calofisteri rank 10
; HP: 19850 -> 18000
; ENEMY: Minotauros

; Enemy: Leviathan
; Stats: 
org $D028E0
db $2a, $19, $0c, $04, $08, $01, $08, $28, $c4, $09, $d0, $07, $d8, $0e, $00, $00, $00, $21, $F4, $F8, $10, $80, $00, $04, $30, $18, $00, $00, $00, $00, $47, $25
; Loot: 
org $D0511C
db $00, $E3, $00, $CA
; --------------------------
; Original boss Leviathan rank 9 -> Randomized boss Titan rank 5
; HP: 40000 -> 2500
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
db $28, $28, $0a, $00, $04, $04, $08, $05, $3f, $9c, $00, $20, $00, $af, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $03
; Loot: 
org $D05120
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Triton, Neregeid, Phobos rank 9
; HP: 20000 -> 39999
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Gogo
; Stats: 
org $D02920
db $32, $60, $19, $1e, $18, $1c, $10, $63, $e0, $2e, $60, $ea, $4c, $1d, $00, $00, $00, $80, $F5, $F8, $10, $00, $00, $80, $A0, $98, $00, $00, $00, $00, $49, $3e
; Loot: 
org $D05124
db $94, $9A, $C3, $00
; --------------------------
; Original boss Gogo rank 9 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 47714 -> 12000
; ENEMY: Gogo
; Original HP: 12000
; New trigger HP: 8280
org $d0be14
db $58, $20

; Enemy: Bahamut
; Stats: 
org $D02940
db $28, $24, $10, $03, $06, $0c, $0c, $17, $e8, $03, $10, $27, $a4, $06, $00, $00, $00, $20, $F4, $F8, $00, $00, $60, $00, $20, $18, $88, $00, $00, $00, $4A, $77
; Loot: 
org $D05128
db $EA, $EA, $EA, $00
; --------------------------
; Original boss Bahamut rank 9 -> Randomized boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4
; HP: 40000 -> 1000
; ENEMY: Bahamut
; Skills: ['Flare', 'Flare', 'Fight', 'DanceoftheDead', 'DanceoftheDead', 'Fight', 'MiniBlaze', 'MiniBlaze', 'Fight', 'Maelstrom', 'Maelstrom', 'Fight', 'SurgeBeam', 'SurgeBeam', 'Fight', 'WindSlash', 'WindSlash', 'Fight', 'Thunder', 'Thunder', 'Fight', 'Flame', 'Flame', 'Fight', 'Quicksand', 'Quicksand', 'Fight', 'WindSlash', 'WindSlash', 'Fight', 'Flame', 'Flame', 'Fight', 'Flare', 'Flare', 'Flare']
; New skill: Flare
org $d0be62
db $33
; New skill: Flare
org $d0be63
db $33
; New skill: Fight
org $d0be64
db $80
; New skill: DanceoftheDead
org $d0be6c
db $B7
; New skill: DanceoftheDead
org $d0be6d
db $B7
; New skill: Fight
org $d0be6e
db $80
; New skill: MiniBlaze
org $d0be70
db $CB
; New skill: MiniBlaze
org $d0be71
db $CB
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
; New skill: SurgeBeam
org $d0be7e
db $DD
; New skill: SurgeBeam
org $d0be7f
db $DD
; New skill: Fight
org $d0be80
db $80
; New skill: WindSlash
org $d0be88
db $AB
; New skill: WindSlash
org $d0be89
db $AB
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
; New skill: Quicksand
org $d0be9b
db $C9
; New skill: Fight
org $d0be9c
db $80
; New skill: WindSlash
org $d0bea4
db $AB
; New skill: WindSlash
org $d0bea5
db $AB
; New skill: Fight
org $d0bea6
db $80
; New skill: Flame
org $d0bea8
db $DB
; New skill: Flame
org $d0bea9
db $DB
; New skill: Fight
org $d0beaa
db $80
; New skill: Flare
org $d0beb3
db $33
; New skill: Flare
org $d0bebb
db $33
; New skill: Flare
org $d0bebe
db $33
; Original HP: 1000
; New trigger HP: 250
org $d0be5e
db $fa, $00
; Original HP: 1000
; New trigger HP: 380
org $d0be68
db $7c, $01
; Original HP: 1000
; New trigger HP: 500
org $d0be76
db $f4, $01
; Original HP: 1000
; New trigger HP: 630
org $d0be84
db $76, $02
; Original HP: 1000
; New trigger HP: 750
org $d0be92
db $ee, $02
; Original HP: 1000
; New trigger HP: 870
org $d0bea0
db $66, $03
; Original HP: 1000
; New trigger HP: 250
org $d0beb7
db $fa, $00

; Enemy: Jura Avis
; Stats: 
org $D02960
db $28, $41, $0A, $14, $23, $2D, $1E, $0A, $98, $3A, $E8, $03, $00, $00, $00, $00, $00, $20, $F8, $58, $10, $47, $00, $00, $08, $18, $88, $00, $00, $00, $4B, $3D
; Loot: 
org $D0512C
db $20, $E7, $00, $EA

; Enemy: Halicarnaso
; Stats: 
org $D02980
db $28, $23, $0c, $00, $05, $32, $0a, $2d, $40, $1f, $88, $13, $b8, $0b, $00, $00, $00, $00, $E4, $78, $10, $00, $00, $00, $20, $18, $00, $00, $00, $00, $4C, $61
; Loot: 
org $D05130
db $86, $3C, $B2, $00
; --------------------------
; Original boss Halicarnaso rank 11 -> Randomized boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5
; HP: 33333 -> 8000
; ENEMY: Halicarnaso

; Enemy: Exdeath
; Stats: 
org $D029A0
db $23, $3C, $14, $00, $00, $1E, $01, $00, $50, $C3, $E8, $FD, $00, $00, $00, $00, $56, $00, $FF, $FF, $14, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $4D, $3F
; Loot: 
org $D05134
db $00, $00, $00, $00

; Enemy: NeoExdeath
; Stats: 
org $D029C0
db $01, $01, $01, $00, $00, $00, $00, $0A, $CC, $D8, $CC, $D8, $00, $00, $00, $00, $00, $FF, $FF, $FF, $10, $00, $00, $00, $20, $98, $82, $00, $02, $00, $4E, $61
; Loot: 
org $D05138
db $00, $00, $00, $00

; Enemy: NeoExdeath
; Stats: 
org $D029E0
db $01, $01, $01, $00, $00, $00, $00, $0A, $CC, $D8, $CC, $D8, $00, $00, $00, $00, $00, $FF, $FF, $FF, $10, $00, $00, $00, $20, $98, $82, $40, $02, $00, $4E, $61
; Loot: 
org $D0513C
db $00, $00, $00, $00

; Enemy: Goblin
; Stats: 
org $D02A00
db $0A, $05, $01, $00, $00, $00, $00, $00, $01, $00, $02, $00, $03, $00, $0A, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $18, $00, $00, $00, $00, $50, $02
; Loot: 
org $D05140
db $00, $00, $00, $00

; Enemy: Iron Claw
; Stats: 
org $D02A20
db $28, $60, $0a, $00, $18, $01, $0c, $0a, $84, $79, $96, $00, $00, $00, $78, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $51, $2f
; Loot: 
org $D05144
db $00, $F6, $B4, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 1000 -> 31108
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Iron Claw

; Enemy: Sergeant
; Stats: 
org $D02A40
db $14, $08, $02, $00, $00, $06, $0c, $0a, $61, $1e, $19, $00, $7c, $2e, $78, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $52, $00
; Loot: 
org $D05148
db $00, $E0, $E9, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 1000 -> 31108
; ENEMY: Sergeant

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $16, $04, $00, $00, $00, $00, $14, $74, $24, $19, $00, $00, $00, $f4, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $22
; Loot: 
org $D0514C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 1000 -> 31108
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Crayclaw
; Stats: 
org $D02A80
db $28, $2c, $06, $00, $11, $01, $11, $0a, $d0, $07, $f4, $01, $28, $0a, $00, $00, $00, $00, $30, $00, $00, $80, $00, $04, $24, $18, $00, $00, $00, $00, $54, $34
; Loot: 
org $D05150
db $00, $10, $00, $40
; --------------------------
; Original boss Crayclaw rank 6 -> Randomized boss AdamanTiMi rank 4
; HP: 2000 -> 2000
; ENEMY: Crayclaw

; Enemy: NeoGoblin
; Stats: 
org $D02AA0
db $28, $0F, $02, $00, $00, $01, $0A, $0A, $64, $00, $19, $00, $28, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $55, $00
; Loot: 
org $D05154
db $00, $00, $00, $00

; Enemy: Calofisteri
; Stats: 
org $D02AC0
db $1e, $0a, $0a, $00, $04, $05, $02, $00, $8a, $02, $e8, $03, $64, $00, $00, $00, $3D, $00, $F0, $78, $10, $00, $20, $00, $A4, $18, $00, $00, $00, $00, $56, $36
; Loot: 
org $D05158
db $CA, $90, $A5, $00
; --------------------------
; Original boss Calofisteri rank 10 -> Randomized boss Karlabos rank 1
; HP: 18000 -> 650
; ENEMY: Calofisteri

; Enemy: Apocalypse
; Stats: 
org $D02AE0
db $2d, $0c, $15, $03, $08, $0c, $18, $10, $a4, $1f, $50, $c3, $a8, $16, $00, $00, $2D, $00, $F4, $FC, $14, $00, $00, $08, $20, $18, $00, $00, $00, $00, $57, $2e
; Loot: 
org $D0515C
db $B1, $E3, $98, $00
; --------------------------
; Original boss Apocalypse rank 11 -> Randomized boss Antlion rank 6
; HP: 27900 -> 8100
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
db $1e, $04, $0c, $0f, $00, $00, $00, $00, $b8, $0b, $1d, $4e, $58, $02, $00, $00, $00, $00, $F4, $5C, $10, $20, $00, $00, $20, $18, $00, $00, $00, $00, $58, $39
; Loot: 
org $D05160
db $F1, $E3, $00, $EC
; --------------------------
; Original boss Catastroph rank 11 -> Randomized boss Ifrit rank 3
; HP: 19997 -> 3000
; ENEMY: Catastroph
; Skills: ['Fight', 'Quicksand', 'DemonEye', 'Fight', 'Quicksand', 'Specialty']
; New skill: Fight
org $d0c1e0
db $80
; New skill: Quicksand
org $d0c1e1
db $C9
; New skill: DemonEye
org $d0c1e2
db $EB
; New skill: Fight
org $d0c1e4
db $80
; New skill: Quicksand
org $d0c1e5
db $C9
; New skill: Specialty
org $d0c1e6
db $81

; Enemy: Necrofobia
; Stats: 
org $D02B20
db $25, $14, $10, $0a, $0a, $1e, $0a, $25, $e4, $57, $10, $27, $f0, $0a, $00, $00, $1E, $00, $F4, $F8, $10, $00, $00, $FF, $20, $18, $00, $00, $02, $00, $59, $42
; Loot: 
org $D05164
db $B0, $E3, $AB, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 44044 -> 22500
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

; Enemy: Twin Tania
; Stats: 
org $D02B40
db $20, $2d, $0e, $00, $14, $00, $08, $0a, $8a, $4d, $10, $27, $54, $3d, $00, $00, $00, $00, $F4, $F8, $10, $00, $00, $90, $24, $18, $00, $00, $00, $00, $5A, $27
; Loot: 
org $D05168
db $C4, $E4, $53, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Minotauros rank 8
; HP: 50000 -> 19850
; ENEMY: Twin Tania
; Skills: ['MiniBlaze', 'Blaze', 'Fight', 'MiniBlaze', 'Blaze', 'Fight', 'MindBlast', 'WindSlash', 'BreathWing', 'TidalWave', 'Flare']
; New skill: MiniBlaze
org $d0c2f6
db $CB
; New skill: Blaze
org $d0c2f7
db $CD
; New skill: Fight
org $d0c2f8
db $80
; New skill: MiniBlaze
org $d0c2fa
db $CB
; New skill: Blaze
org $d0c2fb
db $CD
; New skill: Fight
org $d0c2fc
db $80
; New skill: MindBlast
org $d0c301
db $97
; New skill: WindSlash
org $d0c302
db $AB
; New skill: BreathWing
org $d0c303
db $DA
; New skill: TidalWave
org $d0c310
db $D1
; New skill: Flare
org $d0c31a
db $33

; Enemy: Launcher
; Stats: 
org $D02B60
db $14, $07, $02, $00, $00, $01, $05, $05, $c4, $09, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $32
; Loot: 
org $D0516C
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Tyrasaurus rank 5
; HP: 22500 -> 5000
; ENEMY: Sol Cannon
; Original HP: 5000
; New trigger HP: 2200
org $d0b4ef
db $98, $08
; ENEMY: Launcher

; Enemy: Launcher
; Stats: 
org $D02B80
db $14, $07, $02, $00, $00, $01, $05, $05, $c4, $09, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $32
; Loot: 
org $D05170
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Tyrasaurus rank 5
; HP: 22500 -> 5000
; ENEMY: Sol Cannon
; Original HP: 5000
; New trigger HP: 2200
org $d0b4ef
db $98, $08
; ENEMY: Launcher
; ENEMY: Launcher

; Enemy: Gilgamesh
; Stats: 
org $D02BA0
db $41, $4e, $0c, $00, $0a, $01, $12, $1e, $10, $27, $d0, $07, $a4, $51, $00, $00, $00, $00, $F7, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $5D, $40
; Loot: 
org $D05174
db $C2, $E1, $00, $00
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Gargoyle, Gargoyle rank 7
; HP: 55000 -> 10000
; ENEMY: Gilgamesh
; Original HP: 10000
; New trigger HP: 7600
org $d0b98c
db $b0, $1d

; Enemy: Carbunkle
; Stats: 
org $D02BC0
db $19, $06, $02, $0a, $08, $08, $00, $00, $68, $42, $e8, $03, $cc, $74, $00, $00, $00, $00, $80, $0B, $00, $00, $00, $FF, $00, $18, $00, $00, $00, $00, $5E, $01
; Loot: 
org $D05178
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Odin rank 9
; HP: 15000 -> 17000
; ENEMY: Carbunkle
; Original HP: 17000
; New trigger HP: 11220
org $d0b8ae
db $d4, $2b
; Original HP: 17000
; New trigger HP: 5610
org $d0b8d1
db $ea, $15
; ENEMY: Carbunkle

; Enemy: GrandMummy
; Stats: 
org $D02BE0
db $22, $37, $10, $0A, $1E, $05, $0A, $0A, $70, $17, $2C, $01, $00, $00, $00, $00, $00, $00, $74, $F0, $10, $08, $00, $01, $81, $18, $00, $00, $00, $00, $5F, $00
; Loot: 
org $D0517C
db $E6, $E1, $00, $E1

; Enemy: Apanda
; Stats: 
org $D02C00
db $25, $19, $12, $07, $08, $00, $03, $0a, $e4, $0c, $e8, $03, $48, $0d, $00, $00, $00, $00, $F4, $F0, $10, $00, $00, $01, $24, $18, $00, $00, $00, $00, $60, $3b
; Loot: 
org $D05180
db $62, $62, $00, $62
; --------------------------
; Original boss Apanda rank 10 -> Randomized boss Chim.Brain rank 5
; HP: 22200 -> 3300
; ENEMY: Apanda
; Skills: ['BreathWing', 'WindSlash']
; New skill: BreathWing
org $d0c409
db $DA
; New skill: WindSlash
org $d0c410
db $AB

; Enemy: Alte Roite
; Stats: 
org $D02C20
db $2D, $2D, $14, $46, $2D, $05, $3C, $3C, $70, $17, $E8, $03, $00, $00, $00, $00, $00, $00, $F0, $F0, $10, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $61, $3A
; Loot: 
org $D05184
db $E6, $E0, $3B, $00

; Enemy: Invisible
; Stats: 
org $D02C40
db $2F, $5A, $0B, $19, $0A, $00, $0A, $3C, $58, $1B, $E8, $03, $00, $00, $00, $00, $0C, $20, $74, $D4, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $62, $34
; Loot: 
org $D05188
db $98, $A4, $00, $00

; Enemy: Abductor
; Stats: 
org $D02C60
db $32, $50, $0A, $00, $05, $00, $05, $0A, $88, $13, $64, $00, $F4, $01, $00, $00, $00, $20, $30, $00, $00, $00, $40, $00, $84, $18, $88, $00, $00, $00, $63, $05
; Loot: 
org $D0518C
db $5A, $E1, $66, $00

; Enemy: BandelKuar
; Stats: 
org $D02C80
db $1E, $50, $0B, $0A, $00, $00, $00, $0A, $40, $1F, $E8, $03, $C4, $09, $00, $00, $00, $00, $F4, $70, $10, $00, $00, $01, $24, $18, $00, $00, $00, $00, $64, $3F
; Loot: 
org $D05190
db $00, $EC, $E3, $00

; Enemy: LiquiFlame
; Stats: 
org $D02CA0
db $1E, $51, $0B, $00, $0A, $14, $00, $00, $28, $23, $E8, $03, $C4, $09, $00, $00, $00, $00, $F4, $F0, $10, $01, $00, $82, $20, $18, $00, $00, $00, $00, $65, $3F
; Loot: 
org $D05194
db $00, $ED, $FC, $00

; Enemy: Kuzar
; Stats: 
org $D02CC0
db $1E, $4B, $0F, $00, $1E, $00, $00, $21, $10, $27, $E8, $03, $C4, $09, $00, $00, $00, $00, $F4, $70, $10, $00, $00, $00, $24, $18, $00, $00, $00, $00, $66, $3F
; Loot: 
org $D05198
db $00, $E1, $E4, $00

; Enemy: Sol Cannon
; Stats: 
org $D02CE0
db $1E, $01, $01, $00, $28, $19, $00, $00, $10, $27, $60, $EA, $C4, $13, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $04, $20, $18, $00, $00, $00, $00, $67, $3D
; Loot: 
org $D0519C
db $AF, $E2, $E1, $00

; Enemy: Pantera
; Stats: 
org $D02D00
db $1E, $3D, $10, $0A, $05, $00, $0F, $00, $50, $46, $E8, $03, $00, $00, $00, $00, $00, $00, $30, $08, $00, $00, $00, $01, $24, $18, $00, $00, $00, $00, $68, $2A
; Loot: 
org $D051A0
db $E3, $E4, $00, $00

; Enemy: Shinryuu
; Stats: 
org $D02D20
db $57, $AF, $26, $14, $3C, $80, $3C, $5F, $CC, $D8, $38, $C7, $00, $00, $00, $00, $00, $00, $F4, $F0, $10, $10, $00, $00, $30, $98, $00, $00, $00, $00, $69, $61
; Loot: 
org $D051A4
db $4F, $EA, $00, $F7

; Enemy: Barrier
; Stats: 
org $D02D40
db $19, $1e, $0a, $00, $05, $0a, $00, $00, $94, $11, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $2c
; Loot: 
org $D051A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 44044 -> 22500
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

; Enemy: NeoExdeath
; Stats: 
org $D02D60
db $1B, $63, $13, $0A, $1E, $0A, $14, $4B, $D8, $D6, $E8, $FD, $00, $00, $00, $00, $00, $00, $F4, $D8, $04, $00, $00, $00, $30, $18, $00, $00, $00, $00, $4E, $53
; Loot: 
org $D051AC
db $20, $00, $00, $00

; Enemy: NeoExdeath
; Stats: 
org $D02D80
db $23, $63, $13, $0A, $1E, $15, $13, $50, $D8, $D6, $E8, $FD, $00, $00, $00, $00, $00, $00, $B4, $78, $04, $00, $00, $00, $24, $18, $00, $00, $00, $00, $4E, $43
; Loot: 
org $D051B0
db $00, $5B, $00, $00

; Enemy: NeoExdeath
; Stats: 
org $D02DA0
db $37, $63, $13, $0A, $1E, $0A, $19, $4C, $50, $C3, $E8, $FD, $00, $00, $00, $00, $00, $00, $F4, $F8, $00, $00, $00, $00, $20, $18, $00, $00, $00, $00, $4E, $51
; Loot: 
org $D051B4
db $30, $00, $00, $00

; Enemy: NeoExdeath
; Stats: 
org $D02DC0
db $23, $63, $13, $0A, $1E, $0F, $14, $42, $60, $EA, $E8, $FD, $00, $00, $00, $00, $00, $00, $F0, $F8, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $4E, $56
; Loot: 
org $D051B8
db $16, $00, $00, $00

; Enemy: Gilgamesh
; Stats: 
org $D02DE0
db $58, $73, $19, $1e, $23, $00, $00, $00, $d8, $d6, $28, $23, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $6F, $5d
; Loot: 
org $D051BC
db $00, $C8, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 44044 -> 22500
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


;==========
;formations
;==========
; Byblos (Rank 4) > Galura (Rank 3) 
org $D07818
db $BE, $01 
org $D0781A
db $BE, $01
; WingRaptor (Rank 1) > Puroboros (Rank 5) 
org $D07848
db $B7, $01 
org $D0784A
db $B7, $01
; Karlabos (Rank 1) > Carbunkle (Rank 7) 
org $D07888
db $B8, $01 
org $D0788A
db $B8, $01
; Siren (Rank 2) > Crayclaw (Rank 6) 
org $D078D4
db $B9, $01 
org $D078D6
db $B9, $01
; Forza (Rank 2) > Siren (Rank 2) 
org $D0780C
db $BA, $01 
org $D0780E
db $BA, $01
; Galura (Rank 3) > Merugene (Rank 8) 
org $D078AC
db $BB, $01 
org $D078AE
db $BB, $01
; LiquiFlame (Rank 4) > Abductor (Rank 6) 
org $D07874
db $BC, $01 
org $D07876
db $BC, $01
; Sergeant (Rank 4) > Guardian (Rank 7) 
org $D07884
db $BD, $01 
org $D07886
db $BD, $01
; Hole (Rank 4) > Catastroph (Rank 11) 
org $D07924
db $BF, $01 
org $D07926
db $BF, $01
; AdamanTiMi (Rank 4) > Necrofobia (Rank 12) 
org $D0792C
db $C0, $01 
org $D0792E
db $C0, $01
; Sol Cannon (Rank 5) > Tyrasaurus (Rank 5) 
org $D07870
db $C3, $01 
org $D07872
db $C3, $01
; ArchaeAvis (Rank 5) > Gilgamesh (Rank 5) 
org $D07850
db $C4, $01 
org $D07852
db $C4, $01
; Chim.Brain (Rank 5) > Halicarnaso (Rank 11) 
org $D078E0
db $C5, $01 
org $D078E2
db $C5, $01
; Titan (Rank 5) > Atmos (Rank 6) 
org $D07880
db $C6, $01 
org $D07882
db $C6, $01
; Puroboros (Rank 5) > Apanda (Rank 10) 
org $D078D8
db $C7, $01 
org $D078DA
db $C7, $01
; Gilgamesh (Rank 5) > Apocalypse (Rank 11) 
org $D07920
db $C9, $01 
org $D07922
db $C9, $01
; Gilgamesh (Rank 5) > Shiva (Rank 4) 
org $D07814
db $D0, $01 
org $D07816
db $D0, $01
; Tyrasaurus (Rank 5) > Leviathan (Rank 9) 
org $D078C4
db $D1, $01 
org $D078C6
db $D1, $01
; Abductor (Rank 6) > WingRaptor (Rank 1) 
org $D07804
db $D2, $01 
org $D07806
db $D2, $01
; HiryuuPlant (Rank 6) > Forza (Rank 2) 
org $D07810
db $D3, $01 
org $D07812
db $D3, $01
; Gilgamesh (Rank 6) > Hole (Rank 4) 
org $D07828
db $D4, $01 
org $D0782A
db $D4, $01
; Atmos (Rank 6) > Gilgamesh (Rank 6) 
org $D0787C
db $D5, $01 
org $D0787E
db $D5, $01
; Guardian (Rank 7) > Gogo (Rank 9) 
org $D078CC
db $D6, $01 
org $D078CE
db $D6, $01
; Carbunkle (Rank 7) > Odin (Rank 9) 
org $D078B0
db $D7, $01 
org $D078B2
db $D7, $01
; Gilgamesh (Rank 7) > Gargoyle (Rank 7) 
org $D078B4
db $D8, $01 
org $D078B6
db $D8, $01
; Antlion (Rank 6) > Twin Tania (Rank 12) 
org $D07928
db $DA, $01 
org $D0792A
db $DA, $01
; Halicarnaso (Rank 11) > ArchaeAvis (Rank 5) 
org $D0783C
db $DE, $01 
org $D0783E
db $DE, $01
; Merugene (Rank 8) > Byblos (Rank 4) 
org $D07824
db $E0, $01 
org $D07826
db $E0, $01
; Odin (Rank 9) > Gilgamesh (Rank 7) 
org $D0788C
db $E1, $01 
org $D0788E
db $E1, $01
; Gargoyle (Rank 7) > Omniscient (Rank 8) 
org $D078BC
db $E2, $01 
org $D078BE
db $E2, $01
; Triton (Rank 9) > Gilgamesh (Rank 5) 
org $D0786C
db $E3, $01 
org $D0786E
db $E3, $01
; Omniscient (Rank 8) > Stalker (Rank 9) 
org $D078B8
db $E4, $01 
org $D078BA
db $E4, $01
; Minotauros (Rank 8) > Calofisteri (Rank 10) 
org $D0791C
db $E5, $01 
org $D0791E
db $E5, $01
; Leviathan (Rank 9) > Titan (Rank 5) 
org $D07844
db $E6, $01 
org $D07846
db $E6, $01
; Stalker (Rank 9) > Triton (Rank 9) 
org $D078C8
db $E7, $01 
org $D078CA
db $E7, $01
; Gogo (Rank 9) > HiryuuPlant (Rank 6) 
org $D07878
db $E8, $01 
org $D0787A
db $E8, $01
; Bahamut (Rank 9) > Sergeant (Rank 4) 
org $D07820
db $E9, $01 
org $D07822
db $E9, $01
; Ifrit (Rank 3) > Bahamut (Rank 9) 
org $D078D0
db $EE, $01 
org $D078D2
db $EE, $01
; Shiva (Rank 4) > LiquiFlame (Rank 4) 
org $D0781C
db $F1, $01 
org $D0781E
db $F1, $01
; Calofisteri (Rank 10) > Karlabos (Rank 1) 
org $D07808
db $F2, $01 
org $D0780A
db $F2, $01
; Apocalypse (Rank 11) > Antlion (Rank 6) 
org $D07894
db $F3, $01 
org $D07896
db $F3, $01
; Catastroph (Rank 11) > Ifrit (Rank 3) 
org $D078E4
db $F4, $01 
org $D078E6
db $F4, $01
; Necrofobia (Rank 12) > Sol Cannon (Rank 5) 
org $D07838
db $F5, $01 
org $D0783A
db $F5, $01
; Twin Tania (Rank 12) > Minotauros (Rank 8) 
org $D078C0
db $F6, $01 
org $D078C2
db $F6, $01
; Apanda (Rank 10) > Chim.Brain (Rank 5) 
org $D07840
db $F8, $01 
org $D07842
db $F8, $01
; Crayclaw (Rank 6) > AdamanTiMi (Rank 4) 
org $D0782C
db $FA, $01 
org $D0782E
db $FA, $01

;=====================
;Kuzar Reward Text Fix
;=====================
; Haste
org $E23F98
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $67, $7A, $8C, $8D, $7E, $00
; Bolt
org $E240A6
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $61, $88, $85, $8D, $00
; DarkSuit
org $E23F7A
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $63, $7A, $8B, $84, $72, $8E, $82, $8D, $00
; Thunder Whip
org $E2404C
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $73, $81, $8E, $87, $7D, $7E, $8B, $96, $76, $81, $82, $89, $00
; Time Slip
org $E240C4
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $73, $82, $86, $7E, $96, $72, $85, $82, $89, $00
; Black Lv.5
org $E23FD4
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $61, $85, $7A, $7C, $84, $96, $6B, $8F, $A3, $58, $00
; Training Suit
org $E24010
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $73, $8B, $7A, $82, $87, $82, $87, $80, $96, $72, $8E, $82, $8D, $00
; TimeMage
org $E24088
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $73, $82, $86, $7E, $6C, $7A, $80, $7E, $00
; Analyze
org $E23FF2
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $60, $87, $7A, $85, $92, $93, $7E, $00
; Escape
org $E2406A
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $64, $8C, $7C, $7A, $89, $7E, $00
; Training Suit
org $E23FB6
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $73, $8B, $7A, $82, $87, $82, $87, $80, $96, $72, $8E, $82, $8D, $00
; Drain
org $E2402E
db $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $63, $8B, $7A, $82, $87, $00
