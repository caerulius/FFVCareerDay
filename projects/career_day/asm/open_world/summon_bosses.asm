hirom

; corresponds to SHOAT GOLEM RAMUH

; disable groups for 3 summons
; Ramuh
org $D068B8
db $6E, $00, $6E, $00
org $D06BC6
db $6E, $00
; org $D07010  ; very unsure about this one
; db $6E, $00

; Shoat
org $d069a8
db $CD


; Golem
org $D06EB8
db $B2, $00
org $D06EB0
db $B2, $00


