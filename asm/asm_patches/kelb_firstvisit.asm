hirom
!base = $C00000

; First visit to kelb
; $C8C814 → $C8C84C

; Big cutscene with Kelgar 
; $C8C868 → $C8C8D0

; This sets the flag instantly upon visiting Kelb for the Kelgar cutscene. 

org $C8C814

db $DB                          ;Restore Player status
db $A2, $62                     ;Set Event Flag 062 (this cutscene)
db $A2, $64                     ;Set Event Flag 062 (Kelgar cutscene)
db $FF                          ;End Event

padbyte $00
pad $C8C84C