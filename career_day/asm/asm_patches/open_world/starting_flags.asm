; this is a continuation of the intro cutscene code. This will mass update flags and set other coordinates. 
; this is EVENT code that is set in the middle of the intro cutscene. 


    
    
; all 3 world 1 chars

db $B7, $02							;Add/Remove character 02
db $B7, $09							;Add/Remove character 09
db $B7, $03							;Add/Remove character 09

; add WarpShard
db $AA, $EE                     ;Add Item Potion

; world map
db $A4, $FB            ; set address 000A53 bit ON 08

; Spawn steamship at karnak
; Disabled, if you want to enable it, you have to control the karnak_warp_meteor flags so that the steamship is not immediately rideable 

; db $D2, $00, $54, $4F, $B5		;(Map) 00 54 4F B5


; PIRATES CAVE
; Always on

; set flags for tycoon meteor segment done
db $A4, $32                     ;Set Event Flag 132
db $A5, $FF                     ;Clear Event Flag 1FF
db $CA, $32, $00                ;Set Flag 2/3/4/5/32 00
db $A2, $10			;Set Event Flag 010
db $CB, $32, $00		;Clear Flag 2/3/4/5/32 00
db $A5, $FE			;Clear Event Flag 1FE


; set flags for pirates cave spawning on world map, and pass being completed
db $A4, $E1         				;Set Event Flag 1E1
db $A2, $11							;Set Event Flag 011
db $A4, $FF							;Set Event Flag 1FF
db $A4, $FE							;Clear Event Flag 1FE

; set flags for pirates area first clear

db $A2, $15            ; set address 000A16 bit ON 20
db $A2, $14            ; set address 000A16 bit ON 10
db $A2, $13            ; set address 000A16 bit ON 08
db $A4, $1C            ; set address 000A37 bit ON 10
db $A4, $1B            ; set address 000A37 bit ON 08
db $A4, $1A            ; set address 000A37 bit ON 04
db $A4, $23            ; set address 000A38 bit ON 08
db $A4, $33            ; set address 000A3A bit ON 08
db $A5, $FF            ; set address 000A53 bit OFF 80
db $A5, $FE            ; set address 000A53 bit OFF 40
db $CB, $37, $00            ; set address 000A5A bit OFF 80
db $CB, $36, $00            ; set address 000A5A bit OFF 40
db $CA, $3A, $00            ; set address 000A5B bit ON 04
db $CA, $39, $00            ; set address 000A5B bit ON 02
db $CA, $38, $00            ; set address 000A5B bit ON 01
db $A4, $3D            ; set address 000A3B bit ON 20 (navigate to wind shrine cutscene)


; TORNA CANAL

; Torna Canal is blocked by the type of vehicle you have. Specifically, it wants the steamship.
; $000AED must be set to 14
; When boarded, this causes the vehicle to be registered as $05 at $000AF1
; We're going to remove the vehicle check (in open_world/)

; Note, torna canal actually does have an event flag that naturally gets set when you fight karlabos. It blocks you from reentering. Which is fine to leave because you can go back through graveyard anytime

; Defaults always on:
; Tule boat cutscene
db $A4, $4C            ; set address 000A3D bit ON 10

; Access gate
; 000A18 set bits 10 and 20 (10 sets a cutscene triggered, both together unlock torna gate)
if !allareasaccessible == 0
    db $A2, $1C            ; set address 000A17 bit ON 10
    db $A2, $1D            ; set address 000A17 bit ON 20
endif



; WALSE TOWER

; always on (?)

; immediate set cutscene triggered 
db $A4, $E2            ; set address 000A50 bit ON 04

if !allareasaccessible == 0
    ; Guard removed except main blocking guard
    db $CA, $9D, $00            ; set address 000A67 bit ON 20
    db $CB, $A0, $00            ; set address 000A68 bit OFF 01
    db $CB, $9B, $00            ; set address 000A67 bit OFF 20
    db $CA, $9E, $00            ; set address 000A67 bit ON 40
endif



; KARNAK START:

; Set all events from Cid Cell
db $A2, $2D				;Set Event Flag 02D
db $CB, $69, $01		;Clear Flag 2/3/4/5/69 01
db $CA, $6A, $01		;Set Flag 2/3/4/5/6A 01
db $CB, $53, $01		;Clear Flag 2/3/4/5/53 01
db $CB, $72, $01		;Clear Flag 2/3/4/5/72 01
db $CA, $73, $01		;Set Flag 2/3/4/5/73 01
db $CA, $74, $01		;Set Flag 2/3/4/5/74 01
db $CA, $75, $01		;Set Flag 2/3/4/5/75 01
db $CA, $76, $01		;Set Flag 2/3/4/5/76 01
db $CB, $56, $01		;Clear Flag 2/3/4/5/56 01
db $CA, $52, $01			;Set Flag 2/3/4/5/52 01
db $A2, $2E					;Set Event Flag 02E


; ANCIENT LIBRARY
; untouched for now. everything spawns 

; CRESCENT ISLAND
; allows access to Bchoco 

db $A2, $39            ; set address 000A1B bit ON 02
db $CB, $EE, $01            ; set address 000A91 bit OFF 40
db $CB, $EC, $01            ; set address 000A91 bit OFF 10
db $CA, $EA, $01            ; set address 000A91 bit ON 04
db $CA, $E9, $01            ; set address 000A91 bit ON 02
db $CA, $FD, $01            ; set address 000A93 bit ON 20
db $CA, $77, $03            ; set address 000AC2 bit ON 80
db $CA, $76, $03            ; set address 000AC2 bit ON 40
db $CA, $75, $03            ; set address 000AC2 bit ON 20


; SANDWORM
; Allows immediate access to Sandworm fight
; db $A2, $3B            ; set address 000A1B bit ON 08




; RUINED CITY




; LONKA RUINS

; Bitwise 04 on address A53 (the event problematic address) controls world map access to ronka area 
; Doesnt break if you leave it on in world 3
; If you warp between worlds, theoretically you could set it so its only active in world 1. 
; db $A4, $FA            ; set address 000A53 bit ON 04

; Set side cannons to defeated
db $A2, $B7            ; set address 000A2A bit ON 80
db $A2, $B6            ; set address 000A2A bit ON 40
db $A2, $B5            ; set address 000A2A bit ON 20
db $A2, $B4            ; set address 000A2A bit ON 10
db $A2, $B3            ; set address 000A2A bit ON 08
db $CA, $FD, $00            ; set address 000A73 bit ON 20

; Set crystal to despawn. This causes a hard crash if left unmanaged when interacting with it
db $CB, $3B, $01            ; set address 000A7B bit OFF 08



; METEOR RAID
; Cutscene after galuf leaves, after Earth crystal
db $A2, $4D            ; set address 000A1D bit ON 20
; Set Tycoon Cid/Mid check already accessed
db $A2, $4F            ; set address 000A1D bit ON 20
db $A2, $47            ; set address 000A1C bit ON 80
db $A2, $46            ; set address 000A1C bit ON 40

; WARP TO WORLD 2
db $A4, $EF            ; set address 000A51 bit ON 80


; EXDEATH CASTLE
; Unlock doors
; Sets Gilga 1 to complete
db $A2, $5E            ; set address 000A1F bit ON 40  - sets barrier active

db $CB, $15, $03                ;Turn off bit 20 at address  0x7e0ab6
db $CB, $16, $03                ;Turn off bit 40 at address  0x7e0ab6
db $CB, $17, $03                ;Turn off bit 80 at address  0x7e0ab6
db $CB, $1B, $03                ;Turn off bit 08 at address  0x7e0ab7
db $CA, $0E, $00                ;Turn on bit 40 at address  0x7e0a55
; db $A2, $58                     ;Turn on bit 01 at address 0x7e0a1f
; db $A2, $59                     ;Turn on bit 02 at address 0x7e0a1f

; BIG BRIDGE
; Set all events except Gilga fight

; gilga fight = $A1C bit 20

; Set big bridge encounters complete, full walk access
; db $A2, $61            ; set address 000A20 bit ON 02 (bal castle gates)
db $A2, $5D            ; set address 000A1F bit ON 20
db $CB, $2E, $03            ; set address 000AB9 bit OFF 40
db $CB, $2D, $03            ; set address 000AB9 bit OFF 20


; MOOGLE FOREST
; set waterway not open, but moogle active

db $A3, $5D            ; set address 000A1F bit OFF 20


; MOOGLE VILLAGE
; Set flags for open village
db $CB, $3E, $02                        ;Clear Flag 2/3/4/5/3E 02
db $CB, $3F, $02                        ;Clear Flag 2/3/4/5/3F 02
; db $A4, $3C                     ;Set Event Flag 13C (this is tyrasaur being defeated, and previously moogle village unlocked)
db $A4, $2C                     ;Turn on bit 10 at address 0x7e0a39 (this is now village being unlocked)
db $CB, $E6, $01                ;Clear Flag 2/3/4/5/E6 01
db $CB, $E7, $01                ;Clear Flag 2/3/4/5/E7 01
db $CB, $DF, $01                ;Clear Flag 2/3/4/5/DF 01
db $CA, $E0, $01                ;Set Flag 2/3/4/5/E0 01
db $CA, $E1, $01                ;Set Flag 2/3/4/5/E1 01
db $CA, $E2, $01                ;Set Flag 2/3/4/5/E2 01
db $CA, $E3, $01                ;Set Flag 2/3/4/5/E3 01
db $CA, $E4, $01                ;Set Flag 2/3/4/5/E4 01
db $CA, $E5, $01                ;Set Flag 2/3/4/5/E5 01
db $A4, $2D                     ;Set Event Flag 12D

; BAL CASTLE
db $A2, $5F                     ;Set Event Flag 05F
db $CA, $69, $02                        ;Set Flag 2/3/4/5/69 02
db $CA, $6A, $02                        ;Set Flag 2/3/4/5/6A 02
db $CA, $6B, $02                        ;Set Flag 2/3/4/5/6B 02
db $CA, $6C, $02                        ;Set Flag 2/3/4/5/6C 02
db $CA, $6D, $02                        ;Set Flag 2/3/4/5/6D 02
db $CA, $6E, $02                        ;Set Flag 2/3/4/5/6E 02
db $CA, $6F, $02                        ;Set Flag 2/3/4/5/6F 02
db $CA, $70, $02                        ;Set Flag 2/3/4/5/70 02
db $CA, $71, $02                        ;Set Flag 2/3/4/5/71 02
db $CA, $72, $02                        ;Set Flag 2/3/4/5/72 02
db $CA, $73, $02                        ;Set Flag 2/3/4/5/73 02
db $CA, $7C, $02                        ;Set Flag 2/3/4/5/7C 02
db $CA, $74, $02                        ;Set Flag 2/3/4/5/74 02
db $CA, $75, $02                        ;Set Flag 2/3/4/5/75 02
db $CA, $76, $02                        ;Set Flag 2/3/4/5/76 02
db $CA, $77, $02                        ;Set Flag 2/3/4/5/77 02
db $CA, $78, $02                        ;Set Flag 2/3/4/5/78 02
db $CA, $79, $02                        ;Set Flag 2/3/4/5/79 02
db $CA, $7A, $02                        ;Set Flag 2/3/4/5/7A 02
db $A2, $60                     ;Set Event Flag 060 (this is taken from Cara's cutscene with Hiryuu to immediately set flag)

	; guards after balcastle_leavesgates
; db $A2, $61                     ;Set Event Flag 061 (bal castle gates)
db $CB, $6B, $02                ;Clear Flag 2/3/4/5/6B 02

; RUGOR
db $A2, $5B                     ;Turn on bit 08 at address 0x7e0a1f Rugor inn cutscene

; after hiryuu reentering
db $A4, $1D                     ;Set Event Flag 11D
db $CB, $69, $02                ;Clear Flag 2/3/4/5/69 02
db $CA, $7B, $02                ;Set Flag 2/3/4/5/7B 02
db $A2, $67                     ;Set Event Flag 067 (this is speaking with Cara cutscene)

; KELB VILLAGE
db $A2, $62                     ;Set Event Flag 062 (this cutscene)
db $A2, $64                     ;Set Event Flag 062 (Kelgar cutscene)
db $CA, $AE, $02                ;Turn on bit 40 at address  0x7e0aa9
db $CA, $AF, $02                ;Turn on bit 80 at address  0x7e0aa9
db $CA, $B0, $02                ;Turn on bit 01 at address  0x7e0aaa
db $CA, $B1, $02                ;Turn on bit 02 at address  0x7e0aaa
db $CA, $B2, $02                ;Turn on bit 04 at address  0x7e0aaa
db $CA, $B5, $02                ;Turn on bit 20 at address  0x7e0aaa
db $CA, $B6, $02                ;Turn on bit 40 at address  0x7e0aaa
db $CA, $B7, $02                ;Turn on bit 80 at address  0x7e0aaa
db $CA, $C1, $02                ;Turn on bit 02 at address  0x7e0aac
db $CB, $C2, $02                ;Turn off bit 04 at address  0x7e0aac
db $CB, $A1, $02                ;Turn off bit 02 at address  0x7e0aa8
db $CA, $29, $00                ;Turn on bit 02 at address  0x7e0a59
db $CA, $2A, $00                ;Turn on bit 04 at address  0x7e0a59



; HIRYUU VALLEY
db $CB, $D3, $02                ;Clear Flag 2/3/4/5/D3 02


; GUIDO ISLAND
db $A2, $6B                     ;Set Event Flag 06B
db $A4, $E8                     ;Set Event Flag 1E8
db $A4, $E9                     ;Set Event Flag 1E9


; SURGATE CASTLE
db $A2, $6A 						; Set event flag for playing Surgate cutscene 



; SUBMARINE ACCESS
; disables zeza in submarine cutscene
db $A2, $6E            ; set address 000A21 bit ON 40
db $CB, $DB, $00            ; set address 000A6F bit OFF 08
db $CB, $DA, $00            ; set address 000A6F bit OFF 04
db $CB, $D8, $00            ; set address 000A6F bit OFF 01

; GUIDO CAVE
; award branch, trigger discussion flag
; db $A2, $71                     ;Set Event Flag 071

; MUA FOREST
; Mua's event was changed to refer to this. Refer to open_world.asm for explanation

; db $A2, $72                     ;Set Event Flag 072

; End of forest after battle:
; db $A2, $75                     ;Set Event Flag 075
db $A5, $FE                     ;Clear Event Flag 1FE
db $A4, $25                     ;Set Event Flag 125
db $CB, $0E, $00                ;Clear Flag 2/3/4/5/0E 00
db $CA, $0F, $00                ;Set Flag 2/3/4/5/0F 00
db $CB, $1A, $03                ;Clear Flag 2/3/4/5/1A 03
db $CB, $44, $02                ;Clear Flag 2/3/4/5/44 02
db $CB, $45, $02                ;Clear Flag 2/3/4/5/45 02
db $CB, $46, $02                ;Clear Flag 2/3/4/5/46 02
db $CB, $47, $02                ;Clear Flag 2/3/4/5/47 02
db $CB, $48, $02                ;Clear Flag 2/3/4/5/48 02
db $CB, $7B, $02                ;Clear Flag 2/3/4/5/7B 02
db $CA, $49, $02                ;Set Flag 2/3/4/5/49 02
db $CA, $4A, $02                ;Set Flag 2/3/4/5/4A 02
db $CA, $4B, $02                ;Set Flag 2/3/4/5/4B 02
db $CA, $4C, $02                ;Set Flag 2/3/4/5/4C 02
db $CA, $4D, $02                ;Set Flag 2/3/4/5/4D 02



; WORLD 3

; CLEFT ACCESS
; Sets first cleft cutscene to watched
; Important, as we use this cutscene for world traversing
db $A4, $7E            ; set address 000A43 bit ON 40

; TYCOON

; db $A5, $7F                     ;Clear Event Flag 17F
; db $CB, $96, $01                ;Clear Flag 2/3/4/5/96 01
; db $A2, $79                     ;Set Event Flag 079
; db $CB, $7C, $01                ;Clear Flag 2/3/4/5/7C 01
; db $CB, $7D, $01                ;Clear Flag 2/3/4/5/7D 01
; db $CB, $7E, $01                ;Clear Flag 2/3/4/5/7E 01
; db $CB, $7F, $01                ;Clear Flag 2/3/4/5/7F 01
; db $CB, $89, $01                ;Clear Flag 2/3/4/5/89 01
; db $CB, $8A, $01                ;Clear Flag 2/3/4/5/8A 01
; db $CB, $8B, $01                ;Clear Flag 2/3/4/5/8B 01
; db $CB, $8C, $01                ;Clear Flag 2/3/4/5/8C 01
; db $CA, $51, $00                ;Set Flag 2/3/4/5/51 00
; db $CA, $52, $00                ;Set Flag 2/3/4/5/52 00
; db $CA, $53, $00                ;Set Flag 2/3/4/5/53 00
; db $CA, $54, $00                ;Set Flag 2/3/4/5/54 00
; db $CA, $55, $00                ;Set Flag 2/3/4/5/55 00
; db $CA, $98, $03                ;Set Flag 2/3/4/5/98 03
; db $CA, $7D, $03                ;Set Flag 2/3/4/5/7D 03
; db $CA, $7E, $03                ;Set Flag 2/3/4/5/7E 03
; db $CA, $7F, $03                ;Set Flag 2/3/4/5/7F 03
; db $CA, $80, $03                ;Set Flag 2/3/4/5/80 03
; db $CA, $81, $03                ;Set Flag 2/3/4/5/81 03
; db $CA, $82, $03                ;Set Flag 2/3/4/5/82 03
; db $CB, $44, $00                ;Clear Flag 2/3/4/5/44 00
; db $CB, $45, $00                ;Clear Flag 2/3/4/5/45 00
; db $CB, $46, $00                ;Clear Flag 2/3/4/5/46 00
; db $CB, $47, $00                ;Clear Flag 2/3/4/5/47 00
; db $CB, $48, $00                ;Clear Flag 2/3/4/5/48 00
; db $CB, $49, $00                ;Clear Flag 2/3/4/5/49 00
; db $CB, $30, $00                ;Clear Flag 2/3/4/5/30 00

; PIRATE'S HIDEOUT
; Make Syldra event automatic

; This is tied to Melusine! Cannot activate automatically. 
; db $A2, $81            ; set address 000A24 bit ON 02



; GUIDO CAVE
db $A4, $F5                     ;Turn on bit 20 at address 0x7e0a52
db $CB, $30, $03                ;Turn off bit 01 at address  0x7e0aba
db $CB, $17, $01                ;Turn off bit 80 at address  0x7e0a76
db $A2, $80                     ;Turn on bit 01 at address 0x7e0a24
db $A4, $7F                     ;Turn on bit 80 at address 0x7e0a43
db $CA, $98, $03                ;Turn on bit 01 at address  0x7e0ac7
db $A4, $50                     ;Turn on bit 01 at address 0x7e0a3e

; MUA TREE
; First Tree visit flag
db $A4, $7C                     ;Set Event Flag 17C


; What is this...?
db $A2, $BD                     ;Turn on bit 20 at address 0x7e0a2b


; PYRAMID
; allows getting the tablet...?
; db $CA, $08, $00            ; set address 000A55 bit ON 01
db $A5, $F7                     ;Turn off bit 80 at address 0x7e0a52


; KUZAR CASTLE
; Set flags for spawned wind shrine guy
db $CA, $7F, $03            ; set address 000AC3 bit ON 80
db $A2, $5C                     ;Turn on bit 10 at address 0x7e0a1f (this is for first Kuzar event)


; MELUSINE 
db $A4, $F3                     ;Turn on bit 08 at address 0x7e0a52
db $CB, $08, $00                ;Turn off bit 01 at address  0x7e0a55
; db $A2, $83                     ;Turn on bit 08 at address 0x7e0a24 (THIS IS TABLET 1 FOR KUZAR, NOT KEY ITEM, ACTUAL TABLET)

; SECOND TABLET → FORK TOWER
db $A4, $5B            ; set address 000A3F bit ON 08


; player position
; set airship
; spawns right under player, tweak $9C,$96 to change X/Y coord. $D8 controls type of vehicle

!testingmapid = $02, $00
!testingxy = $93, $52

; ONLY USE WITH WORLD 3
db $A2, $79            ; set address 000A23 bit ON 02

db $E1, !testingmapid, !testingxy, $00 ;Return from cutscene? 00 00 9C 96 00
db $D2, $02,!testingxy, $D8

; OG CORRECT WARPS
;db $E1, $00, $00, $91, $73, $00 ;Return from cutscene? 00 00 9C 96 00
; db $D2, $00, $91, $74, $D8


; TESTING!!!!!!!
; custom text box for key item
	db $DE, $60				; set up reward
	db $DE, $61				; set up reward
	db $DE, $62				; set up reward
	db $DE, $63				; set up reward
	db $DE, $64				; set up reward
	
db $EE

; testing for rift tablet conditionals
db $A5, $70            ; set address 000A42 bit OFF 01
db $A5, $71            ; set address 000A42 bit OFF 02


db $14