	.text
	.include "macros.inc"
	.global sub_45180
sub_45180: # 0x8004c440
	stwu %r1, -0x20(%r1)
	mflr %r0
	lwz %r5, 0x0(%r3)
	lis %r3, 0x8027
	stw %r0, 0x24(%r1)
	subi %r3, %r3, 0x1c60
	addi %r0, %r5, 0x18
	stw %r31, 0x1c(%r1)
	mr %r31, %r4
	addi %r4, %r1, 0xc
	stw %r3, 0xc(%r1)
	addi %r3, %r1, 0x10
	stw %r0, 0x10(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _451d4
	stw %r3, 0x8(%r1)
	mr %r4, %r31
	addi %r3, %r1, 0x8
	bl sub_44cf0
	b _451d8
_451d4:
	li %r3, 0x0
_451d8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.space 4
	
	.global t1_451f0
t1_451f0:
	.incbin "basemain.dol", 0x47750, 0x10e0

	.global sub_462d0
sub_462d0: # 0x8004d590
	stwu %r1, -0x60(%r1)
	mflr %r0
	stw %r0, 0x64(%r1)
	addi %r11, %r1, 0x60
	bl sub_19780
	lis %r31, 0x8027
	mr %r29, %r3
	subi %r31, %r31, 0x1ca0
	addi %r4, %r1, 0x34
	addi %r0, %r31, 0x0
	stw %r0, 0x34(%r1)
	lwz %r5, 0x0(%r3)
	addi %r3, %r1, 0x30
	addi %r0, %r5, 0x18
	stw %r0, 0x30(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _46338
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _46330
	lwz %r27, 0x4(%r3)
	b _4633c
_46330:
	li %r27, 0x0
	b _4633c
_46338:
	li %r27, 0x0
_4633c:
	addi %r28, %r31, 0x0
	li %r30, 0x0
	b _463c0
_46348:
	stw %r28, 0x28(%r1)
	addi %r4, %r1, 0x28
	addi %r3, %r1, 0x2c
	lwz %r5, 0x0(%r29)
	addi %r0, %r5, 0x18
	stw %r0, 0x2c(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _463ac
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _463a4
	addi %r0, %r30, 0x1
	slwi  %r0, %r0, 4
	add %r4, %r3, %r0
	lwz %r0, 0x14(%r4)
	cmpwi %r0, 0x0
	beq- _4639c
	add %r0, %r3, %r0
	b _463b0
_4639c:
	li %r0, 0x0
	b _463b0
_463a4:
	li %r0, 0x0
	b _463b0
_463ac:
	li %r0, 0x0
_463b0:
	stw %r0, 0x40(%r1)
	addi %r3, %r1, 0x40
	bl sub_47ad0
	addi %r30, %r30, 0x1
_463c0:
	cmplw %r30, %r27
	blt+ _46348
	addi %r0, %r31, 0x40
	stw %r0, 0x24(%r1)
	addi %r4, %r1, 0x24
	addi %r3, %r1, 0x20
	lwz %r5, 0x0(%r29)
	addi %r0, %r5, 0x18
	stw %r0, 0x20(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _46410
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _46408
	lwz %r27, 0x4(%r3)
	b _46414
_46408:
	li %r27, 0x0
	b _46414
_46410:
	li %r27, 0x0
_46414:
	addi %r28, %r31, 0x40
	li %r30, 0x0
	b _46498
_46420:
	stw %r28, 0x18(%r1)
	addi %r4, %r1, 0x18
	addi %r3, %r1, 0x1c
	lwz %r5, 0x0(%r29)
	addi %r0, %r5, 0x18
	stw %r0, 0x1c(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _46484
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _4647c
	addi %r0, %r30, 0x1
	slwi  %r0, %r0, 4
	add %r4, %r3, %r0
	lwz %r0, 0x14(%r4)
	cmpwi %r0, 0x0
	beq- _46474
	add %r0, %r3, %r0
	b _46488
_46474:
	li %r0, 0x0
	b _46488
_4647c:
	li %r0, 0x0
	b _46488
_46484:
	li %r0, 0x0
_46488:
	stw %r0, 0x3c(%r1)
	addi %r3, %r1, 0x3c
	bl sub_4b780
	addi %r30, %r30, 0x1
_46498:
	cmplw %r30, %r27
	blt+ _46420
	addi %r0, %r31, 0x20
	stw %r0, 0x14(%r1)
	addi %r4, %r1, 0x14
	addi %r3, %r1, 0x10
	lwz %r5, 0x0(%r29)
	addi %r0, %r5, 0x18
	stw %r0, 0x10(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _464e8
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _464e0
	lwz %r27, 0x4(%r3)
	b _464ec
_464e0:
	li %r27, 0x0
	b _464ec
_464e8:
	li %r27, 0x0
_464ec:
	addi %r31, %r31, 0x20
	li %r30, 0x0
	b _46574
_464f8:
	stw %r31, 0x8(%r1)
	addi %r4, %r1, 0x8
	addi %r3, %r1, 0xc
	lwz %r5, 0x0(%r29)
	addi %r0, %r5, 0x18
	stw %r0, 0xc(%r1)
	bl sub_44d70
	cmpwi %r3, 0x0
	beq- _4655c
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r0, %r0, 31
	beq- _46554
	addi %r0, %r30, 0x1
	slwi  %r0, %r0, 4
	add %r4, %r3, %r0
	lwz %r0, 0x14(%r4)
	cmpwi %r0, 0x0
	beq- _4654c
	add %r0, %r3, %r0
	b _46560
_4654c:
	li %r0, 0x0
	b _46560
_46554:
	li %r0, 0x0
	b _46560
_4655c:
	li %r0, 0x0
_46560:
	stw %r0, 0x38(%r1)
	addi %r3, %r1, 0x38
	li %r4, 0x0
	bl sub_4b580
	addi %r30, %r30, 0x1
_46574:
	cmplw %r30, %r27
	blt+ _464f8
	addi %r11, %r1, 0x60
	bl sub_197cc
	lwz %r0, 0x64(%r1)
	mtlr %r0
	addi %r1, %r1, 0x60
	blr
	
	.space 12
	
	.global t1_465a0
t1_465a0:
	.incbin "basemain.dol", 0x48b00, 0xb90

	.global sub_47130
sub_47130: # 0x8004e3f0
	lwz %r3, 0x0(%r3)
	lwz %r0, 0x18(%r3)
	cmpwi %r0, 0x0
	beq- _47148
	add %r0, %r3, %r0
	b _4714c
_47148:
	li %r0, 0x0
_4714c:
	cmpwi %r0, 0x0
	beq- _4717c
	addi %r3, %r4, 0x1
	slwi  %r3, %r3, 4
	add %r3, %r0, %r3
	lwz %r3, 0x14(%r3)
	cmpwi %r3, 0x0
	beq- _47174
	add %r3, %r0, %r3
	blr
_47174:
	li %r3, 0x0
	blr
_4717c:
	li %r3, 0x0
	blr
	
	.space 12
	
	.global t1_47190
t1_47190:
	.incbin "basemain.dol", 0x496f0, 0xf0

	.global sub_47280
sub_47280: # 0x8004e540
	lwz %r3, 0x0(%r3)
	lwz %r0, 0x1c(%r3)
	cmpwi %r0, 0x0
	beq- _47298
	add %r0, %r3, %r0
	b _4729c
_47298:
	li %r0, 0x0
_4729c:
	cmpwi %r0, 0x0
	beq- _472cc
	addi %r3, %r4, 0x1
	slwi  %r3, %r3, 4
	add %r3, %r0, %r3
	lwz %r3, 0x14(%r3)
	cmpwi %r3, 0x0
	beq- _472c4
	add %r3, %r0, %r3
	blr
_472c4:
	li %r3, 0x0
	blr
_472cc:
	li %r3, 0x0
	blr
	
	.space 12
	
	.global t1_472e0
t1_472e0:
	.incbin "basemain.dol", 0x49840, 0xf0

	.global sub_473d0
sub_473d0: # 0x8004e690
	lwz %r3, 0x0(%r3)
	lwz %r0, 0x20(%r3)
	cmpwi %r0, 0x0
	beq- _473e8
	add %r0, %r3, %r0
	b _473ec
_473e8:
	li %r0, 0x0
_473ec:
	cmpwi %r0, 0x0
	beq- _4741c
	addi %r3, %r4, 0x1
	slwi  %r3, %r3, 4
	add %r3, %r0, %r3
	lwz %r3, 0x14(%r3)
	cmpwi %r3, 0x0
	beq- _47414
	add %r3, %r0, %r3
	blr
_47414:
	li %r3, 0x0
	blr
_4741c:
	li %r3, 0x0
	blr
	
	.space 12
	
	.global t1_47430
t1_47430:
	.incbin "basemain.dol", 0x49990, 0xa0

	.global sub_474d0
sub_474d0: # 0x8004e790
	lwz %r3, 0x0(%r3)
	lwz %r0, 0x24(%r3)
	cmpwi %r0, 0x0
	beq- _474e8
	add %r0, %r3, %r0
	b _474ec
_474e8:
	li %r0, 0x0
_474ec:
	cmpwi %r0, 0x0
	beq- _4751c
	addi %r3, %r4, 0x1
	slwi  %r3, %r3, 4
	add %r3, %r0, %r3
	lwz %r3, 0x14(%r3)
	cmpwi %r3, 0x0
	beq- _47514
	add %r3, %r0, %r3
	blr
_47514:
	li %r3, 0x0
	blr
_4751c:
	li %r3, 0x0
	blr
	
	.space 12
	
	.global t1_47530
t1_47530:
	.incbin "basemain.dol", 0x49a90, 0x5a0

	.global sub_47ad0
sub_47ad0: # 0x8004ed90
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stw %r31, 0x3c(%r1)
	mr %r31, %r3
	stw %r30, 0x38(%r1)
	stw %r29, 0x34(%r1)
	stw %r28, 0x30(%r1)
	lwz %r4, 0x0(%r3)
	lwz %r0, 0x30(%r4)
	cmpwi %r0, 0x0
	beq- _47b08
	add %r3, %r4, %r0
	b _47b0c
_47b08:
	li %r3, 0x0
_47b0c:
	cmpwi %r3, 0x0
	beq- _47b1c
	lwz %r29, 0x4(%r3)
	b _47b20
_47b1c:
	li %r29, 0x0
_47b20:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47b98
	b _47b90
_47b34:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x30(%r3)
	cmpwi %r0, 0x0
	beq- _47b4c
	add %r0, %r3, %r0
	b _47b50
_47b4c:
	li %r0, 0x0
_47b50:
	cmpwi %r0, 0x0
	beq- _47b78
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47b70
	add %r0, %r0, %r3
	b _47b7c
_47b70:
	li %r0, 0x0
	b _47b7c
_47b78:
	li %r0, 0x0
_47b7c:
	stw %r0, 0x24(%r1)
	addi %r3, %r1, 0x24
	bl sub_4ae30
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47b90:
	cmplw %r28, %r29
	blt+ _47b34
_47b98:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x38(%r3)
	cmpwi %r0, 0x0
	beq- _47bb0
	add %r3, %r3, %r0
	b _47bb4
_47bb0:
	li %r3, 0x0
_47bb4:
	cmpwi %r3, 0x0
	beq- _47bc4
	lwz %r29, 0x4(%r3)
	b _47bc8
_47bc4:
	li %r29, 0x0
_47bc8:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47c40
	b _47c38
_47bdc:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x38(%r3)
	cmpwi %r0, 0x0
	beq- _47bf4
	add %r0, %r3, %r0
	b _47bf8
_47bf4:
	li %r0, 0x0
_47bf8:
	cmpwi %r0, 0x0
	beq- _47c20
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47c18
	add %r0, %r0, %r3
	b _47c24
_47c18:
	li %r0, 0x0
	b _47c24
_47c20:
	li %r0, 0x0
_47c24:
	stw %r0, 0x20(%r1)
	addi %r3, %r1, 0x20
	bl sub_481f0
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47c38:
	cmplw %r28, %r29
	blt+ _47bdc
_47c40:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x18(%r3)
	cmpwi %r0, 0x0
	beq- _47c58
	add %r3, %r3, %r0
	b _47c5c
_47c58:
	li %r3, 0x0
_47c5c:
	cmpwi %r3, 0x0
	beq- _47c6c
	lwz %r29, 0x4(%r3)
	b _47c70
_47c6c:
	li %r29, 0x0
_47c70:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47cec
	b _47ce4
_47c84:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x18(%r3)
	cmpwi %r0, 0x0
	beq- _47c9c
	add %r0, %r3, %r0
	b _47ca0
_47c9c:
	li %r0, 0x0
_47ca0:
	cmpwi %r0, 0x0
	beq- _47cc8
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47cc0
	add %r0, %r0, %r3
	b _47ccc
_47cc0:
	li %r0, 0x0
	b _47ccc
_47cc8:
	li %r0, 0x0
_47ccc:
	stw %r0, 0x1c(%r1)
	addi %r3, %r1, 0x1c
	li %r4, 0x0
	bl sub_4b4c0
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47ce4:
	cmplw %r28, %r29
	blt+ _47c84
_47cec:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x1c(%r3)
	cmpwi %r0, 0x0
	beq- _47d04
	add %r3, %r3, %r0
	b _47d08
_47d04:
	li %r3, 0x0
_47d08:
	cmpwi %r3, 0x0
	beq- _47d18
	lwz %r29, 0x4(%r3)
	b _47d1c
_47d18:
	li %r29, 0x0
_47d1c:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47d98
	b _47d90
_47d30:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x1c(%r3)
	cmpwi %r0, 0x0
	beq- _47d48
	add %r0, %r3, %r0
	b _47d4c
_47d48:
	li %r0, 0x0
_47d4c:
	cmpwi %r0, 0x0
	beq- _47d74
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47d6c
	add %r0, %r0, %r3
	b _47d78
_47d6c:
	li %r0, 0x0
	b _47d78
_47d74:
	li %r0, 0x0
_47d78:
	stw %r0, 0x18(%r1)
	addi %r3, %r1, 0x18
	li %r4, 0x0
	bl sub_4b4e0
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47d90:
	cmplw %r28, %r29
	blt+ _47d30
_47d98:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x20(%r3)
	cmpwi %r0, 0x0
	beq- _47db0
	add %r3, %r3, %r0
	b _47db4
_47db0:
	li %r3, 0x0
_47db4:
	cmpwi %r3, 0x0
	beq- _47dc4
	lwz %r29, 0x4(%r3)
	b _47dc8
_47dc4:
	li %r29, 0x0
_47dc8:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47e44
	b _47e3c
_47ddc:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x20(%r3)
	cmpwi %r0, 0x0
	beq- _47df4
	add %r0, %r3, %r0
	b _47df8
_47df4:
	li %r0, 0x0
_47df8:
	cmpwi %r0, 0x0
	beq- _47e20
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47e18
	add %r0, %r0, %r3
	b _47e24
_47e18:
	li %r0, 0x0
	b _47e24
_47e20:
	li %r0, 0x0
_47e24:
	stw %r0, 0x14(%r1)
	addi %r3, %r1, 0x14
	li %r4, 0x0
	bl sub_4b500
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47e3c:
	cmplw %r28, %r29
	blt+ _47ddc
_47e44:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x24(%r3)
	cmpwi %r0, 0x0
	beq- _47e5c
	add %r3, %r3, %r0
	b _47e60
_47e5c:
	li %r3, 0x0
_47e60:
	cmpwi %r3, 0x0
	beq- _47e70
	lwz %r29, 0x4(%r3)
	b _47e74
_47e70:
	li %r29, 0x0
_47e74:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47ef0
	b _47ee8
_47e88:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x24(%r3)
	cmpwi %r0, 0x0
	beq- _47ea0
	add %r0, %r3, %r0
	b _47ea4
_47ea0:
	li %r0, 0x0
_47ea4:
	cmpwi %r0, 0x0
	beq- _47ecc
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47ec4
	add %r0, %r0, %r3
	b _47ed0
_47ec4:
	li %r0, 0x0
	b _47ed0
_47ecc:
	li %r0, 0x0
_47ed0:
	stw %r0, 0x10(%r1)
	addi %r3, %r1, 0x10
	li %r4, 0x0
	bl sub_4b520
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47ee8:
	cmplw %r28, %r29
	blt+ _47e88
_47ef0:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x28(%r3)
	cmpwi %r0, 0x0
	beq- _47f08
	add %r3, %r3, %r0
	b _47f0c
_47f08:
	li %r3, 0x0
_47f0c:
	cmpwi %r3, 0x0
	beq- _47f1c
	lwz %r29, 0x4(%r3)
	b _47f20
_47f1c:
	li %r29, 0x0
_47f20:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _47f9c
	b _47f94
_47f34:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x28(%r3)
	cmpwi %r0, 0x0
	beq- _47f4c
	add %r0, %r3, %r0
	b _47f50
_47f4c:
	li %r0, 0x0
_47f50:
	cmpwi %r0, 0x0
	beq- _47f78
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _47f70
	add %r0, %r0, %r3
	b _47f7c
_47f70:
	li %r0, 0x0
	b _47f7c
_47f78:
	li %r0, 0x0
_47f7c:
	stw %r0, 0xc(%r1)
	addi %r3, %r1, 0xc
	li %r4, 0x0
	bl sub_4b540
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_47f94:
	cmplw %r28, %r29
	blt+ _47f34
_47f9c:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x2c(%r3)
	cmpwi %r0, 0x0
	beq- _47fb4
	add %r3, %r3, %r0
	b _47fb8
_47fb4:
	li %r3, 0x0
_47fb8:
	cmpwi %r3, 0x0
	beq- _47fc8
	lwz %r29, 0x4(%r3)
	b _47fcc
_47fc8:
	li %r29, 0x0
_47fcc:
	cmpwi %r29, 0x0
	li %r28, 0x0
	li %r30, 0x0
	beq- _48048
	b _48040
_47fe0:
	lwz %r3, 0x0(%r31)
	lwz %r0, 0x2c(%r3)
	cmpwi %r0, 0x0
	beq- _47ff8
	add %r0, %r3, %r0
	b _47ffc
_47ff8:
	li %r0, 0x0
_47ffc:
	cmpwi %r0, 0x0
	beq- _48024
	add %r3, %r0, %r30
	lwz %r3, 0x24(%r3)
	cmpwi %r3, 0x0
	beq- _4801c
	add %r0, %r0, %r3
	b _48028
_4801c:
	li %r0, 0x0
	b _48028
_48024:
	li %r0, 0x0
_48028:
	stw %r0, 0x8(%r1)
	addi %r3, %r1, 0x8
	li %r4, 0x0
	bl sub_4b560
	addi %r28, %r28, 0x1
	addi %r30, %r30, 0x10
_48040:
	cmplw %r28, %r29
	blt+ _47fe0
_48048:
	lwz %r0, 0x44(%r1)
	lwz %r31, 0x3c(%r1)
	lwz %r30, 0x38(%r1)
	lwz %r29, 0x34(%r1)
	lwz %r28, 0x30(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	
	.space 8
	
	.global t1_48070
t1_48070:
	.incbin "basemain.dol", 0x4a5d0, 0x180

	.global sub_481f0
sub_481f0: # 0x8004f4b0
	stwu %r1, -0x50(%r1)
	mflr %r0
	stw %r0, 0x54(%r1)
	addi %r11, %r1, 0x50
	bl sub_1977c
	lwz %r4, 0x0(%r3)
	mr %r29, %r3
	lwz %r0, 0x4(%r4)
	cmpwi %r0, 0x0
	beq- _48220
	add %r0, %r4, %r0
	b _48224
_48220:
	li %r0, 0x0
_48224:
	stw %r0, 0x18(%r1)
	addi %r3, %r1, 0x18
	lha %r4, 0x48(%r4)
	bl sub_47130
	stw %r3, 0x1c(%r1)
	addi %r3, %r1, 0x1c
	addi %r4, %r1, 0x2c
	addi %r5, %r1, 0x8
	bl sub_4b1a0
	lwz %r3, 0x0(%r29)
	lbz %r28, 0x8(%r1)
	addi %r3, %r3, 0x18
	lwz %r4, 0x2c(%r1)
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	beq- _4826c
	add %r3, %r3, %r0
	b _48270
_4826c:
	li %r3, 0x0
_48270:
	addi %r30, %r3, 0x32
	addis %r5, %r4, 0x8000
	mr %r3, %r30
	li %r4, 0xa0
	bl sub_44a60
	mr %r5, %r28
	addi %r3, %r30, 0x6
	li %r4, 0xb0
	bl sub_44a60
	lwz %r4, 0x0(%r29)
	lha %r0, 0x4a(%r4)
	cmpwi %r0, -0x1
	beq- _482d0
	lwz %r0, 0x4(%r4)
	cmpwi %r0, 0x0
	beq- _482b8
	add %r0, %r4, %r0
	b _482bc
_482b8:
	li %r0, 0x0
_482bc:
	stw %r0, 0x14(%r1)
	addi %r3, %r1, 0x14
	lha %r4, 0x4a(%r4)
	bl sub_47280
	b _482d4
_482d0:
	li %r3, 0x0
_482d4:
	cmpwi %r3, 0x0
	stw %r3, 0x28(%r1)
	beq- _4833c
	addi %r3, %r1, 0x28
	addi %r4, %r1, 0x2c
	addi %r5, %r1, 0x8
	bl sub_4b280
	lwz %r3, 0x0(%r29)
	lbz %r28, 0x8(%r1)
	addi %r3, %r3, 0x18
	lwz %r4, 0x2c(%r1)
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	beq- _48314
	add %r3, %r3, %r0
	b _48318
_48314:
	li %r3, 0x0
_48318:
	addi %r30, %r3, 0x3e
	addis %r5, %r4, 0x8000
	mr %r3, %r30
	li %r4, 0xa1
	bl sub_44a60
	mr %r5, %r28
	addi %r3, %r30, 0x6
	li %r4, 0xb1
	bl sub_44a60
_4833c:
	li %r30, 0x0
	li %r31, 0x0
_48344:
	lwz %r3, 0x0(%r29)
	add %r4, %r3, %r31
	lha %r0, 0x4c(%r4)
	cmpwi %r0, -0x1
	beq- _48384
	lwz %r0, 0x4(%r3)
	cmpwi %r0, 0x0
	beq- _4836c
	add %r0, %r3, %r0
	b _48370
_4836c:
	li %r0, 0x0
_48370:
	stw %r0, 0x10(%r1)
	addi %r3, %r1, 0x10
	lha %r4, 0x4c(%r4)
	bl sub_473d0
	b _48388
_48384:
	li %r3, 0x0
_48388:
	cmpwi %r3, 0x0
	stw %r3, 0x24(%r1)
	beq- _48418
	addi %r3, %r1, 0x24
	addi %r4, %r1, 0x2c
	addi %r5, %r1, 0x8
	bl sub_4b360
	lwz %r3, 0x0(%r29)
	lbz %r27, 0x8(%r1)
	addi %r3, %r3, 0x18
	lwz %r5, 0x2c(%r1)
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	beq- _483c8
	add %r4, %r3, %r0
	b _483cc
_483c8:
	li %r4, 0x0
_483cc:
	addi %r6, %r30, 0x2
	addi %r0, %r30, 0xb
	mulli %r3, %r6, 0xc
	li %r28, 0x1
	cmpwi %r0, 0x19
	add %r3, %r4, %r3
	addi %r26, %r3, 0x32
	beq- _483f0
	mr %r28, %r6
_483f0:
	addi %r0, %r28, 0xa0
	mr %r3, %r26
	clrlwi  %r4, %r0, 24
	addis %r5, %r5, 0x8000
	bl sub_44a60
	addi %r0, %r28, 0xb0
	mr %r5, %r27
	addi %r3, %r26, 0x6
	clrlwi  %r4, %r0, 24
	bl sub_44a60
_48418:
	addi %r30, %r30, 0x1
	addi %r31, %r31, 0x2
	cmplwi %r30, 0x2
	blt+ _48344
	li %r30, 0x0
	li %r31, 0x0
_48430:
	lwz %r3, 0x0(%r29)
	add %r4, %r3, %r31
	lha %r0, 0x50(%r4)
	cmpwi %r0, -0x1
	beq- _48470
	lwz %r0, 0x4(%r3)
	cmpwi %r0, 0x0
	beq- _48458
	add %r0, %r3, %r0
	b _4845c
_48458:
	li %r0, 0x0
_4845c:
	stw %r0, 0xc(%r1)
	addi %r3, %r1, 0xc
	lha %r4, 0x50(%r4)
	bl sub_474d0
	b _48474
_48470:
	li %r3, 0x0
_48474:
	cmpwi %r3, 0x0
	stw %r3, 0x20(%r1)
	beq- _48504
	addi %r3, %r1, 0x20
	addi %r4, %r1, 0x2c
	addi %r5, %r1, 0x8
	bl sub_4b400
	lwz %r3, 0x0(%r29)
	lbz %r26, 0x8(%r1)
	addi %r3, %r3, 0x18
	lwz %r5, 0x2c(%r1)
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	beq- _484b4
	add %r4, %r3, %r0
	b _484b8
_484b4:
	li %r4, 0x0
_484b8:
	addi %r6, %r30, 0x4
	addi %r0, %r30, 0xd
	mulli %r3, %r6, 0xc
	li %r28, 0x1
	cmpwi %r0, 0x19
	add %r3, %r4, %r3
	addi %r27, %r3, 0x32
	beq- _484dc
	mr %r28, %r6
_484dc:
	addi %r0, %r28, 0xa0
	mr %r3, %r27
	clrlwi  %r4, %r0, 24
	addis %r5, %r5, 0x8000
	bl sub_44a60
	addi %r0, %r28, 0xb0
	mr %r5, %r26
	addi %r3, %r27, 0x6
	clrlwi  %r4, %r0, 24
	bl sub_44a60
_48504:
	addi %r30, %r30, 0x1
	addi %r31, %r31, 0x2
	cmplwi %r30, 0x8
	blt+ _48430
	lwz %r3, 0x0(%r29)
	addi %r3, %r3, 0x18
	lwz %r0, 0x8(%r3)
	cmpwi %r0, 0x0
	beq- _48530
	add %r3, %r3, %r0
	b _48534
_48530:
	li %r3, 0x0
_48534:
	li %r4, 0xe0
	bl _19a358
	lwz %r4, 0x0(%r29)
	lwz %r0, 0x2c(%r4)
	addi %r3, %r4, 0x24
	cmpwi %r0, 0x0
	beq- _48558
	add %r3, %r3, %r0
	b _4855c
_48558:
	li %r3, 0x0
_4855c:
	lwz %r4, 0x24(%r4)
	bl _19a358
	addi %r11, %r1, 0x50
	bl sub_197c8
	lwz %r0, 0x54(%r1)
	mtlr %r0
	addi %r1, %r1, 0x50
	blr
	
	.space 4
	
	.global t1_48580
t1_48580:
	.incbin "basemain.dol", 0x4aae0, 0x28b0

	.global sub_4ae30
sub_4ae30: # 0x800520f0
	lwz %r3, 0x0(%r3)
	lwz %r0, 0x3c(%r3)
	cmpwi %r0, 0x0
	beq- _4ae48
	add %r3, %r3, %r0
	b _4ae4c
_4ae48:
	li %r3, 0x0
_4ae4c:
	li %r4, 0x180
	b _19a358
	
	.space 12
	
	.global t1_4ae60
t1_4ae60:
	.incbin "basemain.dol", 0x4d3c0, 0x340

	.global sub_4b1a0
sub_4b1a0: # 0x80052460
	cmpwi %r4, 0x0
	beq- _4b1c8
	lwz %r6, 0x0(%r3)
	lwz %r0, 0x8(%r6)
	cmpwi %r0, 0x0
	beq- _4b1c0
	add %r0, %r6, %r0
	b _4b1c4
_4b1c0:
	li %r0, 0x0
_4b1c4:
	stw %r0, 0x0(%r4)
_4b1c8:
	cmpwi %r5, 0x0
	beqlr- 
	lwz %r3, 0x0(%r3)
	lbz %r0, 0x1d(%r3)
	stb %r0, 0x0(%r5)
	blr
	
	.global t1_4b1e0
t1_4b1e0:
	.incbin "basemain.dol", 0x4d740, 0xa0

	.global sub_4b280
sub_4b280: # 0x80052540
	cmpwi %r4, 0x0
	beq- _4b2a8
	lwz %r6, 0x0(%r3)
	lwz %r0, 0x8(%r6)
	cmpwi %r0, 0x0
	beq- _4b2a0
	add %r0, %r6, %r0
	b _4b2a4
_4b2a0:
	li %r0, 0x0
_4b2a4:
	stw %r0, 0x0(%r4)
_4b2a8:
	cmpwi %r5, 0x0
	beqlr- 
	lwz %r3, 0x0(%r3)
	lbz %r0, 0x1d(%r3)
	stb %r0, 0x0(%r5)
	blr
	
	.global t1_4b2c0
t1_4b2c0:
	.incbin "basemain.dol", 0x4d820, 0xa0

	.global sub_4b360
sub_4b360: # 0x80052620
	cmpwi %r4, 0x0
	beq- _4b388
	lwz %r6, 0x0(%r3)
	lwz %r0, 0x8(%r6)
	cmpwi %r0, 0x0
	beq- _4b380
	add %r0, %r6, %r0
	b _4b384
_4b380:
	li %r0, 0x0
_4b384:
	stw %r0, 0x0(%r4)
_4b388:
	cmpwi %r5, 0x0
	beqlr- 
	lwz %r3, 0x0(%r3)
	lbz %r0, 0x1c(%r3)
	stb %r0, 0x0(%r5)
	blr
	
	.global t1_4b3a0
t1_4b3a0:
	.incbin "basemain.dol", 0x4d900, 0x60

	.global sub_4b400
sub_4b400: # 0x800526c0
	cmpwi %r4, 0x0
	beq- _4b428
	lwz %r6, 0x0(%r3)
	lwz %r0, 0x8(%r6)
	cmpwi %r0, 0x0
	beq- _4b420
	add %r0, %r6, %r0
	b _4b424
_4b420:
	li %r0, 0x0
_4b424:
	stw %r0, 0x0(%r4)
_4b428:
	cmpwi %r5, 0x0
	beqlr- 
	lwz %r3, 0x0(%r3)
	lbz %r0, 0x1d(%r3)
	stb %r0, 0x0(%r5)
	blr
	
	.global t1_4b440
t1_4b440:
	.incbin "basemain.dol", 0x4d9a0, 0x80

	.global sub_4b4c0
sub_4b4c0: # 0x80052780
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b4d4
	b sub_19a2fc
_4b4d4:
	b _19a358
	
	.space 8

	.global sub_4b4e0
sub_4b4e0: # 0x800527a0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b4f4
	b sub_19a2fc
_4b4f4:
	b _19a358
	
	.space 8

	.global sub_4b500
sub_4b500: # 0x800527c0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b514
	b sub_19a2fc
_4b514:
	b _19a358
	
	.space 8

	.global sub_4b520
sub_4b520: # 0x800527e0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b534
	b sub_19a2fc
_4b534:
	b _19a358
	
	.space 8

	.global sub_4b540
sub_4b540: # 0x80052800
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b554
	b sub_19a2fc
_4b554:
	b _19a358

	.space 8

	.global sub_4b560
sub_4b560: # 0x80052820
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b574
	b sub_19a2fc
_4b574:
	b _19a358

	.space 8

	.global sub_4b580
sub_4b580: # 0x80052840
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x4(%r3)
	beq- _4b594
	b sub_19a2fc
_4b594:
	b _19a358
	
	.space 8

	.global t1_4b5a0
t1_4b5a0:
	.incbin "basemain.dol", 0x4db00, 0x30

	.global sub_4b5d0
sub_4b5d0: # 0x80052890
	lwz %r11, 0x0(%r3)
	lwz %r0, 0x18(%r11)
	clrlwi. %r0, %r0, 31
	beq- _4b5e8
	li %r3, 0x0
	blr
_4b5e8:
	cmpwi %r4, 0x0
	beq- _4b60c
	lwz %r0, 0x10(%r11)
	cmpwi %r0, 0x0
	beq- _4b604
	add %r0, %r11, %r0
	b _4b608
_4b604:
	li %r0, 0x0
_4b608:
	stw %r0, 0x0(%r4)
_4b60c:
	cmpwi %r5, 0x0
	beq- _4b620
	lwz %r4, 0x0(%r3)
	lhz %r0, 0x1c(%r4)
	sth %r0, 0x0(%r5)
_4b620:
	cmpwi %r6, 0x0
	beq- _4b634
	lwz %r3, 0x0(%r3)
	lhz %r0, 0x1e(%r3)
	sth %r0, 0x0(%r6)
_4b634:
	cmpwi %r7, 0x0
	beq- _4b644
	lwz %r0, 0x20(%r11)
	stw %r0, 0x0(%r7)
_4b644:
	cmpwi %r8, 0x0
	beq- _4b654
	lfs %f0, 0x28(%r11)
	stfs %f0, 0x0(%r8)
_4b654:
	cmpwi %r9, 0x0
	beq- _4b664
	lfs %f0, 0x2c(%r11)
	stfs %f0, 0x0(%r9)
_4b664:
	cmpwi %r10, 0x0
	beq- _4b684
	lwz %r3, 0x24(%r11)
	xori %r0, %r3, 0x1
	cntlzw %r0, %r0
	slw %r0, %r3, %r0
	srwi  %r0, %r0, 31
	stb %r0, 0x0(%r10)
_4b684:
	li %r3, 0x1
	blr
	
	.space 4

	.global t1_4b690
t1_4b690:
	.incbin "basemain.dol", 0x4dbf0, 0xf0

	.global sub_4b780
sub_4b780: # 0x80052a40
	lwz %r3, 0x0(%r3)
	lwz %r4, 0x4(%r3)
	b _19a32c
	
	.space 4

	.global t1_4b790
t1_4b790:
	.incbin "basemain.dol", 0x4dcf0, 0x29840

	.global sub_74fd0
sub_74fd0: # 0x8007c290
	stwu %r1, -0x20(%r1)
	li %r0, 0x0
	lwz %r6, 0x4(%r4)
	lwz %r5, 0x8(%r4)
	lwz %r4, 0xc(%r4)
	stw %r6, 0x8(%r1)
	stw %r5, 0xc(%r1)
	stw %r4, 0x10(%r1)
	stw %r0, 0x0(%r3)
	stw %r6, 0x4(%r3)
	stw %r5, 0x8(%r3)
	stw %r4, 0xc(%r3)
	addi %r1, %r1, 0x20
	blr
	
	.space 8

	.global t1_75010
t1_75010:
	.incbin "basemain.dol", 0x77570, 0x32c10

	.global sub_a7c20
sub_a7c20: # 0x800aeee0
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	bne- _a7c58
	lhz %r5, 0xa(%r3)
	li %r0, 0x0
	add %r5, %r4, %r5
	stw %r0, 0x4(%r5)
	stw %r0, 0x0(%r5)
	lhz %r5, 0x8(%r3)
	stw %r4, 0x0(%r3)
	addi %r0, %r5, 0x1
	stw %r4, 0x4(%r3)
	sth %r0, 0x8(%r3)
	blr
_a7c58:
	lhz %r6, 0xa(%r3)
	li %r0, 0x0
	lwz %r5, 0x4(%r3)
	stwux %r5, %r6, %r4
	stw %r0, 0x4(%r6)
	lwz %r5, 0x4(%r3)
	lhz %r0, 0xa(%r3)
	add %r5, %r5, %r0
	stw %r4, 0x4(%r5)
	lhz %r5, 0x8(%r3)
	stw %r4, 0x4(%r3)
	addi %r0, %r5, 0x1
	sth %r0, 0x8(%r3)
	blr

	.global t1_a7c90
t1_a7c90:
	.incbin "basemain.dol", 0xaa1f0, 0x120
	
	.global sub_a7db0
sub_a7db0: # 0x800af070
	lhz %r0, 0xa(%r3)
	add %r6, %r4, %r0
	lwzx %r4, %r4, %r0
	cmpwi %r4, 0x0
	bne- _a7dd0
	lwz %r0, 0x4(%r6)
	stw %r0, 0x0(%r3)
	b _a7ddc
_a7dd0:
	add %r4, %r4, %r0
	lwz %r0, 0x4(%r6)
	stw %r0, 0x4(%r4)
_a7ddc:
	lwz %r5, 0x4(%r6)
	cmpwi %r5, 0x0
	bne- _a7df4
	lwz %r0, 0x0(%r6)
	stw %r0, 0x4(%r3)
	b _a7e00
_a7df4:
	lhz %r0, 0xa(%r3)
	lwz %r4, 0x0(%r6)
	stwx %r4, %r5, %r0
_a7e00:
	li %r0, 0x0
	stw %r0, 0x0(%r6)
	stw %r0, 0x4(%r6)
	lhz %r4, 0x8(%r3)
	subi %r0, %r4, 0x1
	sth %r0, 0x8(%r3)
	blr

	.space 4

	.global sub_a7e20
sub_a7e20: # 0x800af0e0
	cmpwi %r4, 0x0
	bne- _a7e30
	lwz %r3, 0x0(%r3)
	blr
_a7e30:
	lhz %r0, 0xa(%r3)
	add %r3, %r4, %r0
	lwz %r3, 0x4(%r3)
	blr

	.global t1_a7e40
t1_a7e40:
	.incbin "basemain.dol", 0xaa3a0, 0x3990

	.global sub_ab7d0
sub_ab7d0: # 0x800b2a90
	stwu %r1, -0x30(%r1)
	li %r6, -0x1
	lis %r5, 0x802f
	lfs %f0, -0x6cc0(%r2)
	stw %r31, 0x2c(%r1)
	li %r0, 0xff
	subi %r4, %r5, 0x3060
	stw %r30, 0x28(%r1)
	stw %r29, 0x24(%r1)
	li %r29, 0x0
	stw %r28, 0x20(%r1)
	addi %r28, %r3, 0x18
	stw %r6, 0x0(%r3)
	stw %r29, 0x8(%r1)
	stw %r6, 0xc(%r1)
	lbz %r30, 0x8(%r1)
	stw %r6, 0x4(%r3)
	lbz %r31, 0x9(%r1)
	stw %r6, 0x8(%r3)
	lbz %r12, 0xa(%r1)
	stw %r6, 0xc(%r3)
	lbz %r11, 0xb(%r1)
	stw %r6, 0x10(%r3)
	lbz %r10, 0xc(%r1)
	stw %r6, 0x14(%r3)
	lbz %r9, 0xd(%r1)
	stw %r6, 0x18(%r3)
	lbz %r8, 0xe(%r1)
	stw %r6, 0x1c(%r3)
	lbz %r7, 0xf(%r1)
	stb %r0, 0x42(%r3)
	stb %r29, 0x43(%r3)
	stfs %f0, 0x44(%r3)
	stw %r29, 0x48(%r3)
	stw %r0, -0x3060(%r5)
	stw %r29, 0x4(%r4)
	lbz %r6, 0x18(%r3)
	lbz %r5, 0x19(%r3)
	lbz %r4, 0x1a(%r3)
	lbz %r0, 0x1b(%r3)
	stb %r30, 0x0(%r3)
	stb %r31, 0x1(%r3)
	stb %r12, 0x2(%r3)
	stb %r11, 0x3(%r3)
	stb %r10, 0x4(%r3)
	stb %r9, 0x5(%r3)
	stb %r8, 0x6(%r3)
	stb %r7, 0x7(%r3)
	stw %r29, 0x20(%r3)
	stb %r6, 0x8(%r3)
	stb %r5, 0x9(%r3)
	stb %r4, 0xa(%r3)
	stb %r0, 0xb(%r3)
	lbz %r0, 0x0(%r28)
	stb %r0, 0xc(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r28)
	stb %r4, 0xd(%r3)
	cmpwi %r0, 0x2
	lbz %r0, 0x2(%r28)
	stb %r0, 0xe(%r3)
	lbz %r0, 0x3(%r28)
	stb %r0, 0xf(%r3)
	beq- _ab8d8
	addi %r5, %r3, 0x18
	b _ab8dc
_ab8d8:
	addi %r5, %r3, 0x1c
_ab8dc:
	lbz %r0, 0x0(%r5)
	stb %r0, 0x10(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0x11(%r3)
	cmpwi %r0, 0x0
	lbz %r0, 0x2(%r5)
	stb %r0, 0x12(%r3)
	lbz %r0, 0x3(%r5)
	stb %r0, 0x13(%r3)
	bne- _ab910
	addi %r6, %r3, 0x18
	b _ab914
_ab910:
	addi %r6, %r3, 0x1c
_ab914:
	lbz %r0, 0x0(%r6)
	lis %r5, 0x8081
	stb %r0, 0x14(%r3)
	subi %r12, %r5, 0x7f7f
	lwz %r0, 0x20(%r3)
	li %r4, -0x1
	lbz %r5, 0x1(%r6)
	stb %r5, 0x15(%r3)
	cmpwi %r0, 0x1
	lbz %r5, 0xb(%r3)
	lbz %r0, 0x2(%r6)
	stb %r0, 0x16(%r3)
	lbz %r11, 0x42(%r3)
	lbz %r0, 0xf(%r3)
	stw %r4, 0x10(%r1)
	mullw %r10, %r5, %r11
	lbz %r31, 0x3(%r6)
	lbz %r5, 0x11(%r1)
	lbz %r4, 0x12(%r1)
	lbz %r7, 0x13(%r3)
	mullw %r9, %r0, %r11
	stb %r5, 0x19(%r3)
	lbz %r6, 0x10(%r1)
	stb %r5, 0x9(%r3)
	lbz %r0, 0x13(%r1)
	mulhw %r5, %r12, %r10
	stb %r4, 0x1a(%r3)
	stb %r4, 0xa(%r3)
	mullw %r8, %r7, %r11
	stb %r6, 0x18(%r3)
	add %r5, %r5, %r10
	stb %r6, 0x8(%r3)
	srawi %r5, %r5, 7
	stb %r0, 0x1b(%r3)
	mulhw %r4, %r12, %r9
	stb %r0, 0xb(%r3)
	mulhw %r5, %r12, %r8
	add %r4, %r4, %r9
	srawi %r6, %r4, 7
	add %r5, %r5, %r8
	srwi  %r8, %r6, 31
	mullw %r7, %r31, %r11
	add %r8, %r6, %r8
	stb %r8, 0xf(%r3)
	srawi %r5, %r5, 7
	srwi  %r6, %r5, 31
	mulhw %r4, %r12, %r7
	add %r5, %r5, %r6
	stb %r5, 0x13(%r3)
	add %r0, %r4, %r7
	srawi %r0, %r0, 7
	srwi  %r4, %r0, 31
	add %r0, %r0, %r4
	stb %r0, 0x17(%r3)
	beq- _ab9f8
	addi %r5, %r3, 0x18
	b _ab9fc
_ab9f8:
	addi %r5, %r3, 0x1c
_ab9fc:
	lbz %r0, 0x0(%r5)
	stb %r0, 0xc(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0xd(%r3)
	cmpwi %r0, 0x2
	lbz %r0, 0x2(%r5)
	stb %r0, 0xe(%r3)
	lbz %r0, 0x3(%r5)
	stb %r0, 0xf(%r3)
	beq- _aba30
	addi %r5, %r3, 0x18
	b _aba34
_aba30:
	addi %r5, %r3, 0x1c
_aba34:
	lbz %r0, 0x0(%r5)
	stb %r0, 0x10(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0x11(%r3)
	cmpwi %r0, 0x0
	lbz %r0, 0x2(%r5)
	stb %r0, 0x12(%r3)
	lbz %r0, 0x3(%r5)
	stb %r0, 0x13(%r3)
	bne- _aba68
	addi %r7, %r3, 0x18
	b _aba6c
_aba68:
	addi %r7, %r3, 0x1c
_aba6c:
	lbz %r0, 0x0(%r7)
	lis %r4, 0x8081
	stb %r0, 0x14(%r3)
	subi %r10, %r4, 0x7f7f
	lbz %r4, 0xb(%r3)
	li %r0, 0x1
	lbz %r5, 0x1(%r7)
	stb %r5, 0x15(%r3)
	lbz %r8, 0x42(%r3)
	lbz %r5, 0x2(%r7)
	stb %r5, 0x16(%r3)
	mullw %r6, %r4, %r8
	lbz %r5, 0xf(%r3)
	lbz %r9, 0x3(%r7)
	lbz %r4, 0x13(%r3)
	lfs %f0, -0x6cc0(%r2)
	mullw %r7, %r5, %r8
	lfs %f1, -0x6cbc(%r2)
	stw %r0, 0x38(%r3)
	stw %r0, 0x3c(%r3)
	mullw %r5, %r4, %r8
	stfs %f1, 0x24(%r3)
	stfs %f1, 0x28(%r3)
	mullw %r4, %r9, %r8
	stfs %f0, 0x2c(%r3)
	stfs %f0, 0x30(%r3)
	stfs %f0, 0x34(%r3)
	mulhw %r8, %r10, %r6
	mulhw %r0, %r10, %r7
	add %r6, %r8, %r6
	srawi %r8, %r6, 7
	mulhw %r6, %r10, %r5
	srwi  %r9, %r8, 31
	add %r0, %r0, %r7
	add %r7, %r8, %r9
	stb %r7, 0xb(%r3)
	srawi %r7, %r0, 7
	add %r5, %r6, %r5
	srwi  %r6, %r7, 31
	mulhw %r0, %r10, %r4
	add %r6, %r7, %r6
	stb %r6, 0xf(%r3)
	srawi %r5, %r5, 7
	srwi  %r6, %r5, 31
	add %r0, %r0, %r4
	srawi %r0, %r0, 7
	add %r5, %r5, %r6
	srwi  %r4, %r0, 31
	stb %r5, 0x13(%r3)
	add %r0, %r0, %r4
	stb %r0, 0x17(%r3)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	lwz %r28, 0x20(%r1)
	addi %r1, %r1, 0x30
	blr

	.global sub_abb50
sub_abb50: # 0x800b2e10
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	beq- _abb78
	cmpwi %r4, 0x0
	ble- _abb78
	bl sub_2227d0
_abb78:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_abb90
sub_abb90: # 0x800b2e50
	stwu %r1, -0x30(%r1)
	mflr %r0
	lis %r5, 0x802f
	stw %r0, 0x34(%r1)
	subi %r4, %r5, 0x3060
	li %r0, 0xff
	stw %r31, 0x2c(%r1)
	li %r31, 0x0
	stw %r0, -0x3060(%r5)
	stw %r31, 0x4(%r4)
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	bne- _abbd4
	lwz %r4, 0x4(%r3)
	addis %r0, %r4, 0x1
	cmplwi %r0, 0xffff
	beq- _abc24
_abbd4:
	lbz %r0, 0x0(%r3)
	addi %r4, %r1, 0x1c
	stb %r0, 0x20(%r1)
	lbz %r0, 0x1(%r3)
	stb %r0, 0x21(%r1)
	lbz %r0, 0x2(%r3)
	stb %r0, 0x22(%r1)
	lbz %r0, 0x3(%r3)
	stb %r0, 0x23(%r1)
	lbz %r0, 0x4(%r3)
	stb %r0, 0x1c(%r1)
	lbz %r0, 0x5(%r3)
	stb %r0, 0x1d(%r1)
	lbz %r0, 0x6(%r3)
	stb %r0, 0x1e(%r1)
	lbz %r0, 0x7(%r3)
	addi %r3, %r1, 0x20
	stb %r0, 0x1f(%r1)
	bl sub_acce0
	b _ac554
_abc24:
	lwz %r3, 0x48(%r3)
	cmpwi %r3, 0x0
	beq- _ac3a0
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x30(%r12)
	mtctr %r12
	bctrl 
	subi %r0, %r3, 0x4
	cmplwi %r0, 0x2
	ble- _ac030
	cmplwi %r3, 0x1
	ble- _abc64
	subi %r0, %r3, 0x2
	cmplwi %r0, 0x1
	ble- _abe78
	b _ac1e8
_abc64:
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _abc7c
	li %r0, 0x1
	stw %r31, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_abc7c:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0x18
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0x18(%r1)
	li %r3, 0x0
	stb %r6, 0x19(%r1)
	stb %r5, 0x1a(%r1)
	stb %r0, 0x1b(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x1
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x0
	li %r4, 0xf
	li %r5, 0xf
	li %r6, 0xf
	li %r7, 0xa
	bl sub_16a980
	li %r3, 0x0
	li %r4, 0x7
	li %r5, 0x4
	li %r6, 0x5
	li %r7, 0x7
	bl sub_16a9c0
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa00
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa58
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
	b _ac554
_abe78:
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _abe90
	li %r0, 0x1
	stw %r31, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_abe90:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0x14
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0x14(%r1)
	li %r3, 0x0
	stb %r6, 0x15(%r1)
	stb %r5, 0x16(%r1)
	stb %r0, 0x17(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x1
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x0
	li %r4, 0x0
	bl sub_16a8ec
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
	b _ac554
_ac030:
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _ac048
	li %r0, 0x1
	stw %r31, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_ac048:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0x10
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0x10(%r1)
	li %r3, 0x0
	stb %r6, 0x11(%r1)
	stb %r5, 0x12(%r1)
	stb %r0, 0x13(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x1
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x0
	li %r4, 0x0
	bl sub_16a8ec
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
	b _ac554
_ac1e8:
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _ac200
	li %r0, 0x1
	stw %r31, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_ac200:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0xc
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0xc(%r1)
	li %r3, 0x0
	stb %r6, 0xd(%r1)
	stb %r5, 0xe(%r1)
	stb %r0, 0xf(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x1
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x0
	li %r4, 0x0
	bl sub_16a8ec
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
	b _ac554
_ac3a0:
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _ac3b8
	li %r0, 0x1
	stw %r31, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_ac3b8:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0x8
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0x8(%r1)
	li %r3, 0x0
	stb %r6, 0x9(%r1)
	stb %r5, 0xa(%r1)
	stb %r0, 0xb(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x1
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x0
	li %r4, 0x0
	bl sub_16a8ec
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
_ac554:
	lwz %r0, 0x34(%r1)
	lwz %r31, 0x2c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.space 8

	.global t1_ac570
t1_ac570:
	.incbin "basemain.dol", 0xaead0, 0xd0

	.global sub_ac640
sub_ac640: # 0x800b3900
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	stfd %f31, 0x20(%r1)
	psq_st 31, 0x28, 1, 0, 0
	fmr  %f31, %f1
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	lwz %r3, 0x48(%r3)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	xoris %r3, %r3, 0x8000
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lfd %f1, -0x6cb8(%r2)
	stw %r0, 0x8(%r1)
	lfd %f0, 0x8(%r1)
	fsubs %f0, %f0, %f1
	fdivs %f0, %f31, %f0
	stfs %f0, 0x24(%r31)
	stfs %f0, 0x28(%r31)
	psq_l 31, 0x28, 1, 0, 0
	lfd %f31, 0x20(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.space 8

	.global t1_ac6c0
t1_ac6c0:
	.incbin "basemain.dol", 0xaec20, 0xc0

	.global sub_ac780
sub_ac780: # 0x800b3a40
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	lwz %r3, 0x48(%r3)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	xoris %r3, %r3, 0x8000
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lfd %f2, -0x6cb8(%r2)
	stw %r0, 0x8(%r1)
	lfs %f0, 0x28(%r31)
	lfd %f1, 0x8(%r1)
	lwz %r31, 0x1c(%r1)
	fsubs %f1, %f1, %f2
	lwz %r0, 0x24(%r1)
	fmuls %f1, %f0, %f1
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_ac7e0
sub_ac7e0: # 0x800b3aa0
	stwu %r1, -0x50(%r1)
	mflr %r0
	stw %r0, 0x54(%r1)
	stfd %f31, 0x40(%r1)
	psq_st 31, 0x48, 1, 0, 0
	lis %r0, 0x4330
	mr %r5, %r4
	addi %r4, %r1, 0x8
	stw %r31, 0x3c(%r1)
	mr %r31, %r3
	lwz %r3, 0x48(%r3)
	stw %r0, 0x20(%r1)
	lwz %r12, 0x0(%r3)
	stw %r0, 0x28(%r1)
	lwz %r12, 0x50(%r12)
	mtctr %r12
	bctrl 
	lbz %r0, 0x43(%r31)
	cmpwi %r0, 0x0
	beq- _ac888
	lbz %r3, 0xe(%r1)
	lbz %r0, 0xc(%r1)
	extsb %r3, %r3
	lfd %f4, -0x6cb8(%r2)
	xoris %r3, %r3, 0x8000
	stw %r3, 0x24(%r1)
	extsb %r0, %r0
	lfs %f3, 0x24(%r31)
	lfd %f0, 0x20(%r1)
	xoris %r0, %r0, 0x8000
	stw %r0, 0x2c(%r1)
	fsubs %f2, %f0, %f4
	lfs %f31, 0x44(%r31)
	lfd %f0, 0x28(%r1)
	lfs %f1, -0x6cb0(%r2)
	fmuls %f2, %f2, %f3
	fsubs %f0, %f0, %f4
	fsubs %f2, %f31, %f2
	fmuls %f0, %f0, %f3
	fmuls %f1, %f2, %f1
	fadds %f1, %f1, %f0
	b _ac8c8
_ac888:
	lbz %r3, 0xe(%r1)
	lbz %r0, 0xc(%r1)
	extsb %r3, %r3
	lfd %f3, -0x6cb8(%r2)
	extsb %r0, %r0
	lfs %f1, 0x24(%r31)
	xoris %r3, %r3, 0x8000
	stw %r3, 0x24(%r1)
	xoris %r0, %r0, 0x8000
	stw %r0, 0x2c(%r1)
	lfd %f2, 0x20(%r1)
	lfd %f0, 0x28(%r1)
	fsubs %f2, %f2, %f3
	fsubs %f0, %f0, %f3
	fmuls %f31, %f2, %f1
	fmuls %f1, %f0, %f1
_ac8c8:
	lfs %f0, 0x2c(%r31)
	mr %r3, %r31
	lfs %f2, 0x30(%r31)
	addi %r4, %r1, 0x8
	fadds %f1, %f0, %f1
	lfs %f3, 0x34(%r31)
	bl sub_ac910
	lfs %f0, 0x2c(%r31)
	fmr  %f1, %f31
	fadds %f0, %f0, %f31
	stfs %f0, 0x2c(%r31)
	psq_l 31, 0x48, 1, 0, 0
	lfd %f31, 0x40(%r1)
	lwz %r31, 0x3c(%r1)
	lwz %r0, 0x54(%r1)
	mtlr %r0
	addi %r1, %r1, 0x50
	blr

	.global sub_ac910
sub_ac910: # 0x800b3bd0
	stwu %r1, -0xb0(%r1)
	mflr %r0
	stw %r0, 0xb4(%r1)
	stfd %f31, 0xa0(%r1)
	psq_st 31, 0xa8, 1, 0, 0
	stfd %f30, 0x90(%r1)
	psq_st 30, 0x98, 1, 0, 0
	stfd %f29, 0x80(%r1)
	psq_st 29, 0x88, 1, 0, 0
	stfd %f28, 0x70(%r1)
	psq_st 28, 0x78, 1, 0, 0
	stfd %f27, 0x60(%r1)
	psq_st 27, 0x68, 1, 0, 0
	addi %r11, %r1, 0x60
	bl sub_1977c
	lbz %r28, 0x5(%r4)
	lis %r31, 0x4330
	lhz %r0, 0x10(%r4)
	li %r11, 0x0
	lbz %r26, 0x7(%r4)
	lis %r8, 0x802f
	add %r6, %r0, %r28
	lhz %r9, 0x12(%r4)
	slwi  %r7, %r0, 15
	lhz %r5, 0xc(%r4)
	add %r0, %r9, %r26
	slwi  %r27, %r6, 15
	divwu %r30, %r7, %r5
	lwz %r7, -0x3060(%r8)
	slwi  %r12, %r0, 15
	stw %r28, 0x3c(%r1)
	lhz %r6, 0xe(%r4)
	slwi  %r9, %r9, 15
	divwu %r29, %r9, %r6
	cmpw %r11, %r7
	stw %r31, 0x38(%r1)
	fmr  %f29, %f3
	lwz %r0, 0x0(%r4)
	fmr  %f27, %f1
	divwu %r28, %r27, %r5
	stw %r31, 0x40(%r1)
	lwz %r10, 0x38(%r3)
	clrlwi  %r31, %r30, 16
	stw %r26, 0x44(%r1)
	clrlwi  %r30, %r29, 16
	lwz %r9, 0x3c(%r3)
	divwu %r7, %r12, %r6
	clrlwi  %r29, %r28, 16
	lfd %f5, -0x6ca8(%r2)
	lfd %f0, 0x38(%r1)
	fmr  %f28, %f2
	lfd %f3, 0x40(%r1)
	fsubs %f4, %f0, %f5
	lfs %f0, 0x24(%r3)
	fsubs %f3, %f3, %f5
	stw %r11, 0x8(%r1)
	mr %r27, %r3
	clrlwi  %r28, %r7, 16
	fmuls %f4, %f4, %f0
	lfs %f0, 0x28(%r3)
	stw %r0, 0xc(%r1)
	fmuls %f0, %f3, %f0
	fadds %f31, %f1, %f4
	stw %r10, 0x10(%r1)
	fadds %f30, %f2, %f0
	stw %r9, 0x14(%r1)
	bne- _aca44
	subi %r7, %r8, 0x3060
	lwz %r3, 0x4(%r7)
	cmplw %r0, %r3
	bne- _aca44
	lwz %r3, 0x8(%r7)
	cmpw %r10, %r3
	bne- _aca44
	lwz %r3, 0xc(%r7)
	cmpw %r9, %r3
	beq- _aca48
_aca44:
	li %r11, 0x1
_aca48:
	cmpwi %r11, 0x0
	beq- _acac8
	lwz %r7, 0x8(%r4)
	mr %r4, %r0
	addi %r3, %r1, 0x18
	li %r8, 0x0
	li %r9, 0x0
	li %r10, 0x0
	bl sub_169498
	lfs %f1, -0x6cc0(%r2)
	addi %r3, %r1, 0x18
	lwz %r4, 0x38(%r27)
	li %r6, 0x0
	fmr  %f2, %f1
	lwz %r5, 0x3c(%r27)
	fmr  %f3, %f1
	li %r7, 0x0
	li %r8, 0x0
	bl sub_1696ec
	addi %r3, %r1, 0x18
	li %r4, 0x0
	bl sub_169bcc
	lis %r6, 0x802f
	lwz %r7, 0x8(%r1)
	subi %r4, %r6, 0x3060
	lwz %r5, 0xc(%r1)
	lwz %r3, 0x10(%r1)
	lwz %r0, 0x14(%r1)
	stw %r7, -0x3060(%r6)
	stw %r5, 0x4(%r4)
	stw %r3, 0x8(%r4)
	stw %r0, 0xc(%r4)
_acac8:
	li %r3, 0x80
	li %r4, 0x0
	li %r5, 0x4
	bl sub_167d90
	lis %r3, 0xcc01
	stfs %f27, -0x8000(%r3)
	stfs %f28, -0x8000(%r3)
	stfs %f29, -0x8000(%r3)
	lwz %r0, 0x8(%r27)
	stw %r0, -0x8000(%r3)
	sth %r31, -0x8000(%r3)
	sth %r30, -0x8000(%r3)
	stfs %f31, -0x8000(%r3)
	stfs %f28, -0x8000(%r3)
	stfs %f29, -0x8000(%r3)
	lwz %r0, 0xc(%r27)
	stw %r0, -0x8000(%r3)
	sth %r29, -0x8000(%r3)
	sth %r30, -0x8000(%r3)
	stfs %f31, -0x8000(%r3)
	stfs %f30, -0x8000(%r3)
	stfs %f29, -0x8000(%r3)
	lwz %r0, 0x14(%r27)
	stw %r0, -0x8000(%r3)
	sth %r29, -0x8000(%r3)
	sth %r28, -0x8000(%r3)
	stfs %f27, -0x8000(%r3)
	stfs %f30, -0x8000(%r3)
	stfs %f29, -0x8000(%r3)
	lwz %r0, 0x10(%r27)
	stw %r0, -0x8000(%r3)
	sth %r31, -0x8000(%r3)
	sth %r28, -0x8000(%r3)
	psq_l 31, 0xa8, 1, 0, 0
	lfd %f31, 0xa0(%r1)
	psq_l 30, 0x98, 1, 0, 0
	lfd %f30, 0x90(%r1)
	psq_l 29, 0x88, 1, 0, 0
	lfd %f29, 0x80(%r1)
	psq_l 28, 0x78, 1, 0, 0
	lfd %f28, 0x70(%r1)
	psq_l 27, 0x68, 1, 0, 0
	addi %r11, %r1, 0x60
	lfd %f27, 0x60(%r1)
	bl sub_197c8
	lwz %r0, 0xb4(%r1)
	mtlr %r0
	addi %r1, %r1, 0xb0
	blr

	.space 4

	.global sub_acb90
sub_acb90: # 0x800b3e50
	lwz %r0, 0x20(%r3)
	lbz %r6, 0x18(%r3)
	lbz %r5, 0x19(%r3)
	cmpwi %r0, 0x1
	lbz %r4, 0x1a(%r3)
	lbz %r0, 0x1b(%r3)
	stb %r6, 0x8(%r3)
	stb %r5, 0x9(%r3)
	stb %r4, 0xa(%r3)
	stb %r0, 0xb(%r3)
	beq- _acbc4
	addi %r5, %r3, 0x18
	b _acbc8
_acbc4:
	addi %r5, %r3, 0x1c
_acbc8:
	lbz %r0, 0x0(%r5)
	stb %r0, 0xc(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0xd(%r3)
	cmpwi %r0, 0x2
	lbz %r0, 0x2(%r5)
	stb %r0, 0xe(%r3)
	lbz %r0, 0x3(%r5)
	stb %r0, 0xf(%r3)
	beq- _acbfc
	addi %r5, %r3, 0x18
	b _acc00
_acbfc:
	addi %r5, %r3, 0x1c
_acc00:
	lbz %r0, 0x0(%r5)
	stb %r0, 0x10(%r3)
	lwz %r0, 0x20(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0x11(%r3)
	cmpwi %r0, 0x0
	lbz %r0, 0x2(%r5)
	stb %r0, 0x12(%r3)
	lbz %r0, 0x3(%r5)
	stb %r0, 0x13(%r3)
	bne- _acc34
	addi %r5, %r3, 0x18
	b _acc38
_acc34:
	addi %r5, %r3, 0x1c
_acc38:
	lbz %r0, 0x0(%r5)
	lis %r4, 0x8081
	stb %r0, 0x14(%r3)
	subi %r10, %r4, 0x7f7f
	lbz %r0, 0xb(%r3)
	lbz %r4, 0x1(%r5)
	stb %r4, 0x15(%r3)
	lbz %r7, 0x42(%r3)
	lbz %r4, 0x2(%r5)
	stb %r4, 0x16(%r3)
	mullw %r6, %r0, %r7
	lbz %r4, 0xf(%r3)
	lbz %r0, 0x13(%r3)
	lbz %r8, 0x3(%r5)
	mullw %r5, %r0, %r7
	mullw %r0, %r8, %r7
	mullw %r4, %r4, %r7
	mulhw %r8, %r10, %r6
	mulhw %r7, %r10, %r4
	add %r6, %r8, %r6
	srawi %r8, %r6, 7
	mulhw %r6, %r10, %r5
	srwi  %r9, %r8, 31
	add %r4, %r7, %r4
	add %r7, %r8, %r9
	stb %r7, 0xb(%r3)
	srawi %r7, %r4, 7
	add %r5, %r6, %r5
	srwi  %r6, %r7, 31
	mulhw %r4, %r10, %r0
	add %r6, %r7, %r6
	stb %r6, 0xf(%r3)
	srawi %r5, %r5, 7
	srwi  %r6, %r5, 31
	add %r0, %r4, %r0
	srawi %r0, %r0, 7
	add %r5, %r5, %r6
	srwi  %r4, %r0, 31
	stb %r5, 0x13(%r3)
	add %r0, %r0, %r4
	stb %r0, 0x17(%r3)
	blr

	.global sub_acce0
sub_acce0: # 0x800b3fa0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r4
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	lbz %r0, -0x6988(%r13)
	extsb. %r0, %r0
	bne- _acd18
	li %r3, 0x0
	li %r0, 0x1
	stw %r3, -0x6984(%r13)
	stb %r0, -0x6988(%r13)
_acd18:
	lfs %f1, -0x6cc0(%r2)
	addi %r4, %r1, 0x8
	lbz %r3, -0x6984(%r13)
	lbz %r6, -0x6983(%r13)
	fmr  %f2, %f1
	lbz %r5, -0x6982(%r13)
	fmr  %f3, %f1
	lbz %r0, -0x6981(%r13)
	fmr  %f4, %f1
	stb %r3, 0x8(%r1)
	li %r3, 0x0
	stb %r6, 0x9(%r1)
	stb %r5, 0xa(%r1)
	stb %r0, 0xb(%r1)
	bl sub_16af6c
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0x3
	bl sub_16acac
	li %r3, 0x0
	li %r4, 0x11
	li %r5, 0x0
	bl sub_16ad60
	li %r3, 0x1
	bl sub_1691ec
	li %r3, 0x4
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x1
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x5
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x0
	li %r9, 0x2
	bl sub_169210
	li %r3, 0x1
	bl sub_167244
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x4
	li %r6, 0x3c
	li %r7, 0x0
	li %r8, 0x7d
	bl sub_16701c
	li %r3, 0x0
	bl sub_16a7d8
	li %r3, 0x1
	li %r4, 0x4
	li %r5, 0x5
	li %r6, 0xf
	bl sub_16b41c
	li %r3, 0x2
	bl sub_16af48
	li %r3, 0x0
	bl sub_16a7f8
	li %r3, 0x1
	bl sub_16a7f8
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x1
	li %r4, 0x0
	li %r5, 0x0
	bl sub_16ac70
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0xff
	bl sub_16adec
	lbz %r7, 0x0(%r30)
	addi %r4, %r1, 0x10
	lbz %r6, 0x1(%r30)
	li %r3, 0x1
	lbz %r5, 0x2(%r30)
	lbz %r0, 0x3(%r30)
	stb %r7, 0x10(%r1)
	stb %r6, 0x11(%r1)
	stb %r5, 0x12(%r1)
	stb %r0, 0x13(%r1)
	bl sub_16aab0
	lbz %r7, 0x0(%r31)
	addi %r4, %r1, 0xc
	lbz %r6, 0x1(%r31)
	li %r3, 0x2
	lbz %r5, 0x2(%r31)
	lbz %r0, 0x3(%r31)
	stb %r7, 0xc(%r1)
	stb %r6, 0xd(%r1)
	stb %r5, 0xe(%r1)
	stb %r0, 0xf(%r1)
	bl sub_16aab0
	li %r3, 0x0
	li %r4, 0x2
	li %r5, 0x4
	li %r6, 0x8
	li %r7, 0xf
	bl sub_16a980
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x2
	li %r6, 0x4
	li %r7, 0x7
	bl sub_16a9c0
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa00
	li %r3, 0x0
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa58
	li %r3, 0x1
	li %r4, 0xff
	li %r5, 0xff
	li %r6, 0x4
	bl sub_16adec
	li %r3, 0x1
	li %r4, 0xf
	li %r5, 0x0
	li %r6, 0xa
	li %r7, 0xf
	bl sub_16a980
	li %r3, 0x1
	li %r4, 0x7
	li %r5, 0x0
	li %r6, 0x5
	li %r7, 0x7
	bl sub_16a9c0
	li %r3, 0x1
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa00
	li %r3, 0x1
	li %r4, 0x0
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	li %r8, 0x0
	bl sub_16aa58
	li %r3, 0x0
	li %r4, 0x9
	li %r5, 0x1
	li %r6, 0x4
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xb
	li %r5, 0x1
	li %r6, 0x5
	li %r7, 0x0
	bl sub_166908
	li %r3, 0x0
	li %r4, 0xd
	li %r5, 0x1
	li %r6, 0x2
	li %r7, 0xf
	bl sub_166908
	bl sub_1668d4
	li %r3, 0x9
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xb
	li %r4, 0x1
	bl sub_166044
	li %r3, 0xd
	li %r4, 0x1
	bl sub_166044
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.space 12

	.global t1_ad020
t1_ad020:
	.incbin "basemain.dol", 0xaf580, 0x1700

	.global sub_ae720
sub_ae720: # 0x800b59e0
	stwu %r1, -0x100(%r1)
	mflr %r0
	stw %r0, 0x104(%r1)
	stfd %f31, 0xf0(%r1)
	psq_st 31, 0xf8, 1, 0, 0
	stw %r31, 0xec(%r1)
	mr %r31, %r1
	stw %r30, 0xe8(%r1)
	stw %r29, 0xe4(%r1)
	mr %r29, %r3
	stw %r28, 0xe0(%r1)
	mr %r28, %r4
	bne- cr1, _ae774
	stfd %f1, 0x28(%r31)
	stfd %f2, 0x30(%r31)
	stfd %f3, 0x38(%r31)
	stfd %f4, 0x40(%r31)
	stfd %f5, 0x48(%r31)
	stfd %f6, 0x50(%r31)
	stfd %f7, 0x58(%r31)
	stfd %f8, 0x60(%r31)
_ae774:
	lwz %r30, -0x6980(%r13)
	addi %r11, %r31, 0x108
	addi %r0, %r31, 0x8
	lis %r12, 0x200
	cmpwi %r30, 0x0
	stw %r3, 0x8(%r31)
	stw %r4, 0xc(%r31)
	stw %r5, 0x10(%r31)
	stw %r6, 0x14(%r31)
	stw %r7, 0x18(%r31)
	stw %r8, 0x1c(%r31)
	stw %r9, 0x20(%r31)
	stw %r10, 0x24(%r31)
	stw %r12, 0x68(%r31)
	stw %r11, 0x6c(%r31)
	stw %r0, 0x70(%r31)
	beq- _ae7bc
	b _ae7d4
_ae7bc:
	lwz %r3, -0x7e30(%r13)
	lwz %r0, 0x0(%r1)
	neg %r30, %r3
	clrrwi  %r30, %r30, 3

	.global t1_ae7cc
t1_ae7cc:
	.incbin "basemain.dol", 0xb0d2c, 0x4
	addi %r30, %r1, 0x8
_ae7d4:
	lwz %r4, -0x7e30(%r13)
	mr %r3, %r30
	mr %r5, %r28
	addi %r6, %r31, 0x68
	bl sub_9a0c
	lwz %r4, -0x7e30(%r13)
	subi %r0, %r4, 0x1
	cmpw %r3, %r0
	ble- _ae7fc
	mr %r3, %r0
_ae7fc:
	lbz %r0, 0x0(%r29)
	stb %r0, 0x74(%r31)
	lbz %r0, 0x1(%r29)
	stb %r0, 0x75(%r31)
	lbz %r0, 0x2(%r29)
	stb %r0, 0x76(%r31)
	lbz %r0, 0x3(%r29)
	stb %r0, 0x77(%r31)
	lbz %r0, 0x4(%r29)
	stb %r0, 0x78(%r31)
	lbz %r0, 0x5(%r29)
	stb %r0, 0x79(%r31)
	lbz %r0, 0x6(%r29)
	stb %r0, 0x7a(%r31)
	lbz %r0, 0x7(%r29)
	stb %r0, 0x7b(%r31)
	lbz %r0, 0x8(%r29)
	stb %r0, 0x7c(%r31)
	lbz %r0, 0x9(%r29)
	stb %r0, 0x7d(%r31)
	lbz %r0, 0xa(%r29)
	stb %r0, 0x7e(%r31)
	lbz %r0, 0xb(%r29)
	stb %r0, 0x7f(%r31)
	lbz %r0, 0xc(%r29)
	stb %r0, 0x80(%r31)
	lbz %r0, 0xd(%r29)
	stb %r0, 0x81(%r31)
	lbz %r0, 0xe(%r29)
	stb %r0, 0x82(%r31)
	lbz %r0, 0xf(%r29)
	stb %r0, 0x83(%r31)
	lbz %r0, 0x10(%r29)
	stb %r0, 0x84(%r31)
	lbz %r0, 0x11(%r29)
	stb %r0, 0x85(%r31)
	lbz %r0, 0x12(%r29)
	stb %r0, 0x86(%r31)
	lbz %r0, 0x13(%r29)
	stb %r0, 0x87(%r31)
	lbz %r0, 0x14(%r29)
	stb %r0, 0x88(%r31)
	lbz %r0, 0x15(%r29)
	stb %r0, 0x89(%r31)
	lbz %r0, 0x16(%r29)
	stb %r0, 0x8a(%r31)
	lbz %r0, 0x17(%r29)
	stb %r0, 0x8b(%r31)
	lbz %r0, 0x18(%r29)
	stb %r0, 0x8c(%r31)
	lbz %r0, 0x19(%r29)
	stb %r0, 0x8d(%r31)
	lbz %r0, 0x1a(%r29)
	stb %r0, 0x8e(%r31)
	lbz %r0, 0x1b(%r29)
	stb %r0, 0x8f(%r31)
	lbz %r0, 0x1c(%r29)
	stb %r0, 0x90(%r31)
	lbz %r0, 0x1d(%r29)
	stb %r0, 0x91(%r31)
	lbz %r0, 0x1e(%r29)
	stb %r0, 0x92(%r31)
	lbz %r0, 0x1f(%r29)
	stb %r0, 0x93(%r31)
	lwz %r0, 0x20(%r29)
	stw %r0, 0x94(%r31)
	lwz %r4, 0x24(%r29)
	lwz %r0, 0x28(%r29)
	stw %r0, 0x9c(%r31)
	stw %r4, 0x98(%r31)
	lwz %r4, 0x2c(%r29)
	lwz %r0, 0x30(%r29)
	stw %r0, 0xa4(%r31)
	stw %r4, 0xa0(%r31)
	lwz %r0, 0x34(%r29)
	stw %r0, 0xa8(%r31)
	lwz %r4, 0x38(%r29)
	lwz %r0, 0x3c(%r29)
	stw %r0, 0xb0(%r31)
	stw %r4, 0xac(%r31)
	lbz %r0, 0x40(%r29)
	stb %r0, 0xb4(%r31)
	lbz %r0, 0x41(%r29)
	stb %r0, 0xb5(%r31)
	lbz %r0, 0x42(%r29)
	stb %r0, 0xb6(%r31)
	lbz %r0, 0x43(%r29)
	stb %r0, 0xb7(%r31)
	lfs %f0, 0x44(%r29)
	stfs %f0, 0xb8(%r31)
	lwz %r0, 0x48(%r29)
	stw %r0, 0xbc(%r31)
	lfs %f0, 0x4c(%r29)
	stfs %f0, 0xc0(%r31)
	lfs %f0, 0x50(%r29)
	stfs %f0, 0xc4(%r31)
	lfs %f0, 0x54(%r29)
	stfs %f0, 0xc8(%r31)
	lwz %r0, 0x58(%r29)
	mr %r5, %r3
	stw %r0, 0xcc(%r31)
	mr %r4, %r30
	addi %r3, %r31, 0x74
	lwz %r0, 0x5c(%r29)
	stw %r0, 0xd0(%r31)
	lwz %r0, 0x60(%r29)
	stw %r0, 0xd4(%r31)
	bl sub_afa40
	lfs %f0, 0xa4(%r31)
	fmr  %f31, %f1
	lfs %f2, 0xa0(%r31)
	addi %r3, %r31, 0x74
	stfs %f2, 0x2c(%r29)
	li %r4, 0x0
	stfs %f0, 0x30(%r29)
	bl sub_abb50
	mr %r10, %r31
	fmr  %f1, %f31
	psq_l 31, 0xf8, 10, 0, 0
	lfd %f31, 0xf0(%r31)
	lwz %r31, 0xec(%r31)
	lwz %r30, 0xe8(%r10)
	lwz %r29, 0xe4(%r10)
	lwz %r28, 0xe0(%r10)
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	mr %r1, %r10
	mtlr %r0
	blr

	.global t1_aea00
t1_aea00:
	.incbin "basemain.dol", 0xb0f60, 0x88c
	
	.space 4

	.global sub_af290
sub_af290: # 0x800b6550
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
	mr %r22, %r3
	lfs %f0, -0x6ca0(%r2)
	mr %r23, %r4
	lwz %r21, 0x0(%r5)
	mr %r24, %r5
	fcmpo %cr0, %f1, %f0
	mr %r25, %r6
	add %r31, %r21, %r6
	mfcr %r30
	lfs %f31, -0x6c9c(%r2)
	li %r20, 0x0
	stw %r3, 0xcc(%r1)
	srwi  %r30, %r30, 31
	addi %r3, %r1, 0x98
	stw %r20, 0xd4(%r1)
	li %r29, 0x0
	li %r28, 0x0
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
	beq- _af364
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x34(%r12)
	mtctr %r12
	bctrl 
	b _af368
_af364:
	mr %r3, %r20
_af368:
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
	ble- _af3a4
	b _af3a8
_af3a4:
	fmr  %f1, %f0
_af3a8:
	stfs %f1, 0x4(%r23)
	lwz %r3, 0x48(%r22)
	cmpwi %r3, 0x0
	beq- _af3cc
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x34(%r12)
	mtctr %r12
	bctrl 
	b _af3d0
_af3cc:
	li %r3, 0x0
_af3d0:
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
	bge- _af40c
	b _af410
_af40c:
	fmr  %f4, %f0
_af410:
	frsp  %f0, %f4
	lfs %f3, 0x0(%r23)
	lfs %f2, 0x4(%r23)
	addi %r3, %r1, 0x98
	lfs %f1, 0x8(%r23)
	addi %r12, %r1, 0x9c
	stfs %f4, 0xc(%r23)
	li %r27, 0x0
	stfs %f3, 0x38(%r1)
	stfs %f2, 0x4c(%r1)
	stfs %f1, 0x60(%r1)
	stfs %f0, 0x74(%r1)
	stw %r21, 0x98(%r1)
	bl sub_19630
	ori %r0, %r0, 0x0
	lfs %f29, -0x6c9c(%r2)
	mr %r26, %r3
	lfd %f30, -0x6c98(%r2)
	addi %r20, %r1, 0xe0
	lis %r21, 0x4330
	b _af8bc
_af464:
	clrlwi  %r5, %r26, 16
	cmpwi %r5, 0x20
	bge- _af7d8
	cntlzw %r0, %r29
	stfs %f29, 0x8c(%r1)
	srwi  %r0, %r0, 5
	cmpwi %r30, 0x0
	stfs %f29, 0x90(%r1)
	stfs %f29, 0x94(%r1)
	stw %r3, 0xd0(%r1)
	stw %r0, 0xdc(%r1)
	stfs %f31, 0x88(%r1)
	stfs %f31, 0x2c(%r22)
	beq- _af6f4
	cmpwi %r5, 0xa
	beq- _af6f4
	cmpwi %r27, 0x0
	beq- _af6f4
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
	ble- _af6e8
	lfs %f2, 0x10c(%r1)
	lfs %f1, 0xd4(%r1)
	lfs %f0, 0x4c(%r22)
	fsubs %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _af6e8
	stw %r27, 0x98(%r1)
	mr %r3, %r20
	li %r28, 0x1
	li %r26, 0xa
	li %r4, 0x0
	bl sub_abb50
	b _af8bc
_af6e8:
	addi %r3, %r1, 0xe0
	li %r4, 0x0
	bl sub_abb50
_af6f4:
	lwz %r3, 0x60(%r22)
	addi %r4, %r1, 0x88
	clrlwi  %r5, %r26, 16
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
	ble- _af730
	b _af734
_af730:
	fmr  %f1, %f0
_af734:
	stfs %f1, 0x0(%r23)
	lfs %f0, 0x4(%r23)
	lfs %f1, 0x8c(%r1)
	fcmpo %cr0, %f0, %f1
	ble- _af74c
	b _af750
_af74c:
	fmr  %f1, %f0
_af750:
	stfs %f1, 0x4(%r23)
	lfs %f0, 0x8(%r23)
	lfs %f1, 0x90(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _af768
	b _af76c
_af768:
	fmr  %f1, %f0
_af76c:
	stfs %f1, 0x8(%r23)
	lfs %f0, 0xc(%r23)
	lfs %f1, 0x94(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _af784
	b _af788
_af784:
	fmr  %f1, %f0
_af788:
	stfs %f1, 0xc(%r23)
	cmpwi %r3, 0x4
	lfs %f31, 0x2c(%r22)
	bne- _af7ac
	lwz %r0, 0x0(%r24)
	li %r3, 0x0
	add %r0, %r0, %r25
	stw %r0, 0x0(%r24)
	b _af8d4
_af7ac:
	cmpwi %r3, 0x1
	bne- _af7bc
	li %r29, 0x0
	b _af89c
_af7bc:
	cmpwi %r3, 0x2
	bne- _af7cc
	li %r29, 0x1
	b _af89c
_af7cc:
	cmpwi %r3, 0x3
	beq- _af8c8
	b _af89c
_af7d8:
	cmpwi %r29, 0x0
	lfs %f27, -0x6c9c(%r2)
	beq- _af7ec
	lfs %f0, 0x50(%r22)
	fadds %f27, %f27, %f0
_af7ec:
	lbz %r0, 0x43(%r22)
	cmpwi %r0, 0x0
	beq- _af804
	lfs %f0, 0x44(%r22)
	fadds %f27, %f27, %f0
	b _af83c
_af804:
	lwz %r3, 0x48(%r22)
	clrlwi  %r4, %r26, 16
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
_af83c:
	cmpwi %r30, 0x0
	beq- _af86c
	cmpwi %r27, 0x0
	beq- _af86c
	fadds %f1, %f31, %f27
	lfs %f0, 0x4c(%r22)
	fcmpo %cr0, %f1, %f0
	ble- _af86c
	stw %r27, 0x98(%r1)
	li %r28, 0x1
	li %r26, 0xa
	b _af8bc
_af86c:
	fadds %f31, %f31, %f27
	lfs %f0, 0x0(%r23)
	fcmpo %cr0, %f0, %f31
	ble- _af880
	fmr  %f0, %f31
_af880:
	lfs %f1, 0x8(%r23)
	stfs %f0, 0x0(%r23)
	fcmpo %cr0, %f1, %f31
	bge- _af894
	fmr  %f1, %f31
_af894:
	stfs %f1, 0x8(%r23)
	li %r29, 0x1
_af89c:
	cmpwi %r30, 0x0
	beq- _af8a8
	lwz %r27, 0x98(%r1)
_af8a8:
	addi %r3, %r1, 0x98
	addi %r12, %r1, 0x9c
	bl sub_19630
	ori %r0, %r0, 0x0
	mr %r26, %r3
_af8bc:
	lwz %r3, 0x98(%r1)
	cmplw %r3, %r31
	ble+ _af464
_af8c8:
	lwz %r0, 0x98(%r1)
	mr %r3, %r28
	stw %r0, 0x0(%r24)
_af8d4:
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
	
	.space 12

	.global t1_af920
t1_af920:
	.incbin "basemain.dol", 0xb1e80, 0x8
	
	.space 8

	.global sub_af930
sub_af930: # 0x800b6bf0
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stfd %f31, 0x30(%r1)
	psq_st 31, 0x38, 1, 0, 0
	lfs %f31, -0x6c9c(%r2)
	stw %r31, 0x2c(%r1)
	add %r31, %r5, %r6
	stw %r30, 0x28(%r1)
	mr %r30, %r4
	stw %r29, 0x24(%r1)
	mr %r29, %r3
	stw %r5, 0x8(%r1)
	stfs %f31, 0x0(%r4)
	stfs %f31, 0x8(%r4)
	stfs %f31, 0x4(%r4)
	stfs %f31, 0xc(%r4)
	stfs %f31, 0x2c(%r3)
	stfs %f31, 0x30(%r3)
_af97c:
	stfs %f31, 0x10(%r1)
	mr %r3, %r29
	addi %r4, %r1, 0x10
	addi %r5, %r1, 0x8
	stfs %f31, 0x14(%r1)
	stfs %f31, 0x18(%r1)
	stfs %f31, 0x1c(%r1)
	bl sub_af290
	lfs %f1, 0x10(%r1)
	lfs %f0, 0x0(%r30)
	lwz %r0, 0x8(%r1)
	fcmpo %cr0, %f0, %f1
	subf %r6, %r0, %r31
	ble- _af9b8
	b _af9bc
_af9b8:
	fmr  %f1, %f0
_af9bc:
	stfs %f1, 0x0(%r30)
	lfs %f0, 0x4(%r30)
	lfs %f1, 0x14(%r1)
	fcmpo %cr0, %f0, %f1
	ble- _af9d4
	b _af9d8
_af9d4:
	fmr  %f1, %f0
_af9d8:
	stfs %f1, 0x4(%r30)
	lfs %f0, 0x8(%r30)
	lfs %f1, 0x18(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _af9f0
	b _af9f4
_af9f0:
	fmr  %f1, %f0
_af9f4:
	stfs %f1, 0x8(%r30)
	lfs %f0, 0xc(%r30)
	lfs %f1, 0x1c(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _afa0c
	b _afa10
_afa0c:
	fmr  %f1, %f0
_afa10:
	cmpwi %r6, 0x0
	stfs %f1, 0xc(%r30)
	bgt+ _af97c
	psq_l 31, 0x38, 1, 0, 0
	lwz %r0, 0x44(%r1)
	lfd %f31, 0x30(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_afa40
sub_afa40: # 0x800b6d00
	stwu %r1, -0x280(%r1)
	mflr %r0
	stw %r0, 0x284(%r1)
	stfd %f31, 0x270(%r1)
	psq_st 31, 0x278, 1, 0, 0
	stfd %f30, 0x260(%r1)
	psq_st 30, 0x268, 1, 0, 0
	stfd %f29, 0x250(%r1)
	psq_st 29, 0x258, 1, 0, 0
	stfd %f28, 0x240(%r1)
	psq_st 28, 0x248, 1, 0, 0
	stfd %f27, 0x230(%r1)
	psq_st 27, 0x238, 1, 0, 0
	stfd %f26, 0x220(%r1)
	psq_st 26, 0x228, 1, 0, 0
	stfd %f25, 0x210(%r1)
	psq_st 25, 0x218, 1, 0, 0
	stfd %f24, 0x200(%r1)
	psq_st 24, 0x208, 1, 0, 0
	stfd %f23, 0x1f0(%r1)
	psq_st 23, 0x1f8, 1, 0, 0
	stfd %f22, 0x1e0(%r1)
	psq_st 22, 0x1e8, 1, 0, 0
	addi %r11, %r1, 0x1e0
	bl sub_1976c
	lfs %f0, 0x2c(%r3)
	mr %r24, %r4
	stfs %f0, 0x14(%r1)
	mr %r25, %r5
	lfs %f0, -0x6ca0(%r2)
	mr %r23, %r3
	lfs %f28, 0x30(%r3)
	stfs %f28, 0x10(%r1)
	lfs %f1, 0x4c(%r3)
	fcmpo %cr0, %f1, %f0
	mfcr %r30
	mr %r28, %r24
	srwi  %r30, %r30, 31
	mr %r27, %r24
	mr %r6, %r24
	mr %r7, %r25
	addi %r4, %r1, 0x14
	addi %r5, %r1, 0x10
	li %r29, 0x0
	bl sub_b0470
	lfs %f0, 0x30(%r23)
	li %r0, 0x0
	lfs %f2, 0x14(%r1)
	fmr  %f25, %f1
	stw %r0, 0x74(%r1)
	fsubs %f26, %f28, %f0
	lfs %f0, 0x10(%r1)
	addi %r3, %r1, 0x48
	stw %r0, 0x78(%r1)
	stw %r0, 0x7c(%r1)
	stw %r23, 0x6c(%r1)
	stw %r24, 0x70(%r1)
	stfs %f2, 0x74(%r1)
	stfs %f0, 0x78(%r1)
	lwz %r4, 0x48(%r23)
	bl sub_74fd0
	stw %r24, 0x48(%r1)
	addi %r3, %r1, 0x48
	addi %r12, %r1, 0x4c
	bl sub_19630
	ori %r0, %r0, 0x0
	lfs %f29, -0x6c9c(%r2)
	mr %r26, %r3
	lfs %f30, -0x6c90(%r2)
	addi %r31, %r1, 0x148
	lfd %f31, -0x6c98(%r2)
	lis %r22, 0x4330
	b _b03ac
_afb64:
	clrlwi  %r5, %r26, 16
	cmpwi %r5, 0x20
	bge- _b0284
	cntlzw %r0, %r29
	cmpwi %r30, 0x0
	srwi  %r6, %r0, 5
	stw %r7, 0x70(%r1)
	stw %r6, 0x7c(%r1)
	beq- _afdd4
	cmpwi %r5, 0xa
	beq- _afdd4
	cmplw %r28, %r27
	beq- _afdd4
	lwz %r4, 0x6c(%r1)
	lwz %r3, 0x74(%r1)
	lwz %r0, 0x78(%r1)
	stw %r4, 0x58(%r1)
	stw %r7, 0x5c(%r1)
	stw %r3, 0x60(%r1)
	stw %r0, 0x64(%r1)
	stw %r6, 0x68(%r1)
	lbz %r0, 0x0(%r23)
	stb %r0, 0x148(%r1)
	lbz %r0, 0x1(%r23)
	stb %r0, 0x149(%r1)
	lbz %r0, 0x2(%r23)
	stb %r0, 0x14a(%r1)
	lbz %r0, 0x3(%r23)
	stb %r0, 0x14b(%r1)
	lbz %r0, 0x4(%r23)
	stb %r0, 0x14c(%r1)
	lbz %r0, 0x5(%r23)
	stb %r0, 0x14d(%r1)
	lbz %r0, 0x6(%r23)
	stb %r0, 0x14e(%r1)
	lbz %r0, 0x7(%r23)
	stb %r0, 0x14f(%r1)
	lbz %r0, 0x8(%r23)
	stb %r0, 0x150(%r1)
	lbz %r0, 0x9(%r23)
	stb %r0, 0x151(%r1)
	lbz %r0, 0xa(%r23)
	stb %r0, 0x152(%r1)
	lbz %r0, 0xb(%r23)
	stb %r0, 0x153(%r1)
	lbz %r0, 0xc(%r23)
	stb %r0, 0x154(%r1)
	lbz %r0, 0xd(%r23)
	stb %r0, 0x155(%r1)
	lbz %r0, 0xe(%r23)
	stb %r0, 0x156(%r1)
	lbz %r0, 0xf(%r23)
	stb %r0, 0x157(%r1)
	lbz %r0, 0x10(%r23)
	stb %r0, 0x158(%r1)
	lbz %r0, 0x11(%r23)
	stb %r0, 0x159(%r1)
	lbz %r0, 0x12(%r23)
	stb %r0, 0x15a(%r1)
	lbz %r0, 0x13(%r23)
	stb %r0, 0x15b(%r1)
	lbz %r0, 0x14(%r23)
	stb %r0, 0x15c(%r1)
	lbz %r0, 0x15(%r23)
	stb %r0, 0x15d(%r1)
	lbz %r0, 0x16(%r23)
	stb %r0, 0x15e(%r1)
	lbz %r0, 0x17(%r23)
	stb %r0, 0x15f(%r1)
	lbz %r0, 0x18(%r23)
	stb %r0, 0x160(%r1)
	lbz %r0, 0x19(%r23)
	stb %r0, 0x161(%r1)
	lbz %r0, 0x1a(%r23)
	stb %r0, 0x162(%r1)
	lbz %r0, 0x1b(%r23)
	stb %r0, 0x163(%r1)
	lbz %r0, 0x1c(%r23)
	stb %r0, 0x164(%r1)
	lbz %r0, 0x1d(%r23)
	stb %r0, 0x165(%r1)
	lbz %r0, 0x1e(%r23)
	stb %r0, 0x166(%r1)
	lbz %r0, 0x1f(%r23)
	stb %r0, 0x167(%r1)
	lwz %r0, 0x20(%r23)
	stw %r0, 0x168(%r1)
	lwz %r3, 0x24(%r23)
	lwz %r0, 0x28(%r23)
	stw %r0, 0x170(%r1)
	stw %r3, 0x16c(%r1)
	lwz %r3, 0x2c(%r23)
	lwz %r0, 0x30(%r23)
	stw %r0, 0x178(%r1)
	stw %r3, 0x174(%r1)
	lwz %r0, 0x34(%r23)
	stw %r0, 0x17c(%r1)
	lwz %r3, 0x38(%r23)
	lwz %r0, 0x3c(%r23)
	stw %r0, 0x184(%r1)
	stw %r3, 0x180(%r1)
	lbz %r0, 0x40(%r23)
	stb %r0, 0x188(%r1)
	lbz %r0, 0x41(%r23)
	stb %r0, 0x189(%r1)
	lbz %r0, 0x42(%r23)
	stb %r0, 0x18a(%r1)
	lbz %r0, 0x43(%r23)
	stb %r0, 0x18b(%r1)
	lfs %f0, 0x44(%r23)
	stfs %f0, 0x18c(%r1)
	lwz %r0, 0x48(%r23)
	addi %r4, %r1, 0x38
	stw %r0, 0x190(%r1)
	addi %r6, %r1, 0x58
	lfs %f0, 0x4c(%r23)
	stfs %f0, 0x194(%r1)
	lfs %f0, 0x50(%r23)
	stfs %f0, 0x198(%r1)
	lfs %f0, 0x54(%r23)
	stfs %f0, 0x19c(%r1)
	lwz %r0, 0x58(%r23)
	stw %r0, 0x1a0(%r1)
	lwz %r0, 0x5c(%r23)
	stw %r0, 0x1a4(%r1)
	lwz %r3, 0x60(%r23)
	stw %r3, 0x1a8(%r1)
	stfs %f29, 0x38(%r1)
	stfs %f29, 0x3c(%r1)
	stfs %f29, 0x40(%r1)
	stfs %f29, 0x44(%r1)
	stw %r31, 0x58(%r1)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	lfs %f1, 0x40(%r1)
	lfs %f0, 0x38(%r1)
	fsubs %f0, %f1, %f0
	fcmpo %cr0, %f0, %f29
	ble- _afdc8
	lfs %f2, 0x174(%r1)
	lfs %f1, 0x74(%r1)
	lfs %f0, 0x4c(%r23)
	fsubs %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _afdc8
	stw %r28, 0x48(%r1)
	mr %r3, %r31
	li %r26, 0xa
	li %r4, 0x0
	bl sub_abb50
	b _b03ac
_afdc8:
	addi %r3, %r1, 0x148
	li %r4, 0x0
	bl sub_abb50
_afdd4:
	lwz %r3, 0x60(%r23)
	clrlwi  %r4, %r26, 16
	addi %r5, %r1, 0x6c
	lwz %r12, 0x0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x3
	bne- _b0250
	lwz %r0, 0x5c(%r23)
	clrlwi  %r3, %r0, 30
	cmplwi %r3, 0x1
	bne- _b000c
	lwz %r3, 0x70(%r1)
	stw %r3, 0xc(%r1)
	stfs %f29, 0x28(%r1)
	stfs %f29, 0x2c(%r1)
	stfs %f29, 0x30(%r1)
	stfs %f29, 0x34(%r1)
	lbz %r4, 0x0(%r23)
	stb %r4, 0xe4(%r1)
	lbz %r4, 0x1(%r23)
	stb %r4, 0xe5(%r1)
	lbz %r4, 0x2(%r23)
	stb %r4, 0xe6(%r1)
	lbz %r4, 0x3(%r23)
	stb %r4, 0xe7(%r1)
	lbz %r4, 0x4(%r23)
	stb %r4, 0xe8(%r1)
	lbz %r4, 0x5(%r23)
	stb %r4, 0xe9(%r1)
	lbz %r4, 0x6(%r23)
	stb %r4, 0xea(%r1)
	lbz %r4, 0x7(%r23)
	stb %r4, 0xeb(%r1)
	lbz %r4, 0x8(%r23)
	stb %r4, 0xec(%r1)
	lbz %r4, 0x9(%r23)
	stb %r4, 0xed(%r1)
	lbz %r4, 0xa(%r23)
	stb %r4, 0xee(%r1)
	lbz %r4, 0xb(%r23)
	stb %r4, 0xef(%r1)
	lbz %r4, 0xc(%r23)
	stb %r4, 0xf0(%r1)
	lbz %r4, 0xd(%r23)
	stb %r4, 0xf1(%r1)
	lbz %r4, 0xe(%r23)
	stb %r4, 0xf2(%r1)
	lbz %r4, 0xf(%r23)
	stb %r4, 0xf3(%r1)
	lbz %r4, 0x10(%r23)
	stb %r4, 0xf4(%r1)
	lbz %r4, 0x11(%r23)
	stb %r4, 0xf5(%r1)
	lbz %r4, 0x12(%r23)
	stb %r4, 0xf6(%r1)
	lbz %r4, 0x13(%r23)
	stb %r4, 0xf7(%r1)
	lbz %r4, 0x14(%r23)
	stb %r4, 0xf8(%r1)
	lbz %r4, 0x15(%r23)
	stb %r4, 0xf9(%r1)
	lbz %r4, 0x16(%r23)
	stb %r4, 0xfa(%r1)
	lbz %r4, 0x17(%r23)
	stb %r4, 0xfb(%r1)
	lbz %r4, 0x18(%r23)
	stb %r4, 0xfc(%r1)
	lbz %r4, 0x19(%r23)
	stb %r4, 0xfd(%r1)
	lbz %r4, 0x1a(%r23)
	stb %r4, 0xfe(%r1)
	lbz %r4, 0x1b(%r23)
	stb %r4, 0xff(%r1)
	lbz %r4, 0x1c(%r23)
	stb %r4, 0x100(%r1)
	lbz %r4, 0x1d(%r23)
	stb %r4, 0x101(%r1)
	lbz %r4, 0x1e(%r23)
	stb %r4, 0x102(%r1)
	lbz %r4, 0x1f(%r23)
	stb %r4, 0x103(%r1)
	lwz %r4, 0x20(%r23)
	stw %r4, 0x104(%r1)
	lwz %r5, 0x24(%r23)
	lwz %r4, 0x28(%r23)
	stw %r4, 0x10c(%r1)
	stw %r5, 0x108(%r1)
	lwz %r5, 0x2c(%r23)
	lwz %r4, 0x30(%r23)
	stw %r4, 0x114(%r1)
	stw %r5, 0x110(%r1)
	lwz %r4, 0x34(%r23)
	stw %r4, 0x118(%r1)
	lwz %r5, 0x38(%r23)
	lwz %r4, 0x3c(%r23)
	stw %r4, 0x120(%r1)
	stw %r5, 0x11c(%r1)
	lbz %r4, 0x40(%r23)
	stb %r4, 0x124(%r1)
	lbz %r4, 0x41(%r23)
	stb %r4, 0x125(%r1)
	lbz %r4, 0x42(%r23)
	stb %r4, 0x126(%r1)
	lbz %r4, 0x43(%r23)
	stb %r4, 0x127(%r1)
	lfs %f0, 0x44(%r23)
	stfs %f0, 0x128(%r1)
	lwz %r4, 0x48(%r23)
	subf %r6, %r24, %r3
	stw %r4, 0x12c(%r1)
	addi %r3, %r1, 0xe4
	addi %r4, %r1, 0x28
	addi %r5, %r1, 0xc
	lfs %f0, 0x4c(%r23)
	subf %r6, %r6, %r25
	stfs %f0, 0x130(%r1)
	lfs %f0, 0x50(%r23)
	stfs %f0, 0x134(%r1)
	lfs %f0, 0x54(%r23)
	stfs %f0, 0x138(%r1)
	lwz %r7, 0x58(%r23)
	stw %r7, 0x13c(%r1)
	stw %r0, 0x140(%r1)
	lwz %r0, 0x60(%r23)
	stw %r0, 0x144(%r1)
	stfs %f29, 0x110(%r1)
	stfs %f29, 0x114(%r1)
	bl sub_af290
	lfs %f1, 0x30(%r1)
	addi %r3, %r1, 0xe4
	lfs %f0, 0x28(%r1)
	li %r4, 0x0
	fsubs %f27, %f1, %f0
	bl sub_abb50
	fsubs %f1, %f25, %f27
	lfs %f0, 0x74(%r1)
	fmuls %f1, %f1, %f30
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r23)
	b _b023c
_b000c:
	cmplwi %r3, 0x2
	bne- _b0214
	lwz %r3, 0x70(%r1)
	stw %r3, 0x8(%r1)
	stfs %f29, 0x18(%r1)
	stfs %f29, 0x1c(%r1)
	stfs %f29, 0x20(%r1)
	stfs %f29, 0x24(%r1)
	lbz %r4, 0x0(%r23)
	stb %r4, 0x80(%r1)
	lbz %r4, 0x1(%r23)
	stb %r4, 0x81(%r1)
	lbz %r4, 0x2(%r23)
	stb %r4, 0x82(%r1)
	lbz %r4, 0x3(%r23)
	stb %r4, 0x83(%r1)
	lbz %r4, 0x4(%r23)
	stb %r4, 0x84(%r1)
	lbz %r4, 0x5(%r23)
	stb %r4, 0x85(%r1)
	lbz %r4, 0x6(%r23)
	stb %r4, 0x86(%r1)
	lbz %r4, 0x7(%r23)
	stb %r4, 0x87(%r1)
	lbz %r4, 0x8(%r23)
	stb %r4, 0x88(%r1)
	lbz %r4, 0x9(%r23)
	stb %r4, 0x89(%r1)
	lbz %r4, 0xa(%r23)
	stb %r4, 0x8a(%r1)
	lbz %r4, 0xb(%r23)
	stb %r4, 0x8b(%r1)
	lbz %r4, 0xc(%r23)
	stb %r4, 0x8c(%r1)
	lbz %r4, 0xd(%r23)
	stb %r4, 0x8d(%r1)
	lbz %r4, 0xe(%r23)
	stb %r4, 0x8e(%r1)
	lbz %r4, 0xf(%r23)
	stb %r4, 0x8f(%r1)
	lbz %r4, 0x10(%r23)
	stb %r4, 0x90(%r1)
	lbz %r4, 0x11(%r23)
	stb %r4, 0x91(%r1)
	lbz %r4, 0x12(%r23)
	stb %r4, 0x92(%r1)
	lbz %r4, 0x13(%r23)
	stb %r4, 0x93(%r1)
	lbz %r4, 0x14(%r23)
	stb %r4, 0x94(%r1)
	lbz %r4, 0x15(%r23)
	stb %r4, 0x95(%r1)
	lbz %r4, 0x16(%r23)
	stb %r4, 0x96(%r1)
	lbz %r4, 0x17(%r23)
	stb %r4, 0x97(%r1)
	lbz %r4, 0x18(%r23)
	stb %r4, 0x98(%r1)
	lbz %r4, 0x19(%r23)
	stb %r4, 0x99(%r1)
	lbz %r4, 0x1a(%r23)
	stb %r4, 0x9a(%r1)
	lbz %r4, 0x1b(%r23)
	stb %r4, 0x9b(%r1)
	lbz %r4, 0x1c(%r23)
	stb %r4, 0x9c(%r1)
	lbz %r4, 0x1d(%r23)
	stb %r4, 0x9d(%r1)
	lbz %r4, 0x1e(%r23)
	stb %r4, 0x9e(%r1)
	lbz %r4, 0x1f(%r23)
	stb %r4, 0x9f(%r1)
	lwz %r4, 0x20(%r23)
	stw %r4, 0xa0(%r1)
	lwz %r5, 0x24(%r23)
	lwz %r4, 0x28(%r23)
	stw %r4, 0xa8(%r1)
	stw %r5, 0xa4(%r1)
	lwz %r5, 0x2c(%r23)
	lwz %r4, 0x30(%r23)
	stw %r4, 0xb0(%r1)
	stw %r5, 0xac(%r1)
	lwz %r4, 0x34(%r23)
	stw %r4, 0xb4(%r1)
	lwz %r5, 0x38(%r23)
	lwz %r4, 0x3c(%r23)
	stw %r4, 0xbc(%r1)
	stw %r5, 0xb8(%r1)
	lbz %r4, 0x40(%r23)
	stb %r4, 0xc0(%r1)
	lbz %r4, 0x41(%r23)
	stb %r4, 0xc1(%r1)
	lbz %r4, 0x42(%r23)
	stb %r4, 0xc2(%r1)
	lbz %r4, 0x43(%r23)
	stb %r4, 0xc3(%r1)
	lfs %f0, 0x44(%r23)
	stfs %f0, 0xc4(%r1)
	lwz %r4, 0x48(%r23)
	subf %r6, %r24, %r3
	stw %r4, 0xc8(%r1)
	addi %r3, %r1, 0x80
	addi %r4, %r1, 0x18
	addi %r5, %r1, 0x8
	lfs %f0, 0x4c(%r23)
	subf %r6, %r6, %r25
	stfs %f0, 0xcc(%r1)
	lfs %f0, 0x50(%r23)
	stfs %f0, 0xd0(%r1)
	lfs %f0, 0x54(%r23)
	stfs %f0, 0xd4(%r1)
	lwz %r7, 0x58(%r23)
	stw %r7, 0xd8(%r1)
	stw %r0, 0xdc(%r1)
	lwz %r0, 0x60(%r23)
	stw %r0, 0xe0(%r1)
	stfs %f29, 0xac(%r1)
	stfs %f29, 0xb0(%r1)
	bl sub_af290
	lfs %f1, 0x20(%r1)
	addi %r3, %r1, 0x80
	lfs %f0, 0x18(%r1)
	li %r4, 0x0
	fsubs %f27, %f1, %f0
	bl sub_abb50
	fsubs %f1, %f25, %f27
	lfs %f0, 0x74(%r1)
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r23)
	b _b023c
_b0214:
	lfs %f1, 0x2c(%r23)
	lfs %f0, 0x74(%r1)
	fsubs %f1, %f1, %f0
	fcmpo %cr0, %f25, %f1
	bge- _b022c
	b _b0230
_b022c:
	fmr  %f1, %f25
_b0230:
	lfs %f0, 0x74(%r1)
	fmr  %f25, %f1
	stfs %f0, 0x2c(%r23)
_b023c:
	cmpwi %r30, 0x0
	beq- _b0248
	lwz %r27, 0x48(%r1)
_b0248:
	li %r29, 0x0
	b _b0278
_b0250:
	cmpwi %r3, 0x1
	bne- _b0260
	li %r29, 0x0
	b _b0278
_b0260:
	cmpwi %r3, 0x2
	bne- _b0270
	li %r29, 0x1
	b _b0278
_b0270:
	cmpwi %r3, 0x4
	beq- _b03bc
_b0278:
	lwz %r0, 0x70(%r1)
	stw %r0, 0x48(%r1)
	b _b038c
_b0284:
	cmpwi %r30, 0x0
	lfs %f27, 0x30(%r23)
	beq- _b0320
	cmplw %r28, %r27
	beq- _b0320
	cmpwi %r29, 0x0
	lfs %f24, 0x2c(%r23)
	beq- _b02ac
	lfs %f23, 0x50(%r23)
	b _b02b0
_b02ac:
	lfs %f23, -0x6c9c(%r2)
_b02b0:
	lbz %r0, 0x43(%r23)
	cmpwi %r0, 0x0
	beq- _b02c4
	lfs %f2, 0x44(%r23)
	b _b02f8
_b02c4:
	lwz %r3, 0x48(%r23)
	clrlwi  %r4, %r26, 16
	lfs %f22, 0x24(%r23)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x48(%r12)
	mtctr %r12
	bctrl 
	xoris %r0, %r3, 0x8000
	stw %r0, 0x1b4(%r1)
	stw %r22, 0x1b0(%r1)
	lfd %f0, 0x1b0(%r1)
	fsubs %f0, %f0, %f31
	fmuls %f2, %f0, %f22
_b02f8:
	lfs %f1, 0x14(%r1)
	lfs %f0, 0x4c(%r23)
	fsubs %f1, %f24, %f1
	fadds %f1, %f23, %f1
	fadds %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _b0320
	stw %r28, 0x48(%r1)
	li %r26, 0xa
	b _b03ac
_b0320:
	cmpwi %r29, 0x0
	beq- _b0338
	lfs %f1, 0x50(%r23)
	lfs %f0, 0x2c(%r23)
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r23)
_b0338:
	lwz %r3, 0x48(%r23)
	li %r29, 0x1
	lfs %f22, 0x28(%r23)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x1c(%r12)
	mtctr %r12
	bctrl 
	neg %r0, %r3
	stw %r22, 0x1b0(%r1)
	xoris %r0, %r0, 0x8000
	lfs %f0, 0x30(%r23)
	stw %r0, 0x1b4(%r1)
	mr %r3, %r23
	clrlwi  %r4, %r26, 16
	lfd %f1, 0x1b0(%r1)
	fsubs %f1, %f1, %f31
	fmuls %f1, %f1, %f22
	fadds %f0, %f0, %f1
	stfs %f0, 0x30(%r23)
	bl sub_ac7e0
	stfs %f27, 0x30(%r23)
_b038c:
	cmpwi %r30, 0x0
	beq- _b0398
	lwz %r28, 0x48(%r1)
_b0398:
	addi %r3, %r1, 0x48
	addi %r12, %r1, 0x4c
	bl sub_19630
	ori %r0, %r0, 0x0
	mr %r26, %r3
_b03ac:
	lwz %r7, 0x48(%r1)
	subf %r0, %r24, %r7
	cmpw %r0, %r25
	ble+ _afb64
_b03bc:
	lfs %f1, 0x2c(%r23)
	lfs %f0, 0x74(%r1)
	fsubs %f1, %f1, %f0
	fcmpo %cr0, %f25, %f1
	bge- _b03d4
	b _b03d8
_b03d4:
	fmr  %f1, %f25
_b03d8:
	lwz %r0, 0x5c(%r23)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x100
	beq- _b03f0
	cmplwi %r0, 0x200
	bne- _b03f8
_b03f0:
	stfs %f28, 0x30(%r23)
	b _b0404
_b03f8:
	lfs %f0, 0x30(%r23)
	fadds %f0, %f0, %f26
	stfs %f0, 0x30(%r23)
_b0404:
	psq_l 31, 0x278, 1, 0, 0
	lfd %f31, 0x270(%r1)
	psq_l 30, 0x268, 1, 0, 0
	lfd %f30, 0x260(%r1)
	psq_l 29, 0x258, 1, 0, 0
	lfd %f29, 0x250(%r1)
	psq_l 28, 0x248, 1, 0, 0
	lfd %f28, 0x240(%r1)
	psq_l 27, 0x238, 1, 0, 0
	lfd %f27, 0x230(%r1)
	psq_l 26, 0x228, 1, 0, 0
	lfd %f26, 0x220(%r1)
	psq_l 25, 0x218, 1, 0, 0
	lfd %f25, 0x210(%r1)
	psq_l 24, 0x208, 1, 0, 0
	lfd %f24, 0x200(%r1)
	psq_l 23, 0x1f8, 1, 0, 0
	lfd %f23, 0x1f0(%r1)
	psq_l 22, 0x1e8, 1, 0, 0
	addi %r11, %r1, 0x1e0
	lfd %f22, 0x1e0(%r1)
	bl sub_197b8
	lwz %r0, 0x284(%r1)
	mtlr %r0
	addi %r1, %r1, 0x280
	blr

	.space 4

	.global sub_b0470
sub_b0470: # 0x800b7730
	stwu %r1, -0x1b0(%r1)
	mflr %r0
	stw %r0, 0x1b4(%r1)
	stfd %f31, 0x1a0(%r1)
	psq_st 31, 0x1a8, 1, 0, 0
	stfd %f30, 0x190(%r1)
	psq_st 30, 0x198, 1, 0, 0
	addi %r11, %r1, 0x190
	bl sub_19780
	lwz %r0, 0x5c(%r3)
	mr %r28, %r4
	lfs %f31, -0x6c9c(%r2)
	mr %r27, %r3
	andi. %r4, %r0, 0x333
	mr %r29, %r5
	fmr  %f2, %f31
	mr %r30, %r6
	mr %r31, %r7
	cmplwi %r4, 0x300
	beq- _b06ac
	cmpwi %r4, 0x0
	beq- _b06ac
	stfs %f31, 0x30(%r1)
	stfs %f31, 0x34(%r1)
	stfs %f31, 0x38(%r1)
	stfs %f31, 0x3c(%r1)
	lbz %r4, 0x0(%r3)
	stb %r4, 0x108(%r1)
	lbz %r4, 0x1(%r3)
	stb %r4, 0x109(%r1)
	lbz %r4, 0x2(%r3)
	stb %r4, 0x10a(%r1)
	lbz %r4, 0x3(%r3)
	stb %r4, 0x10b(%r1)
	lbz %r4, 0x4(%r3)
	stb %r4, 0x10c(%r1)
	lbz %r4, 0x5(%r3)
	stb %r4, 0x10d(%r1)
	lbz %r4, 0x6(%r3)
	stb %r4, 0x10e(%r1)
	lbz %r4, 0x7(%r3)
	stb %r4, 0x10f(%r1)
	lbz %r4, 0x8(%r3)
	stb %r4, 0x110(%r1)
	lbz %r4, 0x9(%r3)
	stb %r4, 0x111(%r1)
	lbz %r4, 0xa(%r3)
	stb %r4, 0x112(%r1)
	lbz %r4, 0xb(%r3)
	stb %r4, 0x113(%r1)
	lbz %r4, 0xc(%r3)
	stb %r4, 0x114(%r1)
	lbz %r4, 0xd(%r3)
	stb %r4, 0x115(%r1)
	lbz %r4, 0xe(%r3)
	stb %r4, 0x116(%r1)
	lbz %r4, 0xf(%r3)
	stb %r4, 0x117(%r1)
	lbz %r4, 0x10(%r3)
	stb %r4, 0x118(%r1)
	lbz %r4, 0x11(%r3)
	stb %r4, 0x119(%r1)
	lbz %r4, 0x12(%r3)
	stb %r4, 0x11a(%r1)
	lbz %r4, 0x13(%r3)
	stb %r4, 0x11b(%r1)
	lbz %r4, 0x14(%r3)
	stb %r4, 0x11c(%r1)
	lbz %r4, 0x15(%r3)
	stb %r4, 0x11d(%r1)
	lbz %r4, 0x16(%r3)
	stb %r4, 0x11e(%r1)
	lbz %r4, 0x17(%r3)
	stb %r4, 0x11f(%r1)
	lbz %r4, 0x18(%r3)
	stb %r4, 0x120(%r1)
	lbz %r4, 0x19(%r3)
	stb %r4, 0x121(%r1)
	lbz %r4, 0x1a(%r3)
	stb %r4, 0x122(%r1)
	lbz %r4, 0x1b(%r3)
	stb %r4, 0x123(%r1)
	lbz %r4, 0x1c(%r3)
	stb %r4, 0x124(%r1)
	lbz %r4, 0x1d(%r3)
	stb %r4, 0x125(%r1)
	lbz %r4, 0x1e(%r3)
	stb %r4, 0x126(%r1)
	lbz %r4, 0x1f(%r3)
	stb %r4, 0x127(%r1)
	lwz %r4, 0x20(%r3)
	stw %r4, 0x128(%r1)
	lwz %r5, 0x24(%r3)
	lwz %r4, 0x28(%r3)
	stw %r4, 0x130(%r1)
	stw %r5, 0x12c(%r1)
	lwz %r5, 0x2c(%r3)
	lwz %r4, 0x30(%r3)
	stw %r4, 0x138(%r1)
	stw %r5, 0x134(%r1)
	lwz %r4, 0x34(%r3)
	stw %r4, 0x13c(%r1)
	lwz %r5, 0x38(%r3)
	lwz %r4, 0x3c(%r3)
	stw %r4, 0x144(%r1)
	stw %r5, 0x140(%r1)
	lbz %r4, 0x40(%r3)
	stb %r4, 0x148(%r1)
	lbz %r4, 0x41(%r3)
	stb %r4, 0x149(%r1)
	lbz %r4, 0x42(%r3)
	stb %r4, 0x14a(%r1)
	lbz %r4, 0x43(%r3)
	stb %r4, 0x14b(%r1)
	lfs %f0, 0x44(%r3)
	stfs %f0, 0x14c(%r1)
	lwz %r4, 0x48(%r3)
	stw %r4, 0x150(%r1)
	lfs %f0, 0x4c(%r3)
	mr %r5, %r30
	stfs %f0, 0x154(%r1)
	mr %r6, %r31
	addi %r4, %r1, 0x30
	lfs %f0, 0x50(%r3)
	stfs %f0, 0x158(%r1)
	lfs %f0, 0x54(%r3)
	stfs %f0, 0x15c(%r1)
	lwz %r7, 0x58(%r3)
	stw %r7, 0x160(%r1)
	stw %r0, 0x164(%r1)
	lwz %r0, 0x60(%r3)
	addi %r3, %r1, 0x108
	stw %r0, 0x168(%r1)
	bl sub_af930
	addi %r3, %r1, 0x108
	li %r4, 0x0
	bl sub_abb50
	lfs %f3, 0x30(%r1)
	lfs %f2, 0x38(%r1)
	lfs %f1, 0x34(%r1)
	lfs %f0, 0x3c(%r1)
	fadds %f31, %f3, %f2
	fadds %f2, %f1, %f0
_b06ac:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 26, 27
	cmplwi %r0, 0x10
	bne- _b06d4
	lfs %f1, -0x6c90(%r2)
	lfs %f0, 0x0(%r28)
	fmuls %f1, %f31, %f1
	fsubs %f0, %f0, %f1
	stfs %f0, 0x0(%r28)
	b _b06e8
_b06d4:
	cmplwi %r0, 0x20
	bne- _b06e8
	lfs %f0, 0x0(%r28)
	fsubs %f0, %f0, %f31
	stfs %f0, 0x0(%r28)
_b06e8:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x100
	bne- _b0710
	lfs %f1, -0x6c90(%r2)
	lfs %f0, 0x0(%r29)
	fmuls %f1, %f2, %f1
	fsubs %f0, %f0, %f1
	stfs %f0, 0x0(%r29)
	b _b0724
_b0710:
	cmplwi %r0, 0x200
	bne- _b0724
	lfs %f0, 0x0(%r29)
	fsubs %f0, %f0, %f2
	stfs %f0, 0x0(%r29)
_b0724:
	lwz %r0, 0x5c(%r27)
	clrlwi  %r3, %r0, 30
	cmplwi %r3, 0x1
	bne- _b0938
	lfs %f1, -0x6c9c(%r2)
	stw %r30, 0xc(%r1)
	stfs %f1, 0x20(%r1)
	stfs %f1, 0x24(%r1)
	stfs %f1, 0x28(%r1)
	stfs %f1, 0x2c(%r1)
	lbz %r3, 0x0(%r27)
	stb %r3, 0xa4(%r1)
	lbz %r3, 0x1(%r27)
	stb %r3, 0xa5(%r1)
	lbz %r3, 0x2(%r27)
	stb %r3, 0xa6(%r1)
	lbz %r3, 0x3(%r27)
	stb %r3, 0xa7(%r1)
	lbz %r3, 0x4(%r27)
	stb %r3, 0xa8(%r1)
	lbz %r3, 0x5(%r27)
	stb %r3, 0xa9(%r1)
	lbz %r3, 0x6(%r27)
	stb %r3, 0xaa(%r1)
	lbz %r3, 0x7(%r27)
	stb %r3, 0xab(%r1)
	lbz %r3, 0x8(%r27)
	stb %r3, 0xac(%r1)
	lbz %r3, 0x9(%r27)
	stb %r3, 0xad(%r1)
	lbz %r3, 0xa(%r27)
	stb %r3, 0xae(%r1)
	lbz %r3, 0xb(%r27)
	stb %r3, 0xaf(%r1)
	lbz %r3, 0xc(%r27)
	stb %r3, 0xb0(%r1)
	lbz %r3, 0xd(%r27)
	stb %r3, 0xb1(%r1)
	lbz %r3, 0xe(%r27)
	stb %r3, 0xb2(%r1)
	lbz %r3, 0xf(%r27)
	stb %r3, 0xb3(%r1)
	lbz %r3, 0x10(%r27)
	stb %r3, 0xb4(%r1)
	lbz %r3, 0x11(%r27)
	stb %r3, 0xb5(%r1)
	lbz %r3, 0x12(%r27)
	stb %r3, 0xb6(%r1)
	lbz %r3, 0x13(%r27)
	stb %r3, 0xb7(%r1)
	lbz %r3, 0x14(%r27)
	stb %r3, 0xb8(%r1)
	lbz %r3, 0x15(%r27)
	stb %r3, 0xb9(%r1)
	lbz %r3, 0x16(%r27)
	stb %r3, 0xba(%r1)
	lbz %r3, 0x17(%r27)
	stb %r3, 0xbb(%r1)
	lbz %r3, 0x18(%r27)
	stb %r3, 0xbc(%r1)
	lbz %r3, 0x19(%r27)
	stb %r3, 0xbd(%r1)
	lbz %r3, 0x1a(%r27)
	stb %r3, 0xbe(%r1)
	lbz %r3, 0x1b(%r27)
	stb %r3, 0xbf(%r1)
	lbz %r3, 0x1c(%r27)
	stb %r3, 0xc0(%r1)
	lbz %r3, 0x1d(%r27)
	stb %r3, 0xc1(%r1)
	lbz %r3, 0x1e(%r27)
	stb %r3, 0xc2(%r1)
	lbz %r3, 0x1f(%r27)
	stb %r3, 0xc3(%r1)
	lwz %r3, 0x20(%r27)
	stw %r3, 0xc4(%r1)
	lwz %r4, 0x24(%r27)
	lwz %r3, 0x28(%r27)
	stw %r3, 0xcc(%r1)
	stw %r4, 0xc8(%r1)
	lwz %r4, 0x2c(%r27)
	lwz %r3, 0x30(%r27)
	stw %r3, 0xd4(%r1)
	stw %r4, 0xd0(%r1)
	lwz %r3, 0x34(%r27)
	stw %r3, 0xd8(%r1)
	lwz %r4, 0x38(%r27)
	lwz %r3, 0x3c(%r27)
	stw %r3, 0xe0(%r1)
	stw %r4, 0xdc(%r1)
	lbz %r3, 0x40(%r27)
	stb %r3, 0xe4(%r1)
	lbz %r3, 0x41(%r27)
	stb %r3, 0xe5(%r1)
	lbz %r3, 0x42(%r27)
	stb %r3, 0xe6(%r1)
	lbz %r3, 0x43(%r27)
	stb %r3, 0xe7(%r1)
	lfs %f0, 0x44(%r27)
	stfs %f0, 0xe8(%r1)
	lwz %r3, 0x48(%r27)
	mr %r6, %r31
	stw %r3, 0xec(%r1)
	addi %r3, %r1, 0xa4
	addi %r4, %r1, 0x20
	addi %r5, %r1, 0xc
	lfs %f0, 0x4c(%r27)
	stfs %f0, 0xf0(%r1)
	lfs %f0, 0x50(%r27)
	stfs %f0, 0xf4(%r1)
	lfs %f0, 0x54(%r27)
	stfs %f0, 0xf8(%r1)
	lwz %r7, 0x58(%r27)
	stw %r7, 0xfc(%r1)
	stw %r0, 0x100(%r1)
	lwz %r0, 0x60(%r27)
	stw %r0, 0x104(%r1)
	stfs %f1, 0xd0(%r1)
	stfs %f1, 0xd4(%r1)
	bl sub_af290
	lfs %f1, 0x28(%r1)
	addi %r3, %r1, 0xa4
	lfs %f0, 0x20(%r1)
	li %r4, 0x0
	fsubs %f30, %f1, %f0
	bl sub_abb50
	fsubs %f2, %f31, %f30
	lfs %f1, -0x6c90(%r2)
	lfs %f0, 0x0(%r28)
	fmuls %f1, %f2, %f1
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r27)
	b _b0b44
_b0938:
	cmplwi %r3, 0x2
	bne- _b0b3c
	lfs %f1, -0x6c9c(%r2)
	stw %r30, 0x8(%r1)
	stfs %f1, 0x10(%r1)
	stfs %f1, 0x14(%r1)
	stfs %f1, 0x18(%r1)
	stfs %f1, 0x1c(%r1)
	lbz %r3, 0x0(%r27)
	stb %r3, 0x40(%r1)
	lbz %r3, 0x1(%r27)
	stb %r3, 0x41(%r1)
	lbz %r3, 0x2(%r27)
	stb %r3, 0x42(%r1)
	lbz %r3, 0x3(%r27)
	stb %r3, 0x43(%r1)
	lbz %r3, 0x4(%r27)
	stb %r3, 0x44(%r1)
	lbz %r3, 0x5(%r27)
	stb %r3, 0x45(%r1)
	lbz %r3, 0x6(%r27)
	stb %r3, 0x46(%r1)
	lbz %r3, 0x7(%r27)
	stb %r3, 0x47(%r1)
	lbz %r3, 0x8(%r27)
	stb %r3, 0x48(%r1)
	lbz %r3, 0x9(%r27)
	stb %r3, 0x49(%r1)
	lbz %r3, 0xa(%r27)
	stb %r3, 0x4a(%r1)
	lbz %r3, 0xb(%r27)
	stb %r3, 0x4b(%r1)
	lbz %r3, 0xc(%r27)
	stb %r3, 0x4c(%r1)
	lbz %r3, 0xd(%r27)
	stb %r3, 0x4d(%r1)
	lbz %r3, 0xe(%r27)
	stb %r3, 0x4e(%r1)
	lbz %r3, 0xf(%r27)
	stb %r3, 0x4f(%r1)
	lbz %r3, 0x10(%r27)
	stb %r3, 0x50(%r1)
	lbz %r3, 0x11(%r27)
	stb %r3, 0x51(%r1)
	lbz %r3, 0x12(%r27)
	stb %r3, 0x52(%r1)
	lbz %r3, 0x13(%r27)
	stb %r3, 0x53(%r1)
	lbz %r3, 0x14(%r27)
	stb %r3, 0x54(%r1)
	lbz %r3, 0x15(%r27)
	stb %r3, 0x55(%r1)
	lbz %r3, 0x16(%r27)
	stb %r3, 0x56(%r1)
	lbz %r3, 0x17(%r27)
	stb %r3, 0x57(%r1)
	lbz %r3, 0x18(%r27)
	stb %r3, 0x58(%r1)
	lbz %r3, 0x19(%r27)
	stb %r3, 0x59(%r1)
	lbz %r3, 0x1a(%r27)
	stb %r3, 0x5a(%r1)
	lbz %r3, 0x1b(%r27)
	stb %r3, 0x5b(%r1)
	lbz %r3, 0x1c(%r27)
	stb %r3, 0x5c(%r1)
	lbz %r3, 0x1d(%r27)
	stb %r3, 0x5d(%r1)
	lbz %r3, 0x1e(%r27)
	stb %r3, 0x5e(%r1)
	lbz %r3, 0x1f(%r27)
	stb %r3, 0x5f(%r1)
	lwz %r3, 0x20(%r27)
	stw %r3, 0x60(%r1)
	lwz %r4, 0x24(%r27)
	lwz %r3, 0x28(%r27)
	stw %r3, 0x68(%r1)
	stw %r4, 0x64(%r1)
	lwz %r4, 0x2c(%r27)
	lwz %r3, 0x30(%r27)
	stw %r3, 0x70(%r1)
	stw %r4, 0x6c(%r1)
	lwz %r3, 0x34(%r27)
	stw %r3, 0x74(%r1)
	lwz %r4, 0x38(%r27)
	lwz %r3, 0x3c(%r27)
	stw %r3, 0x7c(%r1)
	stw %r4, 0x78(%r1)
	lbz %r3, 0x40(%r27)
	stb %r3, 0x80(%r1)
	lbz %r3, 0x41(%r27)
	stb %r3, 0x81(%r1)
	lbz %r3, 0x42(%r27)
	stb %r3, 0x82(%r1)
	lbz %r3, 0x43(%r27)
	stb %r3, 0x83(%r1)
	lfs %f0, 0x44(%r27)
	stfs %f0, 0x84(%r1)
	lwz %r3, 0x48(%r27)
	mr %r6, %r31
	stw %r3, 0x88(%r1)
	addi %r3, %r1, 0x40
	addi %r4, %r1, 0x10
	addi %r5, %r1, 0x8
	lfs %f0, 0x4c(%r27)
	stfs %f0, 0x8c(%r1)
	lfs %f0, 0x50(%r27)
	stfs %f0, 0x90(%r1)
	lfs %f0, 0x54(%r27)
	stfs %f0, 0x94(%r1)
	lwz %r7, 0x58(%r27)
	stw %r7, 0x98(%r1)
	stw %r0, 0x9c(%r1)
	lwz %r0, 0x60(%r27)
	stw %r0, 0xa0(%r1)
	stfs %f1, 0x6c(%r1)
	stfs %f1, 0x70(%r1)
	bl sub_af290
	lfs %f1, 0x18(%r1)
	addi %r3, %r1, 0x40
	lfs %f0, 0x10(%r1)
	li %r4, 0x0
	fsubs %f30, %f1, %f0
	bl sub_abb50
	fsubs %f1, %f31, %f30
	lfs %f0, 0x0(%r28)
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r27)
	b _b0b44
_b0b3c:
	lfs %f0, 0x0(%r28)
	stfs %f0, 0x2c(%r27)
_b0b44:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x300
	bne- _b0b60
	lfs %f0, 0x0(%r29)
	stfs %f0, 0x30(%r27)
	b _b0b74
_b0b60:
	mr %r3, %r27
	bl sub_ac780
	lfs %f0, 0x0(%r29)
	fadds %f0, %f0, %f1
	stfs %f0, 0x30(%r27)
_b0b74:
	fmr  %f1, %f31
	psq_l 31, 0x1a8, 1, 0, 0
	lfd %f31, 0x1a0(%r1)
	psq_l 30, 0x198, 1, 0, 0
	lfd %f30, 0x190(%r1)
	addi %r11, %r1, 0x190
	bl sub_197cc
	lwz %r0, 0x1b4(%r1)
	mtlr %r0
	addi %r1, %r1, 0x1b0
	blr

	.global t1_b0ba0
t1_b0ba0:
	.incbin "basemain.dol", 0xb3100, 0x18
	
	.space 8

	.global sub_b0bc0
sub_b0bc0: # 0x800b7e80
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_ab7d0
	lfs %f0, -0x6c9c(%r2)
	li %r5, 0x4
	lfs %f1, -0x6ca0(%r2)
	li %r4, 0x0
	subi %r0, %r13, 0x6974
	stfs %f1, 0x4c(%r31)
	mr %r3, %r31
	stfs %f0, 0x50(%r31)
	stfs %f0, 0x54(%r31)
	stw %r5, 0x58(%r31)
	stw %r4, 0x5c(%r31)
	stw %r0, 0x60(%r31)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.space 4

	.global sub_b0c20
sub_b0c20: # 0x800b7ee0
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _b0c5c
	li %r4, 0x0
	bl sub_abb50
	cmpwi %r31, 0x0
	ble- _b0c5c
	mr %r3, %r30
	bl sub_2227d0
_b0c5c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.space 8

	.global t1_b0c80
t1_b0c80:
	.incbin "basemain.dol", 0xb31e0, 0xe50

	.global sub_b1ad0
sub_b1ad0: # 0x800b8d90
	stwu %r1, -0x110(%r1)
	mflr %r0
	stw %r0, 0x114(%r1)
	addi %r11, %r1, 0x110
	bl sub_1974c
	lbz %r15, 0x1a(%r3)
	mr %r6, %r5
	lbz %r0, 0x0(%r3)
	stw %r15, 0xc4(%r1)
	lbz %r15, 0x1b(%r3)
	stw %r0, 0x7c(%r1)
	lbz %r0, 0x18(%r3)
	stw %r15, 0x80(%r1)
	lbz %r15, 0x1c(%r3)
	stw %r15, 0x84(%r1)
	lbz %r15, 0x1d(%r3)
	stb %r0, 0x30(%r1)
	lwz %r0, 0xc4(%r1)
	stw %r15, 0x88(%r1)
	lbz %r15, 0x1e(%r3)
	stb %r0, 0x32(%r1)
	lwz %r0, 0x80(%r1)
	stw %r15, 0x8c(%r1)
	lbz %r15, 0x1f(%r3)
	stb %r0, 0x33(%r1)
	lwz %r0, 0x84(%r1)
	lfs %f0, -0x6c9c(%r2)
	stw %r15, 0x90(%r1)
	lwz %r15, 0x20(%r3)
	stb %r0, 0x34(%r1)
	lwz %r0, 0x88(%r1)
	stw %r15, 0x94(%r1)
	lwz %r15, 0x24(%r3)
	stb %r0, 0x35(%r1)
	lwz %r0, 0x8c(%r1)
	stw %r15, 0x98(%r1)
	lwz %r15, 0x28(%r3)
	stb %r0, 0x36(%r1)
	lwz %r0, 0x90(%r1)
	stw %r15, 0x9c(%r1)
	lwz %r15, 0x2c(%r3)
	stb %r0, 0x37(%r1)
	lwz %r0, 0x94(%r1)
	stw %r15, 0xa0(%r1)
	lwz %r15, 0x30(%r3)
	stw %r0, 0x38(%r1)
	lwz %r0, 0x98(%r1)
	stw %r15, 0xa4(%r1)
	lwz %r15, 0x34(%r3)
	stw %r0, 0x3c(%r1)
	lwz %r0, 0x9c(%r1)
	stw %r15, 0xa8(%r1)
	lwz %r15, 0x38(%r3)
	stw %r0, 0x40(%r1)
	lwz %r0, 0xa0(%r1)
	stw %r15, 0xac(%r1)
	lwz %r15, 0x3c(%r3)
	stw %r0, 0x44(%r1)
	lwz %r0, 0xa4(%r1)
	stw %r15, 0xb0(%r1)
	lbz %r15, 0x40(%r3)
	stw %r0, 0x48(%r1)
	lwz %r0, 0xa8(%r1)
	stw %r15, 0xb4(%r1)
	lbz %r15, 0x41(%r3)
	stw %r0, 0x4c(%r1)
	lwz %r0, 0xac(%r1)
	stw %r15, 0xb8(%r1)
	lbz %r15, 0x42(%r3)
	stw %r0, 0x50(%r1)
	lwz %r0, 0xb0(%r1)
	stw %r15, 0xbc(%r1)
	lbz %r15, 0x43(%r3)
	stw %r0, 0x54(%r1)
	lwz %r0, 0xb4(%r1)
	stw %r15, 0xc0(%r1)
	lbz %r16, 0x1(%r3)
	stb %r0, 0x58(%r1)
	lwz %r0, 0xb8(%r1)
	stb %r0, 0x59(%r1)
	lwz %r0, 0xbc(%r1)
	lbz %r17, 0x2(%r3)
	lbz %r18, 0x3(%r3)
	lbz %r19, 0x4(%r3)
	lbz %r20, 0x5(%r3)
	lbz %r21, 0x6(%r3)
	lbz %r22, 0x7(%r3)
	lbz %r23, 0x8(%r3)
	lbz %r24, 0x9(%r3)
	lbz %r25, 0xa(%r3)
	lbz %r26, 0xb(%r3)
	lbz %r27, 0xc(%r3)
	lbz %r28, 0xd(%r3)
	lbz %r29, 0xe(%r3)
	lbz %r30, 0xf(%r3)
	lbz %r31, 0x10(%r3)
	lbz %r12, 0x11(%r3)
	lbz %r11, 0x12(%r3)
	lbz %r10, 0x13(%r3)
	lbz %r9, 0x14(%r3)
	lbz %r8, 0x15(%r3)
	lbz %r7, 0x16(%r3)
	lbz %r5, 0x17(%r3)
	lbz %r14, 0x19(%r3)
	lwz %r15, 0x7c(%r1)
	stb %r0, 0x5a(%r1)
	lwz %r0, 0xc0(%r1)
	stfs %f0, 0x8(%r1)
	stfs %f0, 0xc(%r1)
	stfs %f0, 0x10(%r1)
	stfs %f0, 0x14(%r1)
	stb %r15, 0x18(%r1)
	stb %r16, 0x19(%r1)
	stb %r17, 0x1a(%r1)
	stb %r18, 0x1b(%r1)
	stb %r19, 0x1c(%r1)
	stb %r20, 0x1d(%r1)
	stb %r21, 0x1e(%r1)
	stb %r22, 0x1f(%r1)
	stb %r23, 0x20(%r1)
	stb %r24, 0x21(%r1)
	stb %r25, 0x22(%r1)
	stb %r26, 0x23(%r1)
	stb %r27, 0x24(%r1)
	stb %r28, 0x25(%r1)
	stb %r29, 0x26(%r1)
	stb %r30, 0x27(%r1)
	stb %r31, 0x28(%r1)
	stb %r12, 0x29(%r1)
	stb %r11, 0x2a(%r1)
	stb %r10, 0x2b(%r1)
	stb %r9, 0x2c(%r1)
	stb %r8, 0x2d(%r1)
	stb %r7, 0x2e(%r1)
	stb %r5, 0x2f(%r1)
	stb %r14, 0x31(%r1)
	stb %r0, 0x5b(%r1)
	lfs %f3, 0x44(%r3)
	mr %r5, %r4
	lwz %r9, 0x48(%r3)
	addi %r4, %r1, 0x8
	lfs %f2, 0x4c(%r3)
	lfs %f1, 0x50(%r3)
	lfs %f0, 0x54(%r3)
	lwz %r8, 0x58(%r3)
	lwz %r7, 0x5c(%r3)
	lwz %r0, 0x60(%r3)
	addi %r3, %r1, 0x18
	stfs %f3, 0x5c(%r1)
	stw %r9, 0x60(%r1)
	stfs %f2, 0x64(%r1)
	stfs %f1, 0x68(%r1)
	stfs %f0, 0x6c(%r1)
	stw %r8, 0x70(%r1)
	stw %r7, 0x74(%r1)
	stw %r0, 0x78(%r1)
	bl sub_b34d0
	addi %r3, %r1, 0x18
	li %r4, 0x0
	bl sub_abb50
	lfs %f1, 0x10(%r1)
	addi %r11, %r1, 0x110
	lfs %f0, 0x8(%r1)
	fsubs %f1, %f1, %f0
	bl sub_19798
	lwz %r0, 0x114(%r1)
	mtlr %r0
	addi %r1, %r1, 0x110
	blr

	.space 12

	.global sub_b1d80
sub_b1d80: # 0x800b9040
	stwu %r1, -0x110(%r1)
	mflr %r0
	stw %r0, 0x114(%r1)
	addi %r11, %r1, 0x110
	bl sub_1974c
	lbz %r15, 0x1a(%r3)
	mr %r6, %r5
	lbz %r0, 0x0(%r3)
	stw %r15, 0xc4(%r1)
	lbz %r15, 0x1b(%r3)
	stw %r0, 0x7c(%r1)
	lbz %r0, 0x18(%r3)
	stw %r15, 0x80(%r1)
	lbz %r15, 0x1c(%r3)
	stw %r15, 0x84(%r1)
	lbz %r15, 0x1d(%r3)
	stb %r0, 0x30(%r1)
	lwz %r0, 0xc4(%r1)
	stw %r15, 0x88(%r1)
	lbz %r15, 0x1e(%r3)
	stb %r0, 0x32(%r1)
	lwz %r0, 0x80(%r1)
	stw %r15, 0x8c(%r1)
	lbz %r15, 0x1f(%r3)
	stb %r0, 0x33(%r1)
	lwz %r0, 0x84(%r1)
	lfs %f0, -0x6c9c(%r2)
	stw %r15, 0x90(%r1)
	lwz %r15, 0x20(%r3)
	stb %r0, 0x34(%r1)
	lwz %r0, 0x88(%r1)
	stw %r15, 0x94(%r1)
	lwz %r15, 0x24(%r3)
	stb %r0, 0x35(%r1)
	lwz %r0, 0x8c(%r1)
	stw %r15, 0x98(%r1)
	lwz %r15, 0x28(%r3)
	stb %r0, 0x36(%r1)
	lwz %r0, 0x90(%r1)
	stw %r15, 0x9c(%r1)
	lwz %r15, 0x2c(%r3)
	stb %r0, 0x37(%r1)
	lwz %r0, 0x94(%r1)
	stw %r15, 0xa0(%r1)
	lwz %r15, 0x30(%r3)
	stw %r0, 0x38(%r1)
	lwz %r0, 0x98(%r1)
	stw %r15, 0xa4(%r1)
	lwz %r15, 0x34(%r3)
	stw %r0, 0x3c(%r1)
	lwz %r0, 0x9c(%r1)
	stw %r15, 0xa8(%r1)
	lwz %r15, 0x38(%r3)
	stw %r0, 0x40(%r1)
	lwz %r0, 0xa0(%r1)
	stw %r15, 0xac(%r1)
	lwz %r15, 0x3c(%r3)
	stw %r0, 0x44(%r1)
	lwz %r0, 0xa4(%r1)
	stw %r15, 0xb0(%r1)
	lbz %r15, 0x40(%r3)
	stw %r0, 0x48(%r1)
	lwz %r0, 0xa8(%r1)
	stw %r15, 0xb4(%r1)
	lbz %r15, 0x41(%r3)
	stw %r0, 0x4c(%r1)
	lwz %r0, 0xac(%r1)
	stw %r15, 0xb8(%r1)
	lbz %r15, 0x42(%r3)
	stw %r0, 0x50(%r1)
	lwz %r0, 0xb0(%r1)
	stw %r15, 0xbc(%r1)
	lbz %r15, 0x43(%r3)
	stw %r0, 0x54(%r1)
	lwz %r0, 0xb4(%r1)
	stw %r15, 0xc0(%r1)
	lbz %r16, 0x1(%r3)
	stb %r0, 0x58(%r1)
	lwz %r0, 0xb8(%r1)
	stb %r0, 0x59(%r1)
	lwz %r0, 0xbc(%r1)
	lbz %r17, 0x2(%r3)
	lbz %r18, 0x3(%r3)
	lbz %r19, 0x4(%r3)
	lbz %r20, 0x5(%r3)
	lbz %r21, 0x6(%r3)
	lbz %r22, 0x7(%r3)
	lbz %r23, 0x8(%r3)
	lbz %r24, 0x9(%r3)
	lbz %r25, 0xa(%r3)
	lbz %r26, 0xb(%r3)
	lbz %r27, 0xc(%r3)
	lbz %r28, 0xd(%r3)
	lbz %r29, 0xe(%r3)
	lbz %r30, 0xf(%r3)
	lbz %r31, 0x10(%r3)
	lbz %r12, 0x11(%r3)
	lbz %r11, 0x12(%r3)
	lbz %r10, 0x13(%r3)
	lbz %r9, 0x14(%r3)
	lbz %r8, 0x15(%r3)
	lbz %r7, 0x16(%r3)
	lbz %r5, 0x17(%r3)
	lbz %r14, 0x19(%r3)
	lwz %r15, 0x7c(%r1)
	stb %r0, 0x5a(%r1)
	lwz %r0, 0xc0(%r1)
	stfs %f0, 0x8(%r1)
	stfs %f0, 0xc(%r1)
	stfs %f0, 0x10(%r1)
	stfs %f0, 0x14(%r1)
	stb %r15, 0x18(%r1)
	stb %r16, 0x19(%r1)
	stb %r17, 0x1a(%r1)
	stb %r18, 0x1b(%r1)
	stb %r19, 0x1c(%r1)
	stb %r20, 0x1d(%r1)
	stb %r21, 0x1e(%r1)
	stb %r22, 0x1f(%r1)
	stb %r23, 0x20(%r1)
	stb %r24, 0x21(%r1)
	stb %r25, 0x22(%r1)
	stb %r26, 0x23(%r1)
	stb %r27, 0x24(%r1)
	stb %r28, 0x25(%r1)
	stb %r29, 0x26(%r1)
	stb %r30, 0x27(%r1)
	stb %r31, 0x28(%r1)
	stb %r12, 0x29(%r1)
	stb %r11, 0x2a(%r1)
	stb %r10, 0x2b(%r1)
	stb %r9, 0x2c(%r1)
	stb %r8, 0x2d(%r1)
	stb %r7, 0x2e(%r1)
	stb %r5, 0x2f(%r1)
	stb %r14, 0x31(%r1)
	stb %r0, 0x5b(%r1)
	lfs %f3, 0x44(%r3)
	mr %r5, %r4
	lwz %r9, 0x48(%r3)
	addi %r4, %r1, 0x8
	lfs %f2, 0x4c(%r3)
	lfs %f1, 0x50(%r3)
	lfs %f0, 0x54(%r3)
	lwz %r8, 0x58(%r3)
	lwz %r7, 0x5c(%r3)
	lwz %r0, 0x60(%r3)
	addi %r3, %r1, 0x18
	stfs %f3, 0x5c(%r1)
	stw %r9, 0x60(%r1)
	stfs %f2, 0x64(%r1)
	stfs %f1, 0x68(%r1)
	stfs %f0, 0x6c(%r1)
	stw %r8, 0x70(%r1)
	stw %r7, 0x74(%r1)
	stw %r0, 0x78(%r1)
	bl sub_b34d0
	addi %r3, %r1, 0x18
	li %r4, 0x0
	bl sub_abb50
	lfs %f1, 0x14(%r1)
	addi %r11, %r1, 0x110
	lfs %f0, 0xc(%r1)
	fsubs %f1, %f1, %f0
	bl sub_19798
	lwz %r0, 0x114(%r1)
	mtlr %r0
	addi %r1, %r1, 0x110
	blr
	
	.space 12

	.global t1_b2030
t1_b2030:
	.incbin "basemain.dol", 0xb4590, 0x7f0

	.global sub_b2820
sub_b2820: # 0x800b9ae0
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stfd %f31, 0x80(%r1)
	psq_st 31, 0x88, 1, 0, 0
	stw %r31, 0x7c(%r1)
	lbz %r0, 0x0(%r3)
	mr %r31, %r3
	stb %r0, 0x8(%r1)
	lbz %r0, 0x1(%r3)
	stb %r0, 0x9(%r1)
	lbz %r0, 0x2(%r3)
	stb %r0, 0xa(%r1)
	lbz %r0, 0x3(%r3)
	stb %r0, 0xb(%r1)
	lbz %r0, 0x4(%r3)
	stb %r0, 0xc(%r1)
	lbz %r0, 0x5(%r3)
	stb %r0, 0xd(%r1)
	lbz %r0, 0x6(%r3)
	stb %r0, 0xe(%r1)
	lbz %r0, 0x7(%r3)
	stb %r0, 0xf(%r1)
	lbz %r0, 0x8(%r3)
	stb %r0, 0x10(%r1)
	lbz %r0, 0x9(%r3)
	stb %r0, 0x11(%r1)
	lbz %r0, 0xa(%r3)
	stb %r0, 0x12(%r1)
	lbz %r0, 0xb(%r3)
	stb %r0, 0x13(%r1)
	lbz %r0, 0xc(%r3)
	stb %r0, 0x14(%r1)
	lbz %r0, 0xd(%r3)
	stb %r0, 0x15(%r1)
	lbz %r0, 0xe(%r3)
	stb %r0, 0x16(%r1)
	lbz %r0, 0xf(%r3)
	stb %r0, 0x17(%r1)
	lbz %r0, 0x10(%r3)
	stb %r0, 0x18(%r1)
	lbz %r0, 0x11(%r3)
	stb %r0, 0x19(%r1)
	lbz %r0, 0x12(%r3)
	stb %r0, 0x1a(%r1)
	lbz %r0, 0x13(%r3)
	stb %r0, 0x1b(%r1)
	lbz %r0, 0x14(%r3)
	stb %r0, 0x1c(%r1)
	lbz %r0, 0x15(%r3)
	stb %r0, 0x1d(%r1)
	lbz %r0, 0x16(%r3)
	stb %r0, 0x1e(%r1)
	lbz %r0, 0x17(%r3)
	stb %r0, 0x1f(%r1)
	lbz %r0, 0x18(%r3)
	stb %r0, 0x20(%r1)
	lbz %r0, 0x19(%r3)
	stb %r0, 0x21(%r1)
	lbz %r0, 0x1a(%r3)
	stb %r0, 0x22(%r1)
	lbz %r0, 0x1b(%r3)
	stb %r0, 0x23(%r1)
	lbz %r0, 0x1c(%r3)
	stb %r0, 0x24(%r1)
	lbz %r0, 0x1d(%r3)
	stb %r0, 0x25(%r1)
	lbz %r0, 0x1e(%r3)
	stb %r0, 0x26(%r1)
	lbz %r0, 0x1f(%r3)
	stb %r0, 0x27(%r1)
	lwz %r0, 0x20(%r3)
	stw %r0, 0x28(%r1)
	lwz %r6, 0x24(%r3)
	lwz %r0, 0x28(%r3)
	stw %r0, 0x30(%r1)
	stw %r6, 0x2c(%r1)
	lwz %r6, 0x2c(%r3)
	lwz %r0, 0x30(%r3)
	stw %r0, 0x38(%r1)
	stw %r6, 0x34(%r1)
	lwz %r0, 0x34(%r3)
	stw %r0, 0x3c(%r1)
	lwz %r6, 0x38(%r3)
	lwz %r0, 0x3c(%r3)
	stw %r0, 0x44(%r1)
	stw %r6, 0x40(%r1)
	lbz %r0, 0x40(%r3)
	stb %r0, 0x48(%r1)
	lbz %r0, 0x41(%r3)
	stb %r0, 0x49(%r1)
	lbz %r0, 0x42(%r3)
	stb %r0, 0x4a(%r1)
	lbz %r0, 0x43(%r3)
	stb %r0, 0x4b(%r1)
	lfs %f0, 0x44(%r3)
	stfs %f0, 0x4c(%r1)
	lwz %r0, 0x48(%r3)
	stw %r0, 0x50(%r1)
	lfs %f0, 0x4c(%r3)
	stfs %f0, 0x54(%r1)
	lfs %f0, 0x50(%r3)
	stfs %f0, 0x58(%r1)
	lfs %f0, 0x54(%r3)
	stfs %f0, 0x5c(%r1)
	lwz %r0, 0x58(%r3)
	stw %r0, 0x60(%r1)
	lwz %r0, 0x5c(%r3)
	stw %r0, 0x64(%r1)
	lwz %r0, 0x60(%r3)
	addi %r3, %r1, 0x8
	stw %r0, 0x68(%r1)
	bl sub_b35f0
	lfs %f0, 0x38(%r1)
	fmr  %f31, %f1
	lfs %f2, 0x34(%r1)
	addi %r3, %r1, 0x8
	stfs %f2, 0x2c(%r31)
	li %r4, 0x0
	stfs %f0, 0x30(%r31)
	bl sub_abb50
	fmr  %f1, %f31
	psq_l 31, 0x88, 1, 0, 0
	lfd %f31, 0x80(%r1)
	lwz %r31, 0x7c(%r1)
	lwz %r0, 0x94(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr

