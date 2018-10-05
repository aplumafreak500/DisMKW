	.text
	.global sub_1ad80
sub_1ad80: # 0x80022040
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	lis %r31, 0x8024
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	addi %r31, %r31, 0x6db0
	li %r30, 0x0
	b _1ae34
_1adb4:
	cmpwi %r0, 0xa
	beq- _1adc4
	cmpwi %r0, 0x0
	bne- _1adcc
_1adc4:
	mr %r3, %r28
	b _1ae44
_1adcc:
	clrlwi  %r0, %r0, 25
	lbzx %r5, %r31, %r0
	cmpwi %r5, 0xfd
	bne- _1adf4
	clrlwi  %r0, %r30, 30
	subfic %r3, %r0, 0x4
	mulli %r0, %r3, 0x6
	add %r30, %r30, %r3
	add %r26, %r26, %r0
	b _1ae10
_1adf4:
	cmpwi %r5, 0xff
	beq- _1ae08
	mr %r3, %r26
	mr %r4, %r27
	bl sub_1ae60
_1ae08:
	addi %r26, %r26, 0x6
	addi %r30, %r30, 0x1
_1ae10:
	cmpw %r30, %r29
	blt- _1ae30
	lbz %r0, 0x1(%r28)
	cmpwi %r0, 0xa
	bne- _1ae28
	addi %r28, %r28, 0x1
_1ae28:
	mr %r3, %r28
	b _1ae44
_1ae30:
	addi %r28, %r28, 0x1
_1ae34:
	lbz %r0, 0x0(%r28)
	extsb. %r0, %r0
	bne+ _1adb4
	mr %r3, %r28
_1ae44:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

