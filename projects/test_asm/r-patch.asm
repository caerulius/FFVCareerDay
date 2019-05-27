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
db $60, $22
org $C0FAB4 
db $60, $2A
org $C0FAB6 
db $20, $26
org $C0FAB8 
db $40, $33
org $C0FABA 
db $40, $E1
org $C0FABC 
db $40, $35
org $C0FABE 
db $20, $0F
org $C0FAC0 
db $60, $20
org $C0FAC2 
db $40, $D0
org $C0FAC4 
db $40, $E4
org $C0FAC6 
db $40, $C7
org $C0FAC8 
db $40, $82
org $C0FACA 
db $40, $CF
org $C0FACC 
db $40, $F3
org $C0FACE 
db $40, $A5
org $C0FAD0 
db $40, $39
org $C0FAD2 
db $40, $56
org $C0FAD4 
db $20, $04
org $C0FAD6 
db $40, $31
org $C0FAD8 
db $20, $24
org $C0FADA 
db $20, $14
org $C0FADC 
db $60, $02
org $C0FADE 
db $40, $A4
org $C0FAE0 
db $40, $CA
org $C0FAE2 
db $60, $2C
org $C0FAE4 
db $40, $44
org $C0FAE6 
db $60, $08
org $C0FAE8 
db $40, $CA
org $C0FAEA 
db $40, $FC
org $C0FAEC 
db $60, $13
org $C0FAEE 
db $40, $12
org $C0FAF0 
db $20, $1A
org $C0FAF2 
db $40, $FE
org $C0FAF4 
db $40, $C9
org $C0FAF6 
db $40, $9A
org $C0FAF8 
db $40, $AE
org $C0FAFA 
db $40, $81
org $C0FAFC 
db $60, $0E
org $C0FAFE 
db $60, $25
org $C0FB00 
db $40, $87
org $C0FB02 
db $40, $E2
org $C0FB04 
db $60, $09
org $C0FB06 
db $60, $38
org $C0FB08 
db $20, $1D
org $C0FB0A 
db $40, $41
org $C0FB0C 
db $40, $4F
org $C0FB0E 
db $40, $35
org $C0FB10 
db $40, $92
org $C0FB12 
db $60, $43
org $C0FB14 
db $40, $81
org $C0FB16 
db $40, $CE
org $C0FB18 
db $40, $6C
org $C0FB1A 
db $40, $B9
org $C0FB1C 
db $60, $01
org $C0FB1E 
db $40, $E1
org $C0FB20 
db $40, $0C
org $C0FB22 
db $20, $20
org $C0FB24 
db $20, $06
org $C0FB26 
db $20, $1B
org $C0FB28 
db $60, $0E
org $C0FB2A 
db $50, $00
org $C0FB2C 
db $20, $10
org $C0FB2E 
db $60, $39
org $C0FB30 
db $40, $E2
org $C0FB32 
db $40, $FD
org $C0FB34 
db $40, $3C
org $C0FB36 
db $40, $86
org $C0FB38 
db $40, $5F
org $C0FB3A 
db $40, $4D
org $C0FB3C 
db $60, $0C
org $C0FB3E 
db $50, $09
org $C0FB40 
db $40, $EF
org $D13212 
db $20, $08
org $D13216 
db $60, $3C
org $D1321A 
db $40, $0E
org $D1321E 
db $40, $F3
org $D13222 
db $40, $E0
org $D13226 
db $40, $AF
org $D1322A 
db $A4, $13
org $D1322E 
db $02, $03
org $D13232 
db $20, $02
org $D13236 
db $20, $13
org $D1323A 
db $40, $2E
org $D1323E 
db $04, $02
org $D13242 
db $03, $0F
org $D13246 
db $40, $8A
org $D1324A 
db $40, $3A
org $D1324E 
db $40, $0E
org $D13252 
db $60, $23
org $D13256 
db $40, $F1
org $D1325A 
db $40, $C3
org $D1325E 
db $40, $09
org $D13262 
db $60, $1B
org $D13266 
db $60, $1C
org $D1326A 
db $04, $01
org $D1326E 
db $03, $09
org $D13272 
db $40, $97
org $D13276 
db $40, $99
org $D1327A 
db $20, $27
org $D1327E 
db $40, $5B
org $D13282 
db $40, $33
org $D13286 
db $03, $0C
org $D1328A 
db $03, $09
org $D1328E 
db $40, $87
org $D13292 
db $03, $0C
org $D13296 
db $20, $17
org $D1329A 
db $02, $01
org $D1329E 
db $50, $0B
org $D132A2 
db $40, $E4
org $D132A6 
db $20, $26
org $D132AA 
db $40, $62
org $D132AE 
db $40, $AE
org $D132B2 
db $40, $E4
org $D132B6 
db $40, $E5
org $D132BA 
db $40, $F1
org $D132BE 
db $40, $2A
org $D132C2 
db $40, $05
org $D132C6 
db $20, $1F
org $D132CA 
db $40, $66
org $D132CE 
db $20, $07
org $D132D2 
db $40, $E5
org $D132D6 
db $04, $01
org $D132DA 
db $40, $2A
org $D132DE 
db $40, $CA
org $D132E2 
db $40, $49
org $D132E6 
db $40, $CC
org $D132EA 
db $40, $35
org $D132EE 
db $20, $06
org $D132F2 
db $20, $1A
org $D132F6 
db $A1, $93
org $D132FA 
db $40, $97
org $D132FE 
db $A2, $91
org $D13302 
db $A0, $E3
org $D13306 
db $A3, $FD
org $D1330A 
db $A0, $29
org $D1330E 
db $A3, $CB
org $D13312 
db $A2, $2F
org $D13316 
db $40, $38
org $D1331A 
db $A0, $4D
org $D1331E 
db $A0, $E8
org $D13322 
db $A0, $A8
org $D13326 
db $40, $8C
org $D1332A 
db $A1, $93
org $D1332E 
db $A1, $57
org $D13332 
db $60, $23
org $D13336 
db $40, $B1
org $D1333A 
db $40, $AE
org $D1333E 
db $40, $67
org $D13342 
db $03, $19
org $D13346 
db $20, $15
org $D1334A 
db $01, $31
org $D1334E 
db $40, $81
org $D13352 
db $40, $6B
org $D13356 
db $20, $09
org $D1335A 
db $02, $2C
org $D1335E 
db $03, $02
org $D13362 
db $20, $1D
org $D13366 
db $40, $AD
org $D1336A 
db $03, $05
org $D1336E 
db $02, $01
org $D13372 
db $20, $13
org $D13376 
db $40, $33
org $D1337A 
db $40, $24
org $D1337E 
db $02, $31
org $D13382 
db $40, $37
org $D13386 
db $20, $10
org $D1338A 
db $40, $1D
org $D1338E 
db $01, $0F
org $D13392 
db $20, $19
org $D13396 
db $40, $C1
org $D1339A 
db $02, $63
org $D1339E 
db $60, $23
org $D133A2 
db $40, $FE
org $D133A6 
db $40, $12
org $D133AA 
db $40, $95
org $D133AE 
db $60, $31
org $D133B2 
db $60, $20
org $D133B6 
db $60, $37
org $D133BA 
db $03, $12
org $D133BE 
db $40, $6E
org $D133C2 
db $04, $01
org $D133C6 
db $20, $03
org $D133CA 
db $40, $66
org $D133CE 
db $20, $09
org $D133D2 
db $40, $41
org $D133D6 
db $20, $24
org $D133DA 
db $03, $01
org $D133DE 
db $20, $07
org $D133E2 
db $40, $E6
org $D133E6 
db $40, $50
org $D133EA 
db $60, $1A
org $D133EE 
db $20, $0A
org $D133F2 
db $20, $1A
org $D133F6 
db $02, $5F
org $D133FA 
db $40, $3E
org $D133FE 
db $03, $05
org $D13402 
db $40, $A3
org $D13406 
db $03, $02
org $D1340A 
db $40, $F6
org $D1340E 
db $03, $02
org $D13412 
db $20, $17
org $D13416 
db $60, $34
org $D1341A 
db $20, $1C
org $D1341E 
db $20, $17
org $D13422 
db $03, $01
org $D13426 
db $04, $02
org $D1342A 
db $40, $39
org $D1342E 
db $03, $08
org $D13432 
db $60, $0D
org $D13436 
db $40, $93
org $D1343A 
db $40, $44
org $D1343E 
db $A5, $B0
org $D13442 
db $A5, $5F
org $D13446 
db $40, $E9
org $D1344A 
db $03, $01
org $D1344E 
db $40, $28
org $D13452 
db $40, $A6
org $D13456 
db $40, $E4
org $D1345A 
db $60, $23
org $D1345E 
db $40, $A0
org $D13462 
db $40, $23
org $D13466 
db $40, $B5
org $D1346A 
db $40, $F2
org $D1346E 
db $20, $16
org $D13472 
db $40, $9F
org $D13476 
db $40, $C2
org $D1347A 
db $60, $33
org $D1347E 
db $A6, $8C
org $D13482 
db $20, $02
org $D13486 
db $A6, $34
org $D1348A 
db $A9, $16
org $D1348E 
db $40, $88
org $D13492 
db $A6, $0D
org $D13496 
db $40, $39
org $D1349A 
db $40, $93
org $D1349E 
db $A6, $2A
org $D134A2 
db $A7, $8E
org $D134A6 
db $40, $B5
org $D134AA 
db $40, $C0
org $D134AE 
db $A6, $24
org $D134B2 
db $40, $0E
org $D134B6 
db $40, $EB
org $D134BA 
db $40, $E8
org $D134BE 
db $40, $14
org $D134C2 
db $A6, $C6
org $D134C6 
db $A6, $32
org $D134CA 
db $A8, $56
org $D134CE 
db $A6, $41
org $D134D2 
db $20, $14
org $D134D6 
db $40, $F6
org $D134DA 
db $A6, $B5
org $D134DE 
db $40, $13
org $D134E2 
db $AA, $95
org $D134E6 
db $40, $29
org $D134EA 
db $A6, $50
org $D134EE 
db $AB, $88
org $D134F2 
db $40, $A7
org $D134F6 
db $20, $17
org $D134FA 
db $40, $98
org $D134FE 
db $40, $6A
org $D13502 
db $AC, $AE
org $D13506 
db $40, $09
org $D1350A 
db $40, $38
org $D1350E 
db $03, $0C
org $D13512 
db $40, $B6
org $D13516 
db $40, $85
org $D1351A 
db $40, $B3
org $D1351E 
db $03, $05
org $D13522 
db $20, $13
org $D13526 
db $03, $01
org $D1352A 
db $40, $81
org $D1352E 
db $40, $B0
org $D13532 
db $60, $06
org $D13536 
db $04, $01
org $D1353A 
db $40, $A5
org $D1353E 
db $20, $12
org $D13542 
db $60, $32
org $D13546 
db $60, $3F
org $D1354A 
db $40, $1C
org $D1354E 
db $02, $19
org $D13552 
db $20, $1F
org $D13556 
db $40, $B5
org $D1355A 
db $40, $55
org $D1355E 
db $50, $04
org $D13562 
db $20, $21
org $D13566 
db $60, $2D
org $D1356A 
db $20, $05
org $D1356E 
db $03, $09
org $D13572 
db $40, $5B
org $D13576 
db $40, $98
org $D1357A 
db $60, $20
org $D1357E 
db $AD, $F7
org $D13582 
db $AD, $51
org $D13586 
db $AD, $40
org $D1358A 
db $AD, $A6
org $D1358E 
db $AD, $92
org $D13592 
db $AD, $03
org $D13596 
db $AD, $46
org $D1359A 
db $AD, $E8
org $D1359E 
db $AD, $FB
org $D135A2 
db $AD, $B2
org $D135A6 
db $40, $23
org $D135AA 
db $50, $0E
org $D135AE 
db $40, $FA
org $D135B2 
db $40, $38
org $D135B6 
db $60, $03
org $D135BA 
db $40, $BA
org $D135BE 
db $40, $BD
org $D135C2 
db $03, $01
org $D135C6 
db $20, $15
org $D135CA 
db $20, $0E
org $D135CE 
db $20, $15
org $D135D2 
db $01, $63
org $D135D6 
db $02, $01
org $D135DA 
db $20, $0C
org $D135DE 
db $03, $0C
org $D135E2 
db $40, $03
org $D135E6 
db $60, $32
org $D135EA 
db $60, $30
org $D135EE 
db $40, $94
org $D135F2 
db $40, $3B
org $D135F6 
db $03, $08
org $D135FA 
db $AE, $5E
org $D135FE 
db $60, $22
org $C0FB70 
db $40, $AE
org $C0FB72 
db $40, $8F
org $C0FB74 
db $30, $0D
org $C0FB76 
db $30, $0B
org $C0FB78 
db $40, $2E
org $C0FB7A 
db $30, $07
org $C0FB7C 
db $30, $02
org $C0FB7E 
db $30, $16
org $C0FB80 
db $40, $86
org $C0FB82 
db $40, $26
org $C0FB84 
db $30, $12
org $C0FB86 
db $30, $04
org $C0FB88 
db $40, $67
org $C0FB8A 
db $30, $1C
org $C0FB8C 
db $40, $27
org $C0FB8E 
db $40, $C9
org $C0FB90 
db $40, $AE
org $C0FB92 
db $40, $2E
org $C0FB94 
db $40, $45
org $C0FB96 
db $40, $5C
org $C0FB98 
db $40, $A0
org $C0FB9A 
db $40, $28
org $C0FB9C 
db $30, $03
org $C0FB9E 
db $30, $06
org $C0FBA0 
db $30, $0E
org $C0FBA2 
db $30, $1B
org $C0FBA4 
db $30, $00
org $C0FBA6 
db $30, $1D
org $C0FBA8 
db $30, $05
org $C0FBAA 
db $40, $37
org $C0FBAC 
db $30, $1A
org $C0FBAE 
db $40, $C9
org $C0FBB0 
db $30, $01
org $C0FBB2 
db $40, $14
org $C0FBB4 
db $40, $86
org $C0FBB6 
db $30, $08
org $C0FBB8 
db $30, $15
org $C0FBBA 
db $30, $0C
; Key items prompts (1 per key item) 
;Hiryuu Call
org $E2A10B
db  $67, $82, $8B, $92, $8E, $8E, $96, $62, $7A, $85, $85, $A2, $00
;Big Bridge Key
org $E2A166
db  $61, $82, $80, $96, $61, $8B, $82, $7D, $80, $7E, $96, $6A, $7E, $92, $A2, $00
;Mirage Radar
org $E2A1C6
db  $6C, $82, $8B, $7A, $80, $7E, $96, $71, $7A, $7D, $7A, $8B, $A2, $00

; Key items block text (menu choices before choosing) 
org $E2A0A7
db $67, $82, $8B, $92, $8E, $8E, $96, $62, $7A, $85, $85, $01,  $61, $82, $80, $96, $61, $8B, $82, $7D, $80, $7E, $96, $6A, $7E, $92, $01,  $6C, $82, $8B, $7A, $80, $7E, $96, $71, $7A, $7D, $7A, $8B, $01, $00

; Addresses in events for key item actual rewards
org $F90406
db $7C
org $F90426
db $6B
org $F90416
db $6A
;=====
;shops
;=====
org $D12D40
db $00, $58, $55, $31, $00, $00, $00, $00, $00
org $D12D49
db $01, $E2, $6D, $37, $92, $E6, $E9, $EC, $F0
org $D12D52
db $07, $11, $69, $00, $00, $00, $00, $00, $00
org $D12D5B
db $07, $42, $45, $70, $76, $00, $00, $00, $00
org $D12D64
db $01, $48, $10, $EF, $6A, $ED, $ED, $00, $00
org $D12D6D
db $01, $99, $4B, $97, $B4, $00, $00, $00, $00
org $D12D76
db $07, $51, $85, $1F, $54, $00, $00, $00, $00
org $D12D7F
db $00, $0A, $9B, $16, $95, $11, $00, $00, $00
org $D12D88
db $01, $56, $65, $E0, $3F, $E8, $00, $00, $00
org $D12D91
db $00, $4D, $51, $96, $09, $2F, $00, $00, $00
org $D12D9A
db $00, $89, $37, $94, $19, $88, $00, $00, $00
org $D12DA3
db $01, $9B, $E3, $48, $CE, $A1, $CD, $3A, $E4
org $D12DAC
db $01, $67, $89, $EC, $17, $E1, $E4, $E8, $EC
org $D12DB5
db $07, $8F, $1E, $32, $52, $00, $00, $00, $00
org $D12DBE
db $01, $ED, $B8, $47, $19, $06, $58, $40, $B7
org $D12DC7
db $00, $83, $5E, $33, $24, $15, $00, $00, $00
org $D12DD0
db $01, $86, $E0, $8F, $C0, $95, $08, $BA, $F7
org $D12DD9
db $07, $31, $9C, $34, $6A, $00, $00, $00, $00
org $D12DE2
db $00, $0C, $5B, $9C, $00, $00, $00, $00, $00
org $D12DEB
db $01, $06, $51, $57, $59, $E3, $E7, $E8, $F1
org $D12DFD
db $07, $8A, $4B, $9D, $00, $00, $00, $00, $00
org $D12E18
db $01, $52, $B0, $14, $0B, $07, $EA, $E5, $E9
org $D12E21
db $00, $92, $2D, $2E, $00, $00, $00, $00, $00
org $D12E2A
db $07, $18, $3C, $19, $93, $00, $00, $00, $00
org $D12E33
db $00, $21, $29, $3B, $2B, $98, $00, $00, $00
org $D12E3C
db $07, $73, $00, $00, $00, $00, $00, $00, $00
org $D12E45
db $07, $43, $00, $00, $00, $00, $00, $00, $00
org $D12E4E
db $01, $58, $32, $BA, $33, $0D, $BE, $A1, $92
org $D12E57
db $00, $0D, $13, $18, $52, $26, $00, $00, $00
org $D12E60
db $07, $53, $7E, $8B, $28, $00, $00, $00, $00
org $D12E69
db $01, $CB, $F2, $14, $4B, $1A, $E0, $AF, $33
org $D12E72
db $00, $25, $30, $44, $8F, $05, $00, $00, $00
org $D12E7B
db $01, $10, $9E, $8D, $F1, $B1, $F5, $9F, $E1
org $D12E84
db $07, $58, $95, $38, $00, $00, $00, $00, $00
org $D12E8D
db $07, $06, $90, $10, $00, $00, $00, $00, $00
org $D12E96
db $00, $06, $0E, $00, $00, $00, $00, $00, $00
org $D12E9F
db $01, $3F, $B4, $44, $6B, $63, $E7, $E9, $F1
org $D12EA8
db $00, $35, $8E, $40, $42, $82, $00, $00, $00
org $D12EB1
db $01, $23, $0D, $FD, $15, $20, $18, $E7, $5D
org $D12EBA
db $07, $68, $20, $00, $00, $00, $00, $00, $00
org $D12EC3
db $00, $1A, $9E, $93, $01, $00, $00, $00, $00
org $D12ECC
db $00, $10, $8A, $3E, $49, $59, $00, $00, $00
org $D12ED5
db $01, $69, $12, $BE, $99, $6E, $95, $E2, $E5
org $D12EDE
db $00, $3F, $9A, $54, $90, $07, $00, $00, $00
org $D12EF9
db $07, $0A, $61, $50, $82, $00, $00, $00, $00
org $D12F02
db $00, $4A, $99, $14, $0F, $1C, $00, $00, $00
org $D12F0B
db $01, $2A, $F0, $B5, $03, $E3, $05, $E4, $E6
org $D12F14
db $07, $4D, $1C, $29, $1A, $00, $00, $00, $00
org $D12F26
db $01, $02, $96, $64, $F0, $B8, $88, $F7, $E5
org $D12F2F
db $07, $15, $39, $81, $9A, $00, $00, $00, $00
org $D12F38
db $07, $27, $6F, $6C, $44, $00, $00, $00, $00
org $D12F41
db $01, $CB, $2D, $F8, $A2, $F4, $E1, $00, $00
org $D12F4A
db $01, $81, $CB, $64, $8E, $AF, $31, $E2, $E6
org $D12F53
db $01, $B6, $EB, $58, $A3, $48, $61, $26, $C3
org $D12F5C
db $07, $79, $7A, $9B, $99, $00, $00, $00, $00
org $D12F65
db $07, $59, $60, $17, $91, $00, $00, $00, $00

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
db $02, $19
org $D12AB6
db $03, $19
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
db $03, $19
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
db $03, $0C
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
db $04, $05
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
db $04, $05
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
;  ########################### 
;  # New AI for enemy: Omega
;  ########################### 
; New AOE skill: L3
org $D0B235
db $88
; New AOE skill: TidalWave
org $D0B238
db $D1
; New AOE skill: L3
org $D0B23D
db $88
; New AOE skill: BreathWing
org $D0B245
db $DA
; New AOE skill: Blaze
org $D0B248
db $CD
; New AOE skill: Snowstorm
org $D0B24E
db $CC
; New single target skill: Demi
org $D0B236
db $3C
; New single target skill: GoblinPunch
org $D0B237
db $93
; New single target skill: Haste2
org $D0B23A
db $43
; New single target skill: Fight
org $D0B23B
db $80
; New single target skill: Bolt3
org $D0B23C
db $32
; New single target skill: MindBlast
org $D0B243
db $97
; New single target skill: Vampire
org $D0B244
db $98
; New single target skill: Demi
org $D0B247
db $3C
; New single target skill: Time
org $D0B249
db $8C
; New single target skill: Question
org $D0B24C
db $9C
; New single target skill: Vampire
org $D0B24D
db $98
; New single target skill: Emission
org $D0B25B
db $92
; New single target skill: Bolt3
org $D0B25C
db $32
; New single target skill: ZombiePowder
org $D0B25F
db $B8
; New single target skill: Bone
org $D0B260
db $C3
; New status skill: Slow2
org $D0B25D
db $40
; New status skill: Flash
org $D0B261
db $8B
;  ########################### 
;  # New AI for enemy: Shinryuu
;  ########################### 
; New AOE skill: SurgeBeam
org $D0C532
db $DD
; New AOE skill: Maelstrom
org $D0C533
db $C2
; New AOE skill: L2
org $D0C534
db $87
; New AOE skill: L4
org $D0C53F
db $86
; New AOE skill: TrueEdge
org $D0C540
db $D0
; New AOE skill: EarthShaker
org $D0C55C
db $CF
; New AOE skill: MegaFlare
org $D0C567
db $D2
; New single target skill: WhiteHole
org $D0C52F
db $C0
; New single target skill: WhiteHole
org $D0C53B
db $C0
; New single target skill: Doom
org $D0C546
db $34
; New single target skill: GoblinPunch
org $D0C547
db $93
; New single target skill: Tailscrew
org $D0C54A
db $C4
; New single target skill: Fire3
org $D0C54B
db $30
; New single target skill: Bolt3
org $D0C52E
db $32
; New status skill: DarkShock
org $D0C530
db $94
; New status skill: Stop
org $D0C53A
db $3D
; New status skill: Mute
org $D0C53C
db $15
; New status skill: Condemn
org $D0C53E
db $82
; New status skill: Void
org $D0C548
db $39
; New status skill: DarkShock
org $D0C54C
db $94

; CODE OF THE VOID: 
org $E77476
db $93, $6C, $61, $7A, $90, $67
org $F80900
db $93, $6C, $61, $7A, $90, $67

;=======
;enemies
;=======
; Enemy: Ramuh
; Stats: 
org $D004E0
db $30, $50, $08, $0a, $10, $38, $04, $0a, $50, $c3, $10, $27, $a4, $9c, $00, $00, $34, $00, $64, $F4, $00, $04, $00, $00, $80, $18, $00, $00, $00, $00, $27, $11
; Loot: 
org $D0509C
db $E1, $E1, $00, $F9
; --------------------------
; Original boss Ramuh rank 7 -> Randomized boss Twin Tania, Twin Tania rank 12
; HP: 4000 -> 50000
; ENEMY: Ramuh
; Skills: ['Bolt3', 'Thunder', 'Bolt3', 'Flash', 'Bolt3', 'Thunder', 'Bolt3', 'Thunder', 'Psych']
; New skill: Bolt3
org $d0a1a2
db $32
; New skill: Thunder
org $d0a1a3
db $DC
; New skill: Bolt3
org $d0a1a5
db $32
; New skill: Flash
org $d0a1a6
db $8B
; New skill: Bolt3
org $d0a1aa
db $32
; New skill: Thunder
org $d0a1ab
db $DC
; New skill: Bolt3
org $d0a1ad
db $32
; New skill: Thunder
org $d0a1ae
db $DC
; New skill: Psych
org $d0a1af
db $35

; Enemy: Shoat
; Stats: 
org $D00E40
db $23, $10, $08, $00, $04, $28, $00, $00, $8a, $02, $10, $27, $64, $00, $00, $00, $00, $00, $FB, $FF, $EF, $00, $00, $00, $34, $18, $00, $00, $00, $00, $72, $1e
; Loot: 
org $D051C8
db $E4, $00, $00, $FA
; --------------------------
; Original boss Shoat rank 7 -> Randomized boss Karlabos rank 1
; HP: 5000 -> 650
; ENEMY: Shoat

; Enemy: Golem
; Stats: 
org $D00CE0
db $0a, $30, $08, $00, $00, $00, $00, $00, $50, $46, $c4, $09, $e4, $89, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $67, $04
; Loot: 
org $D0519C
db $EC, $EC, $00, $00
; --------------------------
; Original boss Golem, BoneDragon, ZombieDrgn, Golem rank 7 -> Randomized boss Calofisteri rank 10
; HP: 2500 -> 18000
; ENEMY: Golem

; Enemy: BoneDragon
; Stats: 
org $D01420
db $23, $60, $0a, $14, $30, $00, $18, $0a, $28, $23, $b8, $0b, $00, $00, $00, $00, $00, $08, $34, $E0, $00, $08, $00, $01, $31, $00, $00, $00, $00, $00, $A1, $2c
; Loot: 
org $D05284
db $00, $00, $00, $00
; --------------------------
; Original boss Golem, BoneDragon, ZombieDrgn, Golem rank 7 -> Randomized boss Calofisteri rank 10
; HP: 2500 -> 18000
; ENEMY: Golem
; ENEMY: BoneDragon

; Enemy: ZombieDrgn
; Stats: 
org $D014C0
db $23, $60, $0a, $14, $18, $00, $18, $0a, $28, $23, $a0, $0f, $00, $00, $00, $00, $00, $08, $74, $60, $00, $08, $00, $01, $31, $00, $00, $00, $00, $00, $A6, $2c
; Loot: 
org $D05298
db $00, $00, $00, $00
; --------------------------
; Original boss Golem, BoneDragon, ZombieDrgn, Golem rank 7 -> Randomized boss Calofisteri rank 10
; HP: 2500 -> 18000
; ENEMY: Golem
; ENEMY: BoneDragon
; ENEMY: ZombieDrgn

; Enemy: Golem
; Stats: 
org $D01CA0
db $3c, $3c, $0a, $00, $3c, $00, $3c, $00, $30, $75, $10, $27, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $00, $00, $00, $20, $18, $00, $00, $00, $00, $E5, $55
; Loot: 
org $D05394
db $00, $EC, $00, $FB
; --------------------------
; Original boss Golem, BoneDragon, ZombieDrgn, Golem rank 7 -> Randomized boss Calofisteri rank 10
; HP: 2500 -> 18000
; ENEMY: Golem
; ENEMY: BoneDragon
; ENEMY: ZombieDrgn
; ENEMY: Golem

; Enemy: Byblos
; Stats: 
org $D00400
db $25, $1e, $07, $0a, $05, $0a, $14, $0a, $e4, $0c, $e8, $03, $d4, $17, $00, $00, $00, $00, $F8, $D4, $10, $FE, $00, $11, $04, $18, $00, $00, $00, $00, $20, $18
; Loot: 
org $D05080
db $EB, $ED, $00, $F5
; --------------------------
; Original boss Byblos rank 4 -> Randomized boss Chim.Brain rank 5
; HP: 3600 -> 3300
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
db $20, $24, $06, $00, $00, $01, $0c, $0a, $10, $0e, $19, $00, $98, $08, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $00, $01
; Loot: 
org $D05400
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss Byblos rank 4
; HP: 250 -> 3600
; ENEMY: WingRaptor

; Enemy: WingRaptor
; Stats: 
org $D02020
db $20, $24, $07, $28, $18, $01, $0c, $0a, $10, $0e, $00, $00, $98, $08, $00, $00, $00, $00, $70, $00, $00, $00, $40, $00, $20, $18, $88, $00, $00, $00, $01, $02
; Loot: 
org $D05404
db $00, $E0, $00, $E4
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss Byblos rank 4
; HP: 250 -> 3600
; ENEMY: WingRaptor
; ENEMY: WingRaptor

; Enemy: Karlabos
; Stats: 
org $D02040
db $25, $32, $07, $00, $03, $00, $0d, $00, $88, $13, $64, $00, $d8, $0e, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $04, $20, $18, $00, $00, $00, $00, $02, $05
; Loot: 
org $D05408
db $00, $E0, $00, $F0
; --------------------------
; Original boss Karlabos rank 1 -> Randomized boss Tyrasaurus rank 5
; HP: 650 -> 5000
; ENEMY: Karlabos

; Enemy: Siren
; Stats: 
org $D02080
db $28, $12, $06, $00, $00, $0c, $24, $00, $dc, $05, $f4, $01, $28, $0a, $00, $00, $00, $00, $30, $44, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $04, $02
; Loot: 
org $D05410
db $00, $00, $00, $9B
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 900 -> 1500
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
db $28, $3c, $0a, $00, $18, $00, $00, $00, $dc, $05, $c8, $00, $28, $0a, $00, $00, $00, $00, $34, $FF, $10, $08, $00, $01, $A1, $18, $00, $00, $00, $00, $05, $02
; Loot: 
org $D05414
db $00, $00, $00, $82
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 900 -> 1500
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
db $28, $3c, $09, $00, $0a, $00, $06, $05, $f4, $01, $64, $00, $14, $05, $00, $00, $00, $00, $F0, $00, $00, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $06, $0a
; Loot: 
org $D05418
db $00, $00, $00, $F3
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4
; HP: 850 -> 1000
; ENEMY: Forza

; Enemy: Magisa
; Stats: 
org $D020E0
db $23, $3c, $05, $05, $00, $30, $0c, $05, $f4, $01, $f4, $01, $14, $05, $00, $00, $00, $00, $F0, $FB, $00, $00, $00, $00, $80, $18, $00, $00, $00, $00, $07, $0a
; Loot: 
org $D0541C
db $00, $00, $00, $4B
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4
; HP: 850 -> 1000
; ENEMY: Forza
; ENEMY: Magisa
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Aero2', 'Specialty', 'Drain']
; New skill: Fire2
org $d0b34d
db $2A
; New skill: Ice2
org $d0b34e
db $2B
; New skill: Bolt2
org $d0b34f
db $2C
; New skill: Aero2
org $d0b351
db $90
; New skill: Specialty
org $d0b352
db $81
; New skill: Drain
org $d0b353
db $2D
; Original HP: 500
; New trigger HP: 230
org $d0b329
db $e6, $00

; Enemy: Galura
; Stats: 
org $D02100
db $1f, $28, $09, $00, $06, $00, $03, $00, $70, $45, $64, $00, $4c, $1d, $00, $00, $00, $00, $10, $40, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $08, $02
; Loot: 
org $D05420
db $E1, $E0, $00, $E1
; --------------------------
; Original boss Galura rank 3 -> Randomized boss Gilgamesh, Enkidou rank 6
; HP: 1200 -> 17776
; ENEMY: Galura
; Original HP: 17776
; New trigger HP: 11732
org $d0b36a
db $d4, $2d

; Enemy: LiquiFlame
; Stats: 
org $D02120
db $25, $20, $0b, $14, $00, $0a, $0f, $00, $64, $19, $c8, $00, $d4, $17, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D05424
db $00, $00, $00, $FC
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Gilgamesh rank 5
; HP: 3000 -> 6500
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
db $25, $20, $08, $0a, $00, $1e, $1e, $00, $64, $19, $5a, $00, $d4, $17, $00, $00, $00, $FE, $77, $EF, $FF, $41, $00, $02, $20, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D05428
db $00, $00, $00, $32
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Gilgamesh rank 5
; HP: 3000 -> 6500
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
db $25, $20, $05, $1e, $00, $14, $0f, $00, $64, $19, $64, $00, $d4, $17, $00, $00, $00, $88, $77, $EF, $FF, $41, $00, $02, $00, $18, $00, $00, $00, $00, $09, $13
; Loot: 
org $D0542C
db $00, $00, $00, $3F
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss Gilgamesh rank 5
; HP: 3000 -> 6500
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

; Enemy: Sergeant
; Stats: 
org $D02A40
db $14, $07, $02, $00, $00, $05, $0a, $0a, $c4, $09, $19, $00, $d4, $17, $64, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $18, $00, $00, $00, $00, $52, $00
; Loot: 
org $D05548
db $00, $E0, $E9, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Titan rank 5
; HP: 1000 -> 2500
; ENEMY: Sergeant

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $ee, $02, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Titan rank 5
; HP: 1000 -> 2500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $ee, $02, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Titan rank 5
; HP: 1000 -> 2500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Karnak
; Stats: 
org $D02A60
db $0a, $12, $04, $00, $00, $00, $00, $14, $ee, $02, $19, $00, $00, $00, $8d, $00, $00, $00, $10, $00, $00, $00, $00, $00, $04, $18, $00, $00, $00, $00, $53, $13
; Loot: 
org $D0554C
db $00, $E0, $E0, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Titan rank 5
; HP: 1000 -> 2500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak

; Enemy: Iron Claw
; Stats: 
org $D02A20
db $28, $32, $09, $00, $14, $01, $0a, $0a, $c4, $09, $96, $00, $00, $00, $64, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $00, $00, $00, $51, $27
; Loot: 
org $D05544
db $00, $F6, $B4, $00
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Titan rank 5
; HP: 1000 -> 2500
; ENEMY: Sergeant
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Karnak
; ENEMY: Iron Claw

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $14, $0a, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $00, $00, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $09
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $14, $0a, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $00, $00, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $09
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C

; Enemy: Hole
; Stats: 
org $D021C0
db $01, $14, $0a, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $00, $00, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $40, $0E, $09
; Loot: 
org $D05438
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C

; Enemy: Sandworm
; Stats: 
org $D021A0
db $32, $08, $07, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $78, $05, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $09
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
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
db $32, $08, $07, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $78, $05, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $09
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
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
db $32, $08, $07, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $78, $05, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $00, $60, $18, $00, $00, $00, $00, $0D, $09
; Loot: 
org $D05434
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
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
db $62, $06, $02, $00, $00, $01, $08, $0a, $b0, $04, $8d, $27, $00, $00, $00, $00, $00, $00, $FF, $FF, $10, $00, $00, $80, $60, $18, $00, $00, $00, $80, $0F, $0e
; Loot: 
org $D0543C
db $00, $00, $00, $00
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Galura rank 3
; HP: 3000 -> 1200
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
; ENEMY: Hole
; Skills: ['Demi']
; New skill: Demi
org $d0b3fd
db $3C
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
db $1e, $1f, $12, $00, $19, $00, $05, $32, $dc, $05, $7d, $00, $d4, $17, $00, $00, $00, $00, $7A, $70, $10, $00, $00, $02, $00, $18, $00, $00, $60, $00, $10, $14
; Loot: 
org $D05440
db $00, $F5, $00, $E7
; --------------------------
; Original boss AdamanTiMi rank 4 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 2000 -> 1500
; ENEMY: AdamanTiMi

; Enemy: Sol Cannon
; Stats: 
org $D02280
db $37, $06, $02, $00, $04, $01, $08, $0a, $ff, $ff, $e8, $03, $04, $29, $50, $00, $00, $C8, $FF, $FF, $10, $00, $00, $04, $20, $98, $00, $00, $00, $00, $14, $1d
; Loot: 
org $D05450
db $E3, $E2, $00, $EB
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 22500 -> 65535
; ENEMY: Sol Cannon
; Original HP: 65535
; New trigger HP: 28835
org $d0b4ef
db $a3, $70

; Enemy: Launcher
; Stats: 
org $D02B60
db $14, $06, $02, $00, $00, $01, $04, $05, $9a, $19, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $28
; Loot: 
org $D0556C
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 22500 -> 65535
; ENEMY: Sol Cannon
; Original HP: 65535
; New trigger HP: 28835
org $d0b4ef
db $a3, $70
; ENEMY: Launcher

; Enemy: Launcher
; Stats: 
org $D02B80
db $14, $06, $02, $00, $00, $01, $04, $05, $9a, $19, $e8, $03, $00, $00, $00, $00, $00, $C8, $FF, $FF, $00, $00, $00, $00, $20, $98, $00, $00, $00, $00, $5B, $28
; Loot: 
org $D05570
db $00, $E2, $00, $E1
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 22500 -> 65535
; ENEMY: Sol Cannon
; Original HP: 65535
; New trigger HP: 28835
org $d0b4ef
db $a3, $70
; ENEMY: Launcher
; ENEMY: Launcher

; Enemy: ArchaeAvis
; Stats: 
org $D022A0
db $1e, $54, $07, $0a, $16, $01, $08, $00, $33, $33, $d0, $07, $20, $80, $00, $00, $00, $20, $F4, $FF, $10, $00, $40, $40, $20, $98, $88, $00, $00, $00, $15, $11
; Loot: 
org $D05454
db $00, $00, $00, $F2
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1600 -> 65535
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
db $1e, $54, $07, $0a, $1a, $01, $0e, $00, $33, $33, $d0, $07, $20, $80, $00, $00, $00, $20, $F4, $FF, $10, $02, $40, $00, $00, $98, $88, $00, $00, $00, $15, $0f
; Loot: 
org $D05458
db $00, $00, $00, $F3
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1600 -> 65535
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
; Skills: ['Fight', 'Blaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: Blaze
org $d0b514
db $CD
; New skill: Specialty
org $d0b515
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D022E0
db $1e, $54, $07, $0a, $18, $01, $18, $00, $33, $33, $d0, $07, $20, $80, $00, $00, $00, $20, $F4, $FF, $10, $01, $40, $00, $20, $98, $88, $00, $00, $00, $15, $12
; Loot: 
org $D0545C
db $00, $00, $00, $F4
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1600 -> 65535
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
; Skills: ['Fight', 'Blaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: Blaze
org $d0b514
db $CD
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Flame', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Flame
org $d0b529
db $DB
; New skill: Specialty
org $d0b52a
db $81

; Enemy: ArchaeAvis
; Stats: 
org $D02300
db $1e, $54, $07, $0a, $1a, $01, $1d, $00, $33, $33, $d0, $07, $20, $80, $00, $00, $00, $20, $F4, $FF, $10, $04, $40, $00, $00, $98, $88, $00, $00, $00, $15, $13
; Loot: 
org $D05460
db $00, $00, $00, $F5
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1600 -> 65535
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
; Skills: ['Fight', 'Blaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: Blaze
org $d0b514
db $CD
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Flame', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Flame
org $d0b529
db $DB
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
db $23, $5c, $09, $0a, $0d, $01, $20, $00, $33, $33, $d0, $07, $20, $80, $00, $00, $00, $67, $F4, $FF, $10, $00, $40, $00, $20, $98, $88, $00, $00, $00, $15, $10
; Loot: 
org $D05464
db $00, $00, $00, $F6
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1600 -> 65535
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
; Skills: ['Fight', 'Blaze', 'Specialty']
; New skill: Fight
org $d0b513
db $80
; New skill: Blaze
org $d0b514
db $CD
; New skill: Specialty
org $d0b515
db $81
; ENEMY: ArchaeAvis
; Skills: ['Fight', 'Flame', 'Specialty']
; New skill: Fight
org $d0b528
db $80
; New skill: Flame
org $d0b529
db $DB
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
; Skills: ['BreathWing', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'Flame', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'Thunder', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty', 'Blaze', 'Maelstrom', 'Specialty', 'Entangle', 'Fight', 'Specialty']
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
; New skill: Blaze
org $d0b57f
db $CD
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
db $23, $4e, $07, $0a, $0c, $01, $18, $00, $88, $13, $e8, $03, $4c, $36, $00, $00, $00, $00, $30, $70, $00, $02, $00, $00, $04, $18, $00, $00, $00, $00, $1A, $17
; Loot: 
org $D05468
db $1B, $EA, $00, $E4
; --------------------------
; Original boss Chim.Brain rank 5 -> Randomized boss Shoat rank 7
; HP: 3300 -> 5000
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
db $19, $66, $0a, $0a, $0c, $00, $00, $00, $d8, $d6, $d0, $07, $4c, $36, $00, $00, $00, $00, $F7, $DF, $00, $20, $00, $00, $A0, $18, $00, $00, $00, $00, $1B, $01
; Loot: 
org $D0546C
db $26, $E0, $00, $E1
; --------------------------
; Original boss Titan rank 5 -> Randomized boss Gilgamesh, Gilgamesh rank 7
; HP: 2500 -> 55000
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
db $19, $30, $06, $00, $00, $00, $00, $00, $b8, $0b, $d0, $07, $1c, $0c, $00, $00, $0E, $00, $64, $70, $00, $00, $00, $00, $00, $98, $00, $00, $00, $00, $1E, $1f
; Loot: 
org $D05478
db $00, $00, $00, $E3
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 11500 -> 3000
; ENEMY: Gilgamesh
; Original HP: 3000
; New trigger HP: 2610
org $d0b5f5
db $32, $0a

; Enemy: Gilgamesh
; Stats: 
org $D02460
db $2d, $20, $07, $0a, $0b, $00, $08, $00, $1d, $4e, $e8, $03, $04, $29, $00, $00, $10, $00, $F4, $70, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $23, $16
; Loot: 
org $D0548C
db $1A, $F6, $00, $91
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Atmos rank 6
; HP: 6500 -> 19997
; ENEMY: Gilgamesh
; Original HP: 19997
; New trigger HP: 7599
org $d0b674
db $af, $1d

; Enemy: Tyrasaurus
; Stats: 
org $D02480
db $32, $5a, $08, $00, $1e, $00, $1e, $00, $84, $79, $e8, $03, $4c, $36, $00, $00, $00, $02, $74, $74, $10, $00, $00, $01, $11, $18, $00, $00, $00, $00, $24, $23
; Loot: 
org $D05490
db $85, $00, $E3, $00
; --------------------------
; Original boss Tyrasaurus rank 5 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 5000 -> 31108
; ENEMY: Tyrasaurus

; Enemy: Abductor
; Stats: 
org $D024C0
db $23, $54, $07, $00, $0c, $3c, $13, $00, $c4, $09, $e8, $03, $3c, $41, $00, $00, $00, $00, $34, $20, $00, $00, $40, $00, $00, $18, $88, $00, $00, $00, $26, $23
; Loot: 
org $D05498
db $BA, $E1, $E0, $00
; --------------------------
; Original boss Abductor rank 6 -> Randomized boss Golem, BoneDragon, ZombieDrgn, Golem rank 7
; HP: 2500 -> 2500
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
db $30, $7e, $07, $14, $18, $54, $18, $0a, $5c, $2b, $78, $03, $5a, $3c, $00, $00, $2A, $00, $74, $70, $10, $00, $00, $00, $A0, $18, $00, $00, $00, $00, $2D, $25
; Loot: 
org $D054B4
db $00, $C9, $00, $85
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss Apanda rank 10
; HP: 8888 -> 22200
; ENEMY: Gilgamesh
; Original HP: 11100
; New trigger HP: 7437
org $d0b761
db $0d, $1d

; Enemy: Enkidou
; Stats: 
org $D025C0
db $30, $7e, $05, $1e, $00, $3c, $00, $14, $5c, $2b, $e8, $03, $5a, $3c, $00, $00, $23, $20, $74, $70, $10, $00, $00, $00, $80, $08, $88, $00, $00, $00, $2E, $23
; Loot: 
org $D054B8
db $00, $97, $00, $1A
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss Apanda rank 10
; HP: 8888 -> 22200
; ENEMY: Gilgamesh
; Original HP: 11100
; New trigger HP: 7437
org $d0b761
db $0d, $1d
; ENEMY: Enkidou
; Skills: ['Aero3']
; New skill: Aero3
org $d0b7c0
db $91

; Enemy: Atmos
; Stats: 
org $D025E0
db $2c, $0c, $0a, $00, $11, $60, $18, $14, $98, $3a, $10, $27, $3c, $41, $00, $00, $00, $00, $FF, $BF, $FF, $00, $00, $00, $20, $18, $00, $00, $08, $00, $2F, $31
; Loot: 
org $D054BC
db $5E, $E2, $00, $EB
; --------------------------
; Original boss Atmos rank 6 -> Randomized boss Carbunkle, Carbunkle rank 7
; HP: 19997 -> 15000
; ENEMY: Atmos

; Enemy: Guardian
; Stats: 
org $D02600
db $28, $30, $0a, $00, $08, $0c, $10, $14, $10, $27, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $01, $00, $00, $00, $18, $00, $00, $00, $00, $30, $3e
; Loot: 
org $D054C0
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Leviathan rank 9
; HP: 7777 -> 40000
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 10000
; New trigger HP: 3800
org $d0b85e
db $d8, $0e

; Enemy: Guardian
; Stats: 
org $D02620
db $28, $30, $0a, $00, $08, $01, $10, $14, $10, $27, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $20, $00, $00, $00, $18, $00, $00, $00, $00, $31, $3e
; Loot: 
org $D054C4
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Leviathan rank 9
; HP: 7777 -> 40000
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 10000
; New trigger HP: 3800
org $d0b85e
db $d8, $0e
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 10000
; New trigger HP: 3800
org $d0b874
db $d8, $0e

; Enemy: Guardian
; Stats: 
org $D02640
db $2d, $30, $0a, $00, $08, $0c, $10, $14, $10, $27, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $80, $00, $00, $00, $18, $00, $00, $00, $00, $32, $3e
; Loot: 
org $D054C8
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Leviathan rank 9
; HP: 7777 -> 40000
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 10000
; New trigger HP: 3800
org $d0b85e
db $d8, $0e
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 10000
; New trigger HP: 3800
org $d0b874
db $d8, $0e
; ENEMY: Guardian
; Skills: ['AquaRake']
; New skill: AquaRake
org $d0b889
db $84
; Original HP: 10000
; New trigger HP: 3800
org $d0b886
db $d8, $0e

; Enemy: Guardian
; Stats: 
org $D02660
db $32, $30, $0a, $00, $08, $08, $10, $14, $10, $27, $10, $27, $33, $1d, $00, $00, $00, $1E, $74, $FC, $10, $40, $00, $00, $00, $18, $00, $00, $00, $00, $33, $3e
; Loot: 
org $D054CC
db $E3, $00, $62, $00
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss Leviathan rank 9
; HP: 7777 -> 40000
; ENEMY: Guardian
; Skills: ['Fire3']
; New skill: Fire3
org $d0b865
db $30
; Original HP: 10000
; New trigger HP: 3800
org $d0b85e
db $d8, $0e
; ENEMY: Guardian
; Skills: ['EarthShaker']
; New skill: EarthShaker
org $d0b877
db $CF
; Original HP: 10000
; New trigger HP: 3800
org $d0b874
db $d8, $0e
; ENEMY: Guardian
; Skills: ['AquaRake']
; New skill: AquaRake
org $d0b889
db $84
; Original HP: 10000
; New trigger HP: 3800
org $d0b886
db $d8, $0e
; ENEMY: Guardian
; Skills: ['Aero3']
; New skill: Aero3
org $d0b89f
db $91
; Original HP: 10000
; New trigger HP: 3800
org $d0b898
db $d8, $0e

; Enemy: Carbunkle
; Stats: 
org $D02680
db $28, $1e, $0a, $46, $1e, $1e, $1e, $1e, $ec, $2c, $10, $27, $ec, $13, $00, $00, $00, $20, $F4, $FB, $10, $00, $00, $00, $24, $18, $88, $00, $80, $00, $34, $2c
; Loot: 
org $D054D0
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Gilgamesh rank 5
; HP: 15000 -> 11500
; ENEMY: Carbunkle
; Original HP: 11500
; New trigger HP: 7590
org $d0b8ae
db $a6, $1d
; Original HP: 11500
; New trigger HP: 3795
org $d0b8d1
db $d3, $0e

; Enemy: Carbunkle
; Stats: 
org $D02BC0
db $19, $05, $02, $07, $07, $07, $00, $00, $ec, $2c, $e8, $03, $ec, $13, $00, $00, $00, $00, $80, $0B, $00, $00, $00, $FF, $00, $18, $00, $00, $00, $00, $5E, $01
; Loot: 
org $D05578
db $F2, $CA, $E7, $00
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Gilgamesh rank 5
; HP: 15000 -> 11500
; ENEMY: Carbunkle
; Original HP: 11500
; New trigger HP: 7590
org $d0b8ae
db $a6, $1d
; Original HP: 11500
; New trigger HP: 3795
org $d0b8d1
db $d3, $0e
; ENEMY: Carbunkle

; Enemy: Gilgamesh
; Stats: 
org $D02BA0
db $41, $24, $0c, $00, $05, $01, $09, $14, $c4, $09, $d0, $07, $04, $29, $00, $00, $00, $00, $F7, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $5D, $2a
; Loot: 
org $D05574
db $C2, $E1, $00, $00
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Abductor rank 6
; HP: 55000 -> 2500
; ENEMY: Gilgamesh
; Original HP: 2500
; New trigger HP: 1900
org $d0c3a5
db $6c, $07

; Enemy: Gilgamesh
; Stats: 
org $D026C0
db $4b, $28, $01, $00, $10, $00, $08, $00, $c4, $09, $28, $23, $04, $29, $00, $00, $5C, $00, $F4, $FC, $10, $00, $00, $00, $A0, $98, $00, $00, $01, $00, $36, $36
; Loot: 
org $D054D8
db $00, $C7, $00, $5C
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Abductor rank 6
; HP: 55000 -> 2500
; ENEMY: Gilgamesh
; Original HP: 2500
; New trigger HP: 1900
org $d0c3a5
db $6c, $07
; ENEMY: Gilgamesh

; Enemy: Antlion
; Stats: 
org $D02700
db $28, $20, $0d, $07, $08, $00, $04, $07, $d0, $07, $e8, $03, $2c, $33, $60, $09, $00, $20, $F4, $30, $10, $00, $00, $80, $20, $18, $00, $00, $00, $00, $38, $1b
; Loot: 
org $D054E0
db $00, $E1, $00, $F1
; --------------------------
; Original boss Antlion rank 6 -> Randomized boss Crayclaw rank 6
; HP: 8100 -> 2000
; ENEMY: Antlion

; Enemy: Halicarnaso
; Stats: 
org $D02980
db $28, $2c, $0c, $00, $08, $50, $10, $42, $3f, $9c, $88, $13, $cc, $74, $00, $00, $00, $00, $E4, $78, $10, $00, $00, $00, $20, $18, $00, $00, $00, $00, $4C, $4e
; Loot: 
org $D05530
db $86, $3C, $B2, $00
; --------------------------
; Original boss Halicarnaso rank 11 -> Randomized boss Triton, Neregeid, Phobos rank 9
; HP: 33333 -> 39999
; ENEMY: Halicarnaso

; Enemy: Merugene
; Stats: 
org $D02780
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $d0, $07, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $06, $00, $01, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D054F0
db $00, $9A, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss AdamanTiMi rank 4
; HP: 20000 -> 2000
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
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $d0, $07, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $05, $00, $02, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D054F4
db $00, $89, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss AdamanTiMi rank 4
; HP: 20000 -> 2000
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
db $28, $1e, $0d, $0a, $24, $24, $00, $0a, $d0, $07, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $03, $00, $04, $20, $18, $00, $00, $00, $00, $3C, $23
; Loot: 
org $D054F8
db $00, $C0, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss AdamanTiMi rank 4
; HP: 20000 -> 2000
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
db $28, $1e, $0d, $00, $00, $00, $24, $1e, $d0, $07, $f4, $01, $d0, $07, $00, $00, $00, $F8, $F4, $88, $00, $07, $40, $00, $20, $18, $00, $00, $00, $00, $3C, $28
; Loot: 
org $D054FC
db $00, $81, $E5, $00
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss AdamanTiMi rank 4
; HP: 20000 -> 2000
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
db $23, $14, $0a, $0a, $05, $00, $05, $1e, $84, $03, $f4, $01, $c8, $00, $00, $00, $2F, $00, $B4, $10, $00, $10, $00, $00, $A0, $18, $00, $00, $00, $00, $40, $02
; Loot: 
org $D05500
db $AF, $00, $C4, $00
; --------------------------
; Original boss Odin rank 9 -> Randomized boss Siren, Siren rank 2
; HP: 17000 -> 900
; ENEMY: Odin
; Skills: ['ReaperSword']
; New skill: ReaperSword
org $d0bbb8
db $B0

; Enemy: Gargoyle
; Stats: 
org $D02820
db $22, $55, $09, $0a, $0f, $32, $0f, $28, $0e, $27, $2c, $01, $c2, $4c, $00, $00, $00, $00, $30, $10, $00, $10, $40, $00, $A0, $18, $00, $00, $00, $00, $41, $21
; Loot: 
org $D05504
db $E4, $E0, $E1, $00
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Catastroph rank 11
; HP: 5000 -> 19997
; ENEMY: Gargoyle
; ENEMY: Gargoyle

; Enemy: Gargoyle
; Stats: 
org $D02820
db $22, $55, $09, $0a, $0f, $32, $0f, $28, $0e, $27, $2c, $01, $c2, $4c, $00, $00, $00, $00, $30, $10, $00, $10, $40, $00, $A0, $18, $00, $00, $00, $00, $41, $21
; Loot: 
org $D05504
db $E4, $E0, $E1, $00
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Catastroph rank 11
; HP: 5000 -> 19997
; ENEMY: Gargoyle
; ENEMY: Gargoyle

; Enemy: Triton
; Stats: 
org $D02840
db $23, $26, $0b, $00, $00, $08, $11, $32, $0b, $1a, $10, $27, $8d, $20, $00, $00, $00, $00, $30, $08, $04, $01, $00, $02, $01, $18, $00, $00, $00, $00, $42, $25
; Loot: 
org $D05508
db $E3, $EC, $F5, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 13333 -> 20000
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Fire3']
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
; New skill: Fire3
org $d0bc16
db $30

; Enemy: Neregeid
; Stats: 
org $D02860
db $23, $25, $0b, $00, $00, $08, $11, $32, $0b, $1a, $10, $27, $8d, $20, $00, $00, $00, $00, $30, $08, $04, $02, $00, $01, $01, $18, $00, $00, $00, $00, $43, $14
; Loot: 
org $D0550C
db $E3, $EC, $F3, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 13333 -> 20000
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Fire3']
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
; New skill: Fire3
org $d0bc16
db $30
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'Snowstorm', 'Ice3', 'Fight', 'Fight', 'Fight', 'Ice3']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: Snowstorm
org $d0bc34
db $CC
; New skill: Ice3
org $d0bc35
db $31
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
db $23, $26, $0b, $00, $00, $08, $11, $32, $0b, $1a, $10, $27, $8d, $20, $00, $00, $00, $00, $30, $08, $04, $08, $00, $20, $01, $18, $00, $00, $00, $00, $44, $27
; Loot: 
org $D05510
db $E3, $EC, $F2, $00
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 13333 -> 20000
; ENEMY: Triton
; Skills: ['Fight', 'Fight', 'Fire3', 'Fire3', 'Fight', 'Fight', 'Fight', 'Fire3']
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
; New skill: Fire3
org $d0bc16
db $30
; ENEMY: Neregeid
; Skills: ['Fight', 'Fight', 'Snowstorm', 'Ice3', 'Fight', 'Fight', 'Fight', 'Ice3']
; New skill: Fight
org $d0bc30
db $80
; New skill: Fight
org $d0bc31
db $80
; New skill: Snowstorm
org $d0bc34
db $CC
; New skill: Ice3
org $d0bc35
db $31
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
; Skills: ['Fight', 'Fight', 'Bio', 'Bio', 'Fight', 'Fight', 'Fight', 'Bio']
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
; New skill: Bio
org $d0bc68
db $2F

; Enemy: Omniscient
; Stats: 
org $D028A0
db $2a, $78, $14, $00, $00, $18, $0a, $00, $a0, $0f, $30, $75, $3c, $41, $00, $00, $00, $00, $F4, $50, $00, $00, $00, $40, $20, $18, $00, $00, $61, $00, $45, $40
; Loot: 
org $D05514
db $C5, $E0, $00, $00
; --------------------------
; Original boss Omniscient rank 8 -> Randomized boss Ramuh rank 7
; HP: 16999 -> 4000
; ENEMY: Omniscient
; Skills: ['Bolt3', 'Fire3', 'Ice3', 'Cure', 'Fire', 'Ice', 'Cure2', 'Fire2', 'Bolt2', 'Ice2']
; New skill: Bolt3
org $d0bc72
db $32
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
; Original HP: 4000
; New trigger HP: 960
org $d0bc6e
db $c0, $03

; Enemy: Minotauros
; Stats: 
org $D028C0
db $2a, $3c, $09, $00, $00, $00, $00, $00, $40, $1f, $00, $00, $cc, $10, $00, $00, $00, $B8, $FF, $FF, $FF, $B8, $00, $00, $A0, $18, $00, $00, $00, $00, $46, $25
; Loot: 
org $D05518
db $5B, $C0, $00, $00
; --------------------------
; Original boss Minotauros rank 8 -> Randomized boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5
; HP: 19850 -> 8000
; ENEMY: Minotauros

; Enemy: Leviathan
; Stats: 
org $D028E0
db $2c, $42, $0e, $08, $11, $01, $11, $37, $10, $27, $d0, $07, $4c, $36, $00, $00, $00, $21, $F4, $F8, $10, $80, $00, $04, $30, $18, $00, $00, $00, $00, $47, $2c
; Loot: 
org $D0551C
db $00, $E3, $00, $CA
; --------------------------
; Original boss Leviathan rank 9 -> Randomized boss Gargoyle, Gargoyle rank 7
; HP: 40000 -> 10000
; ENEMY: Leviathan
; Skills: ['Fight', 'Fight', 'AquaRake', 'Fight', 'Fight', 'AquaRake', 'Fight', 'Specialty', 'AquaRake', 'Fight', 'AquaRake', 'AquaRake', 'Fight', 'Fight', 'AquaRake', 'Fight', 'TidalWave', 'Specialty', 'Fight', 'AquaRake', 'AquaRake', 'AquaRake', 'TidalWave', 'Specialty', 'Specialty', 'Fight', 'TidalWave', 'Fight', 'TidalWave', 'Specialty', 'Fight', 'Fight', 'Specialty', 'Fight', 'Specialty', 'TidalWave', 'Fight', 'Specialty', 'TidalWave', 'TidalWave']
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
; New skill: AquaRake
org $d0bce4
db $84
; New skill: Fight
org $d0bcea
db $80
; New skill: Specialty
org $d0bceb
db $81
; New skill: AquaRake
org $d0bcec
db $84
; New skill: Fight
org $d0bcee
db $80
; New skill: AquaRake
org $d0bcef
db $84
; New skill: AquaRake
org $d0bcf0
db $84
; New skill: Fight
org $d0bcf2
db $80
; New skill: Fight
org $d0bcf3
db $80
; New skill: AquaRake
org $d0bcf4
db $84
; New skill: Fight
org $d0bcf6
db $80
; New skill: TidalWave
org $d0bcf7
db $D1
; New skill: Specialty
org $d0bcf8
db $81
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
; New skill: TidalWave
org $d0bd03
db $D1
; New skill: Specialty
org $d0bd04
db $81
; New skill: Specialty
org $d0bd06
db $81
; New skill: Fight
org $d0bd07
db $80
; New skill: TidalWave
org $d0bd08
db $D1
; New skill: Fight
org $d0bd0a
db $80
; New skill: TidalWave
org $d0bd0b
db $D1
; New skill: Specialty
org $d0bd0c
db $81
; New skill: Fight
org $d0bd0e
db $80
; New skill: Fight
org $d0bd0f
db $80
; New skill: Specialty
org $d0bd10
db $81
; New skill: Fight
org $d0bd16
db $80
; New skill: Specialty
org $d0bd17
db $81
; New skill: TidalWave
org $d0bd18
db $D1
; New skill: Fight
org $d0bd1a
db $80
; New skill: Specialty
org $d0bd1b
db $81
; New skill: TidalWave
org $d0bd1c
db $D1
; New skill: TidalWave
org $d0bd24
db $D1

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $19, $0a, $00, $00, $00, $00, $00, $01, $00, $00, $20, $d8, $0e, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $07
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 20000 -> 1
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $19, $0a, $00, $00, $00, $00, $00, $01, $00, $00, $20, $d8, $0e, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $07
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 20000 -> 1
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $19, $0a, $00, $00, $00, $00, $00, $01, $00, $00, $20, $d8, $0e, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $07
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 20000 -> 1
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Stalker
; Stats: 
org $D02900
db $28, $19, $0a, $00, $00, $00, $00, $00, $01, $00, $00, $20, $d8, $0e, $00, $00, $4F, $20, $F4, $BC, $10, $80, $00, $00, $20, $18, $88, $00, $00, $00, $48, $07
; Loot: 
org $D05520
db $00, $EB, $00, $00
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 20000 -> 1
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker
; ENEMY: Stalker

; Enemy: Gogo
; Stats: 
org $D02920
db $32, $60, $19, $1e, $18, $1c, $10, $63, $62, $ba, $60, $ea, $00, $af, $00, $00, $00, $80, $F5, $F8, $10, $00, $00, $80, $A0, $98, $00, $00, $00, $00, $49, $3e
; Loot: 
org $D05524
db $94, $9A, $C3, $00
; --------------------------
; Original boss Gogo rank 9 -> Randomized boss Gogo rank 9
; HP: 47714 -> 47714
; ENEMY: Gogo
; Original HP: 47714
; New trigger HP: 32923
org $d0be14
db $9b, $80

; Enemy: Bahamut
; Stats: 
org $D02940
db $28, $37, $10, $05, $08, $10, $10, $21, $40, $9c, $10, $27, $00, $af, $00, $00, $00, $20, $F4, $F8, $00, $00, $60, $00, $20, $18, $88, $00, $00, $00, $4A, $4f
; Loot: 
org $D05528
db $EA, $EA, $EA, $00
; --------------------------
; Original boss Bahamut rank 9 -> Randomized boss Bahamut rank 9
; HP: 40000 -> 40000
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
; Original HP: 40000
; New trigger HP: 10000
org $d0be5e
db $10, $27
; Original HP: 40000
; New trigger HP: 15200
org $d0be68
db $60, $3b
; Original HP: 40000
; New trigger HP: 20000
org $d0be76
db $20, $4e
; Original HP: 40000
; New trigger HP: 25200
org $d0be84
db $70, $62
; Original HP: 40000
; New trigger HP: 30000
org $d0be92
db $30, $75
; Original HP: 40000
; New trigger HP: 34800
org $d0bea0
db $f0, $87
; Original HP: 40000
; New trigger HP: 10000
org $d0beb7
db $10, $27

; Enemy: Ifrit
; Stats: 
org $D006A0
db $28, $40, $08, $14, $08, $00, $10, $0a, $68, $42, $e8, $03, $ec, $45, $00, $00, $00, $08, $30, $40, $00, $01, $00, $82, $20, $18, $00, $00, $00, $00, $35, $12
; Loot: 
org $D050D4
db $00, $E4, $00, $FC
; --------------------------
; Original boss Ifrit rank 3 -> Randomized boss Odin rank 9
; HP: 3000 -> 17000
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
db $1e, $20, $06, $00, $00, $08, $08, $14, $20, $4e, $e8, $03, $bc, $4d, $00, $00, $00, $00, $FA, $FF, $10, $02, $00, $01, $A0, $18, $00, $00, $00, $00, $25, $09
; Loot: 
org $D05494
db $E4, $E1, $00, $33
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 1500 -> 20000
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
db $19, $22, $06, $0a, $00, $08, $00, $00, $40, $1f, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 1500 -> 20000
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
db $19, $22, $06, $0a, $00, $08, $00, $00, $40, $1f, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 1500 -> 20000
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
db $19, $22, $06, $0a, $00, $08, $00, $00, $40, $1f, $c8, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $02, $00, $01, $80, $18, $00, $00, $00, $00, $0C, $02
; Loot: 
org $D05430
db $00, $0F, $0E, $00
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 1500 -> 20000
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
db $2d, $46, $10, $0a, $32, $1b, $1e, $0a, $fc, $6c, $e8, $03, $50, $f5, $00, $00, $3D, $00, $F0, $78, $10, $00, $20, $00, $A4, $18, $00, $00, $00, $00, $56, $44
; Loot: 
org $D05558
db $CA, $90, $A5, $00
; --------------------------
; Original boss Calofisteri rank 10 -> Randomized boss Apocalypse rank 11
; HP: 18000 -> 27900
; ENEMY: Calofisteri

; Enemy: Apocalypse
; Stats: 
org $D02AE0
db $2d, $12, $15, $03, $0c, $12, $24, $10, $b8, $0b, $50, $c3, $78, $05, $00, $00, $2D, $00, $F4, $FC, $14, $00, $00, $08, $20, $18, $00, $00, $00, $00, $57, $44
; Loot: 
org $D0555C
db $B1, $E3, $98, $00
; --------------------------
; Original boss Apocalypse rank 11 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 27900 -> 3000
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
db $1e, $04, $0c, $0f, $00, $00, $00, $00, $fa, $00, $1d, $4e, $64, $00, $00, $00, $00, $00, $F4, $5C, $10, $20, $00, $00, $20, $18, $00, $00, $00, $00, $58, $39
; Loot: 
org $D05560
db $F1, $E3, $00, $EC
; --------------------------
; Original boss Catastroph rank 11 -> Randomized boss WingRaptor, WingRaptor rank 1
; HP: 19997 -> 250
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
db $20, $04, $10, $00, $03, $00, $03, $19, $b8, $0b, $10, $27, $f4, $01, $00, $00, $1E, $00, $F4, $F8, $10, $00, $00, $FF, $20, $18, $00, $00, $02, $00, $59, $35
; Loot: 
org $D05564
db $B0, $E3, $AB, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25

; Enemy: Barrier
; Stats: 
org $D02D40
db $14, $00, $0a, $00, $00, $00, $00, $00, $58, $02, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $12
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
db $14, $00, $0a, $00, $00, $00, $00, $00, $58, $02, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $12
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
db $14, $00, $0a, $00, $00, $00, $00, $00, $58, $02, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $12
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
db $14, $00, $0a, $00, $00, $00, $00, $00, $58, $02, $2c, $01, $00, $00, $00, $00, $00, $20, $3F, $FB, $00, $00, $00, $00, $20, $98, $80, $00, $80, $00, $6A, $12
; Loot: 
org $D055A8
db $CA, $E1, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
db $58, $5c, $19, $1e, $1c, $00, $00, $00, $d8, $d6, $28, $23, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $00, $00, $A0, $98, $00, $00, $00, $00, $6F, $4a
; Loot: 
org $D055BC
db $00, $C8, $00, $00
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Ifrit rank 3
; HP: 44044 -> 3000
; ENEMY: Necrofobia
; Skills: ['Flare', 'Fire', 'Bolt', 'Ice']
; New skill: Flare
org $d0c1fe
db $33
; New skill: Fire
org $d0c21b
db $24
; New skill: Bolt
org $d0c21c
db $26
; New skill: Ice
org $d0c222
db $25
; ENEMY: Barrier
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
; Skills: ['Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt', 'Fire', 'Ice', 'Bolt']
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
; New skill: Fire
org $d0c591
db $24
; New skill: Ice
org $d0c592
db $25
; New skill: Bolt
org $d0c593
db $26
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
db $23, $5a, $0e, $00, $1e, $07, $10, $0a, $35, $82, $10, $27, $50, $f5, $00, $00, $00, $00, $F4, $F8, $10, $00, $00, $90, $24, $18, $00, $00, $00, $00, $5A, $27
; Loot: 
org $D05568
db $C4, $E4, $53, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Halicarnaso rank 11
; HP: 50000 -> 33333
; ENEMY: Twin Tania
; Skills: ['AtomicRay', 'Snowstorm', 'Fight', 'AtomicRay', 'Snowstorm', 'Fight', 'MindBlast', 'WindSlash', 'WindSlash', 'TidalWave', 'MegaFlare']
; New skill: AtomicRay
org $d0c2f6
db $CA
; New skill: Snowstorm
org $d0c2f7
db $CC
; New skill: Fight
org $d0c2f8
db $80
; New skill: AtomicRay
org $d0c2fa
db $CA
; New skill: Snowstorm
org $d0c2fb
db $CC
; New skill: Fight
org $d0c2fc
db $80
; New skill: MindBlast
org $d0c301
db $97
; New skill: WindSlash
org $d0c302
db $AB
; New skill: WindSlash
org $d0c303
db $AB
; New skill: TidalWave
org $d0c310
db $D1
; New skill: MegaFlare
org $d0c31a
db $D2

; Enemy: Twin Tania
; Stats: 
org $D02060
db $51, $5a, $0e, $00, $00, $48, $00, $00, $35, $82, $10, $27, $50, $f5, $00, $00, $00, $00, $14, $F8, $00, $00, $00, $90, $04, $18, $00, $00, $00, $00, $03, $1e
; Loot: 
org $D0540C
db $00, $6A, $2E, $00
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Halicarnaso rank 11
; HP: 50000 -> 33333
; ENEMY: Twin Tania
; Skills: ['AtomicRay', 'Snowstorm', 'Fight', 'AtomicRay', 'Snowstorm', 'Fight', 'MindBlast', 'WindSlash', 'WindSlash', 'TidalWave', 'MegaFlare']
; New skill: AtomicRay
org $d0c2f6
db $CA
; New skill: Snowstorm
org $d0c2f7
db $CC
; New skill: Fight
org $d0c2f8
db $80
; New skill: AtomicRay
org $d0c2fa
db $CA
; New skill: Snowstorm
org $d0c2fb
db $CC
; New skill: Fight
org $d0c2fc
db $80
; New skill: MindBlast
org $d0c301
db $97
; New skill: WindSlash
org $d0c302
db $AB
; New skill: WindSlash
org $d0c303
db $AB
; New skill: TidalWave
org $d0c310
db $D1
; New skill: MegaFlare
org $d0c31a
db $D2
; ENEMY: Twin Tania
; Skills: ['GigaFlare']
; New skill: GigaFlare
org $d0b2d8
db $E1

; Enemy: Apanda
; Stats: 
org $D02C00
db $2d, $28, $12, $0d, $10, $14, $07, $14, $8a, $4d, $e8, $03, $a4, $51, $00, $00, $00, $00, $F4, $F0, $10, $00, $00, $01, $24, $18, $00, $00, $00, $00, $60, $3b
; Loot: 
org $D05580
db $62, $62, $00, $62
; --------------------------
; Original boss Apanda rank 10 -> Randomized boss Minotauros rank 8
; HP: 22200 -> 19850
; ENEMY: Apanda
; Skills: ['WindSlash', 'WindSlash']
; New skill: WindSlash
org $d0c409
db $AB
; New skill: WindSlash
org $d0c410
db $AB

; Enemy: Crayclaw
; Stats: 
org $D02A80
db $28, $0c, $06, $00, $08, $01, $08, $0a, $52, $03, $f4, $01, $2c, $01, $00, $00, $00, $00, $30, $00, $00, $80, $00, $04, $24, $18, $00, $00, $00, $00, $54, $2b
; Loot: 
org $D05550
db $00, $10, $00, $40
; --------------------------
; Original boss Crayclaw rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 2000 -> 850
; ENEMY: Crayclaw

; Enemy: Magic Pot
; Stats: 
org $D00160
db $02, $05, $01, $00, $00, $00, $05, $00, $01, $00, $03, $00, $FF, $FF, $FF, $FF, $00, $00, $FF, $FF, $10, $00, $00, $00, $20, $18, $00, $00, $60, $00, $0B, $5B
; Loot: 
org $D0502C
db $E3, $00, $E3, $00

; Enemy: Omega
; Stats: 
org $D01FA0
db $4c, $7d, $19, $56, $c7, $bf, $8f, $20, $ea, $d8, $1c, $ed, $00, $00, $50, $c3, $00, $83, $e7, $f7, $ff, $38, $20, $44, $28, $98, $80, $00, $B0, $00, $FD, $7c
; Loot: 
org $D053F4
db $00, $00, $00, $F8

; Enemy: Shinryuu
; Stats: 
org $D02D20
db $57, $b9, $26, $0f, $3a, $7a, $32, $20, $cc, $d8, $38, $c7, $00, $00, $00, $00, $00, $15, $d7, $7f, $ff, $8a, $00, $60, $30, $98, $00, $00, $00, $00, $69, $60
; Loot: 
org $D055A4
db $4F, $EA, $00, $F7


;==========
;formations
;==========
; Ramuh (Rank 7) > Twin Tania (Rank 12) 
org $D07928
db $4c, $00 
org $D0792A
db $4c, $00
; Shoat (Rank 7) > Karlabos (Rank 1) 
org $D07808
db $A5, $00 
org $D0780A
db $A5, $00
; Golem (Rank 7) > Calofisteri (Rank 10) 
org $D0791C
db $BB, $00 
org $D0791E
db $BB, $00
; Byblos (Rank 4) > Chim.Brain (Rank 5) 
org $D07840
db $BE, $01 
org $D07842
db $BE, $01
; WingRaptor (Rank 1) > Byblos (Rank 4) 
org $D07824
db $B7, $01 
org $D07826
db $B7, $01
; Karlabos (Rank 1) > Tyrasaurus (Rank 5) 
org $D07870
db $B8, $01 
org $D07872
db $B8, $01
; Siren (Rank 2) > Shiva (Rank 4) 
org $D07814
db $B9, $01 
org $D07816
db $B9, $01
; Forza (Rank 2) > Sergeant (Rank 4) 
org $D07820
db $BA, $01 
org $D07822
db $BA, $01
; Galura (Rank 3) > Gilgamesh (Rank 6) 
org $D0787C
db $BB, $01 
org $D0787E
db $BB, $01
; LiquiFlame (Rank 4) > Gilgamesh (Rank 5) 
org $D0786C
db $BC, $01 
org $D0786E
db $BC, $01
; Sergeant (Rank 4) > Titan (Rank 5) 
org $D07844
db $BD, $01 
org $D07846
db $BD, $01
; Hole (Rank 4) > Galura (Rank 3) 
org $D07818
db $BF, $01 
org $D0781A
db $BF, $01
; AdamanTiMi (Rank 4) > Puroboros (Rank 5) 
org $D07848
db $C0, $01 
org $D0784A
db $C0, $01
; Sol Cannon (Rank 5) > HiryuuPlant (Rank 6) 
org $D07878
db $C3, $01 
org $D0787A
db $C3, $01
; ArchaeAvis (Rank 5) > Necrofobia (Rank 12) 
org $D0792C
db $C4, $01 
org $D0792E
db $C4, $01
; Chim.Brain (Rank 5) > Shoat (Rank 7) 
org $D078FC
db $C5, $01 
org $D078FE
db $C5, $01
; Titan (Rank 5) > Gilgamesh (Rank 7) 
org $D0788C
db $C6, $01 
org $D0788E
db $C6, $01
; Puroboros (Rank 5) > Antlion (Rank 6) 
org $D07894
db $C7, $01 
org $D07896
db $C7, $01
; Gilgamesh (Rank 5) > LiquiFlame (Rank 4) 
org $D0781C
db $C9, $01 
org $D0781E
db $C9, $01
; Gilgamesh (Rank 5) > Atmos (Rank 6) 
org $D07880
db $D0, $01 
org $D07882
db $D0, $01
; Tyrasaurus (Rank 5) > Guardian (Rank 7) 
org $D07884
db $D1, $01 
org $D07886
db $D1, $01
; Abductor (Rank 6) > Golem (Rank 7) 
org $D078F8
db $D2, $01 
org $D078FA
db $D2, $01
; HiryuuPlant (Rank 6) > Omniscient (Rank 8) 
org $D078BC
db $D3, $01 
org $D078BE
db $D3, $01
; Gilgamesh (Rank 6) > Apanda (Rank 10) 
org $D078D8
db $D4, $01 
org $D078DA
db $D4, $01
; Atmos (Rank 6) > Carbunkle (Rank 7) 
org $D07888
db $D5, $01 
org $D0788A
db $D5, $01
; Guardian (Rank 7) > Leviathan (Rank 9) 
org $D078C4
db $D6, $01 
org $D078C6
db $D6, $01
; Carbunkle (Rank 7) > Gilgamesh (Rank 5) 
org $D07850
db $D7, $01 
org $D07852
db $D7, $01
; Gilgamesh (Rank 7) > Abductor (Rank 6) 
org $D07874
db $D8, $01 
org $D07876
db $D8, $01
; Antlion (Rank 6) > Crayclaw (Rank 6) 
org $D078D4
db $DA, $01 
org $D078D6
db $DA, $01
; Halicarnaso (Rank 11) > Triton (Rank 9) 
org $D078C8
db $DE, $01 
org $D078CA
db $DE, $01
; Merugene (Rank 8) > AdamanTiMi (Rank 4) 
org $D0782C
db $E0, $01 
org $D0782E
db $E0, $01
; Odin (Rank 9) > Siren (Rank 2) 
org $D0780C
db $E1, $01 
org $D0780E
db $E1, $01
; Gargoyle (Rank 7) > Catastroph (Rank 11) 
org $D07924
db $E2, $01 
org $D07926
db $E2, $01
; Triton (Rank 9) > Merugene (Rank 8) 
org $D078AC
db $E3, $01 
org $D078AE
db $E3, $01
; Omniscient (Rank 8) > Ramuh (Rank 7) 
org $D078F4
db $E4, $01 
org $D078F6
db $E4, $01
; Minotauros (Rank 8) > ArchaeAvis (Rank 5) 
org $D0783C
db $E5, $01 
org $D0783E
db $E5, $01
; Leviathan (Rank 9) > Gargoyle (Rank 7) 
org $D078B4
db $E6, $01 
org $D078B6
db $E6, $01
; Stalker (Rank 9) > Sol Cannon (Rank 5) 
org $D07838
db $E7, $01 
org $D0783A
db $E7, $01
; Gogo (Rank 9) > Gogo (Rank 9) 
org $D078CC
db $E8, $01 
org $D078CE
db $E8, $01
; Bahamut (Rank 9) > Bahamut (Rank 9) 
org $D078D0
db $E9, $01 
org $D078D2
db $E9, $01
; Ifrit (Rank 3) > Odin (Rank 9) 
org $D078B0
db $EE, $01 
org $D078B2
db $EE, $01
; Shiva (Rank 4) > Stalker (Rank 9) 
org $D078B8
db $F1, $01 
org $D078BA
db $F1, $01
; Calofisteri (Rank 10) > Apocalypse (Rank 11) 
org $D07920
db $F2, $01 
org $D07922
db $F2, $01
; Apocalypse (Rank 11) > Hole (Rank 4) 
org $D07828
db $F3, $01 
org $D0782A
db $F3, $01
; Catastroph (Rank 11) > WingRaptor (Rank 1) 
org $D07804
db $F4, $01 
org $D07806
db $F4, $01
; Necrofobia (Rank 12) > Ifrit (Rank 3) 
org $D078E4
db $F5, $01 
org $D078E6
db $F5, $01
; Twin Tania (Rank 12) > Halicarnaso (Rank 11) 
org $D078E0
db $F6, $01 
org $D078E2
db $F6, $01
; Apanda (Rank 10) > Minotauros (Rank 8) 
org $D078C0
db $F8, $01 
org $D078C2
db $F8, $01
; Crayclaw (Rank 6) > Forza (Rank 2) 
org $D07810
db $FA, $01 
org $D07812
db $FA, $01

;Karnak escape song
org $C8796D
db $20
;=====================
;Kuzar Reward Text Fix
;=====================
; Ether
org $E23F98
db  $64, $8D, $81, $7E, $8B, $00
; Image
org $E240A5
db  $68, $86, $7A, $80, $7E, $00
; Cover
org $E23F7A
db  $62, $88, $8F, $7E, $8B, $00
; Magic\nLove\nSong
org $E2404C
db  $6C, $7A, $80, $82, $7C, $01, $6B, $88, $8F, $7E, $01, $72, $88, $87, $80, $00
; Thunder Bow
org $E240C4
db  $73, $81, $8E, $87, $7D, $7E, $8B, $96, $61, $88, $90, $00
; Dragon's Whisker
org $E23FD6
db  $63, $8B, $7A, $80, $88, $87, $99, $8C, $96, $76, $81, $82, $8C, $84, $7E, $8B, $00
; Venom Rod
org $E24011
db  $75, $7E, $87, $88, $86, $96, $71, $88, $7D, $00
; Magus
org $E24088
db  $6C, $7A, $80, $8E, $8C, $00
; Equip Rods
org $E23FF4
db  $64, $8A, $8E, $82, $89, $96, $71, $88, $7D, $8C, $00
; Leather Shield
org $E2406A
db  $6B, $7E, $7A, $8D, $81, $7E, $8B, $96, $72, $81, $82, $7E, $85, $7D, $00
; Cursed Shield
org $E23FB7
db  $62, $8E, $8B, $8C, $7E, $7D, $96, $72, $81, $82, $7E, $85, $7D, $00
; Thief Knife
org $E2402D
db  $73, $81, $82, $7E, $7F, $96, $6A, $87, $82, $7F, $7E, $00

; Odin location animation fix (resolve softlocks)
org $D04EEF
db $20

