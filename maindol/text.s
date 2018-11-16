	.include "macros.inc"
	.text
	.global sub_0
sub_0: # 0x800072c0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_2336cc
	lis %r3, gUnknown_10058@h
	addi %r30, %r28, 0x3c
	addi %r3, %r3, gUnknown_10058@l
	stw %r3, 0x0(%r28)
	addi %r31, %r28, 0xc3c
_38:
	mr %r3, %r30
	bl sub_21f78c
	addi %r30, %r30, 0x400
	cmplw %r30, %r31
	blt+ _38
	lwz %r30, 0x14(%r28)
	li %r0, 0x0
	stw %r0, 0x30(%r28)
	cmpwi %r30, 0x0
	stw %r0, 0x34(%r28)
	stw %r0, 0x38(%r28)
	beq- _88
	lwz %r12, 0x0(%r30)
	mr %r3, %r30
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x1
	bne- _88
	b _8c
_88:
	li %r30, 0x0
_8c:
	lwz %r31, 0x18(%r28)
	cmpwi %r31, 0x0
	beq- _b8
	lwz %r12, 0x0(%r31)
	mr %r3, %r31
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x1
	bne- _b8
	b _bc
_b8:
	li %r31, 0x0
_bc:
	lwz %r29, 0x1c(%r28)
	cmpwi %r29, 0x0
	beq- _e8
	lwz %r12, 0x0(%r29)
	mr %r3, %r29
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x1
	bne- _e8
	b _ec
_e8:
	li %r29, 0x0
_ec:
	lis %r4,gUnknown_10030@h
	li %r0, 0x0
	addi %r4, %r4, gUnknown_10030@l
	stw %r30, 0x30(%r28)
	mr %r3, %r28
	stw %r31, 0x34(%r28)
	stw %r29, 0x38(%r28)
	stw %r4, 0x0(%r28)
	stw %r0, 0xc74(%r28)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_130
sub_130: # 0x800073f0
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _16c
	li %r4, 0x0
	bl sub_233740
	cmpwi %r31, 0x0
	ble- _16c
	mr %r3, %r30
	bl sub_2227d0
_16c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_188
sub_188: # 0x80007448
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _1c8
	beq- _1b8
	li %r4, 0x0
	bl sub_233740
_1b8:
	cmpwi %r31, 0x0
	ble- _1c8
	mr %r3, %r30
	bl sub_2227d0
_1c8:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_1e4
sub_1e4: # 0x800074a4
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl sub_1b84
	mr %r4, %r3
	lwz %r3, -0x6c08(%r13)
	lwz %r4, 0x60(%r4)
	li %r5, 0x1
	bl sub_2e88
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_218
sub_218: # 0x800074d8
	stwu %r1, -0x40(%r1)
	mflr %r0
	li %r4, 0x0
	stw %r0, 0x44(%r1)
	stmw %r21, 0x14(%r1)
	mr %r30, %r3
	lwz %r3, -0x6c00(%r13)
	bl sub_3888
	lis %r25, gUnknown_10000@h
	li %r21, 0x0
	addi %r25, %r25, gUnknown_10000@l
	lis %r24, gUnknown_10108@h
	lis %r23, gUnknown_100e0@h
_24c:
	lwz %r3, -0x6c00(%r13)
	li %r5, 0x0
	lwz %r4, 0x34(%r30)
	li %r6, 0x0
	lwz %r0, 0x60(%r3)
	slwi  %r0, %r0, 2
	lwzx %r3, %r25, %r0
	bl sub_4268
	mr %r22, %r3
	bl sub_21261c
	mr %r4, %r3
	lwz %r3, 0x30(%r30)
	li %r5, 0x20
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	stw %r3, 0xc70(%r30)
	mr %r4, %r3
	mr %r3, %r22
	bl sub_211844
	lwz %r26, 0xc70(%r30)
	clrlwi. %r0, %r26, 27
	beq- _2c0
	addi %r3, %r24, gUnknown_10108@l
	subi %r5, %r23, gUnknown_100e0@l
	li %r4, 0x3c
	crxor 6, 6, 6
	bl sub_1ec50
_2c0:
	stw %r26, 0xc74(%r30)
	addi %r3, %r30, 0xc74
	bl sub_462d0
	lwz %r0, 0xc74(%r30)
	cmpwi %r0, 0x0
	bne- _314
	lwz %r3, 0x34(%r30)
	mr %r4, %r22
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl 
	lwz %r3, 0x30(%r30)
	lwz %r4, 0xc70(%r30)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl 
	addi %r21, %r21, 0x1
	cmpwi %r21, 0x64
	blt+ _24c
_314:
	lis %r23, gUnknown_10020@h
	addi %r21, %r30, 0xc80
	addi %r23, %r23, gUnknown_10020@l
	li %r31, 0x0
	li %r22, 0x0
	lis %r24, gUnknown_100d0@h
	lis %r25, gUnknown_100b0@h
	lis %r28, gUnknown_100a0@h
	lis %r29, gUnknown_10080@h
_338:
	lwz %r3, -0x6c00(%r13)
	mr %r4, %r22
	lwz %r0, 0x58(%r3)
	cmpwi %r0, 0x0
	bne- _350
	addi %r4, %r22, 0x1
_350:
	slwi  %r0, %r4, 2
	addi %r3, %r30, 0xc74
	lwzx %r4, %r23, %r0
	bl sub_45180
	stw %r3, 0xc(%r1)
	addi %r3, %r1, 0xc
	addi %r7, %r1, 0x8
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r8, 0x0
	li %r9, 0x0
	li %r10, 0x0
	bl sub_4b5d0
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0x0
	bne- _3b0
	addi %r3, %r24, gUnknown_100d0@l
	addi %r5, %r25, gUnknown_100b0@l
	li %r4, 0x26
	subi %r6, %r13, 0x7ff8
	subi %r7, %r13, 0x8000
	crxor 6, 6, 6
	bl sub_1ec50
_3b0:
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0x0
	lhz %r26, 0x1e(%r3)
	bne- _3dc
	addi %r3, %r24, gUnknown_100d0@l
	addi %r5, %r25, gUnknown_100b0@l
	li %r4, 0x26
	subi %r6, %r13, 0x7ff8
	subi %r7, %r13, 0x8000
	crxor 6, 6, 6
	bl sub_1ec50
_3dc:
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0x0
	lhz %r27, 0x1c(%r3)
	bne- _408
	addi %r3, %r28, gUnknown_100a0@l
	subi %r5, %r29, gUnknown_10080@l
	li %r4, 0x26
	subi %r6, %r13, 0x7ff8
	subi %r7, %r13, 0x7ffc
	crxor 6, 6, 6
	bl sub_1ec50
_408:
	lwz %r4, 0xc(%r1)
	mr %r3, %r21
	lwz %r0, 0x10(%r4)
	cmpwi %r0, 0x0
	beq- _424
	add %r4, %r4, %r0
	b _428
_424:
	li %r4, 0x0
_428:
	lwz %r7, 0x8(%r1)
	mr %r5, %r27
	mr %r6, %r26
	li %r8, 0x0
	li %r9, 0x0
	li %r10, 0x0
	bl sub_169498
	addi %r31, %r31, 0x1
	addi %r21, %r21, 0x20
	cmpwi %r31, 0x2
	addi %r22, %r22, 0x2
	blt+ _338
	lwz %r6, 0x34(%r30)
	li %r3, 0x5
	li %r4, 0x14
	li %r5, 0x5000
	bl sub_23a76c
	lis %r4, 0x8000
	stw %r3, 0xc78(%r30)
	addi %r4, %r4, 0x74a4 # 0x80008b5c
	li %r5, 0x0
	li %r6, 0x0
	bl sub_23aa9c
	li %r4, 0x0
	li %r0, 0x1
	stw %r4, 0xcc0(%r30)
	stw %r4, 0xcc4(%r30)
	stw %r4, 0xcc8(%r30)
	stb %r4, 0xccc(%r30)
	stb %r0, 0xc7d(%r30)
	lwz %r3, -0x6c00(%r13)
	lwz %r0, 0x70(%r3)
	cmpwi %r0, 0x1
	bne- _4b4
	stb %r4, 0xc7d(%r30)
_4b4:
	li %r0, 0xff
	sth %r0, 0xcce(%r30)
	sth %r0, 0xcd0(%r30)
	sth %r0, 0xcd2(%r30)
	sth %r0, 0xcd4(%r30)
	bl sub_1de4c4
	cmpwi %r3, 0x0
	mr %r4, %r3
	beq- _4e8
	lis %r3, 0x8024
	addi %r3, %r3, 0x4f60 # 0x8024b0a0 (.rodata 0x6260)
	crxor 6, 6, 6
	bl sub_19b270
_4e8:
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	bl sub_233808
	lmw %r21, 0x14(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_508
sub_508: # 0x800077c8
	stwu %r1, -0x890(%r1)
	mflr %r0
	stw %r0, 0x894(%r1)
	stw %r31, 0x88c(%r1)
	li %r31, 0x0
	stw %r30, 0x888(%r1)
	mr %r30, %r3
	stw %r29, 0x884(%r1)
	li %r29, 0x0
	b _5a4
_530:
	mr %r3, %r29
	addi %r4, %r1, 0x8
	bl sub_1b9630
	cmpwi %r3, 0x0
	bne- _5a0
	lwz %r0, 0x8(%r1)
	cmplwi %r0, 0xfd
	beq- _5a0
	mr %r3, %r29
	addi %r4, %r1, 0x40
	li %r5, 0x10
	bl sub_190020
	cmpwi %r3, 0x0
	ble- _5a0
	lbz %r0, 0x9d(%r1)
	extsb. %r0, %r0
	bne- _5a0
	lwz %r0, 0x44(%r1)
	rlwinm. %r0, %r0, 0, 17, 15
	beq- _584
	li %r31, 0x1
_584:
	lbz %r0, 0x9c(%r1)
	cmplwi %r0, 0x2
	bne- _5a0
	lwz %r0, 0xa4(%r1)
	rlwinm. %r0, %r0, 0, 21, 19
	beq- _5a0
	li %r31, 0x1
_5a0:
	addi %r29, %r29, 0x1
_5a4:
	cmpwi %r29, 0x4
	bge- _5b4
	cmpwi %r31, 0x0
	beq+ _530
_5b4:
	cmpwi %r31, 0x0
	bne- _6f0
	addi %r3, %r1, 0x10
	bl sub_1a80ec
	lis %r6, 0x8024
	li %r0, 0x2
	addi %r6, %r6, 0x4f50
	li %r3, 0x0
	li %r8, 0x0
	li %r5, 0xff
	mtctr %r0
_5e0:
	clrlwi  %r0, %r8, 24
	addi %r4, %r1, 0x10
	mulli %r0, %r0, 0xc
	add %r4, %r4, %r0
	lbz %r0, 0xa(%r4)
	extsb %r0, %r0
	cmpwi %r0, -0x1
	beq- _60c
	cmpwi %r0, 0x0
	beq- _628
	b _650
_60c:
	clrlslwi  %r0, %r8, 24, 1
	clrlslwi  %r7, %r8, 24, 2
	add %r4, %r30, %r0
	lwzx %r0, %r6, %r7
	sth %r5, 0xcce(%r4)
	or %r3, %r3, %r0
	b _65c
_628:
	clrlslwi  %r0, %r8, 24, 1
	lhz %r4, 0x0(%r4)
	add %r7, %r30, %r0
	lhz %r0, 0xcce(%r7)
	andc %r0, %r4, %r0
	sth %r4, 0xcce(%r7)
	clrlwi. %r0, %r0, 16
	beq- _65c
	li %r31, 0x1
	b _65c
_650:
	clrlslwi  %r0, %r8, 24, 1
	add %r4, %r30, %r0
	sth %r5, 0xcce(%r4)
_65c:
	addi %r8, %r8, 0x1
	addi %r4, %r1, 0x10
	clrlwi  %r0, %r8, 24
	mulli %r0, %r0, 0xc
	add %r4, %r4, %r0
	lbz %r0, 0xa(%r4)
	extsb %r0, %r0
	cmpwi %r0, -0x1
	beq- _68c
	cmpwi %r0, 0x0
	beq- _6a8
	b _6d0
_68c:
	clrlslwi  %r0, %r8, 24, 1
	clrlslwi  %r7, %r8, 24, 2
	add %r4, %r30, %r0
	lwzx %r0, %r6, %r7
	sth %r5, 0xcce(%r4)
	or %r3, %r3, %r0
	b _6dc
_6a8:
	clrlslwi  %r0, %r8, 24, 1
	lhz %r4, 0x0(%r4)
	add %r7, %r30, %r0
	lhz %r0, 0xcce(%r7)
	andc %r0, %r4, %r0
	sth %r4, 0xcce(%r7)
	clrlwi. %r0, %r0, 16
	beq- _6dc
	li %r31, 0x1
	b _6dc
_6d0:
	clrlslwi  %r0, %r8, 24, 1
	add %r4, %r30, %r0
	sth %r5, 0xcce(%r4)
_6dc:
	addi %r8, %r8, 0x1
	bdnz+ _5e0
	cmpwi %r3, 0x0
	beq- _6f0
	bl sub_1a7d7c
_6f0:
	mr %r3, %r31
	lwz %r31, 0x88c(%r1)
	lwz %r30, 0x888(%r1)
	lwz %r29, 0x884(%r1)
	lwz %r0, 0x894(%r1)
	mtlr %r0
	addi %r1, %r1, 0x890
	blr

	.global t1_710
t1_710:
	.incbin "basemain.dol", 0x2c70, 0x6e4

	.global sub_df4
sub_df4: # 0x800080b4
	blr
_df8:
	stwu %r1, -0x150(%r1)
	mflr %r0
	stw %r0, 0x154(%r1)
	stfd %f31, 0x140(%r1)
	psq_st 31, 0x148, 1, 0, 0
	stfd %f30, 0x130(%r1)
	psq_st 30, 0x138, 1, 0, 0
	lis %r0, 0x4330
	stw %r31, 0x12c(%r1)
	stw %r30, 0x128(%r1)
	mr %r30, %r3
	stw %r29, 0x124(%r1)
	li %r29, 0x0
	lwz %r4, -0x6c40(%r13)
	stw %r0, 0x110(%r1)
	lwz %r4, 0x48(%r4)
	stw %r0, 0x118(%r1)
	cmpwi %r4, 0x1
	blt- _e4c
	cmpwi %r4, 0x3
	ble- _e58
_e4c:
	cmpwi %r4, 0x4
	beq- _e60
	b _e64
_e58:
	lwz %r29, 0x1c(%r3)
	b _e64
_e60:
	lwz %r29, 0x20(%r3)
_e64:
	cmpwi %r29, 0x0
	beq- _18a4
	addi %r3, %r1, 0x20
	bl sub_16c080
	addi %r3, %r1, 0x10
	addi %r4, %r1, 0x14
	addi %r5, %r1, 0x18
	addi %r6, %r1, 0x1c
	bl sub_16c138
	lwz %r4, -0x6c38(%r13)
	lwz %r3, -0x6c00(%r13)
	lwz %r4, 0x44(%r4)
	lwz %r0, 0x58(%r3)
	lwz %r31, 0x0(%r4)
	cmpwi %r0, 0x1
	lfd %f5, -0x7fb8(%r2)
	lhz %r0, 0x6(%r31)
	stw %r0, 0x11c(%r1)
	neg %r0, %r0
	lhz %r3, 0x4(%r31)
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
	bne- _f1c
	lfs %f0, -0x7fc4(%r2)
	fmuls %f3, %f3, %f0
	fmuls %f4, %f4, %f0
_f1c:
	addi %r3, %r1, 0x68
	bl sub_1937ec
	addi %r3, %r1, 0x68
	li %r4, 0x1
	bl sub_16bcbc
	lhz %r3, 0x4(%r31)
	lhz %r0, 0x6(%r31)
	stw %r3, 0x114(%r1)
	lfs %f1, -0x7fd0(%r2)
	stw %r0, 0x11c(%r1)
	lfd %f4, -0x7fb0(%r2)
	fmr  %f2, %f1
	lfd %f3, 0x110(%r1)
	fmr  %f5, %f1
	lfd %f0, 0x118(%r1)
	fsubs %f3, %f3, %f4
	lfs %f6, -0x7fcc(%r2)
	fsubs %f4, %f0, %f4
	bl sub_16c054
	lhz %r5, 0x4(%r31)
	li %r3, 0x0
	lhz %r6, 0x6(%r31)
	li %r4, 0x0
	bl sub_16c0d0
	addi %r3, %r1, 0x38
	bl sub_1929a4
	addi %r3, %r1, 0x38
	li %r4, 0x0
	bl sub_16bdac
	li %r3, 0x0
	bl sub_16beb4
	addi %r3, %r1, 0xa8
	bl sub_b0bc0
	addi %r3, %r1, 0xa8
	li %r4, 0x1
	clrrwi  %r31, %r3, 24
	li %r5, 0x1
	addis %r0, %r31, 0x8000
	li %r6, 0x1
	cmplwi %r0, 0x0
	li %r7, 0x1
	li %r8, 0x1
	li %r9, 0x1
	beq- _fe0
	clrrwi  %r3, %r3, 23
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0x0
	beq- _fe0
	li %r9, 0x0
_fe0:
	cmpwi %r9, 0x0
	bne- _1000
	addi %r0, %r1, 0xa8
	clrrwi  %r3, %r0, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1000
	li %r8, 0x0
_1000:
	cmpwi %r8, 0x0
	bne- _1018
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _1018
	li %r7, 0x0
_1018:
	cmpwi %r7, 0x0
	bne- _1038
	addi %r0, %r1, 0xa8
	clrrwi  %r3, %r0, 23
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0x0
	beq- _1038
	li %r6, 0x0
_1038:
	cmpwi %r6, 0x0
	bne- _1058
	addi %r0, %r1, 0xa8
	clrrwi  %r3, %r0, 27
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1058
	li %r5, 0x0
_1058:
	cmpwi %r5, 0x0
	bne- _1078
	addi %r0, %r1, 0xa8
	clrrwi  %r3, %r0, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	beq- _1078
	li %r4, 0x0
_1078:
	cmpwi %r4, 0x0
	bne- _10a0
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x381c
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x3850
	li %r4, 0x41
	crxor 6, 6, 6
	bl sub_1ec50
_10a0:
	clrrwi  %r10, %r30, 24
	li %r4, 0x1
	addis %r0, %r10, 0x8000
	li %r5, 0x1
	cmplwi %r0, 0x0
	li %r6, 0x1
	li %r7, 0x1
	li %r8, 0x1
	li %r9, 0x1
	beq- _10dc
	clrrwi  %r3, %r30, 23
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0x0
	beq- _10dc
	li %r9, 0x0
_10dc:
	cmpwi %r9, 0x0
	bne- _10f8
	clrrwi  %r3, %r30, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _10f8
	li %r8, 0x0
_10f8:
	cmpwi %r8, 0x0
	bne- _1110
	addis %r0, %r10, 0x4000
	cmplwi %r0, 0x0
	beq- _1110
	li %r7, 0x0
_1110:
	cmpwi %r7, 0x0
	bne- _112c
	clrrwi  %r3, %r30, 23
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0x0
	beq- _112c
	li %r6, 0x0
_112c:
	cmpwi %r6, 0x0
	bne- _1148
	clrrwi  %r3, %r30, 27
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1148
	li %r5, 0x0
_1148:
	cmpwi %r5, 0x0
	bne- _1164
	clrrwi  %r3, %r30, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	beq- _1164
	li %r4, 0x0
_1164:
	cmpwi %r4, 0x0
	bne- _118c
	lis %r3, 0x8027
	lis %r5, 0x8027
	mr %r6, %r30
	li %r4, 0x42
	subi %r3, %r3, 0x3860
	subi %r5, %r5, 0x3898
	crxor 6, 6, 6
	bl sub_1ec50
_118c:
	addis %r0, %r31, 0x8000
	stw %r30, 0xf0(%r1)
	cmplwi %r0, 0x0
	li %r6, 0x0
	beq- _11f8
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _11f8
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _11f8
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _11f8
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _11f8
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _11f8
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _11fc
_11f8:
	li %r6, 0x1
_11fc:
	cmpwi %r6, 0x0
	bne- _1224
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x38ac
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x38e0
	li %r4, 0x5d
	crxor 6, 6, 6
	bl sub_1ec50
_1224:
	addis %r0, %r31, 0x8000
	lfs %f0, -0x7fc0(%r2)
	cmplwi %r0, 0x0
	stfs %f0, 0xfc(%r1)
	li %r6, 0x0
	beq- _1294
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _1294
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1294
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _1294
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _1294
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1294
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _1298
_1294:
	li %r6, 0x1
_1298:
	cmpwi %r6, 0x0
	bne- _12c0
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x38f4
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x3928
	li %r4, 0x62
	crxor 6, 6, 6
	bl sub_1ec50
_12c0:
	lfs %f0, -0x7fcc(%r2)
	addi %r3, %r1, 0xa8
	stfs %f0, 0xf8(%r1)
	lfs %f1, -0x7fbc(%r2)
	bl sub_ac640
	addis %r0, %r31, 0x8000
	li %r6, 0x0
	cmplwi %r0, 0x0
	beq- _133c
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _133c
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _133c
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _133c
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _133c
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _133c
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _1340
_133c:
	li %r6, 0x1
_1340:
	cmpwi %r6, 0x0
	bne- _1368
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x393c
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x3970
	li %r4, 0xd4
	crxor 6, 6, 6
	bl sub_1ec50
_1368:
	clrrwi  %r30, %r29, 24
	li %r4, 0x1
	addis %r0, %r30, 0x8000
	li %r5, 0x1
	cmplwi %r0, 0x0
	li %r6, 0x1
	li %r7, 0x1
	li %r8, 0x1
	li %r9, 0x1
	beq- _13a4
	clrrwi  %r3, %r29, 23
	addis %r0, %r3, 0x7f00
	cmplwi %r0, 0x0
	beq- _13a4
	li %r9, 0x0
_13a4:
	cmpwi %r9, 0x0
	bne- _13c0
	clrrwi  %r3, %r29, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _13c0
	li %r8, 0x0
_13c0:
	cmpwi %r8, 0x0
	bne- _13d8
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0x0
	beq- _13d8
	li %r7, 0x0
_13d8:
	cmpwi %r7, 0x0
	bne- _13f4
	clrrwi  %r3, %r29, 23
	addis %r0, %r3, 0x3f00
	cmplwi %r0, 0x0
	beq- _13f4
	li %r6, 0x0
_13f4:
	cmpwi %r6, 0x0
	bne- _1410
	clrrwi  %r3, %r29, 27
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1410
	li %r5, 0x0
_1410:
	cmpwi %r5, 0x0
	bne- _142c
	clrrwi  %r3, %r29, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	beq- _142c
	li %r4, 0x0
_142c:
	cmpwi %r4, 0x0
	bne- _1454
	lis %r3, 0x8027
	lis %r5, 0x8027
	mr %r6, %r29
	li %r4, 0xd5
	subi %r3, %r3, 0x3984
	subi %r5, %r5, 0x39b8
	crxor 6, 6, 6
	bl sub_1ec50
_1454:
	mr %r3, %r29
	bl sub_fb78
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl sub_b1ad0
	addis %r0, %r31, 0x8000
	fmr  %f30, %f1
	cmplwi %r0, 0x0
	li %r6, 0x0
	beq- _14d8
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _14d8
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _14d8
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _14d8
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _14d8
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _14d8
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _14dc
_14d8:
	li %r6, 0x1
_14dc:
	cmpwi %r6, 0x0
	bne- _1504
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x39cc
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x3a00
	li %r4, 0xde
	crxor 6, 6, 6
	bl sub_1ec50
_1504:
	addis %r0, %r30, 0x8000
	li %r5, 0x0
	cmplwi %r0, 0x0
	beq- _1568
	clrrwi  %r4, %r29, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _1568
	clrrwi  %r3, %r29, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1568
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0x0
	beq- _1568
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _1568
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1568
	clrrwi  %r3, %r29, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _156c
_1568:
	li %r5, 0x1
_156c:
	cmpwi %r5, 0x0
	bne- _1594
	lis %r3, 0x8027
	lis %r5, 0x8027
	mr %r6, %r29
	li %r4, 0xdf
	subi %r3, %r3, 0x3a14
	subi %r5, %r5, 0x3a48
	crxor 6, 6, 6
	bl sub_1ec50
_1594:
	mr %r3, %r29
	bl sub_fb78
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl sub_b1d80
	addis %r0, %r31, 0x8000
	li %r3, -0x1
	fmr  %f31, %f1
	cmplwi %r0, 0x0
	stw %r3, 0x8(%r1)
	li %r6, 0x0
	beq- _1620
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _1620
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1620
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _1620
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _1620
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1620
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _1624
_1620:
	li %r6, 0x1
_1624:
	cmpwi %r6, 0x0
	bne- _164c
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x37d8
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x380c
	li %r4, 0x87
	crxor 6, 6, 6
	bl sub_1ec50
_164c:
	lbz %r6, 0x8(%r1)
	addi %r3, %r1, 0xa8
	lbz %r5, 0x9(%r1)
	lbz %r4, 0xa(%r1)
	lbz %r0, 0xb(%r1)
	stb %r6, 0xc0(%r1)
	stb %r5, 0xc1(%r1)
	stb %r4, 0xc2(%r1)
	stb %r0, 0xc3(%r1)
	bl sub_acb90
	addi %r3, %r1, 0xa8
	bl sub_abb90
	addis %r0, %r31, 0x8000
	li %r6, 0x0
	cmplwi %r0, 0x0
	beq- _16e4
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _16e4
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _16e4
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _16e4
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _16e4
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _16e4
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _16e8
_16e4:
	li %r6, 0x1
_16e8:
	cmpwi %r6, 0x0
	bne- _1710
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x3794
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x37c8
	li %r4, 0xf9
	crxor 6, 6, 6
	bl sub_1ec50
_1710:
	fneg  %f1, %f30
	lfs %f2, -0x7fc8(%r2)
	fneg  %f0, %f31
	addis %r0, %r31, 0x8000
	cmplwi %r0, 0x0
	li %r6, 0x0
	fmuls %f1, %f2, %f1
	fmuls %f0, %f2, %f0
	stfs %f1, 0xd4(%r1)
	stfs %f0, 0xd8(%r1)
	beq- _1794
	addi %r5, %r1, 0xa8
	clrrwi  %r4, %r5, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _1794
	clrrwi  %r3, %r5, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1794
	addis %r0, %r31, 0x4000
	cmplwi %r0, 0x0
	beq- _1794
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _1794
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1794
	clrrwi  %r3, %r5, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _1798
_1794:
	li %r6, 0x1
_1798:
	cmpwi %r6, 0x0
	bne- _17c0
	lis %r3, 0x8027
	lis %r5, 0x8027
	subi %r3, %r3, 0x3a5c
	addi %r6, %r1, 0xa8
	subi %r5, %r5, 0x3a90
	li %r4, 0x100
	crxor 6, 6, 6
	bl sub_1ec50
_17c0:
	addis %r0, %r30, 0x8000
	li %r5, 0x0
	cmplwi %r0, 0x0
	beq- _1824
	clrrwi  %r4, %r29, 23
	addis %r0, %r4, 0x7f00
	cmplwi %r0, 0x0
	beq- _1824
	clrrwi  %r3, %r29, 27
	addis %r0, %r3, 0x7000
	cmplwi %r0, 0x0
	beq- _1824
	addis %r0, %r30, 0x4000
	cmplwi %r0, 0x0
	beq- _1824
	addis %r0, %r4, 0x3f00
	cmplwi %r0, 0x0
	beq- _1824
	addis %r0, %r3, 0x3000
	cmplwi %r0, 0x0
	beq- _1824
	clrrwi  %r3, %r29, 14
	addis %r0, %r3, 0x2000
	cmplwi %r0, 0x0
	bne- _1828
_1824:
	li %r5, 0x1
_1828:
	cmpwi %r5, 0x0
	bne- _1850
	lis %r3, 0x8027
	lis %r5, 0x8027
	mr %r6, %r29
	li %r4, 0x101
	subi %r3, %r3, 0x3aa4
	subi %r5, %r5, 0x3ad8
	crxor 6, 6, 6
	bl sub_1ec50
_1850:
	mr %r3, %r29
	bl sub_fb78
	mr %r5, %r3
	mr %r4, %r29
	addi %r3, %r1, 0xa8
	bl sub_b2820
	lfs %f1, 0x20(%r1)
	lfs %f2, 0x24(%r1)
	lfs %f3, 0x28(%r1)
	lfs %f4, 0x2c(%r1)
	lfs %f5, 0x30(%r1)
	lfs %f6, 0x34(%r1)
	bl sub_16c054
	lwz %r3, 0x10(%r1)
	lwz %r4, 0x14(%r1)
	lwz %r5, 0x18(%r1)
	lwz %r6, 0x1c(%r1)
	bl sub_16c0d0
	addi %r3, %r1, 0xa8
	li %r4, -0x1
	bl sub_b0c20
_18a4:
	psq_l 31, 0x148, 1, 0, 0
	lfd %f31, 0x140(%r1)
	psq_l 30, 0x138, 1, 0, 0
	lfd %f30, 0x130(%r1)
	lwz %r31, 0x12c(%r1)
	lwz %r30, 0x128(%r1)
	lwz %r0, 0x154(%r1)
	lwz %r29, 0x124(%r1)
	mtlr %r0
	addi %r1, %r1, 0x150
	blr

	.global t1_18d0
t1_18d0:
	.incbin "basemain.dol", 0x3e30, 0x250
	
	.global sub_1b20
sub_1b20: # 0x80008de0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_42f4
	addi %r3, %r31, 0x54
	bl sub_df4
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x40(%r3)
	cmpwi %r3, 0x0
	beq- _1b60
	lwz %r12, 0x0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
_1b60:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1b74
sub_1b74: # 0x80008e34
	addi %r3, %r3, 0x54
	b _df8

	.global sub_1b7c
sub_1b7c:
	blr
	
	.global sub_1b80
sub_1b80:
	blr
	
	.global sub_1b84
sub_1b84: # 0x80008e44
	lis %r3, 0x802a
	subi %r3, %r3, 0x300
	blr
	
	.global t1_1b90
t1_1b90:
	.incbin "basemain.dol", 0x40f0, 0x12f8

	.global sub_2e88
sub_2e88: # 0x8000a148
	stwu %r1, -0x70(%r1)
	mflr %r0
	stw %r0, 0x74(%r1)
	stmw %r23, 0x4c(%r1)
	mr %r23, %r3
	mr %r24, %r4
	mr %r30, %r5
	bl sub_1a3a14
	lis %r4, 0x8024
	slwi  %r0, %r30, 3
	addi %r4, %r4, 0x5728
	mr %r28, %r3
	lwzx %r25, %r4, %r0
	addi %r4, %r1, 0x8
	li %r31, 0x0
	li %r26, 0x0
	mr %r3, %r25
	bl sub_156f5c
	cmpwi %r3, 0x0
	beq- _2f54
	lwz %r27, 0x3c(%r1)
	mr %r3, %r24
	lwz %r12, 0x0(%r24)
	li %r5, 0x20
	addi %r0, %r27, 0x1f
	clrrwi  %r29, %r0, 5
	lwz %r12, 0x14(%r12)
	mr %r4, %r29
	mtctr %r12
	bctrl 
	mr %r26, %r3
	mr %r5, %r29
	mr %r4, %r26
	addi %r3, %r1, 0x8
	li %r6, 0x0
	li %r7, 0x2
	bl sub_1574d4
	mr %r29, %r3
	addi %r3, %r1, 0x8
	bl sub_157208
	cmplw %r29, %r27
	bge- _2f50
	lwz %r12, 0x0(%r24)
	mr %r3, %r24
	mr %r4, %r26
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl 
	li %r26, 0x0
	b _2f54
_2f50:
	mr %r31, %r29
_2f54:
	cmpwi %r26, 0x0
	beq- _30bc
	slwi  %r0, %r30, 2
	mr %r3, %r24
	add %r29, %r23, %r0
	li %r5, 0x20
	stw %r26, 0x1c(%r29)
	stw %r24, 0x14(%r29)
	lwz %r12, 0x0(%r24)
	lwz %r4, 0x20(%r26)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	mr %r4, %r3
	lwz %r3, 0x1c(%r29)
	bl sub_19ff7c
	lwz %r26, 0x1c(%r29)
	mr %r3, %r26
	bl sub_3140
	lis %r29, 0x8024
	lwz %r4, 0x20(%r26)
	addi %r3, %r29, 0x5738
	crxor 6, 6, 6
	bl sub_19b270
	addi %r29, %r29, 0x5738
	lwz %r4, 0x24(%r26)
	addi %r3, %r29, 0x16
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x28(%r26)
	addi %r3, %r29, 0x2f
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x2c(%r26)
	addi %r3, %r29, 0x48
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x34(%r26)
	addi %r3, %r29, 0x61
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x38(%r26)
	addi %r3, %r29, 0x7a
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x3c(%r26)
	addi %r3, %r29, 0x93
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r0, 0x1c(%r26)
	cmplwi %r0, 0x2
	blt- _3044
	lwz %r4, 0x40(%r26)
	addi %r3, %r29, 0xac
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x44(%r26)
	addi %r3, %r29, 0xc5
	crxor 6, 6, 6
	bl sub_19b270
_3044:
	lwz %r0, 0x1c(%r26)
	cmplwi %r0, 0x3
	blt- _3068
	lis %r3, 0x8024
	lwz %r4, 0x48(%r26)
	addi %r3, %r3, 0x5738
	addi %r3, %r3, 0xde
	crxor 6, 6, 6
	bl sub_19b270
_3068:
	lis %r29, 0x8024
	addi %r29, %r29, 0x5738
	addi %r3, %r29, 0xf7
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	subf %r6, %r28, %r3
	addi %r3, %r4, 0x4dd3
	mr %r4, %r30
	srwi  %r0, %r0, 2
	mr %r5, %r31
	mulhwu %r0, %r3, %r0
	addi %r3, %r29, 0xf9
	srwi  %r0, %r0, 6
	divwu %r6, %r6, %r0
	crxor 6, 6, 6
	bl sub_19b270
	b _30e0
_30bc:
	lis %r3, 0x8024
	mr %r4, %r30
	addi %r3, %r3, 0x5738
	mr %r5, %r25
	addi %r3, %r3, 0x12a
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x1
	b _30e4
_30e0:
	li %r3, 0x0
_30e4:
	lmw %r23, 0x4c(%r1)
	lwz %r0, 0x74(%r1)
	mtlr %r0
	addi %r1, %r1, 0x70
	blr
	
	.global t1_30f8
t1_30f8:
	.incbin "basemain.dol", 0x5658, 0x48

	.global sub_3140
sub_3140: # 0x8000a400
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	lis %r3, 0x8024
	addi %r31, %r3, 0x5738
	lwz %r4, 0x0(%r28)
	addi %r3, %r31, 0x153
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0xc(%r28)
	addi %r3, %r31, 0x169
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x10(%r28)
	addi %r3, %r31, 0x17f
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x14(%r28)
	addi %r3, %r31, 0x198
	mr %r5, %r4
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x18(%r28)
	addi %r3, %r31, 0x1b6
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r4, 0x1c(%r28)
	addi %r3, %r31, 0x1cc
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x1e2
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r30, 0x10(%r28)
	li %r29, 0x0
	b _3210
_31e4:
	lwz %r5, 0x0(%r30)
	cmpwi %r5, 0x0
	beq- _3208
	lwz %r0, 0x4(%r30)
	mr %r4, %r29
	addi %r3, %r31, 0x1e4
	add %r6, %r5, %r0
	crxor 6, 6, 6
	bl sub_19b270
_3208:
	addi %r30, %r30, 0x8
	addi %r29, %r29, 0x1
_3210:
	lwz %r0, 0xc(%r28)
	cmplw %r29, %r0
	blt+ _31e4
	lis %r3, 0x8024
	addi %r3, %r3, 0x5738
	addi %r3, %r3, 0x208
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_3250
t1_3250:
	.incbin "basemain.dol", 0x57b0, 0x638
	
	.global sub_3888
sub_3888: # 0x8000ab48
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r4, 0x0
	mr %r5, %r4
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	bne- _38ac
	lwz %r5, 0xb0(%r3)
_38ac:
	cmpwi %r5, 0x0
	beq- _393c
	lwz %r4, -0x7fec(%r13)
	cmpwi %r4, 0x0
	beq- _3920
	lwz %r3, -0x6c00(%r13)
	addi %r7, %r1, 0x8
	li %r6, 0x0
	li %r8, 0x0
	bl sub_4010
	cmpwi %r3, 0x0
	stw %r3, 0x94(%r31)
	beq- _3908
	lwz %r4, 0x8(%r1)
	li %r5, 0x0
	bl sub_21f180
	lis %r3, 0x8024
	lwz %r4, -0x7fec(%r13)
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0xb9
	crxor 6, 6, 6
	bl sub_19b270
	b _3920
_3908:
	lis %r3, 0x8024
	lwz %r4, -0x7fec(%r13)
	addi %r3, %r3, 0x5b24
	addi %r3, %r3, 0xdb
	crxor 6, 6, 6
	bl sub_19b270
_3920:
	lwz %r3, 0x88(%r31)
	li %r0, 0x0
	stb %r0, 0x0(%r3)
	lwz %r3, 0x8c(%r31)
	stb %r0, 0x0(%r3)
	lwz %r3, 0x90(%r31)
	stb %r0, 0x0(%r3)
_393c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_3950
t1_3950:
	.incbin "basemain.dol", 0x5eb0, 0x6c0
	
	.global sub_4010
sub_4010: # 0x8000b2d0
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
	bl sub_b3c0
	lis %r4, 0x8001
	stw %r27, 0x40(%r31)
	lwz %r3, 0xe8(%r31)
	subi %r4, %r4, 0x4b64
	stb %r28, 0x44(%r31)
	li %r5, 0x0
	li %r6, 0x0
	stw %r29, 0x48(%r31)
	stw %r30, 0x4c(%r31)
	bl sub_23aa9c
	li %r30, 0x0
	b _41b4
_406c:
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 0x4(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 0x4(%r3)
	lwz %r12, 0x8(%r12)
	mtctr %r12
	bctrl 
	lwz %r3, -0x6c40(%r13)
	lbz %r0, 0x51(%r3)
	cmpwi %r0, 0x0
	beq- _40d8
	cmpwi %r30, 0x0
	bne- _40c8
	li %r3, 0x0
	bl sub_1b37cc
	lwz %r3, 0xe8(%r31)
	lwz %r3, 0x8(%r3)
	bl sub_1a34c4
_40c8:
	lwz %r3, -0x6c40(%r13)
	li %r30, 0x1
	bl sub_1b20
	b _4108
_40d8:
	cmpwi %r30, 0x0
	beq- _40ec
	lwz %r3, 0xe8(%r31)
	lwz %r3, 0x8(%r3)
	bl sub_1a322c
_40ec:
	lwz %r3, -0x6c38(%r13)
	li %r30, 0x0
	lwz %r3, 0x54(%r3)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x24(%r12)
	mtctr %r12
	bctrl 
_4108:
	lbz %r0, 0xb4(%r31)
	cmpwi %r0, 0x0
	beq- _4130
	li %r3, 0x1
	bl sub_1b37cc
	bl sub_1b3644
	bl sub_1b268c
	bl sub_1b268c
	bl sub_1a120c
	b _4158
_4130:
	lbz %r0, 0xb5(%r31)
	cmpwi %r0, 0x0
	beq- _4158
	li %r3, 0x1
	bl sub_1b37cc
	bl sub_1b3644
	bl sub_1b268c
	bl sub_1b268c
	li %r3, 0x0
	bl sub_1a1328
_4158:
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 0x4(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r30, 0x0
	beq- _4184
	lwz %r3, -0x6c40(%r13)
	bl sub_1b74
	b _419c
_4184:
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x54(%r3)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x28(%r12)
	mtctr %r12
	bctrl 
_419c:
	lwz %r3, -0x6c38(%r13)
	lwz %r3, 0x4c(%r3)
	lwz %r12, 0x4(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
_41b4:
	lwz %r3, 0xe8(%r31)
	bl sub_23ab1c
	cmpwi %r3, 0x0
	bne+ _406c
	lwz %r3, 0x50(%r31)
	lmw %r27, 0xc(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_41dc
t1_41dc:
	.incbin "basemain.dol", 0x673c, 0x8c

	.global sub_4268
sub_4268: # 0x8000b528
	mr %r9, %r3
	mr %r8, %r4
	mr %r0, %r5
	mr %r7, %r6
	mr %r5, %r8
	lwz %r3, -0x6c00(%r13)
	mr %r4, %r9
	mr %r6, %r0
	li %r8, 0x0
	b sub_4010
	
	.global t1_4290
t1_4290:
	.incbin "basemain.dol", 0x67f0, 0x64

	.global sub_42f4
sub_42f4: # 0x8000b5b4
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0x0
_4308:
	clrlwi  %r3, %r31, 24
	li %r4, 0x0
	bl sub_1b9b64
	addi %r31, %r31, 0x1
	cmplwi %r31, 0x4
	blt+ _4308
	li %r31, 0x0
_4324:
	clrlwi  %r3, %r31, 24
	li %r4, 0x0
	bl sub_1a85a8
	addi %r31, %r31, 0x1
	cmplwi %r31, 0x4
	blt+ _4324
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global t1_4350
t1_4350:
	.incbin "basemain.dol", 0x68b0, 0x3080
	
	.global sub_73d0
sub_73d0: # 0x8000e690
	stwu %r1, -0x10(%r1)
	mflr %r0
	xor %r6, %r3, %r4
	cmplwi %r5, 0x20
	stw %r0, 0x14(%r1)
	cntlzw %r0, %r6
	slw %r0, %r3, %r0
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	srwi  %r7, %r0, 31
	blt- _7438
	clrlwi. %r0, %r6, 30
	beq- _741c
	cmpwi %r7, 0x0
	bne- _7414
	bl sub_76a4
	b _7430
_7414:
	bl sub_7764
	b _7430
_741c:
	cmpwi %r7, 0x0
	bne- _742c
	bl sub_7540
	b _7430
_742c:
	bl sub_75fc
_7430:
	mr %r3, %r31
	b _7488
_7438:
	cmpwi %r7, 0x0
	bne- _7464
	subi %r4, %r4, 0x1
	subi %r3, %r3, 0x1
	addi %r5, %r5, 0x1
	b _7458
_7450:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r3)
_7458:
	subic. %r5, %r5, 0x1
	bne+ _7450
	b _7484
_7464:
	add %r4, %r4, %r5
	add %r3, %r3, %r5
	addi %r5, %r5, 0x1
	b _747c
_7474:
	lbzu %r0, -0x1(%r4)
	stbu %r0, -0x1(%r3)
_747c:
	subic. %r5, %r5, 0x1
	bne+ _7474
_7484:
	mr %r3, %r31
_7488:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global t1_749c
t1_749c:
	.incbin "basemain.dol", 0x99fc, 0x58

	.global sub_74f4
sub_74f4: # 0x8000e7b4
	subi %r7, %r4, 0x1
	subi %r6, %r3, 0x1
	addi %r4, %r5, 0x1
	b _7530
_7504:
	lbzu %r3, 0x1(%r6)
	lbzu %r0, 0x1(%r7)
	cmplw %r3, %r0
	beq- _7530
	lbz %r4, 0x0(%r6)
	li %r3, 0x1
	lbz %r0, 0x0(%r7)
	cmplw %r4, %r0
	bgelr- 
	li %r3, -0x1
	blr
_7530:
	subic. %r4, %r4, 0x1
	bne+ _7504
	li %r3, 0x0
	blr

	.global sub_7540
sub_7540: # 0x8000e800
	neg %r0, %r3
	subi %r7, %r4, 0x1
	clrlwi. %r6, %r0, 30
	subi %r3, %r3, 0x1
	beq- _7568
	subf %r5, %r6, %r5
_7558:
	lbzu %r0, 0x1(%r7)
	subic. %r6, %r6, 0x1
	stbu %r0, 0x1(%r3)
	bne+ _7558
_7568:
	srwi. %r4, %r5, 5
	subi %r6, %r7, 0x3
	subi %r3, %r3, 0x3
	beq- _75c0
_7578:
	lwz %r0, 0x4(%r6)
	subic. %r4, %r4, 0x1
	stw %r0, 0x4(%r3)
	lwz %r0, 0x8(%r6)
	stw %r0, 0x8(%r3)
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
	bne+ _7578
_75c0:
	extrwi. %r4, %r5, 3, 27
	beq- _75d8
_75c8:
	lwzu %r0, 0x4(%r6)
	subic. %r4, %r4, 0x1
	stwu %r0, 0x4(%r3)
	bne+ _75c8
_75d8:
	clrlwi. %r5, %r5, 30
	addi %r4, %r6, 0x3
	addi %r3, %r3, 0x3
	beqlr- 
_75e8:
	lbzu %r0, 0x1(%r4)
	subic. %r5, %r5, 0x1
	stbu %r0, 0x1(%r3)
	bne+ _75e8
	blr

	.global sub_75fc
sub_75fc: # 0x8000e8bc
	add %r6, %r3, %r5
	add %r4, %r4, %r5
	clrlwi. %r3, %r6, 30
	beq- _7620
	subf %r5, %r3, %r5
_7610:
	lbzu %r0, -0x1(%r4)
	subic. %r3, %r3, 0x1
	stbu %r0, -0x1(%r6)
	bne+ _7610
_7620:
	srwi. %r3, %r5, 5
	beq- _7670
_7628:
	lwz %r0, -0x4(%r4)
	subic. %r3, %r3, 0x1
	stw %r0, -0x4(%r6)
	lwz %r0, -0x8(%r4)
	stw %r0, -0x8(%r6)
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
	bne+ _7628
_7670:
	extrwi. %r3, %r5, 3, 27
	beq- _7688
_7678:
	lwzu %r0, -0x4(%r4)
	subic. %r3, %r3, 0x1
	stwu %r0, -0x4(%r6)
	bne+ _7678
_7688:
	clrlwi. %r5, %r5, 30
	beqlr- 
_7690:
	lbzu %r0, -0x1(%r4)
	subic. %r5, %r5, 0x1
	stbu %r0, -0x1(%r6)
	bne+ _7690
	blr

	.global sub_76a4
sub_76a4: # 0x8000e964
	neg %r0, %r3
	subi %r7, %r4, 0x1
	clrlwi. %r6, %r0, 30
	subi %r3, %r3, 0x1
	beq- _76cc
	subf %r5, %r6, %r5
_76bc:
	lbzu %r0, 0x1(%r7)
	subic. %r6, %r6, 0x1
	stbu %r0, 0x1(%r3)
	bne+ _76bc
_76cc:
	addi %r0, %r7, 0x1
	subi %r4, %r3, 0x3
	clrlwi  %r10, %r0, 30
	srwi  %r6, %r5, 3
	subf %r7, %r10, %r7
	clrlslwi  %r11, %r0, 30, 3
	lwzu %r8, 0x1(%r7)
	subfic %r12, %r11, 0x20
_76ec:
	lwz %r9, 0x4(%r7)
	slw %r3, %r8, %r11
	subic. %r6, %r6, 0x1
	srw %r0, %r9, %r12
	or %r0, %r3, %r0
	stw %r0, 0x4(%r4)
	slw %r3, %r9, %r11
	lwzu %r8, 0x8(%r7)
	srw %r0, %r8, %r12
	or %r0, %r3, %r0
	stwu %r0, 0x8(%r4)
	bne+ _76ec
	rlwinm. %r0, %r5, 0, 29, 29
	beq- _7738
	lwzu %r0, 0x4(%r7)
	slw %r3, %r8, %r11
	srw %r0, %r0, %r12
	or %r0, %r3, %r0
	stwu %r0, 0x4(%r4)
_7738:
	clrlwi. %r5, %r5, 30
	addi %r6, %r7, 0x3
	addi %r3, %r4, 0x3
	beqlr- 
	subfic %r0, %r10, 0x4
	subf %r6, %r0, %r6
_7750:
	lbzu %r0, 0x1(%r6)
	subic. %r5, %r5, 0x1
	stbu %r0, 0x1(%r3)
	bne+ _7750
	blr

	.global sub_7764
sub_7764: # 0x8000ea24
	add %r12, %r3, %r5
	add %r11, %r4, %r5
	clrlwi. %r3, %r12, 30
	beq- _7788
	subf %r5, %r3, %r5
_7778:
	lbzu %r0, -0x1(%r11)
	subic. %r3, %r3, 0x1
	stbu %r0, -0x1(%r12)
	bne+ _7778
_7788:
	clrlslwi  %r9, %r11, 30, 3
	clrlwi  %r8, %r11, 30
	subfic %r10, %r9, 0x20
	srwi  %r4, %r5, 3
	subfic %r0, %r8, 0x4
	add %r11, %r11, %r0
	lwzu %r6, -0x4(%r11)
_77a4:
	lwz %r7, -0x4(%r11)
	srw %r0, %r6, %r10
	subic. %r4, %r4, 0x1
	slw %r3, %r7, %r9
	or %r0, %r3, %r0
	stw %r0, -0x4(%r12)
	srw %r0, %r7, %r10
	lwzu %r6, -0x8(%r11)
	slw %r3, %r6, %r9
	or %r0, %r3, %r0
	stwu %r0, -0x8(%r12)
	bne+ _77a4
	rlwinm. %r0, %r5, 0, 29, 29
	beq- _77f0
	lwzu %r3, -0x4(%r11)
	srw %r0, %r6, %r10
	slw %r3, %r3, %r9
	or %r0, %r3, %r0
	stwu %r0, -0x4(%r12)
_77f0:
	clrlwi. %r5, %r5, 30
	beqlr- 
	add %r11, %r11, %r8
_77fc:
	lbzu %r0, -0x1(%r11)
	subic. %r5, %r5, 0x1
	stbu %r0, -0x1(%r12)
	bne+ _77fc
	blr
	
	.global t1_7810
t1_7810:
	.incbin "basemain.dol", 0x9d70, 0x10
	
	.global sub_7820
sub_7820: # 0x8000eae0
	stwu %r1, -0x30(%r1)
	mflr %r0
	li %r7, 0x0
	lbz %r6, 0x1(%r3)
	stw %r0, 0x34(%r1)
	li %r8, 0x1
	extsb %r6, %r6
	stw %r31, 0x2c(%r1)
	cmpwi %r6, 0x25
	addi %r31, %r3, 0x1
	stw %r30, 0x28(%r1)
	mr %r30, %r5
	stw %r29, 0x24(%r1)
	mr %r29, %r4
	stb %r8, 0x8(%r1)
	stb %r7, 0x9(%r1)
	stb %r7, 0xa(%r1)
	stb %r7, 0xb(%r1)
	stb %r7, 0xc(%r1)
	stw %r7, 0x10(%r1)
	stw %r7, 0x14(%r1)
	bne- _789c
	stb %r6, 0xd(%r1)
	addi %r3, %r31, 0x1
	lwz %r4, 0x8(%r1)
	lwz %r0, 0xc(%r1)
	stw %r4, 0x0(%r5)
	stw %r0, 0x4(%r5)
	stw %r7, 0x8(%r5)
	stw %r7, 0xc(%r5)
	b _7dc0
_789c:
	li %r0, 0x2
_78a0:
	cmpwi %r6, 0x2d
	li %r4, 0x1
	beq- _78d0
	cmpwi %r6, 0x2b
	beq- _78d8
	cmpwi %r6, 0x20
	beq- _78e0
	cmpwi %r6, 0x23
	beq- _78f4
	cmpwi %r6, 0x30
	beq- _78fc
	b _7910
_78d0:
	stb %r7, 0x8(%r1)
	b _7914
_78d8:
	stb %r8, 0x9(%r1)
	b _7914
_78e0:
	lbz %r3, 0x9(%r1)
	cmplwi %r3, 0x1
	beq- _7914
	stb %r0, 0x9(%r1)
	b _7914
_78f4:
	stb %r8, 0xb(%r1)
	b _7914
_78fc:
	lbz %r3, 0x8(%r1)
	cmpwi %r3, 0x0
	beq- _7914
	stb %r0, 0x8(%r1)
	b _7914
_7910:
	li %r4, 0x0
_7914:
	cmpwi %r4, 0x0
	beq- _7928
	lbzu %r6, 0x1(%r31)
	extsb %r6, %r6
	b _78a0
_7928:
	cmpwi %r6, 0x2a
	bne- _7968
	mr %r3, %r29
	li %r4, 0x1
	bl sub_19450
	lwz %r0, 0x0(%r3)
	stw %r0, 0x10(%r1)
	cmpwi %r0, 0x0
	bge- _795c
	neg %r0, %r0
	li %r3, 0x0
	stb %r3, 0x8(%r1)
	stw %r0, 0x10(%r1)
_795c:
	lbzu %r6, 0x1(%r31)
	extsb %r6, %r6
	b _79cc
_7968:
	lis %r3, 0x8027
	subi %r3, %r3, 0x31f8
	lwz %r4, 0x38(%r3)
	b _7994
_7978:
	lwz %r0, 0x10(%r1)
	mulli %r0, %r0, 0xa
	add %r3, %r6, %r0
	lbzu %r6, 0x1(%r31)
	subi %r0, %r3, 0x30
	stw %r0, 0x10(%r1)
	extsb %r6, %r6
_7994:
	cmplwi %r6, 0xff
	li %r0, 0x1
	bgt- _79a4
	li %r0, 0x0
_79a4:
	cmpwi %r0, 0x0
	beq- _79b4
	li %r0, 0x0
	b _79c4
_79b4:
	lwz %r3, 0x8(%r4)
	slwi  %r0, %r6, 1
	lhzx %r0, %r3, %r0
	rlwinm  %r0, %r0, 0, 28, 28
_79c4:
	cmpwi %r0, 0x0
	bne+ _7978
_79cc:
	lwz %r7, 0x10(%r1)
	cmpwi %r7, 0x1fd
	ble- _7a04
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	lwz %r5, 0x8(%r1)
	addi %r3, %r31, 0x1
	lwz %r4, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	stw %r5, 0x0(%r30)
	stw %r4, 0x4(%r30)
	stw %r7, 0x8(%r30)
	stw %r0, 0xc(%r30)
	b _7dc0
_7a04:
	cmpwi %r6, 0x2e
	bne- _7ab8
	lbzu %r6, 0x1(%r31)
	li %r0, 0x1
	stb %r0, 0xa(%r1)
	extsb %r6, %r6
	cmpwi %r6, 0x2a
	bne- _7a54
	mr %r3, %r29
	li %r4, 0x1
	bl sub_19450
	lwz %r0, 0x0(%r3)
	stw %r0, 0x14(%r1)
	cmpwi %r0, 0x0
	bge- _7a48
	li %r0, 0x0
	stb %r0, 0xa(%r1)
_7a48:
	lbzu %r6, 0x1(%r31)
	extsb %r6, %r6
	b _7ab8
_7a54:
	lis %r3, 0x8027
	subi %r3, %r3, 0x31f8
	lwz %r4, 0x38(%r3)
	b _7a80
_7a64:
	lwz %r0, 0x14(%r1)
	mulli %r0, %r0, 0xa
	add %r3, %r6, %r0
	lbzu %r6, 0x1(%r31)
	subi %r0, %r3, 0x30
	stw %r0, 0x14(%r1)
	extsb %r6, %r6
_7a80:
	cmplwi %r6, 0xff
	li %r0, 0x1
	bgt- _7a90
	li %r0, 0x0
_7a90:
	cmpwi %r0, 0x0
	beq- _7aa0
	li %r0, 0x0
	b _7ab0
_7aa0:
	lwz %r3, 0x8(%r4)
	slwi  %r0, %r6, 1
	lhzx %r0, %r3, %r0
	rlwinm  %r0, %r0, 0, 28, 28
_7ab0:
	cmpwi %r0, 0x0
	bne+ _7a64
_7ab8:
	cmpwi %r6, 0x68
	li %r4, 0x1
	beq- _7af0
	cmpwi %r6, 0x6c
	beq- _7b1c
	cmpwi %r6, 0x4c
	beq- _7b48
	cmpwi %r6, 0x6a
	beq- _7b54
	cmpwi %r6, 0x74
	beq- _7b60
	cmpwi %r6, 0x7a
	beq- _7b6c
	b _7b78
_7af0:
	lbz %r0, 0x1(%r31)
	li %r3, 0x2
	stb %r3, 0xc(%r1)
	extsb %r3, %r0
	cmpwi %r3, 0x68
	bne- _7b7c
	li %r0, 0x1
	stb %r0, 0xc(%r1)
	mr %r6, %r3
	addi %r31, %r31, 0x1
	b _7b7c
_7b1c:
	lbz %r0, 0x1(%r31)
	li %r3, 0x3
	stb %r3, 0xc(%r1)
	extsb %r3, %r0
	cmpwi %r3, 0x6c
	bne- _7b7c
	li %r0, 0x4
	stb %r0, 0xc(%r1)
	mr %r6, %r3
	addi %r31, %r31, 0x1
	b _7b7c
_7b48:
	li %r0, 0x9
	stb %r0, 0xc(%r1)
	b _7b7c
_7b54:
	li %r0, 0x6
	stb %r0, 0xc(%r1)
	b _7b7c
_7b60:
	li %r0, 0x8
	stb %r0, 0xc(%r1)
	b _7b7c
_7b6c:
	li %r0, 0x7
	stb %r0, 0xc(%r1)
	b _7b7c
_7b78:
	li %r4, 0x0
_7b7c:
	cmpwi %r4, 0x0
	beq- _7b8c
	lbzu %r6, 0x1(%r31)
	extsb %r6, %r6
_7b8c:
	subi %r0, %r6, 0x41
	stb %r6, 0xd(%r1)
	cmplwi %r0, 0x37
	bgt- _7d94
	lis %r3, 0x8027
	slwi  %r0, %r0, 2
	subi %r3, %r3, 0x31b0
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	lbz %r0, 0xc(%r1)
	cmplwi %r0, 0x9
	bne- _7bcc
	li %r0, 0xff
	stb %r0, 0xd(%r1)
	b _7d9c
_7bcc:
	lbz %r0, 0xa(%r1)
	cmpwi %r0, 0x0
	bne- _7be4
	li %r0, 0x1
	stw %r0, 0x14(%r1)
	b _7d9c
_7be4:
	lbz %r0, 0x8(%r1)
	cmplwi %r0, 0x2
	bne- _7d9c
	li %r0, 0x1
	stb %r0, 0x8(%r1)
	b _7d9c
	
	.global t1_7bfc
t1_7bfc:
	.incbin "basemain.dol", 0xa15c, 0x198

_7d94:
	li %r0, 0xff
	stb %r0, 0xd(%r1)
_7d9c:
	lwz %r6, 0x8(%r1)
	addi %r3, %r31, 0x1
	lwz %r5, 0xc(%r1)
	lwz %r4, 0x10(%r1)
	lwz %r0, 0x14(%r1)
	stw %r6, 0x0(%r30)
	stw %r5, 0x4(%r30)
	stw %r4, 0x8(%r30)
	stw %r0, 0xc(%r30)
_7dc0:
	lwz %r0, 0x34(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_7ddc
sub_7ddc: # 0x8000f09c
	cmpwi %r3, 0x0
	li %r8, 0x0
	stb %r8, -0x1(%r4)
	subi %r6, %r4, 0x1
	li %r7, 0x0
	bne- _7e20
	lwz %r0, 0xc(%r5)
	cmpwi %r0, 0x0
	bne- _7e20
	lbz %r0, 0x3(%r5)
	cmpwi %r0, 0x0
	beq- _7e18
	lbz %r0, 0x5(%r5)
	cmplwi %r0, 0x6f
	beq- _7e20
_7e18:
	mr %r3, %r6
	blr
_7e20:
	lbz %r9, 0x5(%r5)
	cmpwi %r9, 0x64
	beq- _7e58
	cmpwi %r9, 0x69
	beq- _7e58
	cmpwi %r9, 0x6f
	beq- _7e7c
	cmpwi %r9, 0x75
	beq- _7e8c
	cmpwi %r9, 0x78
	beq- _7e9c
	cmpwi %r9, 0x58
	beq- _7e9c
	b _7ea8
_7e58:
	cmpwi %r3, 0x0
	li %r0, 0xa
	bge- _7ea8
	addis %r8, %r3, 0x8000
	cmplwi %r8, 0x0
	beq- _7e74
	neg %r3, %r3
_7e74:
	li %r8, 0x1
	b _7ea8
_7e7c:
	li %r0, 0x0
	stb %r0, 0x1(%r5)
	li %r0, 0x8
	b _7ea8
_7e8c:
	li %r0, 0x0
	stb %r0, 0x1(%r5)
	li %r0, 0xa
	b _7ea8
_7e9c:
	li %r0, 0x0
	stb %r0, 0x1(%r5)
	li %r0, 0x10
_7ea8:
	divwu %r9, %r3, %r0
	mullw %r9, %r9, %r0
	subf %r11, %r9, %r3
	divwu %r3, %r3, %r0
	cmpwi %r11, 0xa
	bge- _7ec8
	addi %r11, %r11, 0x30
	b _7ee0
_7ec8:
	lbz %r9, 0x5(%r5)
	addi %r10, %r11, 0x37
	cmplwi %r9, 0x78
	bne- _7edc
	addi %r10, %r11, 0x57
_7edc:
	mr %r11, %r10
_7ee0:
	cmpwi %r3, 0x0
	stb %r11, -0x1(%r6)
	subi %r6, %r6, 0x1
	addi %r7, %r7, 0x1
	bne+ _7ea8
	cmplwi %r0, 0x8
	bne- _7f20
	lbz %r3, 0x3(%r5)
	cmpwi %r3, 0x0
	beq- _7f20
	lbz %r3, 0x0(%r6)
	cmpwi %r3, 0x30
	beq- _7f20
	li %r3, 0x30
	stbu %r3, -0x1(%r6)
	addi %r7, %r7, 0x1
_7f20:
	lbz %r3, 0x0(%r5)
	cmplwi %r3, 0x2
	bne- _7f74
	lwz %r3, 0x8(%r5)
	cmpwi %r8, 0x0
	stw %r3, 0xc(%r5)
	bne- _7f48
	lbz %r3, 0x1(%r5)
	cmpwi %r3, 0x0
	beq- _7f54
_7f48:
	lwz %r3, 0xc(%r5)
	subi %r3, %r3, 0x1
	stw %r3, 0xc(%r5)
_7f54:
	cmplwi %r0, 0x10
	bne- _7f74
	lbz %r3, 0x3(%r5)
	cmpwi %r3, 0x0
	beq- _7f74
	lwz %r3, 0xc(%r5)
	subi %r3, %r3, 0x2
	stw %r3, 0xc(%r5)
_7f74:
	lwz %r9, 0xc(%r5)
	subf %r3, %r6, %r4
	add %r3, %r9, %r3
	cmpwi %r3, 0x1fd
	ble- _7f90
	li %r3, 0x0
	blr
_7f90:
	li %r4, 0x30
	b _7fa0
_7f98:
	stbu %r4, -0x1(%r6)
	addi %r7, %r7, 0x1
_7fa0:
	lwz %r3, 0xc(%r5)
	cmpw %r7, %r3
	blt+ _7f98
	cmplwi %r0, 0x10
	bne- _7fd0
	lbz %r0, 0x3(%r5)
	cmpwi %r0, 0x0
	beq- _7fd0
	lbz %r3, 0x5(%r5)
	li %r0, 0x30
	stb %r3, -0x1(%r6)
	stbu %r0, -0x2(%r6)
_7fd0:
	cmpwi %r8, 0x0
	beq- _7fe4
	li %r0, 0x2d
	stbu %r0, -0x1(%r6)
	b _800c
_7fe4:
	lbz %r0, 0x1(%r5)
	cmplwi %r0, 0x1
	bne- _7ffc
	li %r0, 0x2b
	stbu %r0, -0x1(%r6)
	b _800c
_7ffc:
	cmplwi %r0, 0x2
	bne- _800c
	li %r0, 0x20
	stbu %r0, -0x1(%r6)
_800c:
	mr %r3, %r6
	blr

	.global sub_8014
sub_8014: # 0x8000f2d4
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	or. %r0, %r4, %r3
	stmw %r22, 0x8(%r1)
	li %r25, 0x0
	mr %r31, %r3
	mr %r30, %r4
	mr %r23, %r5
	mr %r24, %r6
	subi %r27, %r5, 0x1
	li %r26, 0x0
	stb %r25, -0x1(%r5)
	bne- _8078
	lwz %r0, 0xc(%r6)
	cmpwi %r0, 0x0
	bne- _8078
	lbz %r0, 0x3(%r6)
	cmpwi %r0, 0x0
	beq- _8070
	lbz %r0, 0x5(%r6)
	cmplwi %r0, 0x6f
	beq- _8078
_8070:
	mr %r3, %r27
	b _82b0
_8078:
	lbz %r0, 0x5(%r6)
	cmpwi %r0, 0x64
	beq- _80b0
	cmpwi %r0, 0x69
	beq- _80b0
	cmpwi %r0, 0x6f
	beq- _80f4
	cmpwi %r0, 0x75
	beq- _8104
	cmpwi %r0, 0x78
	beq- _8114
	cmpwi %r0, 0x58
	beq- _8114
	b _8120
_80b0:
	li %r29, 0x0
	xoris %r0, %r3, 0x8000
	xoris %r6, %r29, 0x8000
	li %r28, 0xa
	subfc %r5, %r29, %r4
	subfe %r6, %r6, %r0
	subfe %r6, %r0, %r0
	neg. %r6, %r6
	beq- _8120
	lis %r0, 0x8000
	xor %r0, %r3, %r0
	or. %r0, %r4, %r0
	beq- _80ec
	subfic %r30, %r4, 0x0
	subfze %r31, %r3
_80ec:
	li %r25, 0x1
	b _8120
_80f4:
	li %r29, 0x0
	stb %r29, 0x1(%r6)
	li %r28, 0x8
	b _8120
_8104:
	li %r29, 0x0
	stb %r29, 0x1(%r6)
	li %r28, 0xa
	b _8120
_8114:
	li %r29, 0x0
	stb %r29, 0x1(%r6)
	li %r28, 0x10
_8120:
	mr %r3, %r31
	mr %r4, %r30
	mr %r5, %r29
	mr %r6, %r28
	bl sub_19a08
	mr %r22, %r4
	mr %r3, %r31
	mr %r4, %r30
	mr %r5, %r29
	mr %r6, %r28
	bl sub_197e4
	cmpwi %r22, 0xa
	mr %r30, %r4
	mr %r31, %r3
	bge- _8164
	addi %r5, %r22, 0x30
	b _8178
_8164:
	lbz %r0, 0x5(%r24)
	addi %r5, %r22, 0x37
	cmplwi %r0, 0x78
	bne- _8178
	addi %r5, %r22, 0x57
_8178:
	or. %r0, %r4, %r3
	stbu %r5, -0x1(%r27)
	addi %r26, %r26, 0x1
	bne+ _8120
	xori %r0, %r28, 0x8
	or. %r0, %r0, %r29
	bne- _81b8
	lbz %r0, 0x3(%r24)
	cmpwi %r0, 0x0
	beq- _81b8
	lbz %r0, 0x0(%r27)
	cmpwi %r0, 0x30
	beq- _81b8
	li %r0, 0x30
	stbu %r0, -0x1(%r27)
	addi %r26, %r26, 0x1
_81b8:
	lbz %r0, 0x0(%r24)
	cmplwi %r0, 0x2
	bne- _8210
	lwz %r0, 0x8(%r24)
	cmpwi %r25, 0x0
	stw %r0, 0xc(%r24)
	bne- _81e0
	lbz %r0, 0x1(%r24)
	cmpwi %r0, 0x0
	beq- _81ec
_81e0:
	lwz %r3, 0xc(%r24)
	subi %r0, %r3, 0x1
	stw %r0, 0xc(%r24)
_81ec:
	xori %r0, %r28, 0x10
	or. %r0, %r0, %r29
	bne- _8210
	lbz %r0, 0x3(%r24)
	cmpwi %r0, 0x0
	beq- _8210
	lwz %r3, 0xc(%r24)
	subi %r0, %r3, 0x2
	stw %r0, 0xc(%r24)
_8210:
	lwz %r3, 0xc(%r24)
	subf %r0, %r27, %r23
	add %r0, %r3, %r0
	cmpwi %r0, 0x1fd
	ble- _822c
	li %r3, 0x0
	b _82b0
_822c:
	li %r3, 0x30
	b _823c
_8234:
	stbu %r3, -0x1(%r27)
	addi %r26, %r26, 0x1
_823c:
	lwz %r0, 0xc(%r24)
	cmpw %r26, %r0
	blt+ _8234
	xori %r0, %r28, 0x10
	or. %r0, %r0, %r29
	bne- _8270
	lbz %r0, 0x3(%r24)
	cmpwi %r0, 0x0
	beq- _8270
	lbz %r3, 0x5(%r24)
	li %r0, 0x30
	stb %r3, -0x1(%r27)
	stbu %r0, -0x2(%r27)
_8270:
	cmpwi %r25, 0x0
	beq- _8284
	li %r0, 0x2d
	stbu %r0, -0x1(%r27)
	b _82ac
_8284:
	lbz %r0, 0x1(%r24)
	cmplwi %r0, 0x1
	bne- _829c
	li %r0, 0x2b
	stbu %r0, -0x1(%r27)
	b _82ac
_829c:
	cmplwi %r0, 0x2
	bne- _82ac
	li %r0, 0x20
	stbu %r0, -0x1(%r27)
_82ac:
	mr %r3, %r27
_82b0:
	lmw %r22, 0x8(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_82c4
t1_82c4:
	.incbin "basemain.dol", 0xa824, 0xc90
	
	.global sub_8f54
sub_8f54: # 0x80010214
	stwu %r1, -0x2d0(%r1)
	mflr %r0
	stw %r0, 0x2d4(%r1)
	stmw %r15, 0x28c(%r1)
	li %r24, 0x20
	lis %r22, 0x8024
	mr %r25, %r3
	mr %r26, %r4
	mr %r15, %r5
	mr %r27, %r6
	mr %r28, %r7
	addi %r22, %r22, 0x6310
	addi %r21, %r1, 0x27f
	li %r17, 0x0
	lis %r20, 0x8027
	li %r23, 0x25
	stb %r24, 0x9(%r1)
	b _97dc
_8f9c:
	mr %r3, %r15
	li %r4, 0x25
	bl sub_b5d8
	cmpwi %r3, 0x0
	mr %r16, %r3
	bne- _8ff0
	mr %r3, %r15
	bl sub_19434
	cmpwi %r3, 0x0
	mr %r5, %r3
	add %r17, %r17, %r3
	beq- _97e8
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r15
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _97e8
	li %r3, -0x1
	b _97ec
_8ff0:
	subf. %r5, %r15, %r3
	add %r17, %r17, %r5
	beq- _9020
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r15
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _9020
	li %r3, -0x1
	b _97ec
_9020:
	mr %r3, %r16
	mr %r4, %r27
	addi %r5, %r1, 0x70
	bl sub_7820
	lbz %r4, 0x75(%r1)
	mr %r15, %r3
	subi %r0, %r4, 0x25
	cmplwi %r0, 0x53
	bgt- _95fc
	subi %r3, %r20, 0x30d0
	slwi  %r0, %r0, 2
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	lbz %r0, 0x74(%r1)
	cmplwi %r0, 0x3
	bne- _9078
	mr %r3, %r27
	li %r4, 0x1
	bl sub_19450
	lwz %r31, 0x0(%r3)
	b _9100
_9078:
	cmplwi %r0, 0x4
	bne- _9098
	mr %r3, %r27
	li %r4, 0x2
	bl sub_19450
	lwz %r30, 0x0(%r3)
	lwz %r29, 0x4(%r3)
	b _9100
_9098:
	cmplwi %r0, 0x6
	bne- _90b8
	mr %r3, %r27
	li %r4, 0x2
	bl sub_19450
	lwz %r30, 0x0(%r3)
	lwz %r29, 0x4(%r3)
	b _9100
_90b8:
	cmplwi %r0, 0x7
	bne- _90d4
	mr %r3, %r27
	li %r4, 0x1
	bl sub_19450
	lwz %r31, 0x0(%r3)
	b _9100
_90d4:
	cmplwi %r0, 0x8
	bne- _90f0
	mr %r3, %r27
	li %r4, 0x1
	bl sub_19450
	lwz %r31, 0x0(%r3)
	b _9100
_90f0:
	mr %r3, %r27
	li %r4, 0x1
	bl sub_19450
	lwz %r31, 0x0(%r3)
_9100:
	lbz %r0, 0x74(%r1)
	cmplwi %r0, 0x2
	bne- _9110
	extsh %r31, %r31
_9110:
	cmplwi %r0, 0x1
	bne- _911c
	extsb %r31, %r31
_911c:
	cmplwi %r0, 0x4
	beq- _912c
	cmplwi %r0, 0x6
	bne- _9170
_912c:
	lwz %r9, 0x70(%r1)
	mr %r4, %r29
	lwz %r8, 0x74(%r1)
	mr %r3, %r30
	lwz %r7, 0x78(%r1)
	addi %r5, %r1, 0x280
	lwz %r0, 0x7c(%r1)
	addi %r6, %r1, 0x60
	stw %r9, 0x60(%r1)
	stw %r8, 0x64(%r1)
	stw %r7, 0x68(%r1)
	stw %r0, 0x6c(%r1)
	bl sub_8014
	cmpwi %r3, 0x0
	mr %r18, %r3
	beq- _95fc
	b _91ac
_9170:
	lwz %r8, 0x70(%r1)
	mr %r3, %r31
	lwz %r7, 0x74(%r1)
	addi %r4, %r1, 0x280
	lwz %r6, 0x78(%r1)
	addi %r5, %r1, 0x50
	lwz %r0, 0x7c(%r1)
	stw %r8, 0x50(%r1)
	stw %r7, 0x54(%r1)
	stw %r6, 0x58(%r1)
	stw %r0, 0x5c(%r1)
	bl sub_7ddc
	cmpwi %r3, 0x0
	mr %r18, %r3
	beq- _95fc
_91ac:
	subf %r19, %r18, %r21
	b _9640
	
	.global t1_91b4
t1_91b4:
	.incbin "basemain.dol", 0xb714, 0x448

_95fc:
	mr %r3, %r16
	bl sub_19434
	cmpwi %r3, 0x0
	mr %r5, %r3
	add %r17, %r17, %r3
	beq- _9638
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r16
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _9638
	li %r3, -0x1
	b _97ec
_9638:
	mr %r3, %r17
	b _97ec
_9640:
	lbz %r0, 0x70(%r1)
	mr %r16, %r19
	cmpwi %r0, 0x0
	beq- _975c
	cmplwi %r0, 0x2
	li %r3, 0x20
	bne- _9660
	li %r3, 0x30
_9660:
	stb %r3, 0x9(%r1)
	lbz %r0, 0x0(%r18)
	extsb %r0, %r0
	cmpwi %r0, 0x2b
	beq- _9684
	cmpwi %r0, 0x2d
	beq- _9684
	cmpwi %r0, 0x20
	bne- _96c0
_9684:
	extsb %r0, %r3
	cmpwi %r0, 0x30
	bne- _96c0
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r18
	li %r5, 0x1
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _96b8
	li %r3, -0x1
	b _97ec
_96b8:
	addi %r18, %r18, 0x1
	subi %r19, %r19, 0x1
_96c0:
	lbz %r0, 0x70(%r1)
	cmplwi %r0, 0x2
	bne- _9750
	lbz %r0, 0x75(%r1)
	cmplwi %r0, 0x61
	beq- _96e0
	cmplwi %r0, 0x41
	bne- _9750
_96e0:
	cmpwi %r19, 0x2
	bge- _96f0
	li %r3, -0x1
	b _97ec
_96f0:
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r18
	li %r5, 0x2
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _9718
	li %r3, -0x1
	b _97ec
_9718:
	subi %r19, %r19, 0x2
	addi %r18, %r18, 0x2
	b _9750
_9724:
	mr %r12, %r25
	mr %r3, %r26
	addi %r4, %r1, 0x9
	li %r5, 0x1
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _974c
	li %r3, -0x1
	b _97ec
_974c:
	addi %r16, %r16, 0x1
_9750:
	lwz %r0, 0x78(%r1)
	cmpw %r16, %r0
	blt+ _9724
_975c:
	cmpwi %r19, 0x0
	beq- _978c
	mr %r12, %r25
	mr %r3, %r26
	mr %r4, %r18
	mr %r5, %r19
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _978c
	li %r3, -0x1
	b _97ec
_978c:
	lbz %r0, 0x70(%r1)
	cmpwi %r0, 0x0
	bne- _97d8
	b _97cc
_979c:
	mr %r12, %r25
	mr %r3, %r26
	stb %r24, 0x8(%r1)
	addi %r4, %r1, 0x8
	li %r5, 0x1
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne- _97c8
	li %r3, -0x1
	b _97ec
_97c8:
	addi %r16, %r16, 0x1
_97cc:
	lwz %r0, 0x78(%r1)
	cmpw %r16, %r0
	blt+ _979c
_97d8:
	add %r17, %r17, %r16
_97dc:
	lbz %r0, 0x0(%r15)
	extsb. %r0, %r0
	bne+ _8f9c
_97e8:
	mr %r3, %r17
_97ec:
	lmw %r15, 0x28c(%r1)
	lwz %r0, 0x2d4(%r1)
	mtlr %r0
	addi %r1, %r1, 0x2d0
	blr
	
	.global t1_9800
t1_9800:
	.incbin "basemain.dol", 0xbd60, 0x190
	
	.global sub_9990
sub_9990: # 0x80010c50
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8027
	subi %r31, %r31, 0x3650
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	li %r4, -0x1
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	addi %r3, %r31, 0x50
	bl sub_d7b8
	cmpwi %r3, 0x0
	blt- _99d4
	li %r3, -0x1
	b _99f0
_99d4:
	lis %r3, 0x8001
	mr %r5, %r29
	mr %r6, %r30
	addi %r4, %r31, 0x50
	addi %r3, %r3, 0xac0
	li %r7, 0x0
	bl sub_8f54
_99f0:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_9a0c
sub_9a0c: # 0x80010ccc
	stwu %r1, -0x30(%r1)
	mflr %r0
	lis %r7, 0x8001
	stw %r0, 0x34(%r1)
	stw %r31, 0x2c(%r1)
	li %r31, 0x0
	stw %r30, 0x28(%r1)
	mr %r30, %r4
	stw %r29, 0x24(%r1)
	mr %r29, %r3
	stw %r3, 0x8(%r1)
	addi %r3, %r7, 0xb18
	li %r7, 0x0
	stw %r4, 0xc(%r1)
	addi %r4, %r1, 0x8
	stw %r31, 0x10(%r1)
	bl sub_8f54
	cmpwi %r29, 0x0
	beq- _9a78
	cmplw %r3, %r30
	bge- _9a68
	stbx %r31, %r29, %r3
	b _9a78
_9a68:
	cmpwi %r30, 0x0
	beq- _9a78
	add %r4, %r29, %r30
	stb %r31, -0x1(%r4)
_9a78:
	lwz %r0, 0x34(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global t1_9a94
t1_9a94:
	.incbin "basemain.dol", 0xbff4, 0x84
	
	.global sub_9b18
sub_9b18: # 0x80010dd8
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stw %r31, 0x8c(%r1)
	stw %r30, 0x88(%r1)
	stw %r29, 0x84(%r1)
	mr %r29, %r4
	stw %r28, 0x80(%r1)
	mr %r28, %r3
	bne- cr1, _9b60
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_9b60:
	addi %r12, %r1, 0x98
	addi %r0, %r1, 0x8
	lis %r30, 0x300
	stw %r7, 0x18(%r1)
	li %r31, 0x0
	addi %r7, %r1, 0x74
	stw %r6, 0x14(%r1)
	mr %r6, %r7
	lis %r11, 0x8001
	li %r7, 0x0
	stw %r5, 0x10(%r1)
	stw %r3, 0x8(%r1)
	stw %r3, 0x68(%r1)
	addi %r3, %r11, 0xb18
	stw %r4, 0xc(%r1)
	stw %r4, 0x6c(%r1)
	addi %r4, %r1, 0x68
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r30, 0x74(%r1)
	stw %r12, 0x78(%r1)
	stw %r0, 0x7c(%r1)
	stw %r31, 0x70(%r1)
	bl sub_8f54
	cmpwi %r28, 0x0
	beq- _9bec
	cmplw %r3, %r29
	bge- _9bdc
	stbx %r31, %r28, %r3
	b _9bec
_9bdc:
	cmpwi %r29, 0x0
	beq- _9bec
	add %r4, %r28, %r29
	stb %r31, -0x1(%r4)
_9bec:
	lwz %r0, 0x94(%r1)
	lwz %r31, 0x8c(%r1)
	lwz %r30, 0x88(%r1)
	lwz %r29, 0x84(%r1)
	lwz %r28, 0x80(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr

	.global sub_9c0c
sub_9c0c: # 0x80010ecc
	stwu %r1, -0xa0(%r1)
	mflr %r0
	stw %r0, 0xa4(%r1)
	stmw %r27, 0x8c(%r1)
	mr %r27, %r3
	bne- cr1, _9c44
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_9c44:
	addi %r12, %r1, 0xa8
	addi %r0, %r1, 0x8
	lis %r29, 0x200
	stw %r5, 0x10(%r1)
	li %r30, -0x1
	li %r31, 0x0
	stw %r7, 0x18(%r1)
	addi %r28, %r1, 0x74
	lis %r11, 0x8001
	mr %r5, %r4
	stw %r4, 0xc(%r1)
	addi %r4, %r1, 0x68
	li %r7, 0x0
	stw %r6, 0x14(%r1)
	mr %r6, %r28
	stw %r3, 0x8(%r1)
	stw %r3, 0x68(%r1)
	addi %r3, %r11, 0xb18
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r29, 0x74(%r1)
	stw %r12, 0x78(%r1)
	stw %r0, 0x7c(%r1)
	stw %r30, 0x6c(%r1)
	stw %r31, 0x70(%r1)
	bl sub_8f54
	cmpwi %r27, 0x0
	beq- _9ccc
	cmplw %r3, %r30
	bge- _9cc8
	stbx %r31, %r27, %r3
	b _9ccc
_9cc8:
	stb %r31, -0x2(%r27)
_9ccc:
	lmw %r27, 0x8c(%r1)
	lwz %r0, 0xa4(%r1)
	mtlr %r0
	addi %r1, %r1, 0xa0
	blr

	.global t1_9ce0
t1_9ce0:
	.incbin "basemain.dol", 0xc240, 0x1620
	
	.global sub_b300
sub_b300: # 0x800125c0
	clrlwi  %r0, %r3, 30
	clrlwi  %r5, %r4, 30
	cmplw %r0, %r5
	mr %r7, %r3
	bne- _b39c
	cmpwi %r5, 0x0
	beq- _b358
	lbz %r0, 0x0(%r4)
	stb %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	beqlr- 
	subfic %r0, %r5, 0x3
	mtctr %r0
	cmpwi %r0, 0x0
	beq- _b350
_b33c:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r7)
	cmpwi %r0, 0x0
	beqlr- 
	bdnz+ _b33c
_b350:
	addi %r7, %r7, 0x1
	addi %r4, %r4, 0x1
_b358:
	lwz %r8, 0x0(%r4)
	lis %r5, 0x8081
	subi %r5, %r5, 0x7f80
	addis %r6, %r8, 0xfeff
	subi %r6, %r6, 0x101
	andc %r6, %r6, %r8
	and. %r0, %r6, %r5
	bne- _b39c
	subi %r7, %r7, 0x4
_b37c:
	stwu %r8, 0x4(%r7)
	lwzu %r8, 0x4(%r4)
	addis %r6, %r8, 0xfeff
	subi %r6, %r6, 0x101
	andc %r6, %r6, %r8
	and. %r0, %r6, %r5
	beq+ _b37c
	addi %r7, %r7, 0x4
_b39c:
	lbz %r0, 0x0(%r4)
	stb %r0, 0x0(%r7)
	cmpwi %r0, 0x0
	beqlr- 
_b3ac:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r7)
	cmpwi %r0, 0x0
	bne+ _b3ac
	blr

	.global sub_b3c0
sub_b3c0: # 0x80012680
	subi %r4, %r4, 0x1
	subi %r6, %r3, 0x1
	addi %r5, %r5, 0x1
	b _b3f8
_b3d0:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r6)
	cmpwi %r0, 0x0
	bne- _b3f8
	li %r0, 0x0
	b _b3ec
_b3e8:
	stbu %r0, 0x1(%r6)
_b3ec:
	subic. %r5, %r5, 0x1
	bne+ _b3e8
	blr
_b3f8:
	subic. %r5, %r5, 0x1
	bne+ _b3d0
	blr
	
	.global t1_b404
t1_b404:
	.incbin "basemain.dol", 0xd964, 0x78

	.global sub_b47c
sub_b47c: # 0x8001273c
	lbz %r5, 0x0(%r3)
	lbz %r0, 0x0(%r4)
	subf. %r0, %r0, %r5
	beq- _b494
	mr %r3, %r0
	blr
_b494:
	clrlwi  %r0, %r4, 30
	clrlwi  %r6, %r3, 30
	cmplw %r0, %r6
	bne- _b560
	cmpwi %r6, 0x0
	beq- _b500
	cmpwi %r5, 0x0
	bne- _b4bc
	li %r3, 0x0
	blr
_b4bc:
	subfic %r0, %r6, 0x3
	mtctr %r0
	cmpwi %r0, 0x0
	beq- _b4f8
_b4cc:
	lbzu %r5, 0x1(%r3)
	lbzu %r0, 0x1(%r4)
	subf. %r0, %r0, %r5
	beq- _b4e4
	mr %r3, %r0
	blr
_b4e4:
	cmpwi %r5, 0x0
	bne- _b4f4
	li %r3, 0x0
	blr
_b4f4:
	bdnz+ _b4cc
_b4f8:
	addi %r3, %r3, 0x1
	addi %r4, %r4, 0x1
_b500:
	lwz %r7, 0x0(%r3)
	lis %r5, 0x8081
	subi %r6, %r5, 0x7f80
	lwz %r8, 0x0(%r4)
	addis %r5, %r7, 0xfeff
	subi %r5, %r5, 0x101
	andc %r5, %r5, %r7
	and. %r0, %r5, %r6
	bne- _b548
	b _b540
_b528:
	lwzu %r7, 0x4(%r3)
	lwzu %r8, 0x4(%r4)
	addis %r5, %r7, 0xfeff
	subi %r0, %r5, 0x101
	and. %r0, %r0, %r6
	bne- _b548
_b540:
	cmplw %r7, %r8
	beq+ _b528
_b548:
	lbz %r5, 0x0(%r3)
	lbz %r0, 0x0(%r4)
	subf. %r0, %r0, %r5
	beq- _b560
	mr %r3, %r0
	blr
_b560:
	cmpwi %r5, 0x0
	bne- _b570
	li %r3, 0x0
	blr
_b570:
	lbzu %r5, 0x1(%r3)
	lbzu %r0, 0x1(%r4)
	subf. %r0, %r0, %r5
	beq- _b588
	mr %r3, %r0
	blr
_b588:
	cmpwi %r5, 0x0
	bne+ _b570
	li %r3, 0x0
	blr

	.global sub_b598
sub_b598: # 0x80012858
	subi %r3, %r3, 0x1
	subi %r4, %r4, 0x1
	addi %r6, %r5, 0x1
	b _b5c8
_b5a8:
	lbzu %r0, 0x1(%r3)
	lbzu %r5, 0x1(%r4)
	cmplw %r0, %r5
	beq- _b5c0
	subf %r3, %r5, %r0
	blr
_b5c0:
	cmpwi %r0, 0x0
	beq- _b5d0
_b5c8:
	subic. %r6, %r6, 0x1
	bne+ _b5a8
_b5d0:
	li %r3, 0x0
	blr

	.global sub_b5d8
sub_b5d8: # 0x80012898
	subi %r3, %r3, 0x1
	clrlwi  %r0, %r4, 24
	b _b5ec
_b5e4:
	cmplw %r4, %r0
	beqlr- 
_b5ec:
	lbzu %r4, 0x1(%r3)
	cmpwi %r4, 0x0
	bne+ _b5e4
	cmpwi %r0, 0x0
	beqlr- 
	li %r3, 0x0
	blr
	
	.global t1_b608
t1_b608:
	.incbin "basemain.dol", 0xdb68, 0x21b0
	
	.global sub_d7b8
sub_d7b8: # 0x80014a78
	cmpwi %r3, 0x0
	beq- _d7cc
	lwz %r5, 0x4(%r3)
	extrwi. %r0, %r5, 3, 7
	bne- _d7d4
_d7cc:
	li %r3, 0x0
	blr
_d7d4:
	extrwi. %r0, %r5, 2, 10
	beq- _d7f0
	cmpwi %r0, 0x2
	beq- _d81c
	cmpwi %r0, 0x1
	beq- _d824
	b _d828
_d7f0:
	cmpwi %r4, 0x0
	ble- _d808
	li %r0, 0x2
	insrwi  %r5, %r0, 2, 10
	stw %r5, 0x4(%r3)
	b _d828
_d808:
	bge- _d828
	li %r0, 0x1
	insrwi  %r5, %r0, 2, 10
	stw %r5, 0x4(%r3)
	b _d828
_d81c:
	li %r4, 0x1
	b _d828
_d824:
	li %r4, -0x1
_d828:
	mr %r3, %r4
	blr
	
	.global t1_d830
t1_d830:
	.incbin "basemain.dol", 0xfd90, 0x2348
	
	.global sub_fb78
sub_fb78: # 0x80016e38
	subi %r4, %r3, 0x2
	li %r3, -0x1
_fb80:
	lhzu %r0, 0x2(%r4)
	addi %r3, %r3, 0x1
	cmpwi %r0, 0x0
	bne+ _fb80
	blr
	
	.global t1_fb94
t1_fb94:
	.incbin "basemain.dol", 0x120f4, 0x1b0c
	
	.global _116a0
_116a0:
	stwu %r1, -0x20(%r1)
	stfd %f1, 0x8(%r1)
	lwz %r6, 0x8(%r1)
	lwz %r0, 0xc(%r1)
	rlwinm  %r3, %r6, 0, 1, 11
	addis %r3, %r3, 0x8010
	cmplwi %r3, 0x0
	bne- _116d4
	fmul  %f0, %f1, %f1
	li %r0, 0x21
	stw %r0, -0x6be8(%r13)
	fadd  %f1, %f1, %f0
	b _118e0
_116d4:
	cmpwi %cr1, %r6, 0x0
	bgt- cr1, _11704
	clrlwi  %r3, %r6, 1
	or. %r3, %r0, %r3
	bne- _116ec
	b _118e0
_116ec:
	bge- cr1, _11704
	lis %r3, 0x8038
	li %r0, 0x21
	stw %r0, -0x6be8(%r13)
	lfs %f1, 0x898(%r3)
	b _118e0
_11704:
	srawi. %r3, %r6, 20
	bne- _11758
	b _11720
_11710:
	srwi  %r4, %r0, 11
	slwi  %r0, %r0, 21
	or %r6, %r6, %r4
	subi %r3, %r3, 0x15
_11720:
	cmpwi %r6, 0x0
	beq+ _11710
	li %r7, 0x0
	b _11738
_11730:
	slwi  %r6, %r6, 1
	addi %r7, %r7, 0x1
_11738:
	rlwinm. %r4, %r6, 0, 11, 11
	beq+ _11730
	subfic %r4, %r7, 0x20
	subi %r5, %r7, 0x1
	srw %r4, %r0, %r4
	slw %r0, %r0, %r7
	subf %r3, %r5, %r3
	or %r6, %r6, %r4
_11758:
	subi %r4, %r3, 0x3ff
	clrlwi  %r5, %r6, 12
	clrlwi. %r4, %r4, 31
	oris %r6, %r5, 0x10
	beq- _1177c
	srwi  %r5, %r0, 31
	add %r4, %r6, %r6
	add %r6, %r5, %r4
	add %r0, %r0, %r0
_1177c:
	srwi  %r5, %r0, 31
	add %r4, %r6, %r6
	add %r6, %r5, %r4
	add %r0, %r0, %r0
	li %r9, 0x0
	li %r11, 0x0
	li %r10, 0x0
	li %r12, 0x0
	lis %r7, 0x20
	b _117d0
_117a4:
	add %r4, %r11, %r7
	cmpw %r4, %r6
	bgt- _117bc
	add %r11, %r4, %r7
	subf %r6, %r4, %r6
	add %r12, %r12, %r7
_117bc:
	srwi  %r5, %r0, 31
	add %r4, %r6, %r6
	add %r6, %r5, %r4
	add %r0, %r0, %r0
	srwi  %r7, %r7, 1
_117d0:
	cmpwi %r7, 0x0
	bne+ _117a4
	lis %r7, 0x8000
	b _11848
_117e0:
	cmpw %r11, %r6
	mr %r5, %r11
	add %r8, %r9, %r7
	blt- _117fc
	bne- _11834
	cmplw %r8, %r0
	bgt- _11834
_117fc:
	clrrwi  %r4, %r8, 31
	add %r9, %r8, %r7
	addis %r4, %r4, 0x8000
	cmplwi %r4, 0x0
	bne- _1181c
	clrrwi. %r4, %r9, 31
	bne- _1181c
	addi %r11, %r11, 0x1
_1181c:
	cmplw %r0, %r8
	subf %r6, %r5, %r6
	bge- _1182c
	subi %r6, %r6, 0x1
_1182c:
	subf %r0, %r8, %r0
	add %r10, %r10, %r7
_11834:
	srwi  %r5, %r0, 31
	add %r4, %r6, %r6
	add %r6, %r5, %r4
	add %r0, %r0, %r0
	srwi  %r7, %r7, 1
_11848:
	cmpwi %r7, 0x0
	bne+ _117e0
	or. %r0, %r6, %r0
	beq- _118ac
	lfd %f0, -0x7b68(%r2)
	stfd %f0, 0x10(%r1)
	fcmpo %cr0, %f0, %f0
	cror 2, 1, 2
	bne- _118ac
	addis %r0, %r10, 0x1
	stfd %f0, 0x10(%r1)
	cmplwi %r0, 0xffff
	bne- _11888
	li %r10, 0x0
	addi %r12, %r12, 0x1
	b _118ac
_11888:
	fcmpo %cr0, %f0, %f0
	ble- _118a4
	cmplwi %r0, 0xfffe
	bne- _1189c
	addi %r12, %r12, 0x1
_1189c:
	addi %r10, %r10, 0x2
	b _118ac
_118a4:
	clrlwi  %r0, %r10, 31
	add %r10, %r10, %r0
_118ac:
	clrlwi  %r0, %r12, 31
	srawi %r4, %r12, 1
	cmpwi %r0, 0x1
	srwi  %r5, %r10, 1
	addis %r4, %r4, 0x3fe0
	bne- _118c8
	oris %r5, %r5, 0x8000
_118c8:
	subi %r0, %r3, 0x3ff
	stw %r5, 0x14(%r1)
	extlwi  %r0, %r0, 12, 19
	add %r4, %r4, %r0
	stw %r4, 0x10(%r1)
	lfd %f1, 0x10(%r1)
_118e0:
	addi %r1, %r1, 0x20
	blr

	.global t1_118e8
t1_118e8:
	.incbin "basemain.dol", 0x13e48, 0x24ec

	.global sub_13dd4
sub_13dd4: # 0x8001b094
	b _116a0

	.global t1_13dd8
t1_13dd8:
	.incbin "basemain.dol", 0x16338, 0x7ec

	.global t1_145c4
t1_145c4:
	.incbin "basemain.dol", 0x16b24, 0x27c

	.global t1_14840
t1_14840:
	.incbin "basemain.dol", 0x16da0, 0x378c

	.global t1_17fcc
t1_17fcc:
	.incbin "basemain.dol", 0x1a52c, 0x1048
	
	.global sub_19014
sub_19014: # 0x800202d4
	stwu %r1, -0x40(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x44(%r1)
	stmw %r27, 0x2c(%r1)
	mr %r30, %r3
	mr %r27, %r4
	mr %r28, %r6
	mr %r29, %r7
	beq- _19100
	cmpwi %r4, 0x0
	stw %r6, 0x0(%r3)
	addi %r30, %r3, 0x10
	stw %r7, 0x4(%r3)
	beq- _19100
	li %r0, 0x0
	stw %r30, 0x8(%r1)
	mr %r31, %r30
	stw %r6, 0xc(%r1)
	stw %r7, 0x10(%r1)
	stw %r5, 0x14(%r1)
	stw %r0, 0x18(%r1)
	b _19094
_19070:
	mr %r12, %r27
	mr %r3, %r31
	li %r4, 0x1
	mtctr %r12
	bctrl 
	lwz %r3, 0x18(%r1)
	add %r31, %r31, %r28
	addi %r0, %r3, 0x1
	stw %r0, 0x18(%r1)
_19094:
	lwz %r4, 0x18(%r1)
	cmplw %r4, %r29
	blt+ _19070
	lwz %r0, 0x10(%r1)
	cmplw %r4, %r0
	bge- _19100
	lwz %r0, 0x14(%r1)
	cmpwi %r0, 0x0
	beq- _19100
	lwz %r0, 0xc(%r1)
	lwz %r3, 0x8(%r1)
	mullw %r0, %r0, %r4
	add %r31, %r3, %r0
	b _190f4
_190cc:
	lwz %r0, 0xc(%r1)
	li %r4, -0x1
	lwz %r12, 0x14(%r1)
	subf %r31, %r0, %r31
	mr %r3, %r31
	mtctr %r12
	bctrl 
	lwz %r3, 0x18(%r1)
	subi %r0, %r3, 0x1
	stw %r0, 0x18(%r1)
_190f4:
	lwz %r0, 0x18(%r1)
	cmpwi %r0, 0x0
	bne+ _190cc
_19100:
	mr %r3, %r30
	lmw %r27, 0x2c(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global t1_19118
t1_19118:
	.incbin "basemain.dol", 0x1b678, 0x31c
	
	.global sub_19434
sub_19434: # 0x800206f4
	subi %r4, %r3, 0x1
	li %r3, -0x1
_1943c:
	lbzu %r0, 0x1(%r4)
	addi %r3, %r3, 0x1
	cmpwi %r0, 0x0
	bne+ _1943c
	blr

	.global sub_19450
sub_19450: # 0x80020710
	lbz %r7, 0x0(%r3)
	cmpwi %r4, 0x3
	mr %r6, %r3
	li %r0, 0x8
	extsb %r7, %r7
	li %r8, 0x4
	li %r9, 0x1
	li %r5, 0x0
	li %r10, 0x0
	li %r11, 0x4
	bne- _19494
	lbz %r7, 0x1(%r3)
	addi %r6, %r3, 0x1
	li %r8, 0x8
	li %r10, 0x20
	extsb %r7, %r7
	li %r11, 0x8
_19494:
	cmpwi %r4, 0x2
	bne- _194b4
	clrlwi. %r0, %r7, 31
	li %r8, 0x8
	li %r0, 0x7
	beq- _194b0
	li %r5, 0x1
_194b0:
	li %r9, 0x2
_194b4:
	cmpw %r7, %r0
	bge- _194dc
	add %r7, %r7, %r5
	lwz %r0, 0x8(%r3)
	mullw %r5, %r7, %r11
	add %r3, %r0, %r10
	add %r0, %r7, %r9
	stb %r0, 0x0(%r6)
	add %r5, %r5, %r3
	b _19504
_194dc:
	li %r0, 0x8
	stb %r0, 0x0(%r6)
	subi %r0, %r8, 0x1
	lwz %r5, 0x4(%r3)
	not %r6, %r0
	add %r5, %r8, %r5
	subi %r0, %r5, 0x1
	and %r5, %r6, %r0
	add %r0, %r5, %r8
	stw %r0, 0x4(%r3)
_19504:
	cmpwi %r4, 0x0
	bne- _19510
	lwz %r5, 0x0(%r5)
_19510:
	mr %r3, %r5
	blr

	.global t1_19518
t1_19518:
	.incbin "basemain.dol", 0x1ba78, 0x118
	
	.global sub_19630
sub_19630: # 0x800208f0
	lwz %r0, 0x0(%r12)
	lwz %r11, 0x4(%r12)
	lwz %r12, 0x8(%r12)
	add %r3, %r3, %r0
	cmpwi %r11, 0x0
	blt- _19650
	lwzx %r12, %r3, %r12
	lwzx %r12, %r12, %r11
_19650:
	mtctr %r12
	bctr 

	.global sub_19658
sub_19658: # 0x80020918
	stwu %r1, -0x10(%r1)
	lis %r4, 0x8024
	addi %r4, %r4, 0x6d98
	li %r3, 0x0
	lfd %f0, 0x0(%r4)
	lfd %f3, 0x8(%r4)
	lfd %f4, 0x10(%r4)
	fcmpu %cr0, %f1, %f0
	fcmpu %cr6, %f1, %f3
	blt- _196ac
	subi %r3, %r3, 0x1
	bge- cr6, _196ac
	fcmpu %cr7, %f1, %f4
	fmr  %f2, %f1
	blt- cr7, _19698
	fsub  %f2, %f1, %f4
_19698:
	fctiwz  %f2, %f2
	stfd %f2, 0x8(%r1)
	lwz %r3, 0xc(%r1)
	blt- cr7, _196ac
	addis %r3, %r3, 0x8000
_196ac:
	addi %r1, %r1, 0x10
	blr

	.global t1_196b4
t1_196b4:
	.incbin "basemain.dol", 0x1bc14, 0x98

	.global sub_1974c
sub_1974c: # 0x80020a0c
	stw %r14, -0x48(%r11)
	stw %r15, -0x44(%r11)

	.global sub_19754
sub_19754: # 0x80020a14
	stw %r16, -0x40(%r11)
	stw %r17, -0x3c(%r11)
	stw %r18, -0x38(%r11)
	stw %r19, -0x34(%r11)

	.global sub_19764
sub_19764: # 0x80020a24
	stw %r20, -0x30(%r11)

	.global sub_19768
sub_19768: # 0x80020a28
	stw %r21, -0x2c(%r11)

	.global sub_1976c
sub_1976c: # 0x80020a2c
	stw %r22, -0x28(%r11)
	
	.global sub_19770
sub_19770: # 0x80020a30
	stw %r23, -0x24(%r11)

	.global sub_19774
sub_19774: # 0x80020a34
	stw %r24, -0x20(%r11)

	.global sub_19778
sub_19778: # 0x80020a38
	stw %r25, -0x1c(%r11)

	.global sub_1977c
sub_1977c: # 0x80020a3c
	stw %r26, -0x18(%r11)

	.global sub_19780
sub_19780: # 0x80020a40
	stw %r27, -0x14(%r11)
	stw %r28, -0x10(%r11)
	stw %r29, -0xc(%r11)
	stw %r30, -0x8(%r11)
	stw %r31, -0x4(%r11)
	blr
	
	.global sub_19798
sub_19798: # 0x80020a58
	lwz %r14, -0x48(%r11)
	lwz %r15, -0x44(%r11)

	.global sub_197a0
sub_197a0: # 0x80020a60
	lwz %r16, -0x40(%r11)
	lwz %r17, -0x3c(%r11)
	lwz %r18, -0x38(%r11)
	lwz %r19, -0x34(%r11)

	.global sub_197b0
sub_197b0: # 0x80020a70
	lwz %r20, -0x30(%r11)

	.global sub_197b4
sub_197b4: # 0x80020a74
	lwz %r21, -0x2c(%r11)

	.global sub_197b8
sub_197b8: # 0x80020a78
	lwz %r22, -0x28(%r11)
	
	.global sub_197bc
sub_197bc: # 0x80020a7c
	lwz %r23, -0x24(%r11)

	.global sub_197c0
sub_197c0: # 0x80020a80
	lwz %r24, -0x20(%r11)

	.global sub_197c4
sub_197c4: # 0x80020a84
	lwz %r25, -0x1c(%r11)

	.global sub_197c8
sub_197c8: # 0x80020a88
	lwz %r26, -0x18(%r11)

	.global sub_197cc
sub_197cc: # 0x80020a8c
	lwz %r27, -0x14(%r11)
	lwz %r28, -0x10(%r11)
	lwz %r29, -0xc(%r11)
	lwz %r30, -0x8(%r11)
	lwz %r31, -0x4(%r11)
	blr

	.global sub_197e4
sub_197e4: # 0x80020aa4
	cmpwi %r3, 0x0
	cntlzw %r0, %r3
	cntlzw %r9, %r4
	bne- _197f8
	addi %r0, %r9, 0x20
_197f8:
	cmpwi %r5, 0x0
	cntlzw %r9, %r5
	cntlzw %r10, %r6
	bne- _1980c
	addi %r9, %r10, 0x20
_1980c:
	cmpw %r0, %r9
	subfic %r10, %r0, 0x40
	bgt- _198c4
	addi %r9, %r9, 0x1
	subfic %r9, %r9, 0x40
	add %r0, %r0, %r9
	subf %r9, %r9, %r10
	mtctr %r9
	cmpwi %r9, 0x20
	subi %r7, %r9, 0x20
	blt- _19844
	srw %r8, %r3, %r7
	li %r7, 0x0
	b _19858
_19844:
	srw %r8, %r4, %r9
	subfic %r7, %r9, 0x20
	slw %r7, %r3, %r7
	or %r8, %r8, %r7
	srw %r7, %r3, %r9
_19858:
	cmpwi %r0, 0x20
	subic %r9, %r0, 0x20
	blt- _19870
	slw %r3, %r4, %r9
	li %r4, 0x0
	b _19884
_19870:
	slw %r3, %r3, %r0
	subfic %r9, %r0, 0x20
	srw %r9, %r4, %r9
	or %r3, %r3, %r9
	slw %r4, %r4, %r0
_19884:
	li %r10, -0x1
	addic %r7, %r7, 0x0
_1988c:
	adde %r4, %r4, %r4
	adde %r3, %r3, %r3
	adde %r8, %r8, %r8
	adde %r7, %r7, %r7
	subfc %r0, %r6, %r8
	subfe. %r9, %r5, %r7
	blt- _198b4
	mr %r8, %r0
	mr %r7, %r9
	addic %r0, %r10, 0x1
_198b4:
	bdnz+ _1988c
	adde %r4, %r4, %r4
	adde %r3, %r3, %r3
	blr
_198c4:
	li %r4, 0x0
	li %r3, 0x0
	blr

	.global sub_198d0
sub_198d0: # 0x80020b90
	stwu %r1, -0x10(%r1)
	clrrwi. %r9, %r3, 31
	beq- _198e4
	subfic %r4, %r4, 0x0
	subfze %r3, %r3
_198e4:
	stw %r9, 0x8(%r1)
	clrrwi. %r10, %r5, 31
	beq- _198f8
	subfic %r6, %r6, 0x0
	subfze %r5, %r5
_198f8:
	stw %r10, 0xc(%r1)
	cmpwi %r3, 0x0
	cntlzw %r0, %r3
	cntlzw %r9, %r4
	bne- _19910
	addi %r0, %r9, 0x20
_19910:
	cmpwi %r5, 0x0
	cntlzw %r9, %r5
	cntlzw %r10, %r6
	bne- _19924
	addi %r9, %r10, 0x20
_19924:
	cmpw %r0, %r9
	subfic %r10, %r0, 0x40
	bgt- _199f8
	addi %r9, %r9, 0x1
	subfic %r9, %r9, 0x40
	add %r0, %r0, %r9
	subf %r9, %r9, %r10
	mtctr %r9
	cmpwi %r9, 0x20
	subi %r7, %r9, 0x20
	blt- _1995c
	srw %r8, %r3, %r7
	li %r7, 0x0
	b _19970
_1995c:
	srw %r8, %r4, %r9
	subfic %r7, %r9, 0x20
	slw %r7, %r3, %r7
	or %r8, %r8, %r7
	srw %r7, %r3, %r9
_19970:
	cmpwi %r0, 0x20
	subic %r9, %r0, 0x20
	blt- _19988
	slw %r3, %r4, %r9
	li %r4, 0x0
	b _1999c
_19988:
	slw %r3, %r3, %r0
	subfic %r9, %r0, 0x20
	srw %r9, %r4, %r9
	or %r3, %r3, %r9
	slw %r4, %r4, %r0
_1999c:
	li %r10, -0x1
	addic %r7, %r7, 0x0
_199a4:
	adde %r4, %r4, %r4
	adde %r3, %r3, %r3
	adde %r8, %r8, %r8
	adde %r7, %r7, %r7
	subfc %r0, %r6, %r8
	subfe. %r9, %r5, %r7
	blt- _199cc
	mr %r8, %r0
	mr %r7, %r9
	addic %r0, %r10, 0x1
_199cc:
	bdnz+ _199a4
	adde %r4, %r4, %r4
	adde %r3, %r3, %r3
	lwz %r9, 0x8(%r1)
	lwz %r10, 0xc(%r1)
	xor. %r7, %r9, %r10
	beq- _199f4
	cmpwi %r9, 0x0
	subfic %r4, %r4, 0x0
	subfze %r3, %r3
_199f4:
	b _19a00
_199f8:
	li %r4, 0x0
	li %r3, 0x0
_19a00:
	addi %r1, %r1, 0x10
	blr

	.global sub_19a08
sub_19a08: # 0x80020cc8
	cmpwi %r3, 0x0
	cntlzw %r0, %r3
	cntlzw %r9, %r4
	bne- _19a1c
	addi %r0, %r9, 0x20
_19a1c:
	cmpwi %r5, 0x0
	cntlzw %r9, %r5
	cntlzw %r10, %r6
	bne- _19a30
	addi %r9, %r10, 0x20
_19a30:
	cmpw %r0, %r9
	subfic %r10, %r0, 0x40
	bgt- _19ae8
	addi %r9, %r9, 0x1
	subfic %r9, %r9, 0x40
	add %r0, %r0, %r9
	subf %r9, %r9, %r10
	mtctr %r9
	cmpwi %r9, 0x20
	subi %r7, %r9, 0x20
	blt- _19a68
	srw %r8, %r3, %r7
	li %r7, 0x0
	b _19a7c
_19a68:
	srw %r8, %r4, %r9
	subfic %r7, %r9, 0x20
	slw %r7, %r3, %r7
	or %r8, %r8, %r7
	srw %r7, %r3, %r9
_19a7c:
	cmpwi %r0, 0x20
	subic %r9, %r0, 0x20
	blt- _19a94
	slw %r3, %r4, %r9
	li %r4, 0x0
	b _19aa8
_19a94:
	slw %r3, %r3, %r0
	subfic %r9, %r0, 0x20
	srw %r9, %r4, %r9
	or %r3, %r3, %r9
	slw %r4, %r4, %r0
_19aa8:
	li %r10, -0x1
	addic %r7, %r7, 0x0
_19ab0:
	adde %r4, %r4, %r4
	adde %r3, %r3, %r3
	adde %r8, %r8, %r8
	adde %r7, %r7, %r7
	subfc %r0, %r6, %r8
	subfe. %r9, %r5, %r7
	blt- _19ad8
	mr %r8, %r0
	mr %r7, %r9
	addic %r0, %r10, 0x1
_19ad8:
	bdnz+ _19ab0
	mr %r4, %r8
	mr %r3, %r7
	blr
_19ae8:
	blr
	
	.global t1_19aec
t1_19aec:
	.incbin "basemain.dol", 0x1c04c, 0x10c
	
	.global sub_19bf8
sub_19bf8: # 0x80020eb8
	subfic %r8, %r5, 0x20
	subic %r9, %r5, 0x20
	slw %r3, %r3, %r5
	srw %r10, %r4, %r8
	or %r3, %r3, %r10
	slw %r10, %r4, %r9
	or %r3, %r3, %r10
	slw %r4, %r4, %r5
	blr

	.global t1_19c1c
t1_19c1c:
	.incbin "basemain.dol", 0x1c17c, 0xcf4

	.global sub_1a910
sub_1a910: # 0x80021bd0
	lwz %r0, -0x6b50(%r13)
	li %r3, 0x0
	cmpwi %r0, 0x0
	beqlr- 
	lis %r4, 0x802a
	lwz %r0, 0x28f8(%r4)
	cmpwi %r0, 0x0
	beqlr- 
	li %r3, 0x1
	blr

