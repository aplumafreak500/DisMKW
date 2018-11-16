	.text
	.global sub_1bc60
sub_1bc60: # 0x80022f20
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stw %r31, 0x8c(%r1)
	stw %r30, 0x88(%r1)
	mr %r30, %r4
	stw %r29, 0x84(%r1)
	mr %r29, %r3
	bne- cr1, _1bca4
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_1bca4:
	addi %r11, %r1, 0x98
	addi %r0, %r1, 0x8
	lis %r12, 0x200
	stw %r3, 0x8(%r1)
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r12, 0x68(%r1)
	stw %r11, 0x6c(%r1)
	stw %r0, 0x70(%r1)
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1bcfc
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0b84
	li %r0, 0x1
	b _1bd10
_1bcfc:
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	lwz %r0, 0x8(%r3)
	cntlzw %r0, %r0
	srwi  %r0, %r0, 5
_1bd10:
	cmpwi %r0, 0x0
	beq- _1bd64
	lis %r31, 0x802a
	mr %r5, %r30
	addi %r3, %r31, 0x2938
	addi %r6, %r1, 0x68
	li %r4, 0x400
	bl sub_9a0c
	addi %r4, %r31, 0x2938
	subi %r3, %r13, 0x7fac
	crxor 6, 6, 6
	bl sub_19b270
	mr %r3, %r29
	addi %r4, %r31, 0x2938
	bl sub_1b7d0
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1bd64
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0c60
_1bd64:
	lwz %r0, 0x94(%r1)
	lwz %r31, 0x8c(%r1)
	lwz %r30, 0x88(%r1)
	lwz %r29, 0x84(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr

	.global sub_1bd80
sub_1bd80: # 0x80023040
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_19f24c
	lhz %r4, 0x10(%r31)
	lhz %r0, 0xc(%r31)
	subf. %r4, %r4, %r0
	bge- _1bdb0
	lhz %r0, 0x6(%r31)
	add %r4, %r4, %r0
_1bdb0:
	lhz %r0, 0xe(%r31)
	clrlwi  %r4, %r4, 16
	cmpwi %r0, 0x0
	beq- _1bdc8
	addi %r0, %r4, 0x1
	clrlwi  %r4, %r0, 16
_1bdc8:
	lwz %r0, 0x14(%r31)
	add %r31, %r0, %r4
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

