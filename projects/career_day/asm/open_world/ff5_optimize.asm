;
; ff5_optimize.asm
;    �ŋ������̉��P revision 0.3
;
; ���
;
;    �ŋ������̏�����ύX���܂�:
;
;    - �ŋ������̃A���S���Y�������P
;    - �����Ώۂ��珜�O����A�C�e�����w��\
;
; �g�p�̈�
;
;    $C2F869-$C2F89A:   50 bytes
;    $C2F89B-$C2F8B0:   22 bytes
;    $C2F8B1-$C2F8FE:   78 bytes
;    $C2F90B-$C2F931:   39 bytes
;    $C2F932-$C2F948:   23 bytes
;    $C2F949-$C2F9CF:  135 bytes
;    $C2FA65-$C2FA74:   16 bytes
;    $C2FAAD-$C2FAD3:   39 bytes
;
; �󂫗̈�
;
;    $C2F8FF-$C2F90A:   12 bytes
;    $C2F9D0-$C2FA64:  149 bytes
;    $C2FFF8-$C2FFFF:    8 bytes
;

;--------------------------------
; �ŋ������Ŏg�p����A�h���X
;--------------------------------

;--------------------------------
; �ŋ��������珜�O����A�C�e���̃��X�g
;--------------------------------
org $C2FA65
    db $5C          ; �G�N�X�J���p�[
    db $55          ; �u���b�h�\�[�h
    db $36          ; �����X�̃��b�h
    db $CE          ; ���ʂ�ꂽ����
    db $CC          ; ���΂�̂���ނ�
    db $BF          ; �{�[�����C��
    db $B3          ; �̂낢�̂�т�
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;
    db $00          ;

;--------------------------------
; �E��/������ŋ������ɕύX����
;--------------------------------
org $C2F869
OPTIMIZE_WEAPONS:
    PHB
    PHP
    PEA $7E7E
    PLB
    PLB             ; DBR = $7E
    REP #$20
    STZ $2CD1       ; �ŋ�����: ���[0]
    STZ $2CD3       ; �ŋ�����: ���[2]
    STZ $2CD5       ; �ŋ�����: �U����[0]
    STZ $2CD7       ; �ŋ�����: �U����[2]
    SEP #$20
    LDA #$01        ; #$01 = "�E��"
    STA $6F         ; �I�������J�[�\���ʒu
    JSR $ED87       ; �E��/����̑��������Z�b�g����
    LDX $75         ; �����ł���A�C�e���̐�
    BEQ .ret

    JSR $EE94       ; ���������\�[�g���� ($7A00: ����/�o��)
    LDY $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $0521,Y     ; �A�r���e�B�t���O2 (01: �񓁗�, 02: �搧�U��, 04: �x��,
                    ; 08: �o�[�T�N, 10: ��̒m��, 20: ���莝��, 40: �i��,
                    ; 80: ���΂�)
    STA $F0
    JSR EQUIP_OPTIMUM_WEAPON

.ret
    PLP
    PLB
    RTS

;--------------------------------
; �ŋ������ɕύX����
;--------------------------------
EQUIP_OPTIMUM_ITEM:
    LDY $8E         ; $8E = 0

.begin
    JSR GET_OPTIMUM
    BCS .continue

    STA $72
    JSR $FA92       ; ������ ($72) �ɕύX����
    BRA .ret

.continue
    INY
    CPY $75         ; �����ł���A�C�e���̐�
    BMI .begin

.ret
    RTS

;--------------------------------
; �h����ŋ������ɕύX����
;--------------------------------
org $C2FAAD
OPTIMIZE_PROTECTORS:
    PHB
    PHP
    SEP #$20
    LDA #$7E
    PHA
    PLB             ; DBR = $7E
    LDA #$03        ; #$03 = "��"
    STA $6F         ; �I�������J�[�\���ʒu

.begin
    JSR $ED5E       ; �h��̑��������Z�b�g����
    LDX $75         ; �����ł���A�C�e���̐�
    BEQ .continue

    JSR $EE94       ; ���������\�[�g���� ($7A00: ����/�o��)
    JSR EQUIP_OPTIMUM_ITEM
    NOP
    NOP
    NOP

.continue
    INC $6F         ; �I�������J�[�\���ʒu
    LDA $6F         ; �I�������J�[�\���ʒu
    CMP #$06
    BNE .begin

    PLP
    PLB
    RTS

;--------------------------------
; ����̍ŋ��������擾���� (dest: {$2CD0,$2CD4}+A, XL: �t���O(40: ���莝��
; OK, 80: ���葕��), XH: ���O�t���O)
;--------------------------------
org $C2F8B1
GET_OPTIMUM_WEAPON:
    PHP
    SEP #$20
    STX $2CCD
    DEC
    STA $2CCF
    STZ $2CD0
    LDY $8E         ; $8E = 0
    STY $2CCB

.begin
    LDA $7B00,Y     ; Menu buffer
    BEQ .continue

    JSR GET_OPTIMUM
    BMI .continue   ; ����łȂ���Ύ���
    BCS .continue

    JSR $D9AB       ; �A�C�e���f�[�^��ǂݍ��� (A���W�X�^: �A�C�e���̔ԍ�)
                    ; (-> $019B�`$01A6)
    LDA $9F         ; ����/�h��f�[�^[4]: ���b�Z�[�W�̔ԍ�
    AND $2CCD
    EOR $2CCE
    BEQ .continue

    LDA $A2         ; ����f�[�^[7]: �U����
    STA $2CCC
    LDA $7A00,Y     ; Menu buffer
    STA $2CCB
    BRA .break

.continue
    INY
    CPY $75         ; �����ł���A�C�e���̐�
    BMI .begin

.break
    LDX $2CCF
    LDA $2CCB
    STA $2CD1,X     ; �ŋ�����: ���
    LDA $2CCC
    STA $2CD5,X     ; �ŋ�����: �U����
    PLP
    RTS

;--------------------------------
; ���̍ŋ��������擾���� (dest: {$2CD0}+A)
;--------------------------------
org $C2F90B
GET_OPTIMUM_SHIELD:
    PHP
    SEP #$20
    DEC
    STA $2CCF
    STZ $2CD0
    LDX $2CCF
    LDY $8E         ; $8E = 0

.begin
    LDA $7B00,Y     ; Menu buffer
    BEQ .continue

    JSR GET_OPTIMUM
    BPL .continue   ; ���łȂ���Ύ���
    BCS .continue

    STA $2CD1,X     ; �ŋ�����: ���
    BRA .ret

.continue
    INY
    CPY $75         ; �����ł���A�C�e���̐�
    BMI .begin

.ret
    PLP
    RTS

;--------------------------------
; �ŋ������̑ΏۃA�C�e�����擾���� (C=1: ���O���X�g�Ɉ�v)
;--------------------------------
GET_OPTIMUM:
    LDA $7A00,Y     ; Menu buffer
    PHA             ; A = �����A�C�e���̔ԍ�
    PHX
    LDX #$FFFF

.begin
    INX
    CLC
    LDA $C2FA65,X
    BEQ .break

    CMP $03,S       ; A = �����A�C�e���̔ԍ�
    BNE .begin

.break
    PLX
    PLA
    RTS

;--------------------------------
; ������ŋ������ɕύX����
;--------------------------------
EQUIP_OPTIMUM_WEAPON:
    LDX #$0080      ; #$0080 = "���葕��"
    LDA #$01        ; (dest: $7E2CD1)
    JSR GET_OPTIMUM_WEAPON
    LDA $F0
    AND #$20        ; #$20 = "���莝��"
    BEQ .omit_two_handed

    LDX #$0040      ; #$0040 = "���莝�� OK"
    LDA #$02        ; (dest: $7E2CD2)
    JSR GET_OPTIMUM_WEAPON

.omit_two_handed
    LDX #$8080      ; #$8080 = "���葕�����X�L�b�v"
    LDA #$03        ; (dest: $7E2CD3)
    JSR GET_OPTIMUM_WEAPON
    LDA $F0
    AND #$01        ; #$01 = "�񓁗�"
    BEQ .use_shield ; �񓁗��łȂ���΁A����ɏ��𑕔�����

    LDA $7B00,Y     ; Menu buffer
    DEC
    STA $7B00,Y     ; Menu buffer
    LDX #$8080      ; #$8080 = "���葕�����X�L�b�v"
    LDA #$04        ; (dest: $7E2CD4)
    JSR GET_OPTIMUM_WEAPON
    LDA $2CD4       ; �ŋ�����: ���[3]: ����
    BNE .omit_shield; ����p�̕��킪����΁A���𑕔����Ȃ�

.use_shield
    LDA #$04        ; (dest: $7E2CD4)
    JSR GET_OPTIMUM_SHIELD

.omit_shield
    REP #$20
    LDA $2CD7       ; �ŋ�����: �U����[2]: �E��
    AND #$00FF
    STA $E0
    LDA $2CD5       ; �ŋ�����: �U����[0]: ���葕��
    AND #$00FF
    STA $E2
    LDA $2CD6       ; �ŋ�����: �U����[1]: ���莝��
    AND #$00FF
    ASL             ; (�U���͂�2�{�ɂ���)
    STA $E4
    LDA $2CD8       ; �ŋ�����: �U����[3]: ����
    AND #$00FF
	CLC
    ADC $E0
    CMP $E2
    BMI .check_both ; Branch if (�񓁗� < ���葕��)

    CMP $E4
    BMI .two_handed ; Branch if (�񓁗� < ���莝��)

    LDX $2CD3       ; �ŋ�����: ���[2]: �񓁗�
    BRA .equip

.check_both
    LDA $E2
    CMP $E4
    BMI .two_handed ; Branch if (���葕�� < ���莝��)

    LDA $2CD1       ; �ŋ�����: ���[0]: ���葕��
    BRA .equip_without_shield

.two_handed
    LDA $2CD2       ; �ŋ�����: ���[1]: ���莝��

.equip_without_shield
    AND #$00FF
    TAX

.equip
    STX $2CD1       ; �ŋ�����: ���
    JSR $FA75       ; �E��/����̑����� ($2CD1, $2CD2) �ɕύX����
    RTS
