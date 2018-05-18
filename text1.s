	.text
	.global Text1Size
	.set Text1Size, Text1End - Text1Start
	.global Text1Start
Text1Start:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl 0x2336cc
	lis %r3, -0x7fda
	addi %r30, %r28, 0x3c
	addi %r3, %r3, -0x7d48
	stw %r3, 0(%r28)
	addi %r31, %r28, 0xc3c
	mr %r3, %r30
	bl 0x21f78c
	addi %r30, %r30, 0x400
	cmplw %r30, %r31
	blt 0x38
	lwz %r30, 0x14(%r28)
	li %r0, 0
	stw %r0, 0x30(%r28)
	cmpwi %r30, 0
	stw %r0, 0x34(%r28)
	stw %r0, 0x38(%r28)
	beq 0x88
	lwz %r12, 0(%r30)
	mr %r3, %r30
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x88
	b 0x8c
	li %r30, 0
	lwz %r31, 0x18(%r28)
	cmpwi %r31, 0
	beq 0xb8
	lwz %r12, 0(%r31)
	mr %r3, %r31
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0xb8
	b 0xbc
	li %r31, 0
	lwz %r29, 0x1c(%r28)
	cmpwi %r29, 0
	beq 0xe8
	lwz %r12, 0(%r29)
	mr %r3, %r29
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0xe8
	b 0xec
	li %r29, 0
	lis %r4, -0x7fda
	li %r0, 0
	addi %r4, %r4, -0x7d70
	stw %r30, 0x30(%r28)
	mr %r3, %r28
	stw %r31, 0x34(%r28)
	stw %r29, 0x38(%r28)
	stw %r4, 0(%r28)
	stw %r0, 0xc74(%r28)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	beq 0x16c
	li %r4, 0
	bl 0x233740
	cmpwi %r31, 0
	ble 0x16c
	mr %r3, %r30
	bl 0x2227d0
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	beq 0x1c8
	beq 0x1b8
	li %r4, 0
	bl 0x233740
	cmpwi %r31, 0
	ble 0x1c8
	mr %r3, %r30
	bl 0x2227d0
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl 0x1b84
	mr %r4, %r3
	lwz %r3, -0x6c08(%r13)
	lwz %r4, 0x60(%r4)
	li %r5, 1
	bl 0x2e88
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x40(%r1)
	mflr %r0
	li %r4, 0
	stw %r0, 0x44(%r1)
	stmw %r21, 0x14(%r1)
	mr %r30, %r3
	lwz %r3, -0x6c00(%r13)
	bl 0x3888
	lis %r25, -0x7fda
	li %r21, 0
	addi %r25, %r25, -0x7da0
	lis %r24, -0x7fda
	lis %r23, -0x7fda
	lwz %r3, -0x6c00(%r13)
	li %r5, 0
	lwz %r4, 0x34(%r30)
	li %r6, 0
	lwz %r0, 0x60(%r3)
	slwi %r0, %r0, 2
	lwzx %r3, %r25, %r0
	bl 0x4268
	mr %r22, %r3
	bl 0x21261c
	mr %r4, %r3
	lwz %r3, 0x30(%r30)
	li %r5, 0x20
	lwz %r12, 0(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl
	stw %r3, 0xc70(%r30)
	mr %r4, %r3
	mr %r3, %r22
	bl 0x211844
	lwz %r26, 0xc70(%r30)
	clrlwi. %r0, %r26, 0x1b
	beq 0x2c0
	addi %r3, %r24, -0x7c98
	addi %r5, %r23, -0x7cc0
	li %r4, 0x3c
	crclr 6
	bl 0x1ec50
	stw %r26, 0xc74(%r30)
	addi %r3, %r30, 0xc74
	bl 0x462d0
	lwz %r0, 0xc74(%r30)
	cmpwi %r0, 0
	bne 0x314
	lwz %r3, 0x34(%r30)
	mr %r4, %r22
	lwz %r12, 0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	lwz %r3, 0x30(%r30)
	lwz %r4, 0xc70(%r30)
	lwz %r12, 0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	addi %r21, %r21, 1
	cmpwi %r21, 0x64
	blt 0x24c
	lis %r23, -0x7fda
	addi %r21, %r30, 0xc80
	addi %r23, %r23, -0x7d80
	li %r31, 0
	li %r22, 0
	lis %r24, -0x7fda
	lis %r25, -0x7fda
	lis %r28, -0x7fda
	lis %r29, -0x7fda
	lwz %r3, -0x6c00(%r13)
	mr %r4, %r22
	lwz %r0, 0x58(%r3)
	cmpwi %r0, 0
	bne 0x350
	addi %r4, %r22, 1
	slwi %r0, %r4, 2
	addi %r3, %r30, 0xc74
	lwzx %r4, %r23, %r0
	bl 0x45180
	stw %r3, 0xc(%r1)
	addi %r3, %r1, 0xc
	addi %r7, %r1, 8
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r8, 0
	li %r9, 0
	li %r10, 0
	bl 0x4b5d0
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0
	bne 0x3b0
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x1ec50
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r26, 0x1e(%r3)
	bne 0x3dc
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x1ec50
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r27, 0x1c(%r3)
	bne 0x408
	addi %r3, %r28, -0x7d00
	addi %r5, %r29, -0x7d20
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x7ffc
	.incbin "basemain.dol", 0x2960, 0x23d680
	.global Text1End
Text1End:
