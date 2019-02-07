; this is a continuation of the intro cutscene code. This will mass update flags and set other coordinates. 
; this is EVENT code that is set in the middle of the intro cutscene. 

; all 3 world 1 chars

db $B7, $02							;Add/Remove character 02
db $B7, $09							;Add/Remove character 09
db $B7, $03							;Add/Remove character 09

; set airship
; spawns right under player, tweak $9C,$96 to change X/Y coord. $D8 controls type of vehicle

db $D2, $00, $9C, $96, $D8


; PIRATES CAVE
; Always on

; set flags for tycoon meteor segment done
db $A4, $32                     ;Set Event Flag 132
db $A5, $FF                     ;Clear Event Flag 1FF
db $CA, $32, $00                ;Set Flag 2/3/4/5/32 00
db $A4, $C7                     ;Set Event Flag 1C7
db $A2, $10			;Set Event Flag 010
db $CB, $32, $00		;Clear Flag 2/3/4/5/32 00
db $A5, $C7			;Clear Event Flag 1C7
db $A5, $FE			;Clear Event Flag 1FE


; set flags for pirates cave spawning on world map, and pass being completed
db $A4, $C7							;Set Event Flag 1C7
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
db $A4, $C6            ; set address 000A4C bit ON 40
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
db $A2, $1C            ; set address 000A17 bit ON 10
db $A2, $1D            ; set address 000A17 bit ON 20



; WALSE TOWER

; always on (?)

; immediate set cutscene triggered 
db $A4, $E2            ; set address 000A50 bit ON 04
db $CA, $9F, $00            ; set address 000A67 bit ON 80
db $CB, $9E, $00            ; set address 000A67 bit OFF 40
db $CB, $9D, $00            ; set address 000A67 bit OFF 20
db $CA, $A0, $00            ; set address 000A68 bit ON 01



; KARNAK START:

; db $A2, $A4                 ;Set Event Flag 0A4
; db $A2, $2A                 ;Set Event Flag 02A


; ANCIENT LIBRARY
; untouched for now. everything spawns 

; RUINED CITY




; LONKA RUINS

; Bitwise 04 on address A53 (the event problematic address) controls world map access to ronka area 
; Doesnt break if you leave it on in world 3
; If you warp between worlds, theoretically you could set it so its only active in world 1. 
