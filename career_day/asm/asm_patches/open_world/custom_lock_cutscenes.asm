hirom


; STEAMSHIP TEXTBOX
; Replaces Hiryuu dying cutscene
; Event ID $F000
org $C8C71D

db $C8, $AB, $84                ;Display Message/Text/Dialogue AB 84
db $02
db $FF                          ;End Event

pad $C8C7DE

; Text for C8, AB, 84
; Door locked. Steamship Key required
org $E250A3
db $72, $8D, $7E, $7A, $86, $8C, $81, $82, $89, $96, $6A, $7E, $92, $96, $8B, $7E, $8A, $8E, $82, $8B, $7E, $7D, $A3, $00