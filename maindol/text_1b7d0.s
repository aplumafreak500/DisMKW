	.text
	.global sub_1b7d0
sub_1b7d0: # 0x80022a90
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r4
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	lhz %r5, 0x4(%r30)
	li %r4, 0x20
	lhz %r0, 0xc(%r30)
	li %r10, 0x0
	addi %r5, %r5, 0x1
	lwz %r6, 0x0(%r30)
	mullw %r7, %r5, %r0
	lhz %r0, 0xe(%r30)
	li %r5, 0x2
	add %r6, %r6, %r0
	li %r0, 0x81
	add %r6, %r7, %r6
	b _1bb48
_1b828:
	lhz %r7, 0xa(%r30)
	rlwinm. %r7, %r7, 0, 30, 30
	beq- _1bb3c
	lhz %r8, 0xc(%r30)
	lhz %r7, 0x6(%r30)
	cmplw %r8, %r7
	beq- _1bb54
	b _1bb3c
_1b848:
	cmpwi %r9, 0xa
	li %r7, 0x0
	bne- _1b8fc
	lhz %r7, 0x4(%r30)
	addi %r31, %r31, 0x1
	lhz %r6, 0xc(%r30)
	addi %r7, %r7, 0x1
	lwz %r8, 0x0(%r30)
	mullw %r7, %r7, %r6
	lhz %r6, 0xe(%r30)
	add %r6, %r8, %r6
	stbx %r10, %r7, %r6
	lhz %r7, 0xc(%r30)
	lhz %r6, 0x6(%r30)
	addi %r8, %r7, 0x1
	sth %r10, 0xe(%r30)
	clrlwi  %r7, %r8, 16
	cmplw %r7, %r6
	sth %r8, 0xc(%r30)
	bne- _1b8a8
	lhz %r6, 0xa(%r30)
	rlwinm. %r6, %r6, 0, 30, 30
	bne- _1b8a8
	sth %r10, 0xc(%r30)
_1b8a8:
	lhz %r7, 0xc(%r30)
	lhz %r6, 0x10(%r30)
	cmplw %r7, %r6
	bne- _1b8e0
	addi %r8, %r6, 0x1
	lhz %r6, 0x6(%r30)
	clrlwi  %r7, %r8, 16
	lwz %r9, 0x14(%r30)
	cmplw %r7, %r6
	sth %r8, 0x10(%r30)
	addi %r6, %r9, 0x1
	stw %r6, 0x14(%r30)
	bne- _1b8e0
	sth %r10, 0x10(%r30)
_1b8e0:
	lhz %r7, 0x4(%r30)
	lhz %r6, 0xc(%r30)
	addi %r7, %r7, 0x1
	lwz %r8, 0x0(%r30)
	mullw %r6, %r7, %r6
	add %r6, %r8, %r6
	b _1bb48
_1b8fc:
	cmpwi %r9, 0x9
	bne- _1b948
	lhz %r8, 0xa(%r30)
	addi %r31, %r31, 0x1
	extrwi  %r8, %r8, 2, 28
	slw %r8, %r5, %r8
	subi %r9, %r8, 0x1
_1b918:
	stb %r4, 0x0(%r6)
	addi %r6, %r6, 0x1
	lhz %r11, 0xe(%r30)
	lhz %r8, 0x4(%r30)
	addi %r11, %r11, 0x1
	sth %r11, 0xe(%r30)
	clrlwi  %r11, %r11, 16
	cmplw %r11, %r8
	bge- _1ba24
	and. %r8, %r11, %r9
	bne+ _1b918
	b _1ba24
_1b948:
	subi %r8, %r9, 0x81
	.4byte 0x7d2b0338
	srwi  %r8, %r8, 1
	lhz %r9, 0xe(%r30)
	subf %r11, %r8, %r11
	lhz %r8, 0x4(%r30)
	srwi  %r11, %r11, 31
	mr %r12, %r6
	addi %r29, %r11, 0x1
	add %r9, %r9, %r29
	mr %r11, %r31
	cmplw %r9, %r8
	ble- _1b984
	li %r29, 0x0
	b _1ba0c
_1b984:
	cmpwi %r29, 0x0
	sth %r9, 0xe(%r30)
	mr %r9, %r29
	beq- _1ba0c
	srwi. %r8, %r29, 3
	mtctr %r8
	beq- _1b9f4
_1b9a0:
	lbz %r8, 0x0(%r11)
	stb %r8, 0x0(%r12)
	lbz %r8, 0x1(%r11)
	stb %r8, 0x1(%r12)
	lbz %r8, 0x2(%r11)
	stb %r8, 0x2(%r12)
	lbz %r8, 0x3(%r11)
	stb %r8, 0x3(%r12)
	lbz %r8, 0x4(%r11)
	stb %r8, 0x4(%r12)
	lbz %r8, 0x5(%r11)
	stb %r8, 0x5(%r12)
	lbz %r8, 0x6(%r11)
	stb %r8, 0x6(%r12)
	lbz %r8, 0x7(%r11)
	addi %r11, %r11, 0x8
	stb %r8, 0x7(%r12)
	addi %r12, %r12, 0x8
	bdnz+ _1b9a0
	andi. %r9, %r29, 0x7
	beq- _1ba0c
_1b9f4:
	mtctr %r9
_1b9f8:
	lbz %r8, 0x0(%r11)
	addi %r11, %r11, 0x1
	stb %r8, 0x0(%r12)
	addi %r12, %r12, 0x1
	bdnz+ _1b9f8
_1ba0c:
	cmpwi %r29, 0x0
	beq- _1ba20
	add %r31, %r31, %r29
	add %r6, %r6, %r29
	b _1ba24
_1ba20:
	li %r7, 0x1
_1ba24:
	lhz %r8, 0x4(%r30)
	lhz %r11, 0xe(%r30)
	cmplw %r11, %r8
	blt- _1ba38
	li %r7, 0x1
_1ba38:
	cmpwi %r7, 0x0
	beq- _1bb18
	lhz %r7, 0xa(%r30)
	clrlwi. %r7, %r7, 31
	beq- _1ba6c
	b _1ba54
_1ba50:
	addi %r31, %r31, 0x1
_1ba54:
	lbz %r7, 0x0(%r31)
	cmpwi %r7, 0xa
	beq- _1bb48
	cmpwi %r7, 0x0
	bne+ _1ba50
	b _1bb48
_1ba6c:
	lbz %r6, 0x0(%r31)
	cmpwi %r6, 0xa
	bne- _1ba7c
	addi %r31, %r31, 0x1
_1ba7c:
	lhz %r6, 0xc(%r30)
	addi %r7, %r8, 0x1
	lwz %r8, 0x0(%r30)
	mullw %r7, %r7, %r6
	add %r6, %r8, %r11
	stbx %r10, %r7, %r6
	lhz %r7, 0xc(%r30)
	lhz %r6, 0x6(%r30)
	addi %r8, %r7, 0x1
	sth %r10, 0xe(%r30)
	clrlwi  %r7, %r8, 16
	cmplw %r7, %r6
	sth %r8, 0xc(%r30)
	bne- _1bac4
	lhz %r6, 0xa(%r30)
	rlwinm. %r6, %r6, 0, 30, 30
	bne- _1bac4
	sth %r10, 0xc(%r30)
_1bac4:
	lhz %r7, 0xc(%r30)
	lhz %r6, 0x10(%r30)
	cmplw %r7, %r6
	bne- _1bafc
	addi %r8, %r6, 0x1
	lhz %r6, 0x6(%r30)
	clrlwi  %r7, %r8, 16
	lwz %r9, 0x14(%r30)
	cmplw %r7, %r6
	sth %r8, 0x10(%r30)
	addi %r6, %r9, 0x1
	stw %r6, 0x14(%r30)
	bne- _1bafc
	sth %r10, 0x10(%r30)
_1bafc:
	lhz %r7, 0x4(%r30)
	lhz %r6, 0xc(%r30)
	addi %r7, %r7, 0x1
	lwz %r8, 0x0(%r30)
	mullw %r6, %r7, %r6
	add %r6, %r8, %r6
	b _1bb48
_1bb18:
	lbz %r7, 0x0(%r31)
	cmpwi %r7, 0x0
	bne- _1bb3c
	lhz %r7, 0xc(%r30)
	addi %r8, %r8, 0x1
	lwz %r9, 0x0(%r30)
	mullw %r8, %r8, %r7
	add %r7, %r9, %r11
	stbx %r10, %r8, %r7
_1bb3c:
	lbz %r9, 0x0(%r31)
	cmpwi %r9, 0x0
	bne+ _1b848
_1bb48:
	lbz %r7, 0x0(%r31)
	cmpwi %r7, 0x0
	bne+ _1b828
_1bb54:
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

