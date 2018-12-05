hirom
!base = $C00000
!walkingspeedconfig = $7E0970 
!worldmapspeed = $C0573E
!worldmapflag = $7E0B53 ; if this is 1, not in world map
!blackchocospeed = $C008B5
!boatspeed = $C008B8
!input = $7E0b03

; change text in config menu
org $E731DB
db $76, $7A, $85, $84, $96, $72, $89, $7D, $A3 ; "Walk Spd."
; org $E731F9
; db $96, $96, $96 ; Remove option "5" and "6" from speed

; change config to only allow for 4 options
; this was discontinued - unfortunately with Battle Speed and Walking Speed, they share the same ROM text address, so I cannot whitespace out only the Walking Speed without affecting Battle Speed numbers. 
; If you really wanted this, you could do something janky with VRAM where the values on screen (which can be live edited) are changed to whitespace for 5/6 upon loading 
org $C0F078
db $04 ; change 'too far' metric to be $05, meaning it will revert back to $04, which is 2 from the farthest right 



; make conditional true for any player to always execute dash when b is held
org $c01261
lda #$FF

; make holding B half your speed instead of double
; refer to  [SPEED_NOTE_1] for an explanation, we hook in every frame to check speed values (to enable "hold B" functionality on world map)

; make hold b to dash here not effective
org $c01278
nop
nop
; lsr $c0








; func for speed
; uses 'a' only, not x/y
; returns 'a' value with speed based on config
; all of this could be optimized with a lookup system using x index but who gaf 
; world map and towns/dungeons need to be seperate - the fastest speed on world map will cause major graphical issues in towns/dungeons
org $F35000
SpeedHookGeneric:


; first check world map vs. dungeons 
lda !worldmapflag
CMP #$00
BEQ HandleWorldMapSpeed ; world map
BNE HandleRegularSpeed ; anywhere else

; world map
; base speed:       SpeedSetting3
; run speed max:    SpeedSetting5
HandleWorldMapSpeed:

lda !input 
and #$80    ; check for b input, if so, run 
BMI RunSpeedWorldMap

; else set to standard
BRA SpeedSettingWMDefault


RunSpeedWorldMap:
; Use speed config for dash
lda !walkingspeedconfig
and #$70

; ; setting 6
; CMP #$50
; BEQ SpeedSettingWMDefault
; ; setting 5
; CMP #$40
; BEQ SpeedSettingWMDefault
;setting 4
CMP #$30
BEQ SpeedSettingWMDefault
; setting 3
CMP #$20
BEQ SpeedSettingWMFast1
; setting 2
CMP #$10
BEQ SpeedSettingWMFast2
; setting 1
CMP #$00
BEQ SpeedSettingWMFast3

SpeedSettingWMDefault:
lda #$04
RTL
SpeedSettingWMFast1:
lda #$08
RTL
SpeedSettingWMFast2:
lda #$10
RTL
SpeedSettingWMFast3:
lda #$20
RTL


; towns/dungeons
; base speed:          SpeedSetting2
; run speed max:    SpeedSetting4

HandleRegularSpeed:

lda !input 
and #$80    ; check for b input, if so, run 
BMI RunSpeed

; else set to standard
lda #$06
BRA SpeedSettingDefault


RunSpeed:
; Use speed config for dash
lda !walkingspeedconfig
and #$70

; ; setting 6
; CMP #$50
; BEQ SpeedSettingDefault
; ; setting 5
; CMP #$40
; BEQ SpeedSettingDefault
;setting 4
CMP #$30
BEQ SpeedSettingDefault
; setting 3
CMP #$20
BEQ SpeedSettingFast1
; setting 2
CMP #$10
BEQ SpeedSettingFast1
; setting 1
CMP #$00
BEQ SpeedSettingFast2

SpeedSettingDefault:
lda #$04
RTL
SpeedSettingFast1:
lda #$08
RTL
SpeedSettingFast2:
lda #$10
RTL




















; Town/dungeon hook
org $c0123e
JML TownDungeonHandler

org $F35500
TownDungeonHandler:
JSL SpeedHookGeneric
sta $c0
JML $C01244



; World Map hook
org $c056eb
JML WorldMapHandler

org $F35100
WorldMapHandler:
sep #$20
JSL SpeedHookGeneric
rep #$20
sta $c0
JML $C056F1

; Chocobo/boat mount hook
org $C007BB
JML ChocoboHandlerMount

org $F35200
ChocoboHandlerMount:
JSL SpeedHookGeneric
sta $c0
JML $C007C1


; Chocobo dismount hook
org $C0087B
JML ChocoboHandlerDismount
nop

org $F35300
ChocoboHandlerDismount:
sta $0add, y
JSL SpeedHookGeneric
sta $c0
JML $C00882

; Boat dismount hook
org $C0110B
JML BoatHandlerDismount
nop

org $F35400
BoatHandlerDismount:
sta $0add, y
JSL SpeedHookGeneric
sta $c0
JML $C01112



; walking speed in config $7E0BC0
; 00, 10, 20, 30, 40, 50 

; functions that change walking speed
; in town, every step
;c01242
;c01278 <<<<< if you wanna use the same lookup table for all, then you need to disable the asl's here bc it doubles speed in towns/dungeons

; enter world map
; c056ef

;board bchoco/boat/choco
;c007bf

;dismount bchoco
;c00880

;dismount boat
;c01110

; mount airship
; c00c0d

; dismount airship
; c00bb9




; old code for towns/dungeons before generic handler was made

; org $c0123e
; JML SpeedHookTownsDungeons

; org $F34000
; SpeedHookTownsDungeons:

; ; ; first check for B input. If so, immediately set speed to Speed3
; ; lda !input
; ; and #$80
; ; BNE Speed3

; ; otherwise use config
; lda !walkingspeedconfig
; and #$70
; CMP #$50
; BEQ Speed0
; CMP #$40
; BEQ Speed0
; CMP #$30
; BEQ Speed2
; CMP #$20
; BEQ Speed3
; CMP #$10
; BEQ Speed4
; CMP #$00
; BEQ Speed5

; ; default condition if others aren't met



; Speed0:
; lda #$01 ; duplicate for now, setting to zero literally doesnt move char
; JML SpeedHookTownsDungeonsFinish
; Speed2:
; lda #$01
; JML SpeedHookTownsDungeonsFinish
; Speed3:
; lda #$02
; JML SpeedHookTownsDungeonsFinish
; Speed4:
; lda #$04
; JML SpeedHookTownsDungeonsFinish
; Speed5:
; lda #$08
; JML SpeedHookTownsDungeonsFinish


; ; lda $c0171c, x
; SpeedHookTownsDungeonsFinish:
; sta $c0
; JML $C01244