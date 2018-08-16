	.text
	.global sub_2090
sub_2090:
	li %r0, 1
	stb %r0, -0x62b0(%r13)
	blr

	.global sub_209c
sub_209c:
	lbz %r3, -0x62b0(%r13)
	blr

	.global dol_entrypoint
dol_entrypoint:
	bl InitRegs
	bl InitHardware
	li %r0, -1
	stwu %r1, -8(%r1)
	stw %r0, 4(%r1)
	stw %r0, 0(%r1)
	bl InitData
	li %r0, 0
	lis %r6, DebugMask@h
	addi %r6, %r6, DebugMask@l
	stw %r0, 0(%r6)
	lis %r6, Bi2Offset@h
	addi %r6, %r6, Bi2Offset@l
	lwz %r6, 0(%r6)
	cmplwi %r6, 0
	beq _20ec
	lwz %r7, 0xc(%r6)
	b _210c
_20ec:
	lis %r5, ArenaHigh@h
	addi %r5, %r5, ArenaHigh@l
	lwz %r5, 0(%r5)
	cmplwi %r5, 0
	beq _2148
	lis %r7, Unk30E8@h
	addi %r7, %r7, Unk30E8@l
	lwz %r7, 0(%r7)
_210c:
	li %r5, 0
	cmplwi %r7, 2
	beq _2138
	cmplwi %r7, 3
	li %r5, 1
	beq _2138
	cmplwi %r7, 4
	bne _2148
	li %r5, 2
	bl sub_2090
	b _2148
_2138:
	lis %r6, t1_2452c@h
	addi %r6, %r6, t1_2452c@l
	mtlr %r6
	blrl
_2148:
	lis %r6, Bi2Offset@h
	addi %r6, %r6, Bi2Offset@l
	lwz %r5, 0(%r6)
	cmplwi %r5, 0
	beq+ _21b8
	lwz %r6, 8(%r5)
	cmplwi %r6, 0
	beq+ _21b8
	add %r6, %r5, %r6
	lwz %r14, 0(%r6)
	cmplwi %r14, 0
	beq _21b8
	addi %r15, %r6, 4
	mtctr %r14
_2180:
	addi %r6, %r6, 4
	lwz %r7, 0(%r6)
	add %r7, %r7, %r5
	stw %r7, 0(%r6)
	bdnz _2180
	lis %r5, ArenaHigh@h
	addi %r5, %r5, ArenaHigh@l
	rlwinm %r7, %r15, 0, 0, 0x1a
	stw %r7, 0(%r5)
	lis %r5, FSTOffset2@h
	addi %r5, %r5, FSTOffset2@l
	rlwinm %r7, %r15, 0, 0, 0x1a
	stw %r7, 0(%r5)
	b _21c0
_21b8:
	li %r14, 0
	li %r15, 0
_21c0:
	bl t1_155fb4
	bl t1_198908
	lis %r4, GCNPort4DebugState@h
	addi %r4, %r4, GCNPort4DebugState@l+2
	lhz %r3, 0(%r4)
	andi. %r5, %r3, 0x8000
	beq _21e8
	andi. %r3, %r3, 0x7fff
	cmplwi %r3, 1
	bne _21ec
_21e8:
	bl CheckGCPort4State
_21ec:
	bl sub_209c
	cmplwi %r3, 1
	bne _21fc
	bl t1_145c4
_21fc:
	bl t1_1a71c4
	mr %r3, %r14
	mr %r4, %r15
	bl t1_4350
	b t1_1a722c
