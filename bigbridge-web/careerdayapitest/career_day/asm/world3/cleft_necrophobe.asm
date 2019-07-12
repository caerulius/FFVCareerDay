hirom


; Necrophobe text box skip
org $C9C5AC

db $C5, $E0			;<unknown>
db $80, $0A			;Sprite 080 do event: Hide
db $C5, $E0			;<unknown>
db $B5, $93			;Play Sound Effect Evil appears
db $CE, $0A, $08	;Play next 08 bytes 0A times
db $81, $0A			;Sprite 081 do event: Hide
db $B2, $04			;Pause for 04 cycles
db $81, $09			;Sprite 081 do event: Show
db $B2, $04			;Pause for 04 cycles
db $81, $0A			;Sprite 081 do event: Hide
db $BD, $4B, $FF	;Start Event Battle 4B
db $CD, $A6, $06	;Run event index 06A6
db $CD, $A5, $06	;Run event index 06A5
db $CB, $94, $03	;Turn off bit 10 at address  0x7e0ac6
db $A4, $78			;Turn on bit 01 at address 0x7e0a43
db $CA, $DB, $02            ; set address 000AAF bit ON 08. NEW FOR WARP AT AREA
db $C8, $04, $02              ;Conditional yes/no dialogue at 04B7
db $FF				;End Event


org $E192EA
db $76, $7A, $8B, $89, $72, $81, $7A, $8B, $7D, $96, $7A, $8B, $7E, $7A, $96, $90, $7A, $8B, $89, $96, $8E, $87, $85, $88, $7C, $84, $7E, $7D, $A1, $00