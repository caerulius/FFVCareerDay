; There's TWO tables here for the same text
; This is because there's two different indexing methods for:
; 1) When the player gets a reward from a chest or event
; 2) For the internal "Key" menu in the item menu


; 1) Data for event text
; starts at E78100

; Walse Tower Key
org $E78100
db $76, $7A, $85, $8C, $7E, $96, $73, $88, $90, $7E, $8B, $96, $6A, $7E, $92
; Steamship Key
org $E78112
db $72, $8D, $7E, $7A, $86, $8C, $81, $82, $89, $96, $6A, $7E, $92
; Test Item 3
org $E78124
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $56
; Test Item 4
org $E78136
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $57
; Test Item 5
org $E78148
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $58
; Test Item 6
org $E7815A
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $59
; Test Item 7
org $E7816C
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $5A
; Test Item 8
org $E7817E
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $5B
; Bracelet
org $E78190
db $61, $8B, $7A, $7C, $7E, $85, $7E, $8D
; Momento Bag
org $E781A2
db $6C, $88, $86, $7E, $87, $8D, $88, $96, $61, $7A, $80
; Castle Key
org $E781B4
db $62, $7A, $8C, $8D, $85, $7E, $96, $6A, $7E, $92
; Test Item 9
org $E781C6
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $96, $5C
; Test Item10
org $E781D8
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $54, $53
; Test Item11
org $E781EA
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $54, $54
; Test Item12
org $E781FC
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $54, $55
; Test Item13
org $E7820E
db $73, $7E, $8C, $8D, $96, $68, $8D, $7E, $86, $54, $56
; Pendant 1
org $E78220
db $6F, $7E, $87, $7D, $7A, $87, $8D, $96, $54
; Pendant 2
org $E78232
db $6F, $7E, $87, $7D, $7A, $87, $8D, $96, $55
; Canal Key
org $E78244
db $62, $7A, $87, $7A, $85, $96, $6A, $7E, $92
; Hiryuu Plant
org $E78256
db $67, $82, $8B, $92, $8E, $8E, $96, $6F, $85, $7A, $87, $8D
; Bell
org $E78268
db $61, $7E, $85, $85
; Adamantite
org $E7827A
db $60, $7D, $7A, $86, $7A, $87, $8D, $82, $8D, $7E
; Moogle Fur
org $E7828C
db $6C, $88, $88, $80, $85, $7E, $96, $65, $8E, $8B
; Echo Plant
org $E7829E
db $64, $7C, $81, $88, $96, $6F, $85, $7A, $87, $8D
; Elder Branch
org $E782B0
db $64, $85, $7D, $7E, $8B, $96, $61, $8B, $7A, $87, $7C, $81
; Sealed Book
org $E782C2
db $72, $7E, $7A, $85, $7E, $7D, $96, $61, $88, $88, $84
; 1st Tablet
org $E782D4
db $54, $8C, $8D, $96, $73, $7A, $7B, $85, $7E, $8D
; 2nd Tablet
org $E782E6
db $55, $87, $7D, $96, $73, $7A, $7B, $85, $7E, $8D
; 3rd Tablet
org $E782F8
db $56, $8B, $7D, $96, $73, $7A, $7B, $85, $7E, $8D
; 4th Tablet
org $E7830A
db $57, $8D, $81, $96, $73, $7A, $7B, $85, $7E, $8D
; World Map
org $E7831C
db $76, $88, $8B, $85, $7D, $96, $6C, $7A, $89
; Splinter
org $E7832E
db $72, $89, $85, $82, $87, $8D, $7E, $8B