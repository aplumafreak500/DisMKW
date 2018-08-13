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
	bl sub_2068
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

	.global InitRegs
InitRegs:
	li %r0, 0
	li %r3, 0
	li %r4, 0
	li %r5, 0
	li %r6, 0
	li %r7, 0
	li %r8, 0
	li %r9, 0
	li %r10, 0
	li %r11, 0
	li %r12, 0
	li %r14, 0
	li %r15, 0
	li %r16, 0
	li %r17, 0
	li %r18, 0
	li %r19, 0
	li %r20, 0
	li %r21, 0
	li %r22, 0
	li %r23, 0
	li %r24, 0
	li %r25, 0
	li %r26, 0
	li %r27, 0
	li %r28, 0
	li %r29, 0
	li %r30, 0
	li %r31, 0
	lis %r1, -0x7fc7
	ori %r1, %r1, 0x4e00 # 0x80394e00
	lis %r2, -0x7fc8
	ori %r2, %r2, 0xac20 # 0x8038ac20
	lis %r13, -0x7fc8
	ori %r13, %r13, 0x8880 # 0x80388880
	blr

InitData:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	lis %r29, gUnknown_23a0@h
	addi %r29, %r29, gUnknown_23a0@l
_22c0:
	lwz %r30, 8(%r29)
	cmpwi %r30, 0
	beq _2300
	lwz %r4, 0(%r29)
	lwz %r31, 4(%r29)
	beq _22f8
	cmplw %r31, %r4
	beq _22f8
	mr %r3, %r31
	mr %r5, %r30
	bl memcpy
	mr %r3, %r31
	mr %r4, %r30
	bl FlushCache
_22f8:
	addi %r29, %r29, 0xc
	b _22c0
_2300:
	lis %r29, gUnknown_2424@h
	addi %r29, %r29, gUnknown_2424@l
_2308:
	lwz %r5, 4(%r29)
	cmpwi %r5, 0
	beq _232c
	lwz %r3, 0(%r29)
	beq _2324
	li %r4, 0
	bl memset
_2324:
	addi %r29, %r29, 8
	b _2308
_232c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global InitHardware
InitHardware:
	mfmsr %r0
	ori %r0, %r0, 0x2000
	mtmsr %r0
	mflr %r31
	# TODO: Make these repointable
	bl 0x19a0a8
	bl 0x198dac
	bl 0x19b6e4
	mtlr %r31
	blr

	.global FlushCache
FlushCache:
	lis %r5, -1
	ori %r5, %r5, 0xfff1
	and %r5, %r5, %r3
	subf %r3, %r5, %r3
	add %r4, %r4, %r3
_2380:
	dcbst 0, %r5
	sync 0
	icbi 0, %r5
	addic %r5, %r5, 8
	addic. %r4, %r4, -8
	bge _2380
	isync
	blr

	.data
	.global gUnknown_23a0
gUnknown_23a0:
	# Some kind of reloc table?
	.4byte Text0Start
	.4byte Text0Start
	.4byte Text0Size-0x1c
	.4byte Data0Start
	.4byte Data0Start
	.4byte Data0Size
	.4byte Data1Start
	.4byte Data1Start
	.4byte Data1Size-0x10
	.4byte Text1Start
	.4byte Text1Start
	.4byte Text1Size-0xc
	.4byte Data2Start
	.4byte Data2Start
	.4byte Data2Size-0x10
	.4byte Data3Start
	.4byte Data3Start
	.4byte Data3Size-0x14
	.4byte Data4Start
	.4byte Data4Start
	.4byte Data4Size-0x14
	.4byte Data5Start
	.4byte Data5Start
	.4byte Data5Size
	.4byte Data6Start
	.4byte Data6Start
	.4byte Data6Size
	.4byte Data7Start
	.4byte Data7Start
	.4byte Data7Size
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.global gUnknown_2424
gUnknown_2424:
	.4byte bss0Start
	.4byte bss0Size
	.4byte bss1Start
	.4byte bss1Size
	.4byte bss2Start
	.4byte bss2Size
	.4byte 0
	.4byte 0
	.space 28
