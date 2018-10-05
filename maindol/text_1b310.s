	.text
	.global t1_1b30c
t1_1b30c:
	.incbin "basemain.dol", 0x1d870, 0x290

	.global sub_1b5a0
sub_1b5a0: # 0x80022860
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1b5d4
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0b84
_1b5d4:
	lwz %r3, 0x14(%r27)
	li %r30, 0x0
	lwz %r0, 0x18(%r27)
	subf. %r4, %r3, %r0
	bge- _1b5f0
	li %r4, 0x0
	b _1b628
_1b5f0:
	lhz %r3, 0x10(%r27)
	lhz %r0, 0xc(%r27)
	subf. %r3, %r3, %r0
	bge- _1b608
	lhz %r0, 0x6(%r27)
	add %r3, %r3, %r0
_1b608:
	lhz %r0, 0xe(%r27)
	clrlwi  %r3, %r3, 16
	cmpwi %r0, 0x0
	beq- _1b620
	addi %r0, %r3, 0x1
	clrlwi  %r3, %r0, 16
_1b620:
	cmpw %r4, %r3
	bgt- _1b714
_1b628:
	lhz %r0, 0x10(%r27)
	lhz %r5, 0x6(%r27)
	add %r0, %r0, %r4
	clrlwi  %r31, %r0, 16
	cmplw %r31, %r5
	blt- _1b648
	subf %r0, %r5, %r31
	clrlwi  %r31, %r0, 16
_1b648:
	lhz %r3, 0xe(%r27)
	lhz %r4, 0xc(%r27)
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi  %r0, %r0, 31
	add %r0, %r4, %r0
	clrlwi  %r29, %r0, 16
	cmplw %r29, %r5
	bne- _1b708
	li %r29, 0x0
	b _1b708
_1b674:
	lhz %r3, 0x4(%r27)
	clrlwi  %r0, %r31, 16
	cmpwi %r28, 0x0
	lwz %r4, 0x0(%r27)
	addi %r3, %r3, 0x1
	mullw %r0, %r3, %r0
	add %r5, %r4, %r0
	beq- _1b6a8
	mr %r3, %r28
	subi %r4, %r13, 0x7fb0
	crxor 6, 6, 6
	bl sub_ae720
	b _1b6d0
_1b6a8:
	clrlwi  %r0, %r30, 16
	mr %r7, %r5
	mulli %r0, %r0, 0xa
	lha %r4, 0x1e(%r27)
	lha %r3, 0x1c(%r27)
	li %r5, 0x0
	subi %r6, %r13, 0x7fb0
	add %r4, %r4, %r0
	crxor 6, 6, 6
	bl sub_1ab30
_1b6d0:
	addi %r31, %r31, 0x1
	lhz %r0, 0x6(%r27)
	clrlwi  %r3, %r31, 16
	addi %r30, %r30, 0x1
	cmplw %r3, %r0
	bne- _1b6f8
	lhz %r0, 0xa(%r27)
	rlwinm. %r0, %r0, 0, 30, 30
	bne- _1b714
	li %r31, 0x0
_1b6f8:
	lhz %r0, 0x20(%r27)
	clrlwi  %r3, %r30, 16
	cmplw %r3, %r0
	bge- _1b714
_1b708:
	clrlwi  %r0, %r31, 16
	cmplw %r0, %r29
	bne+ _1b674
_1b714:
	bl sub_1a2550
	cmpwi %r3, 0x0
	beq- _1b72c
	lis %r3, 0x802a
	addi %r3, %r3, 0x2920
	bl sub_1a0c60
_1b72c:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

