	.text
	
	.global sub_0
sub_0:
	cmplw %r4, %r3
	blt- _2c
	subi %r4, %r4, 0x1
	subi %r6, %r3, 0x1
	addi %r5, %r5, 0x1
	b _20
_18:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r6)
_20:
	subic. %r5, %r5, 0x1
	bne+ _18
	blr
_2c:
	add %r4, %r4, %r5
	add %r6, %r3, %r5
	addi %r5, %r5, 0x1
	b _44
_3c:
	lbzu %r0, -0x1(%r4)
	stbu %r0, -0x1(%r6)
_44:
	subic. %r5, %r5, 0x1
	bne+ _3c
	blr
	
	.global sub_50
sub_50:
	cmplwi %r5, 0x20
	clrlwi  %r7, %r4, 24
	subi %r6, %r3, 0x1
	blt- _ec
	not %r0, %r6
	clrlwi. %r0, %r0, 30
	beq- _7c
	subf %r5, %r0, %r5
_70:
	subic. %r0, %r0, 0x1
	stbu %r7, 0x1(%r6)
	bne+ _70
_7c:
	cmpwi %r7, 0x0
	beq- _9c
	slwi  %r4, %r7, 8
	slwi  %r3, %r7, 24
	slwi  %r0, %r7, 16
	or %r4, %r7, %r4
	or %r0, %r3, %r0
	or %r7, %r4, %r0
_9c:
	srwi. %r0, %r5, 5
	subi %r3, %r6, 0x3
	beq- _d0
_a8:
	stw %r7, 0x4(%r3)
	subic. %r0, %r0, 0x1
	stw %r7, 0x8(%r3)
	stw %r7, 0xc(%r3)
	stw %r7, 0x10(%r3)
	stw %r7, 0x14(%r3)
	stw %r7, 0x18(%r3)
	stw %r7, 0x1c(%r3)
	stwu %r7, 0x20(%r3)
	bne+ _a8
_d0:
	extrwi. %r0, %r5, 3, 27
	beq- _e4
_d8:
	subic. %r0, %r0, 0x1
	stwu %r7, 0x4(%r3)
	bne+ _d8
_e4:
	addi %r6, %r3, 0x3
	clrlwi  %r5, %r5, 30
_ec:
	cmpwi %r5, 0x0
	beqlr- 
_f4:
	subic. %r5, %r5, 0x1
	stbu %r7, 0x1(%r6)
	bne+ _f4
	blr
	
	.global sub_104
sub_104:
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_50
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.space 12
	
	.global sub_140
sub_140:
	lis %r10, gUnknown_19a0@h
	addi %r10, %r10, gUnknown_19a0@l
	lwz %r0, 0x0(%r10)
	cmpwi %r0, 0x0
	beq- _180
	li %r7, 0x0
	lwz %r0, 0x4(%r10)
	stw %r7, 0x0(%r10)
	stw %r0, 0x0(%r3)
	lwz %r0, 0x8(%r10)
	stw %r0, 0x0(%r4)
	lwz %r0, 0xc(%r10)
	stw %r0, 0x0(%r5)
	lwz %r0, 0x10(%r10)
	stw %r0, 0x0(%r6)
	blr
_180:
	lwz %r0, 0x0(%r4)
	lis %r9, 0x2
	cmplw %r0, %r9
	blelr- 
	li %r0, 0x1
	lwz %r7, 0x14(%r10)
	stw %r0, 0x0(%r10)
	li %r0, 0xc
	not %r7, %r7
	lwz %r8, 0x0(%r3)
	rlwinm  %r3, %r7, 0, 30, 30
	sraw %r3, %r9, %r3
	addis %r7, %r8, 0x2
	stw %r7, 0x4(%r10)
	lwz %r7, 0x0(%r4)
	addis %r7, %r7, 0xfffe
	stw %r7, 0x8(%r10)
	lwz %r5, 0x0(%r5)
	add %r3, %r5, %r3
	stw %r3, 0xc(%r10)
	lwz %r3, 0x0(%r6)
	stw %r3, 0x10(%r10)
	stw %r9, 0x0(%r4)
	stw %r0, 0x0(%r6)
	blr
	
	.global sub_1e4
sub_1e4:
	lis %r4, sub_0@h
	addi %r4, %r4, sub_0@l
	lis %r5, 0x10
	addi %r5, %r5, 0x0
	clrrwi  %r6, %r4, 5
	add %r7, %r4, %r5
	subf %r7, %r6, %r7
	addi %r7, %r7, 0x1f
	srwi  %r7, %r7, 5
	mtctr %r7
_20c:
	icbi 0, %r6
	addi %r6, %r6, 0x20
	bdnz+ _20c
	sync
	isync
	lwz %r0, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x8
	blr
	
	.global sub_230
sub_230: # 0x81200230
	ori %r0, %r0, 0x0
	.global sub_234
sub_234:
	mflr %r0
	stwu %r1, -0x8(%r1)
	stw %r0, 0xc(%r1)
	bl sub_354
	lis %r5, 0x8133
	subi %r5, %r5, 0x80
	mtlr %r5
	blr
	
	.global sub_254
sub_254:
	mflr %r0
	stwu %r1, -0x8(%r1)
	stw %r0, 0xc(%r1)
	bl sub_600
	lis %r5, ldr_ff80@h
	subi %r5, %r5, ldr_ff80@l
	mtlr %r5
	blr
	
	.global sub_274
sub_274:
	mflr %r0
	stwu %r1, -0x8(%r1)
	stw %r0, 0xc(%r1)
	bl sub_1118
	lis %r5, ldr_ff80@h
	subi %r5, %r5, ldr_ff80@l
	mtlr %r5
	blr
	
	.global apl_entrypoint
apl_entrypoint:
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r8, sub_234@h
	lis %r7, sub_254@h
	stw %r0, 0x24(%r1)
	lis %r6, sub_230@h
	addi %r8, %r8, sub_234@l
	addi %r7, %r7, sub_254@l
	stw %r31, 0x1c(%r1)
	addi %r6, %r6, sub_230@l
	stw %r30, 0x18(%r1)
	lis %r30, sub_1e4@h
	addi %r30, %r30, sub_1e4@l
	stw %r29, 0x14(%r1)
	subf %r29, %r30, %r6
	cmplwi %r29, 0x80
	stw %r8, 0x0(%r3)
	lis %r3, sub_274@h
	addi %r3, %r3, sub_274@l
	stw %r7, 0x0(%r4)
	stw %r3, 0x0(%r5)
	ble- _30c
	lis %r3, FailedAssertStr@h
	addi %r3, %r3, FailedAssertStr@l
	crxor 6, 6, 6
	lis %r4, gUnknown_19b8@h
	lwz %r12, gUnknown_19b8@l(%r4)
	mtctr %r12
	bctrl 
	bl sub_1128
_30c:
	lis %r31, ldr_ff80@h
	mr %r4, %r30
	mr %r5, %r29
	addi %r3, %r31, ldr_ff80@l
	bl sub_0
	mr %r4, %r29
	addi %r3, %r31, ldr_ff80@l
	bl sub_1198
	mr %r4, %r29
	addi %r3, %r31, ldr_ff80@l
	
	.global sub_334
sub_334:
	bl sub_11c8
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_354
sub_354:
	stwu %r1, -0x20(%r1)
	mflr %r0
	li %r4, 0x0
	li %r5, 0x20
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, gUnknown_19a0@h
	addi %r31, %r31, gUnknown_19a0@l
	stw %r30, 0x18(%r1)
	lis %r30, FailedAssertStr@h
	addi %r30, %r30, FailedAssertStr@l
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	addi %r3, %r31, 0x20
	bl sub_104
	addi %r3, %r31, 0x40
	li %r4, 0x0
	li %r5, 0x100
	bl sub_104
	li %r4, 0x0
	li %r0, 0x2
	stw %r4, 0x140(%r31)
	addi %r3, %r31, 0x14c
	stw %r4, 0x144(%r31)
	stw %r4, 0x148(%r31)
	stw %r29, 0x18(%r31)
	stw %r0, 0x14(%r31)
	bl sub_11fc
	addi %r3, %r30, 0x2c
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	addi %r3, %r30, 0x48
	addi %r4, %r30, 0x6c
	addi %r5, %r30, 0x78
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	li %r0, 0x80
	lis %r3, EnableLegacyDI@h
	stb %r0, EnableLegacyDI@l(%r3)
	lhz %r0, DevkitBootProgramVersion@l(%r3)
	cmplwi %r0, 0x107
	bge- _420
	addi %r3, %r30, 0x88
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
_420:
	lis %r0, 0x24
	lis %r3, MinIOSVersion@h
	ori %r0, %r0, 0x412
	stw %r0, MinIOSVersion@l(%r3)
	lwz %r3, DiscMagic@l(%r3)
	addis %r0, %r3, 0xa2e4
	cmplwi %r0, 0x9ea3
	bne- _44c
	li %r0, 0x0
	stw %r0, 0x14(%r31)
	b _454
_44c:
	li %r0, 0x2
	stw %r0, 0x14(%r31)
_454:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_470
sub_470:
	lis %r4, 0x8120
	li %r0, 0x7
	addi %r6, %r4, 0x19e0
	lis %r9, 0x8110
	li %r4, 0x0
	lis %r8, 0x8113
	mtctr %r0
_48c:
	lwzx %r0, %r6, %r4
	cmpwi %r0, 0x0
	beq- _4f0
	add %r7, %r6, %r4
	lwz %r5, 0x48(%r7)
	lwz %r0, 0x90(%r7)
	cmplw %r5, %r9
	add %r0, %r5, %r0
	blt- _4b8
	cmplw %r0, %r8
	ble- _4f0
_4b8:
	add %r5, %r6, %r4
	rlwinm  %r7, %r3, 0, 2, 3
	lwz %r5, 0x48(%r5)
	cntlzw %r7, %r7
	srwi  %r7, %r7, 5
	rlwinm  %r5, %r5, 0, 2, 3
	cntlzw %r5, %r5
	srwi  %r5, %r5, 5
	cmpw %r7, %r5
	bne- _4f0
	cmplw %r3, %r0
	bge- _4f0
	li %r3, 0x0
	blr
_4f0:
	addi %r4, %r4, 0x4
	bdnz+ _48c
	lis %r4, 0x8120
	li %r0, 0xb
	addi %r6, %r4, 0x19e0
	lis %r9, 0x8110
	li %r4, 0x0
	lis %r8, 0x8113
	mtctr %r0
_514:
	add %r7, %r6, %r4
	lwz %r0, 0x1c(%r7)
	cmpwi %r0, 0x0
	beq- _578
	lwz %r5, 0x64(%r7)
	lwz %r0, 0xac(%r7)
	cmplw %r5, %r9
	add %r0, %r5, %r0
	blt- _540
	cmplw %r0, %r8
	ble- _578
_540:
	add %r5, %r6, %r4
	rlwinm  %r7, %r3, 0, 2, 3
	lwz %r5, 0x64(%r5)
	cntlzw %r7, %r7
	srwi  %r7, %r7, 5
	rlwinm  %r5, %r5, 0, 2, 3
	cntlzw %r5, %r5
	srwi  %r5, %r5, 5
	cmpw %r7, %r5
	bne- _578
	cmplw %r3, %r0
	bge- _578
	li %r3, 0x0
	blr
_578:
	addi %r4, %r4, 0x4
	bdnz+ _514
	lis %r4, 0x8120
	lis %r0, 0x8110
	addi %r4, %r4, 0x19e0
	lwz %r5, 0xd8(%r4)
	lwz %r4, 0xdc(%r4)
	cmplw %r5, %r0
	add %r0, %r5, %r4
	blt- _5b4
	lis %r4, 0x8113
	cmplw %r0, %r4
	bgt- _5b4
	li %r3, 0x1
	blr
_5b4:
	lis %r5, 0x8120
	rlwinm  %r4, %r3, 0, 2, 3
	addi %r5, %r5, 0x19e0
	lwz %r5, 0xd8(%r5)
	cntlzw %r4, %r4
	srwi  %r4, %r4, 5
	rlwinm  %r5, %r5, 0, 2, 3
	cntlzw %r5, %r5
	srwi  %r5, %r5, 5
	cmpw %r5, %r4
	beq- _5e8
	li %r3, 0x1
	blr
_5e8:
	cmplw %r3, %r0
	bge- _5f8
	li %r3, 0x0
	blr
_5f8:
	li %r3, 0x1
	blr
	
	.global sub_600
sub_600:
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_124c
	lis %r31, 0x8120
	lis %r30, 0x8120
	addi %r31, %r31, 0x19a0
	mr %r25, %r3
	lwz %r0, 0x144(%r31)
	mr %r26, %r4
	mr %r27, %r5
	addi %r30, %r30, 0x12c0
	cmplwi %r0, 0xc
	lis %r28, 0x8000
	bgt- sub_10f4
	lis %r6, 0x8120
	slwi  %r0, %r0, 2
	addi %r6, %r6, 0x196c
	lwzx %r6, %r6, %r0
	mtctr %r6
	bctr
	
	.global sub_658
sub_658:
	addi %r0, %r31, 0x20
	li %r6, 0x20
	stw %r0, 0x0(%r3)
	li %r7, 0x420
	li %r0, 0x2
	stw %r6, 0x0(%r4)
	lwz %r6, 0x14(%r31)
	not %r6, %r6
	rlwinm  %r6, %r6, 0, 30, 30
	sraw %r6, %r7, %r6
	stw %r6, 0x0(%r5)
	stw %r0, 0x144(%r31)
	lwz %r3, 0x0(%r3)
	lwz %r4, 0x0(%r4)
	bl sub_113c
	b sub_10fc
	
	.global sub_698
sub_698:
	addi %r3, %r31, 0x20
	lwz %r4, 0x8(%r3)
	lwz %r5, 0xc(%r3)
	cmplw %r4, %r5
	ble- _6c4
	addi %r3, %r30, 0xf0
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_6c4:
	addi %r0, %r31, 0x180
	li %r3, 0x20
	stw %r0, 0x0(%r25)
	li %r4, 0x440
	li %r0, 0x3
	stw %r3, 0x0(%r26)
	lwz %r3, 0x14(%r31)
	not %r3, %r3
	rlwinm  %r3, %r3, 0, 30, 30
	sraw %r3, %r4, %r3
	stw %r3, 0x0(%r27)
	stw %r0, 0x144(%r31)
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	b sub_10fc
	
	.global sub_704
sub_704:
	lwz %r6, 0x180(%r31)
	lis %r5, 0x8000
	addi %r3, %r31, 0x180
	stw %r6, 0xe8(%r5)
	clrlwi. %r0, %r6, 27
	lwz %r4, 0x28(%r28)
	addis %r0, %r4, 0x8000
	subf %r0, %r6, %r0
	clrrwi  %r0, %r0, 5
	stw %r0, 0xec(%r5)
	lwz %r0, 0x4(%r3)
	stw %r0, 0xf0(%r5)
	beq- _754
	addi %r3, %r30, 0x140
	lwz %r4, 0xe8(%r5)
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_754:
	lis %r3, 0x8000
	lwz %r4, 0xf0(%r3)
	clrlwi. %r0, %r4, 27
	beq- _77c
	addi %r3, %r30, 0x188
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_77c:
	lis %r3, 0x8000
	lwz %r0, 0xf0(%r3)
	cmpwi %r0, 0x0
	bne- _794
	lwz %r0, 0x28(%r28)
	stw %r0, 0xf0(%r3)
_794:
	lis %r29, 0x8000
	lwz %r4, 0x28(%r28)
	lwz %r5, 0xf0(%r29)
	cmplw %r5, %r4
	bge- _804
	lwz %r6, 0xe8(%r29)
	subf %r0, %r5, %r4
	cmplw %r6, %r0
	blt- _7d0
	addi %r3, %r30, 0x1d4
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_7d0:
	lwz %r0, 0x14(%r31)
	addi %r5, %r31, 0x20
	lis %r3, 0x8000
	lwz %r4, 0xc(%r5)
	not %r0, %r0
	lwz %r3, 0xf0(%r3)
	rlwinm  %r0, %r0, 0, 30, 30
	slw %r4, %r4, %r0
	addis %r0, %r3, 0x8000
	subf %r0, %r4, %r0
	clrrwi  %r0, %r0, 5
	stw %r0, 0x10(%r5)
	b _850
_804:
	ble- _824
	addi %r3, %r30, 0x270
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	lwz %r0, 0x28(%r28)
	stw %r0, 0xf0(%r29)
_824:
	lwz %r0, 0x14(%r31)
	addi %r6, %r31, 0x20
	lis %r3, 0x8000
	lwz %r5, 0xc(%r6)
	not %r4, %r0
	lwz %r0, 0xec(%r3)
	rlwinm  %r3, %r4, 0, 30, 30
	slw %r3, %r5, %r3
	subf %r0, %r3, %r0
	clrrwi  %r0, %r0, 5
	stw %r0, 0x10(%r6)
_850:
	addi %r3, %r31, 0x20
	lis %r5, 0x8000
	lwz %r6, 0x10(%r3)
	li %r3, 0x2000
	li %r4, 0x440
	li %r0, 0x4
	subi %r6, %r6, 0x2000
	stw %r6, 0xf4(%r5)
	stw %r6, 0x0(%r25)
	stw %r3, 0x0(%r26)
	lwz %r3, 0x14(%r31)
	not %r3, %r3
	rlwinm  %r3, %r3, 0, 30, 30
	sraw %r3, %r4, %r3
	stw %r3, 0x0(%r27)
	stw %r0, 0x144(%r31)
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	b sub_10fc
	
	.global sub_8a0
sub_8a0:
	lis %r4, 0x8000
	lis %r0, 0x7ed4
	lwz %r3, 0xf4(%r4)
	lwz %r3, 0x30(%r3)
	cmpw %r3, %r0
	beq- _8d4
	bge- _8c4
	lis %r0, 0x460a
	cmpw %r3, %r0
_8c4:
	li %r0, 0x80
	lis %r3, 0x8000
	stb %r0, 0x319c(%r3)
	b _8dc
_8d4:
	li %r0, 0x81
	stb %r0, 0x319c(%r4)
_8dc:
	lis %r4, 0x8000
	lwz %r3, 0xf4(%r4)
	lwz %r5, 0x2c(%r3)
	cmpwi %r5, 0x0
	beq- _950
	lwz %r0, 0x3118(%r4)
	cmplw %r5, %r0
	bge- _950
	lwz %r3, 0x3120(%r4)
	lwz %r0, 0x311c(%r4)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r5
	stw %r0, 0x3120(%r4)
	lwz %r3, 0x3128(%r4)
	lwz %r0, 0x311c(%r4)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r5
	stw %r0, 0x3128(%r4)
	lwz %r3, 0x3130(%r4)
	lwz %r0, 0x311c(%r4)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r5
	stw %r0, 0x3130(%r4)
	lwz %r3, 0x3134(%r4)
	lwz %r0, 0x311c(%r4)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r5
	stw %r0, 0x3134(%r4)
	stw %r5, 0x311c(%r4)
_950:
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	beq- _9b8
	addi %r3, %r31, 0x14c
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	stw %r0, 0x190(%r31)
	bne- _978
	lwz %r0, 0x20(%r31)
	stw %r0, 0x190(%r31)
_978:
	addi %r3, %r31, 0x14c
	lwz %r0, 0x14(%r3)
	cmpwi %r0, 0x0
	bne- _9cc
	lwz %r4, 0x18(%r3)
	cmpwi %r4, 0x0
	beq- _9cc
	lis %r3, 0x8000
	lwz %r0, 0x8(%r4)
	lwz %r3, 0xf4(%r3)
	addi %r4, %r4, 0x1000
	li %r5, 0x1000
	stw %r0, 0x8(%r3)
	addi %r3, %r3, 0x1000
	bl sub_0
	b _9cc
_9b8:
	lwz %r4, 0x20(%r31)
	li %r0, 0x0
	lis %r3, 0x8000
	stw %r4, 0x190(%r31)
	stw %r0, 0x30ec(%r3)
_9cc:
	addi %r6, %r31, 0x20
	lwz %r0, 0x190(%r31)
	lwz %r3, 0x4(%r6)
	xor %r0, %r3, %r0
	cntlzw %r0, %r0
	slw %r0, %r3, %r0
	srwi. %r0, %r0, 31
	stw %r0, 0x194(%r31)
	beq- _9f4
	b sub_a78
_9f4:
	lwz %r4, 0x10(%r6)
	li %r3, 0x5
	lis %r0, 0x8170
	stw %r4, 0x0(%r25)
	lwz %r4, 0x14(%r31)
	lwz %r5, 0x8(%r6)
	not %r4, %r4
	rlwinm  %r4, %r4, 0, 30, 30
	slw %r4, %r5, %r4
	addi %r4, %r4, 0x1f
	clrrwi  %r4, %r4, 5
	stw %r4, 0x0(%r26)
	lwz %r4, 0x4(%r6)
	stw %r4, 0x0(%r27)
	stw %r3, 0x144(%r31)
	lwz %r4, 0x0(%r25)
	cmplw %r4, %r0
	bge- _a54
	addi %r3, %r30, 0x37c
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_a54:
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	mr %r3, %r25
	mr %r4, %r26
	mr %r5, %r27
	addi %r6, %r31, 0x144
	bl sub_140
	b sub_10fc

	.global sub_a78
sub_a78:
	addi %r0, %r31, 0x40
	li %r3, 0x100
	stw %r0, 0x0(%r25)
	li %r0, 0x6
	stw %r3, 0x0(%r26)
	lwz %r3, 0x190(%r31)
	stw %r3, 0x0(%r27)
	stw %r0, 0x144(%r31)
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	b sub_10fc
	
	.global sub_aa8
sub_aa8:
	addi %r4, %r31, 0x40
	li %r29, 0x0
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	beq- _ac8
	lwz %r3, 0x90(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r29, %r0, 5
_ac8:
	lwz %r0, 0x4(%r4)
	cmpwi %r0, 0x0
	beq- _ae4
	lwz %r3, 0x94(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_ae4:
	lwz %r0, 0x8(%r4)
	cmpwi %r0, 0x0
	beq- _b00
	lwz %r3, 0x98(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_b00:
	lwz %r0, 0xc(%r4)
	cmpwi %r0, 0x0
	beq- _b1c
	lwz %r3, 0x9c(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_b1c:
	lwz %r0, 0x10(%r4)
	cmpwi %r0, 0x0
	beq- _b38
	lwz %r3, 0xa0(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_b38:
	lwz %r0, 0x14(%r4)
	cmpwi %r0, 0x0
	beq- _b54
	lwz %r3, 0xa4(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_b54:
	lwz %r0, 0x18(%r4)
	cmpwi %r0, 0x0
	beq- _b70
	lwz %r3, 0xa8(%r4)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_b70:
	li %r0, 0xb
	addi %r5, %r31, 0x40
	li %r3, 0x0
	mtctr %r0
_b80:
	add %r4, %r5, %r3
	lwz %r0, 0x1c(%r4)
	cmpwi %r0, 0x0
	beq- _ba0
	lwz %r4, 0xac(%r4)
	addi %r0, %r4, 0x1f
	clrrwi  %r0, %r0, 5
	add %r29, %r29, %r0
_ba0:
	addi %r3, %r3, 0x4
	bdnz+ _b80
	lis %r3, 0x8000
	lwz %r3, 0xf4(%r3)
	lwz %r6, 0x28(%r3)
	cmpwi %r6, 0x0
	beq- _bf4
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	bne- _bf4
	cmplw %r29, %r6
	ble- _bf4
	mr %r4, %r29
	mr %r5, %r29
	mr %r7, %r6
	addi %r3, %r30, 0x3bc
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_bf4:
	lwz %r0, 0x194(%r31)
	cmpwi %r0, 0x0
	beq- _c30
	lwz %r0, 0x14(%r31)
	addi %r3, %r31, 0x20
	lwz %r4, 0x8(%r3)
	lis %r3, 0x8000
	not %r0, %r0
	rlwinm  %r0, %r0, 0, 30, 30
	slw %r4, %r4, %r0
	addi %r0, %r4, 0x1f
	clrrwi  %r0, %r0, 5
	add %r0, %r29, %r0
	stw %r0, 0x30d4(%r3)
	b _c38
_c30:
	lis %r3, 0x8000
	stw %r29, 0x30d4(%r3)
_c38:
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	bne- _cd8
	lis %r3, 0x8000
	lwz %r0, 0x2c(%r3)
	clrrwi. %r0, %r0, 28
	bne- _c84
	lis %r3, 0x8090
	bl sub_470
	cmpwi %r3, 0x0
	bne- _cd8
	addi %r3, %r30, 0x454
	lis %r4, 0x8090
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
	b _cd8
_c84:
	lis %r3, 0x8090
	bl sub_470
	cmpwi %r3, 0x0
	bne- _cac
	addi %r3, %r30, 0x4e0
	lis %r4, 0x8090
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
_cac:
	lis %r3, 0x8120
	bl sub_470
	cmpwi %r3, 0x0
	bne- _cd8
	addi %r3, %r30, 0x574
	lis %r4, 0x8120
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_cd8:
	addi %r29, %r31, 0x40
	li %r4, 0x0
	lwz %r3, 0xd8(%r29)
	lwz %r5, 0xdc(%r29)
	bl sub_104
	lwz %r3, 0xd8(%r29)
	lwz %r4, 0xdc(%r29)
	bl sub_1168
	li %r0, 0x7
	stw %r0, 0x144(%r31)

	.global sub_d00
sub_d00:
	lwz %r4, 0x140(%r31)
	addi %r3, %r31, 0x40
	b _d14
_d0c:
	addi %r4, %r4, 0x1
	stw %r4, 0x140(%r31)
_d14:
	slwi  %r0, %r4, 2
	lwzx %r0, %r3, %r0
	cmpwi %r0, 0x0
	bne- _d2c
	cmplwi %r4, 0x7
	blt+ _d0c
_d2c:
	lwz %r0, 0x140(%r31)
	cmplwi %r0, 0x7
	bne- _d4c
	li %r3, 0x8
	li %r0, 0x0
	stw %r3, 0x144(%r31)
	stw %r0, 0x140(%r31)
	b sub_e28
_d4c:
	addi %r5, %r31, 0x40
	slwi  %r0, %r0, 2
	add %r3, %r5, %r0
	lwz %r0, 0x48(%r3)
	stw %r0, 0x0(%r25)
	lwz %r0, 0x140(%r31)
	slwi  %r0, %r0, 2
	add %r3, %r5, %r0
	lwz %r3, 0x90(%r3)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	stw %r0, 0x0(%r26)
	lwz %r3, 0x140(%r31)
	lwz %r0, 0x14(%r31)
	slwi  %r3, %r3, 2
	lwz %r4, 0x190(%r31)
	not %r0, %r0
	lwzx %r3, %r5, %r3
	rlwinm  %r0, %r0, 0, 30, 30
	srw %r0, %r3, %r0
	add %r0, %r4, %r0
	stw %r0, 0x0(%r27)
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	bne- _e0c
	lwz %r3, 0x0(%r25)
	li %r5, 0x1
	lwz %r0, 0x0(%r26)
	add %r4, %r3, %r0
	rlwinm  %r3, %r4, 0, 2, 3
	addis %r0, %r3, 0xf000
	cmplwi %r0, 0x0
	beq- _de0
	lis %r0, 0x8120
	cmplw %r4, %r0
	ble- _de0
	li %r5, 0x0
_de0:
	cmpwi %r5, 0x0
	bne- _e0c
	lwz %r4, 0x0(%r25)
	addi %r3, %r30, 0x604
	lwz %r0, 0x0(%r26)
	add %r5, %r4, %r0
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_e0c:
	lwz %r3, 0x140(%r31)
	addi %r0, %r3, 0x1
	stw %r0, 0x140(%r31)
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	b sub_10fc
	.global sub_e28
sub_e28:
	lwz %r5, 0x140(%r31)
	addi %r4, %r31, 0x40
	b _e3c
_e34:
	addi %r5, %r5, 0x1
	stw %r5, 0x140(%r31)
_e3c:
	slwi  %r0, %r5, 2
	add %r3, %r4, %r0
	lwz %r0, 0x1c(%r3)
	cmpwi %r0, 0x0
	bne- _e58
	cmplwi %r5, 0xb
	blt+ _e34
_e58:
	lwz %r0, 0x140(%r31)
	cmplwi %r0, 0xb
	bne- _e70
	li %r0, 0x0
	stw %r0, 0x140(%r31)
	b sub_f50
_e70:
	addi %r5, %r31, 0x40
	slwi  %r0, %r0, 2
	add %r3, %r5, %r0
	lwz %r0, 0x64(%r3)
	stw %r0, 0x0(%r25)
	lwz %r0, 0x140(%r31)
	slwi  %r0, %r0, 2
	add %r3, %r5, %r0
	lwz %r3, 0xac(%r3)
	addi %r0, %r3, 0x1f
	clrrwi  %r0, %r0, 5
	stw %r0, 0x0(%r26)
	lwz %r3, 0x140(%r31)
	lwz %r0, 0x14(%r31)
	slwi  %r3, %r3, 2
	lwz %r4, 0x190(%r31)
	add %r3, %r5, %r3
	not %r0, %r0
	lwz %r3, 0x1c(%r3)
	rlwinm  %r0, %r0, 0, 30, 30
	srw %r0, %r3, %r0
	add %r0, %r4, %r0
	stw %r0, 0x0(%r27)
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	bne- _f34
	lwz %r3, 0x0(%r25)
	li %r5, 0x1
	lwz %r0, 0x0(%r26)
	add %r4, %r3, %r0
	rlwinm  %r3, %r4, 0, 2, 3
	addis %r0, %r3, 0xf000
	cmplwi %r0, 0x0
	beq- _f08
	lis %r0, 0x8120
	cmplw %r4, %r0
	ble- _f08
	li %r5, 0x0
_f08:
	cmpwi %r5, 0x0
	bne- _f34
	lwz %r4, 0x0(%r25)
	addi %r3, %r30, 0x640
	lwz %r0, 0x0(%r26)
	add %r5, %r4, %r0
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_f34:
	lwz %r3, 0x140(%r31)
	addi %r0, %r3, 0x1
	stw %r0, 0x140(%r31)
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	b sub_10fc
	
	.global sub_f50
sub_f50:
	lwz %r0, 0x194(%r31)
	cmpwi %r0, 0x0
	beq- sub_fe4
	addi %r6, %r31, 0x20
	li %r3, 0xa
	lwz %r4, 0x10(%r6)
	lis %r0, 0x8170
	stw %r4, 0x0(%r25)
	lwz %r4, 0x14(%r31)
	lwz %r5, 0x8(%r6)
	not %r4, %r4
	rlwinm  %r4, %r4, 0, 30, 30
	slw %r4, %r5, %r4
	addi %r4, %r4, 0x1f
	clrrwi  %r4, %r4, 5
	stw %r4, 0x0(%r26)
	lwz %r4, 0x4(%r6)
	stw %r4, 0x0(%r27)
	stw %r3, 0x144(%r31)
	lwz %r4, 0x0(%r25)
	cmplw %r4, %r0
	bge- _fc0
	addi %r3, %r30, 0x37c
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_fc0:
	lwz %r3, 0x0(%r25)
	lwz %r4, 0x0(%r26)
	bl sub_113c
	mr %r3, %r25
	mr %r4, %r26
	mr %r5, %r27
	addi %r6, %r31, 0x144
	bl sub_140
	b sub_10fc
	
	.global sub_fe4
sub_fe4:
	lis %r4, 0xd16
	li %r0, 0x1
	subi %r4, %r4, 0x15a2
	li %r5, 0x0
	stw %r4, 0x20(%r28)
	addi %r7, %r31, 0x20
	addi %r4, %r31, 0x40
	lis %r3, 0x8000
	stw %r0, 0x24(%r28)
	addi %r0, %r3, 0x4000
	stw %r5, 0x30(%r28)
	lwz %r5, 0x10(%r7)
	stw %r5, 0x34(%r28)
	lwz %r5, 0x10(%r7)
	stw %r5, 0x38(%r28)
	lwz %r5, 0x14(%r31)
	lwz %r6, 0xc(%r7)
	not %r5, %r5
	rlwinm  %r5, %r5, 0, 30, 30
	slw %r5, %r6, %r5
	stw %r5, 0x3c(%r28)
	lwz %r4, 0xe0(%r4)
	cmplw %r4, %r0
	blt- _104c
	lwz %r0, 0x10(%r7)
	stw %r0, 0x3110(%r3)
_104c:
	li %r0, 0xb
	stw %r0, 0x144(%r31)
	.global sub_1054
sub_1054:
	lwz %r0, 0x14c(%r31)
	cmpwi %r0, 0x0
	bne- _10b0
	lis %r4, 0xcd00
	lwz %r0, 0x6430(%r4)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _1098
	lwz %r0, 0x6424(%r4)
	rlwinm  %r3, %r0, 0, 24, 20
	addis %r0, %r3, 0xffc0
	cmplwi %r0, 0x0
	bne- _1098
	lwz %r3, 0x6428(%r4)
	lwz %r0, 0x642c(%r4)
	stw %r3, 0x8(%r1)
	stw %r0, 0xc(%r1)
	b _10a4
_1098:
	li %r0, 0x0
	stw %r0, 0xc(%r1)
	stw %r0, 0x8(%r1)
_10a4:
	lhz %r0, 0x8(%r1)
	lis %r3, 0x8000
	sth %r0, 0x30e4(%r3)
_10b0:
	li %r3, 0x0
	b sub_1100
	
	.global sub_10b8
sub_10b8:
	lwz %r0, 0x0(%r31)
	cmpwi %r0, 0x1
	beq- _10dc
	addi %r3, %r30, 0x67c
	crxor 6, 6, 6
	lwz %r12, 0x18(%r31)
	mtctr %r12
	bctrl 
	bl sub_1128
_10dc:
	mr %r3, %r25
	mr %r4, %r26
	mr %r5, %r27
	addi %r6, %r31, 0x144
	bl sub_140
	b sub_10fc
	
	.global sub_10f4
sub_10f4:
	li %r3, 0x0
	b sub_1100
	
	.global sub_10fc
sub_10fc:
	li %r3, 0x1

	.global sub_1100
sub_1100:
	addi %r11, %r1, 0x30
	bl sub_1298
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global sub_1118
sub_1118:
	lis %r3, 0x8120
	addi %r3, %r3, 0x19e0
	lwz %r3, 0xe0(%r3)
	blr
	
	.global sub_1128
sub_1128:
	sync

	.global sub_112c
sub_112c:
	ori %r0, %r0, 0x0
	li %r3, 0x0
	ori %r0, %r0, 0x0
	b sub_112c

	.global sub_113c
sub_113c:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_1158:
	dcbi 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _1158
	blr

	.global sub_1168
sub_1168:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_1184:
	dcbf 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _1184
	sc
	blr

	.global sub_1198
sub_1198:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_11b4:
	dcbst 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _11b4
	sc
	blr
	
	.global sub_11c8
sub_11c8:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_11e4:
	icbi 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _11e4
	sync
	isync
	blr
	
	.global sub_11fc
sub_11fc:
	lis %r5, 0x8000
	lwz %r4, 0x30f0(%r5)
	cmplw %r4, %r5
	blt- _1214
	li %r5, 0x1c
	b sub_0
_1214:
	li %r0, 0x0
	stw %r0, 0x0(%r3)
	blr
	
	.global sub_1220
sub_1220:
	stw %r14, -0x48(%r11)
	stw %r15, -0x44(%r11)
	stw %r16, -0x40(%r11)
	stw %r17, -0x3c(%r11)
	stw %r18, -0x38(%r11)
	stw %r19, -0x34(%r11)
	stw %r20, -0x30(%r11)
	stw %r21, -0x2c(%r11)
	stw %r22, -0x28(%r11)
	stw %r23, -0x24(%r11)
	stw %r24, -0x20(%r11)

	.global sub_124c
sub_124c:
	stw %r25, -0x1c(%r11)
	stw %r26, -0x18(%r11)
	stw %r27, -0x14(%r11)
	stw %r28, -0x10(%r11)
	stw %r29, -0xc(%r11)
	stw %r30, -0x8(%r11)
	stw %r31, -0x4(%r11)
	blr
	
	.global sub_126c
sub_126c:
	lwz %r14, -0x48(%r11)
	lwz %r15, -0x44(%r11)
	lwz %r16, -0x40(%r11)
	lwz %r17, -0x3c(%r11)
	lwz %r18, -0x38(%r11)
	lwz %r19, -0x34(%r11)
	lwz %r20, -0x30(%r11)
	lwz %r21, -0x2c(%r11)
	lwz %r22, -0x28(%r11)
	lwz %r23, -0x24(%r11)
	lwz %r24, -0x20(%r11)

	.global sub_1298
sub_1298:
	lwz %r25, -0x1c(%r11)
	lwz %r26, -0x18(%r11)
	lwz %r27, -0x14(%r11)
	lwz %r28, -0x10(%r11)
	lwz %r29, -0xc(%r11)
	lwz %r30, -0x8(%r11)
	lwz %r31, -0x4(%r11)
	blr
	
	.space 8
	
