	.text
	.global sub_1ae60
sub_1ae60: # 0x80022120
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	cmpwi %r5, 0x64
	mr %r8, %r5
	blt- _1ae84
	subi %r8, %r5, 0x64
_1ae84:
	lis %r7, 0x6666
	lis %r6, 0x8024
	addi %r0, %r7, 0x6667
	cmpwi %r5, 0x64
	mulhw %r0, %r0, %r8
	addi %r6, %r6, 0x6f30
	srawi %r5, %r0, 1
	srwi  %r7, %r5, 31
	srawi %r0, %r0, 1
	add %r5, %r5, %r7
	mulli %r7, %r5, 0x5
	srwi  %r5, %r0, 31
	add %r5, %r0, %r5
	subf %r7, %r7, %r8
	slwi  %r0, %r5, 3
	subf %r0, %r5, %r0
	slwi  %r0, %r0, 2
	mulli %r9, %r7, 0x6
	add %r10, %r6, %r0
	bge- _1aee0
	lis %r5, 0x8024
	addi %r5, %r5, 0x6e30
	add %r10, %r5, %r0
_1aee0:
	lis %r12, 0x802a
	li %r6, 0x190
	addi %r5, %r12, 0x28f8
	li %r0, 0x12c
	lhz %r28, 0x8(%r5)
	cmpwi %r4, 0x0
	lhz %r7, 0xa(%r5)
	subfc %r6, %r6, %r28
	lhz %r8, 0xc(%r5)
	subfe %r11, %r6, %r6
	lwz %r12, 0x28f8(%r12)
	subfc %r0, %r0, %r7
	subfe %r6, %r0, %r0
	addi %r6, %r6, 0x2
	addi %r0, %r11, 0x2
	mullw %r11, %r6, %r4
	mullw %r8, %r11, %r8
	mullw %r11, %r3, %r0
	slwi  %r8, %r8, 1
	add %r8, %r12, %r8
	slwi  %r11, %r11, 1
	add %r11, %r11, %r8
	blt- _1b108
	cmpwi %r3, 0x0
	bge- _1af48
	b _1b108
_1af48:
	addi %r3, %r3, 0x6
	mullw %r3, %r0, %r3
	cmpw %r28, %r3
	ble- _1b108
	addi %r3, %r4, 0x7
	mullw %r3, %r6, %r3
	cmpw %r7, %r3
	bgt- _1af6c
	b _1b108
_1af6c:
	mulli %r7, %r0, 0x6
	lis %r3, 0x802a
	lis %r4, 0x8027
	addi %r3, %r3, 0x2908
	subi %r4, %r4, 0x2788
	li %r12, 0x0
	ori %r0, %r0, 0x0
_1af88:
	lwz %r8, 0x0(%r10)
	cmpwi %r0, 0x1
	addi %r10, %r10, 0x4
	slw %r26, %r8, %r9
	bne- _1afa4
	rlwinm  %r8, %r26, 31, 1, 6
	b _1afd0
_1afa4:
	rlwinm  %r8, %r26, 6, 28, 29
	rlwinm  %r31, %r26, 4, 28, 29
	rlwinm  %r30, %r26, 8, 28, 29
	lwzx %r8, %r4, %r8
	lwzx %r31, %r4, %r31
	lwzx %r30, %r4, %r30
	slwi  %r8, %r8, 4
	slwi  %r31, %r31, 8
	or %r8, %r30, %r8
	or %r8, %r31, %r8
	slwi  %r8, %r8, 19
_1afd0:
	addi %r31, %r7, 0x1
	srwi  %r31, %r31, 1
	mtctr %r31
	cmpwi %r7, 0x0
	ble- _1b0e8
	ori %r0, %r0, 0x0
_1afe8:
	rlwinm. %r27, %r8, 0, 1, 1
	beq- _1aff8
	lhz %r29, 0x8(%r3)
	b _1affc
_1aff8:
	li %r29, 0x40
_1affc:
	clrrwi. %r30, %r8, 31
	beq- _1b00c
	lhz %r30, 0xa(%r3)
	b _1b010
_1b00c:
	li %r30, 0x20
_1b010:
	rlwinm. %r26, %r8, 0, 2, 2
	beq- _1b020
	lhz %r28, 0xa(%r3)
	b _1b024
_1b020:
	li %r28, 0x20
_1b024:
	cmpwi %r27, 0x0
	beq- _1b034
	lhz %r31, 0x4(%r3)
	b _1b038
_1b034:
	li %r31, 0x0
_1b038:
	add %r30, %r28, %r30
	cmpwi %r6, 0x1
	add %r30, %r29, %r30
	or %r30, %r31, %r30
	sth %r30, 0x0(%r11)
	clrlwi  %r28, %r30, 16
	ble- _1b060
	lhz %r30, 0xc(%r5)
	slwi  %r30, %r30, 1
	sthx %r28, %r11, %r30
_1b060:
	cmpwi %r26, 0x0
	beq- _1b070
	lhz %r28, 0xe(%r3)
	b _1b074
_1b070:
	li %r28, 0x40
_1b074:
	cmpwi %r27, 0x0
	beq- _1b084
	lhz %r29, 0x10(%r3)
	b _1b088
_1b084:
	li %r29, 0x20
_1b088:
	rlwinm. %r30, %r8, 0, 3, 3
	beq- _1b098
	lhz %r31, 0x10(%r3)
	b _1b09c
_1b098:
	li %r31, 0x20
_1b09c:
	cmpwi %r26, 0x0
	beq- _1b0ac
	lhz %r30, 0x4(%r3)
	b _1b0b0
_1b0ac:
	li %r30, 0x0
_1b0b0:
	add %r31, %r31, %r29
	cmpwi %r6, 0x1
	add %r31, %r28, %r31
	or %r31, %r30, %r31
	sth %r31, 0x2(%r11)
	clrlwi  %r26, %r31, 16
	ble- _1b0dc
	lhz %r31, 0xc(%r5)
	slwi  %r31, %r31, 1
	add %r31, %r11, %r31
	sth %r26, 0x2(%r31)
_1b0dc:
	slwi  %r8, %r8, 2
	addi %r11, %r11, 0x4
	bdnz+ _1afe8
_1b0e8:
	lhz %r8, 0xc(%r5)
	addi %r12, %r12, 0x1
	cmpwi %r12, 0x7
	mullw %r8, %r8, %r6
	subf %r8, %r7, %r8
	slwi  %r8, %r8, 1
	add %r11, %r11, %r8
	blt+ _1af88
_1b108:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1b120
sub_1b120: # 0x800223e0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	lwz %r0, -0x6b50(%r13)
	cmpwi %r0, 0x0
	bne- _1b1d0
	li %r30, 0x280
	li %r11, 0x1e0
	mullw %r0, %r30, %r11
	lis %r29, 0x802a
	lis %r8, 0x802a
	addi %r12, %r29, 0x28f8
	lis %r6, 0x1
	sth %r30, 0x8(%r12)
	slwi  %r10, %r0, 1
	li %r28, 0x0
	li %r9, 0xff
	addi %r7, %r8, 0x2908
	li %r5, 0x7f
	li %r4, 0x3f
	li %r3, 0x1f
	subi %r6, %r6, 0x1500
	li %r0, 0x1
	stw %r28, 0x28f8(%r29)
	sth %r11, 0xa(%r12)
	sth %r30, 0xc(%r12)
	stw %r10, 0x4(%r12)
	stb %r9, 0x2908(%r8)
	stb %r9, 0x1(%r7)
	stb %r9, 0x2(%r7)
	stb %r9, 0x3(%r7)
	sth %r6, 0x4(%r7)
	sth %r5, 0x6(%r7)
	sth %r4, 0x8(%r7)
	sth %r3, 0xa(%r7)
	sth %r5, 0xc(%r7)
	sth %r4, 0xe(%r7)
	sth %r3, 0x10(%r7)
	stw %r0, -0x6b50(%r13)
_1b1d0:
	bl sub_1b37c4
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne- _1b270
	cmpwi %r31, 0x0
	bne- _1b23c
	bl sub_1b3978
	cmpwi %r3, 0x0
	beq- _1b210
	cmplwi %r3, 0x1
	beq- _1b21c
	cmplwi %r3, 0x5
	beq- _1b228
	cmplwi %r3, 0x2
	beq- _1b234
	b _1b23c
_1b210:
	lis %r31, 0x8028
	addi %r31, %r31, 0x5f08
	b _1b23c
_1b21c:
	lis %r31, 0x8028
	addi %r31, %r31, 0x5fbc
	b _1b23c
_1b228:
	lis %r31, 0x8028
	addi %r31, %r31, 0x5ff8
	b _1b23c
_1b234:
	lis %r31, 0x8028
	addi %r31, %r31, 0x5f80
_1b23c:
	bl sub_199d54
	lhz %r4, 0x4(%r31)
	lhz %r0, 0x8(%r31)
	addi %r4, %r4, 0xf
	rlwinm  %r4, %r4, 0, 16, 27
	mullw %r0, %r4, %r0
	slwi  %r0, %r0, 1
	subf %r0, %r0, %r3
	mr %r3, %r31
	clrrwi  %r29, %r0, 5
	bl sub_1b2c0c
	mr %r3, %r29
	bl sub_1b3758
_1b270:
	li %r3, 0x0
	bl sub_1b37cc
	bl sub_1b3644
	bl sub_19f260
	mr %r28, %r3
	bl sub_1b3844
	mr %r30, %r3
_1b28c:
	bl sub_1b3844
	cmplw %r30, %r3
	beq+ _1b28c
	mr %r3, %r28
	bl sub_19f274
	cmpwi %r31, 0x0
	beq- _1b2e0
	lhz %r6, 0x4(%r31)
	lis %r5, 0x802a
	lhz %r7, 0x8(%r31)
	addi %r4, %r5, 0x28f8
	addi %r0, %r6, 0xf
	sth %r7, 0xa(%r4)
	rlwinm  %r3, %r0, 0, 16, 27
	mullw %r0, %r3, %r7
	stw %r29, 0x28f8(%r5)
	sth %r6, 0x8(%r4)
	sth %r3, 0xc(%r4)
	slwi  %r0, %r0, 1
	stw %r0, 0x4(%r4)
	b _1b2e8
_1b2e0:
	lis %r3, 0x802a
	stw %r29, 0x28f8(%r3)
_1b2e8:
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

