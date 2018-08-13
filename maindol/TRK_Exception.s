	.text
	.asciz "Metrowerks Target Resident Kernel for PowerPC"
	.space 18
	# MOD0 does something here
	.space 192

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
