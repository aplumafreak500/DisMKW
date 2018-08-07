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
	bl _2336cc
	lis %r3, -0x7fda
	addi %r30, %r28, 0x3c
	addi %r3, %r3, -0x7d48
	stw %r3, 0(%r28)
	addi %r31, %r28, 0xc3c
_38:
	mr %r3, %r30
	bl _21f78c
	addi %r30, %r30, 0x400
	cmplw %r30, %r31
	blt _38
	lwz %r30, 0x14(%r28)
	li %r0, 0
	stw %r0, 0x30(%r28)
	cmpwi %r30, 0
	stw %r0, 0x34(%r28)
	stw %r0, 0x38(%r28)
	beq _88
	lwz %r12, 0(%r30)
	mr %r3, %r30
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne _88
	b _8c
_88:
	li %r30, 0
_8c:
	lwz %r31, 0x18(%r28)
	cmpwi %r31, 0
	beq _b8
	lwz %r12, 0(%r31)
	mr %r3, %r31
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne _b8
	b _bc
_b8:
	li %r31, 0
_bc:
	lwz %r29, 0x1c(%r28)
	cmpwi %r29, 0
	beq _e8
	lwz %r12, 0(%r29)
	mr %r3, %r29
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl
	cmpwi %r3, 1
	bne _e8
	b _ec
_e8:
	li %r29, 0
_ec:
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
	beq _16c
	li %r4, 0
	bl _233740
	cmpwi %r31, 0
	ble _16c
	mr %r3, %r30
	bl _2227d0
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
	.incbin "basemain.dol", 0x16da0, 0x141774
	.global t1_155fb4
t1_155fb4: # gx_draw: 0x167750
	.incbin "basemain.dol", 0x158514, 0x42954
	.global t1_198908
t1_198908:
	.incbin "basemain.dol", 0x19ae68, 0x8e18
	.global t1_1a1720
t1_1a1720:
	.incbin "basemain.dol", 0x1a3c80, 0x5aa4
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
	.incbin "basemain.dol", 0x1b5d24, 0x6bfc8
_21f78c: # malloc: 0x2221d0
	.incbin "basemain.dol", 0x221cec, 0x3044
_2227d0: # branch_to_mod2_addr: 0x233bec
	.incbin "basemain.dol", 0x224d30, 0x10efc
_2336cc:
	.incbin "basemain.dol", 0x235c2c, 0x74
_233740:
	.incbin "basemain.dol", 0x235ca0, 0xa340
	.global Text1End
Text1End:
