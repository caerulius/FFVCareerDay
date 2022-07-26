;
; ff5_items_total.asm
;    ���j���[�ɏ����A�C�e������\������ revision 1.0
;
; ���
;
;    FF6 �̂悤�ɁA�A�C�e�����j���[�ɏ������Ă���A�C�e���̐���\�����܂��B
;
; �g�p�̈�
;
;    $C2AC5E-$C2AC8F:   50 bytes
;    $C2C780-$C2C7BC:   61 bytes
;



;--------------------------------
; �A�C�e���̐�����\������
;--------------------------------
org $C2AC5E
DISPLAY_ITEM_MESSAGE:
    REP #$20
    LDA #$B3A9      ; (�A�C�e���̐�������������)
    JSR $C1B8       ; Run Menu Script
    LDA $55         ; �J�[�\���ʒu
    AND #$00FF
    DEC
    CLC
    ADC $6B         ; �X�N���[���ʒu
    TAX
    LDA $288A,X     ; �A�C�e���̐���[0]
    AND #$007F
    BEQ DISPLAY_ITEMS_TOTAL

    ASL
    TAX
    LDA FILEPOS_ITEMMES_ADDR,X
    STA $2CEB
    JSR $DA16       ; ���b�Z�[�W���擾���� (src: $D10000 + ($2CEB))
;--------------------------------
; �A�C�e���̏�������\������
;--------------------------------
DISPLAY_ITEMS_TOTAL:
    LDX #$5276      ; (dest: $7E5276)
    LDY #$2D1B      ; �A�C�e���̏����� (�����m�F�ł́u�A�C�e���̔ԍ��v�ŏ㏑
                    ; �������)
    LDA #$7E31      ; �o���N: $7E, �T�C�Y: 1, ��: 3
    JMP $E4ED       ; ���l���當������擾���� (X: dest, Y: src, AH: bank,
                    ; AL: (bit0-3: size | bit4-6: ���� | bit7: �[���p�f�B��
                    ; �OON))

;--------------------------------
; �A�C�e���̐�����ݒ肷��
;--------------------------------
org $C2C780
SET_ITEM_MESSAGES:
    PHP
    LDX $8E         ; $8E = 0
    STX $2D1B       ; �A�C�e���̏����� (�����m�F�ł́u�A�C�e���̔ԍ��v�ŏ㏑
                    ; �������)
    SEP #$20

.begin
    LDA $7A00,X     ; �A�C�e���̔ԍ�[0]
    BNE .not_empty

    STZ $7B00,X     ; �A�C�e���̌�[0]
    STZ $288A,X     ; �A�C�e���̐���[0]
    BRA .next_item

.not_empty
    INC $2D1B       ; �A�C�e���̏����� (�����m�F�ł́u�A�C�e���̔ԍ��v�ŏ㏑
                    ; �������)
    PHX
    PHA
    JSR $D9AB       ; �A�C�e���f�[�^��ǂݍ��� (A���W�X�^: �A�C�e���̔ԍ�)
                    ; (-> $019B�`$01A6)
    PLA
    CMP #$E0        ; #$E0 = "�|�[�V����"
    NOP
    NOP
    BCC .is_equip

.is_item
    LDA $9E         ; �A�C�e���f�[�^[3]: ���b�Z�[�W�̔ԍ�
    AND #$3F
    BRA .set_item_msg

.is_equip
    LDA $9F         ; ����/�h��f�[�^[4]: ���b�Z�[�W�̔ԍ�
    AND #$3F
    CLC
    ADC #$00

.set_item_msg
    PLX
    STA $288A,X     ; �A�C�e���̐���[0]

.next_item
    INX
    CPX #$0100
    BNE .begin

    PLP
    RTS
