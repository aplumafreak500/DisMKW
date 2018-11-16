	.text
	.global sub_1ec50
sub_1ec50: # 0x80025f10
	stwu %r1, -0x80(%r1)
	mflr %r0
	stw %r0, 0x84(%r1)
	stw %r31, 0x7c(%r1)
	bne- cr1, _1ec84
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_1ec84:
	addi %r11, %r1, 0x88
	addi %r0, %r1, 0x8
	lis %r12, 0x300
	stw %r7, 0x18(%r1)
	addi %r31, %r1, 0x68
	li %r7, 0x1
	stw %r6, 0x14(%r1)
	mr %r6, %r31
	stw %r3, 0x8(%r1)
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r12, 0x68(%r1)
	stw %r11, 0x6c(%r1)
	stw %r0, 0x70(%r1)
	bl sub_1eb10
	bl sub_127244
	lwz %r0, 0x84(%r1)
	lwz %r31, 0x7c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x80
	blr

