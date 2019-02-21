hirom
!base = $C00000
!walkingspeedconfig = $0970 
!airshipenabled = $0AF2
!hiryuuenabled = $0AE6
!chocoboenabled = $0ADC
!blackchocoboenabled = $0B00
!submarineenabled = $0AE9
!worldmapspeed = $C0573E
!worldmapflag = $0B53 ; if this is 1, not in world map
!vehicleswitcher = $169C
!vehicleswitcher2 = $169B
!blackchocospeed = $C008B5
!boatspeed = $C008B8
!input = $0b03

; change text in config menu
org $E731DB
db $76, $7A, $85, $84, $96, $72, $89, $7D, $A3 ; "Walk Spd."

; change config to only allow for 4 options
org $C0F078
db $04 ; change 'too far' metric to be $05, meaning it will revert back to $04, which is 2 from the farthest right 

; make conditional true for any player to always execute dash when b is held
org $c01261
lda #$FF

; make hold b to dash here not effective
org $c01278
nop
nop




; func for speed
; uses 'a' only, not x/y
; returns 'a' value with speed based on config
; all of this could be optimized with a lookup system using x index but who gaf 
; world map and towns/dungeons need to be seperate - the fastest speed on world map will cause major graphical issues in towns/dungeons
org $F35000
SpeedHookGeneric:

; Sometimes, when leaving the map or standard menu, even in a vehicle this generic handler gets called 
; Fix by branching on vehicle 
; check vehicle values at $00169C
; Walking: $FC
; Choco : $00
; BlackChoco : $04
; Airship/steamship : $14
; Submarine : $0C

LDA !vehicleswitcher
CMP #$FC ; Walking
BEQ HandleWalkingSpeed
CMP #$00 ; Choco
BEQ SpeedSettingWMFast1
CMP #$04 ; BChoco
BEQ SpeedSettingWMFast1
CMP #$14 ; Airship
BEQ HandleWeirdAirship
CMP #$0C ; Submarine
BEQ SpeedSettingWMFast1
BRA HandleWalkingSpeed ; if nothing else met, continue

HandleWeirdAirship: 

lda !vehicleswitcher2
BEQ SpeedSettingWMFast1; if $00 (equal), then on boat, not airship
BNE SpeedSettingWMFast3 ; otherwise airship speed


HandleWalkingSpeed:
; next check world map vs. dungeons 
lda !worldmapflag
CMP #$00
BEQ HandleWorldMapSpeed ; world map
BNE HandleRegularSpeed ; anywhere else

; world map
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
BEQ SpeedSettingWMFast2

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
; handle submarine underwater
lda $169B
CMP #$20
BEQ SubmarineSpeed
; handle airship
lda $7E0B3D
CMP #$40
BEQ AirshipSpeed
JSL SpeedHookGeneric
JMP FinishedAirshipSpeed
AirshipSpeed:
lda #$20
JMP FinishedAirshipSpeed
SubmarineSpeed:
lda #$08
FinishedAirshipSpeed:
rep #$20

sta $c0
JML $C056F1

; Chocobo/boat mount hook
org $C007BB
JML ChocoboHandlerMount

org $F35200
ChocoboHandlerMount:
;JSL SpeedHookGeneric
; This isn't actually just Chocobo, also airships (sometimes...)
lda $169C
CMP #$14
BEQ ChocoboAirshipMount
lda #$08
sta $c0
JML $C007C1
ChocoboAirshipMount:
; now check if actually on boat or airship
; This does need to get fixed at some point - the vehicleswitcher2 is set to $08 whenever you use the boat function at all, so if you never use it, airship speed will be $10 instead of $20 until you menu/map
LDA !vehicleswitcher2
CMP #$08
BEQ FinishAirshipMount
lda #$10
sta $c0
JML $C007C1
FinishAirshipMount:
lda #$20
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

; Boat to airship hook
org $C00C08
JML BoatHandlerToAirship
nop

org $F35480
BoatHandlerToAirship:
sta $0adb
;JSL SpeedHookGeneric
lda #$20
sta $c0
JML $C00C0F

; ; Boat from airship hook
org $C00BB7
lda #$08