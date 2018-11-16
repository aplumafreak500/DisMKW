	.text
	.global sub_1ac20
sub_1ac20: # 0x80021ee0
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19774
	lis %r8, 0x802a
	mr %r25, %r3
	addi %r8, %r8, 0x28f8
	lis %r3, 0x2aab
	lhz %r8, 0x8(%r8)
	li %r0, 0x190
	mr %r26, %r4
	mr %r27, %r5
	subfc %r0, %r0, %r8
	mr %r28, %r6
	subfe %r4, %r0, %r0
	mr %r29, %r7
	addi %r0, %r4, 0x2
	mr %r31, %r25
	divw %r30, %r8, %r0
	subi %r24, %r3, 0x5555
	b _1ad50
_1ac78:
	cmpwi %r29, 0x0
	beq- _1acd4
	mr %r3, %r27
	li %r4, 0x0
_1ac88:
	lbz %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
	extsb. %r0, %r0
	beq- _1acbc
	cmpwi %r0, 0xa
	beq- _1acbc
	cmpwi %r0, 0x9
	bne- _1acb4
	addi %r0, %r4, 0x4
	clrrwi  %r4, %r0, 2
	b _1ac88
_1acb4:
	addi %r4, %r4, 0x1
	b _1ac88
_1acbc:
	addi %r0, %r4, 0x2
	subi %r3, %r25, 0x6
	mulli %r5, %r0, 0x6
	subi %r4, %r26, 0x3
	li %r6, 0xd
	bl sub_1a940
_1acd4:
	subf %r0, %r25, %r30
	mr %r3, %r25
	mulhw %r6, %r24, %r0
	mr %r4, %r26
	mr %r5, %r27
	srwi  %r0, %r6, 31
	add %r6, %r6, %r0
	bl sub_1ad80
	lbz %r0, 0x0(%r3)
	mr %r27, %r3
	addi %r26, %r26, 0xa
	extsb %r0, %r0
	cmpwi %r0, 0xa
	bne- _1ad18
	mr %r25, %r31
	addi %r27, %r3, 0x1
	b _1ad50
_1ad18:
	cmpwi %r0, 0x0
	beq- _1ad50
	cmpwi %r28, 0x0
	addi %r27, %r3, 0x1
	bne- _1ad4c
	mr %r3, %r27
	li %r4, 0xa
	bl sub_b5d8
	cmpwi %r3, 0x0
	beq- _1ad5c
	mr %r25, %r31
	addi %r27, %r3, 0x1
	b _1ad50
_1ad4c:
	li %r25, 0x0
_1ad50:
	lbz %r0, 0x0(%r27)
	extsb. %r0, %r0
	bne+ _1ac78
_1ad5c:
	addi %r11, %r1, 0x30
	bl sub_197c0
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

