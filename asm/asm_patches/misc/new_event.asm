hirom
!destinationindex = $7EF87F

; new event handler is going to be $C7 with 1 operand argument

org $C0A580 ; new offset for generic event handler
db $90, $CD ; this will make the new loading code for this $C0CD90

org $C0CD90
lda $DF ; load in argument 
sta !destinationindex
JMP $A630