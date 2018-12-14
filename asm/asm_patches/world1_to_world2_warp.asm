; World 1 → World 2 Warp
; Bypasses tent cutscene, straight to Exdeath's castle as Galuf 
; Addresses $C8A6D3 → $C8A94C


hirom
!base = $C00000

org $C8A6D3

db $C4, $03                     ;Fade out Speed 03
db $72                          ;Timing
db $72                          ;Timing
db $72                          ;Timing
db $0A                          ;Player Hide
db $E1, $E1, $00, $97, $1A, $00 ;Return from cutscene? E1 00 97 1A 00
db $A5, $FE                     ;Clear Event Flag 1FE
db $F3, $1B, $1E, $00           ;Set Map Tiles 1B 1E 00
db $02                          ;Player Move Right
db $B1, $04                     ;Set Player Sprite 04
db $38                          ;Player pose: face down, squatting
db $C3, $0A                     ;Fade in Speed 0A
db $82, $07                     ;Sprite 082 do event 07
db $82, $08                     ;Sprite 082 do event 08
db $82, $0B                     ;Sprite 082 do event 0B
db $82, $44                     ;Sprite 082 do event face down, head lowered, left hand forward
db $CE, $0C, $02                ;Play next 02 bytes 0C times
db $82, $03                     ;Sprite 082 do event Move Down
db $09                          ;Player Show
db $82, $0A                     ;Sprite 082 do event Hide
db $72                          ;Timing
db $14                          ;Player pose: face down, left hand forward
db $73                          ;Timing
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $02                          ;Player Move Right
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $03                          ;Player Move Down
db $B5, $8E                     ;Play Sound Effect Treasure chest
db $F3, $1B, $1E, $00           ;Set Map Tiles 1B 1E 00
db $12                          ;Player pose: face right, standing
db $3F                          ;Player pose: face down, looking left, eyes lowered
db $CA, $15, $03                ;Set Flag 2/3/4/5/15 03
db $CB, $2D, $03                ;Clear Flag 2/3/4/5/2D 03
db $CB, $2E, $03                ;Clear Flag 2/3/4/5/2E 03
db $CA, $18, $03                ;Set Flag 2/3/4/5/18 03
db $A2, $55                     ;Set Event Flag 055
db $A4, $7F                     ;Set Event Flag 17F
db $B7, $02                     ;Add/Remove character 02
db $CD, $7F, $05                ;Run event index 057F
db $CD, $42, $07                ;Run event index 0742
db $B7, $80                     ;Add/Remove character 80
db $C2, $03                     ;Map 03
db $B7, $F0                     ;Add/Remove character F0
db $B7, $F1                     ;Add/Remove character F1
db $B7, $F3                     ;Add/Remove character F3
db $A5, $F8                     ;Turn off bit 01 at address 0x7e0a53 (removes world map 4 meteors waypoint)
db $CC, $18                  ;Custom destination flag 18
db $FF                          ;End Event


padbyte $00
pad $C8A94C





; Original code from Galuf's plunge parsed. (There's many events, so only the last one was parsed here)

; A4 FE                   Set Event Flag 1FE
; 7D                      Timing
; E1 E2 00 B3 09 00       Return from cutscene? E2 00 B3 09 00
; D3 81 32 08             Sprite 81 set map position 32, 08
; D3 82 34 07             Sprite 82 set map position 34, 07
; 81 43                   Sprite 081 do event face down, looking right, pointing finger right
; 82 42                   Sprite 082 do event garbage
; 33                      Player pose: collapsed, facing right
; B1 02                   Set Player Sprite 02
; C3 02                   Fade in Speed 02
; B3 14                   Pause for 140 cycles
; 14                      Player pose: face down, left hand forward
; 73                      Timing
; C8 2A 84                Display Message/Text/Dialogue 2A 84
; 72                      Timing
; 3F                      Player pose: face down, looking left, eyes lowered
; 73                      Timing
; 40                      Player pose: face down, looking right, eyes lowered
; 73                      Timing
; 82 24                   Sprite 082 do event face down, right hand raised in
; 71                      Timing
; 81 24                   Sprite 081 do event face down, right hand raised in
; 71                      Timing
; 81 50                   Sprite 081 do event 50
; 70                      Timing
; 82 4F                   Sprite 082 do event garbage
; 71                      Timing
; 81 4F                   Sprite 081 do event garbage
; 70                      Timing
; 82 50                   Sprite 082 do event 50
; 72                      Timing
; C8 2B 84                Display Message/Text/Dialogue 2B 84
; B4 2D                   Play Background Music The Evil Lord Exdeath
; 71                      Timing
; 14                      Player pose: face down, left hand forward
; 81 24                   Sprite 081 do event face down, right hand raised in
; 82 24                   Sprite 082 do event face down, right hand raised in
; 73                      Timing
; D3 84 33 10             Sprite 84 set map position 33, 10
; 84 01                   Sprite 084 do event Move Up
; 84 01                   Sprite 084 do event Move Up
; 71                      Timing
; C8 2C 04                Display Message/Text/Dialogue 2C 04
; 72                      Timing
; D3 85 34 10             Sprite 85 set map position 34, 10
; 85 01                   Sprite 085 do event Move Up
; 71                      Timing
; C8 2D 04                Display Message/Text/Dialogue 2D 04
; 72                      Timing
; 84 22                   Sprite 084 do event face down, left hand on head
; 74                      Timing
; C8 2E 04                Display Message/Text/Dialogue 2E 04
; 71                      Timing
; 85 03                   Sprite 085 do event Move Down
; 85 03                   Sprite 085 do event Move Down
; 73                      Timing
; 84 01                   Sprite 084 do event Move Up
; 71                      Timing
; C8 2F 04                Display Message/Text/Dialogue 2F 04
; D3 87 34 10             Sprite 87 set map position 34, 10
; 85 12                   Sprite 085 do event face right, standing
; CF 02 04                Play next 04 bytes simultaneously 02 times
; 85 01                   Sprite 085 do event Move Up
; 87 01                   Sprite 087 do event Move Up
; 85 22                   Sprite 085 do event face down, left hand on head
; 85 10                   Sprite 085 do event face up, left hand forward
; 85 02                   Sprite 085 do event Move Right
; 85 01                   Sprite 085 do event Move Up
; 85 26                   Sprite 085 do event face up, right hand raised out
; 84 04                   Sprite 084 do event Move Left
; 84 04                   Sprite 084 do event Move Left
; 71                      Timing
; 84 22                   Sprite 084 do event face down, left hand on head
; 71                      Timing
; 85 12                   Sprite 085 do event face right, standing
; C7 04                   Play next 04 bytes simultaneously
; 87 04                   Sprite 087 do event Move Left
; 85 04                   Sprite 085 do event Move Left
; 85 10                   Sprite 085 do event face up, left hand forward
; 71                      Timing
; 85 03                   Sprite 085 do event Move Down
; 85 03                   Sprite 085 do event Move Down
; 85 0A                   Sprite 085 do event Hide
; 84 02                   Sprite 084 do event Move Right
; 84 20                   Sprite 084 do event face down, left hand raised out
; 81 10                   Sprite 081 do event face up, left hand forward
; 82 10                   Sprite 082 do event face up, left hand forward
; 81 03                   Sprite 081 do event Move Down
; 82 03                   Sprite 082 do event Move Down
; 82 03                   Sprite 082 do event Move Down
; 72                      Timing
; C8 30 04                Display Message/Text/Dialogue 30 04
; E3 3B 01 8F 14 00       Inter-map cutscene? 3B 01 8F 14 00
; D3 86 90 14             Sprite 86 set map position 90, 14
; D3 8A 8E 12             Sprite 8A set map position 8E, 12
; D3 8C 90 12             Sprite 8C set map position 90, 12
; B1 06                   Set Player Sprite 06
; C3 10                   Fade in Speed 10
; 73                      Timing
; 03                      Player Move Down
; 03                      Player Move Down
; 73                      Timing
; 20                      Player pose: face down, left hand raised out
; 71                      Timing
; C8 31 84                Display Message/Text/Dialogue 31 84
; CE 03 02                Play next 02 bytes 03 times
; 86 03                   Sprite 086 do event Move Down
; 72                      Timing
; E3 E0 00 87 10 00       Inter-map cutscene? E0 00 87 10 00
; 0A                      Player Hide
; C3 0A                   Fade in Speed 0A
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 72                      Timing
; C0 02                   Circle Mask 02
; B2 03                   Pause for 03 cycles
; C0 04                   Circle Mask 04
; B2 03                   Pause for 03 cycles
; C0 08                   Circle Mask 08
; B2 03                   Pause for 03 cycles
; C0 10                   Circle Mask 10
; B2 03                   Pause for 03 cycles
; C0 20                   Circle Mask 20
; B2 03                   Pause for 03 cycles
; C0 3F                   Circle Mask 3F
; 72                      Timing
; CE 1E 10                Play next 10 bytes 1E times
; 80 0A                   Sprite 080 do event Hide
; 81 0A                   Sprite 081 do event Hide
; 82 0A                   Sprite 082 do event Hide
; B2 03                   Pause for 03 cycles
; 80 09                   Sprite 080 do event Show
; 81 09                   Sprite 081 do event Show
; 82 09                   Sprite 082 do event Show
; B2 03                   Pause for 03 cycles
; 74                      Timing
; CE 1E 08                Play next 08 bytes 1E times
; 83 0A                   Sprite 083 do event Hide
; B2 03                   Pause for 03 cycles
; 83 09                   Sprite 083 do event Show
; B2 03                   Pause for 03 cycles
; 74                      Timing
; C8 32 84                Display Message/Text/Dialogue 32 84
; 75                      Timing
; E3 3B 01 8F 15 00       Inter-map cutscene? 3B 01 8F 15 00
; 09                      Player Show
; 76                      Timing
; B1 06                   Set Player Sprite 06
; D3 86 90 16             Sprite 86 set map position 90, 16
; D3 8A 8E 13             Sprite 8A set map position 8E, 13
; D3 8C 90 13             Sprite 8C set map position 90, 13
; C3 10                   Fade in Speed 10
; 73                      Timing
; C8 33 04                Display Message/Text/Dialogue 33 04
; 71                      Timing
; 86 3E                   Sprite 086 do event face up, both arms raised in
; 70                      Timing
; 86 40                   Sprite 086 do event face down, looking right, eyes lowered
; 70                      Timing
; 86 01                   Sprite 086 do event Move Up
; 86 26                   Sprite 086 do event face up, right hand raised out
; 70                      Timing
; 12                      Player pose: face right, standing
; 72                      Timing
; CF 03 07                Play next 07 bytes simultaneously 03 times
; 01                      Player Move Up
; 86 01                   Sprite 086 do event Move Up
; 8A 01                   Sprite 08A do event Move Up
; 8C 01                   Sprite 08C do event Move Up
; C4 10                   Fade out Speed 10
; C7 07                   Play next 07 bytes simultaneously
; 01                      Player Move Up
; 86 01                   Sprite 086 do event Move Up
; 8A 01                   Sprite 08A do event Move Up
; 8C 01                   Sprite 08C do event Move Up
; B1 02                   Set Player Sprite 02
; E1 E2 00 B3 09 00       Return from cutscene? E2 00 B3 09 00
; B1 02                   Set Player Sprite 02
; 14                      Player pose: face down, left hand forward
; D3 84 33 0D             Sprite 84 set map position 33, 0D
; C3 10                   Fade in Speed 10
; 73                      Timing
; 84 03                   Sprite 084 do event Move Down
; C8 34 04                Display Message/Text/Dialogue 34 04
; D8 03 F7 83             Unknown
; 09                      Player Show
; 83 10                   Sprite 083 do event face up, left hand forward
; 83 01                   Sprite 083 do event Move Up
; 83 01                   Sprite 083 do event Move Up
; 83 22                   Sprite 083 do event face down, left hand on head
; 84 26                   Sprite 084 do event face up, right hand raised out
; 70                      Timing
; C8 35 04                Display Message/Text/Dialogue 35 04
; 70                      Timing
; 84 10                   Sprite 084 do event face up, left hand forward
; C7 03                   Play next 03 bytes simultaneously
; 03                      Player Move Down
; 84 03                   Sprite 084 do event Move Down
; 83 24                   Sprite 083 do event face down, right hand raised in
; 03                      Player Move Down
; 03                      Player Move Down
; C8 36 04                Display Message/Text/Dialogue 36 04
; 71                      Timing
; 84 58                   Sprite 084 do event 58
; D3 88 33 0E             Sprite 88 set map position 33, 0E
; 73                      Timing
; CE 02 10                Play next 10 bytes 02 times
; 84 22                   Sprite 084 do event face down, left hand on head
; B2 03                   Pause for 03 cycles
; 84 24                   Sprite 084 do event face down, right hand raised in
; B2 03                   Pause for 03 cycles
; 84 26                   Sprite 084 do event face up, right hand raised out
; B2 03                   Pause for 03 cycles
; 84 20                   Sprite 084 do event face down, left hand raised out
; B2 03                   Pause for 03 cycles
; CE 08 10                Play next 10 bytes 08 times
; 84 22                   Sprite 084 do event face down, left hand on head
; B2 01                   Pause for 01 cycles
; 84 24                   Sprite 084 do event face down, right hand raised in
; B2 01                   Pause for 01 cycles
; 84 26                   Sprite 084 do event face up, right hand raised out
; B2 01                   Pause for 01 cycles
; 84 20                   Sprite 084 do event face down, left hand raised out
; B2 01                   Pause for 01 cycles
; C5                      <unknown>
; 20                      Player pose: face down, left hand raised out
; 88 13                   Sprite 088 do event face right, down hand backward
; 88 01                   Sprite 088 do event Move Up
; 88 01                   Sprite 088 do event Move Up
; B5 0E                   Play Sound Effect Bolt
; C5                      <unknown>
; E0 70                   Unknown
; C5                      <unknown>
; E0 70                   Unknown
; 88 0A                   Sprite 088 do event Hide
; 0C                      <Unknown>
; 77                      Timing
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 01                      Player Move Up
; 76                      Timing
; BE 45                   Rumble effect of 45 magnitude
; 05                      Player Bounce in Place
; 35                      Player pose: face down, splayed, looking right
; 03                      Player Move Down
; BE 40                   Rumble effect of 40 magnitude
; B2 04                   Pause for 04 cycles
; 32                      Player pose: collapsed, facing left
; 0B                      <Unknown>
; 70                      Timing
; 81 10                   Sprite 081 do event face up, left hand forward
; 82 10                   Sprite 082 do event face up, left hand forward
; CF 02 04                Play next 04 bytes simultaneously 02 times
; 82 01                   Sprite 082 do event Move Up
; 81 01                   Sprite 081 do event Move Up
; 82 26                   Sprite 082 do event face up, right hand raised out
; 81 22                   Sprite 081 do event face down, left hand on head
; 71                      Timing
; C8 37 04                Display Message/Text/Dialogue 37 04
; 72                      Timing
; E3 3B 01 8F 10 00       Inter-map cutscene? 3B 01 8F 10 00
; 0A                      Player Hide
; D8 88 00 D8             Unknown
; 86 10                   Sprite 086 do event face up, left hand forward
; C3 10                   Fade in Speed 10
; 74                      Timing
; 86 26                   Sprite 086 do event face up, right hand raised out
; D0 81 60                (Music) 81 60
; 72                      Timing
; 88 22                   Sprite 088 do event face down, left hand on head
; 71                      Timing
; C8 38 84                Display Message/Text/Dialogue 38 84
; 88 41                   Sprite 088 do event face up, sprite becomes symmetrical (maybe shrugging?)
; 70                      Timing
; 88 22                   Sprite 088 do event face down, left hand on head
; 71                      Timing
; 86 20                   Sprite 086 do event face down, left hand raised out
; 72                      Timing
; 86 36                   Sprite 086 do event face down, eyes closed mouth open
; 71                      Timing
; C8 39 84                Display Message/Text/Dialogue 39 84
; B4 16                   Play Background Music The Four Warriors of Dawn
; 72                      Timing
; C7 04                   Play next 04 bytes simultaneously
; 8A 01                   Sprite 08A do event Move Up
; 8C 01                   Sprite 08C do event Move Up
; C7 04                   Play next 04 bytes simultaneously
; 8A 02                   Sprite 08A do event Move Right
; 8C 01                   Sprite 08C do event Move Up
; C7 04                   Play next 04 bytes simultaneously
; 8A 01                   Sprite 08A do event Move Up
; 8C 04                   Sprite 08C do event Move Left
; 8C 01                   Sprite 08C do event Move Up
; 8A 26                   Sprite 08A do event face up, right hand raised out
; 8C 22                   Sprite 08C do event face down, left hand on head
; 80 0B                   Sprite 080 do event 0B
; 80 21                   Sprite 080 do event face down, left hand raised in
; 70                      Timing
; 80 42                   Sprite 080 do event garbage
; 72                      Timing
; 80 21                   Sprite 080 do event face down, left hand raised in
; B2 08                   Pause for 08 cycles
; 80 20                   Sprite 080 do event face down, left hand raised out
; CD 8C 03                Run event index 038C
; CD 1A 00                Run event index 001A
; 86 30                   Sprite 086 do event face left, head lowered
; 86 13                   Sprite 086 do event face right, down hand backward
; 80 13                   Sprite 080 do event face right, down hand backward
; 81 13                   Sprite 081 do event face right, down hand backward
; CE 08 14                Play next 14 bytes 08 times
; C7 06                   Play next 06 bytes simultaneously
; 86 03                   Sprite 086 do event Move Down
; 80 03                   Sprite 080 do event Move Down
; 81 03                   Sprite 081 do event Move Down
; 88 30                   Sprite 088 do event face left, head lowered
; C7 06                   Play next 06 bytes simultaneously
; 86 03                   Sprite 086 do event Move Down
; 80 03                   Sprite 080 do event Move Down
; 81 03                   Sprite 081 do event Move Down
; 88 31                   Sprite 088 do event face right, head lowered
; 09                      Player Show
; E0 01                   Unknown
; 20                      Player pose: face down, left hand raised out
; 80 9B                   Sprite 080 do event 9B
; 6C                      Player or Sprite Pose
; CE 15 01                Play next 01 bytes 15 times
; 02                      Player Move Right
; CE 08 01                Play next 01 bytes 08 times
; 03                      Player Move Down
; CE 0B 01                Play next 01 bytes 0B times
; 02                      Player Move Right
; CE 09 01                Play next 01 bytes 09 times
; 01                      Player Move Up
; C4 0A                   Fade out Speed 0A
; 7F                      Timing
; 71                      Timing
; 0A                      Player Hide
; E1 E8 00 8B 08 00       Return from cutscene? E8 00 8B 08 00
; 82 07                   Sprite 082 do event 07
; 82 08                   Sprite 082 do event 08
; C3 08                   Fade in Speed 08
; 70                      Timing
; 80 0E                   Sprite 080 do event 0E
; 80 0B                   Sprite 080 do event 0B
; 82 0B                   Sprite 082 do event 0B
; CF 05 04                Play next 04 bytes simultaneously 05 times
; 80 03                   Sprite 080 do event Move Down
; 82 03                   Sprite 082 do event Move Down
; 70                      Timing
; 80 33                   Sprite 080 do event collapsed, facing right
; B5 5D                   Play Sound Effect Dragon cry
; 73                      Timing
; 80 23                   Sprite 080 do event face down, right hand raised out
; 82 30                   Sprite 082 do event face left, head lowered
; 82 06                   Sprite 082 do event Bounce
; 82 02                   Sprite 082 do event Move Right
; 82 13                   Sprite 082 do event face right, down hand backward
; CE 05 02                Play next 02 bytes 05 times
; 82 03                   Sprite 082 do event Move Down
; 82 10                   Sprite 082 do event face up, left hand forward
; 82 48                   Sprite 082 do event garbage
; 73                      Timing
; 82 0B                   Sprite 082 do event 0B
; 82 02                   Sprite 082 do event Move Right
; 82 02                   Sprite 082 do event Move Right
; 71                      Timing
; 82 4F                   Sprite 082 do event garbage
; C8 3A 04                Display Message/Text/Dialogue 3A 04
; 72                      Timing
; 80 33                   Sprite 080 do event collapsed, facing right
; B5 5D                   Play Sound Effect Dragon cry
; 73                      Timing
; 80 23                   Sprite 080 do event face down, right hand raised out
; 82 02                   Sprite 082 do event Move Right
; 82 0A                   Sprite 082 do event Hide
; C4 02                   Fade out Speed 02
; CE 08 02                Play next 02 bytes 08 times
; 80 01                   Sprite 080 do event Move Up
; E1 E1 00 97 1A 00       Return from cutscene? E1 00 97 1A 00
; A5 FE                   Clear Event Flag 1FE
; F3 1B 1E 00             Set Map Tiles 1B 1E 00
; 02                      Player Move Right
; B1 04                   Set Player Sprite 04
; 38                      Player pose: face down, squatting
; C3 0A                   Fade in Speed 0A
; 82 07                   Sprite 082 do event 07
; 82 08                   Sprite 082 do event 08
; 82 0B                   Sprite 082 do event 0B
; 82 44                   Sprite 082 do event face down, head lowered, left hand forward
; CE 0C 02                Play next 02 bytes 0C times
; 82 03                   Sprite 082 do event Move Down
; 09                      Player Show
; 82 0A                   Sprite 082 do event Hide
; 72                      Timing
; 14                      Player pose: face down, left hand forward
; 73                      Timing
; C8 3B 84                Display Message/Text/Dialogue 3B 84
; 02                      Player Move Right
; 02                      Player Move Right
; 02                      Player Move Right
; 02                      Player Move Right
; 03                      Player Move Down
; 03                      Player Move Down
; 03                      Player Move Down
; 73                      Timing
; B5 8E                   Play Sound Effect Treasure chest
; F3 1B 1E 00             Set Map Tiles 1B 1E 00
; 12                      Player pose: face right, standing
; 71                      Timing
; C8 3C 84                Display Message/Text/Dialogue 3C 84
; 73                      Timing
; 3F                      Player pose: face down, looking left, eyes lowered
; 73                      Timing
; C8 3D 84                Display Message/Text/Dialogue 3D 84
; CA 15 03                Set Flag 2/3/4/5/15 03
; CB 2D 03                Clear Flag 2/3/4/5/2D 03
; CB 2E 03                Clear Flag 2/3/4/5/2E 03
; CA 18 03                Set Flag 2/3/4/5/18 03
; A2 55                   Set Event Flag 055
; A4 7F                   Set Event Flag 17F
; B7 02                   Add/Remove character 02
; CD 7F 05                Run event index 057F
; CD 42 07                Run event index 0742
; B7 80                   Add/Remove character 80
; C2 03                   Map 03
; FF                      End Event











; $C8A6D3 → $C8A94C
; Going from W1 to W2
; NOTE: 5 addresses from $C8A94C are loaded (but apparently not used?) after ending this cutscene. Overrode with zeroes for now...



; >>>>> Bring the player to the solitary island:

; 9126008e2400912474e30100ce6e00a5
; fe7ddbc30400a256a5f8cb0102cafd01
; cb3201cb3901cb3a01cbf900cbfb00cb
; fa00cb3701cb3501cb3801ca0601ca07
; 01ca0801cafa01d11eb800ff00000000


; >>>>> Bring the player straight to Exdeath's: 


; <PRESERVE>
; e1e100971a00a5fef31b1e0002b10438
; c30a82078208820b8244ce0c02820309
; 820a721473c83b840202020203030373
; b58ef31b1e001271c83c84733f73c83d
; 84ca1503cb2d03cb2e03ca1803a255a4
; 7fb702cd7f05cd4207b780c203ff

; <EDITS>
; c4037272720ae1e100971a00a5fef31b1e0002b10438c30a82078208820b8244ce0c02820309820a7214730000000202020203030300b58ef31b1e001200000000003f00000000ca1503cb2d03cb2e03ca1803a255a47fb702cd7f05cd4207b780c203b7f0b7f1b7f3ff


; $C8A978 →
; Tent cutscene after entering W2
; cd d0 00 ff 


; $C8B26A 
; After abductor, cutscene to Exdeath's

; $C8B2D5 
; Cutscene in Exdeath jail

; $C8B56E
; Castle top after Galuf leaves Hiryuu

; $C8B5E0
; Galuf plunges into Exdeath's


; e1e100971a → will put player in Exdeath's where galuf drops in