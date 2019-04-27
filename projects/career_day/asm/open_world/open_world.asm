hirom


; These are for permanent changes to open world


; TYCOON CASTLE
; Move the guard out of the way of the vault

org $CE685A
db $15

; ZOKK
; First Zokk cutscene flag off
org $F04B4E
db $FB, $FB
org $F0574B
db $FB, $FB
org $F05752
db $FB, $FB

; RIFT
; Stop Omega from moving
org $CE992B
db $04

; ANCIENT LIBRARY
; Change flag for checking cid mid event
;org $D8EF42
org $F04EC2
db $EE


; SYLDRA
; Change Syldra's event to be tied to $A2, $11  ($7E0A16 bit 02), which is 
; Early game Pirate cave access. Could be a quasi-key item later 
; org $D8EC45
org $F04BC5
db $11


; MUA FOREST
; Change checked flag from event code $A2, $71 to $A2, $72 ($000A22 bit 04 instead of 02)
; The reason for this is that $A22 bit 02 is connected to both guido and mua forest
; BUt Bit 04 is specifically tied to the fast 'reentrance' of mua forest
; So we can isolate mua forest as its own area, and guido can remain $A22 bit 02
; This code specifically means when Mua forest is looking for the bit, it's now checking 04 instead of 02 at $A22
; org $D8F18E
org $F0510E
db $72

; always trigger cutscene for opening path to boss
org $F04D66
db $FC, $FB
; MOOGLE VILLAGE
; Event code [$A4, $3C] or setting bit 10 on $000A3B corresponds to both Tyrasaur being defeated and Moogle Village being open
; This fix allows for Tyrasaur to remain on $000A3B bit 10, while Moogle Village is swapped to another bit usually set upon 
; Finishing the Tyrasaur sequence, immediately set on new game ([$A4, $C1], or $000A4C bit 02)
;org $D8EF5C
org $F04EDC
db $C1                     ;Refer to event code [$A4, $C1]


; MOOGLE WATERWAY
; For some reason, $000A1F bit 40 (event [$A2, $5E]) is both tied to the pre-Tyrasaur cutscene (not the pre-battle cutscene, the cutscene before that) and the barrier for Exdeath's castle
; This will disable the waterway cutscene from checking that bit, so it's left only to be barrier related
; We set it to check a bit that we ALWAYS know will be set, which is event code $A2, $10 from starting_flags 
; this is address $000A16 bit $10

;org $D8F632
org $F055B2
db $10

; BAL CASTLE
org $f04d3d
db $ff, $00, $00

; disable hiryuu event
org $c9f3f7
db $FF

; ZEZA FLEET
; After Gilgamesh, change one of the flags for Hiryuu spawning to normal to be based off of:
; db $A2, $AA                     ;Turn on bit 04 at address 0x7e0a29
; instead of 
; db $A2, $6D                     ;Turn on bit 20 at address 0x7e0a21
; Which is tied to Zeza allowing access to Barrier Tower
; org $D8F254
org $F051D4
db $AA

; BARRIER TOWER
; Similar to above, change barrier tower fight cutscene to deactivate from a different flag than the underwater barrier access warp tile
; org $D8F37D
org $F052FD
db $FD, $77




; FORK TOWER
; Galuf in party causes problems. Temporarily setting access after Mua forest boss → getting Cara
; Bit 80 at address 0x7e0a4b

; org $D8F85A
org $F057D9
db $FD, $C6


; ANTLION
; Moved antlion's area tile up 1 into the river.
; This makes it so the player can only access as Boco, which avoids the regular situation forcing the player
; to be on Boco by walking on the world map (instead of accessing with Boco like vanilla)
org $CE2869 ; this changes tile
db $57
org $C8B218 ; this changes leaving cutscene to place Boco one tile right of this 
db $7A


; PYRAMID W3
; Disable conditional event for pyramid cutscene. Reused for world warps 
; This disables X Y coords and replicates the previous xy checker to overwrite
org $CE288C
db $AD, $E9, $F0, $01


; GARGOYLES
; Change each conditional event to have individual flags associated with their respective key items
; Only works for pyramid, the others had to be custom 
; Pyramid
; org $D8F3E7
org $F05367
db $BC

; Solitary Shrine
; org $D8FC64
; db $FC, $BB





;FINAL EXDEATH
;Always trigger the cutscene for the final fight
org $F05D3D
db $FF, $85, $07

org $F05D49
db $FF, $9F, $06

org $F053B7 ; this is the actual tile to trigger the fight 
db $FF, $84, $07, $00, $00

; edit LEAVING event to move player down 1 tile
org $C9C4CD
db $23
org $C9FE8A
db $31





; to be VERY Safe that Exdeath sprite doesnt show up, delete
org $CE9A7D
pad $CE9AC3


; spring nullify
org $F04BA4
db $33

;TULE
; change tutorial guy in Tule (duplicate text from 2nd floor guy)
org $CE5E6A
db $68

; AFTER TULE BOAT CUTSCENE
; world map trigger
org $F04F59
db $FB, $FB

; KUZAR 
; disable cutscene after placing first tablet
org $F051AD
db $FB, $FB

; BLACK CHOCOBO
; set to always have recatch cutscene play
; org $F04757
; db $85, $00

org $F04752
db $FD, $3A, $FF, $85, $00, $FF, $47, $03, $FF, $00, $00

org $CE17E0
db $fe, $3a, $fe, $3a, $ff, $7e, $00, $fe, $3a, $ff, $7e, $00, $f7, $00, $ff, $f6, $02


; set backup text to NOT crash the game
; org $CE7879
; db $F6, $00
; org $CE7880
; db $F6, $00



; GIL CAVE
; set to always trigger door opening
org $F05A8C
db $FB

; GUIDO CAVE
; Guido never appears 
org $F0509A
db $FB, $FB
org $F050A1
db $FB, $FB

; BLACK CHOCO W3
; make it so black choco always respawns at mirage
org $C99EBB
db $00, $00, $00

; NORTH MOUNTAIN
; conditional event for never interacting with hiryuu at top
org $F04835
db $FD, $79, $FF, $00, $00

; nuke npcs
org $ce670E
pad $CE673F


; EXDEATH WORLD 2 CASTLE
org $F05699
db $FC, $BF, $FF, $E1, $00, $00, $00, $00, $00
org $F056A2
db $FF, $00, $00, $00, $00, $00, $FF, $00, $00

; EARTH CRYSTAL
; if you wanna fix later, disable this flag getting set at c89b13 (for FD, B8, not FE)
org $F04AEC
db $FE, $B8



; CARWEN
; remove lady
org $CE65E1
pad $CE65EF

; SUBMARINE
; warp to new locations, ignore submarine entirely
org $C93F4B
db $4B, $01, $11, $0d
;map data warp
org $CE4DDC
db $01, $00, $AC, $A5


; NEW TEXT FOR DEBUG TO WARP AREA
org $e178fa
db $63, $64, $61, $74, $66, $9B, $96, $76, $7A, $8B, $89, $82, $87, $80, $96, $8D, $88, $96, $76, $7A, $8B, $89, $96, $60, $8B, $7E, $7A, $A3, $96, $01, $6D, $88, $8D, $96, $7A, $96, $7B, $8E, $80, $A1, $00

; STEAMSHIP / AIRSHIP
; never have the steamship (if it happens to spawn on world map??) or airship do anything except let you ride it (no cutscenes)
org $F04F57
db $FF, $00, $00


; METEOR WALSE
org $C984FC
db $FF

; Big Bridge
; Clear out encounters 
org $F0500E
db $00, $00
org $F05015
db $00, $00
org $F0501C
db $00, $00
org $F05023
db $00, $00
org $F0502A
db $00, $00
org $F05031
db $00, $00
org $F05038
db $00, $00
org $F0503D
db $00, $00
org $F05054
db $00, $00
org $F0505B
db $00, $00
org $F05007
db $00, $00
org $F0500E
db $00, $00
org $F05015
db $00, $00
org $F0501C
db $00, $00