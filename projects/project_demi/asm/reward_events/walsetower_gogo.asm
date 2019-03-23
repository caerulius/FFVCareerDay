hirom

org $C91BA1
db $80, $0A                     ;Sprite 080 do event: Hide
if !vanillarewards == 1
    db $A0, $02                     ;(Message) 02
    db $70                          ;Very short pause
    db $B4, $29                     ;Play Background Music Fanfare 1 (short)
    db $A0, $01                     ;(Message) 01
    db $E4, $B4                     ;Unknown
    db $1E                          ;Player pose: face right, standing
    db $C6, $13                     ;Add job 13
else
    db $DE, $40				; set up reward
    db $DF					; call text handler
endif
db $70                          ;Very short pause
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $E4, $B4                     ;Unknown
db $1E                          ;Player pose: face right, standing
db $CB, $EB, $00                ;Turn off bit 08 at address  0x7e0a71
db $CB, $87, $00                ;Turn off bit 80 at address  0x7e0a64
db $FF                          ;End Event

pad $C91BB6