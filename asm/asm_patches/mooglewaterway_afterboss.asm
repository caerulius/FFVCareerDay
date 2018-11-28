hirom
!base = $C00000

org $C90E96


; $C90E96 → $C91021
; Moogle boss & post dialogue

db $82, $10                      ;Sprite 082 do event face up, left hand forward
db $81, $10                      ;Sprite 081 do event face up, left hand forward
db $82, $04                      ;Sprite 082 do event Move Left
db $82, $24                      ;Sprite 082 do event face down, right hand raised in
db $71                                 ;Timing
db $82, $05                      ;Sprite 082 do event Bounce
db $82, $00                      ;Sprite 082 do event Hold
db $70                                 ;Timing
db $82, $0A                      ;Sprite 082 do event Hide
db $BD, $1C, $06                        ;Start Event Battle 1C
db $B4, $07                     ;Play Background Music Critter Tripper Fritter!
db $01                                 ;Player Move Up
db $16                          ;Player pose: face left, standing
db $2B                          ;Player pose: face left, left hand out
db $71                                 ;Timing
db $C4, $02                     ;Fade out Speed 02
db $71                                 ;Timing
db $71                                 ;Timing
db $D0, $80, $40                        ;(Music) 80 40
db $81, $0A                      ;Sprite 081 do event Hide
db $C3, $02                     ;Fade in Speed 02
db $14                          ;Player pose: face down, left hand forward
db $CB, $3E, $02                        ;Clear Flag 2/3/4/5/3E 02
db $CB, $3F, $02                        ;Clear Flag 2/3/4/5/3F 02
db $A4, $3C                     ;Set Event Flag 13C
db $FF                                 ;End Event


; 8210811082048224718205820070820a
; bd1c06b40701162b71c4027171d08040
; 810ac30214cb3e02cb3f02a43cff

padbyte $00
pad $C91021