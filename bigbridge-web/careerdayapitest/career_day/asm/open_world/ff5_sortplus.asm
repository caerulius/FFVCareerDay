;
; ff5_sortplus.asm
;    �u�����Ƃ�v�A���S���Y���̉��P revision 1.1
;
; ���
;
;    �A�C�e�������u�����Ƃ�v����A���S���Y�������P���܂��B����͈ȉ��̓���
;    ������܂�:
;
;    - �A�C�e��������ޏ��ɕ��ёւ��܂�
;    - �A�C�e�����̐擪���� 4 �s�́u�����Ƃ�v�̉e�����󂯂܂���
;
;    �u�����Ƃ�v�̎�ޏ��� $C6FF80�`$C6FF9F �Ŏw��ł��܂��B�܂��A�u������
;    ��v�̉e�����󂯂Ȃ��A�C�e���̐��� $C2E019 �ŕύX�ł��܂��B
;
;    �u�����Ƃ�v�̉e�����󂯂Ȃ��s�ɂ́A�퓬���ɂ悭�g������/�A�C�e����z�u
;    ���邱�Ƃ��ł��܂��B���́u�����Ƃ�v�̉e�����󂯂Ȃ��s����������Ă���
;    ���ƈȊO�́Aff5_sort.ips �Ɠ����ł��B
;
; �d�l
;
;    * �ʏ�A�C�e�� (0xE0�`0xFF) �ȊO�́A�A�C�e������ 1 �����ڂ��g���Đ��Ƃ�
;      ���܂��B���������āA�ʏ�A�C�e���ȊO�̂��ׂẴA�C�e���̖��O���A�C�R
;      ���Ŏn�܂��Ă��邱�Ƃ��m�F���Ă��������B1 �����ڂ��A�C�R���łȂ��A�C
;      �e���ɂ͑Ή����Ă��܂���B
;    * �ʏ�A�C�e�� (0xE0�`0xFF) �̃A�C�R���͖������܂��B����́u��イ�̂�
;      �񂵂傤�v�u�I���K�̂��񂵂傤�v�̂悤�� 9 �������ׂĂ��g���A�C�e����
;      �Ή����邽�߂ł��B
;    * �I���W�i���́u�����Ƃ�v�ƈ���āA�ʏ�A�C�e���Ƒ����A�C�e���̊Ԃɉ�
;      �s���܂���B
;
; �g�p�̈�
;
;    $C2E002-$C2E0A7:  166 bytes
;    $C6FF80-$C6FF9F:   32 bytes
;

!ITEM_NOSORT_COUNT = 8
!FILEPOS_ITEMNAME = $D11380


;--------------------------------
; ���Ƃ�̎�ޏ������肷��z�� (�A�C�R��)
;--------------------------------
org $C6FF80
    db $FD          ; �ʏ�A�C�e�� (0xE0�`0xFF)
    db $E7          ; �i�C�t
    db $E3          ; ��
    db $E8          ; ��
    db $E9          ; ��
    db $EA          ; ��
    db $EB          ; ���b�h
    db $EC          ; ��
    db $ED          ; �|��
    db $EE          ; �G��
    db $EF          ; �ނ�
    db $F0          ; �x��
    db $FF          ; ��: �c�C�������T�[, ���񂰂��, ����肯��,
                    ;       �ӂ��܂���肯��, ����, ���C�W���O�T��
    db $F1          ; ��
    db $F2          ; ��
    db $F3          ; �Z
    db $F4          ; �A�N�Z�T��
    db $00          ; (eof)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)
    db $00          ; (empty)

;--------------------------------
; �u�����Ƃ�v�̏���
;--------------------------------
org $C2E002
ITEM_SORT:
    PHB
    PHP
    PEA $7E7E
    PLB
    PLB
    REP #$20
    LDX #$0300

.init_item
    DEX
    DEX
    STZ $7F00,X     ; Init $7F00, $8000 and $8100
    BNE .init_item

    SEP #$20
    TXY             ; X and Y = 0
    LDA.b #ITEM_NOSORT_COUNT
    STA $93         ; ���Ƃ񂵂Ȃ��A�C�e���̐�

.do_sort
    LDA $C6FF80,X
    BEQ .transfer_items

    PHX
    STA $E0         ; ���Ƃ񒆂̎�� = A
    LDX $8E         ; $8E = 0

.next_item
    LDA $93         ; ���Ƃ񂵂Ȃ��A�C�e���̐�
    BNE .move_unsorted

    LDA $0640,X     ; �A�C�e���̎��[0]
    BEQ .continue   ; �󗓂Ȃ�A���̃A�C�e����

    CMP #$01        ; #$01 = "����"
    BEQ .continue   ; "����" �Ȃ�A���̃A�C�e����

    CMP #$80        ; #$80 = "��"
    BEQ .continue   ; 0x80 �Ȃ�A���̃A�C�e����

    CMP #$E0        ; #$E0 = "�|�[�V����"
    BCC .check_name ; 0xE0�`0xFF �łȂ���΁A�ʏ�̏������s��

    LDA #$FD        ; ���Ƃ񒆂̎�ނ� 0xFD �Ȃ�\�[�g����
    BRA .check_type

.check_name
    PHX
    REP #$20
    AND #$00FF
    STA $E2
    ASL
    ASL
    ASL
    ADC $E2         ; /* CLC omitted */
    TAX             ; X = (�A�C�e���̔ԍ�)�~9
    SEP #$20
    LDA FILEPOS_ITEMNAME,X
    PLX

.check_type
    CMP $E0         ; �A�C�e�����̈ꕶ���ڂƐ��Ƃ񒆂̎�ނ��r���āA
    BNE .continue   ; �A�C�e���̎�ނ��قȂ��Ă���΁A���̃A�C�e����

    LDA $0740,X     ; �A�C�e���̌�[0]
    BEQ .continue   ; �A�C�e���̌��� 0 �Ȃ�A���̃A�C�e����

    CMP #$64
    BCC .move_sorted

    LDA #$63        ; �A�C�e���̌��� 100 �ȏ�Ȃ�A99 �ɐݒ�
    BRA .move_sorted

.move_unsorted
    DEC $93         ; ���Ƃ񂵂Ȃ��A�C�e���̐�
    LDA $0740,X     ; �A�C�e���̌�[0]

.move_sorted
    STA $8100,Y     ; (sorted item count)
    LDA $0640,X     ; �A�C�e���̎��[0]
    STA $8000,Y     ; (sorted item type)
    STZ $0640,X     ; ��v�����A�C�e���͈Ȍ�̏����ł͖�������
    LDA $288A,X     ; �A�C�e���̐���[0]
    STA $7F00,Y     ; (sorted item message)
    INY

.continue
    INX
    CPX #$0100      ; �A�C�e�����̏I�[�܂ŌJ��Ԃ�
    BNE .next_item

    PLX
    INX
    BRA .do_sort

.transfer_items
    REP #$20
    LDX #$8000      ; (sorted item type)
    LDY #$0640      ; �A�C�e���̎��[0]
    LDA #$01FF
    MVN $7E,$7E     ; ���Ƃ񂵂��A�C�e����]��
    LDX #$7F00      ; (sorted item message)
    LDY #$288A      ; �A�C�e���̐���[0]
    LDA #$00FF
    MVN $7E,$7E     ; ���Ƃ񂵂��A�C�e�����b�Z�[�W��]��
    PLP
    PLB
    RTS

;   NOP : NOP : NOP
