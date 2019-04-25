hirom
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
; --------------------------
; Original boss WingRaptor, WingRaptor rank 1 -> Randomized boss Byblos rank 4
; HP: 250 -> 3600
; --------------------------
; Original boss Karlabos rank 1 -> Randomized boss Antlion rank 6
; HP: 650 -> 8100
; --------------------------
; Original boss Siren, Siren rank 2 -> Randomized boss Calofisteri rank 10
; HP: 900 -> 18000
; ENEMY: Siren
; Skills: ['Mute', 'Slow2', 'Haste', 'Cure2', 'Ice3', 'Scan', 'Armor', 'Sleep', 'Bolt3']
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
; New skill: Bolt3
org $d0b2f0
db $0E
; ENEMY: Siren
; --------------------------
; Original boss Forza, Magisa rank 2 -> Randomized boss Omniscient rank 8
; HP: 850 -> 16999
; ENEMY: Forza
; ENEMY: Magisa
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Aero3', 'Specialty', 'Drain']
; New skill: Fire2
org $d0b34d
db $2A
; New skill: Ice2
org $d0b34e
db $2B
; New skill: Bolt2
org $d0b34f
db $2C
; New skill: Aero3
org $d0b351
db $91
; New skill: Specialty
org $d0b352
db $81
; New skill: Drain
org $d0b353
db $2D
; Original HP: 8500
; New trigger HP: 3910
org $d0b329
db $46, $0f
; --------------------------
; Original boss Galura rank 3 -> Randomized boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6
; HP: 1200 -> 12000
; ENEMY: Galura
; Original HP: 12000
; New trigger HP: 7920
org $d0b36a
db $f0, $1e
; --------------------------
; Original boss LiquiFlame, LiquiFlame, LiquiFlame rank 4 -> Randomized boss AdamanTiMi rank 4
; HP: 3000 -> 2000
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
; --------------------------
; Original boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4 -> Randomized boss Catastroph rank 11
; HP: 1000 -> 19997
; --------------------------
; Original boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4 -> Randomized boss Hole, Hole, Hole, Sandworm, Sandworm, Sandworm rank 4
; HP: 3000 -> 3000
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
; Skills: ['Fight', 'Quicksand', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Quicksand
org $d0b3dc
db $C9
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Quicksand', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Quicksand
org $d0b3dc
db $C9
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Sandworm
; Skills: ['Fight', 'Quicksand', 'Quicksand']
; New skill: Fight
org $d0b3db
db $80
; New skill: Quicksand
org $d0b3dc
db $C9
; New skill: Quicksand
org $d0b3dd
db $C9
; ENEMY: Hole
; --------------------------
; Original boss AdamanTiMi rank 4 -> Randomized boss Carbunkle, Carbunkle rank 7
; HP: 2000 -> 15000
; --------------------------
; Original boss Sol Cannon, Launcher, Launcher rank 5 -> Randomized boss Apocalypse rank 11
; HP: 22500 -> 27900
; ENEMY: Sol Cannon
; Original HP: 27900
; New trigger HP: 12276
org $d0b4ef
db $f4, $2f
; ENEMY: Launcher
; ENEMY: Launcher
; --------------------------
; Original boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5 -> Randomized boss Gilgamesh, Enkidou rank 6
; HP: 1600 -> 17776
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
; --------------------------
; Original boss Chim.Brain rank 5 -> Randomized boss Ifrit rank 3
; HP: 3300 -> 3000
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
; --------------------------
; Original boss Titan rank 5 -> Randomized boss Twin Tania, Twin Tania rank 12
; HP: 2500 -> 50000
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
; --------------------------
; Original boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5 -> Randomized boss Apanda rank 10
; HP: 1500 -> 22200
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Gilgamesh rank 5
; HP: 11500 -> 6500
; ENEMY: Gilgamesh
; Original HP: 6500
; New trigger HP: 5655
org $d0b5f5
db $17, $16
; --------------------------
; Original boss Gilgamesh rank 5 -> Randomized boss Gilgamesh, Gilgamesh rank 7
; HP: 6500 -> 55000
; ENEMY: Gilgamesh
; Original HP: 55000
; New trigger HP: 20900
org $d0b674
db $a4, $51
; --------------------------
; Original boss Tyrasaurus rank 5 -> Randomized boss Gargoyle, Gargoyle rank 7
; HP: 5000 -> 10000
; --------------------------
; Original boss Abductor rank 6 -> Randomized boss Leviathan rank 9
; HP: 2500 -> 40000
; --------------------------
; Original boss HiryuuPlant, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr, HiryuuFlowr rank 6 -> Randomized boss Forza, Magisa rank 2
; HP: 12000 -> 850
; --------------------------
; Original boss Gilgamesh, Enkidou rank 6 -> Randomized boss Gilgamesh rank 5
; HP: 8888 -> 11500
; ENEMY: Gilgamesh
; Original HP: 5750
; New trigger HP: 3853
org $d0b761
db $0d, $0f
; ENEMY: Enkidou
; Skills: ['Aero2']
; New skill: Aero2
org $d0b7c0
db $90
; --------------------------
; Original boss Atmos rank 6 -> Randomized boss Minotauros rank 8
; HP: 19997 -> 19850
; --------------------------
; Original boss Guardian, Guardian, Guardian, Guardian rank 7 -> Randomized boss ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis, ArchaeAvis rank 5
; HP: 7777 -> 8000
; ENEMY: Guardian
; Skills: ['Fire2']
; New skill: Fire2
org $d0b865
db $2A
; Original HP: 2000
; New trigger HP: 760
org $d0b85e
db $f8, $02
; ENEMY: Guardian
; Skills: ['Quicksand']
; New skill: Quicksand
org $d0b877
db $C9
; Original HP: 2000
; New trigger HP: 760
org $d0b874
db $f8, $02
; ENEMY: Guardian
; Skills: ['MiniBlaze']
; New skill: MiniBlaze
org $d0b889
db $CB
; Original HP: 2000
; New trigger HP: 760
org $d0b886
db $f8, $02
; ENEMY: Guardian
; Skills: ['Aero2']
; New skill: Aero2
org $d0b89f
db $90
; Original HP: 2000
; New trigger HP: 760
org $d0b898
db $f8, $02
; --------------------------
; Original boss Carbunkle, Carbunkle rank 7 -> Randomized boss Guardian, Guardian, Guardian, Guardian rank 7
; HP: 15000 -> 31108
; ENEMY: Carbunkle
; Original HP: 31108
; New trigger HP: 20531
org $d0b8ae
db $33, $50
; Original HP: 31108
; New trigger HP: 10266
org $d0b8d1
db $1a, $28
; ENEMY: Carbunkle
; --------------------------
; Original boss Gilgamesh, Gilgamesh rank 7 -> Randomized boss Sergeant, Karnak, Karnak, Karnak, Iron Claw rank 4
; HP: 55000 -> 1000
; ENEMY: Gilgamesh
; Original HP: 1000
; New trigger HP: 760
org $d0b98c
db $f8, $02
; ENEMY: Gilgamesh
; --------------------------
; Original boss Antlion rank 6 -> Randomized boss Siren, Siren rank 2
; HP: 8100 -> 900
; --------------------------
; Original boss Halicarnaso rank 11 -> Randomized boss Crayclaw rank 6
; HP: 33333 -> 2000
; --------------------------
; Original boss Merugene, Merugene, Merugene, Merugene rank 8 -> Randomized boss Puroboros, Puroboros, Puroboros, Puroboros, Puroboros, Puroboros rank 5
; HP: 20000 -> 1500
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
; --------------------------
; Original boss Odin rank 9 -> Randomized boss Shiva, Commander, Commander, Commander rank 4
; HP: 17000 -> 1500
; ENEMY: Odin
; Skills: ['ReaperSword']
; New skill: ReaperSword
org $d0bbb8
db $B0
; --------------------------
; Original boss Gargoyle, Gargoyle rank 7 -> Randomized boss Abductor rank 6
; HP: 5000 -> 2500
; --------------------------
; Original boss Triton, Neregeid, Phobos rank 9 -> Randomized boss Atmos rank 6
; HP: 13333 -> 19997
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
; --------------------------
; Original boss Omniscient rank 8 -> Randomized boss Sol Cannon, Launcher, Launcher rank 5
; HP: 16999 -> 22500
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
; Original HP: 22500
; New trigger HP: 5400
org $d0bc6e
db $18, $15
; --------------------------
; Original boss Minotauros rank 8 -> Randomized boss Titan rank 5
; HP: 19850 -> 2500
; --------------------------
; Original boss Leviathan rank 9 -> Randomized boss Triton, Neregeid, Phobos rank 9
; HP: 40000 -> 39999
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
; --------------------------
; Original boss Stalker, Stalker, Stalker, Stalker rank 9 -> Randomized boss WingRaptor, WingRaptor rank 1
; HP: 20000 -> 250
; --------------------------
; Original boss Gogo rank 9 -> Randomized boss Bahamut rank 9
; HP: 47714 -> 40000
; ENEMY: Gogo
; Original HP: 40000
; New trigger HP: 27600
org $d0be14
db $d0, $6b
; --------------------------
; Original boss Bahamut rank 9 -> Randomized boss Tyrasaurus rank 5
; HP: 40000 -> 5000
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
; Original HP: 5000
; New trigger HP: 1250
org $d0be5e
db $e2, $04
; Original HP: 5000
; New trigger HP: 1900
org $d0be68
db $6c, $07
; Original HP: 5000
; New trigger HP: 2500
org $d0be76
db $c4, $09
; Original HP: 5000
; New trigger HP: 3150
org $d0be84
db $4e, $0c
; Original HP: 5000
; New trigger HP: 3750
org $d0be92
db $a6, $0e
; Original HP: 5000
; New trigger HP: 4350
org $d0bea0
db $fe, $10
; Original HP: 5000
; New trigger HP: 1250
org $d0beb7
db $e2, $04
; --------------------------
; Original boss Ifrit rank 3 -> Randomized boss Halicarnaso rank 11
; HP: 3000 -> 33333
; ENEMY: Ifrit
; Skills: ['Flame', 'Fire3', 'Flare', 'AtomicRay', 'Fight', 'Specialty']
; New skill: Flame
org $d0a2fb
db $DB
; New skill: Fire3
org $d0a2fc
db $30
; New skill: Flare
org $d0a2fd
db $33
; New skill: AtomicRay
org $d0a2ff
db $CA
; New skill: Fight
org $d0a300
db $80
; New skill: Specialty
org $d0a301
db $81
; --------------------------
; Original boss Shiva, Commander, Commander, Commander rank 4 -> Randomized boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12
; HP: 1500 -> 65535
; ENEMY: Shiva
; Skills: ['Snowstorm', 'Ice3']
; New skill: Snowstorm
org $d0b6c0
db $CC
; New skill: Ice3
org $d0b6c5
db $31
; ENEMY: Commander
; ENEMY: Commander
; ENEMY: Commander
; --------------------------
; Original boss Calofisteri rank 10 -> Randomized boss Chim.Brain rank 5
; HP: 18000 -> 3300
; --------------------------
; Original boss Apocalypse rank 11 -> Randomized boss Stalker, Stalker, Stalker, Stalker rank 9
; HP: 27900 -> 20000
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
; --------------------------
; Original boss Catastroph rank 11 -> Randomized boss LiquiFlame, LiquiFlame, LiquiFlame rank 4
; HP: 19997 -> 3000
; ENEMY: Catastroph
; Skills: ['Fight', 'Quicksand', 'DemonEye', 'Fight', 'SurgeBeam', 'Specialty']
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
; New skill: SurgeBeam
org $d0c1e5
db $DD
; New skill: Specialty
org $d0c1e6
db $81
; --------------------------
; Original boss Necrofobia, Barrier, Barrier, Barrier, Barrier, Gilgamesh rank 12 -> Randomized boss Gogo rank 9
; HP: 44044 -> 47714
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
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2']
; New skill: Fire2
org $d0c581
db $2A
; New skill: Ice2
org $d0c582
db $2B
; New skill: Bolt2
org $d0c583
db $2C
; New skill: Fire2
org $d0c589
db $2A
; New skill: Ice2
org $d0c58a
db $2B
; New skill: Bolt2
org $d0c58b
db $2C
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire2
org $d0c599
db $2A
; New skill: Ice2
org $d0c59a
db $2B
; New skill: Bolt2
org $d0c59b
db $2C
; ENEMY: Barrier
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2']
; New skill: Fire2
org $d0c581
db $2A
; New skill: Ice2
org $d0c582
db $2B
; New skill: Bolt2
org $d0c583
db $2C
; New skill: Fire2
org $d0c589
db $2A
; New skill: Ice2
org $d0c58a
db $2B
; New skill: Bolt2
org $d0c58b
db $2C
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire2
org $d0c599
db $2A
; New skill: Ice2
org $d0c59a
db $2B
; New skill: Bolt2
org $d0c59b
db $2C
; ENEMY: Barrier
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2']
; New skill: Fire2
org $d0c581
db $2A
; New skill: Ice2
org $d0c582
db $2B
; New skill: Bolt2
org $d0c583
db $2C
; New skill: Fire2
org $d0c589
db $2A
; New skill: Ice2
org $d0c58a
db $2B
; New skill: Bolt2
org $d0c58b
db $2C
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire2
org $d0c599
db $2A
; New skill: Ice2
org $d0c59a
db $2B
; New skill: Bolt2
org $d0c59b
db $2C
; ENEMY: Barrier
; Skills: ['Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2', 'Fire2', 'Ice2', 'Bolt2']
; New skill: Fire2
org $d0c581
db $2A
; New skill: Ice2
org $d0c582
db $2B
; New skill: Bolt2
org $d0c583
db $2C
; New skill: Fire2
org $d0c589
db $2A
; New skill: Ice2
org $d0c58a
db $2B
; New skill: Bolt2
org $d0c58b
db $2C
; New skill: Fire2
org $d0c591
db $2A
; New skill: Ice2
org $d0c592
db $2B
; New skill: Bolt2
org $d0c593
db $2C
; New skill: Fire2
org $d0c599
db $2A
; New skill: Ice2
org $d0c59a
db $2B
; New skill: Bolt2
org $d0c59b
db $2C
; ENEMY: Gilgamesh
; --------------------------
; Original boss Twin Tania, Twin Tania rank 12 -> Randomized boss Karlabos rank 1
; HP: 50000 -> 650
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
; --------------------------
; Original boss Apanda rank 10 -> Randomized boss Merugene, Merugene, Merugene, Merugene rank 8
; HP: 22200 -> 20000
; ENEMY: Apanda
; Skills: ['WindSlash', 'WindSlash']
; New skill: WindSlash
org $d0c409
db $AB
; New skill: WindSlash
org $d0c410
db $AB
; --------------------------
; Original boss Crayclaw rank 6 -> Randomized boss Odin rank 9
; HP: 2000 -> 17000
