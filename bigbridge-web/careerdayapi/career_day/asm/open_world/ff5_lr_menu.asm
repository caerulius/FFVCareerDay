;
; ff5_lr_menu.asm
;    LR ���j���[�̒ǉ� revision 1.0
;
; ���
;
;    SFC �Ńt�@�C�i���t�@���^�W�[ V �� LR ���j���[�̋@�\��ǉ����܂��B�܂��A
;    ���j���[�����Ɋւ���s����C�����܂��B�Ή����Ă���@�\����яC������
;    ���s��͈ȉ��̂Ƃ���ł�:
;
;    * �ǉ��@�\:
;      - �W���u�E�A�r���e�B�E�����E�X�e�[�^�X�E���@���j���[�ŃL�����N�^�̐�
;        ��ւ����\
;      - ���@���j���[�Ŗ��@�̎�ނ̐؂�ւ��\
;      - �A�r���e�B���j���[�ŃA�r���e�B���̃X�N���[�����\
;      - �A�C�e���E�����E�X���j���[�ŃA�C�e�����̃X�N���[�����\
;      - ��l���̖��O�ݒ�łЂ炪��/�J�^�J�i�̐؂�ւ����\
;      - �퓬�̃A�C�e���R�}���h�ŃA�C�e�����̃X�N���[�����\
;      - �퓬�̖��@�R�}���h�Ŗ��@���̃X�N���[�����\
;      - LR ���͂̃��s�[�g���\
;
;    * �@�\���P:
;      - ���s�[�g�̏������ȉ��̂悤�ɕύX:
;        - ���s�[�g���ɃL�[�𓯎����������ꍇ�͍Ō�̓��͂����s�[�g����
;        - ���s�[�g���ɃL�[��������ꍇ�͉�����Ă�����͂����s�[�g����
;        - FF6 �̂悤�� A ���͎��̒x�����Ԃ̗�O�ݒ肪�\ (�f�t�H���g: 32)
;      - �������j���[�̃J�[�\���̏����ʒu���A�W���u/�A�r���e�B�ύX��ɍŋ���
;        �����Ă��u�����сv��I������悤�ɕύX; FF5A �Ɠ���
;      - �X�̔��p��ʂŃA�C�e�����j���[�̑I�������A�C�e���̈ʒu�����Z�b�g��
;        �Ȃ�; FF5A �Ɠ���
;      - �퓬�̉̃R�}���h�ŃX�N���[���o�[��\�����Ȃ��悤�ɂ���
;
;    * �o�O/�s��̏C��:
;      - �X�e�[�^�X��ʂŃL�����N�^��؂�ւ��Ă��Èŏ�Ԃ̃p�[�c���c��s��
;        �����C��
;      - ���@�̏I�����ɉ�ʂ�������s����C��
;      - ���@�̃J�[�\���ʒu���������ݒ肳��Ȃ��s����C��
;      - �Z�k�R�}���h�̐ݒ�� 1 �Ԗڂ̃R�}���h���ŏ��ɑI������悤�ɏC��
;      - �Z�k�R�}���h�̐ݒ�œ����R�}���h��I�����Ă���I���ɂȂ�Ȃ��s�
;        ���C��
;      - �Z�k�R�}���h�̐ݒ�ŃL�����N�^����Ԉُ�ɂ������Ă���ƃW���u�̖�
;        �O���\������Ȃ��s����C��
;      - �Z�k�R�}���h�̐ݒ�ŃJ�[�\�����\�����ꂽ�܂܂ɂȂ�s����C��
;      - �Z�k�R�}���h�̐ݒ�ŃL�����N�^�̑I�����㉺���[�v����悤�ɕύX
;      - �Z�k�R�}���h�̐ݒ�ŃL�����N�^���퓬�s�\�ɂȂ��Ă���Ƃ����҂�̃p
;        ���b�g���g�p�����s����C��
;      - �J�X�^���̐ݒ�� B �{�^���ŏI���ł���悤�ɕύX
;      - ����ŃA�C�e�����w���ł��Ȃ��ꍇ�ɃL�����N�^���\�������s���
;        �C��
;      - �e���g/�R�e�[�W�̎g�p���ɃJ�[�\���ʒu���L������Ȃ��s����C��
;      - �����b�A�C�e���̎g�p��ɃA�C�e���̐������X�V����Ȃ��s����C��
;
;    ����: ���̃p�b�`�t�@�C���� ���ʃ^�C�v 71h: ���x���_�E�� [$C27964-$C2
;    7AD8] ����� ���x���_�E���̑Ώۃe�[�u�� [$D0FFA0-$D0FFDF] �̗̈���폜
;    ���Ďg�p���܂��B���̃p�b�`�t�@�C����K�p����ꍇ�́A���̗̈���g�p����
;    ���ł��������B
;
; NOTES
;
;    �A�r���e�B�̃L�����N�^�؂�ւ��̓���ɂ��Ă͈ȉ��ŕύX�ł��܂�:
;
;      $C279BE: F0 00 - FF5 (SFC and PSX) �݊�
;      $C279BE: 80 05 - FF5A (GBA) �݊�
;      $C279BE: F0 05 - ff5_ability_menu.ips �݊� (�f�t�H���g)
;
;    �L�[���͂̒x�����Ԃ͈ȉ��ŕύX�ł��܂�:
;
;      $C2FF3D: 20    - A �{�^���̒x������
;      $C2FF8F: 16    - �x������ (�ʏ�)
;      $C2FF5B: 10    - �x������ (�퓬)
;
; �g�p�̈�: �C��
;
;    $C0E63A-$C0E651:   24 bytes
;    $C0E652-$C0E6AE:   93 bytes
;    $C0E6AF-$C0E6E7:   57 bytes
;    $C0E6E8-$C0E720:   57 bytes
;    $C0E7C6-$C0E7D9:   20 bytes
;    $C0E9E2-$C0E9F1:   16 bytes
;    $C0E9F3-$C0EA01:   16 bytes
;    $C0EA08-$C0EA09:    2 bytes
;    $C14AF5-$C14AF8:    4 bytes
;    $C14BF8-$C14BBB:   45 bytes
;    $C15574-$C155AB:   56 bytes
;    $C155D0-$C15704:  309 bytes
;    $C157B1-$C157E6:   54 bytes
;    $C15BA3-$C15CC9:  183 bytes
;    $C15C88-$C15CD1:  314 bytes
;    $C15E04-$C15E1E:   27 bytes
;    $C2A06B-$C2A0C1:   87 bytes
;    $C2A1F0-$C2A21D:   46 bytes
;    $C2A2E9-$C2A339:   81 bytes
;    $C2A33A-$C2A357:   30 bytes
;    $C2A40F-$C2A42A:   28 bytes
;    $C2A6FC-$C2A77F:  132 bytes
;    $C2A96F-$C2A9D8:  106 bytes
;    $C2AA12-$C2AA34:   35 bytes
;    $C2AC1E-$C2AC20:    3 bytes
;    $C2AC90-$C2ACA7:   24 bytes
;    $C2ACC3-$C2ACCF:   13 bytes
;    $C2ACD0-$C2ACF8:   41 bytes
;    $C2ACF9-$C2ACFE:    6 bytes
;    $C2ACFF-$C2AD3D:   63 bytes
;    $C2ADB0-$C2ADCB:   28 bytes
;    $C2ADCC-$C2ADDE:   19 bytes
;    $C2AEE6-$C2AF06:   33 bytes
;    $C2B0A0-$C2B0AF:   16 bytes
;    $C2B7FC-$C2B80C:   21 bytes
;    $C2B8D0-$C2B8FC:   45 bytes
;    $C2B97E-$C2B992:   15 bytes
;    $C2BB66-$C2BB8F:   42 bytes
;    $C2BB90-$C2BBAB:   28 bytes
;    $C2BBFA-$C2BC1C:   35 bytes
;    $C2BC2D-$C2BC47:   27 bytes
;    $C2BC48-$C2BC56:   15 bytes
;    $C2C014-$C2C016:    3 bytes
;    $C2C0BD-$C2C0BF:    3 bytes
;    $C2C110-$C2C111:    2 bytes
;    $C2C34A-$C2C36E:   37 bytes
;    $C2C7C6-$C2C7C7:    2 bytes
;    $C2C803-$C2C880:  126 bytes
;    $C2C921-$C2C922:    2 bytes
;    $C2CA37-$C2CAA4:  110 bytes
;    $C2CAA5-$C2CAC7:   35 bytes
;    $C2CCCB-$C2CD07:   61 bytes
;    $C2CD57-$C2CD98:   66 bytes
;    $C2D388-$C2D3D0:   73 bytes
;    $C2D958-$C2D9AA:   83 bytes
;    $C2F4CB-$C2F4CD:    3 bytes
;    $C2FED0-$C2FF4C:  125 bytes
;    $C2FF7D-$C2FFC1:   69 bytes
;    $C3AB36:            1 byte
;    $C3AB2F:            1 byte
;
; �g�p�̈�: �ǉ������Ŏg�p
;
;    $C0E628-$C0E630:    9 bytes
;    $C14AF9-$C14B05:   13 bytes
;    $C14B06-$C14B1A:   21 bytes
;    $C155B9-$C155CF:   23 bytes
;    $C157E7-$C157F6:   16 bytes
;    $C157F7-$C15805:   15 bytes
;    $C15DC2-$C15DD3:   18 bytes
;    $C15E1F-$C15E35:   23 bytes
;    $C2A0D9-$C2A0F5:   29 bytes
;    $C2A21E-$C2A22F:   18 bytes
;    $C2B0B0-$C2B0D4:   37 bytes
;    $C2BC1D-$C2BC26:   10 bytes
;    $C2C881-$C2C89F:   31 bytes
;    $C2CD99-$C2CDAE:   22 bytes
;    $C2CDBA-$C2CDBF:    6 bytes
;    $C2CDC0-$C2CDC5:    6 bytes
;    $C2A42B-$C2A440:   22 bytes
;
; �g�p�̈�: LR ���͂Ŏg�p
;
;    $C15705-$C15729:   37 bytes
;    $C1572A-$C1574F:   38 bytes
;    $C15C5A-$C15C87:   46 bytes
;    $C15EE0-$C15F10:   49 bytes
;    $C2A230-$C2A23A:   11 bytes
;    $C2ACA8-$C2ACC2:   27 bytes
;    $C27964-$C27ABD:  346 bytes
;    $D0FFA0-$D0FFDD:   62 bytes
;
; �󂫗̈�
;
;    $C0E631-$C0E639:    9 bytes (reserved)
;    $C0E7DA-$C0E7E6:   13 bytes
;    $C14B1B-$C14B21:    7 bytes
;    $C155AC-$C155B8:   13 bytes
;    $C15E36-$C15E3A:    5 bytes
;    $C2A0C2-$C2A0D8:   23 bytes
;    $C2AF07-$C2AF1A:   20 bytes (used by ff5_ngplus.ips)
;    $C2B80D-$C2B810:    4 bytes
;    $C2BC57-$C2BC5D:    7 bytes
;    $C2CDAF-$C2CDB9:   11 bytes
;    $C2D3D1-$C2D3DA:   10 bytes
;    $C2F4CE-$C2F4D3:    6 bytes
;    $C2FF4D-$C2FF55:    9 bytes
;
; �󂫗̈�: LR ���͂Ŏg�p
;
;    $C15F11-$C15F16:    6 bytes
;    $C27ABE-$C27AD8:   27 bytes (used by ff5_ngplus.ips)
;    $D0FFDE-$D0FFDF:    2 bytes
;
; �d�l
;
;    * �L�����N�^�؂�ւ������̓R���t�B�O�̐ݒ肪�u�߂��v�ł���΃J�[�\����
;      �����ʒu�ɖ߂��܂��B
;    * ���X�g�̃X�N���[�������̓J�[�\���̈ʒu����ɕύX���܂���B
;
; �o�O
;
;    * ���@���j���[�̎�ޑI����ʂŃL�����N�^�̖��O�����ׂĕ\������܂���
;      (fixed in PSX version)�B
;    * �e���|�̎g�p���ɃJ�[�\���ʒu���L������܂��� (not fixed in both PSX
;      and GBA version)�B
;
; �Z�p����
;
;    Table of $7600: ���j���[���쐧��e�[�u��
;    ----------------------------------------
;    $7600: ���j���[�ԍ� | �X�N���[���^�C�v (>= 0x80):
;                        |   80: �A�r���e�B/�ύX
;                        |   82: �W���u
;                        |   83: ����/�A�C�e���I��
;                        |   85: �X/���I��
;                        |   86: �A�C�e��/�A�C�e���I��
;                        |   87: $2B66/$2B67 ���g�p����
;                        |   89: �R���t�B�O
;    $7601: �J�[�\���ʒu | �X�N���[������
;    $7602: �J�[�\���̕\���ʒu(��)
;    $7603: �J�[�\���̕\���ʒu(�c)
;    $7604: Up:    �J�[�\���C���f�b�N�X
;    $7605: Down:  �J�[�\���C���f�b�N�X
;    $7606: Left:  �J�[�\���C���f�b�N�X
;    $7607: Right: �J�[�\���C���f�b�N�X
;
;    List of $0143: ���j���[�R�}���h�ԍ�
;    -----------------------------------
;    01: ���C�����j���[
;    02: �A�r���e�B
;    03: �W���u
;    04: �����ύX
;    05: �X�e�[�^�X
;    06: �X
;    07: �A�C�e��
;    08: ���@
;    09: �R���t�B�O
;    0A: ����
;    0B: �Z�[�u
;    0C: ���[�h
;    0D: ��l���̖��O�ݒ�
;
;    List of $0154: ���j���[�ԍ�
;    ---------------------------
;    01: ���C��
;    02: ���C��/����ύX
;    03: ���C��/�L�����N�^�I��
;    04: �A�r���e�B
;    05: �A�r���e�B/�ύX
;    06: �W���u
;    07: ����/�����I��
;    08: ����
;    09: ����/�A�C�e���I��
;    0A: �X�e�[�^�X
;    0B: �X
;    0C: �X/�w��
;    0D: �X/�w��/���I��
;    0E: ���@��/�w��
;    0F: �A�C�e��
;    10: �A�C�e��/�A�C�e���I��
;    11: (unused)
;    12: ���@
;    13: ���@/�����@,�����@,����,����,���@��
;    14: ���@/���@
;    15: ���@/��
;    16: �X/���p
;    17: �Z�[�u
;    18: ���O�ݒ�/���[�h
;    19: ���O�ݒ�/�����I��
;    1A: �X/���p/���I��
;    1B: ����
;    1C: �Z�[�u/�m�F
;    1D: ���@/�g�p/�ΏۑI��
;    1E: �A�C�e��/�g�p/�ΏۑI��
;    1F: �R���t�B�O/�Z�k
;    20: �R���t�B�O
;    21: �R���t�B�O/�}���`
;    22: �R���t�B�O/�J�X�^��
;    23: �R���t�B�O/�Z�k/�I��
;    24: �A�C�e��/�A�C�e���I��/�����m�F
;

; /* Start of definition */

;--------------------------------
; LR ���͂Ŏg�p����A�h���X
;--------------------------------
; $C27964:     LR ���͂̃v���O����
; $D0FFA0:    LR ���͂Ŏg�p����A�h���X�e�[�u��
; $C15EE0:   [�퓬] �A�C�e���� LR ���͂̃v���O����
; $C15C5A:  [�퓬] �A�C�e���̃X�N���[������
; $C15705:  [�퓬] ���@�� LR ���͂̃v���O����
; $C15705+$25: [�퓬] ���@�̃X�N���[������
;--------------------------------
; /* $C27964 is must be in $C2 bank */
!$C27964 = $C27964
!$D0FFA0 = $D0FFA0
; /* LR_LOC_BTL_* are must be in $C1 bank */
!$C15EE0 = $C15EE0
!$C15C5A = $C15C5A
!$C15705 = $C15705
!$C15705+$25 = $C15705+$25

;--------------------------------
; �L�[���͏����̃A�h���X
;--------------------------------
; $C2A358: �L�[���̓^�C�v No.007(07): �f�����j���[�̃E�F�C�g
; $C2A36A:         �L�[���̓^�C�v No.001(01): A ����
; $C2A378:         �L�[���̓^�C�v No.002(02): B ����
; INPUT_DEMO_EXIT: �L�[���̓^�C�v No.008(08): �f�����j���[���I������
; INPUT_UP:        �L�[���̓^�C�v No.003(03): UP
; INPUT_DOWN:      �L�[���̓^�C�v No.004(04): Down
; INPUT_LEFT:      �L�[���̓^�C�v No.005(05): Left
; INPUT_RIGHT:     �L�[���̓^�C�v No.006(06): Right
; INPUT_MOVE:      �L�[���͂ɂ���Ĉړ����� (A���W�X�^: �C���f�b�N�X)
; INPUT_WAIT:      �L�[���̓^�C�v No.000(00): ���͑҂�
; INPUT_LR:        �L�[���̓^�C�v No.009(09): LR ����
;-------------------------------
$C2A358 equ $C2A358
$C2A36A         equ $C2A36A
$C2A378         equ $C2A378
INPUT_DEMO_EXIT equ $C2A441
INPUT_UP        equ $C2A45E
INPUT_DOWN      equ $C2A466
INPUT_LEFT      equ $C2A46E
INPUT_RIGHT     equ $C2A476
INPUT_MOVE      equ $C2A47C
INPUT_WAIT      equ $C2A4F0
INPUT_LR        equ $C2ACA8

;--------------------------------
; �T�E���h�̃A�h���X
;--------------------------------
; SOUND_SELECT:     �T�E���h�̐ݒ�: �I����
; SOUND_OK:         �T�E���h�̐ݒ�: ���艹
; SOUND_CANCEL:     �T�E���h�̐ݒ�: �����
; SOUND_BEEP:       �T�E���h�̐ݒ�: �r�[�v��
; SOUND_SAVE:       �T�E���h�̐ݒ�: �Z�[�u��
; SOUND_GET:        �T�E���h�̐ݒ�: �w��/�����b�K��
; LR_SOUND:         LR ���͎��̃T�E���h
; BTL_SOUND_SELECT: [�퓬] �T�E���h�̐ݒ�: �I����
; BTL_SOUND_OK:     [�퓬] �T�E���h�̐ݒ�: ���艹
; BTL_SOUND_CANCEL: [�퓬] �T�E���h�̐ݒ�: �����
; BTL_SOUND_BEEP:   [�퓬] �T�E���h�̐ݒ�: �r�[�v��
; BTL_LR_SOUND:     [�퓬] LR ���͎��̃T�E���h
;--------------------------------
SOUND_SELECT     equ $C2E0A8
SOUND_OK         equ $C2E0B0
SOUND_CANCEL     equ $C2E0B8
SOUND_BEEP       equ $C2E0C0
SOUND_SAVE       equ $C2E0C8
SOUND_GET        equ $C2E0D9
LR_SOUND         equ SOUND_SELECT
BTL_SOUND_SELECT equ $C1FBAD
BTL_SOUND_OK     equ $C1FBB8
BTL_SOUND_CANCEL equ $C1FBC3
BTL_SOUND_BEEP   equ $C1FBCE
BTL_LR_SOUND     equ BTL_SOUND_SELECT

;--------------------------------
; ���j���[�������[�`���A�h���X
;--------------------------------
org $C0E60E
FILEPOS_MENU_ADDR:
    dw $CFDC                ; 01: ���C�����j���[
    dw $CEEC                ; 02: �A�r���e�B
    dw $CCCB                ; 03: �W���u
    dw $CA37                ; 04: �����ύX
    dw $C8A0                ; 05: �X�e�[�^�X
    dw $C803                ; 06: �X
    dw $C6F7                ; 07: �A�C�e��
    dw $C5C8                ; 08: ���@
    dw $C34A                ; 09: �R���t�B�O
    dw $C36F                ; 0A: ����
    dw $C5B9                ; 0B: �Z�[�u
    dw $C56B                ; 0C: ���[�h
    dw $C442                ; 0D: ��l���̖��O�ݒ�

;--------------------------------
; �L�[���͏������[�`���A�h���X [20 bytes]
;--------------------------------
org $C0E7C6                 ; moved from $C0E628
FILEPOS_$C2A36ADDR:
    dw INPUT_WAIT           ; 00: (none)
    dw $C2A36A              ; 01: A
    dw $C2A378              ; 02: B
    dw INPUT_UP             ; 03: Up
    dw INPUT_DOWN           ; 04: Down
    dw INPUT_LEFT           ; 05: Left
    dw INPUT_RIGHT          ; 06: Right
    dw $C2A358      ; 07: �f�����j���[�Ŏg�p����
    dw INPUT_DEMO_EXIT      ; 08: �f�����j���[���I������
    dw INPUT_LR             ; 09: LR

;--------------------------------
; ���j���[�X�N���[���̏���
;--------------------------------
org $C0E63A
FILEPOS_MENU_SCROLL_ADDR:
    db $80 : dw $A519       ; 80: �A�r���e�B/�ύX
    db $82 : dw $A5B5       ; 82: �W���u
    db $83 : dw $A5E6       ; 83: ����/�A�C�e���I��
    db $85 : dw $A618       ; 85: �X/���I��
    db $86 : dw $A6B9       ; 86: �A�C�e��/�A�C�e���I��
    db $87 : dw $A6FC       ; 87: $2B66/$2B67 ���g�p���� (���@/���@,
                            ;     ���O�ݒ�/�����I��)
    db $89 : dw $A79C       ; 89: �R���t�B�O
    db $00 : dw $0000       ; (eof)

;--------------------------------
; ���j���[�؂�ւ�/�J�n���̏���
;--------------------------------
org $C0E652
FILEPOS_MENU_FOCUS_ADDR:
    db $01 : dw $A7FC                   ; 01: ���C��
    db $02 : dw $A826                   ; 02: ���C��/����ύX
    db $03 : dw $A8FA                   ; 03: ���C��/�L�����N�^�I��
    db $04 : dw $A925                   ; 04: �A�r���e�B
    db $05 : dw $A958                   ; 05: �A�r���e�B/�ύX
    db $06 : dw $A96C                   ; 06: �W���u
    db $08 : dw $A9FD                   ; 08: ����
    db $09 : dw $AA35                   ; 09: ����/�A�C�e���I��
    db $0B : dw $AABB                   ; 0B: �X
    db $0C : dw $AAE9                   ; 0C: �X/�w��
    db $0D : dw $AB91                   ; 0D: �X/�w��/���I��
    db $0E : dw $ABC1                   ; 0E: ���@��/�w��
    db $0F : dw $ABDF                   ; 0F: �A�C�e��
    db $10 : dw $AC01                   ; 10: �A�C�e��/�A�C�e���I��
    db $12 : dw $ACC3                   ; 12: ���@
    db $13 : dw MENU_FOCUS_MAGIC_LIST   ; 13: ���@/�����@,�����@,����,����,
                                        ;     ���@��
    db $14 : dw $ADB0                   ; 14: ���@/���@
    db $15 : dw MENU_FOCUS_SONG_LIST    ; 15: ���@/��
    db $16 : dw $ADDF                   ; 16: �X/���p
    db $19 : dw $AE47                   ; 19: ���O�ݒ�/�����I��
    db $1A : dw $AE5C                   ; 1A: �X/���p/�A�C�e���I��
    db $1C : dw $AE6F                   ; 1C: �Z�[�u/�m�F
    db $1D : dw $AF1B                   ; 1D: ���@/�g�p/�ΏۑI��
    db $1E : dw $B04F                   ; 1E: �A�C�e��/�g�p/�ΏۑI��
    db $1F : dw $B079                   ; 1F: �R���t�B�O/�Z�k
    db $20 : dw $B0D6                   ; 20: �R���t�B�O
    db $21 : dw $B106                   ; 21: �R���t�B�O/�}���`
    db $22 : dw $B19A                   ; 22: �R���t�B�O/�J�X�^��
    db $23 : dw $B1CA                   ; 23: �R���t�B�O/�Z�k/�I��
    db $24 : dw $B1EC                   ; 24: �A�C�e��/�A�C�e���I��/�����m�F
    db $00 : dw $0000                   ; (eof)

;--------------------------------
; ���j���[�؂�ւ�/�I�����̏���
;--------------------------------
org $C0E6AF
FILEPOS_MENU_UNFOCUS_ADDR:
    db $01 : dw $A81D                   ; 01: ���C��
    db $02 : dw $A8D3                   ; 02: ���C��/����ύX
    db $03 : dw $A91C                   ; 03: ���C��/�L�����N�^�I��
    db $04 : dw $A948                   ; 04: �A�r���e�B
    db $08 : dw $AA12                   ; 08: ����
    db $09 : dw $AA4E                   ; 09: ����/�A�C�e���I��
    db $0C : dw $AB19                   ; 0C: �X/�w��
    db $0D : dw $ABB2                   ; 0D: �X/�w��/���I��
    db $0E : dw $ABD1                   ; 0E: ���@��/�w��
    db $12 : dw MENU_UNFOCUS_MAGIC      ; 12: ���@
    db $13 : dw $AD3E                   ; 13: ���@/�����@,�����@,����,����,
                                        ;     ���@��
    db $14 : dw $ADCC                   ; 14: ���@/���@
    db $15 : dw $AD3E                   ; 15: ���@/��
    db $16 : dw $AE11                   ; 16: �X/���p
    db $1A : dw $AE6B                   ; 1A: �X/���p/���I��
    db $1D : dw $AF87                   ; 1D: ���@/�g�p/�ΏۑI��
    db $1E : dw $B063                   ; 1E: �A�C�e��/�g�p/�ΏۑI��
    db $24 : dw $B257                   ; 24: �A�C�e��/�A�C�e���I��/�����m�F
    db $00 : dw $0000                   ; (eof)

;--------------------------------
; ���j���[�ړ����̏���
;--------------------------------
org $C0E6E8
FILEPOS_MENU_MOVE_ADDR:
    db $02 : dw $A8C1                   ; 02: ���C��/����ύX
    db $03 : dw $A918                   ; 03: ���C��/�L�����N�^�I��
    db $04 : dw $A935                   ; 04: �A�r���e�B
    db $05 : dw $A965                   ; 05: �A�r���e�B/�ύX
    db $06 : dw $A96F                   ; 06: �W���u
    db $09 : dw $AA6E                   ; 09: ����/�A�C�e���I��
    db $0B : dw $AAD1                   ; 0B: �X(���@��)
    db $0C : dw $AB20                   ; 0C: �X/�w��
    db $0E : dw $ABDB                   ; 0E: ���@��/�w��
    db $0F : dw $ABF2                   ; 0F: �A�C�e��
    db $10 : dw $AC1E                   ; 10: �A�C�e��/�A�C�e���I��
    db $13 : dw $AD5B                   ; 13: ���@/�����@,�����@,����,����,
                                        ;     ���@��
    db $14 : dw $AD5B                   ; 14: ���@/���@
; [$AC90: �X�^�[�g�ō����X�N���[��] ���폜
;   db $16 : dw $AC90                   ; 16: �X/���p
    db $17 : dw $AE31                   ; 17: �Z�[�u
    db $19 : dw $AE4B                   ; 19: ���O�ݒ�/�����I��
    db $1D : dw $AFB2                   ; 1D: ���@/�g�p/�ΏۑI��
    db $1E : dw $AFB2                   ; 1E: �A�C�e��/�g�p/�ΏۑI��
    db $21 : dw $B16E                   ; 21: �R���t�B�O/�}���`
    db $00 : dw $0000                   ; (eof)

;--------------------------------
; ����/������͂̏������[�`���A�h���X
;--------------------------------
org $C0E724
FILEPOS_MENU_INPUT_DETERMINE_ADDR:
    dw $B25B, $B25B         ; 00: (none)
    dw $B25E, $B2FB         ; 01: ���C��
    dw $B302, $B40C         ; 02: ���C��/����ύX
    dw $B429, $B480         ; 03: ���C��/�L�����N�^�I��
    dw $B48F, $B4A8         ; 04: �A�r���e�B
    dw $B4D7, $B511         ; 05: �A�r���e�B/�ύX
    dw $B521, $B5EA         ; 06: �W���u
    dw $B6B9, $B74B         ; 07: ����/�����I��
    dw $B752, $B796         ; 08: ����
    dw $B7AD, $B7FC         ; 09: ����/�A�C�e���I��
    dw $B811, $B845         ; 0A: �X�e�[�^�X
    dw $B84D, $B879         ; 0B: �X
    dw $B8AE, $B91D         ; 0C: �X/�w��
    dw $B955, $B993         ; 0D: �X/�w��/���I��
    dw $B998, $BA05         ; 0E: ���@��/�w��
    dw $BA0A, $BA63         ; 0F: �A�C�e��
    dw $BA7D, $BBFA         ; 10: �A�C�e��/�A�C�e���I��
    dw $BC27, $BC2A         ; 11: (unused)
    dw $BC2D, $BC48         ; 12: ���@
    dw $BC5E, $BCD9         ; 13: ���@/�����@,�����@,����,����,���@��
    dw $BCD9, $BCD9         ; 14: ���@/���@
    dw $BCD9, $BCD9         ; 15: ���@/��
    dw $BCE0, $BD3D         ; 16: �X/���p
    dw $BD47, $BDB5         ; 17: �Z�[�u
    dw $BDC6, $BDF3         ; 18: ���O�ݒ�/���[�h
    dw $BDF6, $BE2E         ; 19: ���O�ݒ�/�����I��
    dw $BE64, $BEC8         ; 1A: �X/���p/���I��
    dw $BECD, $BEF4         ; 1B: ����
    dw $BF2E, $BF89         ; 1C: �Z�[�u/�m�F
    dw $BF9D, $BFCD         ; 1D: ���@/�g�p/�ΏۑI��
    dw $BFD4, $BFF4         ; 1E: �A�C�e��/�g�p/�ΏۑI��
    dw $C003, $C041         ; 1F: �R���t�B�O/�Z�k
    dw $C046, $C05E         ; 20: �R���t�B�O
    dw $C069, $C06C         ; 21: �R���t�B�O/�}���`
    dw $C071, $C0BD         ; 22: �R���t�B�O/�J�X�^��
    dw $C0F7, $C146         ; 23: �R���t�B�O/�Z�k/�I��
    dw $C162, $C162         ; 24: �A�C�e��/�A�C�e���I��/�����m�F

;--------------------------------
; �L�[���͂̃R���t�B�O�ݒ�e�[�u��
;--------------------------------
org $C0E7B8
FILEPOS_INPUT_CONFIG:
    dw $0080                ; 00: A
    dw $8000                ; 01: B
    dw $0040                ; 02: X
    dw $4000                ; 03: Y
    dw $0020                ; 04: L
    dw $0010                ; 05: R
    dw $2000                ; 06: Select

;--------------------------------
; ���j���[�Ŏg�p�ł���L�[���͏����e�[�u�� [24 bytes]
;--------------------------------
org $C2AC90                 ; moved from $C0E7D2
FILEPOS_INPUT_INDEX:
    dw $0080 : db $01       ; 01: A
    dw $8000 : db $02       ; 02: B
    dw $0800 : db $03       ; 03: Up
    dw $0400 : db $04       ; 04: Down
    dw $0200 : db $05       ; 05: Left
    dw $0100 : db $06       ; 06: Right
    dw $0030 : db $09       ; 09: LR
    dw $0000 : db $00       ; 00: (none)

;--------------------------------
; �R���t�B�O/�߂�: �J�[�\���C���f�b�N�X�̏����l
;--------------------------------
org $C0E9E2
FILEPOS_CURSOR_RESET:
    db $00          ; 00: (none)
    db $02          ; 01: ���C��
    db $08          ; 02: ���C��/����ύX
    db $0C          ; 03: ���C��/�L�����N�^�I��
    db $00          ; 04: �A�r���e�B
    db $04          ; 05: �A�r���e�B/�ύX
    db $00          ; 06: �W���u
    db $00          ; 07: ����/�����I��
    db $05          ; 08: ����
    db $00          ; 09: ����/�A�C�e���I��
    db $00          ; 0A: �X�e�[�^�X
    db $00          ; 0B: �X
    db $00          ; 0C: �X/�w��
    db $00          ; 0D: �X/�w��/���I��
    db $00          ; 0E: ���@��/�w��
    db $00          ; 0F: �A�C�e��
    db $04          ; 10: �A�C�e��/�A�C�e���I��

;--------------------------------
; �R���t�B�O/�L��: �L�������J�[�\���C���f�b�N�X���i�[����A�h���X
;--------------------------------
org $C0E9F3
FILEPOS_CURSOR_REMEMBER:
    db $00          ; 00: (none)
    db $59          ; 01: ���C��
    db $5A          ; 02: ���C��/����ύX
    db $5A          ; 03: ���C��/�L�����N�^�I��
    db $00          ; 04: �A�r���e�B
    db $00          ; 05: �A�r���e�B/�ύX
    db $5F          ; 06: �W���u
    db $5E          ; 07: ����/�����I��
    db $5E          ; 08: ����
    db $00          ; 09: ����/�A�C�e���I��
    db $00          ; 0A: �X�e�[�^�X
    db $00          ; 0B: �X
    db $00          ; 0C: �X/�w��
    db $00          ; 0D: �X/�w��/���I��
    db $00          ; 0E: ���@��/�w��
    db $00          ; 0F: �A�C�e��
    db $00          ; 10: �A�C�e��/�A�C�e���I��

;--------------------------------
; �f�t�H���g�̃J�[�\���C���f�b�N�X�̐ݒ� [18 bytes] /* added */
;--------------------------------
org $C2A21E
FILEPOS_CURSOR_DEFAULT:
    db $00          ; $59: �Ō�ɑI���������C�����j���[�̈ʒu
    db $08          ; $5A: �Ō�ɑI�������L�����N�^�̈ʒu
    db $00          ; $5B: �Ō�ɑI�������A�C�e���̈ʒu
    db $00          ; $5C: �Ō�ɑI�������A�C�e���̃X�N���[���ʒu
    db $00          ; $5D: �Ō�ɖ��@��I�������L�����N�^�̔ԍ�
    db $05          ; $5E: �Ō�ɑI�����������̈ʒu
    db $00          ; $5F: �Ō�ɑI�������W���u�̈ʒu
    db $02          ; $60: �I�������A�r���e�B�R�}���h�̈ʒu
    db $00          ; $61: (unused)
    db $00          ; $62: �Ō�ɑI�������Z�[�u�f�[�^�̈ʒu
    db $00          ; $63: �I���������@�̎��(1�Ԗڂ̃L�����N�^)
    db $00          ; $64: �I���������@�̎��(2�Ԗڂ̃L�����N�^)
    db $00          ; $65: �I���������@�̎��(3�Ԗڂ̃L�����N�^)
    db $00          ; $66: �I���������@�̎��(4�Ԗڂ̃L�����N�^)
    db $07          ; $67: �I���������@�̈ʒu(1�Ԗڂ̃L�����N�^)
    db $07          ; $68: �I���������@�̈ʒu(2�Ԗڂ̃L�����N�^)
    db $07          ; $69: �I���������@�̈ʒu(3�Ԗڂ̃L�����N�^)
    db $07          ; $6A: �I���������@�̈ʒu(4�Ԗڂ̃L�����N�^)

;--------------------------------
; �g�� DMA �]���ݒ� (src: $7EB000-$7EC17F, dest: $3000)
;--------------------------------
org $C0E628
    db $00,$30,$01,$18,$00,$B0,$7E,$80,$11

;--------------------------------
; �g�� DMA �]���ݒ� (reserved)
;--------------------------------
org $C0E631
    db $00,$00,$00,$00,$00,$00,$00,$00,$00

;--------------------------------
; [�퓬] ���j���[�R�}���h�������[�`���A�h���X
;--------------------------------
org $C1119B
FILEPOS_BTL_$C2A36ADDR:
    dw $119A        ; 00: (none)
    dw $4986        ; 01: �ݒ�
    dw $49C4        ; 02:
    dw $4A86        ; 03: ���X�N���[��
    dw $4B22        ; 04: ��X�N���[��
    dw $11E4        ; 05: ���j���[���J��
    dw $53CE        ; 06: �R�}���h�I��
    dw $5C88        ; 07: �A�C�e��
    dw $5BA3        ; 08: �A�C�e��/����
    dw $119A        ; 09: (none)
    dw $53CE        ; 0A: �R�}���h�I���ĊJ
    dw $55D0        ; 0B: ���@
    dw $4759        ; 0C: �}�W�b�N�|�C���g��\������
    dw $4735        ; 0D: ���@����R�}���h�ɖ߂�
    dw $11D3        ; 0E: �I��
    dw $51A5        ; 0F: �R�}���h/�`�F���W
    dw $51E9        ; 10: �R�}���h/�ڂ�����
    dw $11C5        ; 11: �����̕\�����X�V����
    dw $4D80        ; 12: �ΏۑI��
    dw $4CEF        ; 13: ���[���b�g����
    dw $FD07        ; 14: ���j���[��ύX����

;--------------------------------
; [�퓬] ���j���[�R���g���[���������[�`���A�h���X
;--------------------------------
org $C13A96
FILEPOS_BTL_CONTROL_ADDR:
    dw $3A95        ; 00: (none)
    dw $416B        ; 01: �L�����N�^�̖��O��\������
    dw $422B        ; 02: �R�}���h���j���[���X�V����
    dw $455B        ; 03:
    dw $43CE        ; 04: �����̕\�����X�V����
    dw $4176        ; 05: ���郁�j���[��\������
    dw $3A95        ; 06: (none)
    dw $422B        ; 07: �R�}���h���j���[���X�V����
    dw $4552        ; 08: �A�C�e����\������
    dw $3CD3        ; 09: ���@����\������
    dw $3CD7        ; 0A: �����@��\������
    dw $3CDC        ; 0B: �����@��\������
    dw $3CE1        ; 0C: ���󖂖@��\������
    dw $3CE6        ; 0D: �������@��\������
    dw $3CEB        ; 0E: ���@��\������
    dw $3CF0        ; 0F: �̂���\������
    dw $3CF5        ; 10: ��������\������
    dw $3CFA        ; 11: �A������\������
    dw $414B        ; 12: ���@�̃}�W�b�N�|�C���g��\������
    dw $421D        ; 13: �`�F���W��\������
    dw $4224        ; 14: �ڂ������\������
    dw $609D        ; 15: �E��/����̑��������ւ���
    dw $60CC        ; 16: ���헓����A�C�e�����Ɉړ�����
    dw $605C        ; 17: �A�C�e���������ւ���
    dw $60BB        ; 18: �A�C�e�������畐�헓�Ɉړ�����
    dw $3CCD        ; 19: �A�C�e�����̕\�����X�V����
    dw $3CD0        ; 1A: �����̕\�����X�V����
    dw $3CC7        ; 1B: ���@���̕\�����X�V����
    dw $3CCA        ; 1C: ���ꖂ�@���̕\�����X�V����
    dw $382E        ; 1D: �p�[�e�B�̏�Ԃ�\������

;--------------------------------
; �R�}���h�������[�`���A�h���X
;--------------------------------
org $C154F1
FILEPOS_BTL_COMMAND_ADDR:
    dw $4676        ; 00: �ėp���j���[
    dw $46B7        ; 01: ���@��
    dw $46BC        ; 02: �����@
    dw $46C1        ; 03: �����@
    dw $46C6        ; 04: ���󖂖@
    dw $46CB        ; 05: �������@
    dw $46D0        ; 06: ���@
    dw $46DA        ; 07: ������
    dw $46DF        ; 08: �A����
    dw $46D5        ; 09: ��
    dw $4676        ; 0A: �ėp���j���[
    dw $468C        ; 0B: �I��s��
    dw $47B6        ; 0C: �A�C�e��
    dw $468D        ; 0D: ����
    dw $469F        ; 0E: ����
    dw $46AB        ; 0F: ������

; /* End of definition */

; /* Start of core implementation */

;--------------------------------
; PPU RAM ������������
;--------------------------------
org $C2B0B0
MENU_INIT_PPU_RAM:
    PHP
    STZ $2121       ; CGRAM Address
    REP #$20
    STZ $2102       ; OAM Address low byte
    STZ $2116       ; VRAM Address low byte
    LDX #$F5B2      ; (DMA: $02, $04, $00, $02, $00, $20, $02)
    JSR $A0F6       ; OAM ��ݒ肷��
    LDX #$F5B9      ; (DMA: $02, $22, $00, $73, $7E, $00, $02)
    JSR $A0F6       ; CG ��ݒ肷��
    LDX #$F58B      ; (DMA: $01, $18, $00, $30, $7E, $00, $40)
    JSR $A0F6       ; VRAM ��ݒ肷��
    LDX #$EFD9      ; (DMA: $01, $18, $00, $B0, $7E, $00, $20), ($2116:
                    ; $00, $30),
    JSR $D9FB       ; VRAM ��ݒ肷��
    PLP
    RTS

;--------------------------------
; �L�[���͂��擾����
;--------------------------------
; Returns:
;   $00:   Input Press (axlr----)
;   $01:   Input Press (byetUDLR)
;   $02:   Input Hold (axlr----)
;   $03:   Input Hold (byetUDLR)
;   $04:   Joypad Status (axlr----)
;   $05:   Joypad Status (byetUDLR)
;   $0106: Joypad Status (axlr----)
;   $0107: Joypad Status (byetUDLR)
;   $0108: Input Hold (axlr----)
;   $0109: Input Hold (byetUDLR)
;   $010A: Input Press (axlr----)
;   $010B: Input Press (byetUDLR)
;
; Variables:
;   $010C:       �L�[���͐��� (0: �W��, 80: AB ���s�[�g�L��)
;   $010D:       �L�[���͒��̃L�����N�^�̔ԍ�
;   $010E:       �O��̃L�[���͂̌���
;   $010F:       �O��̃L�[���͂̌���
;   $0114: pad1  �O��̃L�[���͂̌���
;   $0115: pad1  �O��̃L�[���͂̌���
;   $0116: pad2  �O��̃L�[���͂̌���
;   $0117: pad2  �O��̃L�[���͂̌���
;   $0118:       �L�[���͒x������
;   $0119:       �L�[���̓��s�[�g���[�g
;   $011A: pad1  �L�[���͒x������(���ݒl)
;   $011B: pad1  0x00
;   $011C: pad2  �L�[���͒x������(���ݒl)
;   $011D: pad2  0x00
;   $011E: pad1  �L�[���̓��s�[�g�Ώ� /* added */
;   $011F: pad1  �L�[���̓��s�[�g�Ώ� /* added */
;   $0120: pad2  �L�[���̓��s�[�g�Ώ� /* added */
;   $0121: pad2  �L�[���̓��s�[�g�Ώ� /* added */
;   $0122: pad1  �O��̃��s�[�g�����̌��� /* added */
;   $0123: pad1  �O��̃��s�[�g�����̌��� /* added */
;   $0124: pad2  �O��̃��s�[�g�����̌��� /* added */
;   $0125: pad2  �O��̃��s�[�g�����̌��� /* added */
;   $014D:       �L�[���͐ݒ� (0: �ʏ�, 0�ȊO: �퓬)
;--------------------------------
org $C2FE5B
GET_JOYPAD:
    PHP
    REP #$20
    PHA
    PHP
    PHX
    PHY
    PHB
    PHD
    SEP #$20
    REP #$10
    LDA #$00
    PHA
    PLB             ; DBR = $00
    PEA $0100
    PLD             ; D = $0100
    LDA #$01

.joypad_wait
    BIT $4212       ; Auto-Joypad �������ł���܂ŃE�F�C�g
    BNE .joypad_wait

    LDY #$0000
    LDA $4D         ; �L�[���͐ݒ� (0: �ʏ�, 0�ȊO: �퓬)
    BEQ .multi_disabled

    LDA $0974       ; �R���t�B�O (40: �J�X�^��, 80: �}���`)
    AND #$80        ; #$80 = "�}���`"
    BEQ .multi_disabled

    LDA $010D       ; �L�[���͒��̃L�����N�^�̔ԍ�
    REP #$20
    AND #$0003
    TAX
    LDA $097C,X     ; �R���t�B�O (�}���`�R���g���[���ݒ�)
    AND #$00FF
    BEQ .multi_disabled

    INY

.multi_disabled
    REP #$20
    STY $12         ; �R���g���[���ݒ� (0: pad1, 1: pad2)
    TYA
    ASL
    TAX
    LDA $4218,X     ; Joypad Registers
    STA $06         ; Joypad Status
    AND #$000F
    BEQ .joypad_true

    STZ $06         ; Joypad Status

.joypad_true
    LDA $14,X       ; �O��̃L�[���͂̌��� ($0114: pad1, $0116: pad2)
    STA $0E         ; �O��̃L�[���͂̌���
    JSR GET_CONFIGURED_JOYPAD
    LDA $12         ; �R���g���[���ݒ� (0: pad1, 1: pad2)
    ASL
    TAX
    LDA $0E         ; �O��̃L�[���͂̌���
    STA $14,X       ; �O��̃L�[���͂̌��� ($0114: pad1, $0116: pad2)
    PLD
    LDA $010A       ; Input Press (byetUDLR axlr----)
    STA $00
    LDA $0108       ; Input Hold (byetUDLR axlr----)
    STA $02
    LDA $0106       ; Joypad Status
    STA $04
    PLB
    PLY
    PLX
    PLP
    PLA
    PLP
    RTS

;--------------------------------
; �L�[���͐ݒ�ɑΉ������l���擾 ($06: Joypad Status, $08: Hold, $0A: Press)
;--------------------------------
org $C2FED0
GET_CONFIGURED_JOYPAD:
    LDA $0974       ; �R���t�B�O (40: �J�X�^��, 80: �}���`)
    AND #$0040      ; #$0040 = "�J�X�^��"
    BNE .custom_init

    LDA $06         ; Joypad Status
    STA $08         ; Input Hold (byetUDLR axlr----)
    BRA .input_setup

.custom_init
    LDA $06         ; Joypad Status
    AND #$1F0F      ; #$1F0F = "Start, Up, Down, Left, Right"
    STA $08         ; Input Hold (byetUDLR axlr----)
    LDX #$0000

.custom_begin
    LDA $06         ; Joypad Status
    AND FILEPOS_INPUT_CONFIG,X
    BEQ .custom_continue

    LDA $26,X       ; �R���t�B�O (���͒l)
    TSB $08         ; Input Hold (byetUDLR axlr----)

.custom_continue
    INX
    INX
    CPX #$000E
    BNE .custom_begin

.input_setup
    LDA $0E         ; �O��̃L�[���͂̌���
    EOR #$FFFF
    AND $08         ; Input Hold (byetUDLR axlr----)
    STA $0A         ; Input Press (byetUDLR axlr----)
    LDA $12         ; �R���g���[���ݒ� (0: pad1, 1: pad2)
    ASL
    TAX
    LDA $08         ; Input Hold (byetUDLR axlr----)
    STA $0E         ; �O��̃L�[���͂̌���
    BIT $0B         ; $0C: �L�[���͐��� (0: �W��, 80: AB ���s�[�g�L��)
    BMI .enable_ab_repeat

    AND #$7F7F      ; ���s�[�g�����������: �퓬���łȂ���� A, B �̓��s�[�g
                    ; �s��

.enable_ab_repeat
    AND #$8FB0      ; ���s�[�g�����������: A, B, Up, Down, Left, Right,
                    ; L, R
    STA $10         ; ���s�[�g�̑Ώ�
    BEQ .repeat_update
                    ; ���͂��Ȃ���΃��s�[�g������������

    CMP $22,X       ; �O��̃��s�[�g�����̌���
    BNE .repeat_start

    LDA $1A,X       ; �L�[���͒x������(���ݒl)
    DEC
    BEQ .repeat_set_input

    BPL .repeat_set_delay

.repeat_set_input
    LDA $1E,X       ; �L�[���̓��s�[�g�Ώ�
    TSB $0A         ; Input Press (byetUDLR axlr----)
    LDA $19         ; �L�[���̓��s�[�g���[�g
    BRA .repeat_set_delay

.repeat_start
    EOR $1E,X       ; �L�[���̓��s�[�g�Ώ�
    AND $10         ; ���s�[�g�������ɕʂ̃L�[����͂����ꍇ...
    BNE .repeat_update

    LDA $10         ; ���s�[�g�������Ɍ��݂̃L�[��������ꍇ...

.repeat_update
    STA $1E,X       ; �L�[���̓��s�[�g�Ώ�
    BIT #$0080      ; #$0080 = "A"
    BEQ .repeat_init_delay

    LDA #$0020      ; �L�[���͒x������(A): 32
    BRA .repeat_set_delay

.repeat_init_delay
    LDA $18         ; �L�[���͒x������(��)

.repeat_set_delay
    AND #$00FF
    STA $1A,X       ; �L�[���͒x������(���ݒl)
    LDA $10         ; ���s�[�g�̑Ώ�
    STA $22,X       ; �O��̃��s�[�g�����̌���
    RTS

    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; �L�[���͐ݒ���X�V���� (�퓬)
;--------------------------------
org $C2FF56
SET_BATTLE_JOYPAD_CONFIG:

;--------------------------------
; �L�[���͐ݒ���X�V���� (�ʏ�)
;--------------------------------
org $C2FF68
SET_NORMAL_JOYPAD_CONFIG:

;--------------------------------
; �L�[���͐ݒ��ǂݍ���
;--------------------------------
org $C2FF7D
LOAD_JOYPAD_CONFIG:
    PHB
    PHD
    PHA
    PHX
    PHY
    PHP
    PEA $0000
    PLB
    PLB             ; DBR = $00
    REP #$30
    PEA $0100
    PLD             ; D = $0100
    LDA #$0416      ; ($18 = 22), ($19 = 4)
    STA $18         ; ($18: �L�[���͒x������), ($19: �L�[���̓��s�[�g���[�g)
    STZ $4D         ; �L�[���͐ݒ� (0: �ʏ�, 0�ȊO: �퓬)
    LDY #$0000
    TYX

.transfer_config
    LDA $0975,Y     ; �R���t�B�O (�{�^���̐ݒ�)
    JSR GET_INPUT_CONFIG
    STA $26,X       ; �R���t�B�O (���͒l)
    INY
    INX
    INX
    CPY #$0007
    BNE .transfer_config

    STZ $0E         ; �O��̃L�[���͂̌���
    STZ $14         ; �O��̃L�[���͂̌��� ($0114: pad1)
    STZ $16         ; �O��̃L�[���͂̌��� ($0116: pad2)
    LDA #$0000      ; <- LDA #$0101
    LDX #$000C

.init_input_delay
    DEX
    DEX
    STA $1A,X       ; �L�[���͒x������(���ݒl)
    BNE .init_input_delay

    PLP
    PLY
    PLX
    PLA
    PLD
    PLB
    RTS

;--------------------------------
; A���W�X�^�ɃR���t�B�O���͐ݒ�̒l���Z�b�g���� (80: A, 40: B, 20: X, 10: Y,
; 8: R, 4: L)
;--------------------------------
org $C2FFC2
GET_INPUT_CONFIG:
    PHX
    AND #$00FC
    XBA
    LDX #$0000

.begin
    ASL
    BCS .break

    INX
    INX
    CPX #$000C
    BNE .begin

    LDX #$0000

.break
    LDA FILEPOS_INPUT_CONFIG,X
    PLX
    RTS

;--------------------------------
; ���j���[�������I������
;--------------------------------
org $C2A02D
MENU_RETURN:
    JSR SCREEN_DISABLE

MENU_EXIT:
    SEP #$20
    RTL

;---------------------------------
; ���j���[��ʂ�\������ (A���W�X�^: ���)
;---------------------------------
org $C2A06B
MENU_START:
    SEP #$20
    STA $43         ; ���j���[�R�}���h�ԍ�
    JSR MENU_LOAD_SCREEN
    REP #$20
    LDA $43         ; ���j���[�R�}���h�ԍ�
    AND #$00FF
    CMP #$000C      ; #$000C = "���[�h"
    BNE .not_load_command

    LDA $39         ; �j���[�Q�[�����J�n���� (0: ON, 1: OFF)
    BEQ MENU_EXIT   ; �Z�[�u�����݂��Ȃ��ꍇ�̓��[�h��ʂ�\�������Ƀj���[�Q
                    ; �[�����J�n����

.not_load_command
    SEP #$20
    LDA #$00
    PHA
    PLB             ; DBR = $00
    JSR MENU_INIT_PPU_RAM
    LDA #$04        ; #$04 = "Screen Settings"
    STA $CA         ; DMA �����s����`�����l��
    LDA #$00
    STA $7E7511     ; BG ���X�V����
    JSR $A106       ; Wait for V-Blank
    LDA $7E750E     ; HDMA �����s����`�����l��
    STA $420C       ; HDMA Enable
    JSR SCREEN_ENABLE
    JMP MENU_INPUT

;---------------------------------
; ���j���[�̎�ނɂ���ĕ��򂷂�
;---------------------------------
MENU_LOAD_SCREEN:
    LDA #$7E
    PHA
    PLB             ; DBR = $7E
    REP #$20
    JSR $C16A       ; ���j���[��ʂ�ݒ肷��
    JSR $A16E       ; OAM ������������
    LDA $43         ; ���j���[�R�}���h�ԍ�
    AND #$00FF
    DEC
    ASL
    TAX
    LDA FILEPOS_MENU_ADDR,X
    STA $C7
    JMP ($01C7)

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP

;--------------------------------
; ��ʕ\����L���ɂ���
;--------------------------------
org $C2A0D9
SCREEN_ENABLE:
    SEP #$20
    LDA $004210     ; NMI Flag and 5A22 Version
    LDA #$81        ; #$81 = NMI Enable | Joypad Enable
    STA $004200     ; Interrupt Enable Flags
    LDA #$00
    STA $7E7522
    STA $7E7525
    LDA #$03        ; #$03 = "�t�F�[�h�C��"
    STA $7E7513
    RTS

;--------------------------------
; ��ʕ\���𖳌��ɂ���
;--------------------------------
org $C2B2BD
SCREEN_DISABLE:
    SEP #$20
    LDA #$00
    STA $7E7510     ; �J�[�\���̃A�j���[�V��������: �Ώ� (1: ON, 5: ALL)
    STA $7E750F     ; �W���u�̃A�j���[�V��������: �Ώ�
    STA $7E751D     ; �W���u�̃A�j���[�V��������: �^�C�}�[
    STA $7E751E     ; �W���u�̃A�j���[�V��������: ���
    STZ $CA         ; DMA �����s����`�����l��
    LDA #$04        ; #$04 = "�t�F�[�h�A�E�g"
    STA $7E7513

.screen_wait
    JSR $E66F       ; NMI ����������܂ŃE�F�C�g
    JSR $FC2F       ; Wait for Menu
    LDA $7E7513     ; �t�F�[�h�A�E�g����������܂ŌJ��Ԃ�
    BNE .screen_wait

    LDA #$01        ; #$01 = Joypad Enable
    STA $004200     ; Interrupt Enable Flags
    JSR $A106       ; Wait for V-Blank
    LDA #$00        ; #$00 = HDMA Disable
    STA $00420C     ; HDMA Enable
    LDA #$80        ; #$80 = Force Blank
    STA $002100     ; Screen Display
    RTS

;--------------------------------
; �L�[���͂ɂ���ĕ��򂷂�
;--------------------------------
org $C2A2E9
MENU_INPUT:
    SEP #$20
    REP #$10
    JSR $E66F       ; NMI ����������܂ŃE�F�C�g
    JSR $FC2F       ; Wait for Menu
    PEA $7E7E
    PLB
    PLB             ; DBR = $7E
    BIT $45         ; ����t���O (80: �f�����j���[���s��)
    BMI .demo_parse

    JSR GET_INPUT_INDEX
    BRA .input_set

.demo_parse
    LDX $49         ; (�f�����j���[�Ŏg�p: �E�F�C�g)
    BMI .demo_next

    DEX
    STX $49         ; (�f�����j���[�Ŏg�p: �E�F�C�g)
    LDA $8E         ; $8E = 0
    BRA .input_set  ; �E�F�C�g����������܂ŉ������Ȃ�

.demo_next
    LDA $48         ; (�f�����j���[�Ŏg�p: ���͂��i�[���ꂽ�o���N)
    BNE .demo_input ; $48 ���[���Ȃ璆�f����

    LDA #$08        ; #$08 = "�f�����j���[���I������"
    BRA .input_set

.demo_input
    LDA [$46]       ; (�f�����j���[�Ŏg�p: ���͂��i�[���ꂽ�A�h���X)
    LDX $46
    INX             ; ���̃A�h���X��
    STX $46
    LDX #$000F      ; �L�[���͒x������ = 15
    STX $49         ; (�f�����j���[�Ŏg�p: �E�F�C�g)

.input_set
    STA $4B         ; (�f�����j���[�Ŏg�p: ����)
    BIT #$10        ; 0x10�`0x1F �̓E�F�C�g
    BEQ .input_parse

    LDA #$07        ; #$07 = "�f�����j���[�̃E�F�C�g"

.input_parse
    REP #$20
    AND #$000F
    ASL
    TAX
    LDA FILEPOS_$C2A36ADDR,X
    STA $C7
    SEP #$20
    JMP ($01C7)

;--------------------------------
; �L�[���͂ɑΉ������l�ɕϊ�����
;--------------------------------
org $C2A33A
GET_INPUT_INDEX:
    PHP
    REP #$20
    LDX $8E         ; $8E = 0

.begin
    LDA $0A         ; Input Press (byetUDLR axlr----)
    AND FILEPOS_INPUT_INDEX,X
    BNE .break

    INX
    INX
    INX
    CPX #$0015
    BNE .begin

.break
    LDA FILEPOS_INPUT_INDEX+2,X
    AND #$00FF      ; ���͂��ꂽ�L�[�ɂ���Č��ʂ𕪊� (01: A, 02: B,
                    ; 03: Up, 04: Down, 05: Left, 06: Right, 00: (none))
    PLP
    RTS

;--------------------------------
; �L�������J�[�\���C���f�b�N�X�𕜌�����
;--------------------------------
org $C2E67C
RESTORE_CURSOR_POSITION:
    PHP
    REP #$20
    LDA $54         ; ���j���[�ԍ�
    AND #$00FF
    TAX
    SEP #$20
    LDA $000973     ; �R���t�B�O (01: ���ׂĊO��, 02: ���m����, 04: �L��,
                    ; 80: �Q�[�WOFF)
    AND #$04        ; #$04 = "�L��"
    BNE .remember

.reset
    LDA FILEPOS_CURSOR_RESET,X
    STA $53         ; �J�[�\���C���f�b�N�X
    BRA .ret

.remember
    LDA FILEPOS_CURSOR_REMEMBER,X
    BEQ .reset      ; $00 ���w�肳�ꂽ�ꍇ�͖���

    REP #$20
    AND #$00FF
    TAX
    SEP #$20
    LDA $00,X
    STA $53         ; �J�[�\���C���f�b�N�X

.ret
    PLP
    RTS

;--------------------------------
; �f�t�H���g�̃R���t�B�O�f�[�^��ǂݍ���
;--------------------------------
org $C2A1F0
LOAD_DEFAULT_CONFIG:
    PHB
    PHP
    REP #$20
    LDX #$F342      ; �u���b�N�]�����ߗp(X) = $C0:F342
    LDY #$0970      ; �u���b�N�]�����ߗp(Y) = $00:0970: �R���t�B�O
    LDA #$001F      ; �u���b�N�]�����ߗp(A) = 31
    MVN $00,$C0
    LDA #$0100
    STA $042D       ; �I�������R�}���h�̈ʒu(1�Ԗڂ̃L�����N�^)
    LDA #$0302
    STA $042F       ; �I�������R�}���h�̈ʒu(3�Ԗڂ̃L�����N�^)
    LDX #FILEPOS_CURSOR_DEFAULT
    LDY #$0159      ; �u���b�N�]�����ߗp(Y) = $00:0159
    LDA #$0011      ; �u���b�N�]�����ߗp(A) = 17
    MVN $00,FILEPOS_CURSOR_DEFAULT>>16
    PLP
    PLB
    RTS

    NOP
    NOP
    NOP

;--------------------------------
; �X�N���[���^�C�v No.007(07): $2B66/$2B67 ���g�p���� (���@/���@,
; ���O�ݒ�/�����I��)
;--------------------------------
org $C2A6FC
MENU_SCROLL_BLUE_MAGIC:
    LDA $58         ; �X�N���[������
    DEC
    AND #$0003
    ASL
    TAX
    LDA $C0F3AB,X   ; $FF00(-1,0), $0100(+1,0), $00FF(0,-1), $0001(0,+1)
    STZ $2B6E       ; ��ʍ��ɐ؂�ւ������ǂ��� (0: OFF, 1, ON)
    SEP #$20
    LDX $8E         ; $8E = 0

.set_position
    CLC
    ADC $2B66,X     ; �����̑I���ʒu(��)
    JSR $A780       ; ��ʊO�ւ̐؂�ւ��𐧌䂷��
    STA $2B66,X     ; �����̑I���ʒu(��)
    XBA
    INX
    CPX #$0002
    BNE .set_position

    LDA $2B67       ; �����̑I���ʒu(�c)
    STA $004202     ; ��Z��(8bit�~8bit) ��搔
    LDA $2B68       ; �����̈�̃T�C�Y(�c)
    STA $004203     ; ��Z��(8bit�~8bit) �搔
    NOP             ; (2 cycles)
    NOP             ; (2 cycles)
    NOP             ; (2 cycles)
    CLC             ; (2 cycles)
    LDA $004216     ; ��Z����(����) or ���Z�]�茋��
    ADC $2B66       ; �����̑I���ʒu(��)
    REP #$20
    AND #$00FF
    TAX
    LDA $7A00,X     ; Menu buffer
    AND #$00FF
    CMP #$00FF      ; 0xFF �͑I���ł��Ȃ�
    BEQ MENU_SCROLL_BLUE_MAGIC

    TXA
    INC
    SEP #$20
    JSR SET_BLUE_MAGIC_CURSOR_POSITION
    JMP $E6AB       ; �J�[�\���̕\�����X�V����

INIT_BLUE_MAGIC_CURSOR_POSITION:
    STZ $2B66       ; �����̑I���ʒu(��)
    STZ $2B67       ; �����̑I���ʒu(�c)
    LDA #$01
    STA $55         ; �J�[�\���ʒu

SET_BLUE_MAGIC_CURSOR_POSITION:
    LDX $2B6A       ; �����I��p�̃J�[�\������A�h���X�ւ̃I�t�Z�b�g
    STA $7601,X
    LDA #$00
    XBA
    LDA $2B66       ; �����̑I���ʒu(��)
    AND #$0F
    TAY
    LDA $2B70,Y     ; �����̑I���J�[�\���ʒu(��)
    STA $7602,X
    LDA $2B67       ; �����̑I���ʒu(�c)
    AND #$0F
    TAY
    LDA $2B80,Y     ; �����̑I���J�[�\���ʒu(�c)
    STA $7603,X
    RTS

;--------------------------------
; ���j���[�R�}���h No.003(03): �W���u(�ړ�)
;--------------------------------
org $C2A96F
MENU_MOVE_JOB:
    LDA $55         ; �J�[�\���ʒu
    AND #$00FF
    DEC
    TAX
    SEP #$20
    LDA $6F         ; �I�������W���u
    BNE .cannot_change
                    ; �W���u��I�𒆂͈ړ��ł��Ȃ�

    LDA $7A00,X     ; Menu buffer
    BPL .end_change ; �ȉ��͑Ώۂ̃W���u���擾���Ă��Ȃ��ꍇ

    LDA $53         ; �J�[�\���C���f�b�N�X
    SEC
    SBC $50         ; �ύX�O�̃J�[�\���C���f�b�N�X
    CMP #$01
    BNE .cannot_change

    STZ $53         ; �����҂񂩂�E�����ֈړ������ꍇ�͏����ʒu��
    BRA .end_change ; ����ȊO�͈ړ��ł��Ȃ�

.cannot_change
    LDA $50         ; �ύX�O�̃J�[�\���C���f�b�N�X
    STA $53         ; �J�[�\���C���f�b�N�X

.end_change
    JSR $E6AB       ; �J�[�\���̕\�����X�V����
    LDA $52         ; �ύX�O�̃J�[�\���ʒu
    LDX #$0C0C
    JSR UPDATE_JOBS_HIGHLIGHT
    JSR $CD57       ; �I�������W���u�̕\����ݒ肷��
    JSR $FAD4       ; OAM ���X�V����
    JSR $FAF0       ; CG ���X�V����
    JSR REDRAW_JOBS_HIGHLIGHT
    JSR $A9D9       ; �W���u�̐�����\������
    JSR $CD08       ; �W���u��(���O | ���x�� | �A�r���e�B�|�C���g | �����ł�
                    ; �镐��)��\������
    JMP $A69D       ; BG4 ���X�V����

;--------------------------------
; �W���u�̃n�C���C�g�̐ݒ���X�V���� (A���W�X�^: �ʒu, XL: �L�����N�^,
; XH: ��)
;--------------------------------
UPDATE_JOBS_HIGHLIGHT:
    STX $EA
    REP #$20
    AND #$00FF
    DEC
    ASL
    ASL
    TAY
    ASL
    TAX
    SEP #$20
    LDA $0293,X     ; (character)
    AND #$F1
    ORA $EA
    STA $0293,X     ; (character)
    STA $0297,X     ; (character)
    LDA $0363,Y     ; (stars)
    AND #$F1
    ORA $EB
    STA $0363,Y     ; (stars)
    RTS

;--------------------------------
; ���j���[�R�}���h No.003(03): �W���u
;--------------------------------
org $C2CCCB
MENU_JOB:
    PHB
    SEP #$20
    LDA #$06        ; #$06 = "�W���u"
    JSR $CFBD       ; ���j���[�ԍ���A���W�X�^�̒l�ɐݒ肷�� | �L�^�����J�[�\
                    ; ���C���f�b�N�X�𕜌����� | �J�[�\���̕\���̏����ݒ��
                    ; �s�� | �����̔ԍ�/�A�h���X��ݒ肷��
                    ; /* LONGA ON */
    NOP
    NOP
    NOP
    NOP
    NOP
    STZ $6F         ; �I�������W���u
    JSR $D503       ; ($D8�`$DF) = (�W���u�ԍ� | �W���u���x�� | �A�r���e�B�|
                    ; �C���g | ���̃W���u���x���ɕK�v�ȃA�r���e�B�|�C���g)
    JSR $E464       ; ���݂̃W���u�̃��x���ƃA�r���e�B�|�C���g���i�[����
    JSR $CDC6       ; �L�����N�^�̖��O��\������ | �W���u�̖��O��\������ |
                    ; �L�����N�^�̃��x����\������ | �W���u�̃��x��/�L����\
                    ; ������ | �W���u�� ABP ��\������
    JSR $D388       ; �S�W���u�̃X�v���C�g���擾����
    JSR $CECC       ; $7A00 �ɑI���ł���W���u���Z�b�g����
    JSR $CDE3       ; �e�W���u�̃X�v���C�g�̕\����ݒ肷�� | �e�W���u���}�X
                    ; �^�[���Ă��邩�ǂ������肷��
    JSR $CD57       ; �I�������W���u�̕\����ݒ肷��
    PHP
    SEP #$20
    LDA #$00        ; #$00 = "�i�C�g"
    STA $5F         ; �Ō�ɑI�������W���u�̈ʒu
    STZ $2D11       ; �W���u��ύX�������ǂ����̃t���O (1: �ύX����)
    PLP
    LDX #$E95A      ; $6644, $001C, $0038
    JSR $C6E9       ; ���b�Z�[�W�̓]����E�����E�ő�T�C�Y��ݒ肷�� (src:
                    ; $C00000 + X)
    JSR $A9D9       ; �W���u�̐�����\������
    JSR $CD08       ; �W���u��(���O | ���x�� | �A�r���e�B�|�C���g | �����ł�
                    ; �镐��)��\������
    PLB
    RTS

;--------------------------------
; �I�������W���u�̕\����ݒ肷��
;--------------------------------
org $C2CD57
    PHP
    REP #$20
    LDA $55         ; �J�[�\���ʒu
    AND #$00FF
    DEC
    TAY
    LDX $80         ; �����A�h���X�ւ̃C���f�b�N�X
    SEP #$20
    LDA $7A00,Y     ; Menu buffer
    STA $EB
    LDA $0500,X     ; �L�����N�^�ԍ�(bit0-3: �ԍ� | 20: ����, 40: ���E,
                    ; 80: ���)
    AND #$07
    STA $EA
    REP #$20
    LDA #$C180      ; (dest: $7EC180)
    STA $E4
    JSR $D2DB       ; �W���u�̃X�v���C�g���i�[����Ă���A�h���X���擾����
    LDA #$000C
    LDX #$ED31      ; $0000, $0000, $0020, $0020, $0040, $0200, $0060,
                    ; $0220, $0080, $0400, $00A0, $0420,
                    ; $03C0, $0040, $03E0, $0060, $0400, $0240, $0420,
                    ; $0260, $0440, $0440, $0460, $0460
    JSR $D304       ; �X�v���C�g���擾���� (bank: $E2 | src:
                    ; ($C00000,X) + ($E0) | dest: ($C00002,X) + ($E4)) |
                    ; count: A���W�X�^)
    LDA $EA
    AND #$1F07
    LDY #$0005
    JSR $D492       ; �W���u�� CG ���擾���� (AL: �L�����N�^�ԍ�, AH: �W���u
                    ; �ԍ�)
    LDA $55         ; �J�[�\���ʒu
    LDX #$080A
    JSR UPDATE_JOBS_HIGHLIGHT
    PLP
    RTS

;--------------------------------
; ($7E: �����̔ԍ�) �̃L�����N�^�̃W���u���x���ƃA�r���e�B�|�C���g���i�[����
;--------------------------------
SETPARAM_JOB_LVABP:
    PHP
    REP #$20
    JSR $D503       ; ($D8�`$DF) = (�W���u�ԍ� | �W���u���x�� | �A�r���e�B�|
                    ; �C���g | ���̃W���u���x���ɕK�v�ȃA�r���e�B�|�C���g)
    JSR $E464       ; ���݂̃W���u�̃��x���ƃA�r���e�B�|�C���g���i�[����
    PLP
    RTS

;--------------------------------
; �I���������@�̎�ނ��Z�b�g����
;--------------------------------
SETCONF_USED_MAGIC:
    PHP
    SEP #$20
    LDX $7E         ; �����̔ԍ�
    LDA $53         ; �J�[�\���C���f�b�N�X
    STA $63,X       ; �I���������@�̎��(1�Ԗڂ̃L�����N�^)
    PLP
    RTS

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP

;--------------------------------
; �S�W���u�̕\�����X�V����
;--------------------------------
; /* org $C2CDBA */
REDRAW_JOBS:
    LDX #$E628      ; �u���b�N�]�����ߗp(X) = $C0:E628
    JMP $A6A0       ; NMI �̔������� DMA �]�����s�� ($2116: $00, $30),
                    ; ($4300: $01, $18, $00, $B0, $7E, $80, $11)

;--------------------------------
; �S�W���u�̃n�C���C�g�̕\�����X�V����
;--------------------------------
; /* org $C2CDC0 */
REDRAW_JOBS_HIGHLIGHT:
    LDX #$EE53      ; �u���b�N�]�����ߗp(X) = $C0:EE53
    JMP $A6A0       ; NMI �̔������� DMA �]�����s�� ($2116: $C0, $38),
                    ; ($4300: $01, $18, $80, $C1, $7E, $80, $06)

;--------------------------------
; �S�W���u�̃X�v���C�g���擾����
;--------------------------------
org $C2D388
TRANSFER_JOBS_SPRITES:
    PHB
    PHP
    REP #$20
    LDX #$1800

.init_dest
    STZ $AFFE,X     ; ($B000�`$C7FE) = 0x00
    DEX
    DEX
    BNE .init_dest

    LDX $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $0500,X     ; �L�����N�^�ԍ�(bit0-3: �ԍ� | 20: ����, 40: ���E,
                    ; 80: ���)
    AND #$0007
    STA $EA         ; (�L�����N�^�̔ԍ�)

.begin
    LDA $EB         ; (�J�E���^)
    AND #$0018      ; #$0018 = %00011000
    ASL
    ASL
    ORA $EB         ; (�J�E���^)
    AND #$0067      ; #$0067 = %01100111
    ASL
    XBA
    LSR
    LSR
    LSR
    ADC #$B000      ; (dest: $7EB000)
    STA $E4
    JSR $D2DB       ; �W���u�̃X�v���C�g���i�[����Ă���A�h���X���擾����
    LDA #$0006
    LDX #$ED31
    JSR $D304       ; �X�v���C�g���擾���� (bank: $E2 | src:
                    ; ($C00000,X) + ($E0) | dest: ($C00002,X) + ($E4)) |
                    ; count: A���W�X�^)
    SEP #$20
    INC $EB         ; (�J�E���^)
    LDA $EB         ; (�J�E���^)
    CMP #$16        ; #$16 = "�W���u�̐� (22 ���)"
    REP #$20
    BNE .begin

    PLP
    PLB
    RTS

    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; ���j���[�R�}���h No.004(04): �����ύX(�I��)
;--------------------------------
org $C2AA12
MENU_UNFOCUS_EQUIP:
    STZ $6F         ; �I�������J�[�\���ʒu
    SEP #$20
    LDA #$02        ; #$02 = "BG2 enable"
    TSB $7500       ; Main Screen Designation
    LDA #$04        ; #$04 = "Screen Settings"
    TSB $CA         ; DMA �����s����`�����l��
    JSR GET_MENU_PROPERTY_EQUIP_SUBMENU
    JSR $A8F0       ; Run Menu Script (src: A���W�X�^) | BG2 ���X�V����
    RTS

    NOP

GET_MENU_PROPERTY_EQUIP_SUBMENU:
    LDA $74         ; �����ύX�̎��
    CMP #$03        ; #$03 = "�͂���"
    BEQ .unequip_selected

.equip_selected
    LDX #$B065      ; ("[������]")
    RTS

.unequip_selected
    LDX #$B07D      ; ("[�͂���]")
    RTS

;--------------------------------
; ���j���[�R�}���h No.004(04): �����ύX
;--------------------------------
org $C2CA37
MENU_EQUIP:
    SEP #$20
    LDA #$08        ; #$08 = "�����ύX"
    JSR $CFBD       ; ���j���[�ԍ���A���W�X�^�̒l�ɐݒ肷�� | �L�^�����J�[�\
                    ; ���C���f�b�N�X�𕜌����� | �J�[�\���̕\���̏����ݒ��
                    ; �s�� | �����̔ԍ�/�A�h���X��ݒ肷��
                    ; /* LONGA ON */
    STZ $6F         ; �I�������J�[�\���ʒu
    STZ $72
    SEP #$20
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    JSR $E6AB       ; �J�[�\���̕\�����X�V����
    LDX #$B036      ; ("[������ �������傤 ���ׂĂ͂��� �͂��� �����]")
    LDA #$05        ; #$05 = "������"
    STA $5E         ; �Ō�ɑI�����������̈ʒu
    DEC
    CMP $53         ; �J�[�\���C���f�b�N�X
    BMI .main_menu  ; �l�� 0x05 �ȏ�Ȃ烁�C�����j���[��\��
                    ; �l�� 0x00�`0x04 �Ȃ�T�u���j���[��\��

.sub_menu
    JSR GET_MENU_PROPERTY_EQUIP_SUBMENU

.main_menu
    REP #$20
    TXA
    JSR $C1B8       ; Run Menu Script
    LDA #$1E98      ; (X = $98, Y = $1E)
    JSR $C8DE       ; �L�����N�^�̃X�v���C�g��\������ (AL: X���W,
                    ; AH: Y���W)
    LDY #$51AC      ; (dest: $7E51AC)
    JSR $D533       ; �L�����N�^�̖��O��\������ (Y���W�X�^: dest)
    LDY #$522C      ; (dest: $7E522C)
    JSR $D554       ; �W���u�̖��O��\������ (Y���W�X�^: dest)
    JSR $E76C       ; �L�����N�^�̔\�͒l���A�C�e���ɂ���Đݒ肷��
    JSR $CAC8       ; �L�����N�^�̑������̕\����ݒ肷��
    JSR $CC9E       ; �L�����N�^�̔\�͒l/����̃p�����[�^��\������
    LDY #$52AE      ; (dest: $7E52AE)
    JSR $D7CA       ; ���ݑ����ł��镐��̃A�C�R����\������ (Y���W�X�^:
                    ; dest)
    REP #$20
    STZ $6B         ; �X�N���[���ʒu
    LDA #$00F6
    STA $6D         ; �X�N���[���̏��
    REP #$20
    LDX #$F2D4      ; �u���b�N�]�����ߗp(X) = $C0:F2D4
    LDY #$298A      ; �u���b�N�]�����ߗp(Y) = $7E:298A
    LDA #$0015      ; �u���b�N�]�����ߗp(A) = 21
    MVN $7E,$C0
    LDA #$0001
    STA $29B6       ; �X�N���[���o�[�ʒu (0: $52FC/$55FC, 1: $545C/$585C,
                    ; 2: $537C/$573C, 3: $52FC/$57FC)
    RTS

;--------------------------------
; ���j���[�R�}���h No.004(04): �����ύX: �A�C�e���I��: ���
;--------------------------------
org $C2B7FC
MENU_EQUIP_SELECT_B:
    JSR $AAAF       ; (������̔\�͒l�̕\������������)
    STZ $70
    JMP $B7EE       ; ���j���[�R�}���h No.004(04): �����ύX: �A�C�e���I��:
                    ; ����

;--------------------------------
; �����ł���A�C�e����\������A�h���X��ݒ肷��
;--------------------------------
SET_EQUIP_LIST_POSITION:
    REP #$20
    STY $99
    LDY $8E         ; $8E = 0
    LDX $6B         ; �X�N���[���ʒu
    RTS

    NOP
    NOP
    NOP
    NOP

;--------------------------------
; �����ł���A�C�e���̕\�����X�V����
;--------------------------------
org $C2CAA5
UPDATE_EQUIP_LIST:
    PHB
    PHP
    PEA $7E7E
    PLB
    PLB             ; DBR = $7E
    LDY #$63C4      ; (dest: $7E63C4)
    JSR SET_EQUIP_LIST_POSITION

.begin
    PHX
    PHY
    LDY $99
    JSR $CB8C       ; $99 += 0x80 (���s)
    JSR $E3E3       ; �A�C�e���̖��O/����\������
    PLY
    PLX
    INX
    INY
    CPY #$000A
    BNE .begin

    PLP
    PLB
    RTS

;--------------------------------
; ���j���[�R�}���h No.006(06): �X: �w��: ����
;--------------------------------
org $C2B8AE
MENU_SHOP_BUY_A:
    JSR $B87C       ; ($2809: �A�C�e���̔ԍ�), ($280A: �l�i/�t���O), ($2810:
                    ; �A�C�e���̐���) ���Z�b�g����
    JSR $F070       ; ($2811: ������), ($2812: ������), ($2813: �w��/���p��
                    ; �\�ȏ���l) ���Z�b�g����
    SEP #$20
    LDA $2813       ; �w��/���p�\�ȏ���l (0: �w���ł��Ȃ�)
    BEQ CANNOT_HAVE_ANY_MORE

    LDX #$2815      ; �X: ������
    LDY #$2819      ; �X: �l�i
    JSR $EEC8       ; (X���W�X�^)�̒l - (Y���W�X�^)�̒l = ($281D: 32bit)
    BCC HAVE_NOT_ENOUGH_MONEY

    BIT $2805       ; �X: �J���i�b�N�̓X�C�x���g (80: ON)
    BMI KARNAK_EVENT

    LDA #$0B        ; #$0B = "�w��/���I��"
    JMP INPUT_MOVE

CANNOT_HAVE_ANY_MORE:
    JSR SOUND_BEEP
    LDA #$03        ; ("����Ȃ� �悭�΂�����_������c�c")
    JSR $EEE7       ; �X�̃��b�Z�[�W��\������
    LDA #$01        ; #$01 = "���Ⴊ��"
    BRA CANNOT_BUY

HAVE_NOT_ENOUGH_MONEY:
    JSR SOUND_BEEP
    LDA #$02        ; ("�c�c�����˂� ����Ȃ��悤����?")
    JSR $EEE7       ; �X�̃��b�Z�[�W��\������
    LDA #$00        ; #$00 = "�Ռ�"
    BRA CANNOT_BUY

ALREADY_HAVE:       ; /* added */
    JSR SOUND_BEEP
    LDA #$06        ; ("���� �����Ă��ł���?")
    JSR $EEE7       ; �X�̃��b�Z�[�W��\������
    LDA #$01        ; #$01 = "���Ⴊ��"

CANNOT_BUY:
    JSR SHOP_CANNOT_BUY_ANIMATION
    LDA #$00        ; (�X�̃��b�Z�[�W����������)
    JSR $EEE7       ; �X�̃��b�Z�[�W��\������
    JMP INPUT_WAIT

;--------------------------------
; �J���i�b�N�̓X�C�x���g
;--------------------------------
org $C2B8FD
KARNAK_EVENT:
    LDA #$01
    STA $39         ; ?
    JSR $B922       ; �I�������A�C�e�����w������
    JSR SOUND_BEEP
    REP #$20
    LDA #$B349      ; ("�u���܂���!�v/�u���̂܂� �������Ȃ�!!�v")
    JSR $C1B8       ; Run Menu Script
    JSR $A698       ; BG3 ���X�V����
    LDA #$00        ; #$00 = "�Ռ�"
    JSR $EEFD       ; �w���ł��Ȃ���Ԃ̉��o���s�� (0: �Ռ�, 1: ���Ⴊ��)
    JSR $E658       ; 40/60 �b�̃E�F�C�g
    JMP $A02D       ; ���j���[�������I������

;--------------------------------
; ���j���[�R�}���h No.006(06): �X: �w��: ���I��: ����
;--------------------------------
org $C2B955
MENU_SHOP_BUY_SELECT_A:
;--------------------------------
; �w���������I����A������������Ȃ� /* not used */
;--------------------------------
org $C2B97E
    JMP HAVE_NOT_ENOUGH_MONEY
;--------------------------------
; ����ŃA�C�e�����w���ł��Ȃ��ꍇ�ɃL�����N�^���\�������s����C��
;--------------------------------
SHOP_CANNOT_BUY_ANIMATION:
    XBA
    LDA $2801       ; �X�^�C�v (0: ���@��, 1: ���퉮, 2: �h�, 3: ���,
                    ; 4: �A�N�Z�T��, 5: �M���h, 6: ��: 7: ��������)
    AND #$03
    CMP #$03        ; #$03 = "���/��������"
    BNE .equipment_shop

.item_shop
    XBA
    JMP $E658       ; 40/60 �b�̃E�F�C�g

.equipment_shop
    XBA
    JMP $EEFD       ; �w���ł��Ȃ���Ԃ̉��o���s�� (0: �Ռ�, 1: ���Ⴊ��)

;--------------------------------
; ���j���[�R�}���h No.006(06): �X
;--------------------------------
org $C2C803
MENU_SHOP:
    SEP #$20
    LDA #$7E
    PHA
    PLB             ; DBR = $7E
    LDA $35         ; ���j���[�R�}���h����: �X�̔ԍ�
    STA $2800       ; �X�̔ԍ�
    STZ $39         ; ?
    STZ $2805       ; �X: �J���i�b�N�̓X�C�x���g (80: ON)
    LDA $2800       ; �X�̔ԍ�
    CMP #$3E
    BEQ .do_karnak_event

    CMP #$3F
    BNE .no_karnak_event

.do_karnak_event
    LDA #$80        ; #$80 = "ON"
    STA $2805       ; �X: �J���i�b�N�̓X�C�x���g (80: ON)

.no_karnak_event
    STZ $2804       ; �X: ����t���O (0: �w��, 80: ���p)
    JSR $F18F       ; �X�f�[�^������������
    REP #$20
    LDX $8E         ; $8E = 0

.init_shop_params
    STZ $2807,X     ; �X�őI�������A�C�e���̈ʒu
    INX
    INX
    CPX #$001E
    BNE .init_shop_params

    LDA $0947       ; ������(����)
    STA $2815       ; �X: ������(����)
    LDA $0949       ; ������(���)
    AND #$00FF
    STA $2817       ; �X: ������(���)
    LDA #$967F
    STA $2821       ; (9999999)
    LDA #$0098
    STA $2823       ; (9999999)
    LDX #$51E8      ; (dest: $7E51E8)
    LDY #$2815      ; �X: ������
    LDA #$7E73      ; �o���N: $7E, �T�C�Y: 3, ��: 7
    JSR $E4ED       ; ���l���當������擾���� (X: dest, Y: src, AH: bank,
                    ; AL: (bit0-3: size | bit4-6: ���� | bit7: �[���p�f�B��
                    ; �OON))
    JSR $F15B       ; �X�̖��O���擾���� (�X�^�C�v���ʏ�Ȃ�u����v�̕�����
                    ; ���擾����)
    SEP #$20
    LDA #$18
    STA $2806       ; ���p�ōŌ�ɑI�������A�C�e���̈ʒu
    LDA #$0B        ; #$0B = "�X"
    JSR $CFBD       ; ���j���[�ԍ���A���W�X�^�̒l�ɐݒ肷�� | �L�^�����J�[�\
                    ; ���C���f�b�N�X�𕜌����� | �J�[�\���̕\���̏����ݒ��
                    ; �s�� | �����̔ԍ�/�A�h���X��ݒ肷��
                    ; /* LONGA ON */
    STZ $6B         ; �X�N���[���ʒu
    STZ $6F         ; �I�������J�[�\���ʒu
    LDA #$0003      ; #$0003 = 3
    STA $29B6       ; �X�N���[���o�[�ʒu (0: $52FC/$55FC, 1: $545C/$585C,
                    ; 2: $537C/$573C, 3: $52FC/$57FC)
    LDX #$E954      ; $44C4, $0017, $0045
    JSR $C6E9       ; ���b�Z�[�W�̓]����E�����E�ő�T�C�Y��ݒ肷�� (src:
                    ; $C00000 + X)
    JSR UPDATE_CHARACTER_CG
    RTS

;--------------------------------
; �S�L�����N�^�̃W���u�� CG ���擾����
;--------------------------------
org $C2C881
UPDATE_CHARACTER_CG:
    PHP
    REP #$20
    LDY $8E         ; $8E = 0

.begin
    STY $7E         ; �����̔ԍ�
    JSR $D4C5       ; ($80: �����A�h���X�ւ̃C���f�b�N�X) =
                    ; ($7E: �����̔ԍ�)�~80
    LDX $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $0500,X     ; �L�����N�^�ԍ�(bit0-3: �ԍ� | 20: ����, 40: ���E,
                    ; 80: ���)
    AND #$1F07
    PHY
    JSR $D492       ; �W���u�� CG ���擾���� (AL: �L�����N�^�ԍ�, AH: �W���u
                    ; �ԍ�)
    PLY
    INY
    CPY #$0004
    BNE .begin

    PLP
    RTS

;--------------------------------
; ���j���[�R�}���h No.007(07): �A�C�e��: �I��(�ړ�)
;--------------------------------
org $C2AC1E
MENU_MOVE_ITEM_SELECT:
    NOP             ; [$AC90: �X�^�[�g�ō����X�N���[��] ���폜
    NOP
    NOP

;--------------------------------
; ���j���[�R�}���h No.007(07): �A�C�e��: �A�C�e���I��: ���
;--------------------------------
org $C2BBFA
MENU_ITEM_SELECT_B:
    STZ $6F         ; �I�������J�[�\���ʒu
    STZ $70
    LDA $2889       ; �A�C�e����I�𒆂��ǂ��� (0: 0FF, 1: ON)
    BNE .item_selected

    STZ $2889       ; �A�C�e����I�𒆂��ǂ��� (0: 0FF, 1: ON)
    JSR SETCONF_USED_ITEM
    LDA #$00        ; #$00 = "����"
    JMP INPUT_MOVE

.item_selected
    STZ $2889       ; �A�C�e����I�𒆂��ǂ��� (0: 0FF, 1: ON)
    STZ $7510       ; �J�[�\���̃A�j���[�V��������: �Ώ� (1: ON, 5: ALL)
    JSR $C0E2       ; �I���ς݃J�[�\������������
    JSR $FAD4       ; OAM ���X�V����
    JMP INPUT_WAIT

;--------------------------------
; �I�������A�C�e���̈ʒu���Z�b�g����
;--------------------------------
SETCONF_USED_ITEM:
    LDA $55         ; �J�[�\���ʒu
    DEC
    STA $5B         ; �Ō�ɑI�������A�C�e���̈ʒu
    LDA $6B         ; �X�N���[���ʒu
    STA $5C         ; �Ō�ɑI�������A�C�e���̃X�N���[���ʒu
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@(�J�n)
;--------------------------------
org $C2ACC3
MENU_FOCUS_MAGIC:
    LDA #$B434      ; ("[����܂ق�/����܂ق�/������][���傤����/�܂ق�����
                    ; /�����܂ق�/����]")
    JSR $C1B8       ; Run Menu Script
    JSR $A693       ; BG2 ���X�V����
    JSR $A69D       ; BG4 ���X�V����
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@(�I��)
;--------------------------------
org $C2ACD0         ; moved from $C2ACD6
MENU_UNFOCUS_MAGIC:
    LDA #$B429      ; (���@���X�g�̃E�B���h�E�̈����������)
    JSR $C1B8       ; Run Menu Script
    LDA #$B499      ; ("[����܂ق�/����܂ق�/������][���傤����/�܂ق�����
                    ; /�����܂ق�/����]" ����������)
    JSR $C1B8       ; Run Menu Script
    LDA #$B4A4      ; (���@�̎�ނ̘g��\������)
    JSR $C1B8       ; Run Menu Script
    LDA $7E29E2     ; �I�𒆂̖��@�̎�� (0: ���@��, 1: �����@, 2: �����@,
                    ; 3: ����, 4: ����, 5: ���@, 6: ��)
    AND #$0007
    ASL
    TAX
    LDA $C0F3B3,X   ; (���@�̎�ނ̖���: $B4FD, $B4AF, $B4BF, $B4CF, $B4D9,
                    ; $B4E3, $B4F3)
    JSR $C1B8       ; Run Menu Script
    JSR $A693       ; BG2 ���X�V����
    JSR $A698       ; BG3 ���X�V����
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: ��(�J�n)
;--------------------------------
; /* org $C2ACF9 */
MENU_FOCUS_SONG_LIST:
    LDA #$B48E      ; (���@�̐�������������)
    JSR $C1B8       ; Run Menu Script
;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: �����@,�����@,����,����,���@��(�J�n)
;--------------------------------
; /* org $C2ACFF */
MENU_FOCUS_MAGIC_LIST:
    LDA #$B3FE      ; (���@�E�B���h�E�̘g��\������)
    JSR $C1B8       ; Run Menu Script
    JSR $DE3E       ; ���j���[�ɕ\�����閂�@�̐ݒ������������
    JSR $DF4D       ; ���j���[�ɕ\�����閂�@�̖��O���擾����
    JSR $ADD2       ; ���j���[�R�}���h No.008(08): ���@: ���@(�I��)
    LDA $54         ; ���j���[�ԍ�
    CMP #$13        ; #$13 = "�����@,�����@,����,����,���@��"
    BNE .ret

    LDA $29E2       ; �I�𒆂̖��@�̎�� (0: ���@��, 1: �����@, 2: �����@,
                    ; 3: ����, 4: ����, 5: ���@, 6: ��)
    CMP #$04        ; #$04 = "����"
    BEQ .ret

    LDX $7E         ; �����̔ԍ�
    LDA $0973       ; �R���t�B�O (01: ���ׂĊO��, 02: ���m����, 04: �L��,
                    ; 80: �Q�[�WOFF)
    AND #$04        ; #$04 = "�L��"
    BNE .remember

.reset
    LDA #$07        ; #$07 = "1 �Ԗڂ̖��@"
    STA $67,X       ; �I���������@�̈ʒu(1�Ԗڂ̃L�����N�^)

.remember
    LDA $67,X       ; �I���������@�̈ʒu(1�Ԗڂ̃L�����N�^)
    CMP #$07
    BMI .reset

    CMP #$19
    BPL .reset

    STA $53         ; �J�[�\���C���f�b�N�X
    JSR $E6AB       ; �J�[�\���̕\�����X�V����

.ret
    JSR $C6BA       ; �L�����N�^�̖��O��\������ | �W���u�̖��O��\������ |
                    ; �L�����N�^�̃��x����\������ | �W���u�̃��x��/�L����\
                    ; ������ | �W���u�� ABP ��\������ | �L�����N�^�� HP ��
                    ; �\������ | �L�����N�^�� MP ��\������ | ��ԃA�C�R����
                    ; �\������
    JSR $A698       ; BG3 ���X�V����
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: ���@(�J�n)
;--------------------------------
org $C2ADB0
MENU_FOCUS_MAGIC_BLUE_MAGIC:
    LDA #$B41E      ; (���@�E�B���h�E�̘g��\������)
    JSR $C1B8       ; Run Menu Script
    JSR $DE3E       ; ���j���[�ɕ\�����閂�@�̐ݒ������������
    JSR $DF4D       ; ���j���[�ɕ\�����閂�@�̖��O���擾����
    LDX #$B8EC      ; $07, $04, $0C, $0C, $2C, $04, $0C, $0C, $0C, $0C, $0C,
                    ; $0C, $0C, $0C, $0C, 14, $00
    LDY #$7180      ; #$7180 = "BG4"
    JSR $C1FD       ; Configure the Line Position
    JSR $A69D       ; BG4 ���X�V����
    STZ $2B66       ; �����̑I���ʒu(��)
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: ���@(�I��)
;--------------------------------
org $C2ADCC
MENU_UNFOCUS_MAGIC_BLUE_MAGIC:
    LDA #$B429      ; (���@�E�B���h�E����������)
    JSR $C1B8       ; Run Menu Script
    LDX #$B8E6      ; $07, $04, $0C, $0C, $04, $00
    LDY #$7180      ; #$7180 = "BG4"
    JSR $C1FD       ; Configure the Line Position
    JSR $A69D       ; BG4 ���X�V����
    RTS

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: ����
;--------------------------------
org $C2BC2D
MENU_MAGIC_A:
    LDX $7E         ; �����̔ԍ�
    LDA $53         ; �J�[�\���C���f�b�N�X
    STA $63,X       ; �I���������@�̎��(1�Ԗڂ̃L�����N�^)
    LDA $55         ; �J�[�\���ʒu

UPDATE_MAGIC_LIST:
    DEC
    STA $29E2       ; �I�𒆂̖��@�̎�� (0: ���@��, 1: �����@, 2: �����@,
                    ; 3: ����, 4: ����, 5: ���@, 6: ��)
    REP #$20
    AND #$0007
    TAX
    SEP #$20
    LDA $C0F3A4,X   ; $07, $07, $07, $07, $07, $19, $1A
    JMP INPUT_MOVE

;--------------------------------
; ���j���[�R�}���h No.008(08): ���@: ���
;--------------------------------
org $C2BC48
MENU_MAGIC_B:
    JSR SCREEN_DISABLE
    JSR SETCONF_USED_MAGIC
    LDA $71         ; �I�������L�����N�^�̔ԍ�
    STA $5D         ; �Ō�ɖ��@��I�������L�����N�^�̔ԍ�
    LDA #$01        ; #$01 = "���C�����j���["
    JMP MENU_START

    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; ���j���[�R�}���h No.009(09): �R���t�B�O: �Z�k(�J�n)
;--------------------------------
org $C2B079
MENU_FOCUS_CONFIG_SHORTUCT:
;--------------------------------
; $EF9F ���g�p; �g���p�̋󂫗̈���쐬����
; /* XXX: ����ȏ�̗e�ʂ��g�p���Ȃ����� ($C2B0B0 is used) */
;--------------------------------
org $C2B0A0
    JSR $EF9F       ; �p�[�e�B�ɂ��Ȃ��L�����N�^��\�����Ȃ�
    STZ $6F         ; �I�������J�[�\���ʒu
    NOP             ; (used for fix)
    NOP
    NOP
    STZ $71         ; �I�������L�����N�^�̔ԍ�
    LDA #$0020      ; #$0020 = "HDMA channel 5: BG2 Vertical Scroll"
    JMP $B154       ; BG2 ��O�ʂɕ\������ | A���W�X�^�̒l�� HDMA ���g�p����

;--------------------------------
; ���j���[�R�}���h No.009(09): �R���t�B�O
;--------------------------------
org $C2C34A
MENU_CONFIG:
    JSR $F63D       ; �R���t�B�O�f�[�^��ǂݍ���
    STZ $2C94

.init_config
    JSR $F7A6       ; �R���t�B�O�̕\����ݒ肷��
    INC $2C94
    LDA $2C94
    CMP #$000A
    BNE .init_config

    NOP
    NOP
    NOP
    NOP             ; (used for fix)
    NOP
    NOP
    JSR $F810       ; �E�B���h�E�J���[�o�[�̕\����ݒ肷��
    SEP #$20
    STZ $53         ; �J�[�\���C���f�b�N�X
    JSR $D210       ; �J�[�\���̕\���̏����ݒ���s��
    RTS

;--------------------------------
; ���j���[�R�}���h No.011(0B): �Z�[�u: �m�F(�J�n)
; ���j���[�R�}���h No.012(0C): ���[�h: �m�F(�J�n)
;--------------------------------
org $C2AE6F
MENU_FOCUS_SAVELOAD:
;--------------------------------
; SCREEN_ENABLE ���g�p; �g���p�̋󂫗̈���쐬����
;--------------------------------
org $C2AEE6
    JSR SCREEN_ENABLE
    JSR $A698       ; BG3 ���X�V����
    JSR $FAD4       ; OAM ���X�V����
    JSR $FAF0       ; CG ���X�V����
    LDA #$0C        ; #$0C = "BG3 and BG4 enable"
    TSB $7500       ; Main Screen Designation
    TSB $7502       ; Window Mask Designation for the Main Screen
    LDA #$02        ; #$02 = "BG2 enable"
    TRB $7500       ; Main Screen Designation
    LDA #$04        ; #$04 = "Screen Settings"
    TSB $CA         ; DMA �����s����`�����l��
    JSR $A69D       ; BG4 ���X�V����
    RTS

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP

;--------------------------------
; �Z�[�u�f�[�^�̑S�W���u�̃X�v���C�g���擾����
;--------------------------------
org $C2F463
SAVELOAD_TRANSFER_JOBS_SPRITES:
;--------------------------------
; MENU_INIT_PPU_RAM �ŏ�������邽�߁A�����ł͓]�����Ȃ�
;--------------------------------
org $C2F4CB
    PLP
    PLB
    RTS

    NOP
    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; �N�����̃p�����[�^������������
;--------------------------------
org $C2D958
INIT_PARAMETERS_FOR_KRILE:
    PHP
    PHB
    STZ $7E         ; �����̔ԍ�

.next_character
    JSR $D4C5       ; ($80: �����A�h���X�ւ̃C���f�b�N�X) =
                    ; ($7E: �����̔ԍ�)�~80
    LDX $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $0500,X     ; �L�����N�^�ԍ�(bit0-3: �ԍ� | 20: ����, 40: ���E,
                    ; 80: ���)
    AND #$07
    CMP #$04        ; #$04 = "�N����"
    BEQ .init_params

    INC $7E         ; �����̔ԍ�
    LDA $7E         ; �����̔ԍ�
    CMP #$04
    BNE .next_character

    BRA .ret

.init_params
    JSR SETPARAM_JOB_LVABP
    JSR $DAA4       ; ���������ׂĊO��
    LDX $7E         ; �����̔ԍ�
    INC $0420,X     ; �I�������R�}���h�̈ʒu(�`�F�b�N�T��)
    LDA #$15        ; #$15 = "�����҂�"
    JSR JOB_CHANGE

.ret
    PLB
    PLP
    RTS

;--------------------------------
; ���݂̃L�����N�^�̃W���u��ύX���� (A���W�X�^: �W���u�ԍ�)
;--------------------------------
JOB_CHANGE:
    PHP
    SEP #$20
    STA $D8         ; ���݂̃W���u�ԍ�
    JSR $E47D       ; ���݂̃W���u��(���x�� | �A�r���e�B�|�C���g | ���ɕK�v
                    ; �ȃA�r���e�B�|�C���g)���Z�b�g����
    LDX $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $DA         ; ���݂̃W���u���x��
    STA $053A,X     ; �W���u���x��
    LDA $D8         ; ���݂̃W���u�ԍ�
    STA $0501,X     ; �W���u�ԍ�
    REP #$20
    LDA $DC         ; ���݂̃W���u�̃A�r���e�B�|�C���g
    STA $053B,X     ; �A�r���e�B�|�C���g
    JSR $EB82       ; ���݂̃W���u��(�W���u���� | �A�r���e�B�R�}���h | ����
                    ; �ł���A�C�e��)���Z�b�g����
    JSR $E6D6       ; �L�����N�^��(HP | MP | �\�͒l | �t���O)������������
    PLP
    RTS

    NOP

;--------------------------------
; �f�����j���[���J�n/�ĊJ����
;--------------------------------
org $C2A394 : DEMO_CONFIGURE:
org $C2A394 : .backup_parameters
org $C2A3A3 : .init_demo
org $C2A3CA : .init_abilities
org $C2A3D8 : .init_config
org $C2A3FB : .init_items
org $C2A40F : .init_jobs
    STZ $7E         ; �����̔ԍ�
    JSR $D4C5       ; ($80: �����A�h���X�ւ̃C���f�b�N�X) =
                    ; ($7E: �����̔ԍ�)�~80
    JSR $DAA4       ; ���������ׂĊO��
    REP #$20
    LDA $35         ; ���j���[�R�}���h����: �f���̎��
    AND #$0007
    TAX
    SEP #$20
    LDA $C0E8F0,X   ; $15, $0A, $0A, $0A, $09, $15, $15, $15
    JSR JOB_CHANGE
    PLP
    RTS

    NOP

;--------------------------------
; ���ׂẴL�����N�^�̑��������ׂĊO��
;--------------------------------
; /* org $C2A42B */
UNEQUIP_ALL_MEMBER:
    PHP
    SEP #$20
    LDA #$03
    STA $7E         ; �����̔ԍ�

.next_character
    JSR $D4C5       ; ($80: �����A�h���X�ւ̃C���f�b�N�X) =
                    ; ($7E: �����̔ԍ�)�~80
    JSR $DAA4       ; ���������ׂĊO��
    JSR $E6D6       ; �L�����N�^��(HP | MP | �\�͒l | �t���O)������������
    DEC $7E         ; �����̔ԍ�
    BPL .next_character

    PLP
    RTS

; /* End of core implementation */

; /* Start of BTL_core implementation */

;--------------------------------
; ���s���̃��j���[�R�}���h�^�C�v�ɂ���ď����𕪊򂷂�
;--------------------------------
org $C11186
BTL_MENU_INPUT:
    LDA $CD3A       ; ���j���[�R�}���h�^�C�v
    ASL
    TAX
    LDA FILEPOS_BTL_$C2A36ADDR,X
    STA $88
    LDA FILEPOS_BTL_$C2A36ADDR+1,X
    STA $89
    JMP ($0088)

;--------------------------------
; ���j���[�R���g���[�������s����
;--------------------------------
org $C13A6E
BTL_MENU_CONTROL:
    LDA $BC65       ; �O���t�B�b�N���X�V����
    BNE .ret

    LDA $CD38       ; ���s���̃��j���[�R���g���[��
    BNE .do_control

    LDA $CD39       ; ���j���[�R���g���[��
    STA $CD38       ; ���s���̃��j���[�R���g���[��
    STZ $CD39       ; ���j���[�R���g���[��

.do_control
    LDA $CD38       ; ���s���̃��j���[�R���g���[��
    ASL
    TAX
    LDA FILEPOS_BTL_CONTROL_ADDR,X
    STA $70
    LDA FILEPOS_BTL_CONTROL_ADDR+1,X
    STA $71
    JMP ($0070)

.ret
    RTS

;--------------------------------
; ���j���[�R�}���h�^�C�v No.003(03): ���X�N���[������
;--------------------------------
org $C14A86
BTL_SCROLL_COMMAND_DOWN:

org $C14AF5
    SEC             ; C=1 to subtract
    JMP BTL_SCROLL_COMMAND_PROCEED

;--------------------------------
; �X�N���[���o�b�t�@�̃A�h���X���Z�b�g����
;--------------------------------
; /* org $C14AF9 */
BTL_SCROLL_GETADDR:
    LDY #$CD7B      ; (dest: $7ECD7B)
    STY $BF
    LDY #$CDBB      ; (dest: $7ECDBB)
    STY $C1
    TDC
    TAY             ; Y = 0
    RTS

;--------------------------------
; �X�N���[���o�b�t�@���X�V����
;--------------------------------
; /* org $C14B06 */
BTL_SCROLL_UPDATE:
    LDA $CDFA
    ASL
    TAX
    REP #$20
    LDA $CEFFF5,X   ; $4C20, $4C60, $4CA0, $4CE0, $4D20
    STA $CD75
    TDC
    SEP #$20
    INC $CD74       ; �A�C�e��/���@���X�g���X�V����
    RTS

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP

;--------------------------------
; ���j���[�R�}���h�^�C�v No.004(04): ��X�N���[������
;--------------------------------
org $C14B22
BTL_SCROLL_COMMAND_UP:

org $C14B8F
    CLC             ; C=0 to add
    JMP BTL_SCROLL_COMMAND_PROCEED

    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; ���j���[�R�}���h�^�C�v No.003(03): �X�N���[�����s/�I��
;--------------------------------
BTL_SCROLL_COMMAND_PROCEED:
    LDX #$00BC

.begin
    LDA $BA37,X
    STA $B2D5,X
    DEX
    DEX
    DEX
    DEX
    BPL .begin

    TDC
    SEP #$20
    JSR BTL_SCROLL_MOVECURSOR_SINGLE
    JSR $4BBC       ; �I�������J�[�\���̕\�����X�V����
    DEC $CD37       ; ���j���[�������s����
    BNE .ret

    JSR $FD07       ; ���j���[��ύX����
    JSR $1186       ; ���s���̃��j���[�R�}���h�^�C�v�ɂ���ď����𕪊򂷂�

.ret
    RTS

;--------------------------------
; �A�C�e�����X�g�̃X�N���[������
;--------------------------------
org $C15E04
BTL_SCROLL_ITEM:
    PHX
    JSR $5B86       ; $92 = �s���I�𒆂̃L�����N�^�̗L���t���O�r�b�g
    JSR BTL_SCROLL_GETADDR
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    CLC
    ADC $88
    ASL
    TAX
    JSR $5E3B       ; �A�C�e���̖��O/��������\������
    INX
    JSR $5E3B       ; �A�C�e���̖��O/��������\������
    JSR BTL_SCROLL_UPDATE
    PLX
    RTS

;--------------------------------
; �I���ς݃J�[�\�����X�N���[������
;--------------------------------
; /* org $C15E1F */
BTL_SCROLL_MOVECURSOR_TRIPLE:
    LDA #$0C
    BRA BTL_SCROLL_MOVECURSOR

BTL_SCROLL_MOVECURSOR_SINGLE:
    LDA #$04

BTL_SCROLL_MOVECURSOR:
    REP #$20
    BCC .positive

.negative
    EOR #$FFFF      ; carry ���Z�b�g����Ă���Ε��̐��Ƃ���

.positive
    ADC $CF3E       ; �I���ς݃J�[�\���̕\���ʒu(�c)
    STA $CF3E       ; �I���ς݃J�[�\���̕\���ʒu(�c)
    TDC
    SEP #$20
    RTS

    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; ���@�̃X�N���[������
;--------------------------------
org $C157B1
BTL_SCROLL_MAGIC:
    PHY
    TYA
    ASL
    TAX
    JSR $5784       ; X���W�X�^��($88) = �X�N���[���ŕ\�����閂�@�̃A�h���X
    JSR BTL_SCROLL_GETADDR
    LDA $CF         ; ���@�̎�� (0: �ʏ�, 1: ��/���@)
    BEQ .normal_magic

.blue_magic
    JSR $584B       ; ���@�̖��O��\������ (�́E���@)
    INX
    JSR $584B       ; ���@�̖��O��\������ (�́E���@)
    LDX #$0008
    BRA .fill_submenu

.normal_magic
    JSR $5806       ; ���@�̖��O��\������ (���@���E�����@�E�����@�E�����@�E
                    ; ����)
    INX
    JSR $5806       ; ���@�̖��O��\������ (���@���E�����@�E�����@�E�����@�E
                    ; ����)
    INX
    JSR $5806       ; ���@�̖��O��\������ (���@���E�����@�E�����@�E�����@�E
                    ; ����)
    LDX #$0007

.fill_submenu
    LDA #$FF        ; #$FF = " "
    JSR $5F6B       ; ���l�̕����R�[�h���������� (dest: ($BF),Y | ($C1),Y)
    DEX
    BNE .fill_submenu

    JSR BTL_SCROLL_UPDATE
    PLY
    RTS

    NOP

;--------------------------------
; X���W�X�^ = �I���������@�ւ̃C���f�b�N�X
;--------------------------------
BTL_MAGIC_GETADDR:
    LDA ($D3),Y     ; �I���������@�̈ʒu
    CLC
    ADC $DB         ; ���@���X�g: �J�n�ԍ�
    REP #$21
    ADC $CEFF8D,X   ; ($2E38, $2F3C: �g�p�ł��閂�@) �ւ̃C���f�b�N�X:
                    ; 0, 650, 1300, 1950
    TAX
    TDC
    SEP #$20
    RTS

;--------------------------------
; ���s����s���̎�ނ��Z�b�g���� | A���W�X�^�̒l�̖��@��I������
;--------------------------------
BTL_MAGIC_SETNUM:
    CLC
    ADC $DB         ; ���@���X�g: �J�n�ԍ�
    STA $41B6,X     ; �I�������A�C�e��/���@�̔ԍ�
    LDA #$20        ; #$20 = "���@"
    ORA $F891       ; �A�C�e��/���@�̑I���� (0: 1��, 8: 2��)
    STA $41B1,X     ; ���s����s���̎�� (1)
    RTS

;--------------------------------
; ���@�̏���}�W�b�N�|�C���g���X�V����
;--------------------------------
org $C15574
BTL_MAGIC_UPDATE_MP_COST:
    JSR BTL_MAGIC_GETADDR
    LDA $2E38,X     ; 1�l�ڂ̖��@�̏���MP
    TAX
    CMP #$64        ; C=1 if MP_cost >= 100
    TDC
    ADC #$68        ; (MP_cost >= 100) ? 0x69("0") : 0x68(" ")
    STA $C363       ; ����}�W�b�N�|�C���g�̕\��[0]
    CPX #$000A      ; C=1 if MP_cost >= 10
    TDC
    ADC #$68        ; (MP_cost >= 10) ? 0x69("0") : 0x68(" ")
    STA $C365       ; ����}�W�b�N�|�C���g�̕\��[1]
    TXA

.digit_hundreds
    CMP #$64
    BCC .digit_tens

    SBC #$64
    INC $C363       ; ����}�W�b�N�|�C���g�̕\��[0]
    BRA .digit_hundreds

.digit_tens
    CMP #$0A
    BCC .digit_one

    SBC #$0A
    INC $C365       ; ����}�W�b�N�|�C���g�̕\��[1]
    BRA .digit_tens

.digit_one
    ADC #$69        ; #$69 = "0"
    STA $C367       ; ����}�W�b�N�|�C���g�̕\��[2]
    INC $CD44       ; ����}�W�b�N�|�C���g���X�V����
    RTS

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP

;--------------------------------
; ���j���[�R�}���h����: ��X�N���[��
;--------------------------------
; /* org $C155B9 */
BTL_SCROLL_UP:
    LDA #$04        ; #$04 = "��X�N���[��"
    BRA BTL_SCROLL

;--------------------------------
; ���j���[�R�}���h����: ���X�N���[��
;--------------------------------
; /* org $C155BD */
BTL_SCROLL_DOWN:
    LDA #$03        ; #$03 = "���X�N���[��"

BTL_SCROLL:
    PHA
    LDA $CD3A       ; ���j���[�R�}���h�^�C�v
    STA $CD3B       ; ���Ɏ��s���郁�j���[�R�}���h�^�C�v[0]
    PLA
    STA $CD3A       ; ���j���[�R�}���h�^�C�v
    LDA #$03
    STA $CD37       ; ���j���[�������s����
    RTS

;--------------------------------
; ���j���[�R�}���h�^�C�v No.011(0B): ���@
;--------------------------------
org $C155D0
BTL_MAGIC_INPUT:
    LDA $CD42       ; �s���I�𒆂̃L�����N�^�̔ԍ� (FF: none)
    TAY
    ASL
    TAX
    STZ $CD6C       ; ��X�N���[���o�[��\������ (1: ON, 0: OFF)
    STZ $CD70       ; ���X�N���[���o�[��\������ (1: ON, 0: OFF)
    LDA $CDF8       ; (���j���[�����)
    BNE .reset_selected_menu

    LDA #$33        ; vhoopppN = 00110011
    STA $CD6F       ; ��X�N���[���o�[�̐ݒ�
    LDA #$B3        ; vhoopppN = 10110011
    STA $CD73       ; ���X�N���[���o�[�̐ݒ�
    LDA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    BEQ .hide_scroll_up

    INC $CD6C       ; ��X�N���[���o�[��\������ (1: ON, 0: OFF)

.hide_scroll_up
    CMP $DD         ; ���@���X�g: �X�N���[���̏��
    BEQ .hide_scroll_down

    INC $CD70       ; ���X�N���[���o�[��\������ (1: ON, 0: OFF)

.hide_scroll_down
.begin
    LDA $00         ; Input Press (axlr----)
    BPL .read_$C2A378

.$C2A36A
    JSR BTL_SOUND_OK
    JSR BTL_MAGIC_GETADDR
    LDA $2F3C,X     ; 1�l�ڂ̖��@���̖��@���g�p���ǂ��� (80: �g�p�s��)
    BPL .magic_select

    JMP BTL_SOUND_BEEP

.magic_select
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    PHX
    LDA $F890       ; �s���w��I�t�Z�b�g (0: 1���, 7: 2���)
    TAX
    LDA ($D3),Y     ; �I���������@�̈ʒu
    JSR BTL_MAGIC_SETNUM
    PLX
    LDA #$0B        ; #$0B = "���@"
    STA $88         ; ������ɕ\�����郁�j���[�R�}���h�^�C�v
    LDA $2EBA,X     ; ���@�̑Ώ�
    JMP $510E       ; A���W�X�^�̑Ώۃt���O�ɏ]���āA�Ώۂ�I������

.read_$C2A378
    LDA $01         ; Input Press (byetUDLR)
    BPL .read_input_move

.$C2A378
    JSR BTL_SOUND_CANCEL

.reset_selected_menu
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    JMP $4773       ; ���j���[�R�}���h����: ���@: �L�����Z��

.read_input_move
    JSR $5574       ; ���@�̏���}�W�b�N�|�C���g���X�V����
    JSR $5536       ; �J�[�\���̕\��: ���@
    LDA $01         ; Input Press (byetUDLR)
    BIT #$02
    BNE BTL_MAGIC_INPUT_LEFT

    BIT #$01
    BNE BTL_MAGIC_INPUT_RIGHT

    BIT #$04
    BNE BTL_MAGIC_INPUT_DOWN

    BIT #$08
    BEQ .not_input_up

    JMP BTL_MAGIC_INPUT_UP

.not_input_up
    LDA $00         ; Input Press (axlr----)
    AND #$30
    BEQ .ret

    JMP BTL_MAGIC_INPUT_LR

.ret
    RTS

;--------------------------------
; ���j���[�R�}���h�^�C�v No.012(0C): ���@: �E
;--------------------------------
BTL_MAGIC_INPUT_RIGHT:
    LDA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    CMP $D1         ; ���@���X�g: �J�[�\���ʒu�̏��(��)
    BEQ .next

    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    INC
    STA ($D3),Y     ; �I���������@�̈ʒu
    LDA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    INC
    STA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    BRA .ret

.next
    LDA $DC         ; ���@���X�g: �I���ԍ�
    SEC
    SBC $DB         ; ���@���X�g: �J�n�ԍ�
    CMP ($D3),Y     ; �I���������@�̈ʒu
    BEQ .ret

.move_to_down
    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    SEC
    SBC $D1         ; ���@���X�g: �J�[�\���ʒu�̏��(��)
    STA ($D3),Y     ; �I���������@�̈ʒu
    TDC
    STA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    JSR BTL_MAGIC_INPUT_DOWN

.ret
    JMP $5536       ; �J�[�\���̕\��: ���@

;--------------------------------
; ���j���[�R�}���h�^�C�v No.012(0C): ���@: ��
;--------------------------------
BTL_MAGIC_INPUT_LEFT:
    LDA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    BEQ .next

    JSR BTL_SOUND_SELECT
    LDA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    DEC
    STA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    LDA ($D3),Y     ; �I���������@�̈ʒu
    DEC
    STA ($D3),Y     ; �I���������@�̈ʒu
    BRA .ret

.next
    LDA ($D3),Y     ; �I���������@�̈ʒu
    BEQ .ret

.move_to_up
    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    CLC
    ADC $D1         ; ���@���X�g: �J�[�\���ʒu�̏��(��)
    STA ($D3),Y     ; �I���������@�̈ʒu
    LDA $D1         ; ���@���X�g: �J�[�\���ʒu�̏��(��)
    STA ($D5),Y     ; �I���������@�̃J�[�\���ʒu(��)
    JSR BTL_MAGIC_INPUT_UP

.ret
    JMP $5536       ; �J�[�\���̕\��: ���@

;--------------------------------
; ���j���[�R�}���h�^�C�v No.012(0C): ���@: ��
;--------------------------------
BTL_MAGIC_INPUT_DOWN:
    LDA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)
    CMP #$03
    BEQ .next

    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    CLC
    ADC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    LDA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)
    INC
    STA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)

.ret
    RTS

.next
    LDA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    CMP $DD         ; ���@���X�g: �X�N���[���̏��
    BEQ .ret

.scroll_down
    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    CLC
    ADC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    JSR $5750       ; ���j���[�R�}���h�^�C�v No.012(0C): ���@: ���X�N���[��
    JMP BTL_SCROLL_DOWN

;--------------------------------
; ���j���[�R�}���h�^�C�v No.012(0C): ���@: ��
;--------------------------------
BTL_MAGIC_INPUT_UP:
    LDA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)
    BEQ .next

    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    SEC
    SBC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    LDA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)
    DEC
    STA ($D7),Y     ; �I���������@�̃J�[�\���ʒu(�c)

.ret
    RTS

.next
    LDA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    BEQ .ret

.scroll_up
    JSR BTL_SOUND_SELECT
    LDA ($D3),Y     ; �I���������@�̈ʒu
    SEC
    SBC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    JSR $576C       ; ���j���[�R�}���h�^�C�v No.012(0C): ���@: ��X�N���[��
    JMP BTL_SCROLL_UP

;--------------------------------
; ���j���[�R�}���h�^�C�v No.008(08): �A�C�e��/����
;--------------------------------
org $C15BA3
BTL_WEAPON_INPUT:
    LDA #$03        ; vhoopppN = 00000011
    STA $CD4B       ; �J�[�\���̐ݒ�
    LDA $CD42       ; �s���I�𒆂̃L�����N�^�̔ԍ� (FF: none)
    TAX
    LDA $CDF8       ; (���j���[�����)
    BNE .reset_selected_menu

.begin
    LDA #$01
    STA $043D,X     ; ���݂̃A�C�e�����̎�� (0: �A�C�e��, 1: ����)
    LDA $00         ; Input Press (axlr----)
    BPL .read_$C2A378

.$C2A36A
    JSR BTL_SOUND_OK
    LDA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)
    JSR $588D       ; �����A�C�e����I��/�g�p���� (C=1: �ΏۑI��)
    BCC .break

    LDA #$10        ; #$10 = "����g�p"
    JMP BTL_USE_ITEM_WEAPON

.read_$C2A378
    LDA $01         ; Input Press (byetUDLR)
    BPL .read_input_down

.$C2A378
    JSR BTL_SOUND_CANCEL
    LDA $F88C       ; �A�C�e����I���������ǂ��� (80: ON)
    BPL .weapon_cancel

.weapon_unselect
    JSR $5B93       ; ���ڂ��I���ɂ���
    BRA .break

.weapon_cancel
    INC $0439,X     ; ����I�����L�����Z������ (1: ON)
    BRA .reset_selected_menu

.read_input_down
    BIT #$04        ; #$04 = "Down"
    BEQ .read_input_left

.input_down
    LDA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)

.weapon_back
    JSR BTL_SOUND_SELECT
    STA $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    STA $0441,X     ; �I�������A�C�e���̈ʒu
    STZ $043D,X     ; ���݂̃A�C�e�����̎�� (0: �A�C�e��, 1: ����)

.reset_selected_menu
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    JMP $47A3       ; ���j���[�R�}���h����: �A�C�e��/����: �L�����Z��

.read_input_left
    BIT #$02        ; #$02 = "Left"
    BEQ .read_input_right

    LDA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)
    BEQ .break

    DEC
    BRA .weapon_swap

.read_input_right
    BIT #$01        ; #$01 = "Right"
    BEQ .break

    LDA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)
    DEC             ; (���肩��ړ��������ǂ���?)
    BEQ .weapon_back

    INC
    INC

.weapon_swap
    JSR BTL_SOUND_SELECT
    STA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)

.break
    LDA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)
    ASL
    TAX
    LDA $C1525B,X   ; $10, $80
    STA $CD49       ; �J�[�\���̕\���ʒu(��)
    LDA $C1525C,X   ; $BA, $BA
    STA $CD4A       ; �J�[�\���̕\���ʒu(�c)
    LDA #$01
    STA $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    LDA #$33        ; vhoopppN = 00110011
    STA $CD4B       ; �J�[�\���̐ݒ�
    STA $CD53       ; ����J�[�\���̐ݒ�
    STZ $CD50       ; ����J�[�\����\������ (1: ON, 0: OFF)
    LDA $F88C       ; �A�C�e����I���������ǂ��� (80: ON)
    AND #$40
    BEQ .ret

    LDA $F88D       ; �I�𒆂̑���/�A�C�e���̈ʒu
    ASL
    TAX
    LDA $C1525B,X   ; $10, $80
    ADC #$04        ; $14, $84
    STA $CD51       ; ����J�[�\���̕\���ʒu(��)
    LDA $C1525C,X   ; $BA, $BA
    STA $CD52       ; ����J�[�\���̕\���ʒu(�c)
    INC $CD50       ; ����J�[�\����\������ (1: ON, 0: OFF)

.ret
    RTS

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��
;--------------------------------
org $C15C88
BTL_ITEM_INPUT:
    LDA $CD42       ; �s���I�𒆂̃L�����N�^�̔ԍ� (FF: none)
    TAX
    STZ $CD6C       ; ��X�N���[���o�[��\������ (1: ON, 0: OFF)
    STZ $CD70       ; ���X�N���[���o�[��\������ (1: ON, 0: OFF)
    LDA $CDF8       ; (���j���[�����)
    BNE .reset_selected_menu

    LDA $0439,X     ; ����I�����L�����Z������ (1: ON)
    BNE .reset_selected_menu

    INC $CD6C       ; ��X�N���[���o�[��\������ (1: ON, 0: OFF)
    LDA #$03        ; vhoopppN = 00000011
    STA $CD6F       ; ��X�N���[���o�[�̐ݒ�
    LDA #$83        ; vhoopppN = 10000011
    STA $CD73       ; ���X�N���[���o�[�̐ݒ�
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    CMP #$7C
    BEQ .hide_scroll_down

    INC $CD70       ; ���X�N���[���o�[��\������ (1: ON, 0: OFF)

.hide_scroll_down
    LDA $CFC3       ; (�u�A�C�e���v�ȊO�ł͕��헓�͖���)
    BEQ .allow_select_weapon

    STZ $043D,X     ; ���݂̃A�C�e�����̎�� (0: �A�C�e��, 1: ����)

.allow_select_weapon
    LDA $043D,X     ; ���݂̃A�C�e�����̎�� (0: �A�C�e��, 1: ����)
    BNE BTL_DISPLAY_WEAPON_CURRENT

.begin
    JSR $5511       ; �J�[�\���̕\��: �A�C�e��
    LDA $00         ; Input Press (axlr----)
    BPL .read_$C2A378

.$C2A36A
    JSR BTL_SOUND_OK
    LDA $0441,X     ; �I�������A�C�e���̈ʒu
    JSR $594E       ; �A�C�e����I��/�g�p���� (C=1: �ΏۑI��)
    BCC .ret

    LDA #$40        ; #$40 = "�A�C�e��"
    JMP BTL_USE_ITEM_WEAPON

.read_$C2A378
    LDA $01         ; Input Press (byetUDLR)
    BPL .read_input_move

.$C2A378
    JSR BTL_SOUND_CANCEL
    LDA $F88C       ; �A�C�e����I���������ǂ��� (80: ON)
    BPL .reset_selected_menu

.item_unselect
    JMP $5B93       ; ���ڂ��I���ɂ���

.reset_selected_menu
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    STZ $0439,X     ; ����I�����L�����Z������ (1: ON)
    JMP $47FE

.read_input_move
    BIT #$02
    BNE BTL_ITEM_INPUT_LEFT

    BIT #$01
    BNE BTL_ITEM_INPUT_RIGHT

    BIT #$04
    BEQ .not_input_down

    JMP BTL_ITEM_INPUT_DOWN

.not_input_down
    BIT #$08
    BNE BTL_ITEM_INPUT_UP

    LDA $00         ; Input Press (axlr----)
    AND #$30
    BEQ .ret

    JMP BTL_ITEM_INPUT_LR

.ret
    RTS

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ����Ɉړ�
;--------------------------------
BTL_DISPLAY_WEAPON:
    JSR BTL_SOUND_SELECT
    STA $0435,X     ; �I����������̎�� (0: �E��, 1: ����)

BTL_DISPLAY_WEAPON_CURRENT:
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    JMP $4789       ; ���j���[�R�}���h����: �A�C�e��: ����

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ��
;--------------------------------
BTL_ITEM_INPUT_LEFT:
    LDA $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    BEQ .next

    JSR BTL_SOUND_SELECT
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    DEC $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    BRA .ret

.next
    LDA $0441,X     ; �I�������A�C�e���̈ʒu
    BNE .move_to_up

    LDA $CFC3       ; (�u�A�C�e���v�ȊO�ł͕��헓�͖���)
    BNE .ret

.move_to_weapon
    LDA #$01        ; #$01 = "����"
    BRA BTL_DISPLAY_WEAPON

.move_to_up
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    JSR BTL_ITEM_INPUT_UP

.ret
    JMP $5511       ; �J�[�\���̕\��: �A�C�e��

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: �E
;--------------------------------
BTL_ITEM_INPUT_RIGHT:
    LDA $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    BNE .next

    JSR BTL_SOUND_SELECT
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    BRA .ret

.next
    LDA $0441,X     ; �I�������A�C�e���̈ʒu
    CMP #$FF
    BEQ .ret

.move_to_down
    JSR BTL_SOUND_SELECT
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    STZ $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    JSR BTL_ITEM_INPUT_DOWN

.ret
    JMP $5511       ; �J�[�\���̕\��: �A�C�e��

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ��
;--------------------------------
BTL_ITEM_INPUT_UP:
    LDA $0449,X     ; �I�������A�C�e���̃J�[�\���ʒu(�c)
    BEQ .next

    JSR BTL_SOUND_SELECT
    DEC $0449,X     ; �I�������A�C�e���̃J�[�\���ʒu(�c)
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    DEC $0441,X     ; �I�������A�C�e���̈ʒu

.ret
    RTS

.next
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    BNE .scroll_up

    LDA $CFC3       ; (�u�A�C�e���v�ȊO�ł͕��헓�͖���)
    BNE .ret

.move_to_weapon
    LDA $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    BRA BTL_DISPLAY_WEAPON

.scroll_up
    JSR BTL_SOUND_SELECT
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    JSR $5DD4       ; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ��X�N��
                    ; �[��
    JMP BTL_SCROLL_UP

;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ��
;--------------------------------
BTL_ITEM_INPUT_DOWN:
    LDA $0449,X     ; �I�������A�C�e���̃J�[�\���ʒu(�c)
    CMP #$03
    BEQ .next

    JSR BTL_SOUND_SELECT
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0449,X     ; �I�������A�C�e���̃J�[�\���ʒu(�c)

.ret
    RTS

.next
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    CMP #$7C
    BEQ .ret

.scroll_down
    JSR BTL_SOUND_SELECT
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    JSR $5DEA       ; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: ���X�N��
                    ; �[��
    JMP BTL_SCROLL_DOWN

;--------------------------------
; ���s����s���̎�ނ��Z�b�g���� | ���ڂ��I���ɂ��� | �J�[�\�����\���ɂ�
; ��
;--------------------------------
; /* org $C15DC2 */
BTL_USE_ITEM_WEAPON:
    PHA
    LDA $F890       ; �s���w��I�t�Z�b�g (0: 1���, 7: 2���)
    TAX
    PLA
    ORA $F891       ; �A�C�e��/���@�̑I���� (0: 1��, 8: 2��)
    STA $41B1,X     ; ���s����s���̎��
    STZ $CD48       ; �J�[�\����\������ (1: ON, 0: OFF)
    JMP $5B93       ; ���ڂ��I���ɂ���

; /* End of BTL_core implementation */

; /* Start of LR implementation */

;--------------------------------
; LR ���͂Ŏg�p����J�[�\���ړ�����
;--------------------------------
org $C2A230
;--------------------------------
; LR ���͎͂��s�ł���
;--------------------------------
LR_DISABLE equ INPUT_WAIT   ; is used for $D0FFA0
LR_FAILURE equ INPUT_WAIT
;--------------------------------
; LR ���͌�A�T�E���h���Đ����ăL�[���͂�҂�
;--------------------------------
LR_RETURN:
    JSR LR_SOUND
    JMP INPUT_WAIT
;--------------------------------
; LR ���͌�A�J�[�\�����X�V���ăL�[���͂�҂�
;--------------------------------
LR_RELOAD:
    LDA $53         ; �J�[�\���C���f�b�N�X
    JMP INPUT_MOVE

;--------------------------------
; �L�[���̓^�C�v No.009(09): LR ���� [27 bytes]
;--------------------------------
org INPUT_LR
    LDA $54         ; ���j���[�ԍ�
    REP #$20
    AND #$00FF
    CMP #$001F      ; #$001F = "�R���t�B�O/�Z�k"
    BCC .lr_enable

    LDA $8E         ; ���j���[�ԍ� 0x1F �ȏ�� LR ����

.lr_enable
    ASL
    TAX
    LDA $D0FFA0,X
    STA $C7
    SEP #$20
    JMP ($01C7)

;--------------------------------
; LR ���͂Ŏg�p����A�h���X�e�[�u�� [62 bytes]
;--------------------------------
org $D0FFA0
    dw LR_DISABLE       ; 00: (none)
    dw LR_DISABLE       ; 01: ���C��
    dw LR_DISABLE       ; 02: ���C��/����ύX
    dw LR_DISABLE       ; 03: ���C��/�L�����N�^�I��
    dw LR_ABT_MAIN      ; 04: �A�r���e�B
    dw LR_ABT_SELECT    ; 05: �A�r���e�B/�ύX
    dw LR_JOB_MAIN      ; 06: �W���u
    dw LR_EQUIP_MAIN    ; 07: ����/�����I��
    dw LR_EQUIP_MAIN    ; 08: ����
    dw LR_EQUIP_SELECT  ; 09: ����/�A�C�e���I��
    dw LR_STATUS        ; 0A: �X�e�[�^�X
    dw LR_DISABLE       ; 0B: �X
    dw LR_DISABLE       ; 0C: �X/�w��
    dw LR_DISABLE       ; 0D: �X/�w��/���I��
    dw LR_DISABLE       ; 0E: ���@��/�w��
    dw LR_DISABLE       ; 0F: �A�C�e��
    dw LR_ITEM_SELECT   ; 10: �A�C�e��/�A�C�e���I��
    dw LR_DISABLE       ; 11: (unused)
    dw LR_MAGIC_MAIN    ; 12: ���@
    dw LR_MAGIC_SELECT  ; 13: ���@/�����@,�����@,����,����,���@��
    dw LR_MAGIC_SELECT  ; 14: ���@/���@
    dw LR_MAGIC_SELECT  ; 15: ���@/��
    dw LR_SHOP_SELL     ; 16: �X/���p
    dw LR_DISABLE       ; 17: �Z�[�u
    dw LR_NAME_MODE     ; 18: ���O�ݒ�/���[�h
    dw LR_NAME_MODE     ; 19: ���O�ݒ�/�����I��
    dw LR_DISABLE       ; 1A: �X/���p/���I��
    dw LR_DISABLE       ; 1B: ����
    dw LR_DISABLE       ; 1C: �Z�[�u/�m�F
    dw LR_DISABLE       ; 1D: ���@/�g�p/�ΏۑI��
    dw LR_DISABLE       ; 1E: �A�C�e��/�g�p/�ΏۑI��
                        ; 1F: �R���t�B�O/�Z�k
                        ; 20: �R���t�B�O
                        ; 21: �R���t�B�O/�}���`
                        ; 22: �R���t�B�O/�J�X�^��
                        ; 23: �R���t�B�O/�Z�k/�I��
                        ; 24: �A�C�e��/�A�C�e���I��/�����m�F

org $C27964
;--------------------------------
; LR ����: �y�[�W�̐؂�ւ�
;--------------------------------
; Returns:
;   $016B: �X�N���[���ʒu
;
; Params:
;   X register: �ړ������
;
; Flags Affected:
;   16-bit accum
;--------------------------------
LR_SUBR_NEXTPAGE:
    SEP #$20
    LDA $0A         ; Input Press (axlr----)
    ASL
    ASL
    ASL             ; C=1 if L button is pressed
    REP #$20
    TXA
    BCC .input_r

    EOR #$FFFF      ; L �����͂���Ă���� $6B -= X

.input_r
    ADC $6B         ; R �����͂���Ă���� $6B += X
    BPL .skip_low

    LDA $8E         ; $8E = 0

.skip_low
    CMP $6D         ; �X�N���[���̏��
    BMI .skip_high

    LDA $6D         ; �X�N���[���̏��

.skip_high
    STA $6B         ; �X�N���[���ʒu
    RTS

;--------------------------------
; LR ����: �L�����N�^�̐؂�ւ�
;--------------------------------
; Returns:
;   $0171: �I�������L�����N�^�̔ԍ�
;   $017E: �����̔ԍ�
;   $0180: �����A�h���X�ւ̃C���f�b�N�X
;   X register: [$017E: �����̔ԍ�]
;   Y register: [$0180: �����A�h���X�ւ̃C���f�b�N�X]
;
; Flags Affected:
;   16-bit accum
;--------------------------------
LR_SUBR_NEXTCHR:
    SEP #$20

.next_character
    LDA $0A         ; Input Press (axlr----)
    ASL
    ASL
    ASL             ; C=1 if L button is pressed
    LDA $71         ; �I�������L�����N�^�̔ԍ�
    BCC .input_r

    DEC
    DEC             ; L �����͂���Ă���� $71 -= 1

.input_r
    INC             ; R �����͂���Ă���� $71 += 1
    AND #$03
    STA $71         ; �I�������L�����N�^�̔ԍ�
    STA $7E         ; �����̔ԍ�
    STZ $7F
    JSR $D4C5       ; ($80: �����A�h���X�ւ̃C���f�b�N�X) =
                    ; ($7E: �����̔ԍ�)�~80
    LDX $7E         ; �����̔ԍ�
    LDY $80         ; �����A�h���X�ւ̃C���f�b�N�X
    LDA $0500,Y     ; �L�����N�^�ԍ�(bit0-3: �ԍ� | 20: ����, 40: ���E,
                    ; 80: ���)
    AND #$40        ; #$40 = "�Q�����Ă��Ȃ�"
    BNE .next_character

    LDA $54         ; ���j���[�ԍ�
    CMP #$0A        ; #$0A = "�X�e�[�^�X"
    BEQ .ret        ; �X�e�[�^�X��ʂł͏�Ԉُ�͊֌W�Ȃ�

    LDA $051A,Y     ; ��ԕω�1(�i���I���) (01: �È�, 02: �]���r�[,
                    ; 04: �ғ�, 08: ���r�e�g, 10: �~�j�}��, 20: �^,
                    ; 40: �Ή�, 80: �퓬�s�\)
    AND #$C2        ; #$C2 = "�퓬�s�\" | "�Ή�" | "�]���r�["
    BNE .next_character

    LDA $54         ; ���j���[�ԍ�
    CMP #$04        ; #$04 = "�A�r���e�B"
    BNE .ret        ; �A�r���e�B��ʂł͑I���ł���A�r���e�B���K�v

                    ; /* Sync with ff5_ability_menu.ips */
    LDA $0501,Y     ; �W���u�ԍ�
    CMP #$14        ; #$14 = "���̂܂˂�"
    BEQ .ret

    LDA $08F3,X     ; �o�����A�r���e�B�̐�[0]
    BEQ .next_character

.ret
    REP #$20
    RTS

;--------------------------------
; LR ����: No.004(04): �A�r���e�B/�L�����N�^�̐؂�ւ�
;--------------------------------
LR_ABT_MAIN:
    LDA $2D12       ; �A�r���e�B��ύX�������ǂ����̃t���O (1: �ύX����)
    ORA $2D11       ; �W���u��ύX�������ǂ����̃t���O (1: �ύX����)
    BNE .cannot_change

    JSR LR_SUBR_NEXTCHR
    LDA #$ADF4      ; (�A�r���e�B�E�B���h�E����������)
    JSR $C1B8       ; Run Menu Script
    JSR $CEEC       ; ���j���[�R�}���h No.002(02): �A�r���e�B
    JSR $FAD4       ; OAM ���X�V����
    JSR $A693       ; BG2 ���X�V����
    JSR $A698       ; BG3 ���X�V����
    JSR $A69D       ; BG4 ���X�V����
    JMP LR_RETURN

.cannot_change
    JMP LR_FAILURE  ; �W���u/�A�r���e�B��ύX�����ꍇ�͐؂�ւ��ł��Ȃ�

;--------------------------------
; LR ����: No.005(05): �A�r���e�B/�A�r���e�B�����X�N���[��
;--------------------------------
LR_ABT_SELECT:
    LDX #$000E
    JSR LR_SUBR_NEXTPAGE
    JSR $D837       ; �I���ł���A�r���e�B�̕\�����X�V����
    JSR $E367       ; �X�N���[���o�[�̕\�����X�V����
    JSR $A69D       ; BG4 ���X�V����
    JMP LR_RELOAD

;--------------------------------
; LR ����: No.006(06): �W���u/�L�����N�^�̐؂�ւ�
;--------------------------------
LR_JOB_MAIN:
    LDA $6F         ; �I�������W���u
    BNE .cannot_change

    LDA $53         ; �J�[�\���C���f�b�N�X
    STA $5F         ; �Ō�ɑI�������W���u�̈ʒu
    JSR LR_SUBR_NEXTCHR
    JSR $A16E       ; OAM ������������ (-> �W���u�}�X�^�[�̐�����������)
    JSR $CCCB       ; ���j���[�R�}���h No.003(03): �W���u�I��
    JSR REDRAW_JOBS
    JSR REDRAW_JOBS_HIGHLIGHT
    JSR $FAD4       ; OAM ���X�V����
    JSR $FAF0       ; CG ���X�V����
    JSR $A698       ; BG3 ���X�V����
    JMP LR_RELOAD

.cannot_change
    JMP LR_FAILURE  ; �W���u��I�𒆂͐؂�ւ��ł��Ȃ�

;--------------------------------
; LR ����: No.007(07): ����/�L�����N�^�̐؂�ւ�
;--------------------------------
LR_EQUIP_MAIN:
    LDA $53         ; �J�[�\���C���f�b�N�X
    STA $5E         ; �Ō�ɑI�����������̈ʒu
    JSR LR_SUBR_NEXTCHR
    LDA #$5000      ; #$5000 = "BG3"
    STA $E6         ; Menu Script Destination
    LDA #$AF4D      ; ("[�݂���/�Ђ����][��傤�Ă���/�ɂƂ���イ]" �����
                    ; �����A�����ł���A�C�e���A�\�͒l����������)
    JSR $C1B8       ; Run Menu Script
    JSR $CA37       ; ���j���[�R�}���h No.004(04): �����ύX
    JSR $A693       ; BG2 ���X�V����
    JSR $A698       ; BG3 ���X�V����
    JMP LR_RETURN

;--------------------------------
; LR ����: No.009(09): ����/�A�C�e�������X�N���[��
;--------------------------------
LR_EQUIP_SELECT:
    LDX #$0009
    JSR LR_SUBR_NEXTPAGE
    JSR UPDATE_EQUIP_LIST
    JSR $E367       ; �X�N���[���o�[�̕\�����X�V����
    JSR $A69D       ; BG4 ���X�V����
    JMP LR_RELOAD

;--------------------------------
; LR ����: No.010(0A): �X�e�[�^�X/�L�����N�^�̐؂�ւ�
;--------------------------------
LR_STATUS:
    JSR LR_SUBR_NEXTCHR
    JSR LR_SOUND
    JMP $B828       ; ���j���[�R�}���h No.005(05): �X�e�[�^�X: ����

;--------------------------------
; LR ����: No.016(10): �A�C�e��/�A�C�e�������X�N���[��
;--------------------------------
LR_ITEM_SELECT:
    JSR $C0E2       ; �I���ς݃J�[�\������������

;--------------------------------
; LR ����: No.022(16): �X/���p/�A�C�e�������X�N���[��
;--------------------------------
LR_SHOP_SELL:
    LDX #$0016
    JSR LR_SUBR_NEXTPAGE
    JSR $AC0E       ; �A�C�e�����̕\�����X�V����
    JMP LR_RELOAD

;--------------------------------
; LR ����: No.018(12): ���@/�L�����N�^�̐؂�ւ�
;--------------------------------
LR_MAGIC_MAIN:
    JSR LR_SUBR_NEXTCHR
    JSR SETCONF_USED_MAGIC
    JSR $C5C8       ; ���j���[�R�}���h No.008(08): ���@
    JSR $FAD4       ; OAM ���X�V����
    JSR $A698       ; BG3 ���X�V����
    JMP LR_RETURN

;--------------------------------
; LR ����: No.019(13): ���@/�����@,�����@,����,����,���@��/��ނ̐؂�ւ�
; LR ����: No.020(14): ���@/���@/��ނ̐؂�ւ�
; LR ����: No.021(15): ���@/��/��ނ̐؂�ւ�
;--------------------------------
LR_MAGIC_SELECT:
    LDA $0A         ; Input Press (axlr----)
    ASL
    ASL
    ASL
    LDX $7E         ; �����̃L�����N�^
    LDA $63,X       ; �I���������@�̎��(1�Ԗڂ̃L�����N�^)
    BCC .input_r

    DEC
    DEC             ; L �����͂���Ă���� $63,X -= 1

.input_r
    INC             ; R �����͂���Ă���� $63,X -= 1
    BPL .skip_low

    LDA #$06        ; #$06 = "����"

.skip_low
    CMP #$07
    BCC .skip_high

    LDA #$00        ; #$00 = "����܂ق�"

.skip_high
    STA $53         ; �J�[�\���C���f�b�N�X
    STA $63,X       ; �I���������@�̎��(1�Ԗڂ̃L�����N�^)
    LDA #$07        ; #$07 = "1 �Ԗڂ̖��@"
    STA $67,X       ; �I���������@�̈ʒu(1�Ԗڂ̃L�����N�^)
    LDA #$12        ; #$12 = "���@"
    STA $54         ; ���j���[�ԍ���ύX���邱�Ƃŋ����I�� [12: ���@] �����
                    ; ��ւ������̂Ƃ��Ĉ���
    JSR $E4DF       ; X���W�X�^ = ($53: 8bit)�~8
    LDA $7601,X
    JMP UPDATE_MAGIC_LIST

;--------------------------------
; LR ����: No.025(19): ���O�ݒ�/�Ђ炪��/�J�^�J�i�̐؂�ւ�
;--------------------------------
LR_NAME_MODE:
    LDA $2B65       ; �Ђ炪��/�J�^�J�i�̐؂�ւ� (0: �J�^�J�i, 1: �Ђ炪��)
    EOR #$01
    STA $2B65       ; �Ђ炪��/�J�^�J�i�̐؂�ւ� (0: �J�^�J�i, 1: �Ђ炪��)
    JSR $C4DA       ; �����ꗗ�̕\�����X�V����
    JSR $A69D       ; BG4 ���X�V����
    JMP LR_RETURN

    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP : NOP
    NOP : NOP : NOP

; /* End of LR implementation */

; /* Start of BTL_LR implementation */

org $C15EE0
;--------------------------------
; ���j���[�R�}���h�^�C�v No.007(07): �A�C�e��: LR ����
;--------------------------------
BTL_ITEM_INPUT_LR:
    LDY #$0004
    AND #$20        ; #$20 = "L"
    BEQ .input_r

.input_l
    JSR BTL_LR_ITEM_SCROLL_UP
    CPY #$0004
    BNE .lr_success

    LDA $CFC3       ; (�u�A�C�e���v�ȊO�ł͕��헓�͖���)
    BNE .lr_failure

.select_weapon
    STZ $0449,X     ; �I�������A�C�e���̃J�[�\���ʒu(�c)
    LDA $0445,X     ; �I�������A�C�e���̃J�[�\���ʒu(��)
    STA $0441,X     ; �I�������A�C�e���̈ʒu
    JMP BTL_DISPLAY_WEAPON

.input_r
    JSR BTL_LR_ITEM_SCROLL_DOWN
    CPY #$0004
    BEQ .lr_failure

.lr_success
    LDA #$19        ; #$19 = "�A�C�e�����̕\�����X�V����"
    STA $CD39       ; ���j���[�R���g���[��
    JMP BTL_LR_SOUND

.lr_failure
    RTS

org $C15705
;--------------------------------
; ���j���[�R�}���h�^�C�v No.011(0B): ���@: LR ����
;--------------------------------
BTL_MAGIC_INPUT_LR:
    LDX #$0004
    AND #$20        ; #$20 = "L"
    BEQ .input_r

.input_l
    JSR BTL_LR_MAGIC_SCROLL_UP
    CPX #$0004
    BNE .lr_success

    BRA .lr_failure

.input_r
    JSR BTL_LR_MAGIC_SCROLL_DOWN
    CPX #$0004
    BEQ .lr_failure

.lr_success
    CLC
    LDA #$1B        ; #$1B = "���@���̕\�����X�V����"
    ADC $CF         ; ���@�̎�� (0: �ʏ�, 1: ��/���@)
    STA $CD39       ; ���j���[�R���g���[��
    JMP BTL_LR_SOUND

.lr_failure
    RTS

org $C15C5A
;--------------------------------
; LR ����: �A�C�e�������X�N���[��: UP
;--------------------------------
; Returns:
;   $0441,X: �I�������A�C�e���̈ʒu
;   $044D,X: �I�������A�C�e���̃X�N���[���ʒu
;   Y register: �ړ��s��
;
; Params:
;   Y register: �ړ������
;--------------------------------
BTL_LR_ITEM_SCROLL_UP:
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    BEQ .break

    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    DEC $0441,X     ; �I�������A�C�e���̈ʒu
    DEC $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    CLC
    JSR BTL_SCROLL_MOVECURSOR_TRIPLE
    DEY
    BNE BTL_LR_ITEM_SCROLL_UP

.break
    RTS

;--------------------------------
; LR ����: �A�C�e�������X�N���[��: DOWN
;--------------------------------
; Returns:
;   $0441,X: �I�������A�C�e���̈ʒu
;   $044D,X: �I�������A�C�e���̃X�N���[���ʒu
;   Y register: �ړ��s��
;
; Params:
;   Y register: �ړ������
;--------------------------------
BTL_LR_ITEM_SCROLL_DOWN:
    LDA $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    CMP #$7C
    BEQ .break

    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $0441,X     ; �I�������A�C�e���̈ʒu
    INC $044D,X     ; �I�������A�C�e���̃X�N���[���ʒu
    SEC
    JSR BTL_SCROLL_MOVECURSOR_TRIPLE
    DEY
    BNE BTL_LR_ITEM_SCROLL_DOWN

.break
    RTS

org $C15705+$25
;--------------------------------
; LR ����: ���@�����X�N���[��: UP
;--------------------------------
; Returns:
;   ($D3),Y: �I���������@�̈ʒu
;   ($D9),Y: �I���������@�̃X�N���[���ʒu
;   X register: �ړ��s��
;
; Params:
;   X register: �ړ������
;--------------------------------
BTL_LR_MAGIC_SCROLL_UP:
    LDA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    BEQ .break

    DEC
    STA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    LDA ($D3),Y     ; �I���������@�̈ʒu
    SEC
    SBC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    DEX
    BNE BTL_LR_MAGIC_SCROLL_UP

.break
    RTS

;--------------------------------
; LR ����: ���@�����X�N���[��: DOWN
;--------------------------------
; Returns:
;   ($D3),Y: �I���������@�̈ʒu
;   ($D9),Y: �I���������@�̃X�N���[���ʒu
;   X register: �ړ��s��
;
; Params:
;   X register: �ړ������
;--------------------------------
BTL_LR_MAGIC_SCROLL_DOWN:
    LDA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    CMP $DD         ; ���@���X�g: �X�N���[���̏��
    BEQ .break

    INC
    STA ($D9),Y     ; �I���������@�̃X�N���[���ʒu
    LDA ($D3),Y     ; �I���������@�̈ʒu
    CLC
    ADC $D2         ; ���@���X�g: �I�t�Z�b�g
    STA ($D3),Y     ; �I���������@�̈ʒu
    DEX
    BNE BTL_LR_MAGIC_SCROLL_DOWN

.break
    RTS

; /* End of BTL_LR implementation */

; /* Start of bug fix */

;--------------------------------
; ���@�̃J�[�\���ʒu���������ݒ肳��Ȃ��s����C��
;--------------------------------
org $C2ADC8
    JSR INIT_BLUE_MAGIC_CURSOR_POSITION

;--------------------------------
; ���@�� LR �؂�ւ����ɉ�ʂ�������s����C��
;--------------------------------
org $C2ADBC
    JSR $A69D       ; BG4 ���X�V����
    LDX #$B8EC      ; $07, $04, $0C, $0C, $2C, $04, $0C, $0C, $0C, $0C, $0C,
                    ; $0C, $0C, $0C, $0C, 14, $00
    LDY #$7180      ; #$7180 = "BG4"
    JSR $C1FD       ; Configure the Line Position

;--------------------------------
; ���@�̏I�����ɉ�ʂ�������s����C��
;--------------------------------
org $C2ADD2
    JSR $A69D       ; BG4 ���X�V����
    LDX #$B8E6      ; $07, $04, $0C, $0C, $04, $00
    LDY #$7180      ; #$7180 = "BG4"
    JSR $C1FD       ; Configure the Line Position

;--------------------------------
; �A�C�e�����̕\�����X�V���Ă��I�������A�C�e���̈ʒu�����������Ȃ��悤�ɏC��
;--------------------------------
org $C2C7C6
    NOP             ; <- STZ $6F
    NOP

;--------------------------------
; �L�����N�^�̐؂�ւ��ňÈŏ�Ԃ̃p�[�c���c��s����C��
;--------------------------------
org $C2C921
    BEQ $C923       ; <- BEQ $C93D

;--------------------------------
; �J�X�^���̐ݒ�� B �{�^���ŏI���ł���悤�ɕύX
;--------------------------------
org $C2C0BD
    JMP $C07A       ; ���j���[�R�}���h No.009(09): �R���t�B�O: �J�X�^��:
                    ; ����(�����)

;--------------------------------
; �Z�k�R�}���h�̐ݒ�� 1 �Ԗڂ̃R�}���h���ŏ��ɑI������悤�ɏC��
;--------------------------------
org $C2C014
    ADC #$0020      ; <- ADC #$0021

;--------------------------------
; �Z�k�R�}���h�̐ݒ�œ����R�}���h��I�����Ă���I���ɂȂ�Ȃ��s����C��
;--------------------------------
org $C2C110
    BEQ $C155       ; <- BEQ $C109

;--------------------------------
; �Z�k�R�}���h�̐ݒ�ŃL�����N�^����Ԉُ�ɂ������Ă���ƃW���u�̖��O���\��
; ����Ȃ��s����C��
;--------------------------------
org $C0EA08
    dw %00000000101 ; <- dw %00000000011

;--------------------------------
; �Z�k�R�}���h�̐ݒ�ŃL�����N�^�̑I�����㉺���[�v����悤�ɕύX
;--------------------------------
org $C3AB2F
    db $1F          ; <- db $1E
org $C3AB36
    db $1E          ; <- db $1F

;--------------------------------
; �Z�k�R�}���h�̐ݒ�ŃJ�[�\�����\�����ꂽ�܂܂ɂȂ�s����C��
;--------------------------------
org $C2B0A5
    JSR $C0E2       ; �I���ς݃J�[�\������������

;--------------------------------
; �e���g/�R�e�[�W�̎g�p���ɃJ�[�\���ʒu���L������Ȃ��s����C��
;--------------------------------
org $C2BB90
    BIT $44         ; �t���O (02: �e���|�ł���, 80: �Z�[�u�ł���)
    BPL $BBEB       ; �Z�[�u�ł��Ȃ���΃e���g/�R�e�[�W�͎g�p�s��

    STA $39         ; �e���g/�R�e�[�W/�e���|���g�p���� (3E: �e���|,
                    ; F0: �e���g, F1: �R�e�[�W)
    STZ $3A
    LDA #$01
    XBA
    LDA $29E7
    JSR $E328       ; �A�C�e�������炷 (AL: ���, AH: ��)
    JSR SETCONF_USED_ITEM
    JMP $A02D       ; ���j���[�������I������

    NOP
    NOP
    NOP
    NOP
    NOP

;--------------------------------
; �Z�k�R�}���h�̐ݒ�ŃL�����N�^���퓬�s�\�ɂȂ��Ă���Ƃ����҂�̃p���b�g��
; �g�p�����s����C��
;--------------------------------
org $C2C361
    JSR UPDATE_CHARACTER_CG

;--------------------------------
; �����b�A�C�e���̎g�p��ɃA�C�e���̐������X�V����Ȃ��s����C��
;--------------------------------
org $C2BB66
    PHA
    ORA #$0100
    JSR $E328       ; �A�C�e�������炷 (AL: ���, AH: ��)
    PLX
    LDA $C0EEAE-$00F8,X ; $4D, $4C, $50, $4F
    JSR $F00B       ; A���W�X�^�̖��@���o�������@�ɒǉ�����
    LDA $C0EEB2-$00F8,X ; $76, $44, $47, $4B
    JSR SOUND_GET
    JSR $C7BD       ; �A�C�e�������ēǍ�����
    JSR $AC5E       ; �A�C�e���̐�����\������
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    JSR $A698       ; BG3 ���X�V����
    JSR $A69D       ; BG4 ���X�V����
    BRA $BBEB

; /* End of bug fix */
