	.text
	.global sub_1ea60
sub_1ea60: # 0x80025d20
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8027
	subi %r31, %r31, 0x2180
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	addi %r3, %r31, 0x0
	crxor 6, 6, 6
	bl sub_1e9a0
	addi %r3, %r31, 0x28
	crxor 6, 6, 6
	bl sub_1e9a0
	li %r30, 0x0
_1eaa0:
	cmpwi %r29, 0x0
	beq- _1eaf0
	addis %r0, %r29, 0x1
	cmplwi %r0, 0xffff
	beq- _1eaf0
	clrrwi. %r0, %r29, 31
	beq- _1eaf0
	lwz %r5, 0x0(%r29)
	mr %r4, %r29
	lwz %r6, 0x4(%r29)
	addi %r3, %r31, 0x48
	crxor 6, 6, 6
	bl sub_1e9a0
	subi %r3, %r13, 0x7f6c
	crxor 6, 6, 6
	bl sub_1e9a0
	addi %r30, %r30, 0x1
	lwz %r29, 0x0(%r29)
	cmplwi %r30, 0x10
	blt+ _1eaa0
_1eaf0:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
