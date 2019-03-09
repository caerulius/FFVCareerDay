; World 1 → World 2 Warp
; Bypasses tent cutscene, straight to Exdeath's castle as Galuf 
; Addresses $C8A6D3 → $C8A94C


hirom
!base = $C00000

org $C8A6D3

; CAREERDAY
; db $E3, $01, $00, $A0, $A2, $00 ;Inter-map cutscene? 01 00 D9 2B 00
db $C4, $03
db $73
; map area
db $E1, $01, $00, $4C, $6F, $00 ;Return from cutscene? E1 00 97 1A 00
db $D2, $01, $4B, $6E, $6C ; hiryuu
db $D2, $01, $4C, $73, $90 ; submarine
db $D2, $01, $4D, $6F, $D8 ; airship ???

; Lonka ruin de-access
db $A5, $FA            ; set address 000A53 bit OFF 04

db $14
db $C3, $03
db $74
db $FF                          ;End Event


padbyte $00
pad $C8A94C