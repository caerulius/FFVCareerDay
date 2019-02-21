hirom

org $c9a22f

db $A4, $FE                     ;Turn on bit 40 at address 0x7e0a53
db $71                          ;Short pause
db $C8, $35, $07                ;Display Message/Text/Dialogue 35 07
db $71                          ;Short pause
db $16                          ;Player pose: face left, standing
db $73                          ;Long pause
db $E3, $9A, $01, $1F, $08, $00 ;Inter-map cutscene? 9A 01 1F 08 00
db $0A                          ;Player Hide
db $C3, $0C                     ;Fade in Speed 0C
db $73                          ;Long pause
db $C8, $36, $07                ;Display Message/Text/Dialogue 36 07
db $71                          ;Short pause
db $77                          ;<Unknown>
db $CE, $10, $01                ;Play next 01 bytes 10 times
db $04                          ;Player move Left
db $71                          ;Short pause
db $C8, $37, $07                ;Display Message/Text/Dialogue 37 07
db $71                          ;Short pause
db $CE, $10, $01                ;Play next 01 bytes 10 times
db $02                          ;Player Move Right
db $A5, $FE                     ;Turn off bit 40 at address 0x7e0a53
db $E3, $9D, $01, $2D, $23, $00 ;Inter-map cutscene? 9D 01 2D 23 00
db $09                          ;Player Show
db $76                          ;<Unknown>
db $C3, $0C                     ;Fade in Speed 0C
db $80, $03                     ;Sprite 080 do event: Move Down
db $80, $0A                     ;Sprite 080 do event: Hide
db $BD, $30, $FF                ;Start Event Battle 30
db $C5, $80                     ;<unknown>
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $39                          ;Player pose: face down, both arms raised
db $C5, $80                     ;<unknown>
if !vanillarewards == 1
	db $C8, $39, $07                ;Display Message/Text/Dialogue 39 07  ; OBTAINED WHITE MAGIC HOLY
else
	db $DE, $1F				; set up reward
	db $DF					; call text handler
endif


db $E4, $E3                     ;Unknown
db $93, $01                     ;Sprite 193 do event: Move Up
db $2D                          ;Player pose: face right, right hand out
db $22                          ;Player pose: face down, left hand on head
db $00                          ;Player Hold
db $FF                          ;End Event

pad $C9A27C

org $C9A27D

db $7C                          ;<Unknown>
db $10                          ;Player pose: face up, left hand forward
db $71                          ;Short pause
db $80, $03                     ;Sprite 080 do event: Move Down
db $80, $0A                     ;Sprite 080 do event: Hide
db $70                          ;Very short pause
db $BD, $2F, $FF                ;Start Event Battle 2F
db $71                          ;Short pause
db $C5, $20                     ;<unknown>
db $71                          ;Short pause
db $B4, $29                     ;Play Background Music Fanfare 1 (short)
db $39                          ;Player pose: face down, both arms raised
db $C5, $20                     ;<unknown>
db $71                          ;Short pause
if !vanillarewards == 1
	db $C8, $38, $07                ;Display Message/Text/Dialogue 38 07 ; OBTAINED BLACK MAGIC FLARE
	db $AC, $0F                     ;Add Magic Holy
	db $AC, $22                     ;Add Magic Holy
	db $AC, $10                     ;Add Magic Flare
	db $AC, $33                     ;Add Magic Flare
else
	db $DE, $20				; set up reward
	db $DF					; call text handler
endif
db $E4, $14                     ;Unknown
db $B9, $63                     ;Toggle Subtracitve Tint by 63
db $B3, $10                     ;Pause for 100 cycles
db $12                          ;Player pose: face right, standing
db $16                          ;Player pose: face left, standing
db $12                          ;Player pose: face right, standing
db $16                          ;Player pose: face left, standing
db $14                          ;Player pose: face down, left hand forward
db $71                          ;Short pause
db $C8, $3A, $07                ;Display Message/Text/Dialogue 3A 07
db $C4, $02                     ;Fade out Speed 02
db $B3, $10                     ;Pause for 100 cycles
db $A4, $F2                     ;Turn on bit 04 at address 0x7e0a52
db $E1, $02, $00, $CE, $CA, $00 ;Return from cutscene? 02 00 CE CA 00
db $B7, $00                     ;Add/Remove character 00
db $B7, $09                     ;Add/Remove character 09
db $B7, $0B                     ;Add/Remove character 0B
db $B7, $0C                     ;Add/Remove character 0C
db $7D                          ;<Unknown>
db $14                          ;Player pose: face down, left hand forward
db $DB                          ;Restore Player status
db $C3, $02                     ;Fade in Speed 02
db $B3, $10                     ;Pause for 100 cycles
db $FF                          ;End Event

pad $C9A2CB