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

