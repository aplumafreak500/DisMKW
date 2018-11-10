	.text
	.asciz "Metrowerks Target Resident Kernel for PowerPC"
	.space 18
	.global mod0_mod_start
mod0_mod_start:
	.ifdef CTGP_CODE
	stwu %r1, -256(%r1)
	stmw %r0, 8(%r1)
	mflr %r0
	stw %r0, 260(%r1)
	lwz %r12, 76(%r3)
	add %r12, %r3, %r12
	mtlr %r12
	blrl
 	lis %r0, 0x4800
	ori %r0, %r0,0x0008
	lis %r3, mod_mod0_entry_addr@h
	ori %r3, %r3, mod_mod0_entry_addr@l
	stw %r0, 0(%r3)
	li %r4, 0
	icbi %r3, %r4
	lwz %r0, 260(%r1)
	mtlr %r0
	lmw %r2, 16(%r1)
	lwz %r0, 8(%r1)
	addi %r1, %r1, 256
	b _44d54
	.space 108
	.else
	.space 192
	.endif

	.global TRK_Exceptions
TRK_Exceptions:
	b t1_14840

	.space 252

	mtspr 0x111, %r2
	mfspr %r2, 0x1a
	icbi 0, %r2
	mfdar %r2
	dcbi 0, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x200
	rfi

	.space 180

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x300
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x400
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x500
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x600
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x700
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x800
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x900
	rfi

	.space 716

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0xc00
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0xd00
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0xe00
	rfi

	.space 204

	b _f54

	.space 28

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0xf20
	rfi
_f54:
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0xf00
	rfi

	.space 120

	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1030
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1030:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1000
	rfi

	.space 144

	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1130
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1130:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1100
	rfi

	.space 144

	mtspr 0x111, %r2
	mfcr %r2
	mtspr 0x112, %r2
	mfmsr %r2
	andis. %r2, %r2, 2
	beq _1230
	mfmsr %r2
	xoris %r2, %r2, 2
	sync 0
	mtmsr %r2
	sync 0
	mtspr 0x111, %r2
_1230:
	mfspr %r2, 0x112
	mtcrf 0xff, %r2
	mfspr %r2, 0x111
	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1200
	rfi

	.space 144

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1300
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1400
	rfi

	.space 460

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1600
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1700
	rfi

	.space 1228

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1c00
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1d00
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1e00
	rfi

	.space 204

	mtspr 0x111, %r2
	mtspr 0x112, %r3
	mtspr 0x113, %r4
	mfspr %r2, 0x1a
	mfspr %r4, 0x1b
	mfmsr %r3
	ori %r3, %r3, 0x30
	mtspr 0x1b, %r3
	lis %r3, t1_17fcc@h
	ori %r3, %r3, t1_17fcc@l
	mtspr 0x1a, %r3
	li %r3, 0x1f00
	rfi
