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
	bl 0x8023a98c
	lis %r3, -0x7fda
	addi %r30, %r28, 0x3c
	addi %r3, %r3, -0x7d48
	stw %r3, 0(%r28)
	addi %r31, %r28, 0xc3c
	mr %r3, %r30
	bl 0x80226a4c
	addi %r30, %r30, 0x400
	cmplw %r30, %r31
	blt 0x800072f8
	lwz %r30, 0x14(%r28)
	li %r0, 0
	stw %r0, 0x30(%r28)
	cmpwi %r30, 0
	stw %r0, 0x34(%r28)
	stw %r0, 0x38(%r28)
	beq 0x80007348
	lwz %r12, 0(%r30)
	mr %r3, %r30
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x80007348
	b 0x8000734c
	li %r30, 0
	lwz %r31, 0x18(%r28)
	cmpwi %r31, 0
	beq 0x80007378
	lwz %r12, 0(%r31)
	mr %r3, %r31
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x80007378
	b 0x8000737c
	li %r31, 0
	lwz %r29, 0x1c(%r28)
	cmpwi %r29, 0
	beq 0x800073a8
	lwz %r12, 0(%r29)
	mr %r3, %r29
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x800073a8
	b 0x800073ac
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
	beq 0x8000742c
	li %r4, 0
	bl 0x8023aa00
	cmpwi %r31, 0
	ble 0x8000742c
	mr %r3, %r30
	bl 0x80229a90
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
	beq 0x80007488
	beq 0x80007478
	li %r4, 0
	bl 0x8023aa00
	cmpwi %r31, 0
	ble 0x80007488
	mr %r3, %r30
	bl 0x80229a90
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
	bl 0x80008e44
	mr %r4, %r3
	lwz %r3, -0x6c08(%r13)
	lwz %r4, 0x60(%r4)
	li %r5, 1
	bl 0x8000a148
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
	bl 0x8000ab48
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
	bl 0x8000b528
	mr %r22, %r3
	bl 0x802198dc
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
	bl 0x80218b04
	lwz %r26, 0xc70(%r30)
	clrlwi. %r0, %r26, 0x1b
	beq 0x80007580
	addi %r3, %r24, -0x7c98
	addi %r5, %r23, -0x7cc0
	li %r4, 0x3c
	crclr 6
	bl 0x80025f10
	stw %r26, 0xc74(%r30)
	addi %r3, %r30, 0xc74
	bl 0x8004d590
	lwz %r0, 0xc74(%r30)
	cmpwi %r0, 0
	bne 0x800075d4
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
	blt 0x8000750c
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
	bne 0x80007610
	addi %r4, %r22, 1
	slwi %r0, %r4, 2
	addi %r3, %r30, 0xc74
	lwzx %r4, %r23, %r0
	bl 0x8004c440
	stw %r3, 0xc(%r1)
	addi %r3, %r1, 0xc
	addi %r7, %r1, 8
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r8, 0
	li %r9, 0
	li %r10, 0
	bl 0x80052890
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0
	bne 0x80007670
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x80025f10
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r26, 0x1e(%r3)
	bne 0x8000769c
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x80025f10
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r27, 0x1c(%r3)
	bne 0x800076c8
	addi %r3, %r28, -0x7d00
	addi %r5, %r29, -0x7d20
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x7ffc
	crclr 6
	bl 0x80025f10
	lwz %r4, 0xc(%r1)
	mr %r3, %r21
	lwz %r0, 0x10(%r4)
	cmpwi %r0, 0
	beq 0x800076e4
	add %r4, %r4, %r0
	b 0x800076e8
	li %r4, 0
	lwz %r7, 8(%r1)
	mr %r5, %r27
	mr %r6, %r26
	li %r8, 0
	li %r9, 0
	li %r10, 0
	bl 0x80170758
	addi %r31, %r31, 1
	addi %r21, %r21, 0x20
	cmpwi %r31, 2
	addi %r22, %r22, 2
	blt 0x800075f8
	lwz %r6, 0x34(%r30)
	li %r3, 5
	li %r4, 0x14
	li %r5, 0x5000
	bl 0x80241a2c
	lis %r4, -0x8000
	stw %r3, 0xc78(%r30)
	addi %r4, %r4, 0x74a4
	li %r5, 0
	li %r6, 0
	bl 0x80241d5c
	li %r4, 0
	li %r0, 1
	stw %r4, 0xcc0(%r30)
	stw %r4, 0xcc4(%r30)
	stw %r4, 0xcc8(%r30)
	stb %r4, 0xccc(%r30)
	stb %r0, 0xc7d(%r30)
	lwz %r3, -0x6c00(%r13)
	lwz %r0, 0x70(%r3)
	cmpwi %r0, 1
	bne 0x80007774
	stb %r4, 0xc7d(%r30)
	li %r0, 0xff
	sth %r0, 0xcce(%r30)
	sth %r0, 0xcd0(%r30)
	sth %r0, 0xcd2(%r30)
	sth %r0, 0xcd4(%r30)
	bl 0x801e5784
	cmpwi %r3, 0
	mr %r4, %r3
	beq 0x800077a8
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x4f60
	crclr 6
	bl 0x801a2530
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	bl 0x8023aac8
	lmw %r21, 0x14(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	stwu %r1, -0x890(%r1)
	mflr %r0
	stw %r0, 0x894(%r1)
	stw %r31, 0x88c(%r1)
	li %r31, 0
	stw %r30, 0x888(%r1)
	mr %r30, %r3
	stw %r29, 0x884(%r1)
	li %r29, 0
	b 0x80007864
	mr %r3, %r29
	addi %r4, %r1, 8
	bl 0x801c08f0
	cmpwi %r3, 0
	bne 0x80007860
	lwz %r0, 8(%r1)
	cmplwi %r0, 0xfd
	beq 0x80007860
	mr %r3, %r29
	addi %r4, %r1, 0x40
	li %r5, 0x10
	bl 0x801972e0
	cmpwi %r3, 0
	ble 0x80007860
	lbz %r0, 0x9d(%r1)
	extsb. %r0, %r0
	bne 0x80007860
	lwz %r0, 0x44(%r1)
	rlwinm. %r0, %r0, 0, 0x11, 0xf
	beq 0x80007844
	li %r31, 1
	lbz %r0, 0x9c(%r1)
	cmplwi %r0, 2
	bne 0x80007860
	lwz %r0, 0xa4(%r1)
	rlwinm. %r0, %r0, 0, 0x15, 0x13
	beq 0x80007860
	li %r31, 1
	addi %r29, %r29, 1
	cmpwi %r29, 4
	bge 0x80007874
	cmpwi %r31, 0
	beq 0x800077f0
	cmpwi %r31, 0
	bne 0x800079b0
	addi %r3, %r1, 0x10
	bl 0x801af3ac
	lis %r6, -0x7fdc
	li %r0, 2
	addi %r6, %r6, 0x4f50
	li %r3, 0
	li %r8, 0
	li %r5, 0xff
	mtctr %r0
	clrlwi %r0, %r8, 0x18
	addi %r4, %r1, 0x10
	mulli %r0, %r0, 0xc
	add %r4, %r4, %r0
	lbz %r0, 0xa(%r4)
	extsb %r0, %r0
	cmpwi %r0, -1
	beq 0x800078cc
	cmpwi %r0, 0
	beq 0x800078e8
	b 0x80007910
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	rlwinm %r7, %r8, 2, 0x16, 0x1d
	add %r4, %r30, %r0
	lwzx %r0, %r6, %r7
	sth %r5, 0xcce(%r4)
	or %r3, %r3, %r0
	b 0x8000791c
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	lhz %r4, 0(%r4)
	add %r7, %r30, %r0
	lhz %r0, 0xcce(%r7)
	andc %r0, %r4, %r0
	sth %r4, 0xcce(%r7)
	clrlwi. %r0, %r0, 0x10
	beq 0x8000791c
	li %r31, 1
	b 0x8000791c
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	add %r4, %r30, %r0
	sth %r5, 0xcce(%r4)
	addi %r8, %r8, 1
	addi %r4, %r1, 0x10
	clrlwi %r0, %r8, 0x18
	mulli %r0, %r0, 0xc
	add %r4, %r4, %r0
	lbz %r0, 0xa(%r4)
	extsb %r0, %r0
	cmpwi %r0, -1
	beq 0x8000794c
	cmpwi %r0, 0
	beq 0x80007968
	b 0x80007990
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	rlwinm %r7, %r8, 2, 0x16, 0x1d
	add %r4, %r30, %r0
	lwzx %r0, %r6, %r7
	sth %r5, 0xcce(%r4)
	or %r3, %r3, %r0
	b 0x8000799c
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	lhz %r4, 0(%r4)
	add %r7, %r30, %r0
	lhz %r0, 0xcce(%r7)
	andc %r0, %r4, %r0
	sth %r4, 0xcce(%r7)
	clrlwi. %r0, %r0, 0x10
	beq 0x8000799c
	li %r31, 1
	b 0x8000799c
	rlwinm %r0, %r8, 1, 0x17, 0x1e
	add %r4, %r30, %r0
	sth %r5, 0xcce(%r4)
	addi %r8, %r8, 1
	bdnz 0x800078a0
	cmpwi %r3, 0
	beq 0x800079b0
	bl 0x801af03c
	mr %r3, %r31
	lwz %r31, 0x88c(%r1)
	lwz %r30, 0x888(%r1)
	lwz %r29, 0x884(%r1)
	lwz %r0, 0x894(%r1)
	mtlr %r0
	addi %r1, %r1, 0x890
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	lwz %r5, 0xcc0(%r3)
	lwz %r4, 0xcc4(%r3)
	addi %r0, %r5, 1
	stw %r0, 0xcc0(%r3)
	addi %r0, %r4, 1
	stw %r0, 0xcc4(%r3)
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	lwz %r3, 0x24(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x80007a6c
	lwz %r3, 0xcc4(%r31)
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lwz %r3, -0x6c00(%r13)
	stw %r0, 8(%r1)
	lfd %f1, -0x7ff0(%r2)
	lfd %f0, 8(%r1)
	lfs %f2, 0x7c(%r3)
	fsubs %f1, %f0, %f1
	lfs %f0, -0x8000(%r2)
	fmuls %f1, %f1, %f2
	invalid
	ble 0x80007a6c
	lwz %r3, 0xcc8(%r31)
	li %r0, 0
	stw %r0, 0xcc4(%r31)
	addi %r0, %r3, 1
	clrlwi %r0, %r0, 0x1f
	stw %r0, 0xcc8(%r31)
	lwz %r3, -0x6c00(%r13)
	lbz %r0, 0xb4(%r3)
	cmpwi %r0, 0
	beq 0x80007a84
	bl 0x8000b0b4
	b 0x80007bac
	lbz %r0, 0xb5(%r3)
	cmpwi %r0, 0
	beq 0x80007a98
	bl 0x8000b11c
	b 0x80007bac
	lwz %r3, 0xc78(%r31)
	bl 0x80241ddc
	cmpwi %r3, 0
	bne 0x80007bac
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	lwz %r3, 0x24(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne 0x80007b60
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	lwz %r0, 0x14(%r3)
	cmpwi %r0, -1
	bne 0x80007b60
	lwz %r3, 0xc78(%r31)
	bl 0x80241ddc
	cmpwi %r3, 0
	bne 0x80007b60
	lwz %r3, 0xcc0(%r31)
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lwz %r3, -0x6c00(%r13)
	stw %r0, 8(%r1)
	lfd %f1, -0x7ff0(%r2)
	lfd %f0, 8(%r1)
	lfs %f2, 0x7c(%r3)
	fsubs %f1, %f0, %f1
	lfs %f0, -0x7ffc(%r2)
	fmuls %f1, %f1, %f2
	invalid
	bgt 0x80007b3c
	lbz %r0, 0xccc(%r31)
	cmpwi %r0, 0
	bne 0x80007b3c
	lwz %r0, 0x70(%r3)
	cmpwi %r0, 0
	beq 0x80007b60
	bl 0x80008e44
	lwz %r3, 0x60(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0x28(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c08(%r13)
	li %r4, 1
	bl 0x8000a3b8
	lbz %r0, 0xccc(%r31)
	cmpwi %r0, 0
	bne 0x80007bac
	lwz %r3, 0xcc0(%r31)
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lwz %r3, -0x6c00(%r13)
	stw %r0, 8(%r1)
	lfd %f1, -0x7ff0(%r2)
	lfd %f0, 8(%r1)
	lfs %f2, 0x7c(%r3)
	fsubs %f1, %f0, %f1
	lfs %f0, -0x7ff8(%r2)
	fmuls %f1, %f1, %f2
	invalid
	ble 0x80007bac
	mr %r3, %r31
	bl 0x800077c8
	stb %r3, 0xccc(%r31)
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	lwz %r3, 4(%r3)
	blr
	stwu %r1, -0xd0(%r1)
	mflr %r0
	stw %r0, 0xd4(%r1)
	stfd %f31, 0xc0(%r1)
	invalid
	stfd %f30, 0xb0(%r1)
	xxsel vs30, vs1, vs0, vs34
	lfs %f1, -0x7fdc(%r2)
	stw %r31, 0xac(%r1)
	mr %r31, %r3
	fmr %f3, %f1
	lfs %f4, -0x7fe4(%r2)
	fmr %f5, %f1
	lfs %f2, -0x7fe0(%r2)
	lfs %f6, -0x7fd8(%r2)
	addi %r3, %r1, 0x40
	bl 0x8019aaac
	lwz %r3, -0x6c38(%r13)
	lis %r0, 0x4330
	lfs %f1, -0x7fdc(%r2)
	lwz %r3, 0x44(%r3)
	stw %r0, 0x80(%r1)
	fmr %f2, %f1
	lwz %r4, 0(%r3)
	fmr %f5, %f1
	stw %r0, 0x88(%r1)
	lhz %r3, 4(%r4)
	lhz %r0, 6(%r4)
	stw %r3, 0x84(%r1)
	lfd %f4, -0x7ff0(%r2)
	stw %r0, 0x8c(%r1)
	lfd %f3, 0x80(%r1)
	lfd %f0, 0x88(%r1)
	fsubs %f31, %f3, %f4
	lfs %f6, -0x7fd4(%r2)
	fsubs %f30, %f0, %f4
	fmr %f3, %f31
	fmr %f4, %f30
	bl 0x80173314
	fctiwz %f1, %f31
	li %r3, 0
	fctiwz %f0, %f30
	li %r4, 0
	stfd %f1, 0x90(%r1)
	stfd %f0, 0x98(%r1)
	lwz %r5, 0x94(%r1)
	lwz %r0, 0x9c(%r1)
	clrlwi %r5, %r5, 0x10
	clrlwi %r6, %r0, 0x10
	bl 0x80173390
	addi %r3, %r1, 0x40
	li %r4, 1
	bl 0x80172f7c
	addi %r3, %r1, 0x10
	bl 0x80199c64
	addi %r3, %r1, 0x10
	li %r4, 0
	bl 0x8017306c
	li %r3, 0
	bl 0x80173174
	li %r3, 1
	bl 0x801704ac
	li %r3, 2
	li %r4, 1
	li %r5, 0
	li %r6, 3
	bl 0x801726dc
	li %r3, 1
	bl 0x8017272c
	li %r3, 0
	bl 0x80171a98
	li %r3, 0
	bl 0x8016f318
	bl 0x8016db94
	li %r3, 0
	li %r4, 9
	li %r5, 0
	li %r6, 4
	li %r7, 0
	bl 0x8016dbc8
	li %r3, 9
	li %r4, 1
	bl 0x8016d304
	lbz %r0, 0xc7d(%r31)
	cmpwi %r0, 0
	beq 0x80007e38
	li %r3, 0
	li %r4, 0xd
	li %r5, 1
	li %r6, 1
	li %r7, 0
	bl 0x8016dbc8
	li %r3, 0xd
	li %r4, 1
	bl 0x8016d304
	li %r3, 1
	bl 0x8016e504
	li %r3, 1
	bl 0x80172208
	li %r3, 4
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r7, 0
	li %r8, 0
	li %r9, 2
	bl 0x801704d0
	lwz %r0, 0xcc8(%r31)
	li %r4, 0
	slwi %r0, %r0, 5
	add %r3, %r31, %r0
	addi %r3, %r3, 0xc80
	bl 0x80170e8c
	li %r3, 0
	li %r4, 1
	li %r5, 4
	li %r6, 0x3c
	li %r7, 0
	li %r8, 0x7d
	bl 0x8016e2dc
	li %r3, 0
	li %r4, 0
	li %r5, 0
	li %r6, 0xff
	bl 0x801720ac
	li %r3, 0
	li %r4, 1
	bl 0x80171bac
	li %r3, 0x80
	li %r4, 0
	li %r5, 4
	bl 0x8016f050
	lis %r4, -0x33ff
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r4)
	li %r3, 0
	lfs %f0, -0x7fdc(%r2)
	li %r0, 1
	stfs %f0, -0x8000(%r4)
	stb %r3, -0x8000(%r4)
	stb %r3, -0x8000(%r4)
	stfs %f31, -0x8000(%r4)
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r4)
	stb %r0, -0x8000(%r4)
	stb %r3, -0x8000(%r4)
	stfs %f31, -0x8000(%r4)
	stfs %f30, -0x8000(%r4)
	stb %r0, -0x8000(%r4)
	stb %r0, -0x8000(%r4)
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r4)
	stfs %f30, -0x8000(%r4)
	stb %r3, -0x8000(%r4)
	stb %r0, -0x8000(%r4)
	b 0x80007f08
	li %r3, 1
	bl 0x80172208
	li %r3, 0
	bl 0x8016e504
	li %r3, 4
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r7, 0
	li %r8, 0
	li %r9, 2
	bl 0x801704d0
	lbz %r7, -0x7fe8(%r2)
	addi %r4, %r1, 8
	lbz %r6, -0x7fe7(%r2)
	li %r3, 4
	lbz %r5, -0x7fe6(%r2)
	lbz %r0, -0x7fe5(%r2)
	stb %r7, 8(%r1)
	stb %r6, 9(%r1)
	stb %r5, 0xa(%r1)
	stb %r0, 0xb(%r1)
	bl 0x801702fc
	li %r3, 0
	li %r4, 1
	li %r5, 4
	li %r6, 0x3c
	li %r7, 0
	li %r8, 0x7d
	bl 0x8016e2dc
	li %r3, 0
	li %r4, 0xff
	li %r5, 0xff
	li %r6, 4
	bl 0x801720ac
	li %r3, 0x80
	li %r4, 0
	li %r5, 4
	bl 0x8016f050
	lis %r3, -0x33ff
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r3)
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r3)
	stfs %f31, -0x8000(%r3)
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r3)
	stfs %f31, -0x8000(%r3)
	stfs %f30, -0x8000(%r3)
	lfs %f0, -0x7fdc(%r2)
	stfs %f0, -0x8000(%r3)
	stfs %f30, -0x8000(%r3)
	invalid
	lfd %f31, 0xc0(%r1)
	invalid
	lfd %f30, 0xb0(%r1)
	lwz %r0, 0xd4(%r1)
	lwz %r31, 0xac(%r1)
	mtlr %r0
	addi %r1, %r1, 0xd0
	blr
	lwz %r3, 0xc78(%r3)
	b 0x80241cec
	blr
	blr
	blr
	blr
	blr
	blr
	blr
	lis %r4, -0x7fdc
	slwi %r0, %r3, 3
	addi %r4, %r4, 0x5008
	lwzx %r3, %r4, %r0
	blr
	lis %r4, -0x7fdc
	slwi %r0, %r3, 3
	addi %r4, %r4, 0x5008
	add %r3, %r4, %r0
	lwz %r3, 4(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl 0x800b2790
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
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
	beq 0x80007fe8
	li %r4, -1
	bl 0x800b27d0
	cmpwi %r31, 0
	ble 0x80007fe8
	mr %r3, %r30
	bl 0x80229a90
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, -0x7fda
	stw %r0, 0x14(%r1)
	addi %r4, %r4, -0x7c80
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl 0x800b2830
	lwz %r3, -0x6c00(%r13)
	lwz %r0, 0x5c(%r3)
	cmpwi %r0, 3
	beq 0x80008050
	bge 0x80008044
	cmpwi %r0, 1
	beq 0x80008088
	b 0x80008088
	cmpwi %r0, 5
	bge 0x80008088
	b 0x8000806c
	lis %r4, -0x7fdc
	lis %r3, -0x7fdc
	addi %r4, %r4, 0x5138
	stw %r4, 0x1c(%r31)
	addi %r3, %r3, 0x5194
	stw %r3, 0x20(%r31)
	b 0x800080a0
	lis %r4, -0x7fdc
	lis %r3, -0x7fdc
	addi %r4, %r4, 0x5258
	stw %r4, 0x1c(%r31)
	addi %r3, %r3, 0x52bc
	stw %r3, 0x20(%r31)
	b 0x800080a0
	lis %r4, -0x7fdc
	lis %r3, -0x7fdc
	addi %r4, %r4, 0x5030
	stw %r4, 0x1c(%r31)
	addi %r3, %r3, 0x508c
	stw %r3, 0x20(%r31)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	blr
	stwu %r1, -0x150(%r1)
	mflr %r0
	stw %r0, 0x154(%r1)
	stfd %f31, 0x140(%r1)
	xsmaddmdp %f31, %f1, %f0
	stfd %f30, 0x130(%r1)
	xxsel vs30, vs1, vs0, vs36
	lis %r0, 0x4330
	stw %r31, 0x12c(%r1)
	stw %r30, 0x128(%r1)
	mr %r30, %r3
	stw %r29, 0x124(%r1)
	li %r29, 0
	lwz %r4, -0x6c40(%r13)
	stw %r0, 0x110(%r1)
	lwz %r4, 0x48(%r4)
	stw %r0, 0x118(%r1)
	cmpwi %r4, 1
	blt 0x8000810c
	cmpwi %r4, 3
	ble 0x80008118
	cmpwi %r4, 4
	beq 0x80008120
	b 0x80008124
	lwz %r29, 0x1c(%r3)
	b 0x80008124
	lwz %r29, 0x20(%r3)
	cmpwi %r29, 0
	beq 0x80008b64
	addi %r3, %r1, 0x20
	bl 0x80173340
	addi %r3, %r1, 0x10
	addi %r4, %r1, 0x14
	addi %r5, %r1, 0x18
	addi %r6, %r1, 0x1c
	bl 0x801733f8
	lwz %r4, -0x6c38(%r13)
	lwz %r3, -0x6c00(%r13)
	lwz %r4, 0x44(%r4)
	lwz %r0, 0x58(%r3)
	lwz %r31, 0(%r4)
	cmpwi %r0, 1
	lfd %f5, -0x7fb8(%r2)
	lhz %r0, 6(%r31)
	stw %r0, 0x11c(%r1)
	neg %r0, %r0
	lhz %r3, 4(%r31)
	xoris %r0, %r0, 0x8000
	stw %r0, 0x114(%r1)
	lfd %f1, 0x118(%r1)
	neg %r0, %r3
	lfd %f0, 0x110(%r1)
	xoris %r0, %r0, 0x8000
	lfd %f3, -0x7fb0(%r2)
	stw %r3, 0x11c(%r1)
	fsubs %f6, %f0, %f5
	fsubs %f2, %f1, %f3
	lfs %f4, -0x7fc8(%r2)
	stw %r0, 0x114(%r1)
	lfd %f0, 0x118(%r1)
	lfd %f1, 0x110(%r1)
	fmuls %f2, %f4, %f2
	fsubs %f0, %f0, %f3
	fsubs %f3, %f1, %f5
	lfs %f5, -0x7fd0(%r2)
	fmuls %f1, %f4, %f6
	lfs %f6, -0x7fcc(%r2)
	fmuls %f3, %f4, %f3
	fmuls %f4, %f4, %f0
	bne 0x800081dc
	lfs %f0, -0x7fc4(%r2)
	fmuls %f3, %f3, %f0
	fmuls %f4, %f4, %f0
	addi %r3, %r1, 0x68
	bl 0x8019aaac
	addi %r3, %r1, 0x68
	li %r4, 1
	bl 0x80172f7c
	lhz %r3, 4(%r31)
	lhz %r0, 6(%r31)
	stw %r3, 0x114(%r1)
	lfs %f1, -0x7fd0(%r2)
	stw %r0, 0x11c(%r1)
	lfd %f4, -0x7fb0(%r2)
	fmr %f2, %f1
	lfd %f3, 0x110(%r1)
	fmr %f5, %f1
	lfd %f0, 0x118(%r1)
	fsubs %f3, %f3, %f4
	lfs %f6, -0x7fcc(%r2)
	fsubs %f4, %f0, %f4
	bl 0x80173314
	lhz %r5, 4(%r31)
	li %r3, 0
	lhz %r6, 6(%r31)
	li %r4, 0
	bl 0x80173390
	addi %r3, %r1, 0x38
	bl 0x80199c64
	addi %r3, %r1, 0x38
	li %r4, 0
	bl 0x8017306c
	li %r3, 0
	bl 0x80173174
	addi %r3, %r1, 0xa8
	bl 0x800b7e80
	addi %r3, %r1, 0xa8
	li %r4, 1
	rlwinm %r31, %r3, 0, 0, 7
	li %r5, 1
	addis %r0, %r31, -0x8000
	li %r6, 1
	cmplwi %r0, 0
	li %r7, 1
	li %r8, 1
	li %r9, 1
	beq 0x800082a0
	rlwinm %r3, %r3, 0, 0, 8
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0
	beq 0x800082a0
	li %r9, 0
	cmpwi %r9, 0
	bne 0x800082c0
	addi %r0, %r1, 0xa8
	rlwinm %r3, %r0, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800082c0
	li %r8, 0
	cmpwi %r8, 0
	bne 0x800082d8
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x800082d8
	li %r7, 0
	cmpwi %r7, 0
	bne 0x800082f8
	addi %r0, %r1, 0xa8
	rlwinm %r3, %r0, 0, 0, 8
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0
	beq 0x800082f8
	li %r6, 0
	cmpwi %r6, 0
	bne 0x80008318
	addi %r0, %r1, 0xa8
	rlwinm %r3, %r0, 0, 0, 4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008318
	li %r5, 0
	cmpwi %r5, 0
	bne 0x80008338
	addi %r0, %r1, 0xa8
	rlwinm %r3, %r0, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	beq 0x80008338
	li %r4, 0
	cmpwi %r4, 0
	bne 0x80008360
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x381c
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x3850
	li %r4, 0x41
	crclr 6
	bl 0x80025f10
	rlwinm %r10, %r30, 0, 0, 7
	li %r4, 1
	addis %r0, %r10, -0x8000
	li %r5, 1
	cmplwi %r0, 0
	li %r6, 1
	li %r7, 1
	li %r8, 1
	li %r9, 1
	beq 0x8000839c
	rlwinm %r3, %r30, 0, 0, 8
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0
	beq 0x8000839c
	li %r9, 0
	cmpwi %r9, 0
	bne 0x800083b8
	rlwinm %r3, %r30, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800083b8
	li %r8, 0
	cmpwi %r8, 0
	bne 0x800083d0
	addis %r0, %r10, 0x4000
	cmplwi %r0, 0
	beq 0x800083d0
	li %r7, 0
	cmpwi %r7, 0
	bne 0x800083ec
	rlwinm %r3, %r30, 0, 0, 8
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0
	beq 0x800083ec
	li %r6, 0
	cmpwi %r6, 0
	bne 0x80008408
	rlwinm %r3, %r30, 0, 0, 4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008408
	li %r5, 0
	cmpwi %r5, 0
	bne 0x80008424
	rlwinm %r3, %r30, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	beq 0x80008424
	li %r4, 0
	cmpwi %r4, 0
	bne 0x8000844c
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	mr %r6, %r30
	li %r4, 0x42
	addi %r3, %r3, -0x3860
	addi %r5, %r5, -0x3898
	crclr 6
	bl 0x80025f10
	addis %r0, %r31, -0x8000
	stw %r30, 0xf0(%r1)
	cmplwi %r0, 0
	li %r6, 0
	beq 0x800084b8
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x800084b8
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800084b8
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x800084b8
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x800084b8
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x800084b8
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x800084bc
	li %r6, 1
	cmpwi %r6, 0
	bne 0x800084e4
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x38ac
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x38e0
	li %r4, 0x5d
	crclr 6
	bl 0x80025f10
	addis %r0, %r31, -0x8000
	lfs %f0, -0x7fc0(%r2)
	cmplwi %r0, 0
	stfs %f0, 0xfc(%r1)
	li %r6, 0
	beq 0x80008554
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x80008554
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008554
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x80008554
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x80008554
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008554
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x80008558
	li %r6, 1
	cmpwi %r6, 0
	bne 0x80008580
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x38f4
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x3928
	li %r4, 0x62
	crclr 6
	bl 0x80025f10
	lfs %f0, -0x7fcc(%r2)
	addi %r3, %r1, 0xa8
	stfs %f0, 0xf8(%r1)
	lfs %f1, -0x7fbc(%r2)
	bl 0x800b3900
	addis %r0, %r31, -0x8000
	li %r6, 0
	cmplwi %r0, 0
	beq 0x800085fc
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x800085fc
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800085fc
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x800085fc
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x800085fc
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x800085fc
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x80008600
	li %r6, 1
	cmpwi %r6, 0
	bne 0x80008628
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x393c
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x3970
	li %r4, 0xd4
	crclr 6
	bl 0x80025f10
	rlwinm %r30, %r29, 0, 0, 7
	li %r4, 1
	addis %r0, %r30, -0x8000
	li %r5, 1
	cmplwi %r0, 0
	li %r6, 1
	li %r7, 1
	li %r8, 1
	li %r9, 1
	beq 0x80008664
	rlwinm %r3, %r29, 0, 0, 8
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0
	beq 0x80008664
	li %r9, 0
	cmpwi %r9, 0
	bne 0x80008680
	rlwinm %r3, %r29, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008680
	li %r8, 0
	cmpwi %r8, 0
	bne 0x80008698
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0
	beq 0x80008698
	li %r7, 0
	cmpwi %r7, 0
	bne 0x800086b4
	rlwinm %r3, %r29, 0, 0, 8
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0
	beq 0x800086b4
	li %r6, 0
	cmpwi %r6, 0
	bne 0x800086d0
	rlwinm %r3, %r29, 0, 0, 4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x800086d0
	li %r5, 0
	cmpwi %r5, 0
	bne 0x800086ec
	rlwinm %r3, %r29, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	beq 0x800086ec
	li %r4, 0
	cmpwi %r4, 0
	bne 0x80008714
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	mr %r6, %r29
	li %r4, 0xd5
	addi %r3, %r3, -0x3984
	addi %r5, %r5, -0x39b8
	crclr 6
	bl 0x80025f10
	mr %r3, %r29
	bl 0x80016e38
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl 0x800b8d90
	addis %r0, %r31, -0x8000
	fmr %f30, %f1
	cmplwi %r0, 0
	li %r6, 0
	beq 0x80008798
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x80008798
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008798
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x80008798
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x80008798
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008798
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x8000879c
	li %r6, 1
	cmpwi %r6, 0
	bne 0x800087c4
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x39cc
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x3a00
	li %r4, 0xde
	crclr 6
	bl 0x80025f10
	addis %r0, %r30, -0x8000
	li %r5, 0
	cmplwi %r0, 0
	beq 0x80008828
	rlwinm %r4, %r29, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x80008828
	rlwinm %r3, %r29, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008828
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0
	beq 0x80008828
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x80008828
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008828
	rlwinm %r3, %r29, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x8000882c
	li %r5, 1
	cmpwi %r5, 0
	bne 0x80008854
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	mr %r6, %r29
	li %r4, 0xdf
	addi %r3, %r3, -0x3a14
	addi %r5, %r5, -0x3a48
	crclr 6
	bl 0x80025f10
	mr %r3, %r29
	bl 0x80016e38
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl 0x800b9040
	addis %r0, %r31, -0x8000
	li %r3, -1
	fmr %f31, %f1
	cmplwi %r0, 0
	stw %r3, 8(%r1)
	li %r6, 0
	beq 0x800088e0
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x800088e0
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800088e0
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x800088e0
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x800088e0
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x800088e0
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x800088e4
	li %r6, 1
	cmpwi %r6, 0
	bne 0x8000890c
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x37d8
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x380c
	li %r4, 0x87
	crclr 6
	bl 0x80025f10
	lbz %r6, 8(%r1)
	addi %r3, %r1, 0xa8
	lbz %r5, 9(%r1)
	lbz %r4, 0xa(%r1)
	lbz %r0, 0xb(%r1)
	stb %r6, 0xc0(%r1)
	stb %r5, 0xc1(%r1)
	stb %r4, 0xc2(%r1)
	stb %r0, 0xc3(%r1)
	bl 0x800b3e50
	addi %r3, %r1, 0xa8
	bl 0x800b2e50
	addis %r0, %r31, -0x8000
	li %r6, 0
	cmplwi %r0, 0
	beq 0x800089a4
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x800089a4
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x800089a4
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x800089a4
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x800089a4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x800089a4
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x800089a8
	li %r6, 1
	cmpwi %r6, 0
	bne 0x800089d0
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x3794
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x37c8
	li %r4, 0xf9
	crclr 6
	bl 0x80025f10
	fneg %f1, %f30
	lfs %f2, -0x7fc8(%r2)
	fneg %f0, %f31
	addis %r0, %r31, -0x8000
	cmplwi %r0, 0
	li %r6, 0
	fmuls %f1, %f2, %f1
	fmuls %f0, %f2, %f0
	stfs %f1, 0xd4(%r1)
	stfs %f0, 0xd8(%r1)
	beq 0x80008a54
	addi %r5, %r1, 0xa8
	rlwinm %r4, %r5, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x80008a54
	rlwinm %r3, %r5, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008a54
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0
	beq 0x80008a54
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x80008a54
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008a54
	rlwinm %r3, %r5, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x80008a58
	li %r6, 1
	cmpwi %r6, 0
	bne 0x80008a80
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	addi %r3, %r3, -0x3a5c
	addi %r6, %r1, 0xa8
	addi %r5, %r5, -0x3a90
	li %r4, 0x100
	crclr 6
	bl 0x80025f10
	addis %r0, %r30, -0x8000
	li %r5, 0
	cmplwi %r0, 0
	beq 0x80008ae4
	rlwinm %r4, %r29, 0, 0, 8
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0
	beq 0x80008ae4
	rlwinm %r3, %r29, 0, 0, 4
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0
	beq 0x80008ae4
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0
	beq 0x80008ae4
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0
	beq 0x80008ae4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0
	beq 0x80008ae4
	rlwinm %r3, %r29, 0, 0, 0x11
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0
	bne 0x80008ae8
	li %r5, 1
	cmpwi %r5, 0
	bne 0x80008b10
	lis %r3, -0x7fd9
	lis %r5, -0x7fd9
	mr %r6, %r29
	li %r4, 0x101
	addi %r3, %r3, -0x3aa4
	addi %r5, %r5, -0x3ad8
	crclr 6
	bl 0x80025f10
	mr %r3, %r29
	bl 0x80016e38
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl 0x800b9ae0
	lfs %f1, 0x20(%r1)
	lfs %f2, 0x24(%r1)
	lfs %f3, 0x28(%r1)
	lfs %f4, 0x2c(%r1)
	lfs %f5, 0x30(%r1)
	lfs %f6, 0x34(%r1)
	bl 0x80173314
	lwz %r3, 0x10(%r1)
	lwz %r4, 0x14(%r1)
	lwz %r5, 0x18(%r1)
	lwz %r6, 0x1c(%r1)
	bl 0x80173390
	addi %r3, %r1, 0xa8
	li %r4, -1
	bl 0x800b7ee0
	invalid
	lfd %f31, 0x140(%r1)
	invalid
	lfd %f30, 0x130(%r1)
	lwz %r31, 0x12c(%r1)
	lwz %r30, 0x128(%r1)
	lwz %r0, 0x154(%r1)
	lwz %r29, 0x124(%r1)
	mtlr %r0
	addi %r1, %r1, 0x150
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	beq 0x80008bb8
	cmpwi %r4, 0
	ble 0x80008bb8
	bl 0x80229a90
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 8(%r1)
	mr %r30, %r3
	lwz %r0, -0x6c40(%r13)
	cmpwi %r0, 0
	bne 0x80008c58
	li %r3, 0x78
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r31, %r3
	beq 0x80008c54
	mr %r7, %r30
	li %r4, 0x2800
	li %r5, 1
	li %r6, 6
	bl 0x80242424
	lis %r3, -0x7fd9
	li %r4, 0
	addi %r3, %r3, -0x3780
	stw %r3, 0(%r31)
	li %r0, 1
	stw %r4, 0x48(%r31)
	addi %r3, %r31, 0x54
	stb %r0, 0x50(%r31)
	stb %r4, 0x51(%r31)
	bl 0x80007f7c
	lwz %r3, 8(%r31)
	bl 0x801aa4ec
	addi %r3, %r31, 0x54
	bl 0x80008004
	stw %r31, -0x6c40(%r13)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
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
	beq 0x80008cbc
	li %r4, -1
	addi %r3, %r3, 0x54
	bl 0x80007fac
	mr %r3, %r30
	li %r4, 0
	bl 0x80242560
	cmpwi %r31, 0
	ble 0x80008cbc
	mr %r3, %r30
	bl 0x80229a90
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	stmw %r25, 0x14(%r1)
	mr %r25, %r3
	li %r31, 5
	li %r30, 4
	li %r29, 3
	li %r28, 2
	li %r27, 1
	li %r26, 0
	bl 0x80162ab0
	addi %r0, %r3, -7
	stw %r3, 0x4c(%r25)
	cmplwi %r0, 1
	ble 0x80008d44
	cmpwi %r3, 0
	beq 0x80008d44
	cmpwi %r3, 1
	beq 0x80008d4c
	cmpwi %r3, 4
	beq 0x80008d54
	cmpwi %r3, 6
	beq 0x80008d5c
	cmpwi %r3, 0xb
	beq 0x80008d64
	b 0x80008d6c
	stw %r26, 0x48(%r25)
	b 0x80008d70
	stw %r27, 0x48(%r25)
	b 0x80008d70
	stw %r28, 0x48(%r25)
	b 0x80008d70
	stw %r29, 0x48(%r25)
	b 0x80008d70
	stw %r30, 0x48(%r25)
	b 0x80008d70
	stw %r31, 0x48(%r25)
	lbz %r0, 0x50(%r25)
	cmpwi %r0, 0
	beq 0x80008db4
	lbz %r0, 0x51(%r25)
	cmpwi %r0, 0
	bne 0x80008da4
	lwz %r0, 0x48(%r25)
	cmpwi %r0, 0
	beq 0x80008db4
	cmpwi %r0, 1
	beq 0x80008db4
	stb %r27, 0x51(%r25)
	b 0x80008db4
	lwz %r0, 0x48(%r25)
	cmpwi %r0, 0
	bne 0x80008db4
	stb %r26, 0x51(%r25)
	lwz %r0, 0x48(%r25)
	cmpwi %r0, 5
	beq 0x80008dc8
	bl 0x801b994c
	b 0x80008d04
	lmw %r25, 0x14(%r1)
	li %r3, 0
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl 0x8000b5b4
	addi %r3, %r31, 0x54
	bl 0x800080b4
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x40(%r3)
	cmpwi %r3, 0
	beq 0x80008e20
	lwz %r12, 0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	addi %r3, %r3, 0x54
	b 0x800080b8
	blr
	blr
	lis %r3, -0x7fd6
	addi %r3, %r3, -0x300
	blr
	lis %r5, -0x7fd6
	mr %r4, %r3
	addi %r5, %r5, -0x300
	lwz %r3, 0x5c(%r5)
	lwz %r12, 0x10(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r5, -0x7fd6
	mr %r4, %r3
	stw %r0, 0x14(%r1)
	addi %r5, %r5, -0x300
	lwz %r3, 0x5c(%r5)
	lwz %r12, 0x10(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r0, 0x14(%r1)
	li %r3, 1
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, -0x7fd6
	addi %r31, %r31, -0x300
	stw %r3, -0x6c18(%r13)
	mr %r3, %r31
	stw %r4, -0x6c14(%r13)
	stw %r31, -0x6c38(%r13)
	stw %r31, -0x5ca8(%r13)
	lwz %r12, 0(%r31)
	lwz %r12, 0x38(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r31)
	mr %r3, %r31
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	mr %r4, %r3
	li %r3, 4
	li %r5, 4
	bl 0x80229a5c
	cmpwi %r3, 0
	beq 0x80008f24
	lis %r4, -0x7fd9
	addi %r4, %r4, -0x3670
	stw %r4, 0(%r3)
	stw %r3, -0x6c10(%r13)
	li %r4, 5
	lwz %r5, -0x6c38(%r13)
	lwz %r5, 0x54(%r5)
	stw %r3, 4(%r5)
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	bl 0x8023ac00
	lwz %r3, -0x6c38(%r13)
	lwz %r12, 0(%r3)
	lwz %r12, 0x34(%r12)
	mtctr %r12
	bctrl
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	lwz %r3, 0x64(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 8(%r1)
	mr %r30, %r3
	bl 0x8015e97c
	bl 0x801b00e0
	lwz %r12, 0(%r30)
	mr %r3, %r30
	lwz %r12, 0x30(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r30)
	mr %r3, %r30
	lwz %r12, 0x2c(%r12)
	mtctr %r12
	bctrl
	lwz %r3, 0x38(%r30)
	li %r4, 0
	bl 0x802291bc
	li %r3, 0xc
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r31, %r3
	beq 0x80008ff8
	lwz %r4, 0x3c(%r30)
	li %r0, 0
	li %r5, 0
	stw %r0, 0(%r3)
	stb %r0, 4(%r3)
	stw %r0, 8(%r3)
	bl 0x80242e5c
	stw %r31, 0x44(%r30)
	li %r3, 0x10
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x80009020
	li %r0, 0
	stw %r0, 0(%r3)
	stw %r0, 4(%r3)
	stw %r0, 8(%r3)
	stw %r0, 0xc(%r3)
	stw %r3, 0x48(%r30)
	li %r31, 0
	li %r3, 0x10
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r4, %r3
	beq 0x80009048
	lwz %r4, 0x1c(%r30)
	bl 0x802432a4
	mr %r4, %r3
	lwz %r3, 0x48(%r30)
	bl 0x80243344
	addi %r31, %r31, 1
	cmpwi %r31, 2
	blt 0x80009028
	li %r3, 0x88
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x80009074
	li %r4, 1
	bl 0x8020fc78
	stw %r3, 0x4c(%r30)
	bl 0x802426e8
	li %r3, 0x48
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r31, %r3
	beq 0x800090a8
	bl 0x801a9810
	mr %r4, %r3
	mr %r3, %r31
	li %r5, 4
	bl 0x802424f0
	mr %r31, %r3
	stw %r31, 0x28(%r30)
	li %r3, 0x154
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x800090c4
	li %r4, 1
	bl 0x802384b8
	stw %r3, 0x50(%r30)
	bl 0x8022227c
	bl 0x80216654
	bl 0x80216ffc
	li %r3, 0x40
	li %r4, 0x20
	li %r5, 4
	li %r6, 0
	li %r7, 1
	bl 0x802263b0
	li %r3, 0x30
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r31, %r3
	beq 0x80009114
	li %r4, 0
	bl 0x8023aa58
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x36d8
	stw %r3, 0(%r31)
	stw %r31, 0x54(%r30)
	lwz %r3, 0x18(%r30)
	bl 0x802299f0
	li %r3, 0x6bc
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x80009134
	bl 0x802131fc
	stw %r3, 0x40(%r30)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	lwz %r12, 0(%r3)
	lwz %r12, 0x30(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x24(%r3)
	stw %r3, 0x64(%r31)
	bl 0x802299f0
	lwz %r3, 0x64(%r31)
	lis %r4, 1
	li %r5, 0x20
	lwz %r12, 0(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl
	stw %r3, 0x70(%r31)
	lis %r4, 1
	bl 0x80207ce4
	lwz %r3, 0x38(%r31)
	li %r4, 0
	bl 0x802291bc
	li %r3, 0xc
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r30, %r3
	beq 0x800091f4
	lwz %r4, 0x3c(%r31)
	li %r0, 0
	lis %r5, -0x7fdc
	stw %r0, 0(%r3)
	addi %r5, %r5, 0x55f8
	stb %r0, 4(%r3)
	stw %r0, 8(%r3)
	bl 0x80242e5c
	stw %r30, 0x44(%r31)
	li %r3, 0x10
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x8000921c
	li %r0, 0
	stw %r0, 0(%r3)
	stw %r0, 4(%r3)
	stw %r0, 8(%r3)
	stw %r0, 0xc(%r3)
	stw %r3, 0x48(%r31)
	li %r30, 0
	li %r3, 0x10
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r4, %r3
	beq 0x80009244
	lwz %r4, 0x1c(%r31)
	bl 0x802432a4
	mr %r4, %r3
	lwz %r3, 0x48(%r31)
	bl 0x80243344
	addi %r30, %r30, 1
	cmpwi %r30, 2
	blt 0x80009224
	li %r3, 0x88
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x80009270
	li %r4, 1
	bl 0x8020fc78
	stw %r3, 0x4c(%r31)
	bl 0x802426e8
	li %r3, 0x154
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x80009290
	li %r4, 1
	bl 0x802384b8
	stw %r3, 0x50(%r31)
	li %r4, 0
	lwz %r12, 0(%r3)
	lwz %r12, 0x44(%r12)
	mtctr %r12
	bctrl
	li %r3, 0x48
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r30, %r3
	beq 0x800092d4
	bl 0x801a9810
	mr %r4, %r3
	mr %r3, %r30
	li %r5, 4
	bl 0x802424f0
	mr %r30, %r3
	stw %r30, 0x28(%r31)
	bl 0x8022227c
	lwz %r6, 0x1c(%r31)
	li %r3, 0x40
	li %r4, 0x20
	li %r5, 4
	li %r7, 2
	bl 0x802263b0
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x3768
	bl 0x8022646c
	bl 0x801bf5a8
	lwz %r4, 0x1c(%r31)
	li %r5, 0
	addi %r3, %r3, 0x400
	bl 0x80226744
	stw %r3, 0x58(%r31)
	li %r3, 0x1c
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r0, %r3
	beq 0x8000933c
	lwz %r4, 0x58(%r31)
	li %r5, 8
	bl 0x8020f58c
	mr %r0, %r3
	lis %r3, -0x7fff
	lis %r4, -0x7fff
	stw %r0, 0x5c(%r31)
	addi %r3, %r3, -0x71b0
	addi %r4, %r4, -0x7190
	bl 0x801bf5a4
	bl 0x80197a0c
	bl 0x801b9404
	bl 0x801af250
	lwz %r3, 0x58(%r31)
	lwz %r12, 0(%r3)
	lwz %r12, 0x28(%r12)
	mtctr %r12
	bctrl
	li %r3, 0x30
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r30, %r3
	beq 0x8000939c
	li %r4, 0
	bl 0x8023aa58
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x36d8
	stw %r3, 0(%r30)
	stw %r30, 0x54(%r31)
	lwz %r3, 0x64(%r31)
	bl 0x8000a590
	lwz %r3, -0x6c00(%r13)
	lwz %r4, 0x1c(%r31)
	bl 0x8000ac10
	lwz %r3, 0x1c(%r31)
	bl 0x80008bd0
	bl 0x8000b570
	cmpwi %r3, 0
	beq 0x80009404
	lis %r30, -0x7fdc
	addi %r3, %r30, 0x5620
	crclr 6
	bl 0x801a2530
	addi %r30, %r30, 0x5620
	addi %r3, %r30, 0x25
	crclr 6
	bl 0x801a2530
	addi %r3, %r30, 0x4a
	crclr 6
	bl 0x801a2530
	lwz %r3, 0x4c(%r31)
	li %r4, 2
	bl 0x8020fcec
	b 0x80009430
	lis %r30, -0x7fdc
	addi %r30, %r30, 0x5620
	addi %r3, %r30, 0x6f
	crclr 6
	bl 0x801a2530
	addi %r3, %r30, 0x94
	crclr 6
	bl 0x801a2530
	addi %r3, %r30, 0xb9
	crclr 6
	bl 0x801a2530
	bl 0x80009fb0
	lwz %r3, -0x6c08(%r13)
	lwz %r4, 0x20(%r31)
	bl 0x8000a02c
	lwz %r3, -0x6c38(%r13)
	li %r5, 0
	stw %r5, 8(%r1)
	addi %r6, %r13, -0x5cac
	lwz %r7, 0x4c(%r3)
	li %r0, 1
	lbz %r3, 8(%r1)
	stb %r3, 0x14(%r7)
	li %r3, 0
	lbz %r4, 9(%r1)
	stb %r4, 0x15(%r7)
	lbz %r4, 0xa(%r1)
	stw %r5, 0xc(%r1)
	stb %r4, 0x16(%r7)
	lbz %r4, 0xb(%r1)
	stb %r4, 0x17(%r7)
	lbz %r8, 0xc(%r1)
	lbz %r7, 0xd(%r1)
	lbz %r5, 0xe(%r1)
	lbz %r4, 0xf(%r1)
	stb %r8, -0x5cac(%r13)
	stb %r7, 1(%r6)
	stb %r5, 2(%r6)
	stb %r4, 3(%r6)
	stw %r0, -0x5cbc(%r13)
	bl 0x801baa8c
	lwz %r4, 0x18(%r31)
	lis %r3, 0xa0
	li %r5, 0
	bl 0x80226744
	stw %r3, 0x60(%r31)
	lwz %r3, 0x1c(%r31)
	bl 0x802299f0
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x40(%r1)
	mflr %r0
	li %r4, 0
	stw %r0, 0x44(%r1)
	li %r0, 1
	stmw %r21, 0x14(%r1)
	mr %r21, %r3
	lbz %r23, 0x69(%r3)
	stb %r0, 0x68(%r3)
	cmpwi %r23, 0
	beq 0x80009514
	lbz %r0, 0x68(%r3)
	cmpwi %r0, 0
	beq 0x80009518
	li %r4, 1
	li %r26, 0
	stb %r4, 0x6a(%r3)
	li %r22, 0
	lis %r28, -0x8000
	stb %r26, 0x6b(%r3)
	lis %r29, 0x431c
	li %r30, 0x1f4
	li %r31, 1
	stb %r26, 0x6c(%r3)
	lbz %r0, 0x68(%r21)
	cmpwi %r0, 0
	beq 0x8000954c
	lbz %r23, 0x69(%r21)
	lbz %r0, 0x68(%r21)
	li %r25, 1
	cmpwi %r0, 0
	bne 0x80009568
	cmpwi %r23, 0
	beq 0x80009568
	li %r25, 0
	lbz %r0, 0x68(%r21)
	li %r24, 1
	cmpwi %r0, 0
	beq 0x80009584
	cmpwi %r23, 0
	beq 0x80009584
	li %r24, 0
	cmpwi %r25, 0
	stb %r25, 0x6a(%r21)
	lbz %r27, 0x6c(%r21)
	beq 0x800096c0
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 4(%r3)
	lwz %r12, 8(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x24(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 4(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c40(%r13)
	lbz %r0, 0x51(%r3)
	cmpwi %r0, 0
	beq 0x80009608
	bl 0x80008e34
	b 0x8000962c
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x1c(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r3)
	lwz %r12, 0x20(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 4(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	cmpwi %r27, 0
	beq 0x800096c0
	lwz %r0, 0xf8(%r28)
	addi %r4, %r29, -0x217d
	mullw %r3, %r26, %r30
	srwi %r0, %r0, 2
	mulhwu %r0, %r4, %r0
	srwi %r4, %r0, 0xf
	mulhwu %r0, %r4, %r30
	mulli %r5, %r4, 0x1f4
	add %r4, %r0, %r3
	mr %r0, %r4
	rlwimi %r0, %r5, 0, 0x1d, 0x1f
	rotlwi %r3, %r5, 0x1d
	rlwimi %r3, %r4, 0x1d, 0, 2
	srawi %r0, %r0, 3
	addze %r4, %r3
	addze %r3, %r0
	bl 0x801aac08
	stb %r31, 0x6b(%r21)
	lwz %r3, -0x6c40(%r13)
	lbz %r0, 0x51(%r3)
	cmpwi %r0, 0
	beq 0x800096fc
	cmpwi %r22, 0
	bne 0x800096e8
	li %r3, 0
	bl 0x801baa8c
	li %r22, 1
	lwz %r3, -0x6c40(%r13)
	bl 0x80008de0
	lwz %r3, -0x6c00(%r13)
	bl 0x8000b1cc
	b 0x80009724
	lwz %r12, 0(%r21)
	mr %r3, %r21
	li %r22, 0
	lwz %r12, 0x1c(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r3)
	lwz %r12, 8(%r12)
	mtctr %r12
	bctrl
	cmpwi %r24, 0
	stb %r26, 0x6b(%r21)
	beq 0x80009768
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 4(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl
	lwz %r12, 0(%r21)
	mr %r3, %r21
	lwz %r12, 0x28(%r12)
	mtctr %r12
	bctrl
	cmpwi %r27, 0
	beq 0x800097c4
	cmpwi %r23, 0
	beq 0x800097c4
	cmpwi %r25, 0
	beq 0x800097c4
	lwz %r0, 0xf8(%r28)
	addi %r4, %r29, -0x217d
	mullw %r3, %r26, %r30
	srwi %r0, %r0, 2
	mulhwu %r0, %r4, %r0
	srwi %r4, %r0, 0xf
	mulhwu %r0, %r4, %r30
	mulli %r5, %r4, 0x1f4
	add %r4, %r0, %r3
	mr %r0, %r4
	rlwimi %r0, %r5, 0, 0x1d, 0x1f
	rotlwi %r3, %r5, 0x1d
	rlwimi %r3, %r4, 0x1d, 0, 2
	srawi %r0, %r0, 3
	addze %r4, %r3
	addze %r3, %r0
	bl 0x801aac08
	lbz %r0, 0x68(%r21)
	cntlz %r0, %r0
	srwi %r0, %r0, 5
	stb %r0, 0x68(%r21)
	b 0x8000953c
	lwz %r3, 0x4c(%r3)
	blr
	blr
	blr
	lwz %r3, 0x54(%r3)
	blr
	lwz %r3, 0x50(%r3)
	cmpwi %r3, 0
	beqlr
	addi %r3, %r3, 0x48
	blr
	stw %r5, 0x2c(%r3)
	b 0x8023ac64
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 8(%r1)
	mr %r30, %r3
	lwz %r0, 0x24(%r3)
	cmpwi %r0, 0
	beq 0x8000992c
	mr %r3, %r0
	lwz %r12, 0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 0
	beq 0x8000992c
	lwz %r0, 0x20(%r30)
	cmpwi %r0, 0
	beq 0x8000987c
	cmpwi %r0, 1
	beq 0x8000988c
	cmpwi %r0, 2
	beq 0x800098e4
	cmpwi %r0, 4
	beq 0x8000990c
	cmpwi %r0, 3
	beq 0x8000991c
	b 0x80009924
	lwz %r4, 0x14(%r30)
	mr %r3, %r30
	bl 0x8023ac00
	b 0x80009924
	lwz %r0, 0x2c(%r30)
	cmpwi %r0, 0
	beq 0x800098d8
	lwz %r31, 0x14(%r30)
	b 0x800098ac
	mr %r3, %r30
	li %r4, 1
	bl 0x8023af28
	lwz %r0, 0xc(%r30)
	cmpwi %r0, 0
	bne 0x800098a0
	lwz %r3, 0x2c(%r30)
	li %r0, 0
	stw %r3, 4(%r30)
	mr %r3, %r30
	mr %r4, %r31
	stw %r0, 0x2c(%r30)
	bl 0x8023ac5c
	b 0x80009924
	mr %r3, %r30
	bl 0x8023ace0
	b 0x80009924
	lwz %r4, 0x10(%r30)
	mr %r3, %r30
	bl 0x8023b5a8
	mr %r3, %r30
	bl 0x8023b58c
	lwz %r4, 0x18(%r30)
	mr %r3, %r30
	lwz %r5, 0x10(%r30)
	bl 0x8023ad60
	b 0x80009924
	lwz %r4, 0x14(%r30)
	mr %r3, %r30
	bl 0x8023afc0
	b 0x80009924
	mr %r3, %r30
	bl 0x8023ab74
	li %r0, -1
	stw %r0, 0x20(%r30)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	b 0x8023aadc
	b 0x8023ab28
	lwz %r12, 0(%r3)
	lwz %r12, 0x1c(%r12)
	mtctr %r12
	bctr
	lwz %r12, 0(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctr
	lwz %r3, 0x44(%r3)
	blr
	lwz %r3, 0x24(%r3)
	blr
	lwz %r3, 0x48(%r3)
	blr
	lwz %r3, 0x40(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, -0x7fd9
	lis %r6, -0x7fd9
	stw %r0, 0x14(%r1)
	addi %r4, %r4, -0x3714
	lfs %f0, -0x7fa8(%r2)
	addi %r6, %r6, -0x3750
	stw %r31, 0xc(%r1)
	li %r7, 0
	li %r0, 1
	lis %r31, -0x7fff
	stw %r30, 8(%r1)
	lis %r30, -0x7fd6
	addi %r30, %r30, -0x300
	stw %r4, 0(%r30)
	addi %r8, %r30, 0
	addi %r3, %r30, 0x80
	lis %r4, 0x17
	addi %r5, %r4, 0x7000
	stw %r5, 0x34(%r8)
	lis %r4, 8
	stw %r4, 0x38(%r8)
	addi %r4, %r31, -0x6500
	addi %r5, %r30, 0x74
	stw %r7, 0x3c(%r8)
	stw %r6, 0(%r30)
	stb %r0, 0x68(%r8)
	stb %r7, 0x69(%r8)
	stfs %f0, 0x80(%r30)
	stfs %f0, 4(%r3)
	stfs %f0, 8(%r3)
	bl 0x800207d8
	lfs %f1, -0x7fa4(%r2)
	addi %r3, %r30, 0x98
	lfs %f0, -0x7fa8(%r2)
	addi %r4, %r31, -0x6500
	stfs %f1, 0x98(%r30)
	addi %r5, %r30, 0x8c
	stfs %f0, 4(%r3)
	stfs %f0, 8(%r3)
	bl 0x800207d8
	lfs %f1, -0x7fa8(%r2)
	addi %r3, %r30, 0xb0
	lfs %f0, -0x7fa4(%r2)
	addi %r4, %r31, -0x6500
	stfs %f1, 0xb0(%r30)
	addi %r5, %r30, 0xa4
	stfs %f0, 4(%r3)
	stfs %f1, 8(%r3)
	bl 0x800207d8
	lfs %f1, -0x7fa8(%r2)
	addi %r3, %r30, 0xc8
	lfs %f0, -0x7fa4(%r2)
	addi %r4, %r31, -0x6500
	stfs %f1, 0xc8(%r30)
	addi %r5, %r30, 0xbc
	stfs %f1, 4(%r3)
	stfs %f0, 8(%r3)
	bl 0x800207d8
	lfs %f0, -0x7fa8(%r2)
	addi %r3, %r13, -0x6c30
	lis %r31, -0x7fff
	stfs %f0, 4(%r3)
	addi %r4, %r31, -0x64c0
	addi %r5, %r30, 0xd4
	stfs %f0, -0x6c30(%r13)
	addi %r3, %r13, -0x6c30
	bl 0x800207d8
	lfs %f1, -0x7fa4(%r2)
	addi %r6, %r13, -0x6c28
	lfs %f0, -0x7fa8(%r2)
	addi %r4, %r31, -0x64c0
	stfs %f1, -0x6c28(%r13)
	addi %r5, %r30, 0xe0
	addi %r3, %r13, -0x6c28
	stfs %f0, 4(%r6)
	bl 0x800207d8
	lfs %f1, -0x7fa8(%r2)
	addi %r6, %r13, -0x6c20
	lfs %f0, -0x7fa4(%r2)
	addi %r4, %r31, -0x64c0
	stfs %f1, -0x6c20(%r13)
	addi %r5, %r30, 0xec
	addi %r3, %r13, -0x6c20
	stfs %f0, 4(%r6)
	bl 0x800207d8
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	beq 0x80009b28
	cmpwi %r4, 0
	ble 0x80009b28
	bl 0x80229a90
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	beq 0x80009b68
	cmpwi %r4, 0
	ble 0x80009b68
	bl 0x80229a90
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	li %r30, 0
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	lwz %r3, 0(%r31)
	cmpwi %r3, 0
	beq 0x80009bb8
	clrlwi %r4, %r29, 0x10
	bl 0x80226914
	addi %r30, %r30, 1
	addi %r31, %r31, 4
	cmpwi %r30, 3
	blt 0x80009ba4
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	addi %r30, %r3, 0xc
	stw %r29, 0x14(%r1)
	li %r29, 0
	lwz %r3, 0(%r31)
	cmpwi %r3, 0
	beq 0x80009c1c
	mr %r4, %r30
	bl 0x80226978
	addi %r29, %r29, 1
	addi %r30, %r30, 0x400
	cmpwi %r29, 3
	addi %r31, %r31, 4
	blt 0x80009c08
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r6, -0x7fd9
	stw %r0, 0x14(%r1)
	addi %r6, %r6, -0x36a8
	li %r0, 0
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r4, 0x14(%r3)
	li %r4, 0
	stw %r6, 0(%r3)
	stw %r0, 0x10(%r3)
	stw %r5, 0x18(%r3)
	addi %r3, %r3, 4
	bl 0x800aeec0
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	beq 0x80009d0c
	lis %r4, -0x7fd9
	li %r31, 0
	addi %r4, %r4, -0x36a8
	stw %r4, 0(%r3)
	b 0x80009ce4
	mr %r3, %r31
	bl 0x80229a90
	mr %r4, %r31
	addi %r3, %r29, 4
	bl 0x800af0e0
	cmpwi %r3, 0
	mr %r31, %r3
	bne 0x80009cdc
	cmpwi %r30, 0
	ble 0x80009d0c
	mr %r3, %r29
	bl 0x80229a90
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	li %r5, 4
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	mr %r4, %r6
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	li %r3, 0x10
	bl 0x80229a5c
	stw %r30, 8(%r3)
	mr %r4, %r3
	stw %r31, 0xc(%r3)
	addi %r3, %r29, 4
	bl 0x800aeee0
	lwz %r0, 0x10(%r29)
	add %r0, %r0, %r31
	stw %r0, 0x10(%r29)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stw %r31, 0x3c(%r1)
	stw %r30, 0x38(%r1)
	mr %r30, %r3
	lwz %r5, 0x14(%r3)
	lbz %r0, 0(%r5)
	extsb. %r0, %r0
	beq 0x80009ea0
	mr %r3, %r5
	addi %r6, %r1, 8
	li %r5, 1
	bl 0x8000b528
	cmpwi %r3, 0
	beq 0x80009ea0
	lwz %r5, 8(%r1)
	mr %r4, %r3
	addi %r3, %r1, 0x10
	bl 0x80241318
	addi %r3, %r1, 0x10
	bl 0x80240ce4
	addis %r0, %r3, -0x524b
	cmplwi %r0, 0x5046
	bne 0x80009e10
	addi %r3, %r1, 0x10
	bl 0x802415b8
	cmpwi %r3, 0
	beq 0x80009e20
	addi %r3, %r1, 0x10
	li %r4, 0
	bl 0x80240ca4
	b 0x80009ea0
	addi %r3, %r1, 0x10
	bl 0x80240ce4
	lwz %r0, 0x18(%r30)
	cmplw %r3, %r0
	blt 0x80009e44
	addi %r3, %r1, 0x10
	bl 0x802415b8
	cmpwi %r3, 0
	beq 0x80009e54
	addi %r3, %r1, 0x10
	li %r4, 0
	bl 0x80240ca4
	b 0x80009ea0
	li %r31, 0
	b 0x80009e7c
	addi %r3, %r1, 0x10
	bl 0x802415b8
	cmpwi %r3, 0
	bne 0x80009e94
	lwz %r4, 8(%r31)
	addi %r3, %r1, 0x10
	lwz %r5, 0xc(%r31)
	bl 0x80240d40
	mr %r4, %r31
	addi %r3, %r30, 4
	bl 0x800af0e0
	cmpwi %r3, 0
	mr %r31, %r3
	bne 0x80009e5c
	addi %r3, %r1, 0x10
	li %r4, 0
	bl 0x80240ca4
	lwz %r0, 0x44(%r1)
	lwz %r31, 0x3c(%r1)
	lwz %r30, 0x38(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	beq 0x80009ef4
	li %r4, 0
	bl 0x80240ca4
	cmpwi %r31, 0
	ble 0x80009ef4
	mr %r3, %r30
	bl 0x80229a90
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	blr
	blr
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	beq 0x80009f94
	lis %r4, -0x7fd9
	addi %r4, %r4, -0x367c
	stw %r4, 0(%r3)
	lwz %r3, -0x6c08(%r13)
	cmpwi %r3, 0
	beq 0x80009f78
	li %r0, 0
	stw %r0, -0x6c08(%r13)
	beq 0x80009f78
	lwz %r12, 0x10(%r3)
	li %r4, 1
	lwz %r12, 8(%r12)
	mtctr %r12
	bctrl
	mr %r3, %r30
	li %r4, 0
	bl 0x8021a0a4
	cmpwi %r31, 0
	ble 0x80009f94
	mr %r3, %r30
	bl 0x80229a90
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
	stw %r31, 0xc(%r1)
	lwz %r0, -0x6c08(%r13)
	cmpwi %r0, 0
	bne 0x8000a014
	li %r3, 0x2c
	bl 0x80229a48
	cmpwi %r3, 0
	mr %r31, %r3
	beq 0x8000a010
	lis %r4, -0x7fd9
	addi %r4, %r4, -0x3688
	stw %r4, 0x10(%r3)
	bl 0x8021a050
	lis %r3, -0x7fd9
	li %r0, 0
	addi %r3, %r3, -0x367c
	stw %r3, 0(%r31)
	stw %r0, 0x28(%r31)
	stw %r0, 0x1c(%r31)
	stw %r0, 0x20(%r31)
	stw %r0, 0x24(%r31)
	stw %r31, -0x6c08(%r13)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	lwz %r3, -0x6c08(%r13)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	blr
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	beq 0x8000a124
	lis %r4, -0x7fd9
	li %r30, 0
	addi %r4, %r4, -0x3688
	stw %r4, 0x10(%r3)
	li %r31, 0
	add %r3, %r28, %r31
	lwz %r4, 0x1c(%r3)
	cmpwi %r4, 0
	beq 0x8000a098
	lwz %r3, 0x14(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	addi %r30, %r30, 1
	addi %r31, %r31, 4
	cmpwi %r30, 2
	blt 0x8000a074
	lwz %r4, 0x24(%r28)
	cmpwi %r4, 0
	beq 0x8000a0c8
	lwz %r3, 0x28(%r28)
	lwz %r12, 0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	cmpwi %r28, 0
	beq 0x8000a114
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x367c
	stw %r3, 0(%r28)
	lwz %r3, -0x6c08(%r13)
	cmpwi %r3, 0
	beq 0x8000a108
	li %r0, 0
	stw %r0, -0x6c08(%r13)
	beq 0x8000a108
	lwz %r12, 0x10(%r3)
	li %r4, 1
	lwz %r12, 8(%r12)
	mtctr %r12
	bctrl
	mr %r3, %r28
	li %r4, 0
	bl 0x8021a0a4
	cmpwi %r29, 0
	ble 0x8000a124
	mr %r3, %r28
	bl 0x80229a90
	lwz %r31, 0x1c(%r1)
	mr %r3, %r28
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x70(%r1)
	mflr %r0
	stw %r0, 0x74(%r1)
	stmw %r23, 0x4c(%r1)
	mr %r23, %r3
	mr %r24, %r4
	mr %r30, %r5
	bl 0x801aacd4
	lis %r4, -0x7fdc
	slwi %r0, %r30, 3
	addi %r4, %r4, 0x5728
	mr %r28, %r3
	lwzx %r25, %r4, %r0
	addi %r4, %r1, 8
	li %r31, 0
	li %r26, 0
	mr %r3, %r25
	bl 0x8015e21c
	cmpwi %r3, 0
	beq 0x8000a214
	lwz %r27, 0x3c(%r1)
	mr %r3, %r24
	lwz %r12, 0(%r24)
	li %r5, 0x20
	addi %r0, %r27, 0x1f
	rlwinm %r29, %r0, 0, 0, 0x1a
	lwz %r12, 0x14(%r12)
	mr %r4, %r29
	mtctr %r12
	bctrl
	mr %r26, %r3
	mr %r5, %r29
	mr %r4, %r26
	addi %r3, %r1, 8
	li %r6, 0
	li %r7, 2
	bl 0x8015e794
	mr %r29, %r3
	addi %r3, %r1, 8
	bl 0x8015e4c8
	cmplw %r29, %r27
	bge 0x8000a210
	lwz %r12, 0(%r24)
	mr %r3, %r24
	mr %r4, %r26
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl
	li %r26, 0
	b 0x8000a214
	mr %r31, %r29
	cmpwi %r26, 0
	beq 0x8000a37c
	slwi %r0, %r30, 2
	mr %r3, %r24
	add %r29, %r23, %r0
	li %r5, 0x20
	stw %r26, 0x1c(%r29)
	stw %r24, 0x14(%r29)
	lwz %r12, 0(%r24)
	lwz %r4, 0x20(%r26)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl
	mr %r4, %r3
	lwz %r3, 0x1c(%r29)
	bl 0x801a723c
	lwz %r26, 0x1c(%r29)
	mr %r3, %r26
	bl 0x8000a400
	lis %r29, -0x7fdc
	lwz %r4, 0x20(%r26)
	addi %r3, %r29, 0x5738
	crclr 6
	bl 0x801a2530
	addi %r29, %r29, 0x5738
	lwz %r4, 0x24(%r26)
	addi %r3, %r29, 0x16
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x28(%r26)
	addi %r3, %r29, 0x2f
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x2c(%r26)
	addi %r3, %r29, 0x48
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x34(%r26)
	addi %r3, %r29, 0x61
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x38(%r26)
	addi %r3, %r29, 0x7a
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x3c(%r26)
	addi %r3, %r29, 0x93
	crclr 6
	bl 0x801a2530
	lwz %r0, 0x1c(%r26)
	cmplwi %r0, 2
	blt 0x8000a304
	lwz %r4, 0x40(%r26)
	addi %r3, %r29, 0xac
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x44(%r26)
	addi %r3, %r29, 0xc5
	crclr 6
	bl 0x801a2530
	lwz %r0, 0x1c(%r26)
	cmplwi %r0, 3
	blt 0x8000a328
	lis %r3, -0x7fdc
	lwz %r4, 0x48(%r26)
	addi %r3, %r3, 0x5738
	addi %r3, %r3, 0xde
	crclr 6
	bl 0x801a2530
	lis %r29, -0x7fdc
	addi %r29, %r29, 0x5738
	addi %r3, %r29, 0xf7
	crclr 6
	bl 0x801a2530
	bl 0x801aacd4
	lis %r5, -0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	subf %r6, %r28, %r3
	addi %r3, %r4, 0x4dd3
	mr %r4, %r30
	srwi %r0, %r0, 2
	mr %r5, %r31
	mulhwu %r0, %r3, %r0
	addi %r3, %r29, 0xf9
	srwi %r0, %r0, 6
	divwu %r6, %r6, %r0
	crclr 6
	bl 0x801a2530
	b 0x8000a3a0
	lis %r3, -0x7fdc
	mr %r4, %r30
	addi %r3, %r3, 0x5738
	mr %r5, %r25
	addi %r3, %r3, 0x12a
	crclr 6
	bl 0x801a2530
	li %r3, 1
	b 0x8000a3a4
	li %r3, 0
	lmw %r23, 0x4c(%r1)
	lwz %r0, 0x74(%r1)
	mtlr %r0
	addi %r1, %r1, 0x70
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	slwi %r0, %r4, 2
	add %r3, %r3, %r0
	lwz %r3, 0x1c(%r3)
	cmpwi %r3, 0
	bne 0x8000a3e0
	li %r3, 1
	b 0x8000a3f0
	lwz %r12, 0x34(%r3)
	mtctr %r12
	bctrl
	li %r3, 0
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	lis %r3, -0x7fdc
	addi %r31, %r3, 0x5738
	lwz %r4, 0(%r28)
	addi %r3, %r31, 0x153
	crclr 6
	bl 0x801a2530
	lwz %r4, 0xc(%r28)
	addi %r3, %r31, 0x169
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x10(%r28)
	addi %r3, %r31, 0x17f
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x14(%r28)
	addi %r3, %r31, 0x198
	mr %r5, %r4
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x18(%r28)
	addi %r3, %r31, 0x1b6
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x1c(%r28)
	addi %r3, %r31, 0x1cc
	crclr 6
	bl 0x801a2530
	addi %r3, %r31, 0x1e2
	crclr 6
	bl 0x801a2530
	lwz %r30, 0x10(%r28)
	li %r29, 0
	b 0x8000a4d0
	lwz %r5, 0(%r30)
	cmpwi %r5, 0
	beq 0x8000a4c8
	lwz %r0, 4(%r30)
	mr %r4, %r29
	addi %r3, %r31, 0x1e4
	add %r6, %r5, %r0
	crclr 6
	bl 0x801a2530
	addi %r30, %r30, 8
	addi %r29, %r29, 1
	lwz %r0, 0xc(%r28)
	cmplw %r29, %r0
	blt 0x8000a4a4
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5738
	addi %r3, %r3, 0x208
	crclr 6
	bl 0x801a2530
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r4, 5
	stw %r0, 0x14(%r1)
	bne 0x8000a53c
	li %r3, 0xcd8
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x8000a558
	bl section_end.data_1
	b 0x8000a558
	lis %r3, -0x7fdc
	li %r4, 0x27
	addi %r3, %r3, 0x5a40
	addi %r5, %r3, 0x17
	crclr 6
	bl 0x801a25c0
	li %r3, 0
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	cmpwi %r4, 5
	beqlr
	lis %r5, -0x7fdc
	li %r4, 0x35
	addi %r5, %r5, 0x5a40
	addi %r3, %r5, 0x28
	addi %r5, %r5, 0x3f
	crclr 6
	b 0x801a25c0
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	lwz %r0, -0x6c00(%r13)
	cmpwi %r0, 0
	bne 0x8000a5cc
	li %r3, 0x1100
	bl 0x80229a48
	cmpwi %r3, 0
	beq 0x8000a5c8
	mr %r4, %r31
	bl 0x8000a648
	stw %r3, -0x6c00(%r13)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	lwz %r3, -0x6c00(%r13)
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
	beq 0x8000a62c
	lis %r4, -0x7fd9
	addi %r4, %r4, -0x3660
	stw %r4, 0x54(%r3)
	lwz %r3, 0x88(%r3)
	bl 0x80229b5c
	cmpwi %r31, 0
	ble 0x8000a62c
	mr %r3, %r30
	bl 0x80229a90
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x40(%r1)
	mflr %r0
	lis %r7, -0x7fd9
	lfs %f1, -0x7f90(%r2)
	stw %r0, 0x44(%r1)
	li %r5, 0
	lfs %f0, -0x7f8c(%r2)
	addi %r7, %r7, -0x3660
	stw %r31, 0x3c(%r1)
	li %r6, 1
	mr %r31, %r3
	lbz %r0, 0xf0(%r3)
	stw %r7, 0x54(%r3)
	cmplwi %r0, 0x63
	li %r0, 0xf
	stw %r6, 0x58(%r3)
	stw %r5, 0x5c(%r3)
	stw %r5, 0x64(%r3)
	stw %r5, 0x68(%r3)
	stw %r5, 0x6c(%r3)
	stw %r5, 0x70(%r3)
	stfs %f1, 0x74(%r3)
	stfs %f1, 0x78(%r3)
	stfs %f0, 0x7c(%r3)
	stb %r5, 0x80(%r3)
	stw %r0, 0x84(%r3)
	stw %r5, 0x88(%r3)
	stw %r5, 0x8c(%r3)
	stw %r5, 0x90(%r3)
	stw %r5, 0x94(%r3)
	stw %r5, 0x9c(%r3)
	stw %r5, 0xa0(%r3)
	stw %r5, 0xa8(%r3)
	stw %r5, 0xb0(%r3)
	stb %r5, 0xb4(%r3)
	stb %r5, 0xb5(%r3)
	stb %r5, 0xb6(%r3)
	stb %r5, 0xb7(%r3)
	stw %r5, 0xec(%r3)
	stb %r5, 0xf3(%r3)
	ble 0x8000a6f4
	li %r0, 0x63
	stb %r0, 0xf0(%r3)
	lbz %r0, 0xf1(%r3)
	cmplwi %r0, 0xc
	ble 0x8000a708
	li %r0, 0xc
	stb %r0, 0xf1(%r3)
	lbz %r0, 0xf2(%r3)
	cmplwi %r0, 0x1f
	ble 0x8000a71c
	li %r0, 0x1f
	stb %r0, 0xf2(%r3)
	li %r0, 0
	stw %r4, 0xac(%r3)
	addi %r4, %r3, 0xd8
	li %r5, 4
	stb %r0, 0xf0(%r3)
	stb %r0, 0xf1(%r3)
	stb %r0, 0xf2(%r3)
	stb %r0, 0xf4(%r3)
	addi %r3, %r3, 0xb8
	bl 0x801a725c
	lis %r4, -0x8000
	lis %r3, -0x7fc8
	addi %r4, %r4, 0x4000
	stw %r4, 0x9c(%r31)
	addi %r3, %r3, 0x4dfc
	lwz %r6, 0xac(%r31)
	subf %r0, %r4, %r3
	stw %r3, 0xa0(%r31)
	li %r3, 5
	li %r4, 0x18
	stw %r0, 0xa4(%r31)
	li %r5, 0x2800
	bl 0x80241a2c
	stw %r3, 0xe8(%r31)
	li %r3, 0x20
	lwz %r4, 0xac(%r31)
	li %r5, 0x20
	bl 0x80229a80
	stw %r3, 0x88(%r31)
	li %r3, 0x20
	lwz %r4, 0xac(%r31)
	li %r5, 0x20
	bl 0x80229a80
	stw %r3, 0x8c(%r31)
	li %r3, 0x20
	lwz %r4, 0xac(%r31)
	li %r5, 0x20
	bl 0x80229a80
	stw %r3, 0x90(%r31)
	bl 0x801a9810
	stw %r3, 0xec(%r31)
	bl 0x801aacbc
	addi %r5, %r1, 8
	bl 0x801aaf08
	lwz %r3, 0x1c(%r1)
	cmpwi %r3, 0x7d0
	bge 0x8000a7e4
	li %r0, 0x7d0
	stw %r0, 0x1c(%r1)
	b 0x8000a7ec
	addi %r0, %r3, -0x7d0
	stw %r0, 0x1c(%r1)
	lwz %r0, 0x1c(%r1)
	cmpwi %r0, 0x63
	ble 0x8000a800
	li %r0, 0x63
	stw %r0, 0x1c(%r1)
	lbz %r0, 0xf0(%r31)
	li %r3, 1
	lwz %r5, 0x14(%r1)
	lwz %r4, 0x18(%r1)
	cmplwi %r0, 0x63
	lwz %r0, 0x1c(%r1)
	clrlwi %r5, %r5, 0x18
	addi %r4, %r4, 1
	stb %r3, 0xf3(%r31)
	clrlwi %r4, %r4, 0x18
	clrlwi %r6, %r0, 0x18
	ble 0x8000a838
	li %r0, 0x63
	stb %r0, 0xf0(%r31)
	lbz %r0, 0xf1(%r31)
	cmplwi %r0, 0xc
	ble 0x8000a84c
	li %r0, 0xc
	stb %r0, 0xf1(%r31)
	lbz %r0, 0xf2(%r31)
	cmplwi %r0, 0x1f
	ble 0x8000a860
	li %r0, 0x1f
	stb %r0, 0xf2(%r31)
	li %r0, 0
	lis %r3, -0x7fff
	stb %r6, 0xf0(%r31)
	addi %r3, %r3, -0x4eac
	stb %r4, 0xf1(%r31)
	stb %r5, 0xf2(%r31)
	stb %r0, 0xb5(%r31)
	stb %r0, 0xb4(%r31)
	bl 0x801ab6bc
	lis %r3, -0x7fff
	addi %r3, %r3, -0x4e90
	bl 0x801ab5d0
	li %r0, 1
	stb %r0, 0xb7(%r31)
	mr %r3, %r31
	lwz %r31, 0x3c(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r28, 0x10(%r1)
	bl 0x8019f29c
	rlwinm %r3, %r3, 0, 0, 3
	addis %r0, %r3, -0x1000
	cmplwi %r0, 0
	bne 0x8000a8f0
	li %r0, 1
	stb %r0, 0x80(%r29)
	b 0x8000a8f8
	li %r0, 0
	stb %r0, 0x80(%r29)
	bl 0x801ac890
	mr %r30, %r3
	bl 0x801ac884
	lbz %r0, 0x80(%r29)
	lis %r4, -0x7fdc
	mr %r31, %r3
	cmpwi %r0, 0
	addi %r3, %r4, 0x5b24
	addi %r4, %r3, 0x3d
	beq 0x8000a924
	addi %r4, %r3, 0x38
	mr %r5, %r30
	mr %r6, %r31
	crclr 6
	bl 0x801a2530
	cmpwi %r30, 0
	li %r0, 0
	stw %r0, 0x70(%r29)
	srwi %r3, %r31, 0x10
	srwi %r0, %r30, 0x10
	bne 0x8000a964
	cmplwi %r3, 0x101
	sth %r31, 0x82(%r29)
	bne 0x8000a9a0
	li %r0, 1
	stw %r0, 0x70(%r29)
	b 0x8000a9a0
	cmplwi %r0, 0x201
	sth %r30, 0x82(%r29)
	bne 0x8000a97c
	li %r0, 2
	stw %r0, 0x70(%r29)
	b 0x8000a9a0
	cmplwi %r0, 0x202
	bne 0x8000a990
	li %r0, 3
	stw %r0, 0x70(%r29)
	b 0x8000a9a0
	cmplwi %r0, 0x301
	bne 0x8000a9a0
	li %r0, 4
	stw %r0, 0x70(%r29)
	li %r0, 0
	stw %r0, 0x98(%r29)
	lwz %r0, -0x6c18(%r13)
	cmpwi %r0, 3
	bne 0x8000aac4
	lwz %r3, -0x6c14(%r13)
	lwz %r30, 8(%r3)
	lwz %r31, 4(%r3)
	mr %r3, %r30
	bl 0x800206f4
	cmplwi %r3, 8
	bne 0x8000ab00
	lbz %r5, 0(%r30)
	mr %r3, %r31
	lbz %r4, 1(%r30)
	extsb %r5, %r5
	lbz %r0, 2(%r30)
	extsb %r6, %r4
	lbz %r4, 3(%r30)
	addi %r11, %r5, -1
	extsb %r5, %r0
	addi %r9, %r5, -1
	lbz %r0, 4(%r30)
	extsb %r5, %r4
	lbz %r4, 5(%r30)
	addi %r8, %r5, -1
	addi %r10, %r6, -1
	extsb %r5, %r0
	extsb %r4, %r4
	addi %r7, %r5, -1
	lbz %r0, 6(%r30)
	addi %r6, %r4, -1
	slwi %r11, %r11, 0x1c
	extsb %r4, %r0
	slwi %r10, %r10, 0x18
	addi %r5, %r4, -1
	lbz %r0, 7(%r30)
	slwi %r9, %r9, 0x14
	or %r28, %r11, %r10
	extsb %r4, %r0
	slwi %r0, %r8, 0x10
	or %r28, %r28, %r9
	slwi %r7, %r7, 0xc
	or %r28, %r28, %r0
	slwi %r0, %r6, 8
	or %r28, %r28, %r7
	slwi %r5, %r5, 4
	or %r28, %r28, %r0
	addi %r0, %r4, -1
	or %r28, %r28, %r5
	or %r28, %r28, %r0
	bl 0x800206f4
	cmplwi %r3, 0xc00
	mr %r30, %r3
	bge 0x8000aa94
	mr %r3, %r31
	mr %r4, %r30
	bl 0x801d1c00
	cmplw %r28, %r3
	bne 0x8000aa94
	stw %r31, 0x98(%r29)
	mr %r3, %r31
	mr %r4, %r30
	bl 0x801d1c00
	lis %r7, -0x7fdc
	mr %r6, %r3
	addi %r7, %r7, 0x5b24
	mr %r4, %r31
	mr %r5, %r28
	addi %r3, %r7, 0x43
	crclr 6
	bl 0x801a2530
	b 0x8000ab00
	cmpwi %r0, 2
	bne 0x8000ab00
	lwz %r3, -0x6c14(%r13)
	lwz %r30, 4(%r3)
	mr %r3, %r30
	bl 0x800206f4
	cmplwi %r3, 0x30
	bgt 0x8000aaec
	stw %r30, 0x98(%r29)
	b 0x8000ab00
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0x5f
	crclr 6
	bl 0x801a2530
	lis %r30, -0x7fdc
	lwz %r4, 0x70(%r29)
	addi %r30, %r30, 0x5b24
	addi %r3, %r30, 0x8e
	crclr 6
	bl 0x801a2530
	lwz %r4, 0x98(%r29)
	addi %r3, %r30, 0xa4
	crclr 6
	bl 0x801a2530
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r4, 0
	mr %r5, %r4
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	bne 0x8000ab6c
	lwz %r5, 0xb0(%r3)
	cmpwi %r5, 0
	beq 0x8000abfc
	lwz %r4, -0x7fec(%r13)
	cmpwi %r4, 0
	beq 0x8000abe0
	lwz %r3, -0x6c00(%r13)
	addi %r7, %r1, 8
	li %r6, 0
	li %r8, 0
	bl 0x8000b2d0
	cmpwi %r3, 0
	stw %r3, 0x94(%r31)
	beq 0x8000abc8
	lwz %r4, 8(%r1)
	li %r5, 0
	bl 0x80226440
	lis %r3, -0x7fdc
	lwz %r4, -0x7fec(%r13)
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0xb9
	crclr 6
	bl 0x801a2530
	b 0x8000abe0
	lis %r3, -0x7fdc
	lwz %r4, -0x7fec(%r13)
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0xdb
	crclr 6
	bl 0x801a2530
	lwz %r3, 0x88(%r31)
	li %r0, 0
	stb %r0, 0(%r3)
	lwz %r3, 0x8c(%r31)
	stb %r0, 0(%r3)
	lwz %r3, 0x90(%r31)
	stb %r0, 0(%r3)
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	lis %r3, -0x7fdc
	stw %r30, 0x18(%r1)
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0xfa
	stw %r29, 0x14(%r1)
	lwz %r5, 0xa4(%r31)
	lwz %r4, 0x9c(%r31)
	addi %r0, %r5, 0x3ff
	lwz %r5, 0xa0(%r31)
	srwi %r6, %r0, 0xa
	crclr 6
	bl 0x801a2530
	li %r29, 0
	li %r30, 1
	stw %r29, 0x58(%r31)
	stw %r29, 0x64(%r31)
	stw %r29, 0x68(%r31)
	stw %r30, 0x5c(%r31)
	bl 0x801b1b44
	clrlwi %r0, %r3, 0x18
	cmpwi %r0, 1
	bne 0x8000ac84
	stw %r30, 0x58(%r31)
	b 0x8000ac88
	stw %r29, 0x58(%r31)
	bl 0x801b1ce4
	clrlwi %r0, %r3, 0x18
	cmpwi %r0, 1
	bne 0x8000aca4
	li %r0, 1
	stw %r0, 0x64(%r31)
	b 0x8000acac
	li %r0, 0
	stw %r0, 0x64(%r31)
	bl 0x801b1c0c
	clrlwi %r0, %r3, 0x18
	cmpwi %r0, 1
	bne 0x8000acc8
	li %r0, 1
	stw %r0, 0x68(%r31)
	b 0x8000acd0
	li %r0, 0
	stw %r0, 0x68(%r31)
	bl 0x801b1c6c
	clrlwi. %r0, %r3, 0x18
	beq 0x8000ad08
	cmpwi %r0, 2
	beq 0x8000ad18
	cmpwi %r0, 3
	beq 0x8000ad28
	cmpwi %r0, 4
	beq 0x8000ad38
	cmpwi %r0, 5
	beq 0x8000ad48
	cmpwi %r0, 6
	beq 0x8000ad58
	b 0x8000ad6c
	li %r0, 0
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r0, 2
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r0, 3
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r0, 4
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r0, 5
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r3, 6
	li %r0, 1
	stw %r3, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	b 0x8000ad78
	li %r0, 1
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	lwz %r4, 0x5c(%r31)
	addi %r0, %r4, -3
	cmplwi %r0, 1
	ble 0x8000adb0
	cmpwi %r4, 1
	beq 0x8000adb0
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0x127
	crclr 6
	bl 0x801a2530
	li %r0, 1
	stw %r0, 0x60(%r31)
	stw %r0, 0x5c(%r31)
	li %r29, 0
	bl 0x801bac38
	cmpwi %r3, 0
	bne 0x8000adc4
	li %r29, 0
	cmpwi %r29, 0
	stw %r29, 0x6c(%r31)
	beq 0x8000addc
	cmpwi %r29, 1
	beq 0x8000adec
	b 0x8000ae00
	lfs %f0, -0x7f90(%r2)
	stfs %f0, 0x74(%r31)
	stfs %f0, 0x78(%r31)
	b 0x8000ae0c
	lfs %f1, -0x7f90(%r2)
	lfs %f0, -0x7f88(%r2)
	stfs %f1, 0x74(%r31)
	stfs %f0, 0x78(%r31)
	b 0x8000ae0c
	lfs %f0, -0x7f90(%r2)
	stfs %f0, 0x74(%r31)
	stfs %f0, 0x78(%r31)
	lfs %f1, -0x7f84(%r2)
	addi %r3, %r31, 0xf8
	lfs %f0, 0x74(%r31)
	fdivs %f0, %f1, %f0
	stfs %f0, 0x7c(%r31)
	bl 0x801b1fd4
	cmpwi %r3, 1
	beq 0x8000ae4c
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0x164
	crclr 6
	bl 0x801a2530
	li %r0, -1
	stw %r0, 0xf8(%r31)
	b 0x8000ae6c
	lis %r3, -0x7fdc
	lwz %r4, 0xf8(%r31)
	addi %r3, %r3, 0x5b24
	lhz %r5, 0x10fc(%r31)
	lhz %r6, 0x10fe(%r31)
	addi %r3, %r3, 0x188
	crclr 6
	bl 0x801a2530
	lis %r3, -0x7fdc
	li %r0, 1
	addi %r3, %r3, 0x5b24
	stw %r0, 0x84(%r31)
	addi %r3, %r3, 0x1cc
	li %r4, 1
	crclr 6
	bl 0x801a2530
	lwz %r4, -0x6c38(%r13)
	mr %r3, %r31
	lfs %f1, -0x7f80(%r2)
	lwz %r4, 0x50(%r4)
	lfs %f0, -0x7f7c(%r2)
	stfs %f1, 0x50(%r4)
	lfs %f1, -0x7f78(%r2)
	stfs %f0, 0x54(%r4)
	lfs %f0, -0x7f74(%r2)
	stfs %f1, 0x58(%r4)
	stfs %f0, 0x5c(%r4)
	bl 0x8000a8b0
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	lwz %r3, 0xf8(%r3)
	cmpwi %r5, 0
	rlwinm %r5, %r3, 0, 0, 7
	rlwinm %r6, %r3, 0, 8, 0xf
	beq 0x8000af20
	cmpwi %r5, 0
	beq 0x8000af20
	addis %r0, %r5, 0x100
	cmplwi %r0, 0
	beq 0x8000af20
	cmpwi %r6, 0
	beq 0x8000af20
	addis %r0, %r6, -0xff
	cmplwi %r0, 0
	beq 0x8000af20
	addis %r0, %r3, 1
	cmplwi %r0, 0xffff
	bne 0x8000af38
	cmpwi %r4, 0
	beq 0x8000af30
	li %r0, -1
	stw %r0, 0(%r4)
	li %r3, 0
	blr
	cmpwi %r4, 0
	beq 0x8000af44
	stw %r3, 0(%r4)
	li %r3, 1
	blr
	lwz %r6, 0xf8(%r3)
	cmpwi %r5, 0
	rlwinm %r5, %r6, 0, 0, 7
	beq 0x8000af7c
	cmpwi %r5, 0
	beq 0x8000af7c
	addis %r0, %r5, 0x100
	cmplwi %r0, 0
	beq 0x8000af7c
	addis %r0, %r6, 1
	cmplwi %r0, 0xffff
	bne 0x8000afa8
	cmpwi %r4, 0
	beq 0x8000afa0
	lwz %r0, 0x84(%r3)
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5a90
	slwi %r0, %r0, 3
	add %r3, %r3, %r0
	lhz %r0, 4(%r3)
	sth %r0, 0(%r4)
	li %r3, 0
	blr
	rlwinm. %r5, %r6, 0, 8, 0xf
	beq 0x8000afbc
	addis %r0, %r5, -0xff
	cmplwi %r0, 0
	bne 0x8000afe8
	cmpwi %r4, 0
	beq 0x8000afe0
	lwz %r0, 0x84(%r3)
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5a90
	slwi %r0, %r0, 3
	add %r3, %r3, %r0
	lhz %r0, 4(%r3)
	sth %r0, 0(%r4)
	li %r3, 0
	blr
	cmpwi %r4, 0
	beq 0x8000aff8
	lhz %r0, 0x10fc(%r3)
	sth %r0, 0(%r4)
	li %r3, 1
	blr
	lwz %r6, 0xf8(%r3)
	cmpwi %r5, 0
	rlwinm %r5, %r6, 0, 0, 7
	beq 0x8000b030
	cmpwi %r5, 0
	beq 0x8000b030
	addis %r0, %r5, 0x100
	cmplwi %r0, 0
	beq 0x8000b030
	addis %r0, %r6, 1
	cmplwi %r0, 0xffff
	bne 0x8000b05c
	cmpwi %r4, 0
	beq 0x8000b054
	lwz %r0, 0x84(%r3)
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5a90
	slwi %r0, %r0, 3
	add %r3, %r3, %r0
	lhz %r0, 6(%r3)
	sth %r0, 0(%r4)
	li %r3, 0
	blr
	rlwinm. %r5, %r6, 0, 8, 0xf
	beq 0x8000b070
	addis %r0, %r5, -0xff
	cmplwi %r0, 0
	bne 0x8000b09c
	cmpwi %r4, 0
	beq 0x8000b094
	lwz %r0, 0x84(%r3)
	lis %r3, -0x7fdc
	addi %r3, %r3, 0x5a90
	slwi %r0, %r0, 3
	add %r3, %r3, %r0
	lhz %r0, 6(%r3)
	sth %r0, 0(%r4)
	li %r3, 0
	blr
	cmpwi %r4, 0
	beq 0x8000b0ac
	lhz %r0, 0x10fe(%r3)
	sth %r0, 0(%r4)
	li %r3, 1
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r3, 1
	stw %r0, 0x14(%r1)
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	bl 0x801a84cc
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r3, 1
	stw %r0, 0x14(%r1)
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	bl 0x801a87b8
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r3, 1
	stw %r0, 0x14(%r1)
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	li %r3, 0
	bl 0x801a85e8
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	lwz %r3, -0x6c00(%r13)
	lbz %r0, 0xb7(%r3)
	cmpwi %r0, 0
	beqlr
	li %r0, 1
	stb %r0, 0xb4(%r3)
	blr
	lwz %r3, -0x6c00(%r13)
	lbz %r0, 0xb7(%r3)
	cmpwi %r0, 0
	beqlr
	li %r0, 1
	stb %r0, 0xb5(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, -0x7fff
	stw %r0, 0x14(%r1)
	li %r0, 0
	stb %r0, 0xb5(%r3)
	stb %r0, 0xb4(%r3)
	addi %r3, %r4, -0x4eac
	bl 0x801ab6bc
	lis %r3, -0x7fff
	addi %r3, %r3, -0x4e90
	bl 0x801ab5d0
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	lbz %r0, 0xb4(%r3)
	cmpwi %r0, 0
	beq 0x8000b200
	li %r3, 1
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	bl 0x801a84cc
	b 0x8000b228
	lbz %r0, 0xb5(%r3)
	cmpwi %r0, 0
	beq 0x8000b228
	li %r3, 1
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	li %r3, 0
	bl 0x801a85e8
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	lwz %r3, -0x7ff0(%r13)
	blr
	addi %r0, %r4, -0x41
	lis %r3, 0x524d
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 0x19
	addi %r3, %r3, 0x4345
	bgtlr
	extsb %r3, %r4
	addis %r3, %r3, 0x524d
	addi %r3, %r3, 0x4300
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stmw %r27, 0xc(%r1)
	mr %r28, %r5
	mr %r27, %r3
	mr %r29, %r6
	mr %r30, %r7
	mr %r31, %r8
	li %r5, 0x40
	bl 0x80012680
	lis %r4, -0x7fff
	stw %r28, 0x40(%r27)
	lwz %r3, 0xe8(%r27)
	addi %r4, %r4, -0x4b64
	stb %r29, 0x44(%r27)
	li %r5, 0
	li %r6, 0
	stw %r30, 0x48(%r27)
	stw %r31, 0x4c(%r27)
	bl 0x80241d5c
	lmw %r27, 0xc(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stmw %r27, 0xc(%r1)
	mr %r27, %r5
	mr %r31, %r3
	mr %r28, %r6
	mr %r29, %r7
	mr %r30, %r8
	li %r5, 0x40
	bl 0x80012680
	lis %r4, -0x7fff
	stw %r27, 0x40(%r31)
	lwz %r3, 0xe8(%r31)
	addi %r4, %r4, -0x4b64
	stb %r28, 0x44(%r31)
	li %r5, 0
	li %r6, 0
	stw %r29, 0x48(%r31)
	stw %r30, 0x4c(%r31)
	bl 0x80241d5c
	li %r30, 0
	b 0x8000b474
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 4(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 4(%r3)
	lwz %r12, 8(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c40(%r13)
	lbz %r0, 0x51(%r3)
	cmpwi %r0, 0
	beq 0x8000b398
	cmpwi %r30, 0
	bne 0x8000b388
	li %r3, 0
	bl 0x801baa8c
	lwz %r3, 0xe8(%r31)
	lwz %r3, 8(%r3)
	bl 0x801aa784
	lwz %r3, -0x6c40(%r13)
	li %r30, 1
	bl 0x80008de0
	b 0x8000b3c8
	cmpwi %r30, 0
	beq 0x8000b3ac
	lwz %r3, 0xe8(%r31)
	lwz %r3, 8(%r3)
	bl 0x801aa4ec
	lwz %r3, -0x6c38(%r13)
	li %r30, 0
	lwz %r3, 0x54(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0x24(%r12)
	mtctr %r12
	bctrl
	lbz %r0, 0xb4(%r31)
	cmpwi %r0, 0
	beq 0x8000b3f0
	li %r3, 1
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	bl 0x801a84cc
	b 0x8000b418
	lbz %r0, 0xb5(%r31)
	cmpwi %r0, 0
	beq 0x8000b418
	li %r3, 1
	bl 0x801baa8c
	bl 0x801ba904
	bl 0x801b994c
	bl 0x801b994c
	li %r3, 0
	bl 0x801a85e8
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 4(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r30, 0
	beq 0x8000b444
	lwz %r3, -0x6c40(%r13)
	bl 0x80008e34
	b 0x8000b45c
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	lwz %r12, 0(%r3)
	lwz %r12, 0x28(%r12)
	mtctr %r12
	bctrl
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 4(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl
	lwz %r3, 0xe8(%r31)
	bl 0x80241ddc
	cmpwi %r3, 0
	bne 0x8000b32c
	lwz %r3, 0x50(%r31)
	lmw %r27, 0xc(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lwz %r31, -0x6c00(%r13)
	lwz %r5, 0x40(%r31)
	cmpwi %r5, 0
	beq 0x8000b4f0
	lbz %r0, 0x44(%r31)
	mr %r3, %r31
	li %r4, 0
	li %r6, 2
	cmpwi %r0, 0
	beq 0x8000b4d8
	li %r6, 1
	lwz %r9, 0x48(%r31)
	li %r7, 0
	li %r8, 0
	bl 0x80222638
	stw %r3, 0x50(%r31)
	b 0x8000b514
	lwz %r4, 0x4c(%r31)
	mr %r3, %r31
	lwz %r9, 0x48(%r31)
	li %r5, 0
	li %r6, 1
	li %r7, 0
	li %r8, 0
	bl 0x80222638
	stw %r3, 0x50(%r31)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	mr %r9, %r3
	mr %r8, %r4
	mr %r0, %r5
	mr %r7, %r6
	mr %r5, %r8
	lwz %r3, -0x6c00(%r13)
	mr %r4, %r9
	mr %r6, %r0
	li %r8, 0
	b 0x8000b2d0
	mr %r0, %r3
	lwz %r3, -0x6c00(%r13)
	mr %r8, %r4
	mr %r7, %r5
	mr %r4, %r0
	li %r5, 0
	li %r6, 1
	b 0x8000b2d0
	lwz %r5, -0x6c00(%r13)
	li %r3, 0
	li %r0, 0
	lwz %r4, 0x6c(%r5)
	cmpwi %r4, 1
	bne 0x8000b598
	lwz %r4, 0x64(%r5)
	cmpwi %r4, 0
	bne 0x8000b598
	li %r0, 1
	cmpwi %r0, 0
	beqlr
	lwz %r0, 0x68(%r5)
	cmpwi %r0, 0
	bnelr
	li %r3, 1
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0
	clrlwi %r3, %r31, 0x18
	li %r4, 0
	bl 0x801c0e24
	addi %r31, %r31, 1
	cmplwi %r31, 4
	blt 0x8000b5c8
	li %r31, 0
	clrlwi %r3, %r31, 0x18
	li %r4, 0
	bl 0x801af868
	addi %r31, %r31, 1
	cmplwi %r31, 4
	blt 0x8000b5e4
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	b 0x80008eb0
	lwz %r0, 4(%r3)
	li %r6, 0
	rlwinm %r4, %r0, 0xa, 0x1d, 0x1f
	addi %r0, %r4, 0xff
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 1
	bgt 0x8000b63c
	lbz %r0, 0xa(%r3)
	cmpwi %r0, 0
	beq 0x8000b64c
	li %r0, 0x28
	stw %r0, -0x6be8(%r13)
	li %r3, -1
	blr
	lwz %r0, 8(%r3)
	rlwinm. %r5, %r0, 3, 0x1d, 0x1f
	bne 0x8000b660
	lwz %r3, 0x18(%r3)
	blr
	lwz %r8, 0x1c(%r3)
	cmplwi %r5, 3
	lwz %r4, 0x24(%r3)
	lwz %r0, 0x34(%r3)
	subf %r4, %r8, %r4
	add %r7, %r0, %r4
	blt 0x8000b684
	addi %r6, %r5, -2
	subf %r7, %r6, %r7
	lwz %r0, 4(%r3)
	rlwinm. %r0, %r0, 0xd, 0x1f, 0x1f
	bne 0x8000b6b4
	subf. %r0, %r6, %r4
	mtctr %r0
	beq 0x8000b6b4
	lbz %r0, 0(%r8)
	addi %r8, %r8, 1
	cmplwi %r0, 0xa
	bne 0x8000b6b0
	addi %r7, %r7, 1
	bdnz 0x8000b69c
	mr %r3, %r7
	blr
	b 0x8000b614
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r4, 8(%r1)
	lwz %r0, 4(%r3)
	rlwinm %r0, %r0, 0xa, 0x1d, 0x1f
	cmplwi %r0, 1
	bne 0x8000b6fc
	lbz %r0, 0xa(%r3)
	cmpwi %r0, 0
	beq 0x8000b70c
	li %r0, 0x28
	stw %r0, -0x6be8(%r13)
	li %r3, -1
	b 0x8000b86c
	lwz %r0, 8(%r3)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 1
	bne 0x8000b74c
	li %r4, 0
	bl 0x8000d9f8
	cmpwi %r3, 0
	beq 0x8000b74c
	li %r4, 0
	stw %r4, 0x28(%r30)
	li %r0, 1
	li %r3, -1
	stb %r0, 0xa(%r30)
	li %r0, 0x28
	stw %r0, -0x6be8(%r13)
	b 0x8000b86c
	cmpwi %r31, 1
	bne 0x8000b76c
	mr %r3, %r30
	li %r31, 0
	bl 0x8000b614
	lwz %r0, 8(%r1)
	add %r0, %r0, %r3
	stw %r0, 8(%r1)
	cmpwi %r31, 2
	beq 0x8000b7f0
	lwz %r0, 4(%r30)
	rlwinm %r0, %r0, 5, 0x1d, 0x1f
	cmplwi %r0, 3
	beq 0x8000b7f0
	lwz %r6, 8(%r30)
	srwi %r3, %r6, 0x1d
	addi %r0, %r3, -2
	cmplwi %r0, 1
	bgt 0x8000b7f0
	lwz %r0, 8(%r1)
	lwz %r5, 0x18(%r30)
	cmplw %r0, %r5
	bge 0x8000b7b4
	lwz %r3, 0x34(%r30)
	cmplw %r0, %r3
	bge 0x8000b7c4
	lwz %r0, 8(%r30)
	clrlwi %r0, %r0, 3
	stw %r0, 8(%r30)
	b 0x8000b7fc
	lwz %r4, 0x1c(%r30)
	subf %r3, %r3, %r0
	li %r0, 2
	add %r3, %r4, %r3
	stw %r3, 0x24(%r30)
	rlwimi %r6, %r0, 0x1d, 0, 2
	lwz %r0, 8(%r1)
	subf %r0, %r0, %r5
	stw %r0, 0x28(%r30)
	stw %r6, 8(%r30)
	b 0x8000b7fc
	lwz %r0, 8(%r30)
	clrlwi %r0, %r0, 3
	stw %r0, 8(%r30)
	lwz %r0, 8(%r30)
	rlwinm. %r0, %r0, 3, 0x1d, 0x1f
	bne 0x8000b868
	lwz %r12, 0x38(%r30)
	cmpwi %r12, 0
	beq 0x8000b854
	mr %r5, %r31
	addi %r4, %r1, 8
	lwz %r3, 0(%r30)
	lwz %r6, 0x48(%r30)
	mtctr %r12
	bctrl
	cmpwi %r3, 0
	beq 0x8000b854
	li %r4, 0
	stw %r4, 0x28(%r30)
	li %r0, 1
	li %r3, -1
	stb %r0, 0xa(%r30)
	li %r0, 0x28
	stw %r0, -0x6be8(%r13)
	b 0x8000b86c
	li %r3, 0
	stb %r3, 9(%r30)
	lwz %r0, 8(%r1)
	stw %r0, 0x18(%r30)
	stw %r3, 0x28(%r30)
	li %r3, 0
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	b 0x8000b6c0
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r4, 0
	li %r5, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0
	stw %r30, 8(%r1)
	mr %r30, %r3
	stb %r31, 0xa(%r3)
	bl 0x8000b6c0
	stb %r31, 0xa(%r30)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	b 0x80020838
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 8(%r1)
	mr %r30, %r3
	lwz %r0, 0(%r4)
	rlwinm %r6, %r0, 0, 0, 0x1c
	rlwinm %r0, %r0, 0, 0x1f, 0x1d
	stw %r0, 0(%r4)
	add %r5, %r4, %r6
	lwzx %r0, %r4, %r6
	rlwinm %r0, %r0, 0, 0x1e, 0x1c
	stwx %r0, %r4, %r6
	stw %r6, -4(%r5)
	lwz %r0, 0xc(%r3)
	rlwinm %r0, %r0, 0, 0, 0x1c
	add %r31, %r3, %r0
	lwzu %r3, -4(%r31)
	cmpwi %r3, 0
	beq 0x8000b9e4
	lwz %r5, 8(%r3)
	mr %r3, %r4
	stw %r5, 8(%r4)
	stw %r4, 0xc(%r5)
	lwz %r0, 0(%r31)
	stw %r0, 0xc(%r4)
	lwz %r5, 0(%r31)
	stw %r4, 8(%r5)
	stw %r4, 0(%r31)
	lwz %r0, 0(%r4)
	rlwinm. %r0, %r0, 0, 0x1d, 0x1d
	bne 0x8000b9d4
	lwz %r6, -4(%r4)
	rlwinm. %r0, %r6, 0, 0x1e, 0x1e
	beq 0x8000b968
	b 0x8000b9d4
	subf %r3, %r6, %r4
	lwz %r0, 0(%r3)
	clrlwi %r5, %r0, 0x1d
	stw %r5, 0(%r3)
	lwz %r0, 0(%r4)
	rlwinm %r0, %r0, 0, 0, 0x1c
	add %r0, %r6, %r0
	rlwimi %r5, %r0, 0, 0, 0x1c
	stw %r5, 0(%r3)
	rlwinm. %r0, %r5, 0, 0x1e, 0x1e
	bne 0x8000b9a8
	lwz %r0, 0(%r4)
	rlwinm %r0, %r0, 0, 0, 0x1c
	add %r0, %r6, %r0
	add %r5, %r3, %r0
	stw %r0, -4(%r5)
	lwz %r5, 0(%r31)
	cmplw %r5, %r4
	bne 0x8000b9bc
	lwz %r0, 0xc(%r5)
	stw %r0, 0(%r31)
	lwz %r5, 0xc(%r4)
	lwz %r0, 8(%r4)
	stw %r0, 8(%r5)
	lwz %r5, 0xc(%r4)
	lwz %r4, 8(%r5)
	stw %r5, 0xc(%r4)
	stw %r3, 0(%r31)
	mr %r4, %r31
	bl 0x8000ba24
	b 0x8000b9f0
	stw %r4, 0(%r31)
	stw %r4, 8(%r4)
	stw %r4, 0xc(%r4)
	lwz %r3, 0(%r31)
	lwz %r0, 8(%r30)
	lwz %r3, 0(%r3)
	rlwinm %r3, %r3, 0, 0, 0x1c
	cmplw %r0, %r3
	bge 0x8000ba0c
	stw %r3, 8(%r30)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	lwz %r6, 0(%r3)
	rlwinm %r7, %r6, 0, 0, 0x1c
	lwzx %r5, %r3, %r7
	add %r8, %r3, %r7
	rlwinm. %r0, %r5, 0, 0x1e, 0x1e
	bnelr
	rlwinm %r5, %r5, 0, 0, 0x1c
	clrlwi %r0, %r6, 0x1d
	add %r6, %r7, %r5
	rlwimi %r0, %r6, 0, 0, 0x1c
	stw %r0, 0(%r3)
	rlwinm. %r0, %r0, 0, 0x1e, 0x1e
	bne 0x8000ba60
	add %r5, %r3, %r6
	stw %r6, -4(%r5)
	lwz %r0, 0(%r3)
	rlwinm. %r0, %r0, 0, 0x1e, 0x1e
	bne 0x8000ba7c
	lwzx %r0, %r3, %r6
	rlwinm %r0, %r0, 0, 0x1e, 0x1c
	stwx %r0, %r3, %r6
	b 0x8000ba88
	lwzx %r0, %r3, %r6
	ori %r0, %r0, 4
	stwx %r0, %r3, %r6
	lwz %r3, 0(%r4)
	cmplw %r3, %r8
	bne 0x8000ba9c
	lwz %r0, 0xc(%r3)
	stw %r0, 0(%r4)
	lwz %r0, 0(%r4)
	cmplw %r0, %r8
	bne 0x8000bab0
	li %r0, 0
	stw %r0, 0(%r4)
	lwz %r3, 0xc(%r8)
	lwz %r0, 8(%r8)
	stw %r0, 8(%r3)
	lwz %r3, 8(%r8)
	lwz %r0, 0xc(%r8)
	stw %r0, 0xc(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r6, -0x7fdc
	li %r7, 0
	stw %r0, 0x14(%r1)
	addi %r6, %r6, 0x5d10
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 8(%r1)
	b 0x8000bafc
	addi %r6, %r6, 4
	addi %r7, %r7, 1
	lwz %r0, 0(%r6)
	cmplw %r5, %r0
	bgt 0x8000baf4
	addi %r6, %r4, -4
	lwz %r4, -4(%r4)
	slwi %r0, %r7, 3
	add %r3, %r3, %r0
	lwz %r0, 0xc(%r4)
	cmpwi %r0, 0
	bne 0x8000bb8c
	lwz %r5, 8(%r3)
	cmplw %r5, %r4
	beq 0x8000bb8c
	lwz %r0, 4(%r3)
	cmplw %r0, %r4
	bne 0x8000bb54
	lwz %r0, 0(%r5)
	stw %r0, 8(%r3)
	lwz %r5, 4(%r3)
	lwz %r0, 0(%r5)
	stw %r0, 4(%r3)
	b 0x8000bb8c
	lwz %r5, 0(%r4)
	lwz %r0, 4(%r4)
	stw %r0, 4(%r5)
	lwz %r5, 4(%r4)
	lwz %r0, 0(%r4)
	stw %r0, 0(%r5)
	lwz %r5, 8(%r3)
	stw %r5, 4(%r4)
	lwz %r5, 0(%r5)
	stw %r5, 0(%r4)
	stw %r4, 4(%r5)
	lwz %r5, 4(%r4)
	stw %r4, 0(%r5)
	stw %r4, 8(%r3)
	lwz %r0, 0xc(%r4)
	stw %r0, 4(%r6)
	stw %r6, 0xc(%r4)
	lwz %r0, 0x10(%r4)
	addic. %r0, %r0, -1
	stw %r0, 0x10(%r4)
	bne 0x8000bca0
	lwz %r0, 8(%r3)
	cmplw %r0, %r4
	bne 0x8000bbbc
	lwz %r0, 4(%r4)
	stw %r0, 8(%r3)
	lwz %r0, 4(%r3)
	cmplw %r0, %r4
	bne 0x8000bbd0
	lwz %r0, 0(%r4)
	stw %r0, 4(%r3)
	lwz %r5, 0(%r4)
	lwz %r0, 4(%r4)
	stw %r0, 4(%r5)
	lwz %r5, 4(%r4)
	lwz %r0, 0(%r4)
	stw %r0, 0(%r5)
	lwz %r0, 8(%r3)
	cmplw %r0, %r4
	bne 0x8000bbfc
	li %r0, 0
	stw %r0, 8(%r3)
	lwz %r0, 4(%r3)
	cmplw %r0, %r4
	bne 0x8000bc10
	li %r0, 0
	stw %r0, 4(%r3)
	addi %r4, %r4, -8
	lwz %r0, 4(%r4)
	rlwinm %r30, %r0, 0, 0, 0x1e
	mr %r3, %r30
	bl 0x8000b8d4
	lwz %r3, 0x10(%r30)
	li %r5, 0
	rlwinm. %r0, %r3, 0, 0x1e, 0x1e
	bne 0x8000bc50
	lwz %r0, 0xc(%r30)
	rlwinm %r4, %r3, 0, 0, 0x1c
	rlwinm %r3, %r0, 0, 0, 0x1c
	addi %r0, %r3, -0x18
	cmplw %r4, %r0
	bne 0x8000bc50
	li %r5, 1
	cmpwi %r5, 0
	beq 0x8000bca0
	lwz %r4, 4(%r30)
	cmplw %r4, %r30
	bne 0x8000bc68
	li %r4, 0
	lwz %r0, 0(%r31)
	cmplw %r0, %r30
	bne 0x8000bc78
	stw %r4, 0(%r31)
	cmpwi %r4, 0
	beq 0x8000bc8c
	lwz %r3, 0(%r30)
	stw %r3, 0(%r4)
	stw %r4, 4(%r3)
	li %r0, 0
	stw %r0, 4(%r30)
	mr %r3, %r30
	stw %r0, 0(%r30)
	bl 0x800201c0
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 8(%r1)
	lbz %r0, -0x6bf0(%r13)
	cmpwi %r0, 0
	bne 0x8000bcf8
	lis %r3, -0x7fd6
	li %r4, 0
	addi %r3, %r3, -0x208
	li %r5, 0x34
	bl 0x80006038
	li %r0, 1
	stb %r0, -0x6bf0(%r13)
	cmpwi %r31, 0
	lis %r30, -0x7fd6
	addi %r30, %r30, -0x208
	beq 0x8000bdd0
	lwz %r3, -4(%r31)
	clrlwi. %r0, %r3, 0x1f
	bne 0x8000bd1c
	lwz %r5, 8(%r3)
	b 0x8000bd28
	lwz %r0, -8(%r31)
	rlwinm %r3, %r0, 0, 0, 0x1c
	addi %r5, %r3, -8
	cmplwi %r5, 0x44
	bgt 0x8000bd40
	mr %r3, %r30
	mr %r4, %r31
	bl 0x8000bacc
	b 0x8000bdd0
	lwz %r0, -4(%r31)
	addi %r4, %r31, -8
	rlwinm %r31, %r0, 0, 0, 0x1e
	mr %r3, %r31
	bl 0x8000b8d4
	lwz %r3, 0x10(%r31)
	li %r5, 0
	rlwinm. %r0, %r3, 0, 0x1e, 0x1e
	bne 0x8000bd80
	lwz %r0, 0xc(%r31)
	rlwinm %r4, %r3, 0, 0, 0x1c
	rlwinm %r3, %r0, 0, 0, 0x1c
	addi %r0, %r3, -0x18
	cmplw %r4, %r0
	bne 0x8000bd80
	li %r5, 1
	cmpwi %r5, 0
	beq 0x8000bdd0
	lwz %r4, 4(%r31)
	cmplw %r4, %r31
	bne 0x8000bd98
	li %r4, 0
	lwz %r0, 0(%r30)
	cmplw %r0, %r31
	bne 0x8000bda8
	stw %r4, 0(%r30)
	cmpwi %r4, 0
	beq 0x8000bdbc
	lwz %r3, 0(%r31)
	stw %r3, 0(%r4)
	stw %r4, 4(%r3)
	li %r0, 0
	stw %r0, 4(%r31)
	mr %r3, %r31
	stw %r0, 0(%r31)
	bl 0x800201c0
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, 0
	stw %r30, 0x18(%r1)
	li %r30, 3
	stw %r29, 0x14(%r1)
	lis %r29, -0x7fd9
	addi %r29, %r29, -0x3650
	b 0x8000be68
	lwz %r0, 4(%r29)
	rlwinm. %r0, %r0, 0xa, 0x1d, 0x1f
	beq 0x8000be28
	mr %r3, %r29
	bl 0x8000e0fc
	mr %r3, %r29
	lwz %r29, 0x4c(%r29)
	lbz %r0, 0xc(%r3)
	cmpwi %r0, 0
	beq 0x8000be44
	bl 0x8000bcb8
	b 0x8000be68
	lwz %r0, 4(%r3)
	cmpwi %r29, 0
	rlwimi %r0, %r30, 0x16, 7, 9
	stw %r0, 4(%r3)
	beq 0x8000be68
	lbz %r0, 0xc(%r29)
	cmpwi %r0, 0
	beq 0x8000be68
	stw %r31, 0x4c(%r3)
	cmpwi %r29, 0
	bne 0x8000be14
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0
	stw %r30, 8(%r1)
	lis %r30, -0x7fd9
	addi %r30, %r30, -0x3650
	b 0x8000beec
	lwz %r3, 4(%r30)
	rlwinm. %r0, %r3, 0xa, 0x1d, 0x1f
	beq 0x8000bee8
	rlwinm. %r0, %r3, 7, 0x1f, 0x1f
	beq 0x8000bee8
	lwz %r0, 8(%r30)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 1
	bne 0x8000bee8
	mr %r3, %r30
	bl 0x8000e1b8
	cmpwi %r3, 0
	beq 0x8000bee8
	li %r31, -1
	lwz %r30, 0x4c(%r30)
	cmpwi %r30, 0
	bne 0x8000beb0
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0
	stw %r30, 8(%r1)
	lis %r30, -0x7fd9
	addi %r30, %r30, -0x3650
	b 0x8000bf58
	lwz %r0, 4(%r30)
	rlwinm. %r0, %r0, 0xa, 0x1d, 0x1f
	beq 0x8000bf54
	mr %r3, %r30
	bl 0x8000e1b8
	cmpwi %r3, 0
	beq 0x8000bf54
	li %r31, -1
	lwz %r30, 0x4c(%r30)
	cmpwi %r30, 0
	bne 0x8000bf34
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	li %r0, 0
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r6
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stb %r0, 0(%r3)
	stb %r0, 4(%r3)
	b 0x8000bff4
	mr %r3, %r31
	mr %r4, %r30
	li %r6, 0xa
	li %r5, 0
	bl 0x80020cc8
	lbz %r8, 4(%r29)
	mr %r3, %r31
	li %r6, 0xa
	li %r5, 0
	add %r7, %r29, %r8
	addi %r0, %r8, 1
	stb %r4, 5(%r7)
	mr %r4, %r30
	stb %r0, 4(%r29)
	bl 0x80020aa4
	mr %r30, %r4
	mr %r31, %r3
	or. %r0, %r30, %r31
	bne 0x8000bfb0
	lbz %r0, 4(%r29)
	addi %r4, %r29, 5
	add %r3, %r29, %r0
	addi %r3, %r3, 5
	b 0x8000c024
	lbz %r5, 0(%r4)
	lbz %r0, 0(%r3)
	stb %r0, 0(%r4)
	addi %r4, %r4, 1
	stb %r5, 0(%r3)
	addi %r3, %r3, -1
	cmplw %r4, %r3
	blt 0x8000c010
	lbz %r3, 4(%r29)
	addi %r0, %r3, -1
	sth %r0, 2(%r29)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x60(%r1)
	lis %r6, -0x3333
	lbz %r8, 4(%r4)
	addi %r9, %r6, -0x3333
	stw %r31, 0x5c(%r1)
	addi %r0, %r1, 8
	lbz %r7, 4(%r5)
	li %r11, 0
	stw %r30, 0x58(%r1)
	add %r12, %r8, %r7
	stw %r29, 0x54(%r1)
	addi %r12, %r12, -1
	add %r6, %r0, %r12
	addi %r6, %r6, 1
	stb %r11, 0(%r3)
	mr %r0, %r6
	b 0x8000c1c8
	lbz %r7, 4(%r5)
	addi %r31, %r7, -1
	subf %r7, %r31, %r12
	addic. %r30, %r7, -1
	bge 0x8000c0b8
	li %r30, 0
	addi %r31, %r12, -1
	lbz %r7, 4(%r4)
	add %r8, %r5, %r31
	addi %r31, %r31, 1
	add %r10, %r4, %r30
	subf %r7, %r30, %r7
	addi %r29, %r8, 5
	cmpw %r31, %r7
	addi %r30, %r10, 5
	ble 0x8000c0e0
	mr %r31, %r7
	cmpwi %r31, 0
	ble 0x8000c1a8
	rlwinm. %r7, %r31, 0x1d, 3, 0x1f
	mtctr %r7
	beq 0x8000c188
	lbz %r10, 0(%r30)
	lbz %r8, 0(%r29)
	mullw %r7, %r10, %r8
	lbz %r10, 1(%r30)
	lbz %r8, -1(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 2(%r30)
	lbz %r8, -2(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 3(%r30)
	lbz %r8, -3(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 4(%r30)
	lbz %r8, -4(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 5(%r30)
	lbz %r8, -5(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 6(%r30)
	lbz %r8, -6(%r29)
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	lbz %r10, 7(%r30)
	lbz %r8, -7(%r29)
	addi %r30, %r30, 8
	addi %r29, %r29, -8
	add %r11, %r11, %r7
	mullw %r7, %r10, %r8
	add %r11, %r11, %r7
	bdnz 0x8000c0f4
	andi. %r31, %r31, 7
	beq 0x8000c1a8
	mtctr %r31
	lbz %r10, 0(%r30)
	addi %r30, %r30, 1
	lbz %r8, 0(%r29)
	addi %r29, %r29, -1
	mullw %r7, %r10, %r8
	add %r11, %r11, %r7
	bdnz 0x8000c18c
	mulhwu %r8, %r9, %r11
	addi %r12, %r12, -1
	mr %r7, %r8
	srwi %r8, %r8, 3
	mulli %r8, %r8, 0xa
	subf %r8, %r8, %r11
	stbu %r8, -1(%r6)
	srwi %r11, %r7, 3
	cmpwi %r12, 0
	bgt 0x8000c09c
	lha %r7, 2(%r4)
	cmpwi %r11, 0
	lha %r4, 2(%r5)
	add %r4, %r7, %r4
	sth %r4, 2(%r3)
	beq 0x8000c1f8
	stbu %r11, -1(%r6)
	extsh %r4, %r4
	addi %r4, %r4, 1
	sth %r4, 2(%r3)
	li %r7, 0
	b 0x8000c214
	add %r4, %r3, %r7
	lbz %r5, 0(%r6)
	stb %r5, 5(%r4)
	addi %r7, %r7, 1
	addi %r6, %r6, 1
	cmpwi %r7, 0x24
	bge 0x8000c224
	cmplw %r6, %r0
	blt 0x8000c200
	cmplw %r6, %r0
	stb %r7, 4(%r3)
	bge 0x8000c2cc
	lbz %r4, 0(%r6)
	cmplwi %r4, 5
	blt 0x8000c2cc
	bne 0x8000c274
	addi %r5, %r6, 1
	subf %r4, %r5, %r0
	mtctr %r4
	cmplw %r5, %r0
	bge 0x8000c268
	lbz %r0, 0(%r5)
	cmpwi %r0, 0
	bne 0x8000c274
	addi %r5, %r5, 1
	bdnz 0x8000c254
	lbz %r0, -1(%r6)
	clrlwi. %r0, %r0, 0x1f
	beq 0x8000c2cc
	lbz %r4, 4(%r3)
	addi %r6, %r3, 5
	li %r0, 0
	add %r5, %r6, %r4
	addi %r5, %r5, -1
	lbz %r4, 0(%r5)
	cmplwi %r4, 9
	bge 0x8000c2a0
	addi %r0, %r4, 1
	stb %r0, 0(%r5)
	b 0x8000c2cc
	cmplw %r5, %r6
	bne 0x8000c2c0
	li %r0, 1
	stb %r0, 0(%r5)
	lha %r4, 2(%r3)
	addi %r0, %r4, 1
	sth %r0, 2(%r3)
	b 0x8000c2cc
	stb %r0, 0(%r5)
	addi %r5, %r5, -1
	b 0x8000c288
	lwz %r31, 0x5c(%r1)
	lwz %r30, 0x58(%r1)
	lwz %r29, 0x54(%r1)
	addi %r1, %r1, 0x60
	blr
	li %r0, 0
	sth %r5, 2(%r3)
	li %r7, 0
	stb %r0, 0(%r3)
	b 0x8000c30c
	lbz %r6, 0(%r4)
	add %r5, %r3, %r7
	addi %r4, %r4, 1
	addi %r7, %r7, 1
	addi %r0, %r6, -0x30
	stb %r0, 5(%r5)
	cmpwi %r7, 0x24
	bge 0x8000c320
	lbz %r0, 0(%r4)
	extsb. %r0, %r0
	bne 0x8000c2f4
	lbz %r0, 0(%r4)
	stb %r7, 4(%r3)
	extsb. %r0, %r0
	beqlr
	cmpwi %r0, 5
	bltlr
	bgt 0x8000c370
	addi %r5, %r4, 1
	b 0x8000c354
	extsb %r0, %r4
	cmpwi %r0, 0x30
	bne 0x8000c370
	addi %r5, %r5, 1
	lbz %r4, 0(%r5)
	extsb. %r0, %r4
	bne 0x8000c344
	add %r4, %r7, %r3
	lbz %r0, 4(%r4)
	clrlwi. %r0, %r0, 0x1f
	beqlr
	lbz %r4, 4(%r3)
	addi %r6, %r3, 5
	li %r0, 0
	add %r5, %r6, %r4
	addi %r5, %r5, -1
	lbz %r4, 0(%r5)
	cmplwi %r4, 9
	bge 0x8000c39c
	addi %r0, %r4, 1
	stb %r0, 0(%r5)
	blr
	cmplw %r5, %r6
	bne 0x8000c3bc
	li %r0, 1
	stb %r0, 0(%r5)
	lha %r4, 2(%r3)
	addi %r0, %r4, 1
	sth %r0, 2(%r3)
	blr
	stb %r0, 0(%r5)
	addi %r5, %r5, -1
	b 0x8000c384
	blr
	stwu %r1, -0x70(%r1)
	mflr %r0
	stw %r0, 0x74(%r1)
	addi %r0, %r4, 0x40
	cmplwi %r0, 0x48
	stw %r31, 0x6c(%r1)
	mr %r31, %r3
	stw %r30, 0x68(%r1)
	mr %r30, %r4
	bgt 0x8000c600
	lis %r5, -0x7fd9
	slwi %r0, %r0, 2
	addi %r5, %r5, -0x3510
	lwzx %r5, %r5, %r0
	mtctr %r5
	bctr
	lis %r4, -0x7fdc
	li %r5, -0x14
	addi %r4, %r4, 0x5d28
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -0x10
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x2e
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -0xa
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x55
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -5
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x6d
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -3
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x7a
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -3
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x81
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -2
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x87
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -2
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x8d
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -2
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x92
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x96
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x9a
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, -1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x9d
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 0
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0x9f
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 0
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xa1
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 0
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xa3
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 0
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xa5
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xa7
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xaa
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 1
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xad
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 2
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xb0
	bl 0x8000c2e0
	b 0x8000c720
	lis %r4, -0x7fdc
	li %r5, 2
	addi %r4, %r4, 0x5d28
	addi %r4, %r4, 0xb4
	bl 0x8000c2e0
	b 0x8000c720
	srwi %r0, %r4, 0x1f
	addi %r3, %r1, 0x34
	add %r0, %r0, %r4
	srawi %r4, %r0, 1
	bl 0x8000c3cc
	addi %r4, %r1, 0x34
	mr %r3, %r31
	mr %r5, %r4
	bl 0x8000c058
	clrlwi. %r0, %r30, 0x1f
	beq 0x8000c720
	lhz %r3, 0(%r31)
	cmpwi %r30, 0
	lhz %r0, 2(%r31)
	sth %r0, 0xa(%r1)
	sth %r3, 8(%r1)
	lhz %r3, 4(%r31)
	lhz %r0, 6(%r31)
	sth %r0, 0xe(%r1)
	sth %r3, 0xc(%r1)
	lhz %r3, 8(%r31)
	lhz %r0, 0xa(%r31)
	sth %r0, 0x12(%r1)
	sth %r3, 0x10(%r1)
	lhz %r3, 0xc(%r31)
	lhz %r0, 0xe(%r31)
	sth %r0, 0x16(%r1)
	sth %r3, 0x14(%r1)
	lhz %r3, 0x10(%r31)
	lhz %r0, 0x12(%r31)
	sth %r0, 0x1a(%r1)
	sth %r3, 0x18(%r1)
	lhz %r3, 0x14(%r31)
	lhz %r0, 0x16(%r31)
	sth %r0, 0x1e(%r1)
	sth %r3, 0x1c(%r1)
	lhz %r3, 0x18(%r31)
	lhz %r0, 0x1a(%r31)
	sth %r0, 0x22(%r1)
	sth %r3, 0x20(%r1)
	lhz %r3, 0x1c(%r31)
	lhz %r0, 0x1e(%r31)
	sth %r0, 0x26(%r1)
	sth %r3, 0x24(%r1)
	lhz %r3, 0x20(%r31)
	lhz %r0, 0x22(%r31)
	sth %r0, 0x2a(%r1)
	sth %r3, 0x28(%r1)
	lhz %r3, 0x24(%r31)
	lhz %r0, 0x26(%r31)
	sth %r0, 0x2e(%r1)
	sth %r3, 0x2c(%r1)
	lhz %r0, 0x28(%r31)
	sth %r0, 0x30(%r1)
	ble 0x8000c6f8
	lis %r4, -0x7fdc
	addi %r3, %r1, 0x34
	addi %r4, %r4, 0x5d28
	li %r5, 0
	addi %r4, %r4, 0xa1
	bl 0x8000c2e0
	b 0x8000c710
	lis %r4, -0x7fdc
	addi %r3, %r1, 0x34
	addi %r4, %r4, 0x5d28
	li %r5, -1
	addi %r4, %r4, 0x9d
	bl 0x8000c2e0
	mr %r3, %r31
	addi %r4, %r1, 8
	addi %r5, %r1, 0x34
	bl 0x8000c058
	lwz %r0, 0x74(%r1)
	lwz %r31, 0x6c(%r1)
	lwz %r30, 0x68(%r1)
	mtlr %r0
	addi %r1, %r1, 0x70
	blr
	lbz %r5, 5(%r3)
	cmpwi %r5, 0
	bne 0x8000c754
	lbz %r0, 5(%r4)
	cntlz %r0, %r0
	srwi %r3, %r0, 5
	blr
	lbz %r0, 5(%r4)
	cmpwi %r0, 0
	bne 0x8000c76c
	cntlz %r0, %r5
	srwi %r3, %r0, 5
	blr
	lha %r5, 2(%r3)
	lha %r0, 2(%r4)
	cmpw %r5, %r0
	bne 0x8000c814
	lbz %r7, 4(%r3)
	lbz %r0, 4(%r4)
	mr %r9, %r7
	cmpw %r7, %r0
	ble 0x8000c794
	mr %r9, %r0
	li %r8, 0
	mtctr %r9
	cmpwi %r9, 0
	ble 0x8000c7cc
	add %r6, %r3, %r8
	add %r5, %r4, %r8
	lbz %r6, 5(%r6)
	lbz %r0, 5(%r5)
	cmplw %r6, %r0
	beq 0x8000c7c4
	li %r3, 0
	blr
	addi %r8, %r8, 1
	bdnz 0x8000c7a4
	cmpw %r9, %r7
	bne 0x8000c7d8
	mr %r3, %r4
	lbz %r4, 4(%r3)
	subf %r0, %r8, %r4
	mtctr %r0
	cmpw %r8, %r4
	bge 0x8000c80c
	add %r4, %r3, %r8
	lbz %r0, 5(%r4)
	cmpwi %r0, 0
	beq 0x8000c804
	li %r3, 0
	blr
	addi %r8, %r8, 1
	bdnz 0x8000c7ec
	li %r3, 1
	blr
	li %r3, 0
	blr
	lbz %r0, 5(%r3)
	cmpwi %r0, 0
	bne 0x8000c83c
	lbz %r3, 5(%r4)
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi %r3, %r0, 0x1f
	blr
	lbz %r0, 5(%r4)
	cmpwi %r0, 0
	bne 0x8000c850
	li %r3, 0
	blr
	lha %r5, 2(%r4)
	lha %r0, 2(%r3)
	cmpw %r0, %r5
	bne 0x8000c904
	lbz %r7, 4(%r3)
	lbz %r0, 4(%r4)
	mr %r9, %r7
	cmpw %r7, %r0
	ble 0x8000c878
	mr %r9, %r0
	li %r8, 0
	mtctr %r9
	cmpwi %r9, 0
	ble 0x8000c8c0
	add %r6, %r4, %r8
	add %r5, %r3, %r8
	lbz %r6, 5(%r6)
	lbz %r0, 5(%r5)
	cmplw %r0, %r6
	bge 0x8000c8a8
	li %r3, 1
	blr
	cmplw %r6, %r0
	bge 0x8000c8b8
	li %r3, 0
	blr
	addi %r8, %r8, 1
	bdnz 0x8000c888
	cmpw %r9, %r7
	bne 0x8000c8fc
	lbz %r3, 4(%r4)
	subf %r0, %r8, %r3
	mtctr %r0
	cmpw %r8, %r3
	bge 0x8000c8fc
	add %r3, %r4, %r8
	lbz %r0, 5(%r3)
	cmpwi %r0, 0
	beq 0x8000c8f4
	li %r3, 1
	blr
	addi %r8, %r8, 1
	bdnz 0x8000c8dc
	li %r3, 0
	blr
	xor %r0, %r5, %r0
	srawi %r3, %r0, 1
	and %r0, %r0, %r5
	subf %r0, %r0, %r3
	srwi %r3, %r0, 0x1f
	blr
	stwu %r1, -0x40(%r1)
	lhz %r12, 0x1a(%r4)
	stmw %r19, 0xc(%r1)
	lhz %r19, 0(%r4)
	lhz %r20, 2(%r4)
	lhz %r21, 4(%r4)
	lhz %r22, 6(%r4)
	lhz %r23, 8(%r4)
	lhz %r24, 0xa(%r4)
	lhz %r25, 0xc(%r4)
	lhz %r26, 0xe(%r4)
	lhz %r27, 0x10(%r4)
	lhz %r28, 0x12(%r4)
	lhz %r29, 0x14(%r4)
	lhz %r30, 0x16(%r4)
	lhz %r31, 0x18(%r4)
	lhz %r11, 0x1c(%r4)
	lhz %r10, 0x1e(%r4)
	lhz %r9, 0x20(%r4)
	lhz %r8, 0x22(%r4)
	lhz %r7, 0x24(%r4)
	lhz %r6, 0x26(%r4)
	lhz %r0, 0x28(%r4)
	sth %r19, 0(%r3)
	sth %r20, 2(%r3)
	sth %r21, 4(%r3)
	sth %r22, 6(%r3)
	sth %r23, 8(%r3)
	sth %r24, 0xa(%r3)
	sth %r25, 0xc(%r3)
	sth %r26, 0xe(%r3)
	sth %r27, 0x10(%r3)
	sth %r28, 0x12(%r3)
	sth %r29, 0x14(%r3)
	sth %r30, 0x16(%r3)
	sth %r31, 0x18(%r3)
	sth %r12, 0x1a(%r3)
	sth %r11, 0x1c(%r3)
	sth %r10, 0x1e(%r3)
	sth %r9, 0x20(%r3)
	sth %r8, 0x22(%r3)
	sth %r7, 0x24(%r3)
	sth %r6, 0x26(%r3)
	sth %r0, 0x28(%r3)
	lbz %r0, 5(%r5)
	cmpwi %r0, 0
	beq 0x8000ce2c
	lbz %r8, 4(%r3)
	lbz %r0, 4(%r5)
	cmpw %r8, %r0
	bge 0x8000c9ec
	mr %r8, %r0
	lha %r4, 2(%r5)
	lha %r0, 2(%r3)
	subf %r0, %r4, %r0
	add %r8, %r8, %r0
	cmpwi %r8, 0x24
	ble 0x8000ca08
	li %r8, 0x24
	li %r7, 0
	b 0x8000ca24
	lbz %r6, 4(%r3)
	add %r4, %r3, %r6
	addi %r6, %r6, 1
	stb %r7, 5(%r4)
	stb %r6, 4(%r3)
	lbz %r4, 4(%r3)
	cmpw %r4, %r8
	blt 0x8000ca10
	lbz %r7, 4(%r5)
	addi %r4, %r3, 5
	add %r6, %r4, %r8
	add %r7, %r7, %r0
	cmpw %r7, %r8
	bge 0x8000ca4c
	add %r6, %r4, %r7
	subf %r7, %r4, %r6
	addi %r9, %r5, 5
	subf %r7, %r0, %r7
	add %r10, %r9, %r7
	mr %r11, %r10
	b 0x8000cb84
	lbzu %r8, -1(%r6)
	lbzu %r7, -1(%r10)
	cmplw %r8, %r7
	bge 0x8000cb74
	addi %r12, %r6, -1
	b 0x8000ca80
	addi %r12, %r12, -1
	lbz %r7, 0(%r12)
	cmpwi %r7, 0
	beq 0x8000ca7c
	cmplw %r12, %r6
	subf %r8, %r12, %r6
	beq 0x8000cb74
	rlwinm. %r7, %r8, 0x1d, 3, 0x1f
	mtctr %r7
	beq 0x8000cb54
	lbz %r7, 0(%r12)
	addi %r7, %r7, -1
	stb %r7, 0(%r12)
	lbz %r7, 1(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 1(%r12)
	lbz %r7, 2(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 2(%r12)
	lbz %r7, 3(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 3(%r12)
	lbz %r7, 4(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 4(%r12)
	lbz %r7, 5(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 5(%r12)
	lbz %r7, 6(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 6(%r12)
	lbz %r7, 7(%r12)
	addi %r7, %r7, 0xa
	clrlwi %r7, %r7, 0x18
	addi %r7, %r7, -1
	stb %r7, 7(%r12)
	lbz %r7, 8(%r12)
	addi %r7, %r7, 0xa
	stbu %r7, 8(%r12)
	bdnz 0x8000caa4
	andi. %r8, %r8, 7
	beq 0x8000cb74
	mtctr %r8
	lbz %r7, 0(%r12)
	addi %r7, %r7, -1
	stb %r7, 0(%r12)
	lbz %r7, 1(%r12)
	addi %r7, %r7, 0xa
	stbu %r7, 1(%r12)
	bdnz 0x8000cb58
	lbz %r8, 0(%r10)
	lbz %r7, 0(%r6)
	subf %r7, %r8, %r7
	stb %r7, 0(%r6)
	cmplw %r6, %r4
	ble 0x8000cb94
	cmplw %r10, %r9
	bgt 0x8000ca64
	lbz %r8, 4(%r5)
	subf %r9, %r9, %r11
	cmpw %r9, %r8
	bge 0x8000cd28
	lbz %r7, 0(%r11)
	li %r10, 0
	cmplwi %r7, 5
	bge 0x8000cbbc
	li %r10, 1
	b 0x8000cc08
	bne 0x8000cc08
	add %r5, %r5, %r8
	addi %r6, %r11, 1
	addi %r7, %r5, 5
	subf %r5, %r6, %r7
	mtctr %r5
	cmplw %r6, %r7
	bge 0x8000cbf0
	lbz %r5, 0(%r6)
	cmpwi %r5, 0
	bne 0x8000cd28
	addi %r6, %r6, 1
	bdnz 0x8000cbdc
	add %r5, %r4, %r9
	add %r6, %r0, %r5
	lbzu %r0, -1(%r6)
	clrlwi. %r0, %r0, 0x1f
	beq 0x8000cc08
	li %r10, 1
	cmpwi %r10, 0
	beq 0x8000cd28
	lbz %r0, 0(%r6)
	cmplwi %r0, 1
	bge 0x8000cd1c
	addi %r8, %r6, -1
	b 0x8000cc28
	addi %r8, %r8, -1
	lbz %r0, 0(%r8)
	cmpwi %r0, 0
	beq 0x8000cc24
	cmplw %r8, %r6
	subf %r5, %r8, %r6
	beq 0x8000cd1c
	rlwinm. %r0, %r5, 0x1d, 3, 0x1f
	mtctr %r0
	beq 0x8000ccfc
	lbz %r7, 0(%r8)
	addi %r0, %r7, -1
	stb %r0, 0(%r8)
	lbz %r7, 1(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 1(%r8)
	lbz %r7, 2(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 2(%r8)
	lbz %r7, 3(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 3(%r8)
	lbz %r7, 4(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 4(%r8)
	lbz %r7, 5(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 5(%r8)
	lbz %r7, 6(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 6(%r8)
	lbz %r7, 7(%r8)
	addi %r0, %r7, 0xa
	clrlwi %r7, %r0, 0x18
	addi %r0, %r7, -1
	stb %r0, 7(%r8)
	lbz %r7, 8(%r8)
	addi %r0, %r7, 0xa
	stbu %r0, 8(%r8)
	bdnz 0x8000cc4c
	andi. %r5, %r5, 7
	beq 0x8000cd1c
	mtctr %r5
	lbz %r7, 0(%r8)
	addi %r0, %r7, -1
	stb %r0, 0(%r8)
	lbz %r7, 1(%r8)
	addi %r0, %r7, 0xa
	stbu %r0, 1(%r8)
	bdnz 0x8000cd00
	lbz %r5, 0(%r6)
	addi %r0, %r5, -1
	stb %r0, 0(%r6)
	mr %r7, %r4
	b 0x8000cd34
	addi %r7, %r7, 1
	lbz %r0, 0(%r7)
	cmpwi %r0, 0
	beq 0x8000cd30
	cmplw %r7, %r4
	ble 0x8000cdf4
	lbz %r0, 4(%r3)
	subf %r6, %r4, %r7
	clrlwi %r8, %r6, 0x18
	lha %r5, 2(%r3)
	add %r6, %r4, %r0
	cmplw %r7, %r6
	subf %r0, %r8, %r5
	sth %r0, 2(%r3)
	subf %r5, %r7, %r6
	bge 0x8000cde8
	rlwinm. %r0, %r5, 0x1d, 3, 0x1f
	mtctr %r0
	beq 0x8000cdd0
	lbz %r0, 0(%r7)
	stb %r0, 0(%r4)
	lbz %r0, 1(%r7)
	stb %r0, 1(%r4)
	lbz %r0, 2(%r7)
	stb %r0, 2(%r4)
	lbz %r0, 3(%r7)
	stb %r0, 3(%r4)
	lbz %r0, 4(%r7)
	stb %r0, 4(%r4)
	lbz %r0, 5(%r7)
	stb %r0, 5(%r4)
	lbz %r0, 6(%r7)
	stb %r0, 6(%r4)
	lbz %r0, 7(%r7)
	addi %r7, %r7, 8
	stb %r0, 7(%r4)
	addi %r4, %r4, 8
	bdnz 0x8000cd7c
	andi. %r5, %r5, 7
	beq 0x8000cde8
	mtctr %r5
	lbz %r0, 0(%r7)
	addi %r7, %r7, 1
	stb %r0, 0(%r4)
	addi %r4, %r4, 1
	bdnz 0x8000cdd4
	lbz %r0, 4(%r3)
	subf %r0, %r8, %r0
	stb %r0, 4(%r3)
	lbz %r0, 4(%r3)
	addi %r4, %r3, 5
	add %r5, %r4, %r0
	subf %r0, %r4, %r5
	mtctr %r0
	cmplw %r5, %r4
	ble 0x8000ce20
	lbzu %r0, -1(%r5)
	cmpwi %r0, 0
	bne 0x8000ce20
	bdnz 0x8000ce10
	subf %r4, %r4, %r5
	addi %r0, %r4, 1
	stb %r0, 4(%r3)
	lmw %r19, 0xc(%r1)
	addi %r1, %r1, 0x40
	blr
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stfd %f31, 0x88(%r1)
	fmr %f31, %f1
	stw %r31, 0x84(%r1)
	stw %r30, 0x80(%r1)
	mr %r30, %r3
	stw %r29, 0x7c(%r1)
	bl 0x8000e404
	lfd %f0, -0x7f70(%r2)
	neg %r0, %r3
	or %r0, %r0, %r3
	fcmpu cr0, %f0, %f31
	srwi %r0, %r0, 0x1f
	extsb %r31, %r0
	bne 0x8000ce98
	li %r3, 0
	li %r0, 1
	stb %r31, 0(%r30)
	sth %r3, 2(%r30)
	stb %r0, 4(%r30)
	stb %r3, 5(%r30)
	b 0x8000cf7c
	fmr %f1, %f31
	bl 0x8000e41c
	cmpwi %r3, 2
	bgt 0x8000cedc
	fmr %f1, %f31
	li %r3, 0
	li %r0, 1
	stb %r31, 0(%r30)
	sth %r3, 2(%r30)
	stb %r0, 4(%r30)
	bl 0x8000e41c
	cmpwi %r3, 1
	li %r0, 0x49
	bne 0x8000ced4
	li %r0, 0x4e
	stb %r0, 5(%r30)
	b 0x8000cf7c
	cmpwi %r31, 0
	beq 0x8000cee8
	fneg %f31, %f31
	fmr %f1, %f31
	addi %r3, %r1, 8
	bl 0x8001ac48
	stfd %f1, 0x10(%r1)
	fmr %f31, %f1
	lwz %r4, 0x14(%r1)
	lwz %r3, 0x10(%r1)
	addi %r0, %r4, -1
	cmpwi %r4, 0
	andc %r0, %r0, %r4
	oris %r3, %r3, 0x10
	cntlz %r0, %r0
	subfic %r4, %r0, 0x20
	bne 0x8000cf34
	addi %r0, %r3, -1
	andc %r0, %r0, %r3
	cntlz %r0, %r0
	subfic %r3, %r0, 0x20
	addi %r4, %r3, 0x20
	lwz %r0, 8(%r1)
	subfic %r29, %r4, 0x35
	addi %r3, %r1, 0x18
	subf %r4, %r29, %r0
	bl 0x8000c3cc
	fmr %f1, %f31
	mr %r3, %r29
	bl 0x8001acd0
	bl 0x80020fa0
	mr %r5, %r3
	mr %r6, %r4
	addi %r3, %r1, 0x44
	bl 0x8000bf7c
	mr %r3, %r30
	addi %r4, %r1, 0x44
	addi %r5, %r1, 0x18
	bl 0x8000c058
	stb %r31, 0(%r30)
	lwz %r0, 0x94(%r1)
	lfd %f31, 0x88(%r1)
	lwz %r31, 0x84(%r1)
	lwz %r30, 0x80(%r1)
	lwz %r29, 0x7c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lha %r31, 2(%r3)
	stw %r30, 8(%r1)
	mr %r30, %r4
	mr %r3, %r30
	bl 0x8000ce38
	lbz %r0, 5(%r30)
	cmplwi %r0, 9
	bgt 0x8000d124
	cmpwi %r31, 0x24
	ble 0x8000cfd8
	li %r31, 0x24
	cmpwi %r31, 0
	ble 0x8000d0c4
	lbz %r0, 4(%r30)
	cmpw %r31, %r0
	bge 0x8000d0c4
	addi %r4, %r30, 5
	lbzx %r0, %r4, %r31
	add %r3, %r4, %r31
	cmplwi %r0, 5
	ble 0x8000d008
	li %r4, 1
	b 0x8000d064
	bge 0x8000d014
	li %r4, -1
	b 0x8000d064
	lbz %r0, 4(%r30)
	addi %r3, %r3, 1
	add %r4, %r4, %r0
	subf %r0, %r3, %r4
	mtctr %r0
	cmplw %r3, %r4
	bge 0x8000d04c
	lbz %r0, 0(%r3)
	cmpwi %r0, 0
	beq 0x8000d044
	li %r4, 1
	b 0x8000d064
	addi %r3, %r3, 1
	bdnz 0x8000d030
	add %r3, %r31, %r30
	li %r4, -1
	lbz %r0, 4(%r3)
	clrlwi. %r0, %r0, 0x1f
	beq 0x8000d064
	li %r4, 1
	cmpwi %r4, 0
	stb %r31, 4(%r30)
	blt 0x8000d0c4
	addi %r4, %r30, 5
	li %r0, 0
	add %r5, %r4, %r31
	addi %r5, %r5, -1
	lbz %r3, 0(%r5)
	cmplwi %r3, 9
	bge 0x8000d098
	addi %r0, %r3, 1
	stb %r0, 0(%r5)
	b 0x8000d0c4
	cmplw %r5, %r4
	bne 0x8000d0b8
	li %r0, 1
	stb %r0, 0(%r5)
	lha %r3, 2(%r30)
	addi %r0, %r3, 1
	sth %r0, 2(%r30)
	b 0x8000d0c4
	stb %r0, 0(%r5)
	addi %r5, %r5, -1
	b 0x8000d080
	li %r5, 0
	b 0x8000d0e0
	lbz %r4, 4(%r30)
	add %r3, %r30, %r4
	addi %r0, %r4, 1
	stb %r5, 5(%r3)
	stb %r0, 4(%r30)
	lbz %r3, 4(%r30)
	cmpw %r3, %r31
	blt 0x8000d0cc
	lha %r0, 2(%r30)
	addi %r3, %r3, -1
	li %r5, 0
	subf %r0, %r3, %r0
	sth %r0, 2(%r30)
	b 0x8000d118
	add %r4, %r30, %r5
	addi %r5, %r5, 1
	lbz %r3, 5(%r4)
	addi %r0, %r3, 0x30
	stb %r0, 5(%r4)
	lbz %r0, 4(%r30)
	cmpw %r5, %r0
	blt 0x8000d104
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x180(%r1)
	mflr %r0
	stw %r0, 0x184(%r1)
	stfd %f31, 0x170(%r1)
	xxsel vs31, vs1, vs0, vs37
	addi %r11, %r1, 0x170
	bl 0x80020a20
	lbz %r0, 4(%r3)
	lis %r4, 0x4330
	stw %r4, 0x128(%r1)
	mr %r27, %r3
	cmpwi %r0, 0
	stw %r4, 0x130(%r1)
	bne 0x8000d198
	lbz %r0, 0(%r3)
	extsb. %r0, %r0
	bne 0x8000d188
	lfd %f2, -0x7f68(%r2)
	b 0x8000d18c
	lfd %f2, -0x7f60(%r2)
	lfd %f1, -0x7f70(%r2)
	bl 0x8001aa04
	b 0x8000d8b4
	lbz %r0, 5(%r3)
	cmpwi %r0, 0x30
	beq 0x8000d1b8
	cmpwi %r0, 0x49
	beq 0x8000d1dc
	cmpwi %r0, 0x4e
	beq 0x8000d204
	b 0x8000d244
	lbz %r0, 0(%r3)
	extsb. %r0, %r0
	bne 0x8000d1cc
	lfd %f2, -0x7f68(%r2)
	b 0x8000d1d0
	lfd %f2, -0x7f60(%r2)
	lfd %f1, -0x7f70(%r2)
	bl 0x8001aa04
	b 0x8000d8b4
	lbz %r0, 0(%r3)
	extsb. %r0, %r0
	bne 0x8000d1f0
	lfd %f2, -0x7f68(%r2)
	b 0x8000d1f4
	lfd %f2, -0x7f60(%r2)
	lis %r3, -0x7fc8
	lfs %f1, 0x89c(%r3)
	bl 0x8001aa04
	b 0x8000d8b4
	lbz %r0, 0(%r3)
	li %r4, 0
	lis %r3, 0x7ff0
	stw %r4, 0x1c(%r1)
	extsb. %r0, %r0
	stw %r3, 0x18(%r1)
	beq 0x8000d230
	lis %r0, -0x8000
	stw %r4, 0x1c(%r1)
	oris %r0, %r0, 0x7ff0
	stw %r0, 0x18(%r1)
	lwz %r0, 0x18(%r1)
	oris %r0, %r0, 8
	stw %r0, 0x18(%r1)
	lfd %f1, 0x18(%r1)
	b 0x8000d8b4
	lhz %r0, 4(%r3)
	addi %r4, %r1, 0x101
	sth %r0, 0x100(%r1)
	lhz %r19, 0(%r3)
	lbz %r0, 0x100(%r1)
	lhz %r20, 2(%r3)
	add %r28, %r4, %r0
	lhz %r31, 6(%r3)
	lhz %r30, 8(%r3)
	cmplw cr1, %r4, %r28
	lhz %r29, 0xa(%r3)
	lhz %r26, 0xc(%r3)
	lhz %r25, 0xe(%r3)
	lhz %r24, 0x10(%r3)
	lhz %r23, 0x12(%r3)
	lhz %r22, 0x14(%r3)
	lhz %r21, 0x16(%r3)
	lhz %r12, 0x18(%r3)
	lhz %r11, 0x1a(%r3)
	lhz %r10, 0x1c(%r3)
	lhz %r9, 0x1e(%r3)
	lhz %r8, 0x20(%r3)
	lhz %r7, 0x22(%r3)
	lhz %r6, 0x24(%r3)
	lhz %r5, 0x26(%r3)
	lhz %r0, 0x28(%r3)
	sth %r19, 0xfc(%r1)
	sth %r20, 0xfe(%r1)
	sth %r31, 0x102(%r1)
	sth %r30, 0x104(%r1)
	sth %r29, 0x106(%r1)
	sth %r26, 0x108(%r1)
	sth %r25, 0x10a(%r1)
	sth %r24, 0x10c(%r1)
	sth %r23, 0x10e(%r1)
	sth %r22, 0x110(%r1)
	sth %r21, 0x112(%r1)
	sth %r12, 0x114(%r1)
	sth %r11, 0x116(%r1)
	sth %r10, 0x118(%r1)
	sth %r9, 0x11a(%r1)
	sth %r8, 0x11c(%r1)
	sth %r7, 0x11e(%r1)
	sth %r6, 0x120(%r1)
	sth %r5, 0x122(%r1)
	sth %r0, 0x124(%r1)
	bge cr1, 0x8000d3b8
	subf %r0, %r4, %r28
	addi %r3, %r28, -8
	cmpwi %r0, 8
	ble 0x8000d394
	bgt cr1, 0x8000d394
	addi %r0, %r3, 7
	subf %r0, %r4, %r0
	srwi %r0, %r0, 3
	mtctr %r0
	cmplw %r4, %r3
	bge 0x8000d394
	lbz %r3, 0(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 0(%r4)
	lbz %r3, 1(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 1(%r4)
	lbz %r3, 2(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 2(%r4)
	lbz %r3, 3(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 3(%r4)
	lbz %r3, 4(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 4(%r4)
	lbz %r3, 5(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 5(%r4)
	lbz %r3, 6(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 6(%r4)
	lbz %r3, 7(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 7(%r4)
	addi %r4, %r4, 8
	bdnz 0x8000d32c
	subf %r0, %r4, %r28
	mtctr %r0
	cmplw %r4, %r28
	bge 0x8000d3b8
	lbz %r3, 0(%r4)
	addi %r0, %r3, -0x30
	stb %r0, 0(%r4)
	addi %r4, %r4, 1
	bdnz 0x8000d3a4
	lha %r6, 0xfe(%r1)
	lis %r4, -0x7fdc
	lbz %r0, 0x100(%r1)
	addi %r4, %r4, 0x5d28
	addi %r3, %r1, 0xd0
	li %r5, 0x134
	add %r6, %r0, %r6
	addi %r4, %r4, 0xb8
	addi %r0, %r6, -1
	sth %r0, 0xfe(%r1)
	extsh %r29, %r0
	bl 0x8000c2e0
	addi %r3, %r1, 0xd0
	addi %r4, %r1, 0xfc
	bl 0x8000c81c
	cmpwi %r3, 0
	beq 0x8000d424
	lbz %r0, 0(%r27)
	extsb. %r0, %r0
	bne 0x8000d410
	lfd %f2, -0x7f68(%r2)
	b 0x8000d414
	lfd %f2, -0x7f60(%r2)
	lis %r3, -0x7fc8
	lfs %f1, 0x89c(%r3)
	bl 0x8001aa04
	b 0x8000d8b4
	lbz %r0, 0x101(%r1)
	lis %r7, -0x7fd9
	stw %r0, 0x12c(%r1)
	addi %r4, %r1, 0x102
	lfd %f2, -0x7f48(%r2)
	addi %r7, %r7, -0x33e8
	lfd %f0, 0x128(%r1)
	lis %r3, -0x8000
	fsub %f31, %f0, %f2
	b 0x8000d588
	subf %r5, %r4, %r28
	li %r10, 0
	slwi %r0, %r5, 0x1d
	srwi %r5, %r5, 0x1f
	subf %r0, %r5, %r0
	rotlwi %r0, %r0, 3
	add. %r6, %r0, %r5
	bne 0x8000d470
	li %r6, 8
	cmpwi cr1, %r6, 0
	li %r5, 0
	ble cr1, 0x8000d550
	cmpwi %r6, 8
	addi %r8, %r6, -8
	ble 0x8000d528
	li %r9, 0
	blt cr1, 0x8000d4a0
	addi %r0, %r3, -2
	cmpw %r6, %r0
	bgt 0x8000d4a0
	li %r9, 1
	cmpwi %r9, 0
	beq 0x8000d528
	addi %r0, %r8, 7
	srwi %r0, %r0, 3
	mtctr %r0
	cmpwi %r8, 0
	ble 0x8000d528
	mulli %r0, %r10, 0xa
	lbz %r9, 0(%r4)
	lbz %r8, 1(%r4)
	addi %r5, %r5, 8
	lbz %r21, 2(%r4)
	add %r0, %r9, %r0
	mulli %r0, %r0, 0xa
	lbz %r12, 3(%r4)
	lbz %r11, 4(%r4)
	lbz %r10, 5(%r4)
	add %r0, %r8, %r0
	lbz %r9, 6(%r4)
	mulli %r0, %r0, 0xa
	lbz %r8, 7(%r4)
	addi %r4, %r4, 8
	add %r0, %r21, %r0
	mulli %r0, %r0, 0xa
	add %r0, %r12, %r0
	mulli %r0, %r0, 0xa
	add %r0, %r11, %r0
	mulli %r0, %r0, 0xa
	add %r0, %r10, %r0
	mulli %r0, %r0, 0xa
	add %r0, %r9, %r0
	mulli %r0, %r0, 0xa
	add %r10, %r8, %r0
	bdnz 0x8000d4bc
	subf %r0, %r5, %r6
	mtctr %r0
	cmpw %r5, %r6
	bge 0x8000d550
	mulli %r0, %r10, 0xa
	lbz %r8, 0(%r4)
	addi %r5, %r5, 1
	addi %r4, %r4, 1
	add %r10, %r8, %r0
	bdnz 0x8000d538
	slwi %r0, %r6, 3
	stw %r10, 0x134(%r1)
	add %r5, %r7, %r0
	cmpwi %r10, 0
	lfd %f1, -8(%r5)
	lfd %f0, 0x130(%r1)
	fmul %f1, %f31, %f1
	fsub %f0, %f0, %f2
	fadd %f0, %f1, %f0
	beq 0x8000d580
	fcmpu cr0, %f1, %f0
	beq 0x8000d590
	fmr %f31, %f0
	subf %r29, %r6, %r29
	cmplw %r4, %r28
	blt 0x8000d44c
	cmpwi %r29, 0
	bge 0x8000d5c0
	neg %r0, %r29
	lfd %f2, -0x7f40(%r2)
	xoris %r0, %r0, 0x8000
	stw %r0, 0x12c(%r1)
	lfd %f1, -0x7f58(%r2)
	lfd %f0, 0x128(%r1)
	fsub %f2, %f0, %f2
	bl 0x8001b090
	fdiv %f31, %f31, %f1
	b 0x8000d5e0
	xoris %r0, %r29, 0x8000
	stw %r0, 0x134(%r1)
	lfd %f2, -0x7f40(%r2)
	lfd %f0, 0x130(%r1)
	lfd %f1, -0x7f58(%r2)
	fsub %f2, %f0, %f2
	bl 0x8001b090
	fmul %f31, %f31, %f1
	fmr %f1, %f31
	mr %r3, %r29
	bl 0x8001acd0
	fmr %f31, %f1
	stfd %f1, 0x10(%r1)
	bl 0x8000e41c
	cmpwi %r3, 2
	bne 0x8000d608
	lfd %f31, -0x7f50(%r2)
	stfd %f31, 0x10(%r1)
	fmr %f1, %f31
	addi %r3, %r1, 0xa4
	li %r27, 0
	bl 0x8000ce38
	addi %r3, %r1, 0xa4
	addi %r4, %r1, 0xfc
	bl 0x8000c738
	cmpwi %r3, 0
	bne 0x8000d8a0
	addi %r3, %r1, 0xa4
	addi %r4, %r1, 0xfc
	bl 0x8000c81c
	cmpwi %r3, 0
	beq 0x8000d644
	li %r27, 1
	cntlz %r0, %r27
	stfd %f31, 8(%r1)
	srwi %r28, %r0, 5
	li %r29, 1
	li %r30, 0
	li %r31, -1
	cmpwi %r28, 0
	bne 0x8000d690
	lwz %r0, 0xc(%r1)
	lwz %r3, 8(%r1)
	addc %r0, %r0, %r29
	stw %r0, 0xc(%r1)
	adde %r0, %r3, %r30
	stw %r0, 8(%r1)
	lfd %f1, 8(%r1)
	bl 0x8000e41c
	cmpwi %r3, 2
	beq 0x8000d8a0
	b 0x8000d6a8
	lwz %r0, 0xc(%r1)
	lwz %r3, 8(%r1)
	addc %r0, %r0, %r31
	stw %r0, 0xc(%r1)
	adde %r0, %r3, %r31
	stw %r0, 8(%r1)
	lfd %f1, 8(%r1)
	addi %r3, %r1, 0x78
	bl 0x8000ce38
	cmpwi %r27, 0
	beq 0x8000d6d0
	addi %r3, %r1, 0x78
	addi %r4, %r1, 0xfc
	bl 0x8000c81c
	cmpwi %r3, 0
	beq 0x8000d840
	cmpwi %r27, 0
	bne 0x8000d7dc
	addi %r3, %r1, 0xfc
	addi %r4, %r1, 0x78
	bl 0x8000c81c
	cmpwi %r3, 0
	bne 0x8000d7dc
	fmr %f0, %f31
	lfd %f31, 8(%r1)
	lwz %r21, 0xa4(%r1)
	lwz %r12, 0x78(%r1)
	lwz %r22, 0xa8(%r1)
	lwz %r11, 0x7c(%r1)
	lwz %r23, 0xac(%r1)
	lwz %r10, 0x80(%r1)
	lwz %r24, 0xb0(%r1)
	lwz %r9, 0x84(%r1)
	lwz %r25, 0xb4(%r1)
	lwz %r8, 0x88(%r1)
	lwz %r26, 0xb8(%r1)
	lwz %r7, 0x8c(%r1)
	lwz %r31, 0xbc(%r1)
	lwz %r6, 0x90(%r1)
	lwz %r30, 0xc0(%r1)
	lwz %r5, 0x94(%r1)
	lwz %r29, 0xc4(%r1)
	lwz %r4, 0x98(%r1)
	lwz %r28, 0xc8(%r1)
	lwz %r3, 0x9c(%r1)
	lhz %r27, 0xcc(%r1)
	lhz %r0, 0xa0(%r1)
	stw %r21, 0x4c(%r1)
	stw %r22, 0x50(%r1)
	stw %r23, 0x54(%r1)
	stw %r24, 0x58(%r1)
	stw %r25, 0x5c(%r1)
	stw %r26, 0x60(%r1)
	stw %r31, 0x64(%r1)
	stw %r30, 0x68(%r1)
	stw %r29, 0x6c(%r1)
	stw %r28, 0x70(%r1)
	sth %r27, 0x74(%r1)
	stw %r12, 0xa4(%r1)
	stw %r11, 0xa8(%r1)
	stw %r10, 0xac(%r1)
	stw %r9, 0xb0(%r1)
	stw %r8, 0xb4(%r1)
	stw %r7, 0xb8(%r1)
	stw %r6, 0xbc(%r1)
	stw %r5, 0xc0(%r1)
	stw %r4, 0xc4(%r1)
	stw %r3, 0xc8(%r1)
	sth %r0, 0xcc(%r1)
	stw %r21, 0x78(%r1)
	stw %r22, 0x7c(%r1)
	stw %r23, 0x80(%r1)
	stw %r24, 0x84(%r1)
	stw %r25, 0x88(%r1)
	stw %r26, 0x8c(%r1)
	stw %r31, 0x90(%r1)
	stw %r30, 0x94(%r1)
	stw %r29, 0x98(%r1)
	stw %r28, 0x9c(%r1)
	sth %r27, 0xa0(%r1)
	stfd %f31, 0x10(%r1)
	stfd %f0, 8(%r1)
	b 0x8000d840
	lwz %r12, 0x78(%r1)
	lwz %r11, 0x7c(%r1)
	lwz %r10, 0x80(%r1)
	lwz %r9, 0x84(%r1)
	lwz %r8, 0x88(%r1)
	lwz %r7, 0x8c(%r1)
	lwz %r6, 0x90(%r1)
	lwz %r5, 0x94(%r1)
	lwz %r4, 0x98(%r1)
	lwz %r3, 0x9c(%r1)
	lhz %r0, 0xa0(%r1)
	lfd %f31, 8(%r1)
	stw %r12, 0xa4(%r1)
	stw %r11, 0xa8(%r1)
	stw %r10, 0xac(%r1)
	stw %r9, 0xb0(%r1)
	stw %r8, 0xb4(%r1)
	stw %r7, 0xb8(%r1)
	stw %r6, 0xbc(%r1)
	stw %r5, 0xc0(%r1)
	stw %r4, 0xc4(%r1)
	stw %r3, 0xc8(%r1)
	sth %r0, 0xcc(%r1)
	stfd %f31, 0x10(%r1)
	b 0x8000d65c
	addi %r3, %r1, 0x4c
	addi %r4, %r1, 0xfc
	addi %r5, %r1, 0xa4
	bl 0x8000c91c
	addi %r3, %r1, 0x20
	addi %r4, %r1, 0x78
	addi %r5, %r1, 0xfc
	bl 0x8000c91c
	addi %r3, %r1, 0x4c
	addi %r4, %r1, 0x20
	bl 0x8000c738
	cmpwi %r3, 0
	beq 0x8000d888
	lwz %r0, 0x14(%r1)
	clrlwi. %r0, %r0, 0x1f
	beq 0x8000d8a0
	lfd %f31, 8(%r1)
	b 0x8000d8a0
	addi %r3, %r1, 0x4c
	addi %r4, %r1, 0x20
	bl 0x8000c81c
	cmpwi %r3, 0
	bne 0x8000d8a0
	lfd %f31, 8(%r1)
	lbz %r0, 0xfc(%r1)
	extsb. %r0, %r0
	beq 0x8000d8b0
	fneg %f31, %f31
	fmr %f1, %f31
	invalid
	addi %r11, %r1, 0x170
	lfd %f31, 0x170(%r1)
	bl 0x80020a6c
	lwz %r0, 0x184(%r1)
	mtlr %r0
	addi %r1, %r1, 0x180
	blr
	lwz %r4, 0x18(%r3)
	lwz %r0, 0x2c(%r3)
	lwz %r6, 0x1c(%r3)
	lwz %r5, 0x20(%r3)
	and %r0, %r4, %r0
	stw %r6, 0x24(%r3)
	subf %r0, %r0, %r5
	stw %r0, 0x28(%r3)
	stw %r4, 0x34(%r3)
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r5, 1
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 8(%r1)
	mr %r30, %r4
	lwz %r6, 0x18(%r3)
	lwz %r0, 0x2c(%r3)
	lwz %r5, 0x1c(%r3)
	lwz %r4, 0x20(%r3)
	and %r0, %r6, %r0
	stw %r5, 0x24(%r3)
	subf %r0, %r0, %r4
	stw %r0, 0x28(%r3)
	stw %r6, 0x34(%r3)
	bne 0x8000d948
	stw %r4, 0x28(%r3)
	lwz %r12, 0x3c(%r31)
	addi %r5, %r31, 0x28
	lwz %r3, 0(%r3)
	lwz %r4, 0x1c(%r31)
	lwz %r6, 0x48(%r31)
	mtctr %r12
	bctrl
	cmpwi %r3, 2
	bne 0x8000d974
	li %r0, 0
	stw %r0, 0x28(%r31)
	cmpwi %r30, 0
	beq 0x8000d984
	lwz %r0, 0x28(%r31)
	stw %r0, 0(%r30)
	cmpwi %r3, 0
	beq 0x8000d990
	b 0x8000d9e0
	lwz %r0, 4(%r31)
	lwz %r4, 0x18(%r31)
	rlwinm. %r0, %r0, 0xd, 0x1f, 0x1f
	lwz %r3, 0x28(%r31)
	add %r0, %r4, %r3
	stw %r0, 0x18(%r31)
	bne 0x8000d9dc
	lwz %r4, 0x1c(%r31)
	mtctr %r3
	cmpwi %r3, 0
	beq 0x8000d9dc
	lbz %r0, 0(%r4)
	addi %r4, %r4, 1
	cmplwi %r0, 0xa
	bne 0x8000d9d8
	lwz %r3, 0x18(%r31)
	addi %r0, %r3, 1
	stw %r0, 0x18(%r31)
	bdnz 0x8000d9bc
	li %r3, 0
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	lwz %r5, 0x1c(%r3)
	lwz %r0, 0x24(%r3)
	subf. %r0, %r5, %r0
	beq 0x8000da70
	lwz %r12, 0x40(%r30)
	mr %r4, %r5
	stw %r0, 0x28(%r3)
	addi %r5, %r30, 0x28
	lwz %r3, 0(%r3)
	lwz %r6, 0x48(%r30)
	mtctr %r12
	bctrl
	cmpwi %r31, 0
	beq 0x8000da54
	lwz %r0, 0x28(%r30)
	stw %r0, 0(%r31)
	cmpwi %r3, 0
	beq 0x8000da60
	b 0x8000da98
	lwz %r3, 0x18(%r30)
	lwz %r0, 0x28(%r30)
	add %r0, %r3, %r0
	stw %r0, 0x18(%r30)
	lwz %r4, 0x18(%r30)
	li %r3, 0
	lwz %r0, 0x2c(%r30)
	lwz %r6, 0x1c(%r30)
	lwz %r5, 0x20(%r30)
	and %r0, %r4, %r0
	stw %r6, 0x24(%r30)
	subf %r0, %r0, %r5
	stw %r0, 0x28(%r30)
	stw %r4, 0x34(%r30)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	b 0x8000dab4
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	stmw %r25, 0x14(%r1)
	mr %r27, %r4
	mr %r28, %r6
	mr %r26, %r3
	mr %r25, %r5
	li %r4, 0
	mr %r3, %r28
	bl 0x80014a78
	cmpwi %r3, 0
	bne 0x8000daf4
	mr %r3, %r28
	li %r4, -1
	bl 0x80014a78
	mullw. %r30, %r27, %r25
	beq 0x8000db14
	lbz %r0, 0xa(%r28)
	cmpwi %r0, 0
	bne 0x8000db14
	lwz %r3, 4(%r28)
	rlwinm. %r0, %r3, 0xa, 0x1d, 0x1f
	bne 0x8000db1c
	li %r3, 0
	b 0x8000dde0
	rlwinm. %r0, %r3, 0xd, 0x1f, 0x1f
	li %r31, 1
	beq 0x8000db38
	rlwinm %r0, %r3, 7, 0x1e, 0x1f
	cmplwi %r0, 2
	beq 0x8000db38
	li %r31, 0
	lwz %r3, 8(%r28)
	rlwinm. %r0, %r3, 3, 0x1d, 0x1f
	bne 0x8000db64
	lwz %r0, 4(%r28)
	rlwinm. %r0, %r0, 5, 0x1f, 0x1f
	beq 0x8000db64
	li %r0, 2
	rlwimi %r3, %r0, 0x1d, 0, 2
	stw %r3, 8(%r28)
	li %r0, 0
	stw %r0, 0x28(%r28)
	lwz %r0, 8(%r28)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 2
	bge 0x8000db8c
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	li %r3, 0
	stw %r0, 0x28(%r28)
	b 0x8000dde0
	lwz %r0, 4(%r28)
	rlwinm. %r0, %r0, 7, 0x1f, 0x1f
	beq 0x8000dbbc
	bl 0x8000be8c
	cmpwi %r3, 0
	beq 0x8000dbbc
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	li %r3, 0
	stw %r0, 0x28(%r28)
	b 0x8000dde0
	cmpwi %r30, 0
	li %r29, 0
	beq 0x8000dc70
	lwz %r0, 8(%r28)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 3
	blt 0x8000dc70
	mr %r3, %r28
	li %r4, 0
	bl 0x80014a78
	cmpwi %r3, 1
	bne 0x8000dc10
	lwz %r0, 8(%r28)
	addi %r29, %r29, 2
	addi %r30, %r30, -2
	rlwinm %r0, %r0, 4, 0x1c, 0x1e
	add %r3, %r28, %r0
	lhz %r0, 0xc(%r3)
	sth %r0, 0(%r26)
	addi %r26, %r26, 2
	b 0x8000dc30
	lwz %r0, 8(%r28)
	addi %r29, %r29, 1
	addi %r30, %r30, -1
	srwi %r0, %r0, 0x1d
	add %r3, %r28, %r0
	lbz %r0, 0xc(%r3)
	stb %r0, 0(%r26)
	addi %r26, %r26, 1
	lwz %r4, 8(%r28)
	cmpwi %r30, 0
	srwi %r3, %r4, 0x1d
	addi %r0, %r3, -1
	rlwimi %r4, %r0, 0x1d, 0, 2
	stw %r4, 8(%r28)
	beq 0x8000dc58
	srwi %r0, %r4, 0x1d
	cmplwi %r0, 3
	bge 0x8000dbd8
	lwz %r0, 8(%r28)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 2
	bne 0x8000dc70
	lwz %r0, 0x30(%r28)
	stw %r0, 0x28(%r28)
	cmpwi %r30, 0
	beq 0x8000dd4c
	lwz %r0, 0x28(%r28)
	cmpwi %r0, 0
	bne 0x8000dc8c
	cmpwi %r31, 0
	beq 0x8000dd4c
	lwz %r0, 0x28(%r28)
	cmpwi %r0, 0
	bne 0x8000dcf0
	mr %r3, %r28
	li %r4, 0
	li %r5, 0
	bl 0x8000d8fc
	cmpwi %r3, 0
	beq 0x8000dcf0
	cmpwi %r3, 1
	bne 0x8000dccc
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	stw %r0, 0x28(%r28)
	b 0x8000dce8
	lwz %r3, 8(%r28)
	li %r0, 0
	stw %r0, 0x28(%r28)
	li %r0, 1
	clrlwi %r3, %r3, 3
	stw %r3, 8(%r28)
	stb %r0, 9(%r28)
	li %r30, 0
	b 0x8000dd4c
	lwz %r5, 0x28(%r28)
	stw %r5, 8(%r1)
	cmplw %r5, %r30
	ble 0x8000dd08
	mr %r5, %r30
	stw %r30, 8(%r1)
	lwz %r4, 0x24(%r28)
	mr %r3, %r26
	bl 0x80005f34
	lwz %r4, 8(%r1)
	lwz %r3, 0x24(%r28)
	lwz %r0, 0x28(%r28)
	subf. %r30, %r4, %r30
	add %r3, %r3, %r4
	stw %r3, 0x24(%r28)
	add %r26, %r26, %r4
	add %r29, %r29, %r4
	lwz %r3, 8(%r1)
	subf %r0, %r3, %r0
	stw %r0, 0x28(%r28)
	beq 0x8000dd4c
	cmpwi %r31, 0
	bne 0x8000dc8c
	cmpwi %r30, 0
	beq 0x8000dddc
	cmpwi %r31, 0
	bne 0x8000dddc
	lwz %r31, 0x1c(%r28)
	mr %r3, %r28
	lwz %r25, 0x20(%r28)
	addi %r4, %r1, 8
	stw %r26, 0x1c(%r28)
	li %r5, 1
	stw %r30, 0x20(%r28)
	bl 0x8000d8fc
	cmpwi %r3, 0
	beq 0x8000ddbc
	cmpwi %r3, 1
	bne 0x8000dda0
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	stw %r0, 0x28(%r28)
	b 0x8000ddbc
	lwz %r3, 8(%r28)
	li %r0, 0
	stw %r0, 0x28(%r28)
	li %r0, 1
	clrlwi %r3, %r3, 3
	stw %r3, 8(%r28)
	stb %r0, 9(%r28)
	lwz %r0, 8(%r1)
	mr %r3, %r28
	stw %r31, 0x1c(%r28)
	add %r29, %r29, %r0
	stw %r25, 0x20(%r28)
	bl 0x8000d8d4
	li %r0, 0
	stw %r0, 0x28(%r28)
	divwu %r3, %r29, %r27
	lmw %r25, 0x14(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	stmw %r25, 0x14(%r1)
	mr %r27, %r4
	mr %r28, %r6
	mr %r26, %r3
	mr %r25, %r5
	li %r4, 0
	mr %r3, %r28
	bl 0x80014a78
	cmpwi %r3, 0
	bne 0x8000de34
	mr %r3, %r28
	li %r4, -1
	bl 0x80014a78
	mullw. %r30, %r27, %r25
	beq 0x8000de54
	lbz %r0, 0xa(%r28)
	cmpwi %r0, 0
	bne 0x8000de54
	lwz %r0, 4(%r28)
	rlwinm. %r0, %r0, 0xa, 0x1d, 0x1f
	bne 0x8000de5c
	li %r3, 0
	b 0x8000e0e8
	cmplwi %r0, 2
	bne 0x8000de68
	bl 0x8000ead0
	lwz %r3, 4(%r28)
	li %r31, 1
	li %r4, 0
	rlwinm. %r0, %r3, 0xd, 0x1f, 0x1f
	beq 0x8000de88
	rlwinm %r0, %r3, 7, 0x1e, 0x1f
	cmplwi %r0, 2
	bne 0x8000de8c
	li %r4, 1
	cmpwi %r4, 0
	bne 0x8000dea8
	lwz %r0, 4(%r28)
	rlwinm %r0, %r0, 7, 0x1e, 0x1f
	cmplwi %r0, 1
	beq 0x8000dea8
	li %r31, 0
	lwz %r0, 8(%r28)
	rlwinm. %r0, %r0, 3, 0x1d, 0x1f
	bne 0x8000df04
	lwz %r3, 4(%r28)
	rlwinm. %r0, %r3, 5, 0x1e, 0x1e
	rlwinm %r0, %r3, 5, 0x1d, 0x1f
	beq 0x8000df04
	rlwinm. %r0, %r0, 0, 0x1d, 0x1d
	beq 0x8000deec
	mr %r3, %r28
	li %r4, 0
	li %r5, 2
	bl 0x8000b6c0
	cmpwi %r3, 0
	beq 0x8000deec
	li %r3, 0
	b 0x8000e0e8
	lwz %r0, 8(%r28)
	li %r3, 1
	rlwimi %r0, %r3, 0x1d, 0, 2
	stw %r0, 8(%r28)
	mr %r3, %r28
	bl 0x8000d8d4
	lwz %r0, 8(%r28)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 1
	beq 0x8000df2c
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	li %r3, 0
	stw %r0, 0x28(%r28)
	b 0x8000e0e8
	cmpwi %r30, 0
	li %r29, 0
	beq 0x8000e05c
	lwz %r3, 0x1c(%r28)
	lwz %r4, 0x24(%r28)
	cmplw %r4, %r3
	bne 0x8000df50
	cmpwi %r31, 0
	beq 0x8000e05c
	lwz %r0, 0x20(%r28)
	subf %r3, %r3, %r4
	subf %r0, %r3, %r0
	stw %r0, 0x28(%r28)
	lwz %r5, 0x28(%r28)
	li %r25, 0
	stw %r5, 8(%r1)
	cmplw %r5, %r30
	ble 0x8000df7c
	mr %r5, %r30
	stw %r30, 8(%r1)
	lwz %r0, 4(%r28)
	rlwinm %r0, %r0, 7, 0x1e, 0x1f
	cmplwi %r0, 1
	bne 0x8000dfb8
	cmpwi %r5, 0
	beq 0x8000dfb8
	mr %r3, %r26
	li %r4, 0xa
	bl 0x8000e788
	cmpwi %r3, 0
	mr %r25, %r3
	beq 0x8000dfb8
	addi %r0, %r3, 1
	subf %r5, %r26, %r0
	stw %r5, 8(%r1)
	lwz %r5, 8(%r1)
	cmpwi %r5, 0
	beq 0x8000dff8
	lwz %r3, 0x24(%r28)
	mr %r4, %r26
	bl 0x80005f34
	lwz %r4, 8(%r1)
	lwz %r3, 0x24(%r28)
	lwz %r0, 0x28(%r28)
	add %r26, %r26, %r4
	add %r3, %r3, %r4
	stw %r3, 0x24(%r28)
	subf %r30, %r4, %r30
	lwz %r3, 8(%r1)
	subf %r0, %r3, %r0
	stw %r0, 0x28(%r28)
	lwz %r0, 0x28(%r28)
	cmpwi %r0, 0
	beq 0x8000e018
	cmpwi %r25, 0
	bne 0x8000e018
	lwz %r0, 4(%r28)
	rlwinm. %r0, %r0, 7, 0x1e, 0x1f
	bne 0x8000e044
	mr %r3, %r28
	li %r4, 0
	bl 0x8000d9f8
	cmpwi %r3, 0
	beq 0x8000e044
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	li %r30, 0
	stw %r0, 0x28(%r28)
	b 0x8000e05c
	lwz %r0, 8(%r1)
	cmpwi %r30, 0
	add %r29, %r29, %r0
	beq 0x8000e05c
	cmpwi %r31, 0
	bne 0x8000df60
	cmpwi %r30, 0
	beq 0x8000e0cc
	cmpwi %r31, 0
	bne 0x8000e0cc
	lwz %r25, 0x1c(%r28)
	add %r0, %r26, %r30
	lwz %r31, 0x20(%r28)
	mr %r3, %r28
	stw %r26, 0x1c(%r28)
	addi %r4, %r1, 8
	stw %r30, 0x20(%r28)
	stw %r0, 0x24(%r28)
	bl 0x8000d9f8
	cmpwi %r3, 0
	beq 0x8000e0ac
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r28)
	stw %r0, 0x28(%r28)
	b 0x8000e0b4
	lwz %r0, 8(%r1)
	add %r29, %r29, %r0
	stw %r25, 0x1c(%r28)
	mr %r3, %r28
	stw %r31, 0x20(%r28)
	bl 0x8000d8d4
	li %r0, 0
	stw %r0, 0x28(%r28)
	lwz %r0, 4(%r28)
	rlwinm %r0, %r0, 7, 0x1e, 0x1f
	cmplwi %r0, 2
	beq 0x8000e0e4
	li %r0, 0
	stw %r0, 0x28(%r28)
	divwu %r3, %r29, %r27
	lmw %r25, 0x14(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bne 0x8000e128
	li %r3, -1
	b 0x8000e19c
	lwz %r0, 4(%r3)
	rlwinm. %r0, %r0, 0xa, 0x1d, 0x1f
	bne 0x8000e13c
	li %r3, 0
	b 0x8000e19c
	bl 0x8000e1b8
	lwz %r12, 0x44(%r29)
	mr %r30, %r3
	lwz %r3, 0(%r29)
	mtctr %r12
	bctrl
	lwz %r0, 8(%r29)
	li %r5, 0
	lwz %r4, 4(%r29)
	mr %r31, %r3
	rlwinm. %r0, %r0, 4, 0x1f, 0x1f
	stw %r5, 0(%r29)
	rlwinm %r4, %r4, 0, 0xa, 6
	stw %r4, 4(%r29)
	beq 0x8000e180
	lwz %r3, 0x1c(%r29)
	bl 0x8000bcb8
	cmpwi %r30, 0
	li %r0, 0
	bne 0x8000e194
	cmpwi %r31, 0
	beq 0x8000e198
	li %r0, 1
	neg %r3, %r0
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 8(%r1)
	bne 0x8000e1e0
	bl 0x8000bf10
	b 0x8000e2d4
	lbz %r0, 0xa(%r3)
	cmpwi %r0, 0
	bne 0x8000e1f8
	lwz %r4, 4(%r3)
	rlwinm. %r0, %r4, 0xa, 0x1d, 0x1f
	bne 0x8000e200
	li %r3, -1
	b 0x8000e2d4
	rlwinm %r0, %r4, 5, 0x1d, 0x1f
	cmplwi %r0, 1
	bne 0x8000e214
	li %r3, 0
	b 0x8000e2d4
	lwz %r4, 8(%r3)
	srwi %r0, %r4, 0x1d
	cmplwi %r0, 3
	blt 0x8000e230
	li %r0, 2
	rlwimi %r4, %r0, 0x1d, 0, 2
	stw %r4, 8(%r3)
	lwz %r0, 8(%r3)
	srwi %r0, %r0, 0x1d
	cmplwi %r0, 2
	bne 0x8000e248
	li %r0, 0
	stw %r0, 0x28(%r3)
	lwz %r4, 8(%r3)
	srwi %r0, %r4, 0x1d
	cmplwi %r0, 1
	beq 0x8000e268
	clrlwi %r0, %r4, 3
	stw %r0, 8(%r3)
	li %r3, 0
	b 0x8000e2d4
	lwz %r0, 4(%r3)
	rlwinm %r0, %r0, 0xa, 0x1d, 0x1f
	cmplwi %r0, 1
	beq 0x8000e280
	li %r30, 0
	b 0x8000e28c
	mr %r3, %r31
	bl 0x8000b6bc
	mr %r30, %r3
	mr %r3, %r31
	li %r4, 0
	bl 0x8000d9f8
	cmpwi %r3, 0
	beq 0x8000e2b8
	li %r3, 1
	li %r0, 0
	stb %r3, 0xa(%r31)
	li %r3, -1
	stw %r0, 0x28(%r31)
	b 0x8000e2d4
	lwz %r0, 8(%r31)
	li %r4, 0
	stw %r30, 0x18(%r31)
	li %r3, 0
	clrlwi %r0, %r0, 3
	stw %r0, 8(%r31)
	stw %r4, 0x28(%r31)
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	lis %r6, -0x7fd9
	addi %r6, %r6, -0x31f8
	lwz %r6, 0x38(%r6)
	mtctr %r5
	cmpwi %r5, 0
	ble 0x8000e39c
	lbz %r0, 0(%r3)
	li %r5, 1
	addi %r3, %r3, 1
	extsb %r7, %r0
	cmplwi %r7, 0xff
	bgt 0x8000e320
	li %r5, 0
	cmpwi %r5, 0
	beq 0x8000e32c
	b 0x8000e334
	lwz %r5, 0x10(%r6)
	lbzx %r7, %r5, %r7
	lbz %r0, 0(%r4)
	extsb %r7, %r7
	li %r5, 1
	addi %r4, %r4, 1
	extsb %r0, %r0
	cmplwi %r0, 0xff
	bgt 0x8000e354
	li %r5, 0
	cmpwi %r5, 0
	beq 0x8000e360
	b 0x8000e368
	lwz %r5, 0x10(%r6)
	lbzx %r0, %r5, %r0
	extsb %r0, %r0
	cmpw %r7, %r0
	bge 0x8000e37c
	li %r3, -1
	blr
	ble 0x8000e388
	li %r3, 1
	blr
	cmpwi %r7, 0
	bne 0x8000e398
	li %r3, 0
	blr
	bdnz 0x8000e304
	li %r3, 0
	blr
	stwu %r1, -0x10(%r1)
	stfs %f1, 8(%r1)
	lwz %r3, 8(%r1)
	rlwinm %r4, %r3, 0, 1, 8
	addis %r0, %r4, -0x7f80
	cmplwi %r0, 0
	beq 0x8000e3cc
	cmpwi %r4, 0
	beq 0x8000e3e4
	b 0x8000e3f8
	clrlwi %r3, %r3, 9
	neg %r0, %r3
	or %r0, %r0, %r3
	srawi %r3, %r0, 0x1f
	addi %r3, %r3, 2
	b 0x8000e3fc
	clrlwi. %r0, %r3, 9
	li %r3, 3
	beq 0x8000e3fc
	li %r3, 5
	b 0x8000e3fc
	li %r3, 4
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	stfd %f1, 8(%r1)
	lwz %r0, 8(%r1)
	rlwinm %r3, %r0, 0, 0, 0
	addi %r1, %r1, 0x10
	blr
	stwu %r1, -0x10(%r1)
	stfd %f1, 8(%r1)
	lwz %r3, 8(%r1)
	rlwinm %r4, %r3, 0, 1, 0xb
	addis %r0, %r4, -0x7ff0
	cmplwi %r0, 0
	beq 0x8000e444
	cmpwi %r4, 0
	beq 0x8000e468
	b 0x8000e48c
	clrlwi. %r0, %r3, 0xc
	bne 0x8000e458
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0
	beq 0x8000e460
	li %r3, 1
	b 0x8000e490
	li %r3, 2
	b 0x8000e490
	clrlwi. %r0, %r3, 0xc
	bne 0x8000e47c
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0
	beq 0x8000e484
	li %r3, 5
	b 0x8000e490
	li %r3, 3
	b 0x8000e490
	li %r3, 4
	addi %r1, %r1, 0x10
	blr
	lis %r6, -0x7fd9
	addi %r6, %r6, -0x31f8
	lwz %r6, 0x38(%r6)
	lwz %r12, 0x20(%r6)
	mtctr %r12
	bctr
	cmpwi %r4, 0
	bne 0x8000e4c0
	li %r3, 0
	blr
	cmpwi %r5, 0
	bne 0x8000e4d0
	li %r3, -1
	blr
	cmpwi %r3, 0
	beq 0x8000e4e0
	lbz %r0, 0(%r4)
	sth %r0, 0(%r3)
	lbz %r0, 0(%r4)
	extsb. %r0, %r0
	bne 0x8000e4f4
	li %r3, 0
	blr
	li %r3, 1
	blr
	cmpwi %r3, 0
	bne 0x8000e50c
	li %r3, 0
	blr
	stb %r4, 0(%r3)
	li %r3, 1
	blr
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stmw %r26, 8(%r1)
	mr %r27, %r4
	mr %r26, %r3
	mr %r28, %r5
	mr %r3, %r27
	bl 0x800206f4
	cmpwi %r26, 0
	mr %r29, %r3
	beq 0x8000e5bc
	lis %r31, -0x7fd9
	li %r30, 0
	addi %r31, %r31, -0x31f8
	b 0x8000e5b0
	lbz %r0, 0(%r27)
	extsb. %r0, %r0
	beq 0x8000e5a0
	lwz %r6, 0x38(%r31)
	mr %r3, %r26
	mr %r4, %r27
	mr %r5, %r29
	lwz %r12, 0x20(%r6)
	mtctr %r12
	addi %r26, %r26, 2
	bctrl
	cmpwi %r3, 0
	ble 0x8000e598
	add %r27, %r27, %r3
	subf %r29, %r3, %r29
	b 0x8000e5ac
	li %r3, -1
	b 0x8000e5c4
	li %r0, 0
	sth %r0, 0(%r26)
	b 0x8000e5c0
	addi %r30, %r30, 1
	cmplw %r30, %r28
	blt 0x8000e558
	b 0x8000e5c0
	li %r30, 0
	mr %r3, %r30
	lmw %r26, 8(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	stwu %r1, -0x30(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x34(%r1)
	stmw %r26, 0x18(%r1)
	mr %r26, %r3
	mr %r27, %r5
	li %r29, 0
	beq 0x8000e604
	cmpwi %r4, 0
	bne 0x8000e60c
	li %r3, 0
	b 0x8000e67c
	lis %r31, -0x7fd9
	mr %r28, %r4
	addi %r31, %r31, -0x31f8
	b 0x8000e670
	lhz %r4, 0(%r28)
	cmpwi %r4, 0
	bne 0x8000e634
	li %r0, 0
	stbx %r0, %r26, %r29
	b 0x8000e678
	lwz %r5, 0x38(%r31)
	addi %r3, %r1, 8
	lwz %r12, 0x24(%r5)
	mtctr %r12
	addi %r28, %r28, 2
	bctrl
	add %r0, %r29, %r3
	mr %r30, %r3
	cmplw %r0, %r27
	bgt 0x8000e678
	mr %r5, %r30
	add %r3, %r26, %r29
	addi %r4, %r1, 8
	bl 0x80012680
	add %r29, %r29, %r30
	cmplw %r29, %r27
	ble 0x8000e61c
	mr %r3, %r29
	lmw %r26, 0x18(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	stwu %r1, -0x10(%r1)
	mflr %r0
	xor %r6, %r3, %r4
	cmplwi %r5, 0x20
	stw %r0, 0x14(%r1)
	cntlz %r0, %r6
	slw %r0, %r3, %r0
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	srwi %r7, %r0, 0x1f
	blt 0x8000e6f8
	clrlwi. %r0, %r6, 0x1e
	beq 0x8000e6dc
	cmpwi %r7, 0
	bne 0x8000e6d4
	bl 0x8000e964
	b 0x8000e6f0
	bl 0x8000ea24
	b 0x8000e6f0
	cmpwi %r7, 0
	bne 0x8000e6ec
	bl 0x8000e800
	b 0x8000e6f0
	bl 0x8000e8bc
	mr %r3, %r31
	b 0x8000e748
	cmpwi %r7, 0
	bne 0x8000e724
	addi %r4, %r4, -1
	addi %r3, %r3, -1
	addi %r5, %r5, 1
	b 0x8000e718
	lbzu %r0, 1(%r4)
	stbu %r0, 1(%r3)
	addic. %r5, %r5, -1
	bne 0x8000e710
	b 0x8000e744
	add %r4, %r4, %r5
	add %r3, %r3, %r5
	addi %r5, %r5, 1
	b 0x8000e73c
	lbzu %r0, -1(%r4)
	stbu %r0, -1(%r3)
	addic. %r5, %r5, -1
	bne 0x8000e734
	mr %r3, %r31
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	clrlwi %r4, %r4, 0x18
	addi %r3, %r3, -1
	addi %r5, %r5, 1
	b 0x8000e778
	lbzu %r0, 1(%r3)
	cmplw %r0, %r4
	beqlr
	addic. %r5, %r5, -1
	bne 0x8000e76c
	li %r3, 0
	blr
	add %r3, %r3, %r5
	clrlwi %r4, %r4, 0x18
	addi %r5, %r5, 1
	b 0x8000e7a4
	lbzu %r0, -1(%r3)
	cmplw %r0, %r4
	beqlr
	addic. %r5, %r5, -1
	bne 0x8000e798
	li %r3, 0
	blr
	addi %r7, %r4, -1
	addi %r6, %r3, -1
	addi %r4, %r5, 1
	b 0x8000e7f0
	lbzu %r3, 1(%r6)
	lbzu %r0, 1(%r7)
	cmplw %r3, %r0
	beq 0x8000e7f0
	lbz %r4, 0(%r6)
	li %r3, 1
	lbz %r0, 0(%r7)
	cmplw %r4, %r0
	bgelr
	li %r3, -1
	blr
	addic. %r4, %r4, -1
	bne 0x8000e7c4
	li %r3, 0
	blr
	neg %r0, %r3
	addi %r7, %r4, -1
	clrlwi. %r6, %r0, 0x1e
	addi %r3, %r3, -1
	beq 0x8000e828
	subf %r5, %r6, %r5
	lbzu %r0, 1(%r7)
	addic. %r6, %r6, -1
	stbu %r0, 1(%r3)
	bne 0x8000e818
	rlwinm. %r4, %r5, 0x1b, 5, 0x1f
	addi %r6, %r7, -3
	addi %r3, %r3, -3
	beq 0x8000e880
	lwz %r0, 4(%r6)
	addic. %r4, %r4, -1
	stw %r0, 4(%r3)
	lwz %r0, 8(%r6)
	stw %r0, 8(%r3)
	lwz %r0, 0xc(%r6)
	stw %r0, 0xc(%r3)
	lwz %r0, 0x10(%r6)
	stw %r0, 0x10(%r3)
	lwz %r0, 0x14(%r6)
	stw %r0, 0x14(%r3)
	lwz %r0, 0x18(%r6)
	stw %r0, 0x18(%r3)
	lwz %r0, 0x1c(%r6)
	stw %r0, 0x1c(%r3)
	lwzu %r0, 0x20(%r6)
	stwu %r0, 0x20(%r3)
	bne 0x8000e838
	rlwinm. %r4, %r5, 0x1e, 0x1d, 0x1f
	beq 0x8000e898
	lwzu %r0, 4(%r6)
	addic. %r4, %r4, -1
	stwu %r0, 4(%r3)
	bne 0x8000e888
	clrlwi. %r5, %r5, 0x1e
	addi %r4, %r6, 3
	addi %r3, %r3, 3
	beqlr
	lbzu %r0, 1(%r4)
	addic. %r5, %r5, -1
	stbu %r0, 1(%r3)
	bne 0x8000e8a8
	blr
	add %r6, %r3, %r5
	add %r4, %r4, %r5
	clrlwi. %r3, %r6, 0x1e
	beq 0x8000e8e0
	subf %r5, %r3, %r5
	lbzu %r0, -1(%r4)
	addic. %r3, %r3, -1
	stbu %r0, -1(%r6)
	bne 0x8000e8d0
	rlwinm. %r3, %r5, 0x1b, 5, 0x1f
	beq 0x8000e930
	lwz %r0, -4(%r4)
	addic. %r3, %r3, -1
	stw %r0, -4(%r6)
	lwz %r0, -8(%r4)
	stw %r0, -8(%r6)
	lwz %r0, -0xc(%r4)
	stw %r0, -0xc(%r6)
	lwz %r0, -0x10(%r4)
	stw %r0, -0x10(%r6)
	lwz %r0, -0x14(%r4)
	stw %r0, -0x14(%r6)
	lwz %r0, -0x18(%r4)
	stw %r0, -0x18(%r6)
	lwz %r0, -0x1c(%r4)
	stw %r0, -0x1c(%r6)
	lwzu %r0, -0x20(%r4)
	stwu %r0, -0x20(%r6)
	bne 0x8000e8e8
	rlwinm. %r3, %r5, 0x1e, 0x1d, 0x1f
	beq 0x8000e948
	lwzu %r0, -4(%r4)
	addic. %r3, %r3, -1
	stwu %r0, -4(%r6)
	bne 0x8000e938
	clrlwi. %r5, %r5, 0x1e
	beqlr
	lbzu %r0, -1(%r4)
	addic. %r5, %r5, -1
	stbu %r0, -1(%r6)
	bne 0x8000e950
	blr
	neg %r0, %r3
	addi %r7, %r4, -1
	clrlwi. %r6, %r0, 0x1e
	addi %r3, %r3, -1
	beq 0x8000e98c
	subf %r5, %r6, %r5
	lbzu %r0, 1(%r7)
	addic. %r6, %r6, -1
	stbu %r0, 1(%r3)
	bne 0x8000e97c
	addi %r0, %r7, 1
	addi %r4, %r3, -3
	clrlwi %r10, %r0, 0x1e
	srwi %r6, %r5, 3
	subf %r7, %r10, %r7
	rlwinm %r11, %r0, 3, 0x1b, 0x1c
	lwzu %r8, 1(%r7)
	subfic %r12, %r11, 0x20
	lwz %r9, 4(%r7)
	slw %r3, %r8, %r11
	addic. %r6, %r6, -1
	srw %r0, %r9, %r12
	or %r0, %r3, %r0
	stw %r0, 4(%r4)
	slw %r3, %r9, %r11
	lwzu %r8, 8(%r7)
	srw %r0, %r8, %r12
	or %r0, %r3, %r0
	stwu %r0, 8(%r4)
	bne 0x8000e9ac
	rlwinm. %r0, %r5, 0, 0x1d, 0x1d
	beq 0x8000e9f8
	lwzu %r0, 4(%r7)
	slw %r3, %r8, %r11
	srw %r0, %r0, %r12
	or %r0, %r3, %r0
	stwu %r0, 4(%r4)
	clrlwi. %r5, %r5, 0x1e
	addi %r6, %r7, 3
	addi %r3, %r4, 3
	beqlr
	subfic %r0, %r10, 4
	subf %r6, %r0, %r6
	lbzu %r0, 1(%r6)
	addic. %r5, %r5, -1
	stbu %r0, 1(%r3)
	bne 0x8000ea10
	blr
	add %r12, %r3, %r5
	add %r11, %r4, %r5
	clrlwi. %r3, %r12, 0x1e
	beq 0x8000ea48
	subf %r5, %r3, %r5
	lbzu %r0, -1(%r11)
	addic. %r3, %r3, -1
	stbu %r0, -1(%r12)
	bne 0x8000ea38
	rlwinm %r9, %r11, 3, 0x1b, 0x1c
	clrlwi %r8, %r11, 0x1e
	subfic %r10, %r9, 0x20
	srwi %r4, %r5, 3
	subfic %r0, %r8, 4
	add %r11, %r11, %r0
	lwzu %r6, -4(%r11)
	lwz %r7, -4(%r11)
	srw %r0, %r6, %r10
	addic. %r4, %r4, -1
	slw %r3, %r7, %r9
	or %r0, %r3, %r0
	stw %r0, -4(%r12)
	srw %r0, %r7, %r10
	lwzu %r6, -8(%r11)
	slw %r3, %r6, %r9
	or %r0, %r3, %r0
	stwu %r0, -8(%r12)
	bne 0x8000ea64
	rlwinm. %r0, %r5, 0, 0x1d, 0x1d
	beq 0x8000eab0
	lwzu %r3, -4(%r11)
	srw %r0, %r6, %r10
	slw %r3, %r3, %r9
	or %r0, %r3, %r0
	stwu %r0, -4(%r12)
	clrlwi. %r5, %r5, 0x1e
	beqlr
	add %r11, %r11, %r8
	lbzu %r0, -1(%r11)
	addic. %r5, %r5, -1
	stbu %r0, -1(%r12)
	bne 0x8000eabc
	blr
	lis %r3, -0x7fff
	addi %r3, %r3, -0x4218
	stw %r3, -0x6bf8(%r13)
	blr
	stwu %r1, -0x30(%r1)
	mflr %r0
	li %r7, 0
	lbz %r6, 1(%r3)
	stw %r0, 0x34(%r1)
	li %r8, 1
	extsb %r6, %r6
	stw %r31, 0x2c(%r1)
	cmpwi %r6, 0x25
	addi %r31, %r3, 1
	stw %r30, 0x28(%r1)
	mr %r30, %r5
	stw %r29, 0x24(%r1)
	mr %r29, %r4
	stb %r8, 8(%r1)
	stb %r7, 9(%r1)
	stb %r7, 0xa(%r1)
	stb %r7, 0xb(%r1)
	stb %r7, 0xc(%r1)
	stw %r7, 0x10(%r1)
	stw %r7, 0x14(%r1)
	bne 0x8000eb5c
	stb %r6, 0xd(%r1)
	addi %r3, %r31, 1
	lwz %r4, 8(%r1)
	lwz %r0, 0xc(%r1)
	stw %r4, 0(%r5)
	stw %r0, 4(%r5)
	stw %r7, 8(%r5)
	stw %r7, 0xc(%r5)
	b 0x8000f080
	li %r0, 2
	cmpwi %r6, 0x2d
	li %r4, 1
	beq 0x8000eb90
	cmpwi %r6, 0x2b
	beq 0x8000eb98
	cmpwi %r6, 0x20
	beq 0x8000eba0
	cmpwi %r6, 0x23
	beq 0x8000ebb4
	cmpwi %r6, 0x30
	beq 0x8000ebbc
	b 0x8000ebd0
	stb %r7, 8(%r1)
	b 0x8000ebd4
	stb %r8, 9(%r1)
	b 0x8000ebd4
	lbz %r3, 9(%r1)
	cmplwi %r3, 1
	beq 0x8000ebd4
	stb %r0, 9(%r1)
	b 0x8000ebd4
	stb %r8, 0xb(%r1)
	b 0x8000ebd4
	lbz %r3, 8(%r1)
	cmpwi %r3, 0
	beq 0x8000ebd4
	stb %r0, 8(%r1)
	b 0x8000ebd4
	li %r4, 0
	cmpwi %r4, 0
	beq 0x8000ebe8
	lbzu %r6, 1(%r31)
	extsb %r6, %r6
	b 0x8000eb60
	cmpwi %r6, 0x2a
	bne 0x8000ec28
	mr %r3, %r29
	li %r4, 1
	bl 0x80020710
	lwz %r0, 0(%r3)
	stw %r0, 0x10(%r1)
	cmpwi %r0, 0
	bge 0x8000ec1c
	neg %r0, %r0
	li %r3, 0
	stb %r3, 8(%r1)
	stw %r0, 0x10(%r1)
	lbzu %r6, 1(%r31)
	extsb %r6, %r6
	b 0x8000ec8c
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x31f8
	lwz %r4, 0x38(%r3)
	b 0x8000ec54
	lwz %r0, 0x10(%r1)
	mulli %r0, %r0, 0xa
	add %r3, %r6, %r0
	lbzu %r6, 1(%r31)
	addi %r0, %r3, -0x30
	stw %r0, 0x10(%r1)
	extsb %r6, %r6
	cmplwi %r6, 0xff
	li %r0, 1
	bgt 0x8000ec64
	li %r0, 0
	cmpwi %r0, 0
	beq 0x8000ec74
	li %r0, 0
	b 0x8000ec84
	lwz %r3, 8(%r4)
	slwi %r0, %r6, 1
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x1c, 0x1c
	cmpwi %r0, 0
	bne 0x8000ec38
	lwz %r7, 0x10(%r1)
	cmpwi %r7, 0x1fd
	ble 0x8000ecc4
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	lwz %r5, 8(%r1)
	addi %r3, %r31, 1
	lwz %r4, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	stw %r5, 0(%r30)
	stw %r4, 4(%r30)
	stw %r7, 8(%r30)
	stw %r0, 0xc(%r30)
	b 0x8000f080
	cmpwi %r6, 0x2e
	bne 0x8000ed78
	lbzu %r6, 1(%r31)
	li %r0, 1
	stb %r0, 0xa(%r1)
	extsb %r6, %r6
	cmpwi %r6, 0x2a
	bne 0x8000ed14
	mr %r3, %r29
	li %r4, 1
	bl 0x80020710
	lwz %r0, 0(%r3)
	stw %r0, 0x14(%r1)
	cmpwi %r0, 0
	bge 0x8000ed08
	li %r0, 0
	stb %r0, 0xa(%r1)
	lbzu %r6, 1(%r31)
	extsb %r6, %r6
	b 0x8000ed78
	lis %r3, -0x7fd9
	addi %r3, %r3, -0x31f8
	lwz %r4, 0x38(%r3)
	b 0x8000ed40
	lwz %r0, 0x14(%r1)
	mulli %r0, %r0, 0xa
	add %r3, %r6, %r0
	lbzu %r6, 1(%r31)
	addi %r0, %r3, -0x30
	stw %r0, 0x14(%r1)
	extsb %r6, %r6
	cmplwi %r6, 0xff
	li %r0, 1
	bgt 0x8000ed50
	li %r0, 0
	cmpwi %r0, 0
	beq 0x8000ed60
	li %r0, 0
	b 0x8000ed70
	lwz %r3, 8(%r4)
	slwi %r0, %r6, 1
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x1c, 0x1c
	cmpwi %r0, 0
	bne 0x8000ed24
	cmpwi %r6, 0x68
	li %r4, 1
	beq 0x8000edb0
	cmpwi %r6, 0x6c
	beq 0x8000eddc
	cmpwi %r6, 0x4c
	beq 0x8000ee08
	cmpwi %r6, 0x6a
	beq 0x8000ee14
	cmpwi %r6, 0x74
	beq 0x8000ee20
	cmpwi %r6, 0x7a
	beq 0x8000ee2c
	b 0x8000ee38
	lbz %r0, 1(%r31)
	li %r3, 2
	stb %r3, 0xc(%r1)
	extsb %r3, %r0
	cmpwi %r3, 0x68
	bne 0x8000ee3c
	li %r0, 1
	stb %r0, 0xc(%r1)
	mr %r6, %r3
	addi %r31, %r31, 1
	b 0x8000ee3c
	lbz %r0, 1(%r31)
	li %r3, 3
	stb %r3, 0xc(%r1)
	extsb %r3, %r0
	cmpwi %r3, 0x6c
	bne 0x8000ee3c
	li %r0, 4
	stb %r0, 0xc(%r1)
	mr %r6, %r3
	addi %r31, %r31, 1
	b 0x8000ee3c
	li %r0, 9
	stb %r0, 0xc(%r1)
	b 0x8000ee3c
	li %r0, 6
	stb %r0, 0xc(%r1)
	b 0x8000ee3c
	li %r0, 8
	stb %r0, 0xc(%r1)
	b 0x8000ee3c
	li %r0, 7
	stb %r0, 0xc(%r1)
	b 0x8000ee3c
	li %r4, 0
	cmpwi %r4, 0
	beq 0x8000ee4c
	lbzu %r6, 1(%r31)
	extsb %r6, %r6
	addi %r0, %r6, -0x41
	stb %r6, 0xd(%r1)
	cmplwi %r0, 0x37
	bgt 0x8000f054
	lis %r3, -0x7fd9
	slwi %r0, %r0, 2
	addi %r3, %r3, -0x31b0
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr
	lbz %r0, 0xc(%r1)
	cmplwi %r0, 9
	bne 0x8000ee8c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0
	bne 0x8000eea4
	li %r0, 1
	stw %r0, 0x14(%r1)
	b 0x8000f05c
	lbz %r0, 8(%r1)
	cmplwi %r0, 2
	bne 0x8000f05c
	li %r0, 1
	stb %r0, 8(%r1)
	b 0x8000f05c
	lbz %r3, 0xc(%r1)
	addi %r0, %r3, 0xfa
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 2
	ble 0x8000eee0
	cmplwi %r3, 2
	beq 0x8000eee0
	cmplwi %r3, 4
	bne 0x8000eeec
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0
	bne 0x8000f05c
	li %r0, 6
	stw %r0, 0x14(%r1)
	b 0x8000f05c
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0
	bne 0x8000ef18
	li %r0, 0xd
	stw %r0, 0x14(%r1)
	lbz %r3, 0xc(%r1)
	addi %r0, %r3, 0xfa
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 2
	ble 0x8000ef44
	addi %r0, %r3, 0xff
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 1
	ble 0x8000ef44
	cmplwi %r3, 4
	bne 0x8000f05c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lwz %r0, 0x14(%r1)
	cmpwi %r0, 0
	bne 0x8000ef64
	li %r0, 1
	stw %r0, 0x14(%r1)
	lbz %r3, 0xc(%r1)
	addi %r0, %r3, 0xfa
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 2
	ble 0x8000ef90
	addi %r0, %r3, 0xff
	clrlwi %r0, %r0, 0x18
	cmplwi %r0, 1
	ble 0x8000ef90
	cmplwi %r3, 4
	bne 0x8000ef9c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0
	bne 0x8000f05c
	li %r0, 6
	stw %r0, 0x14(%r1)
	b 0x8000f05c
	li %r5, 0x78
	li %r4, 1
	li %r3, 3
	li %r0, 8
	stb %r5, 0xd(%r1)
	stb %r4, 0xb(%r1)
	stb %r3, 0xc(%r1)
	stw %r0, 0x14(%r1)
	b 0x8000f05c
	lbz %r3, 0xc(%r1)
	cmplwi %r3, 3
	bne 0x8000eff0
	li %r0, 5
	stb %r0, 0xc(%r1)
	b 0x8000f05c
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0
	bne 0x8000f004
	cmpwi %r3, 0
	beq 0x8000f05c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lbz %r0, 0xc(%r1)
	cmplwi %r0, 3
	bne 0x8000f028
	li %r0, 5
	stb %r0, 0xc(%r1)
	b 0x8000f05c
	cmpwi %r0, 0
	beq 0x8000f05c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	lbz %r0, 0xc(%r1)
	cmplwi %r0, 9
	bne 0x8000f05c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b 0x8000f05c
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	lwz %r6, 8(%r1)
	addi %r3, %r31, 1
	lwz %r5, 0xc(%r1)
	lwz %r4, 0x10(%r1)
	lwz %r0, 0x14(%r1)
	stw %r6, 0(%r30)
	stw %r5, 4(%r30)
	stw %r4, 8(%r30)
	stw %r0, 0xc(%r30)
	lwz %r0, 0x34(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	cmpwi %r3, 0
	li %r8, 0
	stb %r8, -1(%r4)
	addi %r6, %r4, -1
	li %r7, 0
	bne 0x8000f0e0
	lwz %r0, 0xc(%r5)
	cmpwi %r0, 0
	bne 0x8000f0e0
	lbz %r0, 3(%r5)
	cmpwi %r0, 0
	beq 0x8000f0d8
	lbz %r0, 5(%r5)
	cmplwi %r0, 0x6f
	beq 0x8000f0e0
	mr %r3, %r6
	blr
	lbz %r9, 5(%r5)
	cmpwi %r9, 0x64
	beq 0x8000f118
	cmpwi %r9, 0x69
	beq 0x8000f118
	cmpwi %r9, 0x6f
	beq 0x8000f13c
	cmpwi %r9, 0x75
	beq 0x8000f14c
	cmpwi %r9, 0x78
	beq 0x8000f15c
	cmpwi %r9, 0x58
	beq 0x8000f15c
	b 0x8000f168
	cmpwi %r3, 0
	li %r0, 0xa
	bge 0x8000f168
	addis %r8, %r3, -0x8000
	cmplwi %r8, 0
	beq 0x8000f134
	neg %r3, %r3
	li %r8, 1
	b 0x8000f168
	li %r0, 0
	stb %r0, 1(%r5)
	li %r0, 8
	b 0x8000f168
	li %r0, 0
	stb %r0, 1(%r5)
	li %r0, 0xa
	b 0x8000f168
	li %r0, 0
	stb %r0, 1(%r5)
	li %r0, 0x10
	divwu %r9, %r3, %r0
	mullw %r9, %r9, %r0
	subf %r11, %r9, %r3
	divwu %r3, %r3, %r0
	cmpwi %r11, 0xa
	bge 0x8000f188
	addi %r11, %r11, 0x30
	b 0x8000f1a0
	lbz %r9, 5(%r5)
	addi %r10, %r11, 0x37
	cmplwi %r9, 0x78
	bne 0x8000f19c
	addi %r10, %r11, 0x57
	mr %r11, %r10
	cmpwi %r3, 0
	stb %r11, -1(%r6)
	addi %r6, %r6, -1
	addi %r7, %r7, 1
	bne 0x8000f168
	cmplwi %r0, 8
	bne 0x8000f1e0
	lbz %r3, 3(%r5)
	cmpwi %r3, 0
	beq 0x8000f1e0
	lbz %r3, 0(%r6)
	cmpwi %r3, 0x30
	beq 0x8000f1e0
	li %r3, 0x30
	stbu %r3, -1(%r6)
	addi %r7, %r7, 1
	lbz %r3, 0(%r5)
	cmplwi %r3, 2
	bne 0x8000f234
	lwz %r3, 8(%r5)
	cmpwi %r8, 0
	stw %r3, 0xc(%r5)
	bne 0x8000f208
	lbz %r3, 1(%r5)
	cmpwi %r3, 0
	beq 0x8000f214
	lwz %r3, 0xc(%r5)
	addi %r3, %r3, -1
	stw %r3, 0xc(%r5)
	cmplwi %r0, 0x10
	bne 0x8000f234
	lbz %r3, 3(%r5)
	cmpwi %r3, 0
	beq 0x8000f234
	lwz %r3, 0xc(%r5)
	addi %r3, %r3, -2
	stw %r3, 0xc(%r5)
	lwz %r9, 0xc(%r5)
	subf %r3, %r6, %r4
	add %r3, %r9, %r3
	cmpwi %r3, 0x1fd
	ble 0x8000f250
	li %r3, 0
	blr
	li %r4, 0x30
	b 0x8000f260
	stbu %r4, -1(%r6)
	addi %r7, %r7, 1
	lwz %r3, 0xc(%r5)
	cmpw %r7, %r3
	blt 0x8000f258
	cmplwi %r0, 0x10
	bne 0x8000f290
	lbz %r0, 3(%r5)
	cmpwi %r0, 0
	beq 0x8000f290
	lbz %r3, 5(%r5)
	li %r0, 0x30
	stb %r3, -1(%r6)
	stbu %r0, -2(%r6)
	cmpwi %r8, 0
	beq 0x8000f2a4
	li %r0, 0x2d
	stbu %r0, -1(%r6)
	b 0x8000f2cc
	lbz %r0, 1(%r5)
	cmplwi %r0, 1
	bne 0x8000f2bc
	li %r0, 0x2b
	stbu %r0, -1(%r6)
	b 0x8000f2cc
	cmplwi %r0, 2
	bne 0x8000f2cc
	li %r0, 0x20
	stbu %r0, -1(%r6)
	mr %r3, %r6
	blr
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	or. %r0, %r4, %r3
	stmw %r22, 8(%r1)
	li %r25, 0
	mr %r31, %r3
	mr %r30, %r4
	mr %r23, %r5
	mr %r24, %r6
	addi %r27, %r5, -1
	li %r26, 0
	stb %r25, -1(%r5)
	bne 0x8000f338
	lwz %r0, 0xc(%r6)
	cmpwi %r0, 0
	bne 0x8000f338
	lbz %r0, 3(%r6)
	cmpwi %r0, 0
	beq 0x8000f330
	lbz %r0, 5(%r6)
	cmplwi %r0, 0x6f
	beq 0x8000f338
	mr %r3, %r27
	b 0x8000f570
	lbz %r0, 5(%r6)
	cmpwi %r0, 0x64
	beq 0x8000f370
	cmpwi %r0, 0x69
	beq 0x8000f370
	cmpwi %r0, 0x6f
	beq 0x8000f3b4
	cmpwi %r0, 0x75
	beq 0x8000f3c4
	cmpwi %r0, 0x78
	beq 0x8000f3d4
	cmpwi %r0, 0x58
	beq 0x8000f3d4
	b 0x8000f3e0
	li %r29, 0
	xoris %r0, %r3, 0x8000
	xoris %r6, %r29, 0x8000
	li %r28, 0xa
	subfc %r5, %r29, %r4
	subfe %r6, %r6, %r0
	subfe %r6, %r0, %r0
	neg. %r6, %r6
	beq 0x8000f3e0
	lis %r0, -0x8000
	xor %r0, %r3, %r0
	or. %r0, %r4, %r0
	beq 0x8000f3ac
	subfic %r30, %r4, 0
	subfze %r31, %r3
	li %r25, 1
	b 0x8000f3e0
	li %r29, 0
	stb %r29, 1(%r6)
	li %r28, 8
	b 0x8000f3e0
	li %r29, 0
	stb %r29, 1(%r6)
	li %r28, 0xa
	b 0x8000f3e0
	li %r29, 0
	stb %r29, 1(%r6)
	li %r28, 0x10
	mr %r3, %r31
	mr %r4, %r30
	mr %r5, %r29
	mr %r6, %r28
	bl 0x80020cc8
	mr %r22, %r4
	mr %r3, %r31
	mr %r4, %r30
	mr %r5, %r29
	mr %r6, %r28
	bl 0x80020aa4
	cmpwi %r22, 0xa
	mr %r30, %r4
	mr %r31, %r3
	bge 0x8000f424
	addi %r5, %r22, 0x30
	b 0x8000f438
	lbz %r0, 5(%r24)
	addi %r5, %r22, 0x37
	cmplwi %r0, 0x78
	bne 0x8000f438
	addi %r5, %r22, 0x57
	or. %r0, %r4, %r3
	stbu %r5, -1(%r27)
	addi %r26, %r26, 1
	bne 0x8000f3e0
	xori %r0, %r28, 8
	or. %r0, %r0, %r29
	bne 0x8000f478
	lbz %r0, 3(%r24)
	cmpwi %r0, 0
	beq 0x8000f478
	lbz %r0, 0(%r27)
	cmpwi %r0, 0x30
	beq 0x8000f478
	li %r0, 0x30
	stbu %r0, -1(%r27)
	addi %r26, %r26, 1
	lbz %r0, 0(%r24)
	cmplwi %r0, 2
	bne 0x8000f4d0
	lwz %r0, 8(%r24)
	cmpwi %r25, 0
	stw %r0, 0xc(%r24)
	bne 0x8000f4a0
	lbz %r0, 1(%r24)
	cmpwi %r0, 0
	beq 0x8000f4ac
	lwz %r3, 0xc(%r24)
	addi %r0, %r3, -1
	stw %r0, 0xc(%r24)
	xori %r0, %r28, 0x10
	or. %r0, %r0, %r29
	bne 0x8000f4d0
	lbz %r0, 3(%r24)
	cmpwi %r0, 0
	beq 0x8000f4d0
	lwz %r3, 0xc(%r24)
	addi %r0, %r3, -2
	stw %r0, 0xc(%r24)
	lwz %r3, 0xc(%r24)
	subf %r0, %r27, %r23
	add %r0, %r3, %r0
	cmpwi %r0, 0x1fd
	ble 0x8000f4ec
	li %r3, 0
	b 0x8000f570
	li %r3, 0x30
	b 0x8000f4fc
	stbu %r3, -1(%r27)
	addi %r26, %r26, 1
	lwz %r0, 0xc(%r24)
	cmpw %r26, %r0
	blt 0x8000f4f4
	xori %r0, %r28, 0x10
	or. %r0, %r0, %r29
	bne 0x8000f530
	lbz %r0, 3(%r24)
	cmpwi %r0, 0
	beq 0x8000f530
	lbz %r3, 5(%r24)
	li %r0, 0x30
	stb %r3, -1(%r27)
	stbu %r0, -2(%r27)
	cmpwi %r25, 0
	beq 0x8000f544
	li %r0, 0x2d
	stbu %r0, -1(%r27)
	b 0x8000f56c
	lbz %r0, 1(%r24)
	cmplwi %r0, 1
	bne 0x8000f55c
	li %r0, 0x2b
	stbu %r0, -1(%r27)
	b 0x8000f56c
	cmplwi %r0, 2
	bne 0x8000f56c
	li %r0, 0x20
	stbu %r0, -1(%r27)
	mr %r3, %r27
	lmw %r22, 8(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stfd %f31, 0x80(%r1)
	invalid
	lis %r5, -0x7fd9
	lwz %r0, 0xc(%r4)
	fmr %f31, %f1
	stw %r31, 0x7c(%r1)
	cmpwi %r0, 0x1fd
	stw %r30, 0x78(%r1)
	mr %r30, %r4
	stw %r29, 0x74(%r1)
	mr %r29, %r3
	stw %r28, 0x70(%r1)
	lwz %r5, -0x33a8(%r5)
	stfd %f1, 8(%r1)
	lbz %r31, 0(%r5)
	ble 0x8000f5d8
	li %r3, 0
	b 0x8000f92c
	li %r28, 0
	li %r0, 0x20
	stb %r28, 0x10(%r1)
	addi %r3, %r1, 0x10
	addi %r4, %r1, 0x38
	sth %r0, 0x12(%r1)
	bl 0x8000cf9c
	lbz %r0, 0x3d(%r1)
	cmpwi %r0, 0x30
	beq 0x8000f614
	cmpwi %r0, 0x49
	beq 0x8000f61c
	cmpwi %r0, 0x4e
	beq 0x8000f6a8
	b 0x8000f738
	sth %r28, 0x3a(%r1)
	b 0x8000f738
	lbz %r0, 0x38(%r1)
	extsb. %r0, %r0
	beq 0x8000f664
	lbz %r0, 5(%r30)
	addi %r28, %r29, -5
	cmplwi %r0, 0x41
	bne 0x8000f64c
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	bl 0x800125c0
	b 0x8000f6a0
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 5
	bl 0x800125c0
	b 0x8000f6a0
	lbz %r0, 5(%r30)
	addi %r28, %r29, -4
	cmplwi %r0, 0x41
	bne 0x8000f68c
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0xa
	bl 0x800125c0
	b 0x8000f6a0
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0xe
	bl 0x800125c0
	mr %r3, %r28
	b 0x8000f92c
	lbz %r0, 0x38(%r1)
	extsb. %r0, %r0
	beq 0x8000f6f4
	lbz %r0, 5(%r30)
	addi %r28, %r29, -5
	cmplwi %r0, 0x41
	bne 0x8000f6dc
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x12
	bl 0x800125c0
	b 0x8000f730
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x17
	bl 0x800125c0
	b 0x8000f730
	lbz %r0, 5(%r30)
	addi %r28, %r29, -4
	cmplwi %r0, 0x41
	bne 0x8000f71c
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x1c
	bl 0x800125c0
	b 0x8000f730
	lis %r4, -0x7fdc
	mr %r3, %r28
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x20
	bl 0x800125c0
	mr %r3, %r28
	b 0x8000f92c
	lbz %r0, 9(%r1)
	li %r8, 0
	lbz %r3, 8(%r1)
	li %r9, 1
	slwi %r0, %r0, 0x11
	li %r7, 0x64
	rlwimi %r0, %r3, 0x19, 0, 6
	stb %r9, 0x28(%r1)
	srwi %r5, %r0, 0x15
	mr %r4, %r29
	neg %r0, %r5
	stb %r9, 0x29(%r1)
	or %r3, %r0, %r5
	addi %r0, %r5, -0x3ff
	stb %r8, 0x2a(%r1)
	srawi %r3, %r3, 0x1f
	addi %r5, %r1, 0x18
	stb %r8, 0x2b(%r1)
	and %r3, %r0, %r3
	lwz %r6, 0x28(%r1)
	stb %r8, 0x2c(%r1)
	stb %r7, 0x2d(%r1)
	lwz %r0, 0x2c(%r1)
	stw %r8, 0x30(%r1)
	stw %r9, 0x34(%r1)
	stw %r6, 0x18(%r1)
	stw %r0, 0x1c(%r1)
	stw %r8, 0x20(%r1)
	stw %r9, 0x24(%r1)
	bl 0x8000f09c
	lbz %r0, 5(%r30)
	cmplwi %r0, 0x61
	bne 0x8000f7c8
	li %r0, 0x70
	stbu %r0, -1(%r3)
	b 0x8000f7d0
	li %r0, 0x50
	stbu %r0, -1(%r3)
	lwz %r0, 0xc(%r30)
	addi %r8, %r1, 8
	slwi %r4, %r0, 2
	addi %r9, %r4, 0xb
	mtctr %r0
	cmpwi %r0, 1
	blt 0x8000f884
	cmpwi %r9, 0x40
	bge 0x8000f874
	srawi %r4, %r9, 3
	addi %r0, %r9, -4
	add %r7, %r8, %r4
	clrlwi %r6, %r9, 0x1d
	rlwinm %r4, %r9, 0, 0, 0x1c
	rlwinm %r0, %r0, 0, 0, 0x1c
	lbz %r5, 0(%r7)
	subfic %r6, %r6, 7
	cmpw %r4, %r0
	sraw %r0, %r5, %r6
	clrlwi %r4, %r0, 0x18
	beq 0x8000f838
	lbz %r0, -1(%r7)
	slwi %r0, %r0, 8
	sraw %r0, %r0, %r6
	or %r0, %r4, %r0
	clrlwi %r4, %r0, 0x18
	clrlwi %r4, %r4, 0x1c
	cmplwi %r4, 0xa
	bge 0x8000f850
	addi %r0, %r4, 0x30
	clrlwi %r4, %r0, 0x18
	b 0x8000f878
	lbz %r0, 5(%r30)
	cmplwi %r0, 0x61
	bne 0x8000f868
	addi %r0, %r4, 0x57
	clrlwi %r4, %r0, 0x18
	b 0x8000f878
	addi %r0, %r4, 0x37
	clrlwi %r4, %r0, 0x18
	b 0x8000f878
	li %r4, 0x30
	stbu %r4, -1(%r3)
	addi %r9, %r9, -4
	bdnz 0x8000f7ec
	lwz %r0, 0xc(%r30)
	cmpwi %r0, 0
	bne 0x8000f89c
	lbz %r0, 3(%r30)
	cmpwi %r0, 0
	beq 0x8000f8a0
	stbu %r31, -1(%r3)
	fabs %f1, %f31
	lfd %f0, -0x7f20(%r2)
	fcmpu cr0, %f0, %f1
	beq 0x8000f8bc
	li %r0, 0x31
	stbu %r0, -1(%r3)
	b 0x8000f8c4
	li %r0, 0x30
	stbu %r0, -1(%r3)
	lbz %r0, 5(%r30)
	cmplwi %r0, 0x61
	bne 0x8000f8dc
	li %r0, 0x78
	stbu %r0, -1(%r3)
	b 0x8000f8e4
	li %r0, 0x58
	stbu %r0, -1(%r3)
	li %r0, 0x30
	stbu %r0, -1(%r3)
	lbz %r0, 0x38(%r1)
	extsb. %r0, %r0
	beq 0x8000f904
	li %r0, 0x2d
	stbu %r0, -1(%r3)
	b 0x8000f92c
	lbz %r0, 1(%r30)
	cmplwi %r0, 1
	bne 0x8000f91c
	li %r0, 0x2b
	stbu %r0, -1(%r3)
	b 0x8000f92c
	cmplwi %r0, 2
	bne 0x8000f92c
	li %r0, 0x20
	stbu %r0, -1(%r3)
	invalid
	lwz %r0, 0x94(%r1)
	lfd %f31, 0x80(%r1)
	lwz %r31, 0x7c(%r1)
	lwz %r30, 0x78(%r1)
	lwz %r29, 0x74(%r1)
	lwz %r28, 0x70(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr
	cmpwi %r4, 0
	bge 0x8000f978
	li %r5, 0
	li %r4, 1
	li %r0, 0x30
	sth %r5, 2(%r3)
	stb %r4, 4(%r3)
	stb %r0, 5(%r3)
	blr
	lbz %r7, 4(%r3)
	cmpw %r4, %r7
	bgelr
	add %r6, %r3, %r4
	lbz %r5, 5(%r6)
	addi %r8, %r6, 5
	addi %r0, %r5, -0x30
	extsb %r6, %r0
	cmpwi %r6, 5
	bne 0x8000f9dc
	add %r5, %r3, %r7
	addi %r5, %r5, 5
	addi %r5, %r5, -1
	cmplw %r5, %r8
	ble 0x8000f9c0
	lbz %r0, 0(%r5)
	cmpwi %r0, 0x30
	beq 0x8000f9a8
	cmplw %r5, %r8
	bne 0x8000f9d4
	lbz %r0, -1(%r8)
	clrlwi %r5, %r0, 0x1f
	b 0x8000f9f0
	li %r5, 1
	b 0x8000f9f0
	xori %r0, %r6, 5
	srawi %r5, %r0, 1
	and %r0, %r0, %r6
	subf %r0, %r0, %r5
	srwi %r5, %r0, 0x1f
	mtctr %r4
	cmpwi %r4, 0
	beq 0x8000fa44
	lbzu %r0, -1(%r8)
	add %r5, %r0, %r5
	addi %r0, %r5, -0x30
	extsb %r6, %r0
	xori %r0, %r6, 9
	srawi %r5, %r0, 1
	and %r0, %r0, %r6
	subf %r0, %r0, %r5
	rlwinm. %r5, %r0, 1, 0x1f, 0x1f
	bne 0x8000fa2c
	cmpwi %r6, 0
	bne 0x8000fa34
	addi %r4, %r4, -1
	b 0x8000fa40
	addi %r0, %r6, 0x30
	stb %r0, 0(%r8)
	b 0x8000fa44
	bdnz 0x8000f9fc
	cmpwi %r5, 0
	beq 0x8000fa6c
	lha %r5, 2(%r3)
	li %r4, 1
	li %r0, 0x31
	stb %r4, 4(%r3)
	addi %r4, %r5, 1
	sth %r4, 2(%r3)
	stb %r0, 5(%r3)
	blr
	cmpwi %r4, 0
	beq 0x8000f95c
	stb %r4, 4(%r3)
	blr
	stwu %r1, -0x50(%r1)
	mflr %r0
	lis %r5, -0x7fd9
	stw %r0, 0x54(%r1)
	lwz %r0, 0xc(%r4)
	stfd %f31, 0x48(%r1)
	fmr %f31, %f1
	cmpwi %r0, 0x1fd
	stw %r31, 0x44(%r1)
	stw %r30, 0x40(%r1)
	stw %r29, 0x3c(%r1)
	mr %r29, %r4
	stw %r28, 0x38(%r1)
	mr %r28, %r3
	lwz %r5, -0x33a8(%r5)
	lbz %r30, 0(%r5)
	ble 0x8000fac8
	li %r3, 0
	b 0x800101f0
	li %r3, 0
	li %r0, 0x20
	stb %r3, 8(%r1)
	addi %r3, %r1, 8
	addi %r4, %r1, 0xc
	sth %r0, 0xa(%r1)
	bl 0x8000cf9c
	lbz %r0, 0x10(%r1)
	addi %r5, %r1, 0x11
	add %r5, %r5, %r0
	b 0x8000fb0c
	lbz %r4, 0x10(%r1)
	lha %r3, 0xe(%r1)
	addi %r0, %r4, -1
	stb %r0, 0x10(%r1)
	addi %r0, %r3, 1
	sth %r0, 0xe(%r1)
	lbz %r0, 0x10(%r1)
	cmplwi %r0, 1
	ble 0x8000fb24
	lbzu %r0, -1(%r5)
	cmpwi %r0, 0x30
	beq 0x8000faf4
	lbz %r0, 0x11(%r1)
	cmpwi %r0, 0x30
	beq 0x8000fb44
	cmpwi %r0, 0x49
	beq 0x8000fb50
	cmpwi %r0, 0x4e
	beq 0x8000fc54
	b 0x8000fd5c
	li %r0, 0
	sth %r0, 0xe(%r1)
	b 0x8000fd5c
	lfd %f0, -0x7f20(%r2)
	invalid
	bge 0x8000fbd4
	lbz %r0, 5(%r29)
	addi %r31, %r28, -5
	li %r3, 1
	cmplwi %r0, 0xff
	bgt 0x8000fb74
	li %r3, 0
	cmpwi %r3, 0
	beq 0x8000fb84
	li %r0, 0
	b 0x8000fba0
	lis %r3, -0x7fd9
	slwi %r0, %r0, 1
	addi %r3, %r3, -0x31f8
	lwz %r3, 0x38(%r3)
	lwz %r3, 8(%r3)
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x16, 0x16
	cmpwi %r0, 0
	beq 0x8000fbbc
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	bl 0x800125c0
	b 0x8000fc4c
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 5
	bl 0x800125c0
	b 0x8000fc4c
	lbz %r0, 5(%r29)
	addi %r31, %r28, -4
	li %r3, 1
	cmplwi %r0, 0xff
	bgt 0x8000fbec
	li %r3, 0
	cmpwi %r3, 0
	beq 0x8000fbfc
	li %r0, 0
	b 0x8000fc18
	lis %r3, -0x7fd9
	slwi %r0, %r0, 1
	addi %r3, %r3, -0x31f8
	lwz %r3, 0x38(%r3)
	lwz %r3, 8(%r3)
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x16, 0x16
	cmpwi %r0, 0
	beq 0x8000fc38
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0xa
	bl 0x800125c0
	b 0x8000fc4c
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0xe
	bl 0x800125c0
	mr %r3, %r31
	b 0x800101f0
	lbz %r0, 0xc(%r1)
	extsb. %r0, %r0
	beq 0x8000fcdc
	lbz %r0, 5(%r29)
	addi %r31, %r28, -5
	li %r3, 1
	cmplwi %r0, 0xff
	bgt 0x8000fc78
	li %r3, 0
	cmpwi %r3, 0
	beq 0x8000fc88
	li %r0, 0
	b 0x8000fca4
	lis %r3, -0x7fd9
	slwi %r0, %r0, 1
	addi %r3, %r3, -0x31f8
	lwz %r3, 0x38(%r3)
	lwz %r3, 8(%r3)
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x16, 0x16
	cmpwi %r0, 0
	beq 0x8000fcc4
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x12
	bl 0x800125c0
	b 0x8000fd54
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x17
	bl 0x800125c0
	b 0x8000fd54
	lbz %r0, 5(%r29)
	addi %r31, %r28, -4
	li %r3, 1
	cmplwi %r0, 0xff
	bgt 0x8000fcf4
	li %r3, 0
	cmpwi %r3, 0
	beq 0x8000fd04
	li %r0, 0
	b 0x8000fd20
	lis %r3, -0x7fd9
	slwi %r0, %r0, 1
	addi %r3, %r3, -0x31f8
	lwz %r3, 0x38(%r3)
	lwz %r3, 8(%r3)
	lhzx %r0, %r3, %r0
	rlwinm %r0, %r0, 0, 0x16, 0x16
	cmpwi %r0, 0
	beq 0x8000fd40
	lis %r4, -0x7fdc
	mr %r3, %r31
	addi %r4, %r4, 0x6310
	addi %r4, %r4, 0x1c
	bl 0x800125c0
	b 0x8000fd54
	.incbin "basemain.dol", 0xafe0, 0x235000
	.global Text1End
Text1End:
