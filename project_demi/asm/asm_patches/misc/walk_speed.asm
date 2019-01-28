hirom
!base = $C00000
!walkingspeedconfig = $0970 
!worldmapflag = $0B53 ; if this is 1, not in world map
!input = $0b03
!airshipspeed = #$0020

; change text in config menu
org $E731DB
db $63, $7A, $8C, $81, $96, $72, $89, $7D, $A3 ; "Dash Spd."

; change config to only allow for 4 options
org $C0F078
db $02 ; change 'too far' metric

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
org $F00180
SpeedHookGeneric:


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
BRA SpeedSettingDefault


RunSpeedWorldMap:
; Use speed config for dash
lda !walkingspeedconfig
and #$70

; setting 2
CMP #$10
BEQ SpeedSettingDefault
; setting 1
CMP #$00
BEQ SpeedSettingFast1



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

; setting 2
CMP #$10
BEQ SpeedSettingDefault
; setting 1
CMP #$00
BEQ SpeedSettingFast1

SpeedSettingDefault:
lda #$04
RTL
SpeedSettingFast1:
lda #$08
RTL
SpeedSettingFast2:
lda #$10
RTL
SpeedSettingFast3:
lda #$20
RTL



; Town/dungeon hook
org $c0123e
JML TownDungeonHandler

org $F001E0
TownDungeonHandler:
JSL SpeedHookGeneric
sta $c0
JML $C01244



; double original speed values for all non-boat vehicles
org $C008B3
db $08, $08, $08, $08
db $08, $08, $20
; more speed doubling
org $C0573E
db $04
org $C05740
db $08, $00
db $08, $00
db $08, $00
db $08, $00
db $08, $00
db $20, $00
org $c00c0c ; airship/sub vehicle in w3
db $20


; disable post event speed doubling...?
org $C01A2D
nop

; fix leaving airship 
org $C05794
ldx !airshipspeed