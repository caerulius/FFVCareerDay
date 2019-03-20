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
db $20, $3D
org $C0FAB4 
db $40, $AB
org $C0FAB6 
db $20, $34
org $C0FAB8 
db $40, $29
org $C0FABA 
db $40, $4E
org $C0FABC 
db $20, $99
org $C0FABE 
db $60, $7E
org $C0FAC0 
db $40, $8F
org $C0FAC2 
db $20, $31
org $C0FAC4 
db $60, $0C
org $C0FAC6 
db $40, $FB
org $C0FAC8 
db $50, $13
org $C0FACA 
db $60, $7A
org $C0FACC 
db $40, $A8
org $C0FACE 
db $40, $37
org $C0FAD0 
db $40, $6A
org $C0FAD2 
db $60, $41
org $C0FAD4 
db $60, $32
org $C0FAD6 
db $60, $50
org $C0FAD8 
db $40, $C2
org $C0FADA 
db $60, $52
org $C0FADC 
db $20, $97
org $C0FADE 
db $20, $86
org $C0FAE0 
db $60, $44
org $C0FAE2 
db $40, $1C
org $C0FAE4 
db $60, $09
org $C0FAE6 
db $40, $31
org $C0FAE8 
db $60, $77
org $C0FAEA 
db $40, $AC
org $C0FAEC 
db $40, $8F
org $C0FAEE 
db $20, $29
org $C0FAF0 
db $40, $8E
org $C0FAF2 
db $20, $26
org $C0FAF4 
db $40, $3C
org $C0FAF6 
db $60, $1D
org $C0FAF8 
db $40, $5B
org $C0FAFA 
db $60, $74
org $C0FAFC 
db $60, $70
org $C0FAFE 
db $40, $36
org $C0FB00 
db $20, $48
org $C0FB02 
db $40, $5D
org $C0FB04 
db $20, $2B
org $C0FB06 
db $40, $B4
org $C0FB08 
db $50, $0F
org $C0FB0A 
db $40, $A8
org $C0FB0C 
db $20, $2E
org $C0FB0E 
db $20, $36
org $C0FB10 
db $40, $A5
org $C0FB12 
db $20, $4E
org $C0FB14 
db $40, $A4
org $C0FB16 
db $50, $01
org $C0FB18 
db $40, $A1
org $C0FB1A 
db $40, $5D
org $C0FB1C 
db $60, $21
org $C0FB1E 
db $40, $BA
org $C0FB20 
db $40, $4A
org $C0FB22 
db $20, $59
org $C0FB24 
db $40, $F8
org $C0FB26 
db $60, $35
org $C0FB28 
db $40, $61
org $C0FB2A 
db $40, $63
org $D13212 
db $60, $30
org $D13216 
db $40, $67
org $D1321A 
db $40, $87
org $D1321E 
db $20, $4A
org $D13222 
db $40, $F5
org $D13226 
db $60, $20
org $D1322A 
db $20, $51
org $D1322E 
db $40, $66
org $D13232 
db $40, $0A
org $D13236 
db $40, $5D
org $D1323A 
db $40, $E7
org $D1323E 
db $40, $A2
org $D13242 
db $40, $9F
org $D13246 
db $20, $2C
org $D1324A 
db $40, $9F
org $D1324E 
db $40, $22
org $D13252 
db $60, $73
org $D13256 
db $20, $84
org $D1325A 
db $40, $A0
org $D1325E 
db $20, $83
org $D13262 
db $40, $C8
org $D13266 
db $60, $4B
org $D1326A 
db $60, $6A
org $D1326E 
db $60, $1E
org $D13272 
db $40, $C6
org $D13276 
db $40, $F9
org $D1327A 
db $60, $10
org $D1327E 
db $60, $6E
org $D13282 
db $60, $87
org $D13286 
db $40, $44
org $D1328A 
db $60, $83
org $D1328E 
db $20, $3C
org $D13292 
db $40, $42
org $D13296 
db $20, $49
org $D1329A 
db $20, $2F
org $D1329E 
db $40, $A8
org $D132A2 
db $60, $48
org $D132A6 
db $40, $A8
org $D132AA 
db $40, $BF
org $D132AE 
db $40, $C5
org $D132B2 
db $40, $9B
org $D132B6 
db $40, $0F
org $D132BA 
db $40, $69
org $D132BE 
db $40, $82
org $D132C2 
db $20, $4C
org $D132C6 
db $40, $06
org $D132CA 
db $60, $31
org $D132CE 
db $20, $40
org $D132D2 
db $40, $52
org $D132D6 
db $60, $3B
org $D132DA 
db $40, $59
org $D132DE 
db $40, $92
org $D132E2 
db $60, $1B
org $D132E6 
db $20, $87
org $D132EA 
db $40, $5C
org $D132EE 
db $40, $AD
org $D132F2 
db $40, $B4
org $D132F6 
db $40, $EA
org $D132FA 
db $40, $0F
org $D132FE 
db $60, $4D
org $D13302 
db $50, $04
org $D13306 
db $40, $D0
org $D1330A 
db $50, $06
org $D1330E 
db $40, $B2
org $D13312 
db $40, $93
org $D13316 
db $40, $8A
org $D1331A 
db $40, $85
org $D1331E 
db $20, $5A
org $D13322 
db $40, $F5
org $D13326 
db $40, $AA
org $D1332A 
db $40, $A1
org $D1332E 
db $40, $12
org $D13332 
db $20, $90
org $D13336 
db $40, $3A
org $D1333A 
db $20, $3E
org $D1333E 
db $40, $51
org $D13342 
db $40, $05
org $D13346 
db $60, $14
org $D1334A 
db $20, $4D
org $D1334E 
db $60, $0F
org $D13352 
db $40, $12
org $D13356 
db $40, $0D
org $D1335A 
db $60, $72
org $D1335E 
db $20, $8B
org $D13362 
db $40, $AC
org $D13366 
db $20, $1D
org $D1336A 
db $20, $52
org $D1336E 
db $40, $E0
org $D13372 
db $40, $AC
org $D13376 
db $40, $A0
org $D1337A 
db $60, $76
org $D1337E 
db $20, $46
org $D13382 
db $40, $23
org $D13386 
db $60, $81
org $D1338A 
db $40, $4E
org $D1338E 
db $40, $A8
org $D13392 
db $20, $17
org $D13396 
db $40, $A6
org $D1339A 
db $40, $2B
org $D1339E 
db $40, $0E
org $D133A2 
db $60, $07
org $D133A6 
db $40, $88
org $D133AA 
db $40, $96
org $D133AE 
db $20, $4B
org $D133B2 
db $40, $4E
org $D133B6 
db $40, $CD
org $D133BA 
db $40, $8B
org $D133BE 
db $40, $FD
org $D133C2 
db $40, $28
org $D133C6 
db $50, $0A
org $D133CA 
db $40, $60
org $D133CE 
db $40, $6A
org $D133D2 
db $40, $08
org $D133D6 
db $20, $27
org $D133DA 
db $40, $BE
org $D133DE 
db $20, $42
org $D133E2 
db $40, $05
org $D133E6 
db $40, $8B
org $D133EA 
db $40, $3E
org $D133EE 
db $40, $03
org $D133F2 
db $20, $82
org $D133F6 
db $20, $55
org $D133FA 
db $60, $75
org $D133FE 
db $40, $A7
org $D13402 
db $60, $1F
org $D13406 
db $40, $C3
org $D1340A 
db $40, $0C
org $D1340E 
db $40, $86
org $D13412 
db $40, $C9
org $D13416 
db $20, $39
org $D1341A 
db $40, $A9
org $D1341E 
db $40, $FC
org $D13422 
db $20, $32
org $D13426 
db $50, $09
org $D1342A 
db $60, $34
org $D1342E 
db $60, $40
org $D13432 
db $20, $54
org $D13436 
db $20, $33
org $D1343A 
db $60, $0E
org $D1343E 
db $40, $46
org $D13442 
db $60, $29
org $D13446 
db $40, $3C
org $D1344A 
db $20, $8D
org $D1344E 
db $20, $45
org $D13452 
db $40, $3B
org $D13456 
db $40, $95
org $D1345A 
db $60, $1A
org $D1345E 
db $60, $7B
org $D13462 
db $20, $37
org $D13466 
db $20, $93
org $D1346A 
db $40, $64
org $D1346E 
db $40, $64
org $D13472 
db $20, $50
org $D13476 
db $20, $25
org $D1347A 
db $60, $80
org $D1347E 
db $60, $78
org $D13482 
db $40, $A1
org $D13486 
db $40, $1C
org $D1348A 
db $40, $37
org $D1348E 
db $40, $AC
org $D13492 
db $60, $28
org $D13496 
db $40, $02
org $D1349A 
db $40, $27
org $D1349E 
db $40, $EB
org $D134A2 
db $50, $0B
org $D134A6 
db $40, $FB
org $D134AA 
db $40, $B4
org $D134AE 
db $40, $9B
org $D134B2 
db $60, $4A
org $D134B6 
db $40, $F5
org $D134BA 
db $40, $93
org $D134BE 
db $60, $53
org $D134C2 
db $40, $5A
org $D134C6 
db $40, $1D
org $D134CA 
db $40, $97
org $D134CE 
db $40, $9E
org $D134D2 
db $40, $CF
org $D134D6 
db $50, $0D
org $D134DA 
db $40, $07
org $D134DE 
db $40, $22
org $D134E2 
db $40, $C4
org $D134E6 
db $40, $5D
org $D134EA 
db $40, $0E
org $D134EE 
db $50, $08
org $D134F2 
db $60, $54
org $D134F6 
db $40, $E8
org $D134FA 
db $20, $38
org $D134FE 
db $60, $51
org $D13502 
db $40, $87
org $D13506 
db $40, $34
org $D1350A 
db $40, $F3
org $D1350E 
db $40, $92
org $D13512 
db $20, $16
org $D13516 
db $40, $85
org $D1351A 
db $40, $8A
org $D1351E 
db $20, $2A
org $D13522 
db $60, $33
org $D13526 
db $40, $62
org $D1352A 
db $40, $63
org $D1352E 
db $40, $0E
org $D13532 
db $40, $E0
org $D13536 
db $40, $A4
org $D1353A 
db $20, $47
org $D1353E 
db $20, $3F
org $D13542 
db $20, $41
org $D13546 
db $40, $C7
org $D1354A 
db $20, $4F
org $D1354E 
db $40, $5A
org $D13552 
db $60, $43
org $D13556 
db $40, $87
org $D1355A 
db $40, $8C
org $D1355E 
db $20, $98
org $D13562 
db $50, $0C
org $D13566 
db $40, $2A
org $D1356A 
db $40, $6A
org $D1356E 
db $20, $30
org $D13572 
db $40, $04
org $D13576 
db $40, $2B
org $D1357A 
db $40, $84
org $D1357E 
db $20, $53
org $D13582 
db $60, $7D
org $D13586 
db $40, $43
org $D1358A 
db $20, $21
org $D1358E 
db $20, $2D
org $D13592 
db $20, $28
org $D13596 
db $40, $85
org $D1359A 
db $20, $3B
org $D1359E 
db $20, $35
org $D135A2 
db $40, $3D
org $D135A6 
db $60, $49
org $D135AA 
db $20, $44
org $D135AE 
db $40, $25
org $D135B2 
db $40, $1A
org $D135B6 
db $60, $4C
org $D135BA 
db $40, $B6
org $D135BE 
db $40, $83
org $D135C2 
db $20, $96
org $D135C6 
db $60, $06
org $D135CA 
db $40, $5B
org $D135CE 
db $40, $22
org $D135D2 
db $40, $F3
org $D135D6 
db $60, $6D
org $D135DA 
db $50, $10
org $D135DE 
db $60, $79
org $D135E2 
db $20, $3A
org $D135E6 
db $40, $88
org $D135EA 
db $60, $45
org $D135EE 
db $60, $1C
org $D135F2 
db $20, $43
org $D135F6 
db $60, $42
org $D135FA 
db $40, $5D
org $D135FE 
db $20, $56
;=====
;shops
;=====
org $D12D40
db $07, $59, $71, $24, $00, $00, $00, $00, $00
org $D12D49
db $00, $24, $94, $91, $00, $00, $00, $00, $00
org $D12D52
db $03, $5B, $35, $00, $00, $00, $00, $00, $00
org $D12D5B
db $03, $8C, $9F, $11, $AD, $A8, $19, $92, $00
org $D12D64
db $00, $8A, $88, $8F, $00, $00, $00, $00, $00
org $D12D6D
db $03, $18, $24, $69, $69, $B7, $00, $00, $00
org $D12D76
db $03, $08, $A7, $09, $FC, $09, $A3, $0B, $A1
org $D12D7F
db $00, $22, $18, $13, $95, $1A, $5E, $20, $58
org $D12D88
db $07, $68, $17, $5A, $00, $00, $00, $00, $00
org $D12D91
db $00, $8E, $9B, $1B, $9A, $15, $00, $00, $00
org $D12D9A
db $03, $8F, $0D, $A7, $99, $87, $EA, $4E, $00
org $D12DA3
db $03, $6C, $04, $8C, $1E, $27, $F2, $09, $00
org $D12DAC
db $07, $05, $08, $18, $03, $00, $00, $00, $00
org $D12DB5
db $00, $19, $23, $89, $5D, $9E, $9D, $5B, $1E
org $D12DBE
db $03, $24, $B6, $8C, $21, $B1, $A0, $B1, $3F
org $D12DC7
db $07, $58, $19, $6C, $11, $69, $61, $15, $16
org $D12DD0
db $07, $14, $02, $2A, $0D, $85, $60, $3C, $11
org $D12DD9
db $03, $27, $9F, $6D, $C4, $49, $34, $00, $00
org $D12DE2
db $00, $9F, $1F, $92, $14, $00, $00, $00, $00
org $D12DEB
db $07, $27, $7C, $00, $00, $00, $00, $00, $00
org $D12DFD
db $03, $62, $F4, $A9, $00, $00, $00, $00, $00
org $D12E18
db $00, $5C, $12, $9C, $57, $8C, $85, $00, $00
org $D12E21
db $03, $97, $4C, $22, $00, $00, $00, $00, $00
org $D12E2A
db $03, $FD, $82, $2B, $EF, $EB, $A2, $64, $49
org $D12E33
db $03, $F9, $3C, $3A, $8E, $BB, $00, $00, $00
org $D12E3C
db $07, $00, $38, $00, $00, $00, $00, $00, $00
org $D12E45
db $07, $12, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $03, $FE, $02, $42, $EB, $33, $6B, $FB, $B0
org $D12E57
db $07, $0E, $6F, $0B, $13, $12, $22, $39, $00
org $D12E60
db $03, $C2, $3C, $9F, $EB, $C3, $32, $5E, $4C
org $D12E69
db $03, $93, $66, $FA, $34, $99, $F5, $FC, $8C
org $D12E72
db $03, $07, $44, $F5, $5B, $13, $97, $A6, $00
org $D12E7B
db $03, $6E, $FB, $8B, $AE, $5F, $9C, $FA, $2A
org $D12E84
db $03, $B7, $3D, $A0, $9A, $00, $00, $00, $00
org $D12E8D
db $03, $11, $05, $9C, $00, $00, $00, $00, $00
org $D12E96
db $03, $49, $B8, $04, $00, $00, $00, $00, $00
org $D12E9F
db $03, $92, $8F, $32, $15, $00, $00, $00, $00
org $D12EA8
db $03, $F6, $C1, $8B, $3C, $00, $00, $00, $00
org $D12EB1
db $03, $0D, $91, $A5, $B7, $35, $41, $34, $31
org $D12EBA
db $03, $05, $09, $00, $00, $00, $00, $00, $00
org $D12EC3
db $03, $9B, $8A, $24, $0F, $A5, $FA, $EA, $FA
org $D12ECC
db $03, $CE, $E5, $9B, $06, $96, $9C, $AC, $00
org $D12ED5
db $03, $06, $F7, $E6, $1E, $5A, $F9, $00, $00
org $D12EDE
db $03, $97, $84, $58, $95, $8B, $B7, $00, $00
org $D12EF9
db $03, $8C, $67, $32, $88, $33, $CC, $93, $AD
org $D12F02
db $03, $C3, $C0, $0D, $98, $C2, $FC, $4C, $00
org $D12F0B
db $03, $94, $96, $4B, $F6, $00, $00, $00, $00
org $D12F14
db $03, $6E, $35, $8B, $2F, $2B, $34, $98, $35
org $D12F26
db $03, $33, $56, $6A, $B6, $3C, $6B, $F9, $00
org $D12F2F
db $03, $03, $5A, $31, $4E, $88, $4D, $BA, $00
org $D12F38
db $03, $6A, $81, $F3, $A5, $0E, $87, $BE, $81
org $D12F41
db $03, $8A, $4C, $6A, $08, $AC, $4C, $00, $00
org $D12F4A
db $03, $AA, $A2, $84, $2C, $4E, $91, $00, $00
org $D12F53
db $03, $9D, $8E, $32, $38, $97, $A5, $1D, $B6
org $D12F5C
db $03, $0E, $35, $CD, $B9, $C3, $9F, $98, $36
org $D12F65
db $03, $43, $31, $FA, $23, $8F, $12, $98, $5A
org $D12F6E
db $03, $F3, $00, $00, $00, $00, $00, $00, $00
org $D12F77
db $03, $35, $00, $00, $00, $00, $00, $00, $00

;=====
;shop prices
;=====
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
db $44, $02
org $D12A2C
db $44, $03
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
db $44, $02
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
db $44, $02
org $D12A50
db $44, $03
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
db $44, $02
org $D12A5E
db $44, $02
org $D12A60
db $44, $03
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
db $44, $02
org $D12A8C
db $44, $03
org $D12A8E
db $02, $08
org $D12A90
db $02, $10
org $D12A92
db $02, $20
org $D12A94
db $44, $02
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
db $44, $02
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
db $00, $02
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
db $00, $02
org $D12AC6
db $00, $02
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
db $00, $02
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
db $00, $02
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
db $01, $0a
org $D12B5E
db $04, $03
org $D12B60
db $03, $03
org $D12B62
db $03, $05
org $D12B64
db $02, $28
org $D12B66
db $00, $02
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
db $00, $02
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
db $00, $02
org $D12B9A
db $04, $04
org $D12B9C
db $00, $02
org $D12B9E
db $02, $3a
org $D12BA0
db $02, $62
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
db $45, $01
org $D12BD8
db $01, $0f
org $D12BDA
db $01, $05
org $D12BDC
db $01, $00
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
db $80, $02
org $D12BF0
db $80, $02
org $D12BF2
db $83, $05
org $D12BF4
db $83, $05
org $D12BF6
db $83, $05
org $D12BF8
db $02, $02
org $D12BFA
db $02, $02
org $D12BFC
db $02, $02
org $F80000
db $01, $00
org $F80002
db $01, $00
org $F80004
db $01, $00
org $F80006
db $01, $00
org $F80008
db $01, $00
org $F8000A
db $01, $00
org $F8000C
db $01, $00
org $F8000E
db $01, $00
org $F80010
db $01, $00
org $F80012
db $01, $00
org $F80014
db $01, $00
org $F80016
db $01, $00
org $F80018
db $01, $00
org $F8001A
db $01, $00
org $F8001C
db $01, $00
org $F8001E
db $01, $00
org $F80020
db $01, $00
org $F80022
db $01, $00
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
db $01, $00
org $F80098
db $02, $0a
org $F8009A
db $02, $0a
org $F8009C
db $02, $0a
org $F8009E
db $02, $0a
org $F800A0
db $02, $0a
org $F800A2
db $02, $0a
org $F800A4
db $02, $0a
org $F800A6
db $02, $0a
org $F800A8
db $02, $0a
org $F800AA
db $02, $0a
org $F800AC
db $02, $0a
org $F800AE
db $02, $0a
org $F800B0
db $02, $0a
org $F800B2
db $02, $0a
org $F800B4
db $02, $0a
org $F800B6
db $02, $0a
org $F800B8
db $02, $0a
org $F800BA
db $02, $0a
org $F800BC
db $02, $0a
org $F80104
db $02, $0a
org $F80106
db $02, $0a
org $F80108
db $02, $0a
org $F8010A
db $02, $0a
org $F8010C
db $02, $0a
org $F8010E
db $02, $0a
org $F80110
db $02, $0a
org $F80112
db $02, $0a
org $F80114
db $02, $0a
org $F80116
db $02, $0a
org $F80118
db $02, $0a
org $F8011A
db $02, $0a
org $F8011C
db $02, $0a
org $F8011E
db $02, $0a
org $F80120
db $02, $0a
org $F80122
db $02, $0a
org $F80124
db $02, $0a
org $F80126
db $02, $0a
org $F80128
db $02, $0a
org $F8012A
db $02, $0a
org $F8012C
db $02, $0a
org $F8012E
db $02, $0a
org $F80130
db $02, $0a
org $F80132
db $02, $0a
org $F80134
db $02, $0a
org $F80136
db $02, $0a
org $F80138
db $02, $0a
org $F8013A
db $02, $0a
org $F8013C
db $02, $0a
org $F8013E
db $02, $0a
org $F80200
db $02, $0a
org $F80202
db $02, $0a
org $F80204
db $02, $0a
org $F80206
db $02, $0a
org $F80208
db $02, $0a
org $F8020A
db $02, $0a
org $F8020C
db $02, $0a
org $F8020E
db $02, $0a
org $F80210
db $02, $0a
org $F80212
db $02, $0a
org $F80214
db $02, $0a
org $F80216
db $02, $0a
org $F80218
db $02, $0a
org $F8021A
db $02, $0a
org $F8021C
db $02, $0a
org $F8021E
db $02, $0a
org $F80220
db $02, $0a
org $F80222
db $02, $0a
org $F80224
db $02, $0a
org $F80226
db $02, $0a
org $F80228
db $02, $0a
org $F8022A
db $02, $0a
org $F8022C
db $02, $0a
org $F8022E
db $02, $0a
org $F80230
db $02, $0a
org $F80232
db $02, $0a
org $F80234
db $02, $0a
org $F80236
db $02, $0a
org $F80238
db $02, $0a
org $F8023A
db $02, $0a
org $F8023C
db $02, $0a
org $F8023E
db $02, $0a
org $F80240
db $02, $0a
org $F80242
db $02, $0a
org $F80244
db $02, $0a
org $F80246
db $02, $0a
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
db $02, $0a
org $F80254
db $02, $0a
org $F80260
db $02, $0a
org $F80262
db $02, $0a
org $F80264
db $02, $0a
org $F80266
db $02, $0a
org $F80268
db $02, $0a
org $F8026A
db $02, $0a
org $F80270
db $02, $0a
org $F80272
db $02, $0a
org $F80274
db $02, $0a
org $F80276
db $02, $0a
org $F80278
db $02, $0a
org $F8027A
db $02, $0a
org $F80280
db $02, $0a
org $F80282
db $02, $0a
org $F80284
db $02, $0a
org $F80286
db $02, $0a
org $F80288
db $02, $0a
org $F8028A
db $02, $0a
org $F80290
db $02, $0a
org $F80292
db $02, $0a
org $F80294
db $02, $0a
org $F80296
db $02, $0a
org $F80298
db $02, $0a
org $F8029A
db $02, $0a
org $F802A0
db $02, $0a
org $F802A2
db $02, $0a
org $F802A4
db $02, $0a
org $F802A6
db $02, $0a
org $F802A8
db $02, $0a
org $F802B0
db $02, $0a
org $F802B2
db $02, $0a
org $F802B4
db $02, $0a
org $F802C0
db $02, $0a
org $F802C2
db $02, $0a
org $F802E4
db $02, $0a
org $F802E6
db $02, $0a
org $F802E8
db $02, $0a
org $F802EA
db $02, $0a
org $F802EC
db $02, $0a
org $F802EE
db $02, $0a
org $F802F0
db $02, $0a
org $F802F2
db $02, $0a
org $F802F4
db $02, $0a
org $F802F6
db $02, $0a
org $F802F8
db $02, $0a
org $F802FA
db $02, $0a
org $F802FC
db $02, $0a
org $F802FE
db $02, $0a
org $F80300
db $02, $0a
org $F80302
db $02, $0a
org $F80304
db $02, $0a
org $F80306
db $02, $0a
org $F80308
db $02, $0a
org $F8030A
db $02, $0a
org $F8030C
db $02, $0a
org $F80310
db $02, $0a
org $F80312
db $03, $0a
org $F80314
db $03, $0a
org $F80316
db $03, $0a
org $F80318
db $03, $0a
org $F8031A
db $03, $0a
org $F8031C
db $03, $0a
org $F8031E
db $03, $0a
org $F80320
db $03, $0a
org $F80322
db $03, $0a
org $F80324
db $03, $0a
org $F80326
db $03, $0a
org $F80328
db $03, $0a
org $F8032A
db $03, $0a
org $F8032C
db $03, $0a
org $F8032E
db $03, $0a
org $F80330
db $03, $0a
org $F80332
db $03, $0a
org $F80334
db $03, $0a
org $F80336
db $03, $0a
org $F80338
db $03, $0a
org $F8033A
db $03, $0a
org $F8033C
db $03, $0a