hirom
!base = $C00000


; Removes cutscene upon discovering pirate's cove
org $C8520C

db $76							;<Unknown>
db $D3, $80, $20, $23			;Sprite 80 set map position 20, 23
db $80, $09						;Sprite 080 do event: Show
db $80, $24                     ;Sprite 080 do event: face down, right hand raised in
db $B1, $02						;Set Player Sprite 02
db $09							;Player Show
db $05							;Player Bounce in Place
db $04							;Player move Left
db $12							;Player pose: face right, standing
db $70							;Very short pause
db $80, $10                     ;Sprite 080 do event: face up, left hand forward
db $80, $02                     ;Sprite 080 do event: Move Right
db $80, $26                     ;Sprite 080 do event: face up, right hand raised out
db $80, $11                     ;Sprite 080 do event: face up, right hand forward
db $02              			;Player move right
db $01              			;Player move up
db $C4, $08						;Fade out Speed 08
db $74							;Very long pause
db $E1, $13, $00, $14, $36, $00	;Return from cutscene? 13 00 14 36 00
db $DB							;Restore Player status
db $C3, $0C						;Fade in Speed 0C
db $73							;Long pause
db $A4, $1A						;Set Event Flag 11A
db $A4, $1B						;Set Event Flag 11B
db $CA, $34, $00				;Set Flag 2/3/4/5/34 00
db $A5, $FF						;Clear Event Flag 1FF
db $FF                          ;End Event

padbyte $00
pad $C85286