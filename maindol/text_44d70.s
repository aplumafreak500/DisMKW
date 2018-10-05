	.text
	.global sub_44d70
sub_44d70: # 0x8004c030
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	beq- _44dc0
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	beq- _44dc0
	stw %r0, 0x8(%r1)
	addi %r4, %r1, 0x8
	bl sub_44b30
	cmpwi %r3, 0x0
	beq- _44dc0
	lwz %r4, 0x0(%r31)
	lwz %r0, 0xc(%r3)
	add %r3, %r4, %r0
	b _44dc4
_44dc0:
	li %r3, 0x0
_44dc4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

