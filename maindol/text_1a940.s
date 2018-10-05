	.text
	.global sub_1a940
sub_1a940: # 0x80021c00
	lis %r7, 0x802a
	lwz %r0, 0x28f8(%r7)
	cmpwi %r0, 0x0
	beqlr- 
	addi %r8, %r7, 0x28f8
	li %r7, 0x190
	lhz %r9, 0x8(%r8)
	subfc %r7, %r7, %r9
	subfe %r7, %r7, %r7
	addi %r7, %r7, 0x2
	cmpwi %r7, 0x2
	bne- _1a978
	slwi  %r3, %r3, 1
	slwi  %r5, %r5, 1
_1a978:
	add %r7, %r3, %r5
	srwi  %r5, %r3, 31
	cmpw %r7, %r9
	subi %r5, %r5, 0x1
	and %r8, %r3, %r5
	bgt- _1a994
	mr %r9, %r7
_1a994:
	lis %r7, 0x802a
	li %r3, 0x12c
	addi %r7, %r7, 0x28f8
	subf %r5, %r8, %r9
	lhz %r11, 0xa(%r7)
	subfc %r3, %r3, %r11
	subfe %r3, %r3, %r3
	addi %r3, %r3, 0x2
	cmpwi %r3, 0x2
	bne- _1a9c4
	slwi  %r4, %r4, 1
	slwi  %r6, %r6, 1
_1a9c4:
	add %r6, %r4, %r6
	srwi  %r3, %r4, 31
	cmpw %r6, %r11
	subi %r3, %r3, 0x1
	and %r10, %r4, %r3
	bgt- _1a9e0
	mr %r11, %r6
_1a9e0:
	lis %r9, 0x802a
	subf %r6, %r10, %r11
	addi %r9, %r9, 0x28f8
	slwi  %r7, %r8, 1
	lhz %r4, 0xc(%r9)
	li %r11, 0x0
	li %r3, 0x1080
	mullw %r8, %r4, %r10
	lis %r4, 0x8000
	slwi  %r8, %r8, 1
	add %r0, %r0, %r8
	add %r10, %r7, %r0
	b _1aac4
	nop # What???
_1aa18:
	cmpwi %cr1, %r5, 0x0
	li %r12, 0x0
	ble- cr1, _1aab0
	cmpwi %r5, 0x8
	subi %r7, %r5, 0x8
	ble- _1aa90
	li %r8, 0x0
	blt- cr1, _1aa48
	subi %r0, %r4, 0x2
	cmpw %r5, %r0
	bgt- _1aa48
	li %r8, 0x1
_1aa48:
	cmpwi %r8, 0x0
	beq- _1aa90
	addi %r0, %r7, 0x7
	srwi  %r0, %r0, 3
	mtctr %r0
	cmpwi %r7, 0x0
	ble- _1aa90
_1aa64:
	sth %r3, 0x0(%r10)
	addi %r12, %r12, 0x8
	sth %r3, 0x2(%r10)
	sth %r3, 0x4(%r10)
	sth %r3, 0x6(%r10)
	sth %r3, 0x8(%r10)
	sth %r3, 0xa(%r10)
	sth %r3, 0xc(%r10)
	sth %r3, 0xe(%r10)
	addi %r10, %r10, 0x10
	bdnz+ _1aa64
_1aa90:
	subf %r0, %r12, %r5
	mtctr %r0
	cmpw %r12, %r5
	bge- _1aab0
_1aaa0:
	sth %r3, 0x0(%r10)
	addi %r10, %r10, 0x2
	addi %r12, %r12, 0x1
	bdnz+ _1aaa0
_1aab0:
	lhz %r0, 0xc(%r9)
	addi %r11, %r11, 0x1
	subf %r0, %r5, %r0
	slwi  %r0, %r0, 1
	add %r10, %r10, %r0
_1aac4:
	cmpw %r11, %r6
	blt+ _1aa18
	blr
	
	.global t1_1aad0
t1_1aad0:
	.incbin "basemain.dol", 0x1d030, 0x40

	.global sub_1ab10
sub_1ab10: # 0x80021dd0
	lis %r3, 0x802a
	addi %r4, %r3, 0x28f8
	lwz %r3, 0x28f8(%r3)
	lwz %r4, 0x4(%r4)
	b sub_19a2fc
	
	.global t1_1ab24
t1_1ab24:
	.4byte 0
	.4byte 0
	.4byte 0

	.global sub_1ab30
sub_1ab30: # 0x80021df0
	stwu %r1, -0x190(%r1)
	mflr %r0
	mr %r12, %r6
	stw %r0, 0x194(%r1)
	stw %r31, 0x18c(%r1)
	mr %r31, %r5
	stw %r30, 0x188(%r1)
	mr %r30, %r4
	stw %r29, 0x184(%r1)
	mr %r29, %r3
	bne- cr1, _1ab7c
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_1ab7c:
	lis %r11, 0x802a
	stw %r3, 0x8(%r1)
	lwz %r0, 0x28f8(%r11)
	stw %r4, 0xc(%r1)
	cmpwi %r0, 0x0
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	beq- _1abf8
	addi %r4, %r1, 0x198
	addi %r0, %r1, 0x8
	lis %r3, 0x400
	stw %r3, 0x68(%r1)
	addi %r6, %r1, 0x68
	mr %r5, %r12
	stw %r4, 0x6c(%r1)
	addi %r3, %r1, 0x78
	li %r4, 0x100
	stw %r0, 0x70(%r1)
	bl sub_9a0c
	cmpwi %r3, 0x0
	ble- _1abf8
	mr %r3, %r29
	mr %r4, %r30
	mr %r6, %r31
	addi %r5, %r1, 0x78
	li %r7, 0x0
	bl sub_1ac20
_1abf8:
	lwz %r0, 0x194(%r1)
	lwz %r31, 0x18c(%r1)
	lwz %r30, 0x188(%r1)
	lwz %r29, 0x184(%r1)
	mtlr %r0
	addi %r1, %r1, 0x190
	blr
	
	.global t1_1ac14
t1_1ac14:
	.4byte 0
	.4byte 0
	.4byte 0

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

