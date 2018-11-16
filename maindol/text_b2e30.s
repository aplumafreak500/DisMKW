	.text
	.include "macros.inc"
	.global sub_b2e30
sub_b2e30: # 0x800ba0f0
	stwu %r1, -0x1e0(%r1)
	mflr %r0
	stw %r0, 0x1e4(%r1)
	stfd %f31, 0x1d0(%r1)
	psq_st 31, 0x1d8, 1, 0, 0
	stfd %f30, 0x1c0(%r1)
	psq_st 30, 0x1c8, 1, 0, 0
	stfd %f29, 0x1b0(%r1)
	psq_st 29, 0x1b8, 1, 0, 0
	stfd %f28, 0x1a0(%r1)
	psq_st 28, 0x1a8, 1, 0, 0
	stfd %f27, 0x190(%r1)
	psq_st 27, 0x198, 1, 0, 0
	addi %r11, %r1, 0x190
	bl sub_19764
	lfs %f1, 0x4c(%r3)
	slwi  %r31, %r6, 1
	lfs %f0, -0x6ca0(%r2)
	mr %r22, %r3
	lwz %r21, 0x0(%r5)
	mr %r23, %r4
	fcmpo %cr0, %f1, %f0
	mr %r24, %r5
	add %r30, %r21, %r31
	mfcr %r29
	lfs %f31, -0x6c9c(%r2)
	li %r20, 0x0
	stw %r3, 0xcc(%r1)
	srwi  %r29, %r29, 31
	addi %r3, %r1, 0x98
	stw %r20, 0xd4(%r1)
	li %r28, 0x0
	li %r27, 0x0
	stw %r20, 0xd8(%r1)
	stw %r20, 0xdc(%r1)
	stw %r21, 0xd0(%r1)
	stfs %f31, 0xa8(%r1)
	lwz %r4, 0x48(%r22)
	stfs %f31, 0xc(%r1)
	stfs %f31, 0x20(%r1)
	stfs %f31, 0x34(%r1)
	bl sub_74fd0
	lfs %f0, -0x6c9c(%r2)
	stfs %f0, 0x0(%r23)
	stfs %f0, 0x8(%r23)
	lwz %r3, 0x48(%r22)
	cmpwi %r3, 0x0
	beq- _b2f04
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x34(%r12)
	mtctr %r12
	bctrl 
	b _b2f08
_b2f04:
	mr %r3, %r20
_b2f08:
	xoris %r3, %r3, 0x8000
	lis %r0, 0x4330
	stw %r3, 0x14c(%r1)
	lfd %f2, -0x6c98(%r2)
	stw %r0, 0x148(%r1)
	lfs %f3, 0x28(%r22)
	lfd %f0, 0x148(%r1)
	lfs %f1, 0x54(%r22)
	fsubs %f2, %f0, %f2
	lfs %f0, -0x6c9c(%r2)
	fmuls %f2, %f2, %f3
	fadds %f1, %f1, %f2
	fcmpo %cr0, %f0, %f1
	ble- _b2f44
	b _b2f48
_b2f44:
	fmr  %f1, %f0
_b2f48:
	stfs %f1, 0x4(%r23)
	lwz %r3, 0x48(%r22)
	cmpwi %r3, 0x0
	beq- _b2f6c
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x34(%r12)
	mtctr %r12
	bctrl 
	b _b2f70
_b2f6c:
	li %r3, 0x0
_b2f70:
	xoris %r3, %r3, 0x8000
	lis %r0, 0x4330
	stw %r3, 0x154(%r1)
	lfd %f2, -0x6c98(%r2)
	stw %r0, 0x150(%r1)
	lfs %f3, 0x28(%r22)
	lfd %f0, 0x150(%r1)
	lfs %f1, 0x54(%r22)
	fsubs %f2, %f0, %f2
	lfs %f0, -0x6c9c(%r2)
	fmuls %f2, %f2, %f3
	fadds %f4, %f1, %f2
	fcmpo %cr0, %f0, %f4
	bge- _b2fac
	b _b2fb0
_b2fac:
	fmr  %f4, %f0
_b2fb0:
	frsp  %f0, %f4
	lfs %f3, 0x0(%r23)
	lfs %f2, 0x4(%r23)
	addi %r3, %r1, 0x98
	lfs %f1, 0x8(%r23)
	addi %r12, %r1, 0x9c
	stfs %f4, 0xc(%r23)
	li %r26, 0x0
	stfs %f3, 0x38(%r1)
	stfs %f2, 0x4c(%r1)
	stfs %f1, 0x60(%r1)
	stfs %f0, 0x74(%r1)
	stw %r21, 0x98(%r1)
	bl sub_19630
	ori %r0, %r0, 0x0
	lfs %f29, -0x6c9c(%r2)
	mr %r25, %r3
	lfd %f30, -0x6c98(%r2)
	addi %r20, %r1, 0xe0
	lis %r21, 0x4330
	b _b345c
_b3004:
	clrlwi  %r5, %r25, 16
	cmpwi %r5, 0x20
	bge- _b3378
	cntlzw %r0, %r28
	stfs %f29, 0x8c(%r1)
	srwi  %r0, %r0, 5
	cmpwi %r29, 0x0
	stfs %f29, 0x90(%r1)
	stfs %f29, 0x94(%r1)
	stw %r3, 0xd0(%r1)
	stw %r0, 0xdc(%r1)
	stfs %f31, 0x88(%r1)
	stfs %f31, 0x2c(%r22)
	beq- _b3294
	cmpwi %r5, 0xa
	beq- _b3294
	cmpwi %r26, 0x0
	beq- _b3294
	lwz %r7, 0xcc(%r1)
	lwz %r6, 0xd0(%r1)
	lwz %r4, 0xd4(%r1)
	lwz %r3, 0xd8(%r1)
	lwz %r0, 0xdc(%r1)
	stw %r7, 0xb8(%r1)
	stw %r6, 0xbc(%r1)
	stw %r4, 0xc0(%r1)
	stw %r3, 0xc4(%r1)
	stw %r0, 0xc8(%r1)
	lbz %r0, 0x0(%r22)
	stb %r0, 0xe0(%r1)
	lbz %r0, 0x1(%r22)
	stb %r0, 0xe1(%r1)
	lbz %r0, 0x2(%r22)
	stb %r0, 0xe2(%r1)
	lbz %r0, 0x3(%r22)
	stb %r0, 0xe3(%r1)
	lbz %r0, 0x4(%r22)
	stb %r0, 0xe4(%r1)
	lbz %r0, 0x5(%r22)
	stb %r0, 0xe5(%r1)
	lbz %r0, 0x6(%r22)
	stb %r0, 0xe6(%r1)
	lbz %r0, 0x7(%r22)
	stb %r0, 0xe7(%r1)
	lbz %r0, 0x8(%r22)
	stb %r0, 0xe8(%r1)
	lbz %r0, 0x9(%r22)
	stb %r0, 0xe9(%r1)
	lbz %r0, 0xa(%r22)
	stb %r0, 0xea(%r1)
	lbz %r0, 0xb(%r22)
	stb %r0, 0xeb(%r1)
	lbz %r0, 0xc(%r22)
	stb %r0, 0xec(%r1)
	lbz %r0, 0xd(%r22)
	stb %r0, 0xed(%r1)
	lbz %r0, 0xe(%r22)
	stb %r0, 0xee(%r1)
	lbz %r0, 0xf(%r22)
	stb %r0, 0xef(%r1)
	lbz %r0, 0x10(%r22)
	stb %r0, 0xf0(%r1)
	lbz %r0, 0x11(%r22)
	stb %r0, 0xf1(%r1)
	lbz %r0, 0x12(%r22)
	stb %r0, 0xf2(%r1)
	lbz %r0, 0x13(%r22)
	stb %r0, 0xf3(%r1)
	lbz %r0, 0x14(%r22)
	stb %r0, 0xf4(%r1)
	lbz %r0, 0x15(%r22)
	stb %r0, 0xf5(%r1)
	lbz %r0, 0x16(%r22)
	stb %r0, 0xf6(%r1)
	lbz %r0, 0x17(%r22)
	stb %r0, 0xf7(%r1)
	lbz %r0, 0x18(%r22)
	stb %r0, 0xf8(%r1)
	lbz %r0, 0x19(%r22)
	stb %r0, 0xf9(%r1)
	lbz %r0, 0x1a(%r22)
	stb %r0, 0xfa(%r1)
	lbz %r0, 0x1b(%r22)
	stb %r0, 0xfb(%r1)
	lbz %r0, 0x1c(%r22)
	stb %r0, 0xfc(%r1)
	lbz %r0, 0x1d(%r22)
	stb %r0, 0xfd(%r1)
	lbz %r0, 0x1e(%r22)
	stb %r0, 0xfe(%r1)
	lbz %r0, 0x1f(%r22)
	stb %r0, 0xff(%r1)
	lwz %r0, 0x20(%r22)
	stw %r0, 0x100(%r1)
	lwz %r3, 0x24(%r22)
	lwz %r0, 0x28(%r22)
	stw %r0, 0x108(%r1)
	stw %r3, 0x104(%r1)
	lwz %r3, 0x2c(%r22)
	lwz %r0, 0x30(%r22)
	stw %r0, 0x110(%r1)
	stw %r3, 0x10c(%r1)
	lwz %r0, 0x34(%r22)
	stw %r0, 0x114(%r1)
	lwz %r3, 0x38(%r22)
	lwz %r0, 0x3c(%r22)
	stw %r0, 0x11c(%r1)
	stw %r3, 0x118(%r1)
	lbz %r0, 0x40(%r22)
	stb %r0, 0x120(%r1)
	lbz %r0, 0x41(%r22)
	stb %r0, 0x121(%r1)
	lbz %r0, 0x42(%r22)
	stb %r0, 0x122(%r1)
	lbz %r0, 0x43(%r22)
	stb %r0, 0x123(%r1)
	lfs %f0, 0x44(%r22)
	stfs %f0, 0x124(%r1)
	lwz %r0, 0x48(%r22)
	addi %r4, %r1, 0x78
	stw %r0, 0x128(%r1)
	addi %r6, %r1, 0xb8
	lfs %f0, 0x4c(%r22)
	stfs %f0, 0x12c(%r1)
	lfs %f0, 0x50(%r22)
	stfs %f0, 0x130(%r1)
	lfs %f0, 0x54(%r22)
	stfs %f0, 0x134(%r1)
	lwz %r0, 0x58(%r22)
	stw %r0, 0x138(%r1)
	lwz %r0, 0x5c(%r22)
	stw %r0, 0x13c(%r1)
	lwz %r3, 0x60(%r22)
	stw %r3, 0x140(%r1)
	stfs %f29, 0x78(%r1)
	stfs %f29, 0x7c(%r1)
	stfs %f29, 0x80(%r1)
	stfs %f29, 0x84(%r1)
	stw %r20, 0xb8(%r1)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	lfs %f1, 0x80(%r1)
	lfs %f0, 0x78(%r1)
	fsubs %f0, %f1, %f0
	fcmpo %cr0, %f0, %f29
	ble- _b3288
	lfs %f2, 0x10c(%r1)
	lfs %f1, 0xd4(%r1)
	lfs %f0, 0x4c(%r22)
	fsubs %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _b3288
	stw %r26, 0x98(%r1)
	mr %r3, %r20
	li %r27, 0x1
	li %r25, 0xa
	li %r4, 0x0
	bl sub_abb50
	b _b345c
_b3288:
	addi %r3, %r1, 0xe0
	li %r4, 0x0
	bl sub_abb50
_b3294:
	lwz %r3, 0x60(%r22)
	addi %r4, %r1, 0x88
	clrlwi  %r5, %r25, 16
	addi %r6, %r1, 0xcc
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	lwz %r0, 0xd0(%r1)
	stw %r0, 0x98(%r1)
	lfs %f1, 0x88(%r1)
	lfs %f0, 0x0(%r23)
	fcmpo %cr0, %f0, %f1
	ble- _b32d0
	b _b32d4
_b32d0:
	fmr  %f1, %f0
_b32d4:
	stfs %f1, 0x0(%r23)
	lfs %f0, 0x4(%r23)
	lfs %f1, 0x8c(%r1)
	fcmpo %cr0, %f0, %f1
	ble- _b32ec
	b _b32f0
_b32ec:
	fmr  %f1, %f0
_b32f0:
	stfs %f1, 0x4(%r23)
	lfs %f0, 0x8(%r23)
	lfs %f1, 0x90(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _b3308
	b _b330c
_b3308:
	fmr  %f1, %f0
_b330c:
	stfs %f1, 0x8(%r23)
	lfs %f0, 0xc(%r23)
	lfs %f1, 0x94(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _b3324
	b _b3328
_b3324:
	fmr  %f1, %f0
_b3328:
	stfs %f1, 0xc(%r23)
	cmpwi %r3, 0x4
	lfs %f31, 0x2c(%r22)
	bne- _b334c
	lwz %r0, 0x0(%r24)
	li %r3, 0x0
	add %r0, %r0, %r31
	stw %r0, 0x0(%r24)
	b _b3474
_b334c:
	cmpwi %r3, 0x1
	bne- _b335c
	li %r28, 0x0
	b _b343c
_b335c:
	cmpwi %r3, 0x2
	bne- _b336c
	li %r28, 0x1
	b _b343c
_b336c:
	cmpwi %r3, 0x3
	beq- _b3468
	b _b343c
_b3378:
	cmpwi %r28, 0x0
	lfs %f27, -0x6c9c(%r2)
	beq- _b338c
	lfs %f0, 0x50(%r22)
	fadds %f27, %f27, %f0
_b338c:
	lbz %r0, 0x43(%r22)
	cmpwi %r0, 0x0
	beq- _b33a4
	lfs %f0, 0x44(%r22)
	fadds %f27, %f27, %f0
	b _b33dc
_b33a4:
	lwz %r3, 0x48(%r22)
	clrlwi  %r4, %r25, 16
	lfs %f28, 0x24(%r22)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x48(%r12)
	mtctr %r12
	bctrl 
	xoris %r0, %r3, 0x8000
	stw %r0, 0x154(%r1)
	stw %r21, 0x150(%r1)
	lfd %f0, 0x150(%r1)
	fsubs %f0, %f0, %f30
	fmuls %f0, %f0, %f28
	fadds %f27, %f27, %f0
_b33dc:
	cmpwi %r29, 0x0
	beq- _b340c
	cmpwi %r26, 0x0
	beq- _b340c
	fadds %f1, %f31, %f27
	lfs %f0, 0x4c(%r22)
	fcmpo %cr0, %f1, %f0
	ble- _b340c
	stw %r26, 0x98(%r1)
	li %r27, 0x1
	li %r25, 0xa
	b _b345c
_b340c:
	fadds %f31, %f31, %f27
	lfs %f0, 0x0(%r23)
	fcmpo %cr0, %f0, %f31
	ble- _b3420
	fmr  %f0, %f31
_b3420:
	lfs %f1, 0x8(%r23)
	stfs %f0, 0x0(%r23)
	fcmpo %cr0, %f1, %f31
	bge- _b3434
	fmr  %f1, %f31
_b3434:
	stfs %f1, 0x8(%r23)
	li %r28, 0x1
_b343c:
	cmpwi %r29, 0x0
	beq- _b3448
	lwz %r26, 0x98(%r1)
_b3448:
	addi %r3, %r1, 0x98
	addi %r12, %r1, 0x9c
	bl sub_19630
	ori %r0, %r0, 0x0
	mr %r25, %r3
_b345c:
	lwz %r3, 0x98(%r1)
	cmplw %r3, %r30
	ble+ _b3004
_b3468:
	lwz %r0, 0x98(%r1)
	mr %r3, %r27
	stw %r0, 0x0(%r24)
_b3474:
	psq_l 31, 0x1d8, 1, 0, 0
	lfd %f31, 0x1d0(%r1)
	psq_l 30, 0x1c8, 1, 0, 0
	lfd %f30, 0x1c0(%r1)
	psq_l 29, 0x1b8, 1, 0, 0
	lfd %f29, 0x1b0(%r1)
	psq_l 28, 0x1a8, 1, 0, 0
	lfd %f28, 0x1a0(%r1)
	psq_l 27, 0x198, 1, 0, 0
	addi %r11, %r1, 0x190
	lfd %f27, 0x190(%r1)
	bl sub_197b0
	lwz %r0, 0x1e4(%r1)
	mtlr %r0
	addi %r1, %r1, 0x1e0
	blr

