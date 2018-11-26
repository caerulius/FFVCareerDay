hirom
!base = $C00000

; Disables cutscene on boat after leaving Tule with Faris
org $C99998

db $ff ; nothing important to maintain we can just return instantly