	.text
	.global Text0Start
Text0Start:
	.asciz "Metrowerks Target Resident Kernel for PowerPC"
	.space 210
	b t1_14840
	.space 252
	# From here down is really odd data. It doesn't seem like actual ASM, but who knows? Maybe it is used somewhere.
	mtspr 0x111, %r2
	mfspr %r2, 0x1a
	icbi 0, %r2
	mfdar %r2
	dcbi 0, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x200
	rfi
	.space 180
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x300
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x400
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x500
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x600
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x700
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x800
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x900
	rfi
	.space 716
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0xc00
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0xd00
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0xe00
	rfi
	.space 204
	b _f54
	.space 28
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0xf20
	rfi
_f54:
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0xf00
	rfi
	.space 120
	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1030
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1030:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1000
	rfi
	.space 144
	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1130
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1130:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1100
	rfi
	.space 144
	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1230
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1230:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1200
	rfi
	.space 144
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1300
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1400
	rfi
	.space 460
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1600
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1700
	rfi
	.space 1228
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1c00
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1d00
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1e00
	rfi
	.space 204
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, -0x7fff
	ori %r3, %r3, 0xf28c
	mtspr 0x1a, %r3
	li %r3, 0x1f00
	rfi
	.global memcpy
memcpy: # End of "odd" data and start of actual ASM
	cmplw %r4, %r3
	blt sub_1f60
	addi %r4, %r4, -1
	addi %r6, %r3, -1
	addi %r5, %r5, 1
	b _1f54
_1f4c:
	lbzu %r0, 1(%r4)
	stbu %r0, 1(%r6)
_1f54:
	addic. %r5, %r5, -1
	bne _1f4c
	blr
	.global sub_1f60
sub_1f60:
	add %r4, %r4, %r5
	add %r6, %r3, %r5
	addi %r5, %r5, 1
	b _1f78
_1f70:
	lbzu %r0, -1(%r4)
	stbu %r0, -1(%r6)
_1f78:
	addic. %r5, %r5, -1
	bne _1f70
	blr
	.global sub_1f84
sub_1f84:
	cmplwi %r5, 0x20
	clrlwi %r7, %r4, 0x18
	addi %r6, %r3, -1
	blt _2020
	nor %r0, %r6, %r6
	clrlwi. %r0, %r0, 0x1e
	beq _1fb0
	subf %r5, %r0, %r5
_1fa4:
	addic. %r0, %r0, -1
	stbu %r7, 1(%r6)
	bne _1fa4
_1fb0:
	cmpwi %r7, 0
	beq _1fd0
	slwi %r4, %r7, 8
	slwi %r3, %r7, 0x18
	slwi %r0, %r7, 0x10
	or %r4, %r7, %r4
	or %r0, %r3, %r0
	or %r7, %r4, %r0
_1fd0:
	rlwinm. %r0, %r5, 0x1b, 5, 0x1f
	addi %r3, %r6, -3
	beq _2004
_1fdc:
	stw %r7, 4(%r3)
	addic. %r0, %r0, -1
	stw %r7, 8(%r3)
	stw %r7, 0xc(%r3)
	stw %r7, 0x10(%r3)
	stw %r7, 0x14(%r3)
	stw %r7, 0x18(%r3)
	stw %r7, 0x1c(%r3)
	stwu %r7, 0x20(%r3)
	bne _1fdc
_2004:
	rlwinm. %r0, %r5, 0x1e, 0x1d, 0x1f
	beq _2018
_200c:
	addic. %r0, %r0, -1
	stwu %r7, 4(%r3)
	bne _200c
_2018:
	addi %r6, %r3, 3
	clrlwi %r5, %r5, 0x1e
_2020:
	cmpwi %r5, 0
	beqlr
	.global sub_2028
sub_2028:
	addic. %r5, %r5, -1
	stbu %r7, 1(%r6)
	bne sub_2028
	blr
	.global memset
memset:
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_1f84
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.global sub_2068
sub_2068:
	lis %r3, -0x8000
	lhz %r0, 0x30e4(%r3)
	andi. %r0, %r0, 0xeef
	cmpwi %r0, 0xeef
	bnelr
	.global sub_207c
sub_207c:
	li %r3, 0
	li %r4, 0
	li %r5, 0
	b t1_1a1720
	blr
	.global sub_2090
sub_2090:
	li %r0, 1
	stb %r0, -0x62b0(%r13)
	blr
	.global sub_209c
sub_209c:
	lbz %r3, -0x62b0(%r13)
	blr

	.global dol_entrypoint
dol_entrypoint:
	bl InitRegs
	bl sub_2348
	li %r0, -1
	stwu %r1, -8(%r1)
	stw %r0, 4(%r1)
	stw %r0, 0(%r1)
	bl sub_22a0
	li %r0, 0
	lis %r6, -0x8000
	addi %r6, %r6, 0x44
	stw %r0, 0(%r6)
	lis %r6, -0x8000
	addi %r6, %r6, 0xf4
	lwz %r6, 0(%r6)
	cmplwi %r6, 0
	beq _20ec
	lwz %r7, 0xc(%r6)
	b _210c
_20ec:
	lis %r5, -0x8000
	addi %r5, %r5, 0x34
	lwz %r5, 0(%r5)
	cmplwi %r5, 0
	beq _2148
	lis %r7, -0x8000
	addi %r7, %r7, 0x30e8
	lwz %r7, 0(%r7)
_210c:
	li %r5, 0
	cmplwi %r7, 2
	beq _2138
	cmplwi %r7, 3
	li %r5, 1
	beq _2138
	cmplwi %r7, 4
	bne _2148
	li %r5, 2
	bl sub_2090
	b _2148
_2138:
	lis %r6, -0x7ffe
	addi %r6, %r6, -0x4814
	mtlr %r6
	blrl
_2148:
	lis %r6, -0x8000
	addi %r6, %r6, 0xf4
	lwz %r5, 0(%r6)
	cmplwi %r5, 0
	.4byte 0x41a20060 # beq _21b8
	lwz %r6, 8(%r5)
	cmplwi %r6, 0
	.4byte 0x41a20054 # beq _21d0
	add %r6, %r5, %r6
	lwz %r14, 0(%r6)
	cmplwi %r14, 0
	beq _21b8
	addi %r15, %r6, 4
	mtctr %r14
_2180:
	addi %r6, %r6, 4
	lwz %r7, 0(%r6)
	add %r7, %r7, %r5
	stw %r7, 0(%r6)
	bdnz _2180
	lis %r5, -0x8000
	addi %r5, %r5, 0x34
	rlwinm %r7, %r15, 0, 0, 0x1a
	stw %r7, 0(%r5)
	lis %r5, -0x8000
	addi %r5, %r5, 0x3110
	rlwinm %r7, %r15, 0, 0, 0x1a
	stw %r7, 0(%r5)
	b _21c0
_21b8:
	li %r14, 0
	li %r15, 0
_21c0:
	bl t1_156e14
	bl t1_199768
	lis %r4, -0x8000
	addi %r4, %r4, 0x30e6
_21d0:
	lhz %r3, 0(%r4)
	andi. %r5, %r3, 0x8000
	beq _21e8
	andi. %r3, %r3, 0x7fff
	cmplwi %r3, 1
	bne _21ec
_21e8:
	bl sub_2068
_21ec:
	bl sub_209c
	cmplwi %r3, 1
	bne _21fc
	bl t1_15424
_21fc:
	bl t1_1a8024
	mr %r3, %r14
	mr %r4, %r15
	bl t1_51b4
	b t1_1a807c
	.global InitRegs
InitRegs:
	li %r0, 0
	li %r3, 0
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r7, 0
	li %r8, 0
	li %r9, 0
	li %r10, 0
	li %r11, 0
	li %r12, 0
	li %r14, 0
	li %r15, 0
	li %r16, 0
	li %r17, 0
	li %r18, 0
	li %r19, 0
	li %r20, 0
	li %r21, 0
	li %r22, 0
	li %r23, 0
	li %r24, 0
	li %r25, 0
	li %r26, 0
	li %r27, 0
	li %r28, 0
	li %r29, 0
	li %r30, 0
	li %r31, 0
	lis %r1, -0x7fc7
	ori %r1, %r1, 0x4e00
	lis %r2, -0x7fc8
	ori %r2, %r2, 0xac20
	lis %r13, -0x7fc8
	ori %r13, %r13, 0x8880
	blr
sub_22a0:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	lis %r29, -0x8000
	addi %r29, %r29, 0x63a0 # 0x800063a0 (gUnknown_23a0)
_22c0:
	lwz %r30, 8(%r29)
	cmpwi %r30, 0
	beq _2300
	lwz %r4, 0(%r29)
	lwz %r31, 4(%r29)
	beq _22f8
	cmplw %r31, %r4
	beq _22f8
	mr %r3, %r31
	mr %r5, %r30
	bl memcpy
	mr %r3, %r31
	mr %r4, %r30
	bl sub_236c
_22f8:
	addi %r29, %r29, 0xc
	b _22c0
_2300:
	lis %r29, -0x8000
	addi %r29, %r29, 0x6424 # 0x80006424 (gUnknown_23a0 bss table)
_2308:
	lwz %r5, 4(%r29)
	cmpwi %r5, 0
	beq _232c
	lwz %r3, 0(%r29)
	beq _2324
	li %r4, 0
	bl memset
_2324:
	addi %r29, %r29, 8
	b _2308
_232c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
sub_2348:
	mfmsr %r0
	ori %r0, %r0, 0x2000
	mtmsr %r0
	mflr %r31
	bl 0x19a0a8
	bl 0x198dac
	bl 0x19b6e4
	mtlr %r31
	blr
sub_236c:
	lis %r5, -1
	ori %r5, %r5, 0xfff1
	and %r5, %r5, %r3
	subf %r3, %r5, %r3
	add %r4, %r4, %r3
	dcbst 0, %r5
	sync 0
	icbi 0, %r5
	addic %r5, %r5, 8
	addic. %r4, %r4, -8
	bge -0x14
	isync
	blr
	.data
	.global gUnknown_23a0
gUnknown_23a0:
	# Some kind of reloc table?
	.4byte Text0Start
	.4byte Text0Start
	.4byte Text0Size-0x1c
	.4byte Data0Start
	.4byte Data0Start
	.4byte Data0Size
	.4byte Data1Start
	.4byte Data1Start
	.4byte Data1Size-0x10
	.4byte Text1Start
	.4byte Text1Start
	.4byte Text1Size-0xc
	.4byte Data2Start
	.4byte Data2Start
	.4byte Data2Size-0x10
	.4byte Data3Start
	.4byte Data3Start
	.4byte Data3Size-0x14
	.4byte Data4Start
	.4byte Data4Start
	.4byte Data4Size-0x14
	.4byte Data5Start
	.4byte Data5Start
	.4byte Data5Size
	.4byte Data6Start
	.4byte Data6Start
	.4byte Data6Size
	.4byte Data7Start
	.4byte Data7Start
	.4byte Data7Size
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.global gUnknown_2424
gUnknown_2424:
	.4byte bss0Start
	.4byte bss0Size
	.4byte bss1Start
	.4byte bss1Size
	.4byte bss2Start
	.4byte bss2Size
	.4byte 0
	.4byte 0
	.space 28
	.global Text0End
Text0End:
