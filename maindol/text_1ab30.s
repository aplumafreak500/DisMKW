	.text
	.global sub_1ab30
sub_1ab30: # 0x80021df0
	stwu %r1, -0x190(%r1)
	mflr %r0
	mr %r12, %r6
	stw %r0, 0x194(%r1)
	stw %r31, 0x18c(%r1)
	mr %r31, %r5
	stw %r30, 0x188(%r1)
	mr %r30, %r4
	stw %r29, 0x184(%r1)
	mr %r29, %r3
	bne- cr1, _1ab7c
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_1ab7c:
	lis %r11, 0x802a
	stw %r3, 0x8(%r1)
	lwz %r0, 0x28f8(%r11)
	stw %r4, 0xc(%r1)
	cmpwi %r0, 0x0
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	beq- _1abf8
	addi %r4, %r1, 0x198
	addi %r0, %r1, 0x8
	lis %r3, 0x400
	stw %r3, 0x68(%r1)
	addi %r6, %r1, 0x68
	mr %r5, %r12
	stw %r4, 0x6c(%r1)
	addi %r3, %r1, 0x78
	li %r4, 0x100
	stw %r0, 0x70(%r1)
	bl sub_9a0c
	cmpwi %r3, 0x0
	ble- _1abf8
	mr %r3, %r29
	mr %r4, %r30
	mr %r6, %r31
	addi %r5, %r1, 0x78
	li %r7, 0x0
	bl sub_1ac20
_1abf8:
	lwz %r0, 0x194(%r1)
	lwz %r31, 0x18c(%r1)
	lwz %r30, 0x188(%r1)
	lwz %r29, 0x184(%r1)
	mtlr %r0
	addi %r1, %r1, 0x190
	blr

