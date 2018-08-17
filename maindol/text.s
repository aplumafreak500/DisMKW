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
	lis %r3, 0x8026
	addi %r30, %r28, 0x3c
	subi %r3, %r3, 0x7d48
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
	lis %r4, 0x8026
	li %r0, 0x0
	subi %r4, %r4, 0x7d70
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
sub_130:
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 8(%r1)
	mr %r30, %r3
	beq _16c
	li %r4, 0
	bl _233740
	cmpwi %r31, 0
	ble _16c
	mr %r3, %r30
	bl t1_2227d0
_16c:
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
	beq _1c8
	beq _1b8
	li %r4, 0
	bl 0x23358c # 233740
_1b8:
	cmpwi %r31, 0
	ble _1c8
	mr %r3, %r30
	bl 0x22260c # 2227d0
_1c8:
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
	bl 0x1994 # 1b84
	mr %r4, %r3
	lwz %r3, -0x6c08(%r13)
	lwz %r4, 0x60(%r4)
	li %r5, 1
	bl 0x2c84 # 2e88
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
	.incbin "basemain.dol", 0x2968, 0x3f48
	.global t1_4350
t1_4350:
	.incbin "basemain.dol", 0x68b0, 0x10274
	.global t1_145c4
t1_145c4:
	.incbin "basemain.dol", 0x16b24, 0x27c
	.global t1_14840
t1_14840: # mod_mod0_entry_addr: 0x44d4c
	.incbin "basemain.dol", 0x16da0, 0x378c
	.global t1_17fcc
t1_17fcc:
	.incbin "basemain.dol", 0x1a52c, 0xc560
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
	.incbin "basemain.dol", 0xaa1f0, 0x190

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
	.incbin "basemain.dol", 0xaa3a0, 0xae174
	
	.global t1_155fb4
t1_155fb4: # gx_draw: 0x167750
	.incbin "basemain.dol", 0x158514, 0x3aed8

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
	.incbin "basemain.dol", 0x19b6a0, 0x1644
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
	stmw %r13, 0x34L(%r3)
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
	
	.global t1_19acd0
t1_19acd0:
	.incbin "basemain.dol", 0x19d230, 0x68

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
	.incbin "basemain.dol", 0x19d2bc, 0x44f0

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
	.incbin "basemain.dol", 0x1a17f8, 0x18ec

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
	.incbin "basemain.dol", 0x1a3c80, 0xe30

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
	.incbin "basemain.dol", 0x1a5d98, 0x398c
	
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
	
	.global t1_212de4
t1_212de4:
	.incbin "basemain.dol", 0x215344, 0xc9a8

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

	.global t1_2227d0
t1_2227d0: # branch_to_mod2_addr: 0x233bec
	.incbin "basemain.dol", 0x224d30, 0x10efc

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
_233740:
	.global t1_233740
t1_233740:
	.incbin "basemain.dol", 0x235ca0, 0xa340
