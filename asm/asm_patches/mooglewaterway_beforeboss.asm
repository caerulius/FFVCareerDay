hirom
!base = $C00000

org $C90E7C

; Moogle dialogue before boss
; $C90E7C → $C90E94
; Sets flag, immediately ends. Player won't notice


; db $DE, $00		; set up reward
; db $DF			; call text handler 
; db $A2, $5E                     ;Set Event Flag 05E
; db $FF                                 ;End Event

; padbyte $00
; pad $C90E94








; preserved
db $A2, $5E                     ;Set Event Flag 05E
db $FF                                 ;End Event

padbyte $00
pad $C90E94