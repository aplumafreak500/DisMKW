	.text
	.global sub_1eb10
sub_1eb10: # 0x80025dd0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	lwz %r30, 0x0(%r1)
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r31, %r6
	mr %r29, %r7
	bl sub_19f24c
	bl sub_1a2588
	li %r3, 0x0
	bl sub_1b1d94
	li %r3, 0x0
	bl sub_1b1dd8
	lwz %r0, -0x6b24(%r13)
	cmpwi %r0, 0x0
	beq- _1eb68
	li %r3, 0x0
	bl sub_1b120
_1eb68:
	mr %r3, %r30
	bl sub_1ea60
	lwz %r3, -0x6b24(%r13)
	cmpwi %r3, 0x0
	beq- _1ebf0
	lis %r4, 0x8027
	mr %r5, %r26
	mr %r6, %r27
	subi %r4, %r4, 0x2120
	crxor 6, 6, 6
	bl sub_1bc60
	lwz %r4, -0x6b24(%r13)
	mr %r5, %r28
	mr %r6, %r31
	li %r3, 0x3
	bl sub_1bb80
	lwz %r3, -0x6b24(%r13)
	subi %r4, %r13, 0x7f6c
	crxor 6, 6, 6
	bl sub_1bc60
	lwz %r30, -0x6b24(%r13)
	lhz %r31, 0x20(%r30)
	mr %r3, %r30
	bl sub_1bd80
	subf. %r0, %r31, %r3
	bge- _1ebd4
	li %r0, 0x0
_1ebd4:
	stw %r0, 0x18(%r30)
	li %r0, 0x1
	lwz %r3, -0x6b24(%r13)
	stb %r0, 0x22(%r3)
	lwz %r3, -0x6b24(%r13)
	bl sub_1b750
	b _1ec20
_1ebf0:
	lis %r3, 0x8027
	mr %r4, %r26
	mr %r5, %r27
	subi %r3, %r3, 0x2120
	crxor 6, 6, 6
	bl sub_19b270
	mr %r3, %r28
	mr %r4, %r31
	bl sub_19b2fc
	subi %r3, %r13, 0x7f6c
	crxor 6, 6, 6
	bl sub_19b270
_1ec20:
	cmpwi %r29, 0x0
	beq- _1ec2c
	bl sub_127244
_1ec2c:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1ec44
t1_1ec44:
	.4byte 0
	.4byte 0
	.4byte 0
	
	.global sub_1ec50
sub_1ec50: # 0x80025f10
	stwu %r1, -0x80(%r1)
	mflr %r0
	stw %r0, 0x84(%r1)
	stw %r31, 0x7c(%r1)
	bne- cr1, _1ec84
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_1ec84:
	addi %r11, %r1, 0x88
	addi %r0, %r1, 0x8
	lis %r12, 0x300
	stw %r7, 0x18(%r1)
	addi %r31, %r1, 0x68
	li %r7, 0x1
	stw %r6, 0x14(%r1)
	mr %r6, %r31
	stw %r3, 0x8(%r1)
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r12, 0x68(%r1)
	stw %r11, 0x6c(%r1)
	stw %r0, 0x70(%r1)
	bl sub_1eb10
	bl sub_127244
	lwz %r0, 0x84(%r1)
	lwz %r31, 0x7c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x80
	blr

	.global t1_1ece4
t1_1ece4:
	.incbin "basemain.dol", 0x21244, 0x5848

	.global t1_2452c
t1_2452c:
	.incbin "basemain.dol", 0x26a8c, 0x20454
	
	.global sub_44980
sub_44980: # 0x8004bc40
	stwu %r1, -0x10(%r1)
	mflr %r0
	lwz %r4, 0x0(%r4)
	stw %r0, 0x14(%r1)
	lwz %r5, 0x0(%r3)
	lwz %r0, 0x0(%r4)
	lwz %r3, 0x0(%r5)
	cmplw %r3, %r0
	bne- _449bc
	addi %r3, %r5, 0x4
	addi %r4, %r4, 0x4
	bl sub_b47c
	cntlzw %r0, %r3
	srwi  %r3, %r0, 5
	b _449c0
_449bc:
	li %r3, 0x0
_449c0:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_449d0
t1_449d0:
	.incbin "basemain.dol", 0x46f30, 0x90

	.global sub_44a60
sub_44a60: # 0x8004bd20
	srwi  %r7, %r5, 24
	extrwi  %r6, %r5, 8, 8
	extrwi  %r0, %r5, 8, 16
	li %r8, 0x8
	stb %r8, 0x0(%r3)
	stb %r4, 0x1(%r3)
	stb %r7, 0x2(%r3)
	stb %r6, 0x3(%r3)
	stb %r0, 0x4(%r3)
	stb %r5, 0x5(%r3)
	blr
	
	.global t1_44a8c
t1_44a8c:
	.incbin "basemain.dol", 0x46fec, 0xa4

	.global sub_44b30
sub_44b30: # 0x8004bdf0
	stwu %r1, -0x20(%r1)
	mflr %r0
	lwz %r5, 0x0(%r3)
	stw %r0, 0x24(%r1)
	addi %r8, %r5, 0x8
	stw %r31, 0x1c(%r1)
	lhz %r0, 0xc(%r5)
	lwz %r3, 0x0(%r4)
	slwi  %r0, %r0, 4
	addi %r7, %r3, 0x4
	lwz %r6, 0x0(%r3)
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
	b _44bb4
_44b68:
	extrwi  %r0, %r3, 13, 16
	mr %r8, %r31
	cmplw %r0, %r6
	clrlwi  %r3, %r3, 29
	bge- _44ba4
	lbzx %r0, %r7, %r0
	extsb %r0, %r0
	sraw %r0, %r0, %r3
	clrlwi. %r0, %r0, 31
	beq- _44ba4
	lhz %r0, 0x6(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
	b _44bb4
_44ba4:
	lhz %r0, 0x4(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r5, %r0
	addi %r31, %r3, 0x8
_44bb4:
	lhz %r3, 0x0(%r31)
	lhz %r0, 0x0(%r8)
	cmplw %r0, %r3
	bgt+ _44b68
	lwz %r0, 0x8(%r31)
	mr %r3, %r4
	addi %r4, %r1, 0x8
	add %r5, %r5, %r0
	subi %r0, %r5, 0x4
	stw %r0, 0x8(%r1)
	bl sub_44980
	cmpwi %r3, 0x0
	beq- _44bf0
	mr %r3, %r31
	b _44bf4
_44bf0:
	li %r3, 0x0
_44bf4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
