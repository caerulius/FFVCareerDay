;
; ff5_hp_color.asm
;    HP color �̒ǉ� revision 1.0
;
; ���
;
;    �퓬���ɕ\������ HP �̐F���c�� HP �̊����ɂ���ĕω�����悤�ɂ��܂��B
;
; �g�p�̈�
;
;    $C130AE-$C130AF:    2 bytes
;    $C130F7-$C13107:   17 bytes
;    $C6FF2C-$C6FF5D:   50 bytes
;
; �󂫗̈�
;
;    $C13108-$C13111:   10 bytes
;

;--------------------------------
; �L�����N�^�̏���\�����鏈���A�h���X
;--------------------------------
org $C130AC
FILEPOS_DISPLAY_CHRINFO_ADDR:
    dw $327B                        ; 00: ���O��\������
    dw DISPLAY_HIT_POINTS           ; 01: ���݃q�b�g�|�C���g��\������
    dw $3144                        ; 02: �ő�q�b�g�|�C���g��\������
    dw $3149                        ; 03: ���݃}�W�b�N�|�C���g��\������
    dw $314E                        ; 04: �ő�}�W�b�N�|�C���g��\������
    dw $315D                        ; 05: ���x����\������
    dw $3177                        ; 06: 1 �Ԗڂ̃R�}���h��\������
    dw $3182                        ; 07: 2 �Ԗڂ̃R�}���h��\������
    dw $318D                        ; 08: 3 �Ԗڂ̃R�}���h��\������
    dw $3198                        ; 09: 4 �Ԗڂ̃R�}���h��\������
    dw $3112                        ; 0A: �W���u����\������
    dw DISPLAY_EXPERIENCE_POINTS    ; 0B: �o���l��\������
    dw $31A3                        ; 0C:
    dw $31AA                        ; 0D:
    dw $31B1                        ; 0E:
    dw $31B8                        ; 0F:
    dw $31BF                        ; 10:
    dw $31C6                        ; 11:
    dw $3158                        ; 12: �ő�q�b�g�|�C���g��\������
                                    ;     (suppression)
    dw $3153                        ; 13: �ő�}�W�b�N�|�C���g��\������
                                    ;     (suppression)
    dw $30D6                        ; 14: �o�����A�r���e�B�̐���\������

;--------------------------------
; �g���������݃q�b�g�|�C���g��\������
;--------------------------------
org $C6FF2C
DISPLAY_EX_HIT_POINTS:
    REP #$20
    LDA ($78)       ; �q�b�g�|�C���g
    BNE .check_hp_remaining

    LDA #$0004      ; Gray color if (HP == 0)
    BRA .hp_setattr

.check_hp_remaining
    PHY
    LDY #$0002
    LDA ($78),Y     ; �ő�q�b�g�|�C���g
    PLY
    LSR
    LSR
    LSR
    CMP ($78)       ; �q�b�g�|�C���g
    TDC
    BCC .hp_setattr

    LDA #$0008      ; Yellow color if (HP <= �ő�HP��8)

.hp_setattr
    SEP #$20
    STA $74         ; HP �J���[

.write_char
    LDA $C4,X       ; decimal[0]
    STA ($BC),Y
    INY
    LDA $74         ; HP �J���[
    STA ($BC),Y
    INY
    INX
    CPX #$0004
    BNE .write_char

    RTL

;--------------------------------
; 0Bh: �o���l��\������
;--------------------------------
org $C130E5
DISPLAY_EXPERIENCE_POINTS:
    PHY
    LDY #$0003      ; �o���l(����)
    LDA [$70],Y
    STA $74
    INY             ; �o���l(����)
    LDA [$70],Y
    STA $75
    INY             ; �o���l(���)
    LDA [$70],Y
    STA $72
    LDX $74
    STX $70
    PLY
    JMP $2EAB

;--------------------------------
; 01h: ���݃q�b�g�|�C���g��\������
;--------------------------------
DISPLAY_HIT_POINTS:
    TDC             ; �q�b�g�|�C���g
    JSR $32A5       ; Read ($78),Y
    JSL DISPLAY_EX_HIT_POINTS
    RTS
