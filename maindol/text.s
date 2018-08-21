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
	
	.global t1_218
t1_218:
	stwu %r1, -0x40(%r1)
	mflr %r0
	li %r4, 0
	stw %r0, 0x44(%r1)
	stmw %r21, 0x14(%r1)
	mr %r30, %r3
	lwz %r3, -0x6c00(%r13)
	bl 0x3654 # 3888
	lis %r25, -0x7fda
	li %r21, 0
	addi %r25, %r25, -0x7da0
	lis %r24, -0x7fda
	lis %r23, -0x7fda
_24c:
	lwz %r3, -0x6c00(%r13)
	li %r5, 0
	lwz %r4, 0x34(%r30)
	li %r6, 0
	lwz %r0, 0x60(%r3)
	slwi %r0, %r0, 2
	lwzx %r3, %r25, %r0
	bl 0x4000 # 4268
	mr %r22, %r3
	bl 0x2123ac # 21261c
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
	bl 0x2115a8 # 211844
	lwz %r26, 0xc70(%r30)
	clrlwi. %r0, %r26, 0x1b
	beq _2c0
	addi %r3, %r24, -0x7c98
	addi %r5, %r23, -0x7cc0
	li %r4, 0x3c
	crclr 6
	bl 0x1e994 # 1ec50
_2c0:
	stw %r26, 0xc74(%r30)
	addi %r3, %r30, 0xc74
	bl 0x46008 # 462d0
	lwz %r0, 0xc74(%r30)
	cmpwi %r0, 0
	bne _314
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
	blt _24c
_314:
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
	bne _350
	addi %r4, %r22, 1
_350:
	slwi %r0, %r4, 2
	addi %r3, %r30, 0xc74
	lwzx %r4, %r23, %r0
	bl 0x44e24 # 45180
	stw %r3, 0xc(%r1)
	addi %r3, %r1, 0xc
	addi %r7, %r1, 8
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r8, 0
	li %r9, 0
	li %r10, 0
	bl 0x4b24c # 4b5d0
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0
	bne _3b0
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x1e8a4 # 1ec50
_3b0:
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r26, 0x1e(%r3)
	bne _3dc
	addi %r3, %r24, -0x7cd0
	addi %r5, %r25, -0x7cf0
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x8000
	crclr 6
	bl 0x1e878 # 1ec50
_3dc:
	lwz %r3, 0xc(%r1)
	cmpwi %r3, 0
	lhz %r27, 0x1c(%r3)
	bne _408
	addi %r3, %r28, -0x7d00
	addi %r5, %r29, -0x7d20
	li %r4, 0x26
	addi %r6, %r13, -0x7ff8
	addi %r7, %r13, -0x7ffc
_400:
	.incbin "basemain.dol", 0x2960, 0x8
_408:
	.incbin "basemain.dol", 0x2968, 0x177c
	
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
	.incbin "basemain.dol", 0x57b0, 0x1100

	.global t1_4350
t1_4350:
	.incbin "basemain.dol", 0x68b0, 0x34d0
	
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
	
	.global t1_9a0c
t1_9a0c:
	.incbin "basemain.dol", 0xbf6c, 0x1bcc
	
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
	.incbin "basemain.dol", 0xfd90, 0x6d94

	.global t1_145c4
t1_145c4:
	.incbin "basemain.dol", 0x16b24, 0x27c

	.global t1_14840
t1_14840: # mod_mod0_entry_addr: 0x44d4c
	.incbin "basemain.dol", 0x16da0, 0x378c

	.global t1_17fcc
t1_17fcc:
	.incbin "basemain.dol", 0x1a52c, 0x1468
	
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
	.incbin "basemain.dol", 0x1ba78, 0x258
	
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
	
	.global t1_19798
t1_19798:
	.incbin "basemain.dol", 0x1bcf8, 0x24
	
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
	.incbin "basemain.dol", 0x1c04c, 0xaa40

	.global t1_2452c
t1_2452c:
	.incbin "basemain.dol", 0x26a8c, 0x836f4

	.global sub_a7c20
sub_a7c20: # 0x800aeee0
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	bne- _a7c58
	lhz %r5, 0xa(%r3)
	li %r0, 0x0
	add %r5, %r4, %r5
	stw %r0, 0x4(%r5)
	stw %r0, 0x0(%r5)
	lhz %r5, 0x8(%r3)
	stw %r4, 0x0(%r3)
	addi %r0, %r5, 0x1
	stw %r4, 0x4(%r3)
	sth %r0, 0x8(%r3)
	blr
_a7c58:
	lhz %r6, 0xa(%r3)
	li %r0, 0x0
	lwz %r5, 0x4(%r3)
	stwux %r5, %r6, %r4
	stw %r0, 0x4(%r6)
	lwz %r5, 0x4(%r3)
	lhz %r0, 0xa(%r3)
	add %r5, %r5, %r0
	stw %r4, 0x4(%r5)
	lhz %r5, 0x8(%r3)
	stw %r4, 0x4(%r3)
	addi %r0, %r5, 0x1
	sth %r0, 0x8(%r3)
	blr

	.global t1_a7c90
t1_a7c90:
	.incbin "basemain.dol", 0xaa1f0, 0x120
	
	.global sub_a7db0
sub_a7db0: # 0x800af070
	lhz %r0, 0xa(%r3)
	add %r6, %r4, %r0
	lwzx %r4, %r4, %r0
	cmpwi %r4, 0x0
	bne- _a7dd0
	lwz %r0, 0x4(%r6)
	stw %r0, 0x0(%r3)
	b _a7ddc
_a7dd0:
	add %r4, %r4, %r0
	lwz %r0, 0x4(%r6)
	stw %r0, 0x4(%r4)
_a7ddc:
	lwz %r5, 0x4(%r6)
	cmpwi %r5, 0x0
	bne- _a7df4
	lwz %r0, 0x0(%r6)
	stw %r0, 0x4(%r3)
	b _a7e00
_a7df4:
	lhz %r0, 0xa(%r3)
	lwz %r4, 0x0(%r6)
	stwx %r4, %r5, %r0
_a7e00:
	li %r0, 0x0
	stw %r0, 0x0(%r6)
	stw %r0, 0x4(%r6)
	lhz %r4, 0x8(%r3)
	subi %r0, %r4, 0x1
	sth %r0, 0x8(%r3)
	blr
	
	.global t1_a7e1c
t1_a7e1c:
	.incbin "basemain.dol", 0xaa37c, 0x4

	.global sub_a7e20
sub_a7e20: # 0x800af0e0
	cmpwi %r4, 0x0
	bne- _a7e30
	lwz %r3, 0x0(%r3)
	blr
_a7e30:
	lhz %r0, 0xa(%r3)
	add %r3, %r4, %r0
	lwz %r3, 0x4(%r3)
	blr
	
	.global t1_a7e40
t1_a7e40:
	.incbin "basemain.dol", 0xaa3a0, 0x7f3f4
	
	.global sub_127234
sub_127234: # 0x8012e4f4
	mtspr 22, %r3
	blr
	
	.global t1_12723c
t1_12723c:
	.incbin "basemain.dol", 0x12979c, 0x8

	.global sub_127244
sub_127244: # 0x8012e504
	sync
_127248:
	ori %r0, %r0, 0x0
	li %r3, 0x0
	ori %r0, %r0, 0x0
	b _127248
	
	.global t1_127258
t1_127258:
	.incbin "basemain.dol", 0x1297b8, 0xd4
	
	.global t1_12732c
t1_12732c:
	.incbin "basemain.dol", 0x12988c, 0x2ec88
	
	.global t1_155fb4
t1_155fb4: # gx_draw: 0x167750
	.incbin "basemain.dol", 0x158514, 0xc38
	
	.global sub_156bec
sub_156bec: # 0x8015deac
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19774
	mr %r26, %r3
	lis %r31, 0x8027
	lwz %r29, -0x65d8(%r13)
	mr %r28, %r26
	subi %r31, %r31, 0x31f8
	lis %r30, 0x8028
_156c18:
	lbz %r0, 0x0(%r26)
	extsb. %r0, %r0
	bne- _156c2c
	mr %r3, %r29
	b _156edc
_156c2c:
	cmpwi %r0, 0x2f
	bne- _156c40
	li %r29, 0x0
	addi %r26, %r26, 0x1
	b _156c18
_156c40:
	cmpwi %r0, 0x2e
	bne- _156cbc
	lbz %r0, 0x1(%r26)
	extsb %r0, %r0
	cmpwi %r0, 0x2e
	bne- _156c9c
	lbz %r0, 0x2(%r26)
	extsb %r0, %r0
	cmpwi %r0, 0x2f
	bne- _156c80
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	addi %r26, %r26, 0x3
	add %r3, %r3, %r0
	lwz %r29, 0x4(%r3)
	b _156c18
_156c80:
	cmpwi %r0, 0x0
	bne- _156cbc
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	add %r3, %r3, %r0
	lwz %r3, 0x4(%r3)
	b _156edc
_156c9c:
	cmpwi %r0, 0x2f
	bne- _156cac
	addi %r26, %r26, 0x2
	b _156c18
_156cac:
	cmpwi %r0, 0x0
	bne- _156cbc
	mr %r3, %r29
	b _156edc
_156cbc:
	lwz %r0, -0x7348(%r13)
	cmpwi %r0, 0x0
	bne- _156d6c
	mr %r24, %r26
	li %r5, 0x0
	li %r4, 0x0
	b _156d1c
_156cd8:
	extsb %r0, %r3
	cmpwi %r0, 0x2e
	bne- _156d0c
	subf %r0, %r26, %r24
	cmpwi %r0, 0x8
	bgt- _156cf8
	cmpwi %r5, 0x1
	bne- _156d00
_156cf8:
	li %r4, 0x1
	b _156d30
_156d00:
	addi %r27, %r24, 0x1
	li %r5, 0x1
	b _156d18
_156d0c:
	cmpwi %r0, 0x20
	bne- _156d18
	li %r4, 0x1
_156d18:
	addi %r24, %r24, 0x1
_156d1c:
	lbz %r3, 0x0(%r24)
	extsb. %r0, %r3
	beq- _156d30
	cmpwi %r0, 0x2f
	bne+ _156cd8
_156d30:
	cmpwi %r5, 0x1
	bne- _156d48
	subf %r0, %r27, %r24
	cmpwi %r0, 0x3
	ble- _156d48
	li %r4, 0x1
_156d48:
	cmpwi %r4, 0x0
	beq- _156d8c
	mr %r6, %r28
	addi %r5, %r30, 0x3ee0
	subi %r3, %r13, 0x7340
	li %r4, 0x1bb
	crxor 6, 6, 6
	bl sub_19b300
	b _156d8c
_156d6c:
	mr %r24, %r26
	b _156d78
_156d74:
	addi %r24, %r24, 0x1
_156d78:
	lbz %r0, 0x0(%r24)
	extsb. %r0, %r0
	beq- _156d8c
	cmpwi %r0, 0x2f
	bne+ _156d74
_156d8c:
	lbz %r3, 0x0(%r24)
	mulli %r0, %r29, 0xc
	lwz %r8, -0x65c0(%r13)
	subf %r9, %r26, %r24
	extsb %r6, %r3
	lwz %r4, -0x65c4(%r13)
	neg %r5, %r6
	add %r3, %r8, %r0
	lwz %r12, 0x38(%r31)
	or %r0, %r5, %r6
	lwz %r5, 0x8(%r3)
	srwi  %r0, %r0, 31
	addi %r3, %r29, 0x1
	b _156eb0
_156dc4:
	mulli %r6, %r3, 0xc
	lwzux %r10, %r6, %r8
	clrrwi. %r7, %r10, 24
	bne- _156ddc
	cmpwi %r0, 0x1
	beq- _156e9c
_156ddc:
	clrlwi  %r10, %r10, 8
	mr %r29, %r26
	add %r25, %r4, %r10
	b _156e64
_156dec:
	lbz %r11, 0x0(%r25)
	li %r10, 0x0
	addi %r25, %r25, 0x1
	extsb. %r24, %r11
	blt- _156e08
	cmpwi %r24, 0x100
	blt- _156e0c
_156e08:
	li %r10, 0x1
_156e0c:
	cmpwi %r10, 0x0
	beq- _156e18
	b _156e20
_156e18:
	lwz %r10, 0x10(%r12)
	lbzx %r24, %r10, %r24
_156e20:
	lbz %r11, 0x0(%r29)
	li %r10, 0x0
	addi %r29, %r29, 0x1
	extsb. %r11, %r11
	blt- _156e3c
	cmpwi %r11, 0x100
	blt- _156e40
_156e3c:
	li %r10, 0x1
_156e40:
	cmpwi %r10, 0x0
	beq- _156e4c
	b _156e54
_156e4c:
	lwz %r10, 0x10(%r12)
	lbzx %r11, %r10, %r11
_156e54:
	cmpw %r11, %r24
	beq- _156e64
	li %r10, 0x0
	b _156e94
_156e64:
	lbz %r10, 0x0(%r25)
	extsb. %r10, %r10
	bne+ _156dec
	lbz %r10, 0x0(%r29)
	extsb %r10, %r10
	cmpwi %r10, 0x2f
	beq- _156e88
	cmpwi %r10, 0x0
	bne- _156e90
_156e88:
	li %r10, 0x1
	b _156e94
_156e90:
	li %r10, 0x0
_156e94:
	cmpwi %r10, 0x1
	beq- _156ec0
_156e9c:
	cmpwi %r7, 0x0
	beq- _156eac
	lwz %r3, 0x8(%r6)
	b _156eb0
_156eac:
	addi %r3, %r3, 0x1
_156eb0:
	cmplw %r3, %r5
	blt+ _156dc4
	li %r3, -0x1
	b _156edc
_156ec0:
	cmpwi %r0, 0x0
	bne- _156ecc
	b _156edc
_156ecc:
	add %r4, %r9, %r26
	mr %r29, %r3
	addi %r26, %r4, 0x1
	b _156c18
_156edc:
	addi %r11, %r1, 0x30
	bl sub_197c0
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_156ef4
t1_156ef4:
	.incbin "basemain.dol", 0x159454, 0x68
	
	.global sub_156f5c
sub_156f5c: # 0x8015e21c
	stwu %r1, -0xa0(%r1)
	mflr %r0
	stw %r0, 0xa4(%r1)
	addi %r11, %r1, 0xa0
	bl sub_19780
	mr %r28, %r3
	mr %r27, %r4
	bl sub_156bec
	cmpwi %r3, 0x0
	bge- _1571a0
	lwz %r29, -0x65d8(%r13)
	cmpwi %r29, 0x0
	bne- _156f98
	li %r4, 0x0
	b _157124
_156f98:
	lwz %r8, -0x65c0(%r13)
	mulli %r0, %r29, 0xc
	lwz %r7, -0x65c4(%r13)
	addi %r6, %r8, 0x4
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r30, %r7, %r0
	bne- _156fc8
	li %r4, 0x0
	b _1570c8
_156fc8:
	mulli %r0, %r3, 0xc
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r31, %r7, %r0
	bne- _156fec
	li %r4, 0x0
	b _15706c
_156fec:
	mulli %r3, %r3, 0xc
	addi %r4, %r1, 0x8
	li %r5, 0x80
	lwzx %r0, %r8, %r3
	lwzx %r3, %r6, %r3
	clrlwi  %r0, %r0, 8
	add %r27, %r7, %r0
	bl sub_15722c
	cmplwi %r3, 0x80
	mr %r4, %r3
	bne- _15701c
	b _15706c
_15701c:
	addi %r4, %r3, 0x1
	addi %r5, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r5, %r3
	subfic %r6, %r4, 0x80
	mr %r3, %r6
	add %r5, %r5, %r4
	b _157050
_15703c:
	lbz %r0, 0x0(%r27)
	subi %r3, %r3, 0x1
	addi %r27, %r27, 0x1
	stb %r0, 0x0(%r5)
	addi %r5, %r5, 0x1
_157050:
	cmpwi %r3, 0x0
	beq- _157064
	lbz %r0, 0x0(%r27)
	extsb. %r0, %r0
	bne+ _15703c
_157064:
	subf %r0, %r3, %r6
	add %r4, %r4, %r0
_15706c:
	cmplwi %r4, 0x80
	bne- _157078
	b _1570c8
_157078:
	addi %r5, %r4, 0x1
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	subfic %r6, %r5, 0x80
	mr %r4, %r6
	add %r3, %r3, %r5
	b _1570ac
_157098:
	lbz %r0, 0x0(%r31)
	subi %r4, %r4, 0x1
	addi %r31, %r31, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_1570ac:
	cmpwi %r4, 0x0
	beq- _1570c0
	lbz %r0, 0x0(%r31)
	extsb. %r0, %r0
	bne+ _157098
_1570c0:
	subf %r0, %r4, %r6
	add %r4, %r5, %r0
_1570c8:
	cmplwi %r4, 0x80
	bne- _1570d4
	b _157124
_1570d4:
	addi %r5, %r4, 0x1
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	subfic %r6, %r5, 0x80
	mr %r4, %r6
	add %r3, %r3, %r5
	b _157108
_1570f4:
	lbz %r0, 0x0(%r30)
	subi %r4, %r4, 0x1
	addi %r30, %r30, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_157108:
	cmpwi %r4, 0x0
	beq- _15711c
	lbz %r0, 0x0(%r30)
	extsb. %r0, %r0
	bne+ _1570f4
_15711c:
	subf %r0, %r4, %r6
	add %r4, %r5, %r0
_157124:
	cmplwi %r4, 0x80
	bne- _157138
	li %r0, 0x0
	stb %r0, 0x87(%r1)
	b _157180
_157138:
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	lwzx %r0, %r3, %r0
	clrrwi. %r0, %r0, 24
	beq- _157174
	cmplwi %r4, 0x7f
	bne- _157164
	addi %r3, %r1, 0x8
	li %r0, 0x0
	stbx %r0, %r3, %r4
	b _157180
_157164:
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	addi %r4, %r4, 0x1
_157174:
	addi %r3, %r1, 0x8
	li %r0, 0x0
	stbx %r0, %r3, %r4
_157180:
	lis %r3, 0x8028
	mr %r4, %r28
	addi %r3, %r3, 0x3fa8
	addi %r5, %r1, 0x8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _1571f0
_1571a0:
	mulli %r6, %r3, 0xc
	lwz %r3, -0x65c0(%r13)
	lwzx %r0, %r3, %r6
	clrrwi. %r0, %r0, 24
	beq- _1571bc
	li %r3, 0x0
	b _1571f0
_1571bc:
	add %r3, %r3, %r6
	lwz %r4, -0x6564(%r13)
	lwz %r5, 0x4(%r3)
	li %r0, 0x0
	li %r3, 0x1
	srw %r4, %r5, %r4
	stw %r4, 0x30(%r27)
	lwz %r4, -0x65c0(%r13)
	add %r4, %r4, %r6
	lwz %r4, 0x8(%r4)
	stw %r4, 0x34(%r27)
	stw %r0, 0x38(%r27)
	stw %r0, 0xc(%r27)
_1571f0:
	addi %r11, %r1, 0xa0
	bl sub_197cc
	lwz %r0, 0xa4(%r1)
	mtlr %r0
	addi %r1, %r1, 0xa0
	blr

	.global sub_157208
sub_157208: # 0x8015e4c8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl sub_15bc8c
	lwz %r0, 0x14(%r1)
	li %r3, 0x1
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15722c
sub_15722c: # 0x8015e4ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r3, 0x0
	mr %r28, %r4
	mr %r29, %r5
	bne- _157258
	li %r3, 0x0
	b _1573d4
_157258:
	lwz %r8, -0x65c0(%r13)
	mulli %r0, %r3, 0xc
	lwz %r7, -0x65c4(%r13)
	addi %r6, %r8, 0x4
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r30, %r7, %r0
	bne- _157288
	li %r4, 0x0
	b _157378
_157288:
	mulli %r0, %r3, 0xc
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r31, %r7, %r0
	bne- _1572ac
	li %r4, 0x0
	b _157320
_1572ac:
	mulli %r3, %r3, 0xc
	lwzx %r0, %r8, %r3
	lwzx %r3, %r6, %r3
	clrlwi  %r0, %r0, 8
	add %r27, %r7, %r0
	bl sub_15722c
	cmplw %r3, %r29
	mr %r4, %r3
	bne- _1572d4
	b _157320
_1572d4:
	addi %r4, %r3, 0x1
	li %r0, 0x2f
	subf %r6, %r4, %r29
	stbx %r0, %r28, %r3
	add %r3, %r28, %r4
	mr %r5, %r6
	b _157304
_1572f0:
	lbz %r0, 0x0(%r27)
	subi %r5, %r5, 0x1
	addi %r27, %r27, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_157304:
	cmpwi %r5, 0x0
	beq- _157318
	lbz %r0, 0x0(%r27)
	extsb. %r0, %r0
	bne+ _1572f0
_157318:
	subf %r0, %r5, %r6
	add %r4, %r4, %r0
_157320:
	cmplw %r4, %r29
	bne- _15732c
	b _157378
_15732c:
	addi %r3, %r4, 0x1
	li %r0, 0x2f
	subf %r6, %r3, %r29
	stbx %r0, %r28, %r4
	add %r4, %r28, %r3
	mr %r5, %r6
	b _15735c
_157348:
	lbz %r0, 0x0(%r31)
	subi %r5, %r5, 0x1
	addi %r31, %r31, 0x1
	stb %r0, 0x0(%r4)
	addi %r4, %r4, 0x1
_15735c:
	cmpwi %r5, 0x0
	beq- _157370
	lbz %r0, 0x0(%r31)
	extsb. %r0, %r0
	bne+ _157348
_157370:
	subf %r0, %r5, %r6
	add %r4, %r3, %r0
_157378:
	cmplw %r4, %r29
	bne- _157388
	mr %r3, %r4
	b _1573d4
_157388:
	addi %r6, %r4, 0x1
	li %r0, 0x2f
	subf %r5, %r6, %r29
	stbx %r0, %r28, %r4
	add %r3, %r28, %r6
	mr %r4, %r5
	b _1573b8
_1573a4:
	lbz %r0, 0x0(%r30)
	subi %r4, %r4, 0x1
	addi %r30, %r30, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_1573b8:
	cmpwi %r4, 0x0
	beq- _1573cc
	lbz %r0, 0x0(%r30)
	extsb. %r0, %r0
	bne+ _1573a4
_1573cc:
	subf %r0, %r4, %r5
	add %r3, %r6, %r0
_1573d4:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1573ec
t1_1573ec:
	.incbin "basemain.dol", 0x15994c, 0xe8
	
	.global sub_1574d4
sub_1574d4: # 0x8015e794
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r6, 0x0
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r31, %r6
	mr %r30, %r7
	blt- _157510
	lwz %r0, 0x34(%r3)
	cmplw %r6, %r0
	ble- _157528
_157510:
	lis %r5, 0x8028
	subi %r3, %r13, 0x7340
	addi %r5, %r5, 0x4014
	li %r4, 0x37d
	crxor 6, 6, 6
	bl sub_19b300
_157528:
	add. %r4, %r31, %r29
	blt- _157540
	lwz %r3, 0x34(%r27)
	addi %r0, %r3, 0x20
	cmplw %r4, %r0
	blt- _157558
_157540:
	lis %r5, 0x8028
	subi %r3, %r13, 0x7340
	addi %r5, %r5, 0x4014
	li %r4, 0x383
	crxor 6, 6, 6
	bl sub_19b300
_157558:
	lwz %r6, 0x30(%r27)
	srawi %r0, %r31, 2
	lis %r7, 0x8016
	mr %r3, %r27
	mr %r4, %r28
	mr %r5, %r29
	mr %r8, %r30
	add %r6, %r6, %r0
	subi %r7, %r7, 0x1744
	bl sub_15b56c
	cmpwi %r3, 0x0
	bne- _157590
	li %r3, -0x1
	b _1575e4
_157590:
	bl sub_19f24c
	mr %r31, %r3
_157598:
	lwz %r0, 0xc(%r27)
	cmpwi %r0, 0x0
	bne- _1575ac
	lwz %r30, 0x20(%r27)
	b _1575d8
_1575ac:
	cmpwi %r0, -0x1
	bne- _1575bc
	li %r30, -0x1
	b _1575d8
_1575bc:
	cmpwi %r0, 0xa
	bne- _1575cc
	li %r30, -0x3
	b _1575d8
_1575cc:
	subi %r3, %r13, 0x65d0
	bl sub_1a3658
	b _157598
_1575d8:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
_1575e4:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1575fc
t1_1575fc:
	.incbin "basemain.dol", 0x159b5c, 0x21bc
	
	.global sub_1597b8
sub_1597b8: # 0x80160a78
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r3, 0x1
	stw %r0, 0x14(%r1)
	lwz %r0, -0x651c(%r13)
	stw %r3, -0x6530(%r13)
	cmplwi %r0, 0x2a
	bgt- _159850
	lis %r3, 0x8028
	slwi  %r0, %r0, 2
	addi %r3, %r3, 0x40c4
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	bl sub_15c260
	lis %r3, 0x8034
	lwz %r4, -0x6510(%r13)
	subi %r3, %r3, 0x12e0
	stw %r3, -0x6510(%r13)
	lwz %r12, 0x28(%r4)
	cmpwi %r12, 0x0
	beq- _15981c
	li %r3, -0x4
	mtctr %r12
	bctrl 
_15981c:
	bl sub_15a2b4
	b _15986c
	
	.global t1_159824
t1_159824:
	.incbin "basemain.dol", 0x15bd84, 0x2c
	
_159850:
	li %r0, 0x0
	li %r3, 0x1
	stw %r0, -0x6530(%r13)
	bl sub_15e9a0
	lis %r3, 0x8016
	addi %r3, %r3, 0xd8c
	bl sub_15e9ac
_15986c:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15987c
t1_15987c:
	.incbin "basemain.dol", 0x15bddc, 0xa38
	
	.global sub_15a2b4
sub_15a2b4: # 0x80161574
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_15c3a0
	cmpwi %r3, 0x0
	bne- _15a2dc
	li %r0, 0x0
	stw %r0, -0x6510(%r13)
	b _15a5c8
_15a2dc:
	lwz %r0, -0x659c(%r13)
	cmpwi %r0, 0x0
	beq- _15a2fc
	li %r3, 0x1
	li %r0, 0x0
	stw %r3, -0x6598(%r13)
	stw %r0, -0x6510(%r13)
	b _15a5c8
_15a2fc:
	bl sub_15c300
	lwz %r0, -0x6594(%r13)
	stw %r3, -0x6510(%r13)
	cmpwi %r0, 0x0
	beq- _15a348
	li %r0, -0x1
	lis %r5, 0x8034
	stw %r0, 0xc(%r3)
	subi %r5, %r5, 0x12e0
	lwz %r4, -0x6510(%r13)
	stw %r5, -0x6510(%r13)
	lwz %r12, 0x28(%r4)
	cmpwi %r12, 0x0
	beq- _15a340
	li %r3, -0x1
	mtctr %r12
	bctrl 
_15a340:
	bl sub_15a2b4
	b _15a5c8
_15a348:
	lwz %r0, 0x8(%r3)
	stw %r0, -0x651c(%r13)
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0x20
	beq- _15a374
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0xe
	beq- _15a374
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0x23
	bne- _15a37c
_15a374:
	li %r0, 0x0
	stw %r0, -0x658c(%r13)
_15a37c:
	lwz %r0, -0x658c(%r13)
	cmpwi %r0, 0x0
	beq- _15a564
	lwz %r0, -0x658c(%r13)
	cmpwi %r0, 0x4
	beq- _15a4bc
	bge- _15a3b0
	cmpwi %r0, 0x2
	beq- _15a3c4
	bge- _15a440
	cmpwi %r0, 0x1
	bge- _15a538
	b _15a558
_15a3b0:
	cmpwi %r0, 0x8
	bge- _15a558
	cmpwi %r0, 0x6
	bge- _15a538
	b _15a548
_15a3c4:
	li %r0, 0xb
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a440:
	li %r0, 0x4
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a4bc:
	li %r0, 0x5
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a538:
	li %r0, 0x3
	stw %r0, 0xc(%r3)
	bl sub_1597b8
	b _15a558
_15a548:
	lis %r4, 0x8016
	lwz %r3, -0x6524(%r13)
	subi %r4, %r4, 0x1120
	bl sub_15cd54
_15a558:
	li %r0, 0x0
	stw %r0, -0x658c(%r13)
	b _15a5c8
_15a564:
	lwz %r0, -0x6530(%r13)
	cmpwi %r0, 0x1
	beq- _15a5c4
	bge- _15a580
	cmpwi %r0, 0x0
	bge- _15a5b0
	b _15a5c4
_15a580:
	cmpwi %r0, 0x3
	bge- _15a5c4
	lwz %r0, -0x6570(%r13)
	cmpwi %r0, 0x0
	beq- _15a5a0
	li %r0, 0xc
	stw %r0, 0xc(%r3)
	b _15a5c8
_15a5a0:
	li %r0, 0x3
	stw %r0, 0xc(%r3)
	bl sub_1597b8
	b _15a5c8
_15a5b0:
	li %r0, 0x1
	stw %r0, 0xc(%r3)
	lwz %r3, -0x6510(%r13)
	bl sub_15a5dc
	b _15a5c8
_15a5c4:
	bl sub_1597b8
_15a5c8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15a5dc
sub_15a5dc: # 0x8016189c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_1977c
	lis %r4, 0x8016
	mr %r29, %r3
	addi %r4, %r4, 0x189c
	stw %r4, -0x650c(%r13)
	lwz %r30, 0x8(%r3)
	cmplwi %r30, 0x2a
	bgt- _15a6a8
	lis %r4, 0x8028
	slwi  %r0, %r30, 2
	addi %r4, %r4, 0x421c
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	lwz %r26, 0x14(%r3)
	lwz %r27, 0x10(%r3)
	bl sub_19f24c
	lwz %r0, -0x65a0(%r13)
	mr %r31, %r3
	cmplwi %r0, 0x5
	blt- _15a648
	li %r0, 0x0
	stw %r0, -0x65a0(%r13)
_15a648:
	lwz %r0, -0x65a0(%r13)
	lis %r28, 0x8034
	lwz %r3, -0x65a0(%r13)
	subi %r28, %r28, 0xfc0
	mulli %r4, %r0, 0x14
	lwz %r0, -0x65a0(%r13)
	mulli %r3, %r3, 0x14
	add %r4, %r28, %r4
	stw %r30, 0x1c(%r4)
	add %r3, %r28, %r3
	mulli %r0, %r0, 0x14
	stw %r27, 0x20(%r3)
	add %r3, %r28, %r0
	stw %r26, 0x24(%r3)
	bl sub_1a3a14
	lwz %r0, -0x65a0(%r13)
	lwz %r4, -0x65a0(%r13)
	mulli %r5, %r0, 0x14
	addi %r0, %r4, 0x1
	stw %r0, -0x65a0(%r13)
	add %r4, %r28, %r5
	stw %r3, 0x2c(%r4)
	mr %r3, %r31
	bl sub_19f274
_15a6a8:
	lwz %r0, 0x8(%r29)
	cmplwi %r0, 0x2a
	bgt- _15ab5c
	lis %r3, 0x8028
	slwi  %r0, %r0, 2
	addi %r3, %r3, 0x4170
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	li %r3, 0x0
	bl sub_15f604
	li %r0, 0x20
	lis %r4, 0x8016
	stw %r0, 0x1c(%r29)
	addi %r4, %r4, 0x1e4c
	lwz %r3, 0x18(%r29)
	bl sub_15d74c
	b _15ab74

	.global t1_15a6f0
t1_15a6f0:
	.incbin "basemain.dol", 0x15cc50, 0x46c

_15ab5c:
	lwz %r12, -0x7330(%r13)
	lis %r4, 0x8016
	mr %r3, %r29
	addi %r4, %r4, 0x1e4c
	mtctr %r12
	bctrl 
_15ab74:
	addi %r11, %r1, 0x30
	bl sub_197c8
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_15ab8c
t1_15ab8c:
	.incbin "basemain.dol", 0x15d0ec, 0x9e0

	.global sub_15b56c
sub_15b56c: # 0x8016282c
	stwu %r1, -0x20(%r1)
	mflr %r0
	li %r9, 0x1
	stw %r0, 0x24(%r1)
	li %r0, 0x0
	stw %r31, 0x1c(%r1)
	mr %r31, %r8
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r9, 0x8(%r3)
	stw %r4, 0x18(%r3)
	stw %r5, 0x14(%r3)
	stw %r6, 0x10(%r3)
	stw %r0, 0x20(%r3)
	stw %r7, 0x28(%r3)
	lwz %r0, -0x7334(%r13)
	cmpwi %r0, 0x0
	beq- _15b5ec
	cmplwi %r9, 0x1
	beq- _15b5e0
	cmplwi %r9, 0x4
	beq- _15b5e0
	cmplwi %r9, 0x5
	beq- _15b5e0
	cmplwi %r9, 0x21
	beq- _15b5e0
	cmplwi %r9, 0xe
	bne- _15b5ec
_15b5e0:
	lwz %r3, 0x18(%r3)
	lwz %r4, 0x14(%r29)
	bl sub_19a2a0
_15b5ec:
	bl sub_19f24c
	li %r0, 0x2
	mr %r30, %r3
	stw %r0, 0xc(%r29)
	mr %r3, %r31
	mr %r4, %r29
	bl sub_15c298
	lwz %r0, -0x6510(%r13)
	mr %r31, %r3
	cmpwi %r0, 0x0
	bne- _15b628
	lwz %r0, -0x659c(%r13)
	cmpwi %r0, 0x0
	bne- _15b628
	bl sub_15a2b4
_15b628:
	mr %r3, %r30
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_15b650
t1_15b650:
	.incbin "basemain.dol", 0x15dbb0, 0x2d8

	.global sub_15b928
sub_15b928: # 0x80162be8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lwz %r4, 0xc(%r29)
	mr %r31, %r3
	addi %r0, %r4, 0x1
	cmplwi %r0, 0xd
	bgt- _15bc64
	lis %r4, 0x8028
	slwi  %r0, %r0, 2
	addi %r4, %r4, 0x4380
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	cmpwi %r30, 0x0
	beq- _15bc64
	mr %r12, %r30
	mr %r4, %r29
	li %r3, 0x0
	mtctr %r12
	bctrl 
	b _15bc64

	.global t1_15b998
t1_15b998:
	.incbin "basemain.dol", 0x15def8, 0x2cc
	
_15bc64:
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x1
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_15bc8c
sub_15bc8c: # 0x80162f4c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x8016
	stw %r0, 0x14(%r1)
	addi %r4, %r4, 0x3028
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_15b928
	cmpwi %r3, 0x0
	bne- _15bcc0
	li %r3, -0x1
	b _15bd50
_15bcc0:
	bl sub_19f24c
	mr %r31, %r3
_15bcc8:
	lwz %r0, 0xc(%r30)
	cmpwi %r0, 0x0
	beq- _15bd44
	cmpwi %r0, -0x1
	beq- _15bd44
	cmpwi %r0, 0xa
	beq- _15bd44
	cmpwi %r0, 0x3
	bne- _15bd38
	lwz %r0, 0x8(%r30)
	cmplwi %r0, 0x4
	beq- _15bd44
	cmplwi %r0, 0x5
	beq- _15bd44
	cmplwi %r0, 0xd
	beq- _15bd44
	cmplwi %r0, 0x21
	beq- _15bd44
	cmplwi %r0, 0x22
	beq- _15bd44
	cmplwi %r0, 0x29
	beq- _15bd44
	cmplwi %r0, 0x2a
	beq- _15bd44
	cmplwi %r0, 0xf
	beq- _15bd44
	cmplwi %r0, 0x25
	beq- _15bd44
_15bd38:
	subi %r3, %r13, 0x65d0
	bl sub_1a3658
	b _15bcc8
_15bd44:
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x0
_15bd50:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15bd68
t1_15bd68:
	.incbin "basemain.dol", 0x15e2c8, 0x4f8

	.global sub_15c260
sub_15c260: # 0x80163520
	lis %r6, 0x8034
	subi %r6, %r6, 0x1150
	addi %r5, %r6, 0x8
	stw %r6, 0x0(%r6)
	addi %r4, %r6, 0x10
	addi %r3, %r6, 0x18
	stw %r6, 0x4(%r6)
	stw %r5, 0x8(%r6)
	stw %r5, 0xc(%r6)
	stw %r4, 0x10(%r6)
	stw %r4, 0x14(%r6)
	stw %r3, 0x18(%r6)
	stw %r3, 0x1c(%r6)
	blr

	.global sub_15c298
sub_15c298: # 0x80163558
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r4, 0x8034
	slwi  %r0, %r30, 3
	subi %r4, %r4, 0x1150
	add %r5, %r4, %r0
	lwz %r4, 0x4(%r5)
	stw %r31, 0x0(%r4)
	lwz %r0, 0x4(%r5)
	stw %r0, 0x4(%r31)
	stw %r5, 0x0(%r31)
	stw %r31, 0x4(%r5)
	bl sub_19f274
	lwz %r31, 0xc(%r1)
	li %r3, 0x1
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15c300
sub_15c300: # 0x801635c0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lis %r4, 0x8034
	li %r0, 0x4
	li %r31, 0x0
	subi %r4, %r4, 0x1150
	mtctr %r0
_15c328:
	lwz %r0, 0x0(%r4)
	cmplw %r0, %r4
	beq- _15c378
	bl sub_19f274
	bl sub_19f24c
	lis %r4, 0x8034
	slwi  %r0, %r31, 3
	subi %r4, %r4, 0x1150
	lwzx %r31, %r4, %r0
	add %r5, %r4, %r0
	lwz %r0, 0x0(%r31)
	stw %r0, 0x0(%r5)
	lwz %r4, 0x0(%r31)
	stw %r5, 0x4(%r4)
	bl sub_19f274
	li %r0, 0x0
	mr %r3, %r31
	stw %r0, 0x0(%r31)
	stw %r0, 0x4(%r31)
	b _15c38c
_15c378:
	addi %r4, %r4, 0x8
	addi %r31, %r31, 0x1
	bdnz+ _15c328
	bl sub_19f274
	li %r3, 0x0
_15c38c:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15c3a0
sub_15c3a0: # 0x80163660
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl sub_19f24c
	lis %r4, 0x8034
	li %r0, 0x4
	subi %r4, %r4, 0x1150
	mtctr %r0
_15c3c0:
	lwz %r0, 0x0(%r4)
	cmplw %r0, %r4
	beq- _15c3d8
	bl sub_19f274
	li %r3, 0x1
	b _15c3e8
_15c3d8:
	addi %r4, %r4, 0x8
	bdnz+ _15c3c0
	bl sub_19f274
	li %r3, 0x0
_15c3e8:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15c3f8
t1_15c3f8:
	.incbin "basemain.dol", 0x15e958, 0x95c

	.global sub_15cd54
sub_15cd54: # 0x80164014
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8034
	subi %r31, %r31, 0xfc0
	stw %r30, 0x8(%r1)
	mr %r30, %r4
	stw %r3, 0x8(%r31)
	bl sub_1a39fc
	lis %r6, 0x8000
	li %r5, 0x0
	lwz %r0, 0xf8(%r6)
	srwi  %r6, %r0, 2
	bl sub_198d0
	lis %r3, 0x8016
	stw %r4, 0xc(%r31)
	addi %r3, %r3, 0x3f84
	stw %r30, -0x6500(%r13)
	bl sub_15f480
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15cdbc
t1_15cdbc:
	.incbin "basemain.dol", 0x15f31c, 0x990

	.global sub_15d74c
sub_15d74c: # 0x80164a0c
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r7, 0x8034
	li %r10, 0x1
	stw %r0, 0x24(%r1)
	subi %r7, %r7, 0xea0
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	lwz %r9, -0x64e0(%r13)
	stb %r10, -0x64e8(%r13)
	slwi  %r8, %r9, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15d7c4
	mr %r4, %r9
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15d7c0:
	b _15d7c0
_15d7c4:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15d7e4
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15d7e0:
	b _15d7e0
_15d7e4:
	stwx %r4, %r7, %r8
	addi %r0, %r9, 0x1
	cmpwi %r0, 0x4
	stw %r10, 0x4(%r6)
	stb %r10, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15d808
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15d808:
	lis %r4, 0x8034
	cmpwi %r3, 0x0
	slwi  %r0, %r9, 5
	subi %r4, %r4, 0xea0
	add %r29, %r4, %r0
	bne- _15d82c
	addi %r3, %r31, 0x2e8
	crxor 6, 6, 6
	bl sub_19b270
_15d82c:
	lwz %r3, -0x64e4(%r13)
	addi %r0, %r3, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15d848
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15d848:
	lwz %r3, -0x64cc(%r13)
	lis %r9, 0x8016
	slwi  %r0, %r0, 5
	li %r4, 0x70
	stbx %r4, %r3, %r0
	mr %r7, %r30
	mr %r10, %r29
	addi %r9, %r9, 0x45e4
	lwz %r0, -0x64e4(%r13)
	li %r4, 0x70
	lwz %r5, -0x64cc(%r13)
	li %r6, 0x20
	slwi  %r0, %r0, 5
	lwz %r3, -0x7318(%r13)
	add %r5, %r5, %r0
	li %r8, 0x20
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15d8b4
	mr %r4, %r3
	addi %r3, %r31, 0x324
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r29)
	b _15d8b8
_15d8b4:
	li %r3, 0x1
_15d8b8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_15d8d4
t1_15d8d4:
	.incbin "basemain.dol", 0x15fe34, 0x10cc

	.global sub_15e9a0
sub_15e9a0: # 0x80165c60
	stw %r3, -0x64d8(%r13)
	li %r3, 0x1
	blr

	.global sub_15e9ac
sub_15e9ac: # 0x80165c6c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r7, 0x8034
	li %r9, 0x1
	stw %r0, 0x14(%r1)
	subi %r7, %r7, 0xea0
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15ea18
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15ea14:
	b _15ea14
_15ea18:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15ea38
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15ea34:
	b _15ea34
_15ea38:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15ea5c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15ea5c:
	lwz %r3, -0x64e4(%r13)
	lis %r5, 0x8034
	slwi  %r4, %r4, 5
	addi %r0, %r3, 0x1
	subi %r5, %r5, 0xea0
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	add %r30, %r5, %r4
	blt- _15ea88
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15ea88:
	lwz %r3, -0x64cc(%r13)
	lis %r9, 0x8016
	slwi  %r0, %r0, 5
	li %r4, 0x8a
	stbx %r4, %r3, %r0
	mr %r10, %r30
	addi %r9, %r9, 0x45e4
	li %r4, 0x8a
	lwz %r0, -0x64e4(%r13)
	li %r6, 0x20
	lwz %r3, -0x64cc(%r13)
	li %r7, 0x0
	slwi  %r0, %r0, 5
	lwz %r5, -0x64d8(%r13)
	add %r3, %r3, %r0
	li %r8, 0x0
	stw %r5, 0x4(%r3)
	lwz %r0, -0x64e4(%r13)
	lwz %r5, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	lwz %r3, -0x7318(%r13)
	add %r5, %r5, %r0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15eb0c
	mr %r4, %r3
	addi %r3, %r31, 0x860
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15eb10
_15eb0c:
	li %r3, 0x1
_15eb10:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15eb28
t1_15eb28:
	.incbin "basemain.dol", 0x161088, 0x958

	.global sub_15f480
sub_15f480: # 0x80166740
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15f4b8
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15f4b8:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x95
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15f518
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15f514:
	b _15f514
_15f518:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15f538
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15f534:
	b _15f534
_15f538:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15f55c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15f55c:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r7, 0x8034
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	lis %r9, 0x8016
	lwz %r3, -0x7318(%r13)
	add %r5, %r4, %r0
	mr %r10, %r30
	subi %r7, %r7, 0xd20
	addi %r9, %r9, 0x45e4
	li %r4, 0x95
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15f5cc
	mr %r4, %r3
	addi %r3, %r31, 0xdf4
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15f5d0
_15f5cc:
	li %r3, 0x1
_15f5d0:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15f5e8
t1_15f5e8:
	.incbin "basemain.dol", 0x161b48, 0x1c

	.global sub_15f604
sub_15f604: # 0x801668c4
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15f63c
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15f63c:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x86
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15f69c
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15f698:
	b _15f698
_15f69c:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15f6bc
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15f6b8:
	b _15f6b8
_15f6bc:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15f6e0
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15f6e0:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r9, 0x8016
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	add %r5, %r4, %r0
	lwz %r3, -0x7318(%r13)
	mr %r10, %r30
	addi %r9, %r9, 0x45e4
	li %r4, 0x86
	li %r6, 0x20
	li %r7, 0x0
	li %r8, 0x0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15f74c
	mr %r4, %r3
	addi %r3, %r31, 0xe3c
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15f750
_15f74c:
	li %r3, 0x1
_15f750:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15f768
t1_15f768:
	.incbin "basemain.dol", 0x161cc8, 0x2c548

	.global sub_18bcb0
sub_18bcb0: # 0x80192f70
	slwi  %r0, %r3, 2
	lis %r3, 0xcd00
	lwzx %r3, %r3, %r0
	blr

	.global sub_18bcc0
sub_18bcc0: # 0x80192f80
	slwi  %r0, %r3, 2
	lis %r3, 0xcd00
	stwx %r4, %r3, %r0
	blr
	
	.global t1_18bcd0
t1_18bcd0:
	.incbin "basemain.dol", 0x18e230, 0x570

	.global sub_18c240
sub_18c240: # 0x80193500
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bne- _18c274
	li %r31, -0x4
	b _18c440
_18c274:
	cmpwi %r4, 0x0
	bne- _18c284
	addi %r3, %r3, 0x2c
	bl sub_1a2540
_18c284:
	mr %r3, %r28
	li %r4, 0x20
	bl sub_19a2cc
	bl sub_19f24c
	lis %r4, 0x8034
	mr %r30, %r3
	addi %r3, %r4, 0x1240
	lwz %r4, 0x1240(%r4)
	lwz %r0, 0x4(%r3)
	li %r31, 0x0
	cmplw %r0, %r4
	bge- _18c2bc
	subf %r0, %r4, %r0
	b _18c2d8
_18c2bc:
	subf %r4, %r4, %r0
	li %r3, 0x10
	subi %r0, %r4, 0x10
	orc %r3, %r4, %r3
	srwi  %r0, %r0, 1
	subf %r0, %r0, %r3
	srwi  %r0, %r0, 31
_18c2d8:
	cmpwi %r0, 0x0
	beq- _18c2e8
	li %r31, -0x8
	b _18c328
_18c2e8:
	lis %r6, 0x8034
	mr %r3, %r28
	addi %r6, %r6, 0x1240
	lwz %r0, 0xc(%r6)
	slwi  %r0, %r0, 2
	add %r4, %r6, %r0
	stw %r28, 0x10(%r4)
	lwz %r5, 0xc(%r6)
	lwz %r4, 0x4(%r6)
	addi %r0, %r5, 0x1
	clrlwi  %r5, %r0, 28
	addi %r0, %r4, 0x1
	stw %r5, 0xc(%r6)
	stw %r0, 0x4(%r6)
	lwz %r4, 0x8(%r28)
	bl sub_18dc34
_18c328:
	cmpwi %r31, 0x0
	beq- _18c350
	mr %r3, %r30
	bl sub_19f274
	cmpwi %r29, 0x0
	beq- _18c440
	lwz %r3, -0x726c(%r13)
	mr %r4, %r28
	bl sub_18d990
	b _18c440
_18c350:
	lwz %r0, -0x7270(%r13)
	cmpwi %r0, 0x0
	ble- _18c41c
	lis %r4, 0x8034
	addi %r3, %r4, 0x1240
	lwz %r4, 0x1240(%r4)
	lwz %r0, 0x4(%r3)
	cmplw %r0, %r4
	bge- _18c37c
	subf %r0, %r4, %r0
	b _18c388
_18c37c:
	subf %r0, %r4, %r0
	cntlzw %r0, %r0
	srwi  %r0, %r0, 5
_18c388:
	cmpwi %r0, 0x0
	bne- _18c41c
	lis %r3, 0x8034
	addi %r3, %r3, 0x1240
	lwz %r0, 0x8(%r3)
	slwi  %r0, %r0, 2
	add %r3, %r3, %r0
	lwz %r4, 0x10(%r3)
	cmpwi %r4, 0x0
	beq- _18c41c
	lwz %r0, 0x28(%r4)
	cmpwi %r0, 0x0
	beq- _18c3c8
	lwz %r3, -0x7270(%r13)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
_18c3c8:
	addis %r4, %r4, 0x8000
	li %r3, 0x0
	bl sub_18bcc0
	lis %r7, 0x8034
	lwz %r3, -0x7270(%r13)
	addi %r6, %r7, 0x1240
	lwz %r4, 0x1240(%r7)
	lwz %r5, 0x8(%r6)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
	addi %r4, %r4, 0x1
	addi %r0, %r5, 0x1
	li %r3, 0x1
	clrlwi  %r0, %r0, 28
	stw %r4, 0x1240(%r7)
	stw %r0, 0x8(%r6)
	bl sub_18bcb0
	rlwinm  %r0, %r3, 0, 26, 27
	li %r3, 0x1
	ori %r4, %r0, 0x1
	bl sub_18bcc0
_18c41c:
	cmpwi %r29, 0x0
	bne- _18c42c
	addi %r3, %r28, 0x2c
	bl sub_1a3658
_18c42c:
	mr %r3, %r30
	bl sub_19f274
	cmpwi %r29, 0x0
	bne- _18c440
	lwz %r31, 0x4(%r28)
_18c440:
	cmpwi %r28, 0x0
	beq- _18c45c
	cmpwi %r29, 0x0
	bne- _18c45c
	lwz %r3, -0x726c(%r13)
	mr %r4, %r28
	bl sub_18d990
_18c45c:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_18c480
t1_18c480:
	.incbin "basemain.dol", 0x18e9e0, 0x978

	.global sub_18cdf8
sub_18cdf8: # 0x801940b8
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19770
	addic. %r0, %r1, 0x8
	mr %r23, %r3
	mr %r24, %r4
	mr %r25, %r5
	mr %r26, %r6
	mr %r27, %r7
	mr %r28, %r8
	mr %r29, %r9
	mr %r30, %r10
	li %r31, 0x0
	bne- _18ce40
	li %r31, -0x4
	b _18ce88
_18ce40:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18ce64
	li %r31, -0x16
	b _18ce88
_18ce64:
	stw %r29, 0x20(%r3)
	li %r5, 0x0
	li %r0, 0x6
	lwz %r4, 0x8(%r1)
	stw %r30, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r23, 0x8(%r3)
_18ce88:
	cmpwi %r31, 0x0
	bne- _18cf14
	lwz %r5, 0x8(%r1)
	li %r31, 0x0
	cmpwi %r5, 0x0
	bne- _18cea8
	li %r31, -0x4
	b _18cefc
_18cea8:
	cmpwi %r27, 0x0
	stw %r24, 0xc(%r5)
	beq- _18cebc
	addis %r0, %r27, 0x8000
	b _18cec0
_18cebc:
	li %r0, 0x0
_18cec0:
	stw %r0, 0x18(%r5)
	cmpwi %r25, 0x0
	stw %r28, 0x1c(%r5)
	beq- _18ced8
	addis %r0, %r25, 0x8000
	b _18cedc
_18ced8:
	li %r0, 0x0
_18cedc:
	stw %r0, 0x10(%r5)
	mr %r3, %r25
	mr %r4, %r26
	stw %r26, 0x14(%r5)
	bl sub_19a2cc
	mr %r3, %r27
	mr %r4, %r28
	bl sub_19a2cc
_18cefc:
	cmpwi %r31, 0x0
	bne- _18cf14
	lwz %r3, 0x8(%r1)
	mr %r4, %r29
	bl sub_18c240
	mr %r31, %r3
_18cf14:
	addi %r11, %r1, 0x40
	mr %r3, %r31
	bl sub_197bc
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	
	.global t1_18cf30
t1_18cf30:
	.incbin "basemain.dol", 0x18f490, 0x858

_18d788:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, 0x0
	stw %r30, 0x18(%r1)
	mr %r30, %r5
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_19f24c
	cmpwi %r29, 0x0
	beq- _18d964
	cmpwi %r30, 0x0
	beq- _18d964
	subi %r0, %r30, 0x1
	and. %r0, %r30, %r0
	bne- _18d964
	cmplwi %r30, 0x20
	bge- _18d7e0
	li %r30, 0x20
_18d7e0:
	cmpwi %r28, 0x0
	addi %r0, %r29, 0x1f
	clrrwi  %r29, %r0, 5
	blt- _18d810
	cmpwi %r28, 0x8
	bge- _18d810
	lis %r4, 0x8034
	slwi  %r0, %r28, 4
	addi %r4, %r4, 0x12e0
	lwzux %r0, %r4, %r0
	cmpwi %r0, 0x0
	bne- _18d818
_18d810:
	li %r31, 0x0
	b _18d964
_18d818:
	lwz %r8, 0xc(%r4)
	subi %r6, %r30, 0x1
	li %r5, 0x0
	b _18d87c
_18d828:
	lwz %r7, 0x4(%r8)
	addi %r0, %r8, 0x10
	and %r0, %r0, %r6
	cmplw %r7, %r29
	subf %r0, %r0, %r30
	and %r0, %r6, %r0
	bne- _18d854
	cmpwi %r0, 0x0
	bne- _18d854
	mr %r5, %r8
	b _18d884
_18d854:
	add %r0, %r29, %r0
	cmplw %r7, %r0
	blt- _18d878
	cmpwi %r5, 0x0
	beq- _18d874
	lwz %r0, 0x4(%r5)
	cmplw %r7, %r0
	bge- _18d878
_18d874:
	mr %r5, %r8
_18d878:
	lwz %r8, 0xc(%r8)
_18d87c:
	cmpwi %r8, 0x0
	bne+ _18d828
_18d884:
	cmpwi %r5, 0x0
	beq- _18d964
	subi %r7, %r30, 0x1
	addi %r0, %r5, 0x10
	and %r0, %r0, %r7
	lwz %r6, 0x4(%r5)
	subf %r0, %r0, %r30
	and %r8, %r7, %r0
	add %r7, %r29, %r8
	addi %r0, %r7, 0x10
	cmplw %r6, %r0
	ble- _18d8f8
	add %r6, %r5, %r29
	lis %r0, 0xbabe
	add %r9, %r8, %r6
	stw %r0, 0x10(%r9)
	lwz %r0, 0x4(%r5)
	subf %r0, %r29, %r0
	subf %r6, %r8, %r0
	subi %r0, %r6, 0x10
	stw %r0, 0x14(%r9)
	lwz %r6, 0xc(%r5)
	cmpwi %r6, 0x0
	stw %r6, 0x1c(%r9)
	addi %r9, %r9, 0x10
	beq- _18d8f0
	stw %r9, 0x8(%r6)
_18d8f0:
	stw %r9, 0xc(%r5)
	stw %r7, 0x4(%r5)
_18d8f8:
	lis %r6, 0xbabe
	addi %r0, %r6, 0x1
	stw %r0, 0x0(%r5)
	lwz %r6, 0x8(%r5)
	cmpwi %r6, 0x0
	beq- _18d91c
	lwz %r0, 0xc(%r5)
	stw %r0, 0xc(%r6)
	b _18d924
_18d91c:
	lwz %r0, 0xc(%r5)
	stw %r0, 0xc(%r4)
_18d924:
	lwz %r4, 0xc(%r5)
	cmpwi %r4, 0x0
	beq- _18d938
	lwz %r0, 0x8(%r5)
	stw %r0, 0x8(%r4)
_18d938:
	li %r0, 0x0
	add %r31, %r5, %r8
	stw %r0, 0xc(%r5)
	cmpwi %r8, 0x0
	addi %r31, %r31, 0x10
	stw %r0, 0x8(%r5)
	beq- _18d964
	lis %r4, 0xbabe
	addi %r0, %r4, 0x2
	stw %r0, -0x10(%r31)
	stw %r5, -0x8(%r31)
_18d964:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_18d98c
sub_18d98c: # 0x80194c4c
	b _18d788

	.global sub_18d990
sub_18d990: # 0x80194c50
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, -0x4
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	cmpwi %r30, 0x0
	beq- _18db58
	cmpwi %r29, 0x0
	blt- _18d9ec
	cmpwi %r29, 0x8
	bge- _18d9ec
	lis %r4, 0x8034
	slwi  %r0, %r29, 4
	addi %r4, %r4, 0x12e0
	add %r5, %r4, %r0
	lwzx %r4, %r4, %r0
	cmpwi %r4, 0x0
	bne- _18d9f4
_18d9ec:
	li %r31, -0x4
	b _18db58
_18d9f4:
	addi %r0, %r4, 0x10
	cmplw %r30, %r0
	blt- _18db58
	lwz %r0, 0x8(%r5)
	add %r0, %r4, %r0
	cmplw %r30, %r0
	bgt- _18db58
	lwz %r4, -0x10(%r30)
	subi %r6, %r30, 0x10
	addis %r0, %r4, 0x4542
	cmplwi %r0, 0x2
	bne- _18da28
	lwz %r6, 0x8(%r6)
_18da28:
	lwz %r4, 0x0(%r6)
	addis %r0, %r4, 0x4542
	cmplwi %r0, 0x1
	bne- _18db58
	lis %r0, 0xbabe
	stw %r0, 0x0(%r6)
	lwz %r4, 0xc(%r5)
	mr %r7, %r4
	b _18da64
_18da4c:
	lwz %r0, 0xc(%r7)
	cmpwi %r0, 0x0
	beq- _18da6c
	cmplw %r0, %r6
	bgt- _18da6c
	mr %r7, %r0
_18da64:
	cmpwi %r7, 0x0
	bne+ _18da4c
_18da6c:
	cmpwi %r7, 0x0
	beq- _18daa0
	cmplw %r6, %r7
	ble- _18daa0
	stw %r7, 0x8(%r6)
	lwz %r0, 0xc(%r7)
	stw %r0, 0xc(%r6)
	stw %r6, 0xc(%r7)
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	beq- _18dac0
	stw %r6, 0x8(%r4)
	b _18dac0
_18daa0:
	stw %r4, 0xc(%r6)
	li %r0, 0x0
	stw %r6, 0xc(%r5)
	stw %r0, 0x8(%r6)
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	beq- _18dac0
	stw %r6, 0x8(%r4)
_18dac0:
	cmpwi %r6, 0x0
	beq- _18db08
	lwz %r0, 0x4(%r6)
	lwz %r5, 0xc(%r6)
	add %r4, %r6, %r0
	addi %r0, %r4, 0x10
	cmplw %r5, %r0
	bne- _18db08
	lwz %r4, 0xc(%r5)
	cmpwi %r4, 0x0
	stw %r4, 0xc(%r6)
	beq- _18daf4
	stw %r6, 0x8(%r4)
_18daf4:
	lwz %r4, 0x4(%r6)
	lwz %r0, 0x4(%r5)
	add %r4, %r0, %r4
	addi %r0, %r4, 0x10
	stw %r0, 0x4(%r6)
_18db08:
	lwz %r5, 0x8(%r6)
	cmpwi %r5, 0x0
	beq- _18db54
	lwz %r0, 0x4(%r5)
	lwz %r6, 0xc(%r5)
	add %r4, %r5, %r0
	addi %r0, %r4, 0x10
	cmplw %r6, %r0
	bne- _18db54
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	stw %r4, 0xc(%r5)
	beq- _18db40
	stw %r5, 0x8(%r4)
_18db40:
	lwz %r4, 0x4(%r5)
	lwz %r0, 0x4(%r6)
	add %r4, %r0, %r4
	addi %r0, %r4, 0x10
	stw %r0, 0x4(%r5)
_18db54:
	li %r31, 0x0
_18db58:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_18db7c
t1_18db7c:
	.incbin "basemain.dol", 0x1900dc, 0xb8

	.global sub_18dc34
sub_18dc34: # 0x80194ef4
	lwz %r6, -0x63f0(%r13)
	lis %r8, 0x8034
	lwz %r5, -0x63ec(%r13)
	lis %r9, 0x8034
	addi %r6, %r6, 0x1
	li %r0, 0x20
	addi %r5, %r5, 0x1
	stw %r6, -0x63f0(%r13)
	addi %r8, %r8, 0x13e0
	addi %r9, %r9, 0x1360
	stw %r5, -0x63ec(%r13)
	li %r7, 0x0
	mtctr %r0
_18dc68:
	lwz %r0, 0x0(%r8)
	cmpwi %r0, 0x0
	bne- _18dca0
	lwz %r0, 0x0(%r9)
	cmpwi %r0, -0x1
	bne- _18dca0
	lis %r6, 0x8034
	lis %r5, 0x8034
	slwi  %r0, %r7, 2
	addi %r6, %r6, 0x13e0
	addi %r5, %r5, 0x1360
	stwx %r3, %r6, %r0
	stwx %r4, %r5, %r0
	blr
_18dca0:
	addi %r8, %r8, 0x4
	addi %r9, %r9, 0x4
	addi %r7, %r7, 0x1
	bdnz+ _18dc68
	blr
	
	.global t1_18dcb4
t1_18dcb4:
	.incbin "basemain.dol", 0x190214, 0x31d8

	.global sub_190e8c
sub_190e8c: # 0x8019814c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	stw %r28, 0x10(%r1)
	mr %r28, %r4
	b _190f90
_190eb8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f90
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f90
	li %r31, 0x0
	b _190f60
_190ed8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f60
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f60
	li %r30, 0x0
	b _190f30
_190ef8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f30
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f30
	mr %r4, %r28
	addi %r3, %r3, 0xc
	bl sub_190e8c
	cmpwi %r3, 0x0
	beq- _190f28
	b _190f4c
_190f28:
	mr %r3, %r30
	b _190f4c
_190f30:
	mr %r4, %r30
	addi %r3, %r31, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne+ _190ef8
	li %r3, 0x0
_190f4c:
	cmpwi %r3, 0x0
	beq- _190f58
	b _190f7c
_190f58:
	mr %r3, %r31
	b _190f7c
_190f60:
	mr %r4, %r31
	addi %r3, %r29, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne+ _190ed8
	li %r3, 0x0
_190f7c:
	cmpwi %r3, 0x0
	beq- _190f88
	b _190fac
_190f88:
	mr %r3, %r29
	b _190fac
_190f90:
	mr %r3, %r30
	mr %r4, %r29
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne+ _190eb8
	li %r3, 0x0
_190fac:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_190fcc
t1_190fcc:
	.incbin "basemain.dol", 0x19352c, 0x32c

	.global sub_1912f8
sub_1912f8: # 0x801985b8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8034
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	b _1913fc
_191324:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _1913fc
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _1913fc
	li %r30, 0x0
	b _1913cc
_191344:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _1913cc
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _1913cc
	li %r31, 0x0
	b _19139c
_191364:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _19139c
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _19139c
	mr %r4, %r28
	addi %r3, %r3, 0xc
	bl sub_190e8c
	cmpwi %r3, 0x0
	beq- _191394
	b _1913b8
_191394:
	mr %r3, %r31
	b _1913b8
_19139c:
	mr %r4, %r31
	addi %r3, %r30, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne+ _191364
	li %r3, 0x0
_1913b8:
	cmpwi %r3, 0x0
	beq- _1913c4
	b _1913e8
_1913c4:
	mr %r3, %r30
	b _1913e8
_1913cc:
	mr %r4, %r30
	addi %r3, %r29, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne+ _191344
	li %r3, 0x0
_1913e8:
	cmpwi %r3, 0x0
	beq- _1913f4
	b _191418
_1913f4:
	mr %r3, %r29
	b _191418
_1913fc:
	mr %r4, %r29
	addi %r3, %r31, 0x2970
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne+ _191324
	li %r3, 0x0
_191418:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_191438
t1_191438:
	.incbin "basemain.dol", 0x193998, 0x154c

	.global sub_192984
sub_192984: # 0x80199c44
	cmpwi %r4, 0x0
	bne- _192994
	lwz %r3, 0x0(%r3)
	blr
_192994:
	lhz %r0, 0xa(%r3)
	add %r3, %r4, %r0
	lwz %r3, 0x4(%r3)
	blr

	.global t1_1929a4
t1_1929a4:
	.incbin "basemain.dol", 0x194f04, 0x54a4
	.global t1_197e48
t1_197e48:
	.incbin "basemain.dol", 0x19a3a8, 0xac0
	.global t1_198908
t1_198908:
	.incbin "basemain.dol", 0x19ae68, 0x838
	.global t1_199140
t1_199140:
	.incbin "basemain.dol", 0x19b6a0, 0x170
	
	.global sub_1992b0
sub_1992b0: # 0x801a0570
	li %r0, 0x0
	stw %r0, 0x0(%r3)
	stw %r0, 0x4(%r3)
	blr

	.global sub_1992c0
sub_1992c0: # 0x801a0580
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	lwz %r4, 0x18(%r3)
	li %r29, 0x0
	lwz %r8, 0x1c(%r3)
	mr %r30, %r3
	xoris %r0, %r29, 0x8000
	xoris %r4, %r4, 0x8000
	subfc %r3, %r8, %r29
	mr %r31, %r7
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	beq- _19937c
	bl sub_1a3a1c
	lwz %r28, 0x20(%r30)
	xoris %r7, %r3, 0x8000
	lwz %r27, 0x24(%r30)
	xoris %r0, %r28, 0x8000
	mr %r5, %r28
	subfc %r6, %r4, %r27
	subfe %r7, %r7, %r0
	subfe %r7, %r0, %r0
	mr %r6, %r27
	neg. %r7, %r7
	beq- _19937c
	lwz %r26, 0x18(%r30)
	subfc %r4, %r27, %r4
	lwz %r25, 0x1c(%r30)
	subfe %r3, %r28, %r3
	mr %r5, %r26
	mr %r6, %r25
	bl sub_198d0
	li %r0, 0x1
	addc %r4, %r4, %r0
	mulhwu %r0, %r25, %r4
	adde %r5, %r3, %r29
	mullw %r3, %r26, %r4
	mullw %r4, %r25, %r4
	add %r3, %r0, %r3
	mullw %r0, %r25, %r5
	addc %r6, %r27, %r4
	add %r0, %r3, %r0
	adde %r5, %r28, %r0
_19937c:
	stw %r31, 0x0(%r30)
	xoris %r0, %r5, 0x8000
	stw %r6, 0xc(%r30)
	stw %r5, 0x8(%r30)
	lwz %r7, -0x6360(%r13)
	b _199454
_199394:
	lwz %r3, 0x8(%r7)
	lwz %r5, 0xc(%r7)
	xoris %r4, %r3, 0x8000
	subfc %r3, %r5, %r6
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	beq- _199450
	lwz %r0, 0x10(%r7)
	stw %r0, 0x10(%r30)
	stw %r30, 0x10(%r7)
	lwz %r3, 0x10(%r30)
	stw %r7, 0x14(%r30)
	cmpwi %r3, 0x0
	beq- _1993d8
	stw %r30, 0x14(%r3)
	b _1994f8
_1993d8:
	stw %r30, -0x6360(%r13)
	bl sub_1a3a1c
	lwz %r5, 0xc(%r30)
	li %r7, 0x0
	lwz %r0, 0x8(%r30)
	xoris %r6, %r7, 0x8000
	subfc %r8, %r4, %r5
	subfe %r0, %r3, %r0
	xoris %r5, %r0, 0x8000
	subfc %r0, %r7, %r8
	subfe %r6, %r6, %r5
	subfe %r6, %r5, %r5
	neg. %r6, %r6
	beq- _19941c
	li %r3, 0x0
	bl sub_127234
	b _1994f8
_19941c:
	lis %r4, 0x8000
	xoris %r3, %r7, 0x8000
	subfc %r0, %r4, %r8
	subfe %r3, %r3, %r5
	subfe %r3, %r5, %r5
	neg. %r3, %r3
	beq- _199444
	mr %r3, %r8
	bl sub_127234
	b _1994f8
_199444:
	subi %r3, %r4, 0x1
	bl sub_127234
	b _1994f8
_199450:
	lwz %r7, 0x14(%r7)
_199454:
	cmpwi %r7, 0x0
	bne+ _199394
	li %r31, 0x0
	subi %r3, %r13, 0x6360
	stw %r31, 0x14(%r30)
	lwz %r4, 0x4(%r3)
	stw %r30, 0x4(%r3)
	cmpwi %r4, 0x0
	stw %r4, 0x10(%r30)
	beq- _199484
	stw %r30, 0x14(%r4)
	b _1994f8
_199484:
	stw %r30, 0x4(%r3)
	stw %r30, -0x6360(%r13)
	bl sub_1a3a1c
	lwz %r5, 0xc(%r30)
	xoris %r6, %r31, 0x8000
	lwz %r0, 0x8(%r30)
	subfc %r7, %r4, %r5
	subfe %r0, %r3, %r0
	xoris %r5, %r0, 0x8000
	subfc %r0, %r31, %r7
	subfe %r6, %r6, %r5
	subfe %r6, %r5, %r5
	neg. %r6, %r6
	beq- _1994c8
	li %r3, 0x0
	bl sub_127234
	b _1994f8
_1994c8:
	lis %r4, 0x8000
	xoris %r3, %r31, 0x8000
	subfc %r0, %r4, %r7
	subfe %r3, %r3, %r5
	subfe %r3, %r5, %r5
	neg. %r3, %r3
	beq- _1994f0
	mr %r3, %r7
	bl sub_127234
	b _1994f8
_1994f0:
	subi %r3, %r4, 0x1
	bl sub_127234
_1994f8:
	addi %r11, %r1, 0x30
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_199510
t1_199510:
	.incbin "basemain.dol", 0x19ba70, 0x70

	.global sub_199580
sub_199580: # 0x801a0840
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	mr %r26, %r3
	mr %r28, %r5
	mr %r27, %r6
	mr %r29, %r7
	mr %r31, %r8
	mr %r30, %r9
	bl sub_19f24c
	stw %r31, 0x1c(%r26)
	mr %r31, %r3
	mr %r4, %r27
	mr %r3, %r28
	stw %r29, 0x18(%r26)
	bl sub_1a3a80
	stw %r3, 0x20(%r26)
	mr %r3, %r26
	mr %r7, %r30
	li %r6, 0x0
	stw %r4, 0x24(%r26)
	li %r5, 0x0
	bl sub_1992c0
	mr %r3, %r31
	bl sub_19f274
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_199604
t1_199604:
	.incbin "basemain.dol", 0x19bb64, 0xc9c
	
	.global sub_19a2a0
sub_19a2a0: # 0x801a1560
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a2bc:
	dcbi 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a2bc
	blr

	.global sub_19a2cc
sub_19a2cc: # 0x801a158c
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a2e8:
	dcbf 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a2e8
	sc
	blr
	
	.global t1_19a2fc
t1_19a2fc:
	.incbin "basemain.dol", 0x19c85c, 0xb4 # "Before"? Before what?

	.global sub_19a3b0
sub_19a3b0: # 0x801a1670
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a3cc:
	icbi 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a3cc
	sync
	isync
	blr
	
	.global t1_19a3e4
t1_19a3e4:
	.incbin "basemain.dol", 0x19c944, 0x3a0

	.global t1_19a784
t1_19a784:
	.incbin "basemain.dol", 0x19cce4, 0x38c

	.global sub_19ab10
sub_19ab10: # 0x801a1dd0
	lis %r4, 0x8000
	stw %r3, 0xd4(%r4)
	clrlwi  %r5, %r3, 2
	stw %r5, 0xc0(%r4)
	lwz %r5, 0xd8(%r4)
	cmpw %r5, %r3
	bne- _19ab48
	lwz %r6, 0x19c(%r3)
	ori %r6, %r6, 0x2000
	stw %r6, 0x19c(%r3)
	mfmsr %r6
	ori %r6, %r6, 0x2
	mtmsr %r6
	blr
_19ab48:
	lwz %r6, 0x19c(%r3)
	rlwinm  %r6, %r6, 0, 19, 17
	stw %r6, 0x19c(%r3)
	mfmsr %r6
	rlwinm  %r6, %r6, 0, 19, 17
	ori %r6, %r6, 0x2
	mtmsr %r6
	isync
	blr

	.global sub_19ab6c
sub_19ab6c: # 0x801a1e2c
	lis %r3, 0x8000
	lwz %r3, 0xd4(%r3)
	blr

	.global sub_19ab78
sub_19ab78: # 0x801a1e38
	stmw %r13, 0x34(%r3)
	mfspr %r0, 913
	stw %r0, 0x1a8(%r3)
	mfspr %r0, 914
	stw %r0, 0x1ac(%r3)
	mfspr %r0, 915
	stw %r0, 0x1b0(%r3)
	mfspr %r0, 916
	stw %r0, 0x1b4(%r3)
	mfspr %r0, 917
	stw %r0, 0x1b8(%r3)
	mfspr %r0, 918
	stw %r0, 0x1bc(%r3)
	mfspr %r0, 919
	stw %r0, 0x1c0(%r3)
	mfcr %r0
	stw %r0, 0x80(%r3)
	mflr %r0
	stw %r0, 0x84(%r3)
	stw %r0, 0x198(%r3)
	mfmsr %r0
	stw %r0, 0x19c(%r3)
	mfctr %r0
	stw %r0, 0x88(%r3)
	mfxer %r0
	stw %r0, 0x8c(%r3)
	stw %r1, 0x4(%r3)
	stw %r2, 0x8(%r3)
	li %r0, 0x1
	stw %r0, 0xc(%r3)
	li %r3, 0x0
	blr

	.global sub_19abf8
sub_19abf8: # 0x801a1eb8
	lis %r4, 0x801a
	lwz %r6, 0x198(%r3)
	addi %r5, %r4, 0x650c
	cmplw %r6, %r5
	ble- _19ac20
	lis %r4, 0x801a
	addi %r0, %r4, 0x6518
	cmplw %r6, %r0
	bge- _19ac20
	stw %r5, 0x198(%r3)
_19ac20:
	lwz %r0, 0x0(%r3)
	lwz %r1, 0x4(%r3)
	lwz %r2, 0x8(%r3)
	lhz %r4, 0x1a2(%r3)
	rlwinm. %r5, %r4, 0, 30, 30
	beq- _19ac48
	rlwinm  %r4, %r4, 0, 31, 29
	sth %r4, 0x1a2(%r3)
	lmw %r5, 0x14(%r3)
	b _19ac4c
_19ac48:
	lmw %r13, 0x34(%r3)
_19ac4c:
	lwz %r4, 0x1a8(%r3)
	mtspr 913, %r4
	lwz %r4, 0x1ac(%r3)
	mtspr 914, %r4
	lwz %r4, 0x1b0(%r3)
	mtspr 915, %r4
	lwz %r4, 0x1b4(%r3)
	mtspr 916, %r4
	lwz %r4, 0x1b8(%r3)
	mtspr 917, %r4
	lwz %r4, 0x1bc(%r3)
	mtspr 918, %r4
	lwz %r4, 0x1c0(%r3)
	mtspr 919, %r4
	lwz %r4, 0x80(%r3)
	mtcrf 255, %r4
	lwz %r4, 0x84(%r3)
	mtlr %r4
	lwz %r4, 0x88(%r3)
	mtctr %r4
	lwz %r4, 0x8c(%r3)
	mtxer %r4
	mfmsr %r4
	rlwinm  %r4, %r4, 0, 17, 15
	rlwinm  %r4, %r4, 0, 31, 29
	mtmsr %r4
	lwz %r4, 0x198(%r3)
	mtspr 26, %r4
	lwz %r4, 0x19c(%r3)
	mtspr 27, %r4
	lwz %r4, 0x10(%r3)
	lwz %r3, 0xc(%r3)
	rfi
	
	.global sub_19acd0
sub_19acd0: # 0x801a1f90
	mr %r3, %r1
	blr
	
	.global t1_19acd8
t1_19acd8:
	.incbin "basemain.dol", 0x19d238, 0x60

	.global sub_19ad38
sub_19ad38: # 0x801a1ff8
	li %r5, 0x0
	lis %r4, 0x8000
	sth %r5, 0x1a0(%r3)
	sth %r5, 0x1a2(%r3)
	lwz %r0, 0xd8(%r4)
	cmplw %r3, %r0
	bnelr- 
	stw %r5, 0xd8(%r4)
	blr
	
	.global t1_19ad5c
t1_19ad5c:
	.incbin "basemain.dol", 0x19d2bc, 0x514
	
	.global sub_19b270
sub_19b270: # 0x801a2530
	stwu %r1, -0x80(%r1)
	mflr %r0
	stw %r0, 0x84(%r1)
	stw %r31, 0x7c(%r1)
	bne- cr1, _19b2a4
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_19b2a4:
	addi %r11, %r1, 0x88
	addi %r0, %r1, 0x8
	lis %r12, 0x100
	stw %r3, 0x8(%r1)
	addi %r31, %r1, 0x68
	stw %r4, 0xc(%r1)
	mr %r4, %r31
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r12, 0x68(%r1)
	stw %r11, 0x6c(%r1)
	stw %r0, 0x70(%r1)
	bl sub_9990
	lwz %r0, 0x84(%r1)
	lwz %r31, 0x7c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x80
	blr
	
	.global t1_19b2fc
t1_19b2fc:
	.incbin "basemain.dol", 0x19d85c, 0x4
	
	.global sub_19b300
sub_19b300: # 0x801a25c0
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stw %r31, 0x8c(%r1)
	stw %r30, 0x88(%r1)
	mr %r30, %r4
	stw %r29, 0x84(%r1)
	mr %r29, %r5
	stw %r28, 0x80(%r1)
	mr %r28, %r3
	bne- cr1, _19b34c
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_19b34c:
	lis %r31, 0x8029
	stw %r3, 0x8(%r1)
	subi %r31, %r31, 0x4e40
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	bl sub_19f24c
	addi %r5, %r1, 0x98
	addi %r0, %r1, 0x8
	lis %r3, 0x300
	stw %r5, 0x6c(%r1)
	addi %r4, %r1, 0x68
	stw %r3, 0x68(%r1)
	mr %r3, %r29
	stw %r0, 0x70(%r1)
	bl sub_9990
	mr %r4, %r28
	mr %r5, %r30
	addi %r3, %r31, 0x0
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x18
	crxor 6, 6, 6
	bl sub_19b270
	li %r30, 0x0
	bl sub_19acd0
	mr %r29, %r3
	b _19b3e8
_19b3cc:
	lwz %r5, 0x0(%r29)
	mr %r4, %r29
	lwz %r6, 0x4(%r29)
	addi %r3, %r31, 0x40
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r29, 0x0(%r29)
_19b3e8:
	cmpwi %r29, 0x0
	beq- _19b408
	addis %r0, %r29, 0x1
	cmplwi %r0, 0xffff
	beq- _19b408
	cmplwi %r30, 0x10
	addi %r30, %r30, 0x1
	blt+ _19b3cc
_19b408:
	bl sub_127244
	lwz %r0, 0x94(%r1)
	lwz %r31, 0x8c(%r1)
	lwz %r30, 0x88(%r1)
	lwz %r29, 0x84(%r1)
	lwz %r28, 0x80(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr
	
	.global t1_19b42c
t1_19b42c:
	.incbin "basemain.dol", 0x19d98c, 0x3e20

	.global sub_19f24c
sub_19f24c: # 0x801a650c
	mfmsr %r3
	rlwinm  %r4, %r3, 0, 17, 15
	mtmsr %r4
	extrwi  %r3, %r3, 1, 16
	blr

	.global sub_19f260
sub_19f260: # 0x801a6520
	mfmsr %r3
	ori %r4, %r3, 0x8000
	mtmsr %r4
	extrwi  %r3, %r3, 1, 16
	blr

	.global sub_19f274
sub_19f274: # 0x801a6534
	cmpwi %r3, 0x0
	mfmsr %r4
	beq- _19f288
	ori %r5, %r4, 0x8000
	b _19f28c
_19f288:
	rlwinm  %r5, %r4, 0, 17, 15
_19f28c:
	mtmsr %r5
	extrwi  %r3, %r4, 1, 16
	blr
	
	.global t1_19f298
t1_19f298:
	.incbin "basemain.dol", 0x1a17f8, 0x738
	
	.global sub_19f9d0
sub_19f9d0: # 0x801a6c90
	blr

	.global sub_19f9d4
sub_19f9d4: # 0x801a6c94
	blr

	.global sub_19f9d8
sub_19f9d8: # 0x801a6c98
	blr

	.global sub_19f9dc
sub_19f9dc: # 0x801a6c9c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	cmpwi %r3, 0x0
	mr %r26, %r3
	mr %r27, %r4
	beq- _19fa08
	lwz %r31, 0x0(%r3)
	b _19fa0c
_19fa08:
	li %r31, 0x0
_19fa0c:
	lwz %r24, 0x28(%r4)
	lwz %r0, 0x2c(%r4)
	add %r3, %r24, %r0
	addi %r0, %r3, 0x7
	subf %r0, %r24, %r0
	srwi  %r0, %r0, 3
	mtctr %r0
	cmplw %r24, %r3
	bge- _19fa44
_19fa30:
	lwz %r0, 0x0(%r24)
	cmplw %r0, %r31
	beq- _19fa4c
	addi %r24, %r24, 0x8
	bdnz+ _19fa30
_19fa44:
	li %r3, 0x0
	b _19fc84
_19fa4c:
	mr %r3, %r26
	mr %r4, %r27
	bl sub_19f9d4
	lwz %r30, 0x4(%r24)
	li %r29, 0x0
	lis %r25, 0x8029
	b _19fc40
_19fa68:
	lhz %r0, 0x0(%r30)
	cmpwi %r31, 0x0
	add %r28, %r28, %r0
	beq- _19fa90
	lbz %r0, 0x3(%r30)
	lwz %r3, 0x10(%r26)
	slwi  %r0, %r0, 3
	lwzx %r0, %r3, %r0
	clrrwi  %r3, %r0, 1
	b _19fa94
_19fa90:
	li %r3, 0x0
_19fa94:
	cmpwi %r4, 0x6
	beq- _19fb5c
	bge- _19facc
	cmpwi %r4, 0x2
	beq- _19fb0c
	bge- _19fabc
	cmpwi %r4, 0x0
	beq- _19fc3c
	bge- _19fafc
	b _19fc30
_19fabc:
	cmpwi %r4, 0x4
	beq- _19fb38
	bge- _19fb48
	b _19fb28
_19facc:
	cmpwi %r4, 0xc9
	beq- _19fc3c
	bge- _19faf0
	cmpwi %r4, 0xa
	beq- _19fb94
	blt- _19fb78
	cmpwi %r4, 0xe
	bge- _19fc30
	b _19fbb4
_19faf0:
	cmpwi %r4, 0xcb
	bge- _19fc30
	b _19fbd4
_19fafc:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb0c:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r3, %r3, %r0
	rlwinm  %r0, %r4, 0, 30, 5
	rlwimi  %r0, %r3, 0, 6, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb28:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb38:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb48:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	srwi  %r0, %r0, 16
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb5c:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	srwi  %r3, %r0, 16
	extrwi  %r0, %r0, 1, 16
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb78:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r3, %r3, %r0
	rlwinm  %r0, %r4, 0, 30, 15
	rlwimi  %r0, %r3, 0, 16, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb94:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r0, %r3, %r0
	subf %r3, %r28, %r0
	rlwinm  %r0, %r4, 0, 30, 5
	rlwimi  %r0, %r3, 0, 6, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fbb4:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r0, %r3, %r0
	subf %r3, %r28, %r0
	rlwinm  %r0, %r4, 0, 30, 15
	rlwimi  %r0, %r3, 0, 16, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fbd4:
	lbz %r0, 0x3(%r30)
	cmpwi %r29, 0x0
	lwz %r3, 0x10(%r27)
	slwi  %r0, %r0, 3
	add %r23, %r3, %r0
	lwzx %r0, %r3, %r0
	clrrwi  %r28, %r0, 1
	beq- _19fc14
	lwz %r0, 0x0(%r29)
	lwz %r4, 0x4(%r29)
	clrrwi  %r24, %r0, 1
	mr %r3, %r24
	bl sub_19a2cc
	lwz %r4, 0x4(%r29)
	mr %r3, %r24
	bl sub_19a3b0
_19fc14:
	lwz %r0, 0x0(%r23)
	clrlwi. %r0, %r0, 31
	beq- _19fc28
	mr %r29, %r23
	b _19fc3c
_19fc28:
	li %r29, 0x0
	b _19fc3c
_19fc30:
	subi %r3, %r25, 0x3d10
	crxor 6, 6, 6
	bl sub_19b270
_19fc3c:
	addi %r30, %r30, 0x8
_19fc40:
	lbz %r4, 0x2(%r30)
	cmplwi %r4, 0xcb
	bne+ _19fa68
	cmpwi %r29, 0x0
	beq- _19fc74
	lwz %r0, 0x0(%r29)
	lwz %r4, 0x4(%r29)
	clrrwi  %r25, %r0, 1
	mr %r3, %r25
	bl sub_19a2cc
	lwz %r4, 0x4(%r29)
	mr %r3, %r25
	bl sub_19a3b0
_19fc74:
	mr %r3, %r26
	mr %r4, %r27
	bl sub_19f9d8
	li %r3, 0x1
_19fc84:
	addi %r11, %r1, 0x30
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
_19fc9c:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	li %r0, 0x0
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r28, 0x10(%r1)
	lwz %r6, 0x1c(%r3)
	stb %r0, 0x33(%r3)
	cmplwi %r6, 0x3
	bgt- _19fd18
	cmplwi %r6, 0x2
	blt- _19fd20
	lwz %r5, 0x40(%r3)
	cmpwi %r5, 0x0
	beq- _19fcfc
	divwu %r0, %r3, %r5
	mullw %r0, %r0, %r5
	subf. %r0, %r0, %r3
	bne- _19fd18
_19fcfc:
	lwz %r5, 0x44(%r3)
	cmpwi %r5, 0x0
	beq- _19fd20
	divwu %r0, %r4, %r5
	mullw %r0, %r0, %r5
	subf. %r0, %r0, %r4
	beq- _19fd20
_19fd18:
	li %r3, 0x0
	b _19ff5c
_19fd20:
	lis %r5, 0x8000
	lwz %r6, 0x30cc(%r5)
	cmpwi %r6, 0x0
	bne- _19fd38
	stw %r3, 0x30c8(%r5)
	b _19fd3c
_19fd38:
	stw %r3, 0x4(%r6)
_19fd3c:
	li %r0, 0x0
	stw %r6, 0x8(%r3)
	lis %r5, 0x8000
	stw %r0, 0x4(%r3)
	stw %r3, 0x30cc(%r5)
	lwz %r0, 0x10(%r3)
	lwz %r6, 0x24(%r3)
	add %r7, %r0, %r3
	lwz %r5, 0x28(%r3)
	lwz %r0, 0x1c(%r3)
	add %r6, %r6, %r3
	add %r5, %r5, %r3
	stw %r7, 0x10(%r3)
	cmplwi %r0, 0x3
	stw %r6, 0x24(%r3)
	stw %r5, 0x28(%r3)
	blt- _19fd8c
	lwz %r0, 0x48(%r3)
	add %r0, %r0, %r3
	stw %r0, 0x48(%r3)
_19fd8c:
	li %r6, 0x1
	li %r5, 0x8
	b _19fdd4
_19fd98:
	lwz %r0, 0x10(%r3)
	add %r7, %r0, %r5
	lwzx %r0, %r5, %r0
	cmpwi %r0, 0x0
	beq- _19fdb8
	add %r0, %r0, %r3
	stw %r0, 0x0(%r7)
	b _19fdcc
_19fdb8:
	lwz %r0, 0x4(%r7)
	cmpwi %r0, 0x0
	beq- _19fdcc
	stb %r6, 0x33(%r3)
	stw %r4, 0x0(%r7)
_19fdcc:
	addi %r5, %r5, 0x8
	addi %r6, %r6, 0x1
_19fdd4:
	lwz %r0, 0xc(%r3)
	cmplw %r6, %r0
	blt+ _19fd98
	lwz %r5, 0x28(%r3)
	b _19fdf8
_19fde8:
	lwz %r0, 0x4(%r5)
	add %r0, %r0, %r3
	stw %r0, 0x4(%r5)
	addi %r5, %r5, 0x8
_19fdf8:
	lwz %r4, 0x28(%r3)
	lwz %r0, 0x2c(%r3)
	add %r0, %r4, %r0
	cmplw %r5, %r0
	blt+ _19fde8
	lbz %r0, 0x30(%r3)
	cmpwi %r0, 0x0
	beq- _19fe34
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x34(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x34(%r3)
_19fe34:
	lbz %r0, 0x31(%r3)
	cmpwi %r0, 0x0
	beq- _19fe5c
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x38(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x38(%r3)
_19fe5c:
	lbz %r0, 0x32(%r3)
	cmpwi %r0, 0x0
	beq- _19fe84
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x3c(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x3c(%r3)
_19fe84:
	lis %r4, 0x8000
	lwz %r4, 0x30d0(%r4)
	cmpwi %r4, 0x0
	beq- _19fea0
	lwz %r0, 0x14(%r3)
	add %r0, %r0, %r4
	stw %r0, 0x14(%r3)
_19fea0:
	mr %r4, %r29
	li %r3, 0x0
	bl sub_19f9dc
	lis %r3, 0x8000
	lwz %r28, 0x30c8(%r3)
	b _19fedc
_19feb8:
	mr %r3, %r29
	mr %r4, %r28
	bl sub_19f9dc
	cmplw %r28, %r29
	beq- _19fed8
	mr %r3, %r28
	mr %r4, %r29
	bl sub_19f9dc
_19fed8:
	lwz %r28, 0x4(%r28)
_19fedc:
	cmpwi %r28, 0x0
	bne+ _19feb8
	cmpwi %r31, 0x0
	beq- _19ff40
	lwz %r4, 0x28(%r29)
	lwz %r0, 0x2c(%r29)
	mr %r5, %r4
	add %r3, %r4, %r0
	addi %r0, %r3, 0x7
	subf %r0, %r4, %r0
	srwi  %r0, %r0, 3
	mtctr %r0
	cmplw %r4, %r3
	bge- _19ff40
_19ff14:
	lwz %r3, 0x0(%r5)
	cmpwi %r3, 0x0
	beq- _19ff2c
	lwz %r0, 0x0(%r29)
	cmplw %r3, %r0
	bne- _19ff38
_19ff2c:
	subf %r0, %r4, %r5
	stw %r0, 0x2c(%r29)
	b _19ff40
_19ff38:
	addi %r5, %r5, 0x8
	bdnz+ _19ff14
_19ff40:
	lwz %r5, 0x20(%r29)
	mr %r3, %r30
	li %r4, 0x0
	bl memset
	mr %r3, %r29
	bl sub_19f9d0
	li %r3, 0x1
_19ff5c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_19ff7c
sub_19ff7c: # 0x801a723c
	li %r5, 0x0
	b _19fc9c
	
	.global t1_19ff84
t1_19ff84:
	.incbin "basemain.dol", 0x1a24e4, 0xc00

	.global sub_1a0b84
sub_1a0b84: # 0x801a7e44
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_19f24c
	mr %r29, %r3
	bl sub_1a2550
	mr %r30, %r3
	li %r31, 0x0
_1a0bb8:
	lwz %r0, 0x8(%r28)
	cmpwi %r0, 0x0
	bne- _1a0c00
	lwz %r3, 0xc(%r28)
	stw %r30, 0x8(%r28)
	addi %r0, %r3, 0x1
	stw %r0, 0xc(%r28)
	lwz %r3, 0x2f8(%r30)
	cmpwi %r3, 0x0
	bne- _1a0be8
	stw %r28, 0x2f4(%r30)
	b _1a0bec
_1a0be8:
	stw %r28, 0x10(%r3)
_1a0bec:
	li %r0, 0x0
	stw %r3, 0x14(%r28)
	stw %r0, 0x10(%r28)
	stw %r28, 0x2f8(%r30)
	b _1a0c38
_1a0c00:
	cmplw %r0, %r30
	bne- _1a0c18
	lwz %r3, 0xc(%r28)
	addi %r0, %r3, 0x1
	stw %r0, 0xc(%r28)
	b _1a0c38
_1a0c18:
	stw %r28, 0x2f0(%r30)
	lwz %r3, 0x8(%r28)
	lwz %r4, 0x2d0(%r30)
	bl sub_1a2858
	mr %r3, %r28
	bl sub_1a3658
	stw %r31, 0x2f0(%r30)
	b _1a0bb8
_1a0c38:
	mr %r3, %r29
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a0c60
sub_1a0c60: # 0x801a7f20
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	mr %r31, %r3
	bl sub_1a2550
	lwz %r0, 0x8(%r29)
	mr %r30, %r3
	cmplw %r0, %r3
	bne- _1a0d04
	lwz %r0, 0xc(%r29)
	subic. %r0, %r0, 0x1
	stw %r0, 0xc(%r29)
	bne- _1a0d04
	lwz %r4, 0x10(%r29)
	lwz %r5, 0x14(%r29)
	cmpwi %r4, 0x0
	bne- _1a0cc0
	stw %r5, 0x2f8(%r3)
	b _1a0cc4
_1a0cc0:
	stw %r5, 0x14(%r4)
_1a0cc4:
	cmpwi %r5, 0x0
	bne- _1a0cd4
	stw %r4, 0x2f4(%r3)
	b _1a0cd8
_1a0cd4:
	stw %r4, 0x10(%r5)
_1a0cd8:
	li %r0, 0x0
	stw %r0, 0x8(%r29)
	lwz %r4, 0x2d0(%r3)
	lwz %r0, 0x2d4(%r3)
	cmpw %r4, %r0
	bge- _1a0cfc
	mr %r3, %r30
	bl sub_1a2668
	stw %r3, 0x2d0(%r30)
_1a0cfc:
	mr %r3, %r29
	bl sub_1a3744
_1a0d04:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1a0d28
t1_1a0d28:
	.incbin "basemain.dol", 0x1a3288, 0x9f8
	
	.global t1_1a1720
t1_1a1720:
	.incbin "basemain.dol", 0x1a3c80, 0xe20
	
	.global sub_1a2540
sub_1a2540: # 0x801a9800
	li %r0, 0x0
	stw %r0, 0x4(%r3)
	stw %r0, 0x0(%r3)
	blr

	.global sub_1a2550
sub_1a2550: # 0x801a9810
	lis %r3, 0x8000
	lwz %r3, 0xe4(%r3)
	blr
	
	.global t1_1a255c
t1_1a255c:
	.incbin "basemain.dol", 0x1a4abc, 0xa4

	.global sub_1a2600
sub_1a2600: # 0x801a98c0
	lwz %r5, 0x2e0(%r3)
	lwz %r4, 0x2dc(%r3)
	cmpwi %r5, 0x0
	lwz %r6, 0x2e4(%r3)
	bne- _1a261c
	stw %r6, 0x4(%r4)
	b _1a2620
_1a261c:
	stw %r6, 0x2e4(%r5)
_1a2620:
	cmpwi %r6, 0x0
	bne- _1a2630
	stw %r5, 0x0(%r4)
	b _1a2634
_1a2630:
	stw %r5, 0x2e0(%r6)
_1a2634:
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	bne- _1a265c
	lwz %r0, 0x2d0(%r3)
	li %r4, 0x1
	lwz %r5, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r4, %r0
	andc %r0, %r5, %r0
	stw %r0, -0x62e0(%r13)
_1a265c:
	li %r0, 0x0
	stw %r0, 0x2dc(%r3)
	blr

	.global sub_1a2668
sub_1a2668: # 0x801a9928
	lwz %r4, 0x2d4(%r3)
	lwz %r3, 0x2f4(%r3)
	b _1a2694
_1a2674:
	lwz %r5, 0x0(%r3)
	cmpwi %r5, 0x0
	beq- _1a2690
	lwz %r0, 0x2d0(%r5)
	cmpw %r0, %r4
	bge- _1a2690
	mr %r4, %r0
_1a2690:
	lwz %r3, 0x10(%r3)
_1a2694:
	cmpwi %r3, 0x0
	bne+ _1a2674
	mr %r3, %r4
	blr

	.global sub_1a26a4
sub_1a26a4: # 0x801a9964
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lhz %r0, 0x2c8(%r3)
	cmpwi %r0, 0x3
	beq- _1a283c
	bge- _1a26e0
	cmpwi %r0, 0x1
	beq- _1a26ec
	bge- _1a2830
	b _1a283c
_1a26e0:
	cmpwi %r0, 0x5
	bge- _1a283c
	b _1a2758
_1a26ec:
	bl sub_1a2600
	lis %r3, 0x8034
	slwi  %r0, %r31, 3
	addi %r3, %r3, 0x3430
	stw %r31, 0x2d0(%r30)
	add %r3, %r3, %r0
	stw %r3, 0x2dc(%r30)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a271c
	stw %r30, 0x0(%r3)
	b _1a2720
_1a271c:
	stw %r30, 0x2e0(%r4)
_1a2720:
	li %r0, 0x0
	stw %r4, 0x2e4(%r30)
	lwz %r4, 0x2dc(%r30)
	li %r3, 0x1
	stw %r0, 0x2e0(%r30)
	stw %r30, 0x4(%r4)
	lwz %r0, 0x2d0(%r30)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
	b _1a283c
_1a2758:
	lwz %r6, 0x2e0(%r3)
	lwz %r7, 0x2e4(%r3)
	cmpwi %r6, 0x0
	bne- _1a2774
	lwz %r5, 0x2dc(%r3)
	stw %r7, 0x4(%r5)
	b _1a2778
_1a2774:
	stw %r7, 0x2e4(%r6)
_1a2778:
	cmpwi %r7, 0x0
	bne- _1a278c
	lwz %r5, 0x2dc(%r3)
	stw %r6, 0x0(%r5)
	b _1a2790
_1a278c:
	stw %r6, 0x2e0(%r7)
_1a2790:
	stw %r4, 0x2d0(%r3)
	lwz %r5, 0x2dc(%r3)
	lwz %r6, 0x0(%r5)
	b _1a27a4
_1a27a0:
	lwz %r6, 0x2e0(%r6)
_1a27a4:
	cmpwi %r6, 0x0
	beq- _1a27bc
	lwz %r4, 0x2d0(%r6)
	lwz %r0, 0x2d0(%r3)
	cmpw %r4, %r0
	ble+ _1a27a0
_1a27bc:
	cmpwi %r6, 0x0
	bne- _1a27f4
	lwz %r4, 0x4(%r5)
	cmpwi %r4, 0x0
	bne- _1a27d8
	stw %r3, 0x0(%r5)
	b _1a27dc
_1a27d8:
	stw %r3, 0x2e0(%r4)
_1a27dc:
	li %r0, 0x0
	stw %r4, 0x2e4(%r3)
	lwz %r4, 0x2dc(%r3)
	stw %r0, 0x2e0(%r3)
	stw %r3, 0x4(%r4)
	b _1a281c
_1a27f4:
	stw %r6, 0x2e0(%r3)
	lwz %r4, 0x2e4(%r6)
	stw %r3, 0x2e4(%r6)
	cmpwi %r4, 0x0
	stw %r4, 0x2e4(%r3)
	bne- _1a2818
	lwz %r4, 0x2dc(%r3)
	stw %r3, 0x0(%r4)
	b _1a281c
_1a2818:
	stw %r3, 0x2e0(%r4)
_1a281c:
	lwz %r3, 0x2f0(%r3)
	cmpwi %r3, 0x0
	beq- _1a283c
	lwz %r3, 0x8(%r3)
	b _1a2840
_1a2830:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	stw %r4, 0x2d0(%r3)
_1a283c:
	li %r3, 0x0
_1a2840:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a2858
sub_1a2858: # 0x801a9b18
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
_1a286c:
	lwz %r0, 0x2cc(%r3)
	cmpwi %r0, 0x0
	bgt- _1a2894
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r31
	ble- _1a2894
	mr %r4, %r31
	bl sub_1a26a4
	cmpwi %r3, 0x0
	bne+ _1a286c
_1a2894:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a28a8
sub_1a28a8: # 0x801a9b68
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r0, -0x62e8(%r13)
	cmpwi %r0, 0x0
	ble- _1a28d4
	li %r3, 0x0
	b _1a2ab8
_1a28d4:
	bl sub_19ab6c
	lis %r4, 0x8000
	lwz %r5, 0xe4(%r4)
	cmplw %r3, %r5
	beq- _1a28f0
	li %r3, 0x0
	b _1a2ab8
_1a28f0:
	cmpwi %r5, 0x0
	beq- _1a29b8
	lhz %r0, 0x2c8(%r5)
	cmplwi %r0, 0x2
	bne- _1a2994
	cmpwi %r30, 0x0
	bne- _1a2928
	lwz %r3, -0x62e0(%r13)
	lwz %r0, 0x2d0(%r5)
	cntlzw %r3, %r3
	cmpw %r0, %r3
	bgt- _1a2928
	li %r3, 0x0
	b _1a2ab8
_1a2928:
	li %r0, 0x1
	lis %r3, 0x8034
	sth %r0, 0x2c8(%r5)
	addi %r3, %r3, 0x3430
	lwz %r0, 0x2d0(%r5)
	slwi  %r0, %r0, 3
	add %r3, %r3, %r0
	stw %r3, 0x2dc(%r5)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a295c
	stw %r5, 0x0(%r3)
	b _1a2960
_1a295c:
	stw %r5, 0x2e0(%r4)
_1a2960:
	stw %r4, 0x2e4(%r5)
	li %r0, 0x0
	li %r3, 0x1
	stw %r0, 0x2e0(%r5)
	lwz %r4, 0x2dc(%r5)
	stw %r5, 0x4(%r4)
	lwz %r0, 0x2d0(%r5)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
_1a2994:
	lhz %r0, 0x1a2(%r5)
	rlwinm. %r0, %r0, 0, 30, 30
	bne- _1a29b8
	mr %r3, %r5
	bl sub_19ab78
	cmpwi %r3, 0x0
	beq- _1a29b8
	li %r3, 0x0
	b _1a2ab8
_1a29b8:
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	bne- _1a2a1c
	lwz %r12, -0x7120(%r13)
	lis %r31, 0x8000
	lwz %r3, 0xe4(%r31)
	li %r4, 0x0
	mtctr %r12
	bctrl 
	li %r0, 0x0
	lis %r3, 0x8034
	stw %r0, 0xe4(%r31)
	addi %r3, %r3, 0x3530
	bl sub_19ab10
_1a29f0:
	bl sub_19f260
_1a29f4:
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	beq+ _1a29f4
	bl sub_19f24c
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	beq+ _1a29f0
	lis %r3, 0x8034
	addi %r3, %r3, 0x3530
	bl sub_19ad38
_1a2a1c:
	li %r4, 0x0
	lis %r3, 0x8034
	stw %r4, -0x62e4(%r13)
	addi %r3, %r3, 0x3430
	lwz %r0, -0x62e0(%r13)
	cntlzw %r5, %r0
	slwi  %r0, %r5, 3
	lwzux %r30, %r3, %r0
	lwz %r6, 0x2e0(%r30)
	cmpwi %r6, 0x0
	bne- _1a2a50
	stw %r4, 0x4(%r3)
	b _1a2a54
_1a2a50:
	stw %r4, 0x2e4(%r6)
_1a2a54:
	cmpwi %r6, 0x0
	stw %r6, 0x0(%r3)
	bne- _1a2a78
	subfic %r0, %r5, 0x1f
	li %r3, 0x1
	lwz %r4, -0x62e0(%r13)
	slw %r0, %r3, %r0
	andc %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
_1a2a78:
	li %r3, 0x0
	li %r0, 0x2
	stw %r3, 0x2dc(%r30)
	lis %r31, 0x8000
	mr %r4, %r30
	sth %r0, 0x2c8(%r30)
	lwz %r12, -0x7120(%r13)
	lwz %r3, 0xe4(%r31)
	mtctr %r12
	bctrl 
	stw %r30, 0xe4(%r31)
	mr %r3, %r30
	bl sub_19ab10
	mr %r3, %r30
	bl sub_19abf8
	mr %r3, %r30
_1a2ab8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_1a2ad0
t1_1a2ad0:
	.incbin "basemain.dol", 0x1a5030, 0xb88

	.global sub_1a3658
sub_1a3658: # 0x801aa918
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r4, 0x8000
	li %r0, 0x4
	lwz %r4, 0xe4(%r4)
	mr %r31, %r3
	sth %r0, 0x2c8(%r4)
	stw %r30, 0x2dc(%r4)
	lwz %r5, 0x0(%r30)
	b _1a3698
_1a3694:
	lwz %r5, 0x2e0(%r5)
_1a3698:
	cmpwi %r5, 0x0
	beq- _1a36b0
	lwz %r3, 0x2d0(%r5)
	lwz %r0, 0x2d0(%r4)
	cmpw %r3, %r0
	ble+ _1a3694
_1a36b0:
	cmpwi %r5, 0x0
	bne- _1a36e4
	lwz %r3, 0x4(%r30)
	cmpwi %r3, 0x0
	bne- _1a36cc
	stw %r4, 0x0(%r30)
	b _1a36d0
_1a36cc:
	stw %r4, 0x2e0(%r3)
_1a36d0:
	stw %r3, 0x2e4(%r4)
	li %r0, 0x0
	stw %r0, 0x2e0(%r4)
	stw %r4, 0x4(%r30)
	b _1a3708
_1a36e4:
	stw %r5, 0x2e0(%r4)
	lwz %r3, 0x2e4(%r5)
	stw %r4, 0x2e4(%r5)
	cmpwi %r3, 0x0
	stw %r3, 0x2e4(%r4)
	bne- _1a3704
	stw %r4, 0x0(%r30)
	b _1a3708
_1a3704:
	stw %r4, 0x2e0(%r3)
_1a3708:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a3724
	li %r3, 0x0
	bl sub_1a28a8
_1a3724:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a3744
sub_1a3744: # 0x801aaa04
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r5, 0x8034
	mr %r31, %r3
	addi %r5, %r5, 0x3430
	li %r6, 0x0
	li %r3, 0x1
	b _1a37f8
_1a3778:
	lwz %r4, 0x2e0(%r8)
	cmpwi %r4, 0x0
	bne- _1a378c
	stw %r6, 0x4(%r30)
	b _1a3790
_1a378c:
	stw %r6, 0x2e4(%r4)
_1a3790:
	stw %r4, 0x0(%r30)
	sth %r3, 0x2c8(%r8)
	lwz %r0, 0x2cc(%r8)
	cmpwi %r0, 0x0
	bgt- _1a37f8
	lwz %r0, 0x2d0(%r8)
	slwi  %r0, %r0, 3
	add %r4, %r5, %r0
	stw %r4, 0x2dc(%r8)
	lwz %r7, 0x4(%r4)
	cmpwi %r7, 0x0
	bne- _1a37c8
	stw %r8, 0x0(%r4)
	b _1a37cc
_1a37c8:
	stw %r8, 0x2e0(%r7)
_1a37cc:
	stw %r7, 0x2e4(%r8)
	stw %r6, 0x2e0(%r8)
	lwz %r4, 0x2dc(%r8)
	stw %r8, 0x4(%r4)
	lwz %r0, 0x2d0(%r8)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
_1a37f8:
	lwz %r8, 0x0(%r30)
	cmpwi %r8, 0x0
	bne+ _1a3778
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a3818
	li %r3, 0x0
	bl sub_1a28a8
_1a3818:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_1a3838
t1_1a3838:
	.incbin "basemain.dol", 0x1a5d98, 0x1c4
	
	.global sub_1a39fc
sub_1a39fc: # 0x801aacbc
	mftb %r3, 269
	mftb %r4, 268
	mftb %r5, 269
	cmpw %r3, %r5
	bne sub_1a39fc
	blr
	
	.global sub_1a3a14
sub_1a3a14: # 0x801aacd4
	mftb %r3, 268
	blr
	
	.global sub_1a3a1c
sub_1a3a1c: # 0x801aacdc
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	mr %r31, %r3
	bl sub_1a39fc
	lis %r6, 0x8000
	lwz %r5, 0x30dc(%r6)
	lwz %r0, 0x30d8(%r6)
	addc %r29, %r5, %r4
	adde %r30, %r0, %r3
	mr %r3, %r31
	bl sub_19f274
	mr %r4, %r29
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a3a80
sub_1a3a80: # 0x801aad40
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 0x8(%r1)
	mr %r30, %r4
	bl sub_19f24c
	lis %r5, 0x8000
	lwz %r4, 0x30dc(%r5)
	lwz %r0, 0x30d8(%r5)
	addc %r30, %r4, %r30
	adde %r31, %r0, %r31
	bl sub_19f274
	mr %r3, %r31
	mr %r4, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global t1_1a3ad8
t1_1a3ad8:
	.incbin "basemain.dol", 0x1a6038, 0x36ec
	
	.global t1_1a71c4
t1_1a71c4:
	.incbin "basemain.dol", 0x1a9724, 0x68

	.global t1_1a722c
t1_1a722c:
	.incbin "basemain.dol", 0x1a978c, 0xc594
	.ifdef USE_GECKO
	.4byte 0x4be46e28 # will disassemble later
	.else
	blr
	.endif
	
	.global t1_1b37c4
t1_1b37c4:
	.incbin "basemain.dol", 0x1b5d24, 0x5f5cc

	.global sub_212d90
sub_212d90: # 0x8021a050
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x802a
	stw %r0, 0x14(%r1)
	subi %r4, %r4, 0x17f8
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r4, 0x0(%r3)
	bl sub_222498
	cmpwi %r3, 0x0
	stw %r3, 0x4(%r31)
	beq- _212dcc
	mr %r4, %r31
	addi %r3, %r3, 0x28
	bl sub_a7c20
_212dcc:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_212de4
sub_212de4: # 0x8021a0a4
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _212e3c
	lwz %r5, 0x4(%r3)
	lis %r4, 0x802a
	subi %r4, %r4, 0x17f8
	stw %r4, 0x0(%r3)
	cmpwi %r5, 0x0
	beq- _212e2c
	mr %r4, %r30
	addi %r3, %r5, 0x28
	bl sub_a7db0
_212e2c:
	cmpwi %r31, 0x0
	ble- _212e3c
	mr %r3, %r30
	bl sub_2227d0
_212e3c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_212e58
t1_212e58:
	.incbin "basemain.dol", 0x2153b8, 0xc934

	.global sub_21f78c
sub_21f78c: # 0x80226a4c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_21f7bc
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_21f7bc
sub_21f7bc: # 0x80226a7c
	li %r0, 0x8
	li %r4, 0x0
	mtctr %r0
_21f7c8:
	stw %r4, 0x0(%r3)
	stw %r4, 0x4(%r3)
	stw %r4, 0x8(%r3)
	stw %r4, 0xc(%r3)
	stw %r4, 0x10(%r3)
	stw %r4, 0x14(%r3)
	stw %r4, 0x18(%r3)
	stw %r4, 0x1c(%r3)
	stw %r4, 0x20(%r3)
	stw %r4, 0x24(%r3)
	stw %r4, 0x28(%r3)
	stw %r4, 0x2c(%r3)
	stw %r4, 0x30(%r3)
	stw %r4, 0x34(%r3)
	stw %r4, 0x38(%r3)
	stw %r4, 0x3c(%r3)
	stw %r4, 0x40(%r3)
	stw %r4, 0x44(%r3)
	stw %r4, 0x48(%r3)
	stw %r4, 0x4c(%r3)
	stw %r4, 0x50(%r3)
	stw %r4, 0x54(%r3)
	stw %r4, 0x58(%r3)
	stw %r4, 0x5c(%r3)
	stw %r4, 0x60(%r3)
	stw %r4, 0x64(%r3)
	stw %r4, 0x68(%r3)
	stw %r4, 0x6c(%r3)
	stw %r4, 0x70(%r3)
	stw %r4, 0x74(%r3)
	stw %r4, 0x78(%r3)
	stw %r4, 0x7c(%r3)
	addi %r3, %r3, 0x80
	bdnz+ _21f7c8
	blr
	
	.global t1_21f854
t1_21f854:
	.incbin "basemain.dol", 0x221db4, 0x2c44

	.global sub_222498
sub_222498: # 0x80229758
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	bl sub_1912f8
	cmpwi %r3, 0x0
	mr %r30, %r3
	beq- _222520
	lis %r3, 0x8038
	li %r29, 0x0
	subi %r3, %r3, 0x50
	bl sub_1a0b84
	lwz %r0, -0x5d5c(%r13)
	cmpwi %r0, 0x0
	beq- _222514
	li %r4, 0x0
	lis %r31, 0x8038
	b _222500
_2224ec:
	lwz %r0, 0x10(%r3)
	cmplw %r0, %r30
	bne- _222500
	mr %r29, %r4
	b _222514
_222500:
	subi %r3, %r31, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r4, %r3
	bne+ _2224ec
_222514:
	lis %r3, 0x8038
	subi %r3, %r3, 0x50
	bl sub_1a0c60
_222520:
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_222540
t1_222540:
	.incbin "basemain.dol", 0x224aa0, 0x290

	.global sub_2227d0
sub_2227d0: # 0x80229a90
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_1912f8
	cmpwi %r3, 0x0
	mr %r30, %r3
	beq- _22287c
	lis %r3, 0x8038
	li %r29, 0x0
	subi %r3, %r3, 0x50
	bl sub_1a0b84
	lwz %r0, -0x5d5c(%r13)
	cmpwi %r0, 0x0
	beq- _222850
	li %r4, 0x0
	lis %r31, 0x8038
	b _22283c
_222828:
	lwz %r0, 0x10(%r3)
	cmplw %r0, %r30
	bne- _22283c
	mr %r29, %r4
	b _222850
_22283c:
	subi %r3, %r31, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r4, %r3
	bne+ _222828
_222850:
	lis %r3, 0x8038
	subi %r3, %r3, 0x50
	bl sub_1a0c60
	cmpwi %r29, 0x0
	beq- _22287c
	lwz %r12, 0x0(%r29)
	mr %r3, %r29
	mr %r4, %r28
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl 
_22287c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_22289c
t1_22289c:
	.incbin "basemain.dol", 0x224dfc, 0x10e30

	.global sub_2336cc
sub_2336cc: # 0x8023a98c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_212d90
	lis %r3, 0x802a
	li %r4, 0x0
	subi %r3, %r3, 0x588
	stw %r3, 0x0(%r31)
	li %r0, -0x1
	lwz %r5, -0x5d60(%r13)
	mr %r3, %r31
	stw %r5, 0x10(%r31)
	lwz %r5, -0x5cfc(%r13)
	stw %r5, 0x14(%r31)
	lwz %r5, -0x5cf8(%r13)
	stw %r5, 0x18(%r31)
	lwz %r5, -0x5cf4(%r13)
	stw %r5, 0x1c(%r31)
	stw %r4, 0x20(%r31)
	stw %r4, 0x24(%r31)
	stw %r0, 0x28(%r31)
	stw %r4, 0x2c(%r31)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_233740
sub_233740: # 0x8023aa00
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _23377c
	li %r4, 0x0
	bl sub_212de4
	cmpwi %r31, 0x0
	ble- _23377c
	mr %r3, %r30
	bl sub_2227d0
_23377c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_233798
t1_233798:
	.incbin "basemain.dol", 0x235cf8, 0xa2e8

