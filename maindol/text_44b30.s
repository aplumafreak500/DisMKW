	.text
	.global sub_44b30
sub_44b30: # 0x8004bdf0
	stwu %r1, -0x20(%r1)
	mflr %r0
	lwz %r5, 0x0(%r3)
	stw %r0, 0x24(%r1)
	addi %r8, %r5, 0x8
	stw %r31, 0x1c(%r1)
	lhz %r0, 0xc(%r5)
	lwz %r3, 0x0(%r4)
	slwi  %r0, %r0, 4
	addi %r7, %r3, 0x4
	lwz %r6, 0x0(%r3)
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
	b _44bb4
_44b68:
	extrwi  %r0, %r3, 13, 16
	mr %r8, %r31
	cmplw %r0, %r6
	clrlwi  %r3, %r3, 29
	bge- _44ba4
	lbzx %r0, %r7, %r0
	extsb %r0, %r0
	sraw %r0, %r0, %r3
	clrlwi. %r0, %r0, 31
	beq- _44ba4
	lhz %r0, 0x6(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
	b _44bb4
_44ba4:
	lhz %r0, 0x4(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
_44bb4:
	lhz %r3, 0x0(%r31)
	lhz %r0, 0x0(%r8)
	cmplw %r0, %r3
	bgt+ _44b68
	lwz %r0, 0x8(%r31)
	mr %r3, %r4
	addi %r4, %r1, 0x8
	add %r5, %r5, %r0
	subi %r0, %r5, 0x4
	stw %r0, 0x8(%r1)
	bl sub_44980
	cmpwi %r3, 0x0
	beq- _44bf0
	mr %r3, %r31
	b _44bf4
_44bf0:
	li %r3, 0x0
_44bf4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

