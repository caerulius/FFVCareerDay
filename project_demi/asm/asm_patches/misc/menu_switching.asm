hirom


$000143 sets the type of menu
$01 standard menu
$04 equip menu

When you press B on the equip screen, this will be written then read for type of menu

If you set it to $04 manually after it expects $01 to return, itll go back to equip

You can change the character slot loaded for equips by influencing address
$000171

where $00 is first slot, $02 second slot

$00010a perhaps most important of the input loaders




There is code that jumps to a subroutine based on the input within the equip menu:

c2a33a



c2a341 and $c0e7d2,x [c0e7d5] A:8000 X:0003 Y:4307 S:1ff7 D:0100 DB:7e NvmxdIzc V:230 H:191 F:22
c2a345 bne $a34f     [c2a34f] A:8000 X:0003 Y:4307 S:1ff7 D:0100 DB:7e NvmxdIzc V:230 H:203 F:22
c2a34f lda $c0e7d4,x [c0e7d7] A:8000 X:0003 Y:4307 S:1ff7 D:0100 DB:7e NvmxdIzc V:230 H:209 F:22
c2a353 and #$00ff             A:0002 X:0003 Y:4307 S:1ff7 D:0100 DB:7e nvmxdIzc V:230 H:221 F:22
c2a356 plp                    A:0002 X:0003 Y:4307 S:1ff7 D:0100 DB:7e nvmxdIzc V:230 H:227 F:22
c2a357 rts                    A:0002 X:0003 Y:4307 S:1ff8 D:0100 DB:7e nvMxdIZC V:230 H:234 F:22
c2a2ff bra $a320     [c2a320] A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvMxdIZC V:230 H:244 F:22
c2a320 sta $4b       [00014b] A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvMxdIZC V:230 H:250 F:22
c2a322 bit #$10               A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvMxdIZC V:230 H:256 F:22
c2a324 beq $a328     [c2a328] A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvMxdIZC V:230 H:260 F:22
c2a328 rep #$20               A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvMxdIZC V:230 H:265 F:22
c2a32a and #$000f             A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvmxdIZC V:230 H:271 F:22
c2a32d asl a                  A:0002 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvmxdIzC V:230 H:277 F:22
c2a32e tax                    A:0004 X:0003 Y:4307 S:1ffa D:0100 DB:7e nvmxdIzc V:230 H:280 F:22
c2a32f lda $c0e628,x [c0e62c] A:0004 X:0004 Y:4307 S:1ffa D:0100 DB:7e nvmxdIzc V:230 H:284 F:22
c2a333 sta $c7       [0001c7] A:a378 X:0004 Y:4307 S:1ffa D:0100 DB:7e NvmxdIzc V:230 H:296 F:22
c2a335 sep #$20               A:a378 X:0004 Y:4307 S:1ffa D:0100 DB:7e NvmxdIzc V:230 H:304 F:22
c2a337 jmp ($01c7)   [c201c7] A:a378 X:0004 Y:4307 S:1ffa D:0100 DB:7e NvMxdIzc V:230 H:309 F:22

This is called every frame. When that last line of code is set up properly, itll jump to the address at 0001C7 (2 bytes)

$a4f0 = no press
$a378 = B press
$a36a = a press
