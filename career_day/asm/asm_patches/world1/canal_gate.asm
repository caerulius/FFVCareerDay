hirom
!base = $C00000

; disables canal gate cutscene, skips straight to opening.
; the left and right gate tiles have their own events, so this
; has to be duplicated

org $C8645F

db $A4, $FE			;Set Event Flag 1FE
db $BE, $05			;Rumble effect of 05 magnitude
db $73				;Long pause
db $B5, $43			;Play Sound Effect Gate opens
db $F3, $0B, $11, $11		;Set Map Tiles 0B 11 11
db $ED				;Noop
db $C4, $FD			;Fade out Speed FD
db $FA				;Noop
db $73				;Long pause
db $BE, $00			;Rumble effect of 00 magnitude
db $A2, $1E			;Set Event Flag 01E
db $A5, $FE			;Clear Event Flag 1FE
db $FF				;End Event


padbyte $00
pad $C86484

org $C86439

db $A4, $FE			;Set Event Flag 1FE
db $BE, $05			;Rumble effect of 05 magnitude
db $73				;Long pause
db $B5, $43			;Play Sound Effect Gate opens
db $F3, $0B, $11, $11		;Set Map Tiles 0B 11 11
db $ED				;Noop
db $C4, $FD			;Fade out Speed FD
db $FA				;Noop
db $73				;Long pause
db $BE, $00			;Rumble effect of 00 magnitude
db $A2, $1E			;Set Event Flag 01E
db $A5, $FE			;Clear Event Flag 1FE
db $CC, $05                  ;Custom destination flag 05
db $FF				;End Event


padbyte $00
pad $C8645E