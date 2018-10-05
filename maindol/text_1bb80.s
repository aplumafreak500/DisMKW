	.text
	.global sub_1bb80
sub_1bb80: # 0x80022e40
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r30, %r6
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1bbc4
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0b84
	li %r0, 0x1
	b _1bbd8
_1bbc4:
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	lwz %r0, 0x8(%r3)
	cntlzw %r0, %r0
	srwi  %r0, %r0, 5
_1bbd8:
	cmpwi %r0, 0x0
	beq- _1bc40
	lis %r31, 0x802a
	mr %r5, %r29
	mr %r6, %r30
	li %r4, 0x400
	addi %r3, %r31, 0x2938
	bl sub_9a0c
	rlwinm. %r0, %r27, 0, 30, 30
	beq- _1bc10
	addi %r4, %r31, 0x2938
	subi %r3, %r13, 0x7fac
	crxor 6, 6, 6
	bl sub_19b270
_1bc10:
	clrlwi. %r0, %r27, 31
	beq- _1bc28
	lis %r4, 0x802a
	mr %r3, %r28
	addi %r4, %r4, 0x2938
	bl sub_1b7d0
_1bc28:
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1bc40
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0c60
_1bc40:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

