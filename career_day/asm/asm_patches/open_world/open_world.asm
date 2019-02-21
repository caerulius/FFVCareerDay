hirom


; These are for permanent changes to open world


; TYCOON CASTLE
; Move the guard out of the way of the vault

org $CE685A
db $15


; RIFT
; Stop Omega from moving
org $CE992B
db $04


; MUA FOREST
; Change checked flag from event code $A2, $71 to $A2, $72 ($000A22 bit 04 instead of 02)
; The reason for this is that $A22 bit 02 is connected to both guido and mua forest
; BUt Bit 04 is specifically tied to the fast 'reentrance' of mua forest
; So we can isolate mua forest as its own area, and guido can remain $A22 bit 02
; This code specifically means when Mua forest is looking for the bit, it's now checking 04 instead of 02 at $A22
org $D8F18E
db $72

