	.text
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
	# Outside of dol memory map, why?
	lis %r1, sbss2_end@h+0x10000
	ori %r1, %r1, sbss2_end@l+4 # 0x80394e00
	# These are different in European version
	lis %r2, sbss2_end@h
	ori %r2, %r2, sbss2_end@l+0x5e24 # 0x8038ac20
	lis %r13, sbss2_end@h
	ori %r13, %r13, sbss2_end@l+0x3a84 # 0x80388880
	blr

	.global InitData
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
	bl t1_199140
	bl t1_197e48
	bl t1_19a784
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
	.4byte init_start
	.4byte init_start
	.4byte init_size-0x1c
	.4byte extab_start
	.4byte extab_start
	.4byte extab_size
	.4byte extab_index_start
	.4byte extab_index_start
	.4byte extab_index_size-0x10
	.4byte text_start
	.4byte text_start
	.4byte text_size-0xc
	.4byte ctors_start
	.4byte ctors_start
	.4byte ctors_size-0x10
	.4byte dtors_start
	.4byte dtors_start
	.4byte dtors_size-0x14
	.4byte rodata_start
	.4byte rodata_start
	.4byte rodata_size-0x14
	.4byte data_start
	.4byte data_start
	.4byte data_size
	.4byte sdata_start
	.4byte sdata_start
	.4byte sdata_size
	.4byte sdata2_start
	.4byte sdata2_start
	.4byte sdata2_size
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.global gUnknown_2424
gUnknown_2424:
	.4byte bss_start
	.4byte bss_size
	.4byte sbss_start
	.4byte sbss_size
	.4byte sbss2_start
	.4byte sbss2_size
	.4byte 0
	.4byte 0
	.space 28
