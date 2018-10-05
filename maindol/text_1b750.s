	.text
	.global sub_1b750
sub_1b750: # 0x80022a10
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_1a910
	cmpwi %r3, 0x0
	beq- _1b7b8
	lbz %r0, 0x22(%r31)
	cmpwi %r0, 0x0
	beq- _1b7b8
	lhz %r3, 0x4(%r31)
	lhz %r0, 0x20(%r31)
	mulli %r5, %r3, 0x6
	lha %r3, 0x1c(%r31)
	lha %r4, 0x1e(%r31)
	subi %r3, %r3, 0x6
	mulli %r6, %r0, 0xa
	subi %r4, %r4, 0x3
	addi %r5, %r5, 0xc
	addi %r6, %r6, 0x4
	bl sub_1a940
	mr %r3, %r31
	li %r4, 0x0
	bl sub_1b5a0
	bl sub_1ab10
_1b7b8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

