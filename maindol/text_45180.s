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
	.incbin "./dol.text.bin", 0x451ec, 0x8004d590 - 0x8004c4ac

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
	.incbin "./dol.text.bin", 0x46594, 0x8004e3f0 - 0x8004d854

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
	.incbin "./dol.text.bin", 0x47184, 0x8004e540 - 0x8004e444

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
	.incbin "./dol.text.bin", 0x472d4, 0x8004e690 - 0x8004e594

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
	.incbin "./dol.text.bin", 0x47424, 0x8004e790 - 0x8004e6e4

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
	.incbin "./dol.text.bin", 0x47524, 0x8004ed90 - 0x8004e7e4

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
	.incbin "./dol.text.bin", 0x48068, 0x8004f4b0 - 0x8004f328

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
	.incbin "./dol.text.bin", 0x4857c, 0x800520f0 - 0x8004f83c

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
	.incbin "./dol.text.bin", 0x4ae54, 0x80052460 - 0x80052114

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
	.incbin "./dol.text.bin", 0x4b1e0, 0x80052540 - 0x800524a0

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
	.incbin "./dol.text.bin", 0x4b2c0, 0x80052620 - 0x80052580

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
	.incbin "./dol.text.bin", 0x4b3a0, 0x800526c0 - 0x80052660

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
	.incbin "./dol.text.bin", 0x4b440, 0x80052780 - 0x80052700

	.global sub_4b4c0
sub_4b4c0: # 0x80052780
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b4d4
	b sub_19a2fc
_4b4d4:
	b _19a358
	.incbin "./dol.text.bin", 0x4b4d8, 0x800527a0 - 0x80052798

	.global sub_4b4e0
sub_4b4e0: # 0x800527a0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b4f4
	b sub_19a2fc
_4b4f4:
	b _19a358
	.incbin "./dol.text.bin", 0x4b4f8, 0x800527c0 - 0x800527b8

	.global sub_4b500
sub_4b500: # 0x800527c0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b514
	b sub_19a2fc
_4b514:
	b _19a358
	.incbin "./dol.text.bin", 0x4b518, 0x800527e0 - 0x800527d8

	.global sub_4b520
sub_4b520: # 0x800527e0
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b534
	b sub_19a2fc
_4b534:
	b _19a358
	.incbin "./dol.text.bin", 0x4b538, 0x80052800 - 0x800527f8

	.global sub_4b540
sub_4b540: # 0x80052800
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b554
	b sub_19a2fc
_4b554:
	b _19a358
	.incbin "./dol.text.bin", 0x4b558, 0x80052820 - 0x80052818

	.global sub_4b560
sub_4b560: # 0x80052820
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x0(%r3)
	beq- _4b574
	b sub_19a2fc
_4b574:
	b _19a358
	.incbin "./dol.text.bin", 0x4b578, 0x80052840 - 0x80052838

	.global sub_4b580
sub_4b580: # 0x80052840
	lwz %r3, 0x0(%r3)
	cmpwi %r4, 0x0
	lwz %r4, 0x4(%r3)
	beq- _4b594
	b sub_19a2fc
_4b594:
	b _19a358
	.incbin "./dol.text.bin", 0x4b598, 0x80052890 - 0x80052858

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
	.incbin "./dol.text.bin", 0x4b68c, 0x80052a40 - 0x8005294c

	.global sub_4b780
sub_4b780: # 0x80052a40
	lwz %r3, 0x0(%r3)
	lwz %r4, 0x4(%r3)
	b _19a32c
	

	.incbin "./dol.text.bin", 0x4b78c, 0x8007c290 - 0x80052a4c
	
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

	.incbin "./dol.text.bin", 0x75008, 0x800aeee0 - 0x8007c2c8

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
	
	.global t1_a7e1c
t1_a7e1c:
	.incbin "basemain.dol", 0xaa37c, 0x4

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
	.incbin "./dol.text.bin", 0xac568, 0x800b3900 - 0x800b3828

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
	.incbin "./dol.text.bin", 0xac6b8, 0x800b3a40 - 0x800b3978

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
	.incbin "./dol.text.bin", 0xacb8c, 0x800b3e50 - 0x800b3e4c

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
	.incbin "./dol.text.bin", 0xad014, 0x800b59e0 - 0x800b42d4

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
	.incbin "./dol.text.bin", 0xae7cc, 0x800b5a90 - 0x800b5a8c
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
	.incbin "./dol.text.bin", 0xaea00, 0x800b6550 - 0x800b5cc0

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
	.incbin "./dol.text.bin", 0xaf914, 0x800b6bf0 - 0x800b6bd4

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
	.incbin "./dol.text.bin", 0xb046c, 0x800b7730 - 0x800b772c

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
	.incbin "./dol.text.bin", 0xb0ba0, 0x800b7e80 - 0x800b7e60

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
	.incbin "./dol.text.bin", 0xb0c1c, 0x800b7ee0 - 0x800b7edc

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
	.incbin "./dol.text.bin", 0xb0c78, 0x800b8d90 - 0x800b7f38

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
	.incbin "./dol.text.bin", 0xb1d74, 0x800b9040 - 0x800b9034

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
	.incbin "./dol.text.bin", 0xb2024, 0x800b9ae0 - 0x800b92e4

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
	.incbin "./dol.text.bin", 0xb2a24, 0x800ba0f0 - 0x800b9ce4

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
	.incbin "./dol.text.bin", 0xb34b4, 0x800ba790 - 0x800ba774

	.global sub_b34d0
sub_b34d0: # 0x800ba790
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stfd %f31, 0x30(%r1)
	psq_st 31, 0x38, 1, 0, 0
	slwi  %r0, %r6, 1
	lfs %f31, -0x6c9c(%r2)
	stw %r31, 0x2c(%r1)
	add %r31, %r5, %r0
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
_b3520:
	stfs %f31, 0x10(%r1)
	mr %r3, %r29
	addi %r4, %r1, 0x10
	addi %r5, %r1, 0x8
	stfs %f31, 0x14(%r1)
	stfs %f31, 0x18(%r1)
	stfs %f31, 0x1c(%r1)
	bl sub_b2e30
	lwz %r0, 0x8(%r1)
	lfs %f1, 0x10(%r1)
	lfs %f0, 0x0(%r30)
	subf %r3, %r0, %r31
	srwi  %r0, %r3, 31
	add %r0, %r0, %r3
	fcmpo %cr0, %f0, %f1
	srawi %r6, %r0, 1
	ble- _b3568
	b _b356c
_b3568:
	fmr  %f1, %f0
_b356c:
	stfs %f1, 0x0(%r30)
	lfs %f0, 0x4(%r30)
	lfs %f1, 0x14(%r1)
	fcmpo %cr0, %f0, %f1
	ble- _b3584
	b _b3588
_b3584:
	fmr  %f1, %f0
_b3588:
	stfs %f1, 0x4(%r30)
	lfs %f0, 0x8(%r30)
	lfs %f1, 0x18(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _b35a0
	b _b35a4
_b35a0:
	fmr  %f1, %f0
_b35a4:
	stfs %f1, 0x8(%r30)
	lfs %f0, 0xc(%r30)
	lfs %f1, 0x1c(%r1)
	fcmpo %cr0, %f0, %f1
	bge- _b35bc
	b _b35c0
_b35bc:
	fmr  %f1, %f0
_b35c0:
	cmpwi %r6, 0x0
	stfs %f1, 0xc(%r30)
	bgt+ _b3520
	psq_l 31, 0x38, 1, 0, 0
	lwz %r0, 0x44(%r1)
	lfd %f31, 0x30(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_b35f0
sub_b35f0: # 0x800ba8b0
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
	mr %r23, %r4
	stfs %f0, 0x14(%r1)
	mr %r24, %r5
	lfs %f0, -0x6ca0(%r2)
	mr %r22, %r3
	lfs %f28, 0x30(%r3)
	stfs %f28, 0x10(%r1)
	lfs %f1, 0x4c(%r3)
	fcmpo %cr0, %f1, %f0
	mfcr %r29
	mr %r27, %r23
	srwi  %r29, %r29, 31
	mr %r26, %r23
	mr %r6, %r23
	mr %r7, %r24
	addi %r4, %r1, 0x14
	addi %r5, %r1, 0x10
	li %r28, 0x0
	bl sub_b4040
	lfs %f0, 0x30(%r22)
	li %r0, 0x0
	lfs %f2, 0x14(%r1)
	fmr  %f25, %f1
	stw %r0, 0x74(%r1)
	fsubs %f26, %f28, %f0
	lfs %f0, 0x10(%r1)
	addi %r3, %r1, 0x48
	stw %r0, 0x78(%r1)
	stw %r0, 0x7c(%r1)
	stw %r22, 0x6c(%r1)
	stw %r23, 0x70(%r1)
	stfs %f2, 0x74(%r1)
	stfs %f0, 0x78(%r1)
	lwz %r4, 0x48(%r22)
	bl sub_74fd0
	stw %r23, 0x48(%r1)
	addi %r3, %r1, 0x48
	addi %r12, %r1, 0x4c
	bl sub_19630
	ori %r0, %r0, 0x0
	lfs %f29, -0x6c9c(%r2)
	mr %r25, %r3
	lfs %f30, -0x6c90(%r2)
	addi %r30, %r1, 0x148
	lfd %f31, -0x6c98(%r2)
	lis %r31, 0x4330
	b _b3f74
_b3714:
	clrlwi  %r5, %r25, 16
	cmpwi %r5, 0x20
	bge- _b3e4c
	cntlzw %r0, %r28
	cmpwi %r29, 0x0
	srwi  %r6, %r0, 5
	stw %r7, 0x70(%r1)
	stw %r6, 0x7c(%r1)
	beq- _b3984
	cmpwi %r5, 0xa
	beq- _b3984
	cmplw %r27, %r26
	beq- _b3984
	lwz %r4, 0x6c(%r1)
	lwz %r3, 0x74(%r1)
	lwz %r0, 0x78(%r1)
	stw %r4, 0x58(%r1)
	stw %r7, 0x5c(%r1)
	stw %r3, 0x60(%r1)
	stw %r0, 0x64(%r1)
	stw %r6, 0x68(%r1)
	lbz %r0, 0x0(%r22)
	stb %r0, 0x148(%r1)
	lbz %r0, 0x1(%r22)
	stb %r0, 0x149(%r1)
	lbz %r0, 0x2(%r22)
	stb %r0, 0x14a(%r1)
	lbz %r0, 0x3(%r22)
	stb %r0, 0x14b(%r1)
	lbz %r0, 0x4(%r22)
	stb %r0, 0x14c(%r1)
	lbz %r0, 0x5(%r22)
	stb %r0, 0x14d(%r1)
	lbz %r0, 0x6(%r22)
	stb %r0, 0x14e(%r1)
	lbz %r0, 0x7(%r22)
	stb %r0, 0x14f(%r1)
	lbz %r0, 0x8(%r22)
	stb %r0, 0x150(%r1)
	lbz %r0, 0x9(%r22)
	stb %r0, 0x151(%r1)
	lbz %r0, 0xa(%r22)
	stb %r0, 0x152(%r1)
	lbz %r0, 0xb(%r22)
	stb %r0, 0x153(%r1)
	lbz %r0, 0xc(%r22)
	stb %r0, 0x154(%r1)
	lbz %r0, 0xd(%r22)
	stb %r0, 0x155(%r1)
	lbz %r0, 0xe(%r22)
	stb %r0, 0x156(%r1)
	lbz %r0, 0xf(%r22)
	stb %r0, 0x157(%r1)
	lbz %r0, 0x10(%r22)
	stb %r0, 0x158(%r1)
	lbz %r0, 0x11(%r22)
	stb %r0, 0x159(%r1)
	lbz %r0, 0x12(%r22)
	stb %r0, 0x15a(%r1)
	lbz %r0, 0x13(%r22)
	stb %r0, 0x15b(%r1)
	lbz %r0, 0x14(%r22)
	stb %r0, 0x15c(%r1)
	lbz %r0, 0x15(%r22)
	stb %r0, 0x15d(%r1)
	lbz %r0, 0x16(%r22)
	stb %r0, 0x15e(%r1)
	lbz %r0, 0x17(%r22)
	stb %r0, 0x15f(%r1)
	lbz %r0, 0x18(%r22)
	stb %r0, 0x160(%r1)
	lbz %r0, 0x19(%r22)
	stb %r0, 0x161(%r1)
	lbz %r0, 0x1a(%r22)
	stb %r0, 0x162(%r1)
	lbz %r0, 0x1b(%r22)
	stb %r0, 0x163(%r1)
	lbz %r0, 0x1c(%r22)
	stb %r0, 0x164(%r1)
	lbz %r0, 0x1d(%r22)
	stb %r0, 0x165(%r1)
	lbz %r0, 0x1e(%r22)
	stb %r0, 0x166(%r1)
	lbz %r0, 0x1f(%r22)
	stb %r0, 0x167(%r1)
	lwz %r0, 0x20(%r22)
	stw %r0, 0x168(%r1)
	lwz %r3, 0x24(%r22)
	lwz %r0, 0x28(%r22)
	stw %r0, 0x170(%r1)
	stw %r3, 0x16c(%r1)
	lwz %r3, 0x2c(%r22)
	lwz %r0, 0x30(%r22)
	stw %r0, 0x178(%r1)
	stw %r3, 0x174(%r1)
	lwz %r0, 0x34(%r22)
	stw %r0, 0x17c(%r1)
	lwz %r3, 0x38(%r22)
	lwz %r0, 0x3c(%r22)
	stw %r0, 0x184(%r1)
	stw %r3, 0x180(%r1)
	lbz %r0, 0x40(%r22)
	stb %r0, 0x188(%r1)
	lbz %r0, 0x41(%r22)
	stb %r0, 0x189(%r1)
	lbz %r0, 0x42(%r22)
	stb %r0, 0x18a(%r1)
	lbz %r0, 0x43(%r22)
	stb %r0, 0x18b(%r1)
	lfs %f0, 0x44(%r22)
	stfs %f0, 0x18c(%r1)
	lwz %r0, 0x48(%r22)
	addi %r4, %r1, 0x38
	stw %r0, 0x190(%r1)
	addi %r6, %r1, 0x58
	lfs %f0, 0x4c(%r22)
	stfs %f0, 0x194(%r1)
	lfs %f0, 0x50(%r22)
	stfs %f0, 0x198(%r1)
	lfs %f0, 0x54(%r22)
	stfs %f0, 0x19c(%r1)
	lwz %r0, 0x58(%r22)
	stw %r0, 0x1a0(%r1)
	lwz %r0, 0x5c(%r22)
	stw %r0, 0x1a4(%r1)
	lwz %r3, 0x60(%r22)
	stw %r3, 0x1a8(%r1)
	stfs %f29, 0x38(%r1)
	stfs %f29, 0x3c(%r1)
	stfs %f29, 0x40(%r1)
	stfs %f29, 0x44(%r1)
	stw %r30, 0x58(%r1)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	lfs %f1, 0x40(%r1)
	lfs %f0, 0x38(%r1)
	fsubs %f0, %f1, %f0
	fcmpo %cr0, %f0, %f29
	ble- _b3978
	lfs %f2, 0x174(%r1)
	lfs %f1, 0x74(%r1)
	lfs %f0, 0x4c(%r22)
	fsubs %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _b3978
	stw %r27, 0x48(%r1)
	mr %r3, %r30
	li %r25, 0xa
	li %r4, 0x0
	bl sub_abb50
	b _b3f74
_b3978:
	addi %r3, %r1, 0x148
	li %r4, 0x0
	bl sub_abb50
_b3984:
	lwz %r3, 0x60(%r22)
	clrlwi  %r4, %r25, 16
	addi %r5, %r1, 0x6c
	lwz %r12, 0x0(%r3)
	lwz %r12, 0xc(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x3
	bne- _b3e18
	lwz %r0, 0x5c(%r22)
	clrlwi  %r3, %r0, 30
	cmplwi %r3, 0x1
	bne- _b3bc8
	lwz %r3, 0x70(%r1)
	stw %r3, 0xc(%r1)
	stfs %f29, 0x28(%r1)
	stfs %f29, 0x2c(%r1)
	stfs %f29, 0x30(%r1)
	stfs %f29, 0x34(%r1)
	lbz %r4, 0x0(%r22)
	stb %r4, 0xe4(%r1)
	lbz %r4, 0x1(%r22)
	stb %r4, 0xe5(%r1)
	lbz %r4, 0x2(%r22)
	stb %r4, 0xe6(%r1)
	lbz %r4, 0x3(%r22)
	stb %r4, 0xe7(%r1)
	lbz %r4, 0x4(%r22)
	stb %r4, 0xe8(%r1)
	lbz %r4, 0x5(%r22)
	stb %r4, 0xe9(%r1)
	lbz %r4, 0x6(%r22)
	stb %r4, 0xea(%r1)
	lbz %r4, 0x7(%r22)
	stb %r4, 0xeb(%r1)
	lbz %r4, 0x8(%r22)
	stb %r4, 0xec(%r1)
	lbz %r4, 0x9(%r22)
	stb %r4, 0xed(%r1)
	lbz %r4, 0xa(%r22)
	stb %r4, 0xee(%r1)
	lbz %r4, 0xb(%r22)
	stb %r4, 0xef(%r1)
	lbz %r4, 0xc(%r22)
	stb %r4, 0xf0(%r1)
	lbz %r4, 0xd(%r22)
	stb %r4, 0xf1(%r1)
	lbz %r4, 0xe(%r22)
	stb %r4, 0xf2(%r1)
	lbz %r4, 0xf(%r22)
	stb %r4, 0xf3(%r1)
	lbz %r4, 0x10(%r22)
	stb %r4, 0xf4(%r1)
	lbz %r4, 0x11(%r22)
	stb %r4, 0xf5(%r1)
	lbz %r4, 0x12(%r22)
	stb %r4, 0xf6(%r1)
	lbz %r4, 0x13(%r22)
	stb %r4, 0xf7(%r1)
	lbz %r4, 0x14(%r22)
	stb %r4, 0xf8(%r1)
	lbz %r4, 0x15(%r22)
	stb %r4, 0xf9(%r1)
	lbz %r4, 0x16(%r22)
	stb %r4, 0xfa(%r1)
	lbz %r4, 0x17(%r22)
	stb %r4, 0xfb(%r1)
	lbz %r4, 0x18(%r22)
	stb %r4, 0xfc(%r1)
	lbz %r4, 0x19(%r22)
	stb %r4, 0xfd(%r1)
	lbz %r4, 0x1a(%r22)
	stb %r4, 0xfe(%r1)
	lbz %r4, 0x1b(%r22)
	stb %r4, 0xff(%r1)
	lbz %r4, 0x1c(%r22)
	stb %r4, 0x100(%r1)
	lbz %r4, 0x1d(%r22)
	stb %r4, 0x101(%r1)
	lbz %r4, 0x1e(%r22)
	stb %r4, 0x102(%r1)
	lbz %r4, 0x1f(%r22)
	stb %r4, 0x103(%r1)
	lwz %r4, 0x20(%r22)
	stw %r4, 0x104(%r1)
	lwz %r5, 0x24(%r22)
	lwz %r4, 0x28(%r22)
	stw %r4, 0x10c(%r1)
	stw %r5, 0x108(%r1)
	lwz %r5, 0x2c(%r22)
	lwz %r4, 0x30(%r22)
	stw %r4, 0x114(%r1)
	stw %r5, 0x110(%r1)
	lwz %r4, 0x34(%r22)
	stw %r4, 0x118(%r1)
	lwz %r5, 0x38(%r22)
	lwz %r4, 0x3c(%r22)
	stw %r4, 0x120(%r1)
	stw %r5, 0x11c(%r1)
	lbz %r4, 0x40(%r22)
	stb %r4, 0x124(%r1)
	lbz %r4, 0x41(%r22)
	stb %r4, 0x125(%r1)
	lbz %r4, 0x42(%r22)
	stb %r4, 0x126(%r1)
	lbz %r4, 0x43(%r22)
	stb %r4, 0x127(%r1)
	lfs %f0, 0x44(%r22)
	stfs %f0, 0x128(%r1)
	lwz %r5, 0x48(%r22)
	subf %r4, %r23, %r3
	stw %r5, 0x12c(%r1)
	srwi  %r3, %r4, 31
	add %r4, %r3, %r4
	addi %r5, %r1, 0xc
	lfs %f0, 0x4c(%r22)
	srawi %r6, %r4, 1
	stfs %f0, 0x130(%r1)
	addi %r3, %r1, 0xe4
	addi %r4, %r1, 0x28
	subf %r6, %r6, %r24
	lfs %f0, 0x50(%r22)
	stfs %f0, 0x134(%r1)
	lfs %f0, 0x54(%r22)
	stfs %f0, 0x138(%r1)
	lwz %r7, 0x58(%r22)
	stw %r7, 0x13c(%r1)
	stw %r0, 0x140(%r1)
	lwz %r0, 0x60(%r22)
	stw %r0, 0x144(%r1)
	stfs %f29, 0x110(%r1)
	stfs %f29, 0x114(%r1)
	bl sub_b2e30
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
	stfs %f0, 0x2c(%r22)
	b _b3e04
_b3bc8:
	cmplwi %r3, 0x2
	bne- _b3ddc
	lwz %r3, 0x70(%r1)
	stw %r3, 0x8(%r1)
	stfs %f29, 0x18(%r1)
	stfs %f29, 0x1c(%r1)
	stfs %f29, 0x20(%r1)
	stfs %f29, 0x24(%r1)
	lbz %r4, 0x0(%r22)
	stb %r4, 0x80(%r1)
	lbz %r4, 0x1(%r22)
	stb %r4, 0x81(%r1)
	lbz %r4, 0x2(%r22)
	stb %r4, 0x82(%r1)
	lbz %r4, 0x3(%r22)
	stb %r4, 0x83(%r1)
	lbz %r4, 0x4(%r22)
	stb %r4, 0x84(%r1)
	lbz %r4, 0x5(%r22)
	stb %r4, 0x85(%r1)
	lbz %r4, 0x6(%r22)
	stb %r4, 0x86(%r1)
	lbz %r4, 0x7(%r22)
	stb %r4, 0x87(%r1)
	lbz %r4, 0x8(%r22)
	stb %r4, 0x88(%r1)
	lbz %r4, 0x9(%r22)
	stb %r4, 0x89(%r1)
	lbz %r4, 0xa(%r22)
	stb %r4, 0x8a(%r1)
	lbz %r4, 0xb(%r22)
	stb %r4, 0x8b(%r1)
	lbz %r4, 0xc(%r22)
	stb %r4, 0x8c(%r1)
	lbz %r4, 0xd(%r22)
	stb %r4, 0x8d(%r1)
	lbz %r4, 0xe(%r22)
	stb %r4, 0x8e(%r1)
	lbz %r4, 0xf(%r22)
	stb %r4, 0x8f(%r1)
	lbz %r4, 0x10(%r22)
	stb %r4, 0x90(%r1)
	lbz %r4, 0x11(%r22)
	stb %r4, 0x91(%r1)
	lbz %r4, 0x12(%r22)
	stb %r4, 0x92(%r1)
	lbz %r4, 0x13(%r22)
	stb %r4, 0x93(%r1)
	lbz %r4, 0x14(%r22)
	stb %r4, 0x94(%r1)
	lbz %r4, 0x15(%r22)
	stb %r4, 0x95(%r1)
	lbz %r4, 0x16(%r22)
	stb %r4, 0x96(%r1)
	lbz %r4, 0x17(%r22)
	stb %r4, 0x97(%r1)
	lbz %r4, 0x18(%r22)
	stb %r4, 0x98(%r1)
	lbz %r4, 0x19(%r22)
	stb %r4, 0x99(%r1)
	lbz %r4, 0x1a(%r22)
	stb %r4, 0x9a(%r1)
	lbz %r4, 0x1b(%r22)
	stb %r4, 0x9b(%r1)
	lbz %r4, 0x1c(%r22)
	stb %r4, 0x9c(%r1)
	lbz %r4, 0x1d(%r22)
	stb %r4, 0x9d(%r1)
	lbz %r4, 0x1e(%r22)
	stb %r4, 0x9e(%r1)
	lbz %r4, 0x1f(%r22)
	stb %r4, 0x9f(%r1)
	lwz %r4, 0x20(%r22)
	stw %r4, 0xa0(%r1)
	lwz %r5, 0x24(%r22)
	lwz %r4, 0x28(%r22)
	stw %r4, 0xa8(%r1)
	stw %r5, 0xa4(%r1)
	lwz %r5, 0x2c(%r22)
	lwz %r4, 0x30(%r22)
	stw %r4, 0xb0(%r1)
	stw %r5, 0xac(%r1)
	lwz %r4, 0x34(%r22)
	stw %r4, 0xb4(%r1)
	lwz %r5, 0x38(%r22)
	lwz %r4, 0x3c(%r22)
	stw %r4, 0xbc(%r1)
	stw %r5, 0xb8(%r1)
	lbz %r4, 0x40(%r22)
	stb %r4, 0xc0(%r1)
	lbz %r4, 0x41(%r22)
	stb %r4, 0xc1(%r1)
	lbz %r4, 0x42(%r22)
	stb %r4, 0xc2(%r1)
	lbz %r4, 0x43(%r22)
	stb %r4, 0xc3(%r1)
	lfs %f0, 0x44(%r22)
	stfs %f0, 0xc4(%r1)
	lwz %r5, 0x48(%r22)
	subf %r4, %r23, %r3
	stw %r5, 0xc8(%r1)
	srwi  %r3, %r4, 31
	add %r4, %r3, %r4
	addi %r5, %r1, 0x8
	lfs %f0, 0x4c(%r22)
	srawi %r6, %r4, 1
	stfs %f0, 0xcc(%r1)
	addi %r3, %r1, 0x80
	addi %r4, %r1, 0x18
	subf %r6, %r6, %r24
	lfs %f0, 0x50(%r22)
	stfs %f0, 0xd0(%r1)
	lfs %f0, 0x54(%r22)
	stfs %f0, 0xd4(%r1)
	lwz %r7, 0x58(%r22)
	stw %r7, 0xd8(%r1)
	stw %r0, 0xdc(%r1)
	lwz %r0, 0x60(%r22)
	stw %r0, 0xe0(%r1)
	stfs %f29, 0xac(%r1)
	stfs %f29, 0xb0(%r1)
	bl sub_b2e30
	lfs %f1, 0x20(%r1)
	addi %r3, %r1, 0x80
	lfs %f0, 0x18(%r1)
	li %r4, 0x0
	fsubs %f27, %f1, %f0
	bl sub_abb50
	fsubs %f1, %f25, %f27
	lfs %f0, 0x74(%r1)
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r22)
	b _b3e04
_b3ddc:
	lfs %f1, 0x2c(%r22)
	lfs %f0, 0x74(%r1)
	fsubs %f1, %f1, %f0
	fcmpo %cr0, %f25, %f1
	bge- _b3df4
	b _b3df8
_b3df4:
	fmr  %f1, %f25
_b3df8:
	lfs %f0, 0x74(%r1)
	fmr  %f25, %f1
	stfs %f0, 0x2c(%r22)
_b3e04:
	cmpwi %r29, 0x0
	beq- _b3e10
	lwz %r26, 0x48(%r1)
_b3e10:
	li %r28, 0x0
	b _b3e40
_b3e18:
	cmpwi %r3, 0x1
	bne- _b3e28
	li %r28, 0x0
	b _b3e40
_b3e28:
	cmpwi %r3, 0x2
	bne- _b3e38
	li %r28, 0x1
	b _b3e40
_b3e38:
	cmpwi %r3, 0x4
	beq- _b3f90
_b3e40:
	lwz %r0, 0x70(%r1)
	stw %r0, 0x48(%r1)
	b _b3f54
_b3e4c:
	cmpwi %r29, 0x0
	lfs %f27, 0x30(%r22)
	beq- _b3ee8
	cmplw %r27, %r26
	beq- _b3ee8
	cmpwi %r28, 0x0
	lfs %f24, 0x2c(%r22)
	beq- _b3e74
	lfs %f23, 0x50(%r22)
	b _b3e78
_b3e74:
	lfs %f23, -0x6c9c(%r2)
_b3e78:
	lbz %r0, 0x43(%r22)
	cmpwi %r0, 0x0
	beq- _b3e8c
	lfs %f2, 0x44(%r22)
	b _b3ec0
_b3e8c:
	lwz %r3, 0x48(%r22)
	clrlwi  %r4, %r25, 16
	lfs %f22, 0x24(%r22)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x48(%r12)
	mtctr %r12
	bctrl 
	xoris %r0, %r3, 0x8000
	stw %r0, 0x1b4(%r1)
	stw %r31, 0x1b0(%r1)
	lfd %f0, 0x1b0(%r1)
	fsubs %f0, %f0, %f31
	fmuls %f2, %f0, %f22
_b3ec0:
	lfs %f1, 0x14(%r1)
	lfs %f0, 0x4c(%r22)
	fsubs %f1, %f24, %f1
	fadds %f1, %f23, %f1
	fadds %f1, %f2, %f1
	fcmpo %cr0, %f1, %f0
	ble- _b3ee8
	stw %r27, 0x48(%r1)
	li %r25, 0xa
	b _b3f74
_b3ee8:
	cmpwi %r28, 0x0
	beq- _b3f00
	lfs %f1, 0x50(%r22)
	lfs %f0, 0x2c(%r22)
	fadds %f0, %f0, %f1
	stfs %f0, 0x2c(%r22)
_b3f00:
	lwz %r3, 0x48(%r22)
	li %r28, 0x1
	lfs %f22, 0x28(%r22)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x1c(%r12)
	mtctr %r12
	bctrl 
	neg %r0, %r3
	stw %r31, 0x1b0(%r1)
	xoris %r0, %r0, 0x8000
	lfs %f0, 0x30(%r22)
	stw %r0, 0x1b4(%r1)
	mr %r3, %r22
	clrlwi  %r4, %r25, 16
	lfd %f1, 0x1b0(%r1)
	fsubs %f1, %f1, %f31
	fmuls %f1, %f1, %f22
	fadds %f0, %f0, %f1
	stfs %f0, 0x30(%r22)
	bl sub_ac7e0
	stfs %f27, 0x30(%r22)
_b3f54:
	cmpwi %r29, 0x0
	beq- _b3f60
	lwz %r27, 0x48(%r1)
_b3f60:
	addi %r3, %r1, 0x48
	addi %r12, %r1, 0x4c
	bl sub_19630
	ori %r0, %r0, 0x0
	mr %r25, %r3
_b3f74:
	lwz %r7, 0x48(%r1)
	subf %r3, %r23, %r7
	srwi  %r0, %r3, 31
	add %r0, %r0, %r3
	srawi %r0, %r0, 1
	cmpw %r0, %r24
	ble+ _b3714
_b3f90:
	lfs %f1, 0x2c(%r22)
	lfs %f0, 0x74(%r1)
	fsubs %f1, %f1, %f0
	fcmpo %cr0, %f25, %f1
	bge- _b3fa8
	b _b3fac
_b3fa8:
	fmr  %f1, %f25
_b3fac:
	lwz %r0, 0x5c(%r22)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x100
	beq- _b3fc4
	cmplwi %r0, 0x200
	bne- _b3fcc
_b3fc4:
	stfs %f28, 0x30(%r22)
	b _b3fd8
_b3fcc:
	lfs %f0, 0x30(%r22)
	fadds %f0, %f0, %f26
	stfs %f0, 0x30(%r22)
_b3fd8:
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

	.global sub_b4040
sub_b4040: # 0x800bb300
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
	beq- _b427c
	cmpwi %r4, 0x0
	beq- _b427c
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
	bl sub_b34d0
	addi %r3, %r1, 0x108
	li %r4, 0x0
	bl sub_abb50
	lfs %f3, 0x30(%r1)
	lfs %f2, 0x38(%r1)
	lfs %f1, 0x34(%r1)
	lfs %f0, 0x3c(%r1)
	fadds %f31, %f3, %f2
	fadds %f2, %f1, %f0
_b427c:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 26, 27
	cmplwi %r0, 0x10
	bne- _b42a4
	lfs %f1, -0x6c90(%r2)
	lfs %f0, 0x0(%r28)
	fmuls %f1, %f31, %f1
	fsubs %f0, %f0, %f1
	stfs %f0, 0x0(%r28)
	b _b42b8
_b42a4:
	cmplwi %r0, 0x20
	bne- _b42b8
	lfs %f0, 0x0(%r28)
	fsubs %f0, %f0, %f31
	stfs %f0, 0x0(%r28)
_b42b8:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x100
	bne- _b42e0
	lfs %f1, -0x6c90(%r2)
	lfs %f0, 0x0(%r29)
	fmuls %f1, %f2, %f1
	fsubs %f0, %f0, %f1
	stfs %f0, 0x0(%r29)
	b _b42f4
_b42e0:
	cmplwi %r0, 0x200
	bne- _b42f4
	lfs %f0, 0x0(%r29)
	fsubs %f0, %f0, %f2
	stfs %f0, 0x0(%r29)
_b42f4:
	lwz %r0, 0x5c(%r27)
	clrlwi  %r3, %r0, 30
	cmplwi %r3, 0x1
	bne- _b4508
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
	bl sub_b2e30
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
	b _b4714
_b4508:
	cmplwi %r3, 0x2
	bne- _b470c
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
	bl sub_b2e30
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
	b _b4714
_b470c:
	lfs %f0, 0x0(%r28)
	stfs %f0, 0x2c(%r27)
_b4714:
	lwz %r0, 0x5c(%r27)
	rlwinm  %r0, %r0, 0, 22, 23
	cmplwi %r0, 0x300
	bne- _b4730
	lfs %f0, 0x0(%r29)
	stfs %f0, 0x30(%r27)
	b _b4744
_b4730:
	mr %r3, %r27
	bl sub_ac780
	lfs %f0, 0x0(%r29)
	fadds %f0, %f0, %f1
	stfs %f0, 0x30(%r27)
_b4744:
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
	.incbin "./dol.text.bin", 0xb4770, 0x8012e4f4 - 0x800bba30
	
	.global sub_127234
sub_127234: # 0x8012e4f4
	mtspr 22, %r3
	blr
	
	.global t1_12723c
t1_12723c:
	.incbin "basemain.dol", 0x12979c, 0x8

	.global sub_127244
sub_127244: # 0x8012e504
	sync
_127248:
	ori %r0, %r0, 0x0
	li %r3, 0x0
	ori %r0, %r0, 0x0
	b _127248
	
	.global t1_127258
t1_127258:
	.incbin "basemain.dol", 0x1297b8, 0xd4
	
	.global t1_12732c
t1_12732c:
	.incbin "basemain.dol", 0x12988c, 0x2ec88
	
	.global t1_155fb4
t1_155fb4:
	.incbin "basemain.dol", 0x158514, 0xc08
	
	.global sub_156bbc
sub_156bbc: # 0x8015de7c
	lis %r3, 0x8000
	stw %r3, -0x65bc(%r13)
	lwz %r4, 0x38(%r3)
	cmpwi %r4, 0x0
	stw %r4, -0x65c0(%r13)
	beqlr- 
	lwz %r3, 0x8(%r4)
	mulli %r0, %r3, 0xc
	stw %r3, -0x65c8(%r13)
	add %r0, %r4, %r0
	stw %r0, -0x65c4(%r13)
	blr
	
	.global sub_156bec
sub_156bec: # 0x8015deac
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19774
	mr %r26, %r3
	lis %r31, 0x8027
	lwz %r29, -0x65d8(%r13)
	mr %r28, %r26
	subi %r31, %r31, 0x31f8
	lis %r30, 0x8028
_156c18:
	lbz %r0, 0x0(%r26)
	extsb. %r0, %r0
	bne- _156c2c
	mr %r3, %r29
	b _156edc
_156c2c:
	cmpwi %r0, 0x2f
	bne- _156c40
	li %r29, 0x0
	addi %r26, %r26, 0x1
	b _156c18
_156c40:
	cmpwi %r0, 0x2e
	bne- _156cbc
	lbz %r0, 0x1(%r26)
	extsb %r0, %r0
	cmpwi %r0, 0x2e
	bne- _156c9c
	lbz %r0, 0x2(%r26)
	extsb %r0, %r0
	cmpwi %r0, 0x2f
	bne- _156c80
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	addi %r26, %r26, 0x3
	add %r3, %r3, %r0
	lwz %r29, 0x4(%r3)
	b _156c18
_156c80:
	cmpwi %r0, 0x0
	bne- _156cbc
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	add %r3, %r3, %r0
	lwz %r3, 0x4(%r3)
	b _156edc
_156c9c:
	cmpwi %r0, 0x2f
	bne- _156cac
	addi %r26, %r26, 0x2
	b _156c18
_156cac:
	cmpwi %r0, 0x0
	bne- _156cbc
	mr %r3, %r29
	b _156edc
_156cbc:
	lwz %r0, -0x7348(%r13)
	cmpwi %r0, 0x0
	bne- _156d6c
	mr %r24, %r26
	li %r5, 0x0
	li %r4, 0x0
	b _156d1c
_156cd8:
	extsb %r0, %r3
	cmpwi %r0, 0x2e
	bne- _156d0c
	subf %r0, %r26, %r24
	cmpwi %r0, 0x8
	bgt- _156cf8
	cmpwi %r5, 0x1
	bne- _156d00
_156cf8:
	li %r4, 0x1
	b _156d30
_156d00:
	addi %r27, %r24, 0x1
	li %r5, 0x1
	b _156d18
_156d0c:
	cmpwi %r0, 0x20
	bne- _156d18
	li %r4, 0x1
_156d18:
	addi %r24, %r24, 0x1
_156d1c:
	lbz %r3, 0x0(%r24)
	extsb. %r0, %r3
	beq- _156d30
	cmpwi %r0, 0x2f
	bne+ _156cd8
_156d30:
	cmpwi %r5, 0x1
	bne- _156d48
	subf %r0, %r27, %r24
	cmpwi %r0, 0x3
	ble- _156d48
	li %r4, 0x1
_156d48:
	cmpwi %r4, 0x0
	beq- _156d8c
	mr %r6, %r28
	addi %r5, %r30, 0x3ee0
	subi %r3, %r13, 0x7340
	li %r4, 0x1bb
	crxor 6, 6, 6
	bl sub_19b300
	b _156d8c
_156d6c:
	mr %r24, %r26
	b _156d78
_156d74:
	addi %r24, %r24, 0x1
_156d78:
	lbz %r0, 0x0(%r24)
	extsb. %r0, %r0
	beq- _156d8c
	cmpwi %r0, 0x2f
	bne+ _156d74
_156d8c:
	lbz %r3, 0x0(%r24)
	mulli %r0, %r29, 0xc
	lwz %r8, -0x65c0(%r13)
	subf %r9, %r26, %r24
	extsb %r6, %r3
	lwz %r4, -0x65c4(%r13)
	neg %r5, %r6
	add %r3, %r8, %r0
	lwz %r12, 0x38(%r31)
	or %r0, %r5, %r6
	lwz %r5, 0x8(%r3)
	srwi  %r0, %r0, 31
	addi %r3, %r29, 0x1
	b _156eb0
_156dc4:
	mulli %r6, %r3, 0xc
	lwzux %r10, %r6, %r8
	clrrwi. %r7, %r10, 24
	bne- _156ddc
	cmpwi %r0, 0x1
	beq- _156e9c
_156ddc:
	clrlwi  %r10, %r10, 8
	mr %r29, %r26
	add %r25, %r4, %r10
	b _156e64
_156dec:
	lbz %r11, 0x0(%r25)
	li %r10, 0x0
	addi %r25, %r25, 0x1
	extsb. %r24, %r11
	blt- _156e08
	cmpwi %r24, 0x100
	blt- _156e0c
_156e08:
	li %r10, 0x1
_156e0c:
	cmpwi %r10, 0x0
	beq- _156e18
	b _156e20
_156e18:
	lwz %r10, 0x10(%r12)
	lbzx %r24, %r10, %r24
_156e20:
	lbz %r11, 0x0(%r29)
	li %r10, 0x0
	addi %r29, %r29, 0x1
	extsb. %r11, %r11
	blt- _156e3c
	cmpwi %r11, 0x100
	blt- _156e40
_156e3c:
	li %r10, 0x1
_156e40:
	cmpwi %r10, 0x0
	beq- _156e4c
	b _156e54
_156e4c:
	lwz %r10, 0x10(%r12)
	lbzx %r11, %r10, %r11
_156e54:
	cmpw %r11, %r24
	beq- _156e64
	li %r10, 0x0
	b _156e94
_156e64:
	lbz %r10, 0x0(%r25)
	extsb. %r10, %r10
	bne+ _156dec
	lbz %r10, 0x0(%r29)
	extsb %r10, %r10
	cmpwi %r10, 0x2f
	beq- _156e88
	cmpwi %r10, 0x0
	bne- _156e90
_156e88:
	li %r10, 0x1
	b _156e94
_156e90:
	li %r10, 0x0
_156e94:
	cmpwi %r10, 0x1
	beq- _156ec0
_156e9c:
	cmpwi %r7, 0x0
	beq- _156eac
	lwz %r3, 0x8(%r6)
	b _156eb0
_156eac:
	addi %r3, %r3, 0x1
_156eb0:
	cmplw %r3, %r5
	blt+ _156dc4
	li %r3, -0x1
	b _156edc
_156ec0:
	cmpwi %r0, 0x0
	bne- _156ecc
	b _156edc
_156ecc:
	add %r4, %r9, %r26
	mr %r29, %r3
	addi %r26, %r4, 0x1
	b _156c18
_156edc:
	addi %r11, %r1, 0x30
	bl sub_197c0
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_156ef4
t1_156ef4:
	.incbin "basemain.dol", 0x159454, 0x68
	
	.global sub_156f5c
sub_156f5c: # 0x8015e21c
	stwu %r1, -0xa0(%r1)
	mflr %r0
	stw %r0, 0xa4(%r1)
	addi %r11, %r1, 0xa0
	bl sub_19780
	mr %r28, %r3
	mr %r27, %r4
	bl sub_156bec
	cmpwi %r3, 0x0
	bge- _1571a0
	lwz %r29, -0x65d8(%r13)
	cmpwi %r29, 0x0
	bne- _156f98
	li %r4, 0x0
	b _157124
_156f98:
	lwz %r8, -0x65c0(%r13)
	mulli %r0, %r29, 0xc
	lwz %r7, -0x65c4(%r13)
	addi %r6, %r8, 0x4
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r30, %r7, %r0
	bne- _156fc8
	li %r4, 0x0
	b _1570c8
_156fc8:
	mulli %r0, %r3, 0xc
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r31, %r7, %r0
	bne- _156fec
	li %r4, 0x0
	b _15706c
_156fec:
	mulli %r3, %r3, 0xc
	addi %r4, %r1, 0x8
	li %r5, 0x80
	lwzx %r0, %r8, %r3
	lwzx %r3, %r6, %r3
	clrlwi  %r0, %r0, 8
	add %r27, %r7, %r0
	bl sub_15722c
	cmplwi %r3, 0x80
	mr %r4, %r3
	bne- _15701c
	b _15706c
_15701c:
	addi %r4, %r3, 0x1
	addi %r5, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r5, %r3
	subfic %r6, %r4, 0x80
	mr %r3, %r6
	add %r5, %r5, %r4
	b _157050
_15703c:
	lbz %r0, 0x0(%r27)
	subi %r3, %r3, 0x1
	addi %r27, %r27, 0x1
	stb %r0, 0x0(%r5)
	addi %r5, %r5, 0x1
_157050:
	cmpwi %r3, 0x0
	beq- _157064
	lbz %r0, 0x0(%r27)
	extsb. %r0, %r0
	bne+ _15703c
_157064:
	subf %r0, %r3, %r6
	add %r4, %r4, %r0
_15706c:
	cmplwi %r4, 0x80
	bne- _157078
	b _1570c8
_157078:
	addi %r5, %r4, 0x1
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	subfic %r6, %r5, 0x80
	mr %r4, %r6
	add %r3, %r3, %r5
	b _1570ac
_157098:
	lbz %r0, 0x0(%r31)
	subi %r4, %r4, 0x1
	addi %r31, %r31, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_1570ac:
	cmpwi %r4, 0x0
	beq- _1570c0
	lbz %r0, 0x0(%r31)
	extsb. %r0, %r0
	bne+ _157098
_1570c0:
	subf %r0, %r4, %r6
	add %r4, %r5, %r0
_1570c8:
	cmplwi %r4, 0x80
	bne- _1570d4
	b _157124
_1570d4:
	addi %r5, %r4, 0x1
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	subfic %r6, %r5, 0x80
	mr %r4, %r6
	add %r3, %r3, %r5
	b _157108
_1570f4:
	lbz %r0, 0x0(%r30)
	subi %r4, %r4, 0x1
	addi %r30, %r30, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_157108:
	cmpwi %r4, 0x0
	beq- _15711c
	lbz %r0, 0x0(%r30)
	extsb. %r0, %r0
	bne+ _1570f4
_15711c:
	subf %r0, %r4, %r6
	add %r4, %r5, %r0
_157124:
	cmplwi %r4, 0x80
	bne- _157138
	li %r0, 0x0
	stb %r0, 0x87(%r1)
	b _157180
_157138:
	mulli %r0, %r29, 0xc
	lwz %r3, -0x65c0(%r13)
	lwzx %r0, %r3, %r0
	clrrwi. %r0, %r0, 24
	beq- _157174
	cmplwi %r4, 0x7f
	bne- _157164
	addi %r3, %r1, 0x8
	li %r0, 0x0
	stbx %r0, %r3, %r4
	b _157180
_157164:
	addi %r3, %r1, 0x8
	li %r0, 0x2f
	stbx %r0, %r3, %r4
	addi %r4, %r4, 0x1
_157174:
	addi %r3, %r1, 0x8
	li %r0, 0x0
	stbx %r0, %r3, %r4
_157180:
	lis %r3, 0x8028
	mr %r4, %r28
	addi %r3, %r3, 0x3fa8
	addi %r5, %r1, 0x8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _1571f0
_1571a0:
	mulli %r6, %r3, 0xc
	lwz %r3, -0x65c0(%r13)
	lwzx %r0, %r3, %r6
	clrrwi. %r0, %r0, 24
	beq- _1571bc
	li %r3, 0x0
	b _1571f0
_1571bc:
	add %r3, %r3, %r6
	lwz %r4, -0x6564(%r13)
	lwz %r5, 0x4(%r3)
	li %r0, 0x0
	li %r3, 0x1
	srw %r4, %r5, %r4
	stw %r4, 0x30(%r27)
	lwz %r4, -0x65c0(%r13)
	add %r4, %r4, %r6
	lwz %r4, 0x8(%r4)
	stw %r4, 0x34(%r27)
	stw %r0, 0x38(%r27)
	stw %r0, 0xc(%r27)
_1571f0:
	addi %r11, %r1, 0xa0
	bl sub_197cc
	lwz %r0, 0xa4(%r1)
	mtlr %r0
	addi %r1, %r1, 0xa0
	blr

	.global sub_157208
sub_157208: # 0x8015e4c8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl sub_15bc8c
	lwz %r0, 0x14(%r1)
	li %r3, 0x1
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15722c
sub_15722c: # 0x8015e4ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r3, 0x0
	mr %r28, %r4
	mr %r29, %r5
	bne- _157258
	li %r3, 0x0
	b _1573d4
_157258:
	lwz %r8, -0x65c0(%r13)
	mulli %r0, %r3, 0xc
	lwz %r7, -0x65c4(%r13)
	addi %r6, %r8, 0x4
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r30, %r7, %r0
	bne- _157288
	li %r4, 0x0
	b _157378
_157288:
	mulli %r0, %r3, 0xc
	lwzx %r3, %r6, %r0
	lwzx %r0, %r8, %r0
	cmpwi %r3, 0x0
	clrlwi  %r0, %r0, 8
	add %r31, %r7, %r0
	bne- _1572ac
	li %r4, 0x0
	b _157320
_1572ac:
	mulli %r3, %r3, 0xc
	lwzx %r0, %r8, %r3
	lwzx %r3, %r6, %r3
	clrlwi  %r0, %r0, 8
	add %r27, %r7, %r0
	bl sub_15722c
	cmplw %r3, %r29
	mr %r4, %r3
	bne- _1572d4
	b _157320
_1572d4:
	addi %r4, %r3, 0x1
	li %r0, 0x2f
	subf %r6, %r4, %r29
	stbx %r0, %r28, %r3
	add %r3, %r28, %r4
	mr %r5, %r6
	b _157304
_1572f0:
	lbz %r0, 0x0(%r27)
	subi %r5, %r5, 0x1
	addi %r27, %r27, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_157304:
	cmpwi %r5, 0x0
	beq- _157318
	lbz %r0, 0x0(%r27)
	extsb. %r0, %r0
	bne+ _1572f0
_157318:
	subf %r0, %r5, %r6
	add %r4, %r4, %r0
_157320:
	cmplw %r4, %r29
	bne- _15732c
	b _157378
_15732c:
	addi %r3, %r4, 0x1
	li %r0, 0x2f
	subf %r6, %r3, %r29
	stbx %r0, %r28, %r4
	add %r4, %r28, %r3
	mr %r5, %r6
	b _15735c
_157348:
	lbz %r0, 0x0(%r31)
	subi %r5, %r5, 0x1
	addi %r31, %r31, 0x1
	stb %r0, 0x0(%r4)
	addi %r4, %r4, 0x1
_15735c:
	cmpwi %r5, 0x0
	beq- _157370
	lbz %r0, 0x0(%r31)
	extsb. %r0, %r0
	bne+ _157348
_157370:
	subf %r0, %r5, %r6
	add %r4, %r3, %r0
_157378:
	cmplw %r4, %r29
	bne- _157388
	mr %r3, %r4
	b _1573d4
_157388:
	addi %r6, %r4, 0x1
	li %r0, 0x2f
	subf %r5, %r6, %r29
	stbx %r0, %r28, %r4
	add %r3, %r28, %r6
	mr %r4, %r5
	b _1573b8
_1573a4:
	lbz %r0, 0x0(%r30)
	subi %r4, %r4, 0x1
	addi %r30, %r30, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
_1573b8:
	cmpwi %r4, 0x0
	beq- _1573cc
	lbz %r0, 0x0(%r30)
	extsb. %r0, %r0
	bne+ _1573a4
_1573cc:
	subf %r0, %r4, %r5
	add %r3, %r6, %r0
_1573d4:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1573ec
t1_1573ec:
	.incbin "basemain.dol", 0x15994c, 0xe8
	
	.global sub_1574d4
sub_1574d4: # 0x8015e794
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r6, 0x0
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r31, %r6
	mr %r30, %r7
	blt- _157510
	lwz %r0, 0x34(%r3)
	cmplw %r6, %r0
	ble- _157528
_157510:
	lis %r5, 0x8028
	subi %r3, %r13, 0x7340
	addi %r5, %r5, 0x4014
	li %r4, 0x37d
	crxor 6, 6, 6
	bl sub_19b300
_157528:
	add. %r4, %r31, %r29
	blt- _157540
	lwz %r3, 0x34(%r27)
	addi %r0, %r3, 0x20
	cmplw %r4, %r0
	blt- _157558
_157540:
	lis %r5, 0x8028
	subi %r3, %r13, 0x7340
	addi %r5, %r5, 0x4014
	li %r4, 0x383
	crxor 6, 6, 6
	bl sub_19b300
_157558:
	lwz %r6, 0x30(%r27)
	srawi %r0, %r31, 2
	lis %r7, 0x8016
	mr %r3, %r27
	mr %r4, %r28
	mr %r5, %r29
	mr %r8, %r30
	add %r6, %r6, %r0
	subi %r7, %r7, 0x1744
	bl sub_15b56c
	cmpwi %r3, 0x0
	bne- _157590
	li %r3, -0x1
	b _1575e4
_157590:
	bl sub_19f24c
	mr %r31, %r3
_157598:
	lwz %r0, 0xc(%r27)
	cmpwi %r0, 0x0
	bne- _1575ac
	lwz %r30, 0x20(%r27)
	b _1575d8
_1575ac:
	cmpwi %r0, -0x1
	bne- _1575bc
	li %r30, -0x1
	b _1575d8
_1575bc:
	cmpwi %r0, 0xa
	bne- _1575cc
	li %r30, -0x3
	b _1575d8
_1575cc:
	subi %r3, %r13, 0x65d0
	bl sub_1a3658
	b _157598
_1575d8:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
_1575e4:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_1575fc
t1_1575fc:
	.incbin "basemain.dol", 0x159b5c, 0xc0
	
	.global sub_1576bc
sub_1576bc: # 0x8015e97c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	lwz %r0, -0x6560(%r13)
	cmpwi %r0, 0x0
	bne- _1577f8
	lwz %r3, -0x7338(%r13)
	bl sub_1991a4
	li %r0, 0x1
	stw %r0, -0x6560(%r13)
	bl sub_15d4e8
	lwz %r0, -0x63a8(%r13)
	cmpwi %r0, 0x0
	bne- _157758
	lis %r3, 0x8000
	lbz %r0, 0x3187(%r3)
	cmplwi %r0, 0x80
	bne- _157758
	bl sub_15fe70
	cmpwi %r3, 0x0
	bne- _157728
	lis %r4, 0x8034
	li %r3, 0x0
	subi %r4, %r4, 0x5e00
	bl sub_1602fc
_157728:
	cmpwi %r3, 0x0
	bne- _15773c
	li %r3, 0x0
	subi %r4, %r13, 0x6540
	bl sub_1603a0
_15773c:
	cmpwi %r3, 0x0
	bne- _157754
	lis %r3, 0x8034
	subi %r4, %r13, 0x6540
	subi %r3, %r3, 0x5d00
	bl sub_1603a0
_157754:
	bl sub_15fec4
_157758:
	bl sub_156bbc
	bl sub_15c260
	lis %r0, 0x8000
	li %r3, 0x0
	stw %r3, -0x6530(%r13)
	subi %r3, %r13, 0x65d0
	stw %r0, -0x6518(%r13)
	stw %r0, -0x6514(%r13)
	bl sub_1a2540
	bl sub_15f5f4
	bl sub_15f5fc
	lwz %r3, -0x6518(%r13)
	lwz %r3, 0x20(%r3)
	addis %r0, %r3, 0x1ae0
	cmplwi %r0, 0x7c22
	beq- _1577ac
	addis %r0, %r3, 0xf2eb
	cmplwi %r0, 0xea5e
	beq- _1577ac
	li %r0, 0x1
	stw %r0, -0x6580(%r13)
_1577ac:
	lis %r31, 0x8034
	li %r4, 0x0
	subi %r3, %r31, 0xfc0
	li %r5, 0x80
	bl memset
	lis %r30, 0x8000
	subi %r3, %r31, 0xfc0
	mr %r4, %r30
	li %r5, 0x4
	bl memcpy
	lbz %r4, 0x6(%r30)
	subi %r5, %r31, 0xfc0
	li %r0, 0x0
	li %r3, 0x1
	stb %r4, 0x4(%r5)
	lbz %r4, 0x7(%r30)
	stb %r4, 0x5(%r5)
	stw %r0, -0x6564(%r13)
	bl sub_15d004
_1577f8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x157810, 0x80160a78 - 0x8015ead0
	
	.global sub_1597b8
sub_1597b8: # 0x80160a78
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r3, 0x1
	stw %r0, 0x14(%r1)
	lwz %r0, -0x651c(%r13)
	stw %r3, -0x6530(%r13)
	cmplwi %r0, 0x2a
	bgt- _159850
	lis %r3, 0x8028
	slwi  %r0, %r0, 2
	addi %r3, %r3, 0x40c4
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	bl sub_15c260
	lis %r3, 0x8034
	lwz %r4, -0x6510(%r13)
	subi %r3, %r3, 0x12e0
	stw %r3, -0x6510(%r13)
	lwz %r12, 0x28(%r4)
	cmpwi %r12, 0x0
	beq- _15981c
	li %r3, -0x4
	mtctr %r12
	bctrl 
_15981c:
	bl sub_15a2b4
	b _15986c
	
	.global t1_159824
t1_159824:
	.incbin "basemain.dol", 0x15bd84, 0x2c
	
_159850:
	li %r0, 0x0
	li %r3, 0x1
	stw %r0, -0x6530(%r13)
	bl sub_15e9a0
	lis %r3, 0x8016
	addi %r3, %r3, 0xd8c
	bl sub_15e9ac
_15986c:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15987c
t1_15987c:
	.incbin "basemain.dol", 0x15bddc, 0xa38
	
	.global sub_15a2b4
sub_15a2b4: # 0x80161574
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_15c3a0
	cmpwi %r3, 0x0
	bne- _15a2dc
	li %r0, 0x0
	stw %r0, -0x6510(%r13)
	b _15a5c8
_15a2dc:
	lwz %r0, -0x659c(%r13)
	cmpwi %r0, 0x0
	beq- _15a2fc
	li %r3, 0x1
	li %r0, 0x0
	stw %r3, -0x6598(%r13)
	stw %r0, -0x6510(%r13)
	b _15a5c8
_15a2fc:
	bl sub_15c300
	lwz %r0, -0x6594(%r13)
	stw %r3, -0x6510(%r13)
	cmpwi %r0, 0x0
	beq- _15a348
	li %r0, -0x1
	lis %r5, 0x8034
	stw %r0, 0xc(%r3)
	subi %r5, %r5, 0x12e0
	lwz %r4, -0x6510(%r13)
	stw %r5, -0x6510(%r13)
	lwz %r12, 0x28(%r4)
	cmpwi %r12, 0x0
	beq- _15a340
	li %r3, -0x1
	mtctr %r12
	bctrl 
_15a340:
	bl sub_15a2b4
	b _15a5c8
_15a348:
	lwz %r0, 0x8(%r3)
	stw %r0, -0x651c(%r13)
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0x20
	beq- _15a374
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0xe
	beq- _15a374
	lwz %r0, -0x651c(%r13)
	cmplwi %r0, 0x23
	bne- _15a37c
_15a374:
	li %r0, 0x0
	stw %r0, -0x658c(%r13)
_15a37c:
	lwz %r0, -0x658c(%r13)
	cmpwi %r0, 0x0
	beq- _15a564
	lwz %r0, -0x658c(%r13)
	cmpwi %r0, 0x4
	beq- _15a4bc
	bge- _15a3b0
	cmpwi %r0, 0x2
	beq- _15a3c4
	bge- _15a440
	cmpwi %r0, 0x1
	bge- _15a538
	b _15a558
_15a3b0:
	cmpwi %r0, 0x8
	bge- _15a558
	cmpwi %r0, 0x6
	bge- _15a538
	b _15a548
_15a3c4:
	li %r0, 0xb
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a440:
	li %r0, 0x4
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a4bc:
	li %r0, 0x5
	li %r4, 0x1
	stw %r0, 0xc(%r3)
	lwz %r0, -0x6578(%r13)
	stw %r4, -0x6530(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lwz %r0, -0x6574(%r13)
	cmpwi %r0, 0x0
	bne- _15a558
	lis %r31, 0x8034
	stw %r4, -0x6578(%r13)
	subi %r3, %r31, 0x1280
	bl sub_1992b0
	bl sub_1a3a14
	lis %r5, 0x8000
	lis %r4, 0x1062
	lwz %r0, 0xf8(%r5)
	lis %r9, 0x8016
	mr %r6, %r3
	addi %r4, %r4, 0x4dd3
	srwi  %r0, %r0, 2
	subi %r3, %r31, 0x1280
	mulhwu %r0, %r4, %r0
	addi %r9, %r9, 0x1550
	li %r5, 0x0
	li %r7, 0x0
	srwi  %r0, %r0, 6
	mulli %r8, %r0, 0x64
	bl sub_199580
	b _15a558
_15a538:
	li %r0, 0x3
	stw %r0, 0xc(%r3)
	bl sub_1597b8
	b _15a558
_15a548:
	lis %r4, 0x8016
	lwz %r3, -0x6524(%r13)
	subi %r4, %r4, 0x1120
	bl sub_15cd54
_15a558:
	li %r0, 0x0
	stw %r0, -0x658c(%r13)
	b _15a5c8
_15a564:
	lwz %r0, -0x6530(%r13)
	cmpwi %r0, 0x1
	beq- _15a5c4
	bge- _15a580
	cmpwi %r0, 0x0
	bge- _15a5b0
	b _15a5c4
_15a580:
	cmpwi %r0, 0x3
	bge- _15a5c4
	lwz %r0, -0x6570(%r13)
	cmpwi %r0, 0x0
	beq- _15a5a0
	li %r0, 0xc
	stw %r0, 0xc(%r3)
	b _15a5c8
_15a5a0:
	li %r0, 0x3
	stw %r0, 0xc(%r3)
	bl sub_1597b8
	b _15a5c8
_15a5b0:
	li %r0, 0x1
	stw %r0, 0xc(%r3)
	lwz %r3, -0x6510(%r13)
	bl sub_15a5dc
	b _15a5c8
_15a5c4:
	bl sub_1597b8
_15a5c8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15a5dc
sub_15a5dc: # 0x8016189c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_1977c
	lis %r4, 0x8016
	mr %r29, %r3
	addi %r4, %r4, 0x189c
	stw %r4, -0x650c(%r13)
	lwz %r30, 0x8(%r3)
	cmplwi %r30, 0x2a
	bgt- _15a6a8
	lis %r4, 0x8028
	slwi  %r0, %r30, 2
	addi %r4, %r4, 0x421c
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	lwz %r26, 0x14(%r3)
	lwz %r27, 0x10(%r3)
	bl sub_19f24c
	lwz %r0, -0x65a0(%r13)
	mr %r31, %r3
	cmplwi %r0, 0x5
	blt- _15a648
	li %r0, 0x0
	stw %r0, -0x65a0(%r13)
_15a648:
	lwz %r0, -0x65a0(%r13)
	lis %r28, 0x8034
	lwz %r3, -0x65a0(%r13)
	subi %r28, %r28, 0xfc0
	mulli %r4, %r0, 0x14
	lwz %r0, -0x65a0(%r13)
	mulli %r3, %r3, 0x14
	add %r4, %r28, %r4
	stw %r30, 0x1c(%r4)
	add %r3, %r28, %r3
	mulli %r0, %r0, 0x14
	stw %r27, 0x20(%r3)
	add %r3, %r28, %r0
	stw %r26, 0x24(%r3)
	bl sub_1a3a14
	lwz %r0, -0x65a0(%r13)
	lwz %r4, -0x65a0(%r13)
	mulli %r5, %r0, 0x14
	addi %r0, %r4, 0x1
	stw %r0, -0x65a0(%r13)
	add %r4, %r28, %r5
	stw %r3, 0x2c(%r4)
	mr %r3, %r31
	bl sub_19f274
_15a6a8:
	lwz %r0, 0x8(%r29)
	cmplwi %r0, 0x2a
	bgt- _15ab5c
	lis %r3, 0x8028
	slwi  %r0, %r0, 2
	addi %r3, %r3, 0x4170
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	li %r3, 0x0
	bl sub_15f604
	li %r0, 0x20
	lis %r4, 0x8016
	stw %r0, 0x1c(%r29)
	addi %r4, %r4, 0x1e4c
	lwz %r3, 0x18(%r29)
	bl sub_15d74c
	b _15ab74

	.global t1_15a6f0
t1_15a6f0:
	.incbin "basemain.dol", 0x15cc50, 0x46c

_15ab5c:
	lwz %r12, -0x7330(%r13)
	lis %r4, 0x8016
	mr %r3, %r29
	addi %r4, %r4, 0x1e4c
	mtctr %r12
	bctrl 
_15ab74:
	addi %r11, %r1, 0x30
	bl sub_197c8
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global t1_15ab8c
t1_15ab8c:
	.incbin "basemain.dol", 0x15d0ec, 0x9e0

	.global sub_15b56c
sub_15b56c: # 0x8016282c
	stwu %r1, -0x20(%r1)
	mflr %r0
	li %r9, 0x1
	stw %r0, 0x24(%r1)
	li %r0, 0x0
	stw %r31, 0x1c(%r1)
	mr %r31, %r8
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r9, 0x8(%r3)
	stw %r4, 0x18(%r3)
	stw %r5, 0x14(%r3)
	stw %r6, 0x10(%r3)
	stw %r0, 0x20(%r3)
	stw %r7, 0x28(%r3)
	lwz %r0, -0x7334(%r13)
	cmpwi %r0, 0x0
	beq- _15b5ec
	cmplwi %r9, 0x1
	beq- _15b5e0
	cmplwi %r9, 0x4
	beq- _15b5e0
	cmplwi %r9, 0x5
	beq- _15b5e0
	cmplwi %r9, 0x21
	beq- _15b5e0
	cmplwi %r9, 0xe
	bne- _15b5ec
_15b5e0:
	lwz %r3, 0x18(%r3)
	lwz %r4, 0x14(%r29)
	bl sub_19a2a0
_15b5ec:
	bl sub_19f24c
	li %r0, 0x2
	mr %r30, %r3
	stw %r0, 0xc(%r29)
	mr %r3, %r31
	mr %r4, %r29
	bl sub_15c298
	lwz %r0, -0x6510(%r13)
	mr %r31, %r3
	cmpwi %r0, 0x0
	bne- _15b628
	lwz %r0, -0x659c(%r13)
	cmpwi %r0, 0x0
	bne- _15b628
	bl sub_15a2b4
_15b628:
	mr %r3, %r30
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_15b650
t1_15b650:
	.incbin "basemain.dol", 0x15dbb0, 0xd8
	
	.global sub_15b728
sub_15b728: # 0x801629e8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lwz %r0, 0xc(%r29)
	mr %r30, %r3
	cmpwi %r0, 0x3
	bne- _15b760
	li %r31, 0x1
	b _15b7c8
_15b760:
	lwz %r0, 0xc(%r29)
	cmpwi %r0, 0x5
	bne- _15b774
	li %r31, 0x4
	b _15b7c8
_15b774:
	lis %r31, 0x8034
	lwz %r0, -0x6510(%r13)
	subi %r31, %r31, 0x11b0
	cmplw %r0, %r31
	bne- _15b7c4
	bl sub_15c3f8
	cmpwi %r3, 0x0
	beq- _15b7ac
	cmplw %r29, %r3
	bne- _15b7a4
	li %r31, 0x1
	b _15b7c8
_15b7a4:
	lwz %r31, 0xc(%r29)
	b _15b7c8
_15b7ac:
	cmplw %r29, %r31
	bne- _15b7bc
	li %r31, 0x0
	b _15b7c8
_15b7bc:
	lwz %r31, 0xc(%r29)
	b _15b7c8
_15b7c4:
	lwz %r31, 0xc(%r29)
_15b7c8:
	mr %r3, %r30
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_15b7f0
t1_15b7f0:
	.incbin "basemain.dol", 0x15dd50, 0x9c

	.global sub_15b88c
sub_15b88c: # 0x80162b4c
	mr %r0, %r3
	lwz %r3, -0x7334(%r13)
	stw %r0, -0x7334(%r13)
	blr

	.global t1_15b89c
t1_15b89c:
	.incbin "basemain.dol", 0x15ddfc, 0x3c

	.global sub_15b8d8
sub_15b8d8: # 0x80162b98
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	li %r4, 0x0
	mr %r31, %r3
	stw %r4, -0x659c(%r13)
	lwz %r0, -0x6598(%r13)
	cmpwi %r0, 0x0
	beq- _15b90c
	stw %r4, -0x6598(%r13)
	bl sub_15a2b4
_15b90c:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15b928
sub_15b928: # 0x80162be8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lwz %r4, 0xc(%r29)
	mr %r31, %r3
	addi %r0, %r4, 0x1
	cmplwi %r0, 0xd
	bgt- _15bc64
	lis %r4, 0x8028
	slwi  %r0, %r0, 2
	addi %r4, %r4, 0x4380
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	cmpwi %r30, 0x0
	beq- _15bc64
	mr %r12, %r30
	mr %r4, %r29
	li %r3, 0x0
	mtctr %r12
	bctrl 
	b _15bc64

	.global t1_15b998
t1_15b998:
	.incbin "basemain.dol", 0x15def8, 0x2cc
	
_15bc64:
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x1
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_15bc8c
sub_15bc8c: # 0x80162f4c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x8016
	stw %r0, 0x14(%r1)
	addi %r4, %r4, 0x3028
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_15b928
	cmpwi %r3, 0x0
	bne- _15bcc0
	li %r3, -0x1
	b _15bd50
_15bcc0:
	bl sub_19f24c
	mr %r31, %r3
_15bcc8:
	lwz %r0, 0xc(%r30)
	cmpwi %r0, 0x0
	beq- _15bd44
	cmpwi %r0, -0x1
	beq- _15bd44
	cmpwi %r0, 0xa
	beq- _15bd44
	cmpwi %r0, 0x3
	bne- _15bd38
	lwz %r0, 0x8(%r30)
	cmplwi %r0, 0x4
	beq- _15bd44
	cmplwi %r0, 0x5
	beq- _15bd44
	cmplwi %r0, 0xd
	beq- _15bd44
	cmplwi %r0, 0x21
	beq- _15bd44
	cmplwi %r0, 0x22
	beq- _15bd44
	cmplwi %r0, 0x29
	beq- _15bd44
	cmplwi %r0, 0x2a
	beq- _15bd44
	cmplwi %r0, 0xf
	beq- _15bd44
	cmplwi %r0, 0x25
	beq- _15bd44
_15bd38:
	subi %r3, %r13, 0x65d0
	bl sub_1a3658
	b _15bcc8
_15bd44:
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x0
_15bd50:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15bd68
t1_15bd68:
	.incbin "basemain.dol", 0x15e2c8, 0x164
	
	.global sub_15becc
sub_15becc: # 0x8016318c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0x8016
	stw %r0, 0x14(%r1)
	li %r0, 0x0
	addi %r3, %r3, 0x3184
	stw %r31, 0xc(%r1)
	stw %r0, -0x655c(%r13)
	bl sub_15f318
_15bef0:
	lwz %r0, -0x655c(%r13)
	cmpwi %r0, 0x0
	beq+ _15bef0
	lwz %r0, -0x655c(%r13)
	clrlwi. %r0, %r0, 31
	bne- _15bf10
	li %r3, 0x0
	b _15bf80
_15bf10:
	bl sub_15f2fc
	mr %r31, %r3
	bl sub_1a3a1c
	lis %r6, 0x8000
	lis %r5, 0x1062
	lwz %r6, 0xf8(%r6)
	addi %r7, %r5, 0x4dd3
	lwz %r8, -0x6538(%r13)
	li %r0, 0x0
	srwi  %r5, %r6, 2
	lwz %r9, -0x6534(%r13)
	mulhwu %r6, %r7, %r5
	subfc %r4, %r9, %r4
	xoris %r5, %r0, 0x8000
	subfe %r0, %r8, %r3
	xoris %r0, %r0, 0x8000
	srwi  %r3, %r6, 6
	mulli %r3, %r3, 0x64
	subfc %r3, %r3, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	beq- _15bf74
	li %r3, 0x0
	b _15bf80
_15bf74:
	clrlwi  %r0, %r31, 31
	neg %r3, %r0
	addi %r3, %r3, 0x2
_15bf80:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x15bf94, 0x80163298 - 0x80163254

	.global sub_15bfd8
sub_15bfd8: # 0x80163298
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	mr %r29, %r3
	bl sub_15c260
	lwz %r0, -0x6590(%r13)
	cmpwi %r0, 0x0
	beq- _15c014
	stw %r31, -0x6520(%r13)
	b _15c0d0
_15c014:
	lwz %r3, -0x6510(%r13)
	cmpwi %r3, 0x0
	beq- _15c028
	li %r0, 0x0
	stw %r0, 0x28(%r3)
_15c028:
	bl sub_19f24c
	mr %r30, %r3
	bl sub_19f24c
	lwz %r0, -0x6510(%r13)
	li %r4, 0x1
	stw %r4, -0x659c(%r13)
	cmpwi %r0, 0x0
	bne- _15c04c
	stw %r4, -0x6598(%r13)
_15c04c:
	bl sub_19f274
	b _15c05c
_15c054:
	li %r4, 0x0
	bl sub_15b928
_15c05c:
	bl sub_15c300
	cmpwi %r3, 0x0
	bne+ _15c054
	lwz %r3, -0x6510(%r13)
	cmpwi %r3, 0x0
	beq- _15c080
	mr %r4, %r31
	bl sub_15b928
	b _15c09c
_15c080:
	cmpwi %r31, 0x0
	beq- _15c09c
	mr %r12, %r31
	li %r3, 0x0
	li %r4, 0x0
	mtctr %r12
	bctrl 
_15c09c:
	bl sub_19f24c
	li %r4, 0x0
	mr %r31, %r3
	stw %r4, -0x659c(%r13)
	lwz %r0, -0x6598(%r13)
	cmpwi %r0, 0x0
	beq- _15c0c0
	stw %r4, -0x6598(%r13)
	bl sub_15a2b4
_15c0c0:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
	bl sub_19f274
_15c0d0:
	mr %r3, %r29
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x15c0f4, 0x801633c0 - 0x801633b4

	.global sub_15c100
sub_15c100: # 0x801633c0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	li %r31, 0x0
	stw %r31, -0x6558(%r13)
	bl sub_19f24c
	mr %r29, %r3
	bl sub_15c260
	lwz %r0, -0x6590(%r13)
	cmpwi %r0, 0x0
	beq- _15c14c
	lis %r3, 0x8016
	addi %r3, %r3, 0x33b4
	stw %r3, -0x6520(%r13)
	b _15c200
_15c14c:
	lwz %r3, -0x6510(%r13)
	cmpwi %r3, 0x0
	beq- _15c15c
	stw %r31, 0x28(%r3)
_15c15c:
	bl sub_19f24c
	mr %r31, %r3
	bl sub_19f24c
	lwz %r0, -0x6510(%r13)
	li %r4, 0x1
	stw %r4, -0x659c(%r13)
	cmpwi %r0, 0x0
	bne- _15c180
	stw %r4, -0x6598(%r13)
_15c180:
	bl sub_19f274
	b _15c190
_15c188:
	li %r4, 0x0
	bl sub_15b928
_15c190:
	bl sub_15c300
	cmpwi %r3, 0x0
	bne+ _15c188
	lwz %r3, -0x6510(%r13)
	cmpwi %r3, 0x0
	beq- _15c1b8
	lis %r4, 0x8016
	addi %r4, %r4, 0x33b4
	bl sub_15b928
	b _15c1cc
_15c1b8:
	lis %r0, 0x8016
	addic. %r0, %r0, 0x33b4
	beq- _15c1cc
	li %r0, 0x1
	stw %r0, -0x6558(%r13)
_15c1cc:
	bl sub_19f24c
	li %r4, 0x0
	mr %r30, %r3
	stw %r4, -0x659c(%r13)
	lwz %r0, -0x6598(%r13)
	cmpwi %r0, 0x0
	beq- _15c1f0
	stw %r4, -0x6598(%r13)
	bl sub_15a2b4
_15c1f0:
	mr %r3, %r30
	bl sub_19f274
	mr %r3, %r31
	bl sub_19f274
_15c200:
	mr %r3, %r29
	bl sub_19f274
	bl sub_19f260
_15c20c:
	lwz %r0, -0x6558(%r13)
	cmpwi %r0, 0x1
	bne+ _15c20c
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x15c234, 0x80163520 - 0x801634f4

	.global sub_15c260
sub_15c260: # 0x80163520
	lis %r6, 0x8034
	subi %r6, %r6, 0x1150
	addi %r5, %r6, 0x8
	stw %r6, 0x0(%r6)
	addi %r4, %r6, 0x10
	addi %r3, %r6, 0x18
	stw %r6, 0x4(%r6)
	stw %r5, 0x8(%r6)
	stw %r5, 0xc(%r6)
	stw %r4, 0x10(%r6)
	stw %r4, 0x14(%r6)
	stw %r3, 0x18(%r6)
	stw %r3, 0x1c(%r6)
	blr

	.global sub_15c298
sub_15c298: # 0x80163558
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r4, 0x8034
	slwi  %r0, %r30, 3
	subi %r4, %r4, 0x1150
	add %r5, %r4, %r0
	lwz %r4, 0x4(%r5)
	stw %r31, 0x0(%r4)
	lwz %r0, 0x4(%r5)
	stw %r0, 0x4(%r31)
	stw %r5, 0x0(%r31)
	stw %r31, 0x4(%r5)
	bl sub_19f274
	lwz %r31, 0xc(%r1)
	li %r3, 0x1
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15c300
sub_15c300: # 0x801635c0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lis %r4, 0x8034
	li %r0, 0x4
	li %r31, 0x0
	subi %r4, %r4, 0x1150
	mtctr %r0
_15c328:
	lwz %r0, 0x0(%r4)
	cmplw %r0, %r4
	beq- _15c378
	bl sub_19f274
	bl sub_19f24c
	lis %r4, 0x8034
	slwi  %r0, %r31, 3
	subi %r4, %r4, 0x1150
	lwzx %r31, %r4, %r0
	add %r5, %r4, %r0
	lwz %r0, 0x0(%r31)
	stw %r0, 0x0(%r5)
	lwz %r4, 0x0(%r31)
	stw %r5, 0x4(%r4)
	bl sub_19f274
	li %r0, 0x0
	mr %r3, %r31
	stw %r0, 0x0(%r31)
	stw %r0, 0x4(%r31)
	b _15c38c
_15c378:
	addi %r4, %r4, 0x8
	addi %r31, %r31, 0x1
	bdnz+ _15c328
	bl sub_19f274
	li %r3, 0x0
_15c38c:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15c3a0
sub_15c3a0: # 0x80163660
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	bl sub_19f24c
	lis %r4, 0x8034
	li %r0, 0x4
	subi %r4, %r4, 0x1150
	mtctr %r0
_15c3c0:
	lwz %r0, 0x0(%r4)
	cmplw %r0, %r4
	beq- _15c3d8
	bl sub_19f274
	li %r3, 0x1
	b _15c3e8
_15c3d8:
	addi %r4, %r4, 0x8
	bdnz+ _15c3c0
	bl sub_19f274
	li %r3, 0x0
_15c3e8:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_15c3f8
sub_15c3f8: # 0x801636b8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lis %r4, 0x8034
	li %r0, 0x4
	subi %r4, %r4, 0x1150
	mtctr %r0
_15c41c:
	lwz %r31, 0x0(%r4)
	cmplw %r31, %r4
	beq- _15c434
	bl sub_19f274
	mr %r3, %r31
	b _15c444
_15c434:
	addi %r4, %r4, 0x8
	bdnz+ _15c41c
	bl sub_19f274
	li %r3, 0x0
_15c444:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x15c458, 0x80164014 - 0x80163718

	.global sub_15cd54
sub_15cd54: # 0x80164014
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8034
	subi %r31, %r31, 0xfc0
	stw %r30, 0x8(%r1)
	mr %r30, %r4
	stw %r3, 0x8(%r31)
	bl sub_1a39fc
	lis %r6, 0x8000
	li %r5, 0x0
	lwz %r0, 0xf8(%r6)
	srwi  %r6, %r0, 2
	bl sub_198d0
	lis %r3, 0x8016
	stw %r4, 0xc(%r31)
	addi %r3, %r3, 0x3f84
	stw %r30, -0x6500(%r13)
	bl sub_15f480
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15cdbc
t1_15cdbc:
	.incbin "basemain.dol", 0x15f31c, 0x248
	
	.global sub_15d004
sub_15d004: # 0x801642c4
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_19f24c
	lwz %r5, -0x64f8(%r13)
	cmpwi %r31, 0x0
	li %r4, 0x0
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r31, %r0, 31
	beq- _15d040
	lis %r4, 0x8016
	addi %r4, %r4, 0x41f4
_15d040:
	stw %r4, -0x64f8(%r13)
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x15d060, 0x80164758 - 0x80164320

	.global sub_15d498
sub_15d498: # 0x80164758
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	lwz %r3, -0x7318(%r13)
	bl sub_18c778
	cmpwi %r3, 0x0
	beq- _15d4cc
	lis %r3, 0x8028
	addi %r3, %r3, 0x4af0
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15d4d8
_15d4cc:
	li %r0, 0x0
	li %r3, 0x1
	stb %r0, -0x64db(%r13)
_15d4d8:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15d4e8
sub_15d4e8: # 0x801647a8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lbz %r0, -0x64db(%r13)
	cmpwi %r0, 0x0
	bne- _15d690
	li %r0, 0x1
	stb %r0, -0x64db(%r13)
	bl sub_18c118
	cmpwi %r3, 0x0
	beq- _15d53c
	mr %r4, %r3
	addi %r3, %r31, 0x88
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15d734
_15d53c:
	bl sub_18bcd8
	mr %r30, %r3
	bl sub_18bcd0
	clrlwi. %r0, %r30, 27
	beq- _15d558
	addi %r0, %r30, 0x1f
	clrlwi  %r30, %r0, 27
_15d558:
	addi %r0, %r30, 0x80
	cmplw %r0, %r3
	ble- _15d574
	addi %r3, %r31, 0xa8
	li %r4, 0x80
	crxor 6, 6, 6
	bl sub_19b270
_15d574:
	addi %r3, %r30, 0x80
	bl sub_18bce0
	cmpwi %r30, 0x0
	stw %r30, -0x64cc(%r13)
	bne- _15d59c
	addi %r3, %r31, 0xe4
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	b _15d600
_15d59c:
	bl sub_18bcd8
	mr %r30, %r3
	bl sub_18bcd0
	clrlwi. %r0, %r30, 27
	beq- _15d5b8
	addi %r0, %r30, 0x1f
	clrlwi  %r30, %r0, 27
_15d5b8:
	addi %r0, %r30, 0x20
	cmplw %r0, %r3
	ble- _15d5d4
	addi %r3, %r31, 0xa8
	li %r4, 0x20
	crxor 6, 6, 6
	bl sub_19b270
_15d5d4:
	addi %r3, %r30, 0x20
	bl sub_18bce0
	cmpwi %r30, 0x0
	stw %r30, -0x64d0(%r13)
	bne- _15d5fc
	addi %r3, %r31, 0x10c
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	b _15d600
_15d5fc:
	li %r0, 0x1
_15d600:
	cmpwi %r0, 0x0
	bne- _15d610
	li %r3, 0x0
	b _15d734
_15d610:
	lbz %r0, -0x64dc(%r13)
	cmpwi %r0, 0x0
	bne- _15d690
	li %r5, 0x0
	lis %r4, 0x8034
	stwu %r5, -0xea0(%r4)
	lis %r3, 0xfeec
	li %r0, 0x1
	li %r6, 0x2
	stw %r5, 0x4(%r4)
	subi %r3, %r3, 0x2513
	stb %r5, 0x8(%r4)
	stw %r3, 0xc(%r4)
	stw %r5, 0x10(%r4)
	stw %r5, 0x20(%r4)
	stw %r5, 0x24(%r4)
	stb %r5, 0x28(%r4)
	stw %r3, 0x2c(%r4)
	stw %r0, 0x30(%r4)
	stw %r5, 0x40(%r4)
	stw %r5, 0x44(%r4)
	stb %r5, 0x48(%r4)
	stw %r3, 0x4c(%r4)
	stw %r6, 0x50(%r4)
	li %r6, 0x3
	stw %r5, 0x60(%r4)
	stw %r5, 0x64(%r4)
	stb %r5, 0x68(%r4)
	stw %r3, 0x6c(%r4)
	stw %r6, 0x70(%r4)
	stw %r5, -0x64e0(%r13)
	stb %r0, -0x64dc(%r13)
_15d690:
	lwz %r3, -0x64d0(%r13)
	subi %r4, %r13, 0x7310
	li %r5, 0x20
	bl sub_b3c0
	lwz %r3, -0x64d0(%r13)
	li %r4, 0x0
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, -0x7318(%r13)
	blt- _15d6c0
	li %r3, 0x1
	b _15d734
_15d6c0:
	cmpwi %r3, -0x5
	beq- _15d70c
	bge- _15d6d8
	cmpwi %r3, -0x6
	bge- _15d6e4
	b _15d720
_15d6d8:
	cmpwi %r3, -0x1
	beq- _15d6f8
	b _15d720
_15d6e4:
	addi %r3, %r31, 0x12c
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15d734
_15d6f8:
	addi %r3, %r31, 0x178
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15d734
_15d70c:
	addi %r3, %r31, 0x1c0
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15d734
_15d720:
	mr %r4, %r3
	addi %r3, %r31, 0x20c
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
_15d734:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15d74c
sub_15d74c: # 0x80164a0c
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r7, 0x8034
	li %r10, 0x1
	stw %r0, 0x24(%r1)
	subi %r7, %r7, 0xea0
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	lwz %r9, -0x64e0(%r13)
	stb %r10, -0x64e8(%r13)
	slwi  %r8, %r9, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15d7c4
	mr %r4, %r9
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15d7c0:
	b _15d7c0
_15d7c4:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15d7e4
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15d7e0:
	b _15d7e0
_15d7e4:
	stwx %r4, %r7, %r8
	addi %r0, %r9, 0x1
	cmpwi %r0, 0x4
	stw %r10, 0x4(%r6)
	stb %r10, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15d808
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15d808:
	lis %r4, 0x8034
	cmpwi %r3, 0x0
	slwi  %r0, %r9, 5
	subi %r4, %r4, 0xea0
	add %r29, %r4, %r0
	bne- _15d82c
	addi %r3, %r31, 0x2e8
	crxor 6, 6, 6
	bl sub_19b270
_15d82c:
	lwz %r3, -0x64e4(%r13)
	addi %r0, %r3, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15d848
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15d848:
	lwz %r3, -0x64cc(%r13)
	lis %r9, 0x8016
	slwi  %r0, %r0, 5
	li %r4, 0x70
	stbx %r4, %r3, %r0
	mr %r7, %r30
	mr %r10, %r29
	addi %r9, %r9, 0x45e4
	lwz %r0, -0x64e4(%r13)
	li %r4, 0x70
	lwz %r5, -0x64cc(%r13)
	li %r6, 0x20
	slwi  %r0, %r0, 5
	lwz %r3, -0x7318(%r13)
	add %r5, %r5, %r0
	li %r8, 0x20
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15d8b4
	mr %r4, %r3
	addi %r3, %r31, 0x324
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r29)
	b _15d8b8
_15d8b4:
	li %r3, 0x1
_15d8b8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_15d8d4
sub_15d8d4: # 0x80164b94
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r9, 0x8034
	cmpwi %r4, 0x0
	stw %r0, 0x24(%r1)
	subi %r9, %r9, 0xea0
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	beq- _15d924
	clrlwi. %r0, %r4, 27
	beq- _15d924
	addi %r3, %r31, 0x360
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15db1c
_15d924:
	cmpwi %r6, 0x0
	beq- _15d948
	clrlwi. %r0, %r6, 27
	beq- _15d948
	addi %r3, %r31, 0x398
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15db1c
_15d948:
	cmpwi %r7, 0x0
	beq- _15d96c
	clrlwi. %r0, %r7, 27
	beq- _15d96c
	addi %r3, %r31, 0x398
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15db1c
_15d96c:
	lwz %r29, -0x64e0(%r13)
	li %r28, 0x1
	addi %r12, %r9, 0x0
	stb %r28, -0x64e8(%r13)
	slwi  %r30, %r29, 5
	add %r11, %r12, %r30
	lbz %r10, 0x8(%r11)
	neg %r0, %r10
	or %r0, %r0, %r10
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15d9bc
	mr %r4, %r29
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15d9b8:
	b _15d9b8
_15d9bc:
	lwz %r10, 0xc(%r11)
	addis %r0, %r10, 0x115
	cmplwi %r0, 0xdaed
	beq- _15d9dc
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15d9d8:
	b _15d9d8
_15d9dc:
	stwx %r8, %r12, %r30
	addi %r0, %r29, 0x1
	cmpwi %r0, 0x4
	stw %r28, 0x4(%r11)
	stb %r28, 0x8(%r11)
	stw %r0, -0x64e0(%r13)
	blt- _15da00
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15da00:
	lwz %r8, -0x64e4(%r13)
	slwi  %r11, %r29, 5
	addi %r10, %r9, 0x0
	addi %r0, %r8, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	add %r30, %r10, %r11
	blt- _15da28
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15da28:
	lwz %r8, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	li %r10, 0x8b
	cmpwi %r4, 0x0
	stbx %r10, %r8, %r0
	addi %r8, %r9, 0xc0
	li %r0, 0x20
	lwz %r10, -0x64e4(%r13)
	lwz %r11, -0x64cc(%r13)
	slwi  %r10, %r10, 5
	add %r10, %r11, %r10
	stw %r3, 0x4(%r10)
	lwz %r3, -0x64e4(%r13)
	lwz %r10, -0x64cc(%r13)
	slwi  %r3, %r3, 5
	stw %r0, 0x4(%r8)
	add %r0, %r10, %r3
	stw %r0, 0xc0(%r9)
	stw %r4, 0x8(%r8)
	bne- _15da84
	li %r0, 0x0
	stw %r0, 0xc(%r8)
	b _15da8c
_15da84:
	li %r0, 0x2a4
	stw %r0, 0xc(%r8)
_15da8c:
	addi %r3, %r9, 0xc0
	cmpwi %r6, 0x0
	stw %r6, 0x10(%r3)
	bne- _15daa8
	li %r0, 0x0
	stw %r0, 0x14(%r3)
	b _15daac
_15daa8:
	stw %r5, 0x14(%r3)
_15daac:
	addi %r10, %r9, 0xc0
	addi %r5, %r9, 0x120
	li %r4, 0x49e4
	li %r0, 0x20
	stw %r7, 0x18(%r10)
	lis %r8, 0x8016
	lwz %r3, -0x7318(%r13)
	mr %r7, %r10
	stw %r4, 0x1c(%r10)
	mr %r9, %r30
	addi %r8, %r8, 0x45e4
	li %r4, 0x8b
	stw %r5, 0x20(%r10)
	li %r5, 0x3
	li %r6, 0x2
	stw %r0, 0x24(%r10)
	bl sub_18d19c
	cmpwi %r3, 0x0
	beq- _15db18
	mr %r4, %r3
	addi %r3, %r31, 0x3d0
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15db1c
_15db18:
	li %r3, 0x1
_15db1c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_15db3c
sub_15db3c: # 0x80164dfc
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r8, 0x0
	lis %r10, 0x8034
	lis %r31, 0x8028
	subi %r10, %r10, 0xea0
	addi %r31, %r31, 0x4a90
	beq- _15db78
	clrlwi. %r0, %r8, 27
	beq- _15db78
	li %r3, 0x0
	b _15dd88
_15db78:
	cmpwi %r6, 0x0
	bne- _15db98
	addi %r3, %r31, 0x458
	addi %r4, %r31, 0x4c8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15dd88
_15db98:
	clrlwi. %r0, %r6, 27
	beq- _15dbb8
	addi %r3, %r31, 0x47c
	addi %r4, %r31, 0x4c8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15dd88
_15dbb8:
	cmpwi %r4, 0x0
	bne- _15dbd8
	addi %r3, %r31, 0x4f0
	addi %r4, %r31, 0x4c8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15dd88
_15dbd8:
	clrlwi. %r0, %r4, 27
	beq- _15dbf8
	addi %r3, %r31, 0x51c
	addi %r4, %r31, 0x4c8
	crxor 6, 6, 6
	bl sub_19b270
	li %r3, 0x0
	b _15dd88
_15dbf8:
	lwz %r28, -0x64e0(%r13)
	li %r27, 0x1
	addi %r29, %r10, 0x0
	stb %r27, -0x64e8(%r13)
	slwi  %r30, %r28, 5
	add %r12, %r29, %r30
	lbz %r11, 0x8(%r12)
	neg %r0, %r11
	or %r0, %r0, %r11
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15dc48
	mr %r4, %r28
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15dc44:
	b _15dc44
_15dc48:
	lwz %r11, 0xc(%r12)
	addis %r0, %r11, 0x115
	cmplwi %r0, 0xdaed
	beq- _15dc68
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15dc64:
	b _15dc64
_15dc68:
	stwx %r9, %r29, %r30
	addi %r0, %r28, 0x1
	cmpwi %r0, 0x4
	stw %r27, 0x4(%r12)
	stb %r27, 0x8(%r12)
	stw %r0, -0x64e0(%r13)
	blt- _15dc8c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15dc8c:
	lwz %r9, -0x64e4(%r13)
	slwi  %r12, %r28, 5
	addi %r11, %r10, 0x0
	addi %r0, %r9, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	add %r30, %r11, %r12
	blt- _15dcb4
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15dcb4:
	lwz %r9, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	li %r11, 0x94
	cmpwi %r8, 0x0
	stbx %r11, %r9, %r0
	addi %r9, %r10, 0xc0
	li %r11, 0x20
	li %r0, 0xd8
	lwz %r12, -0x64e4(%r13)
	lwz %r29, -0x64cc(%r13)
	slwi  %r12, %r12, 5
	add %r12, %r29, %r12
	stw %r3, 0x4(%r12)
	lwz %r3, -0x64e4(%r13)
	lwz %r12, -0x64cc(%r13)
	slwi  %r3, %r3, 5
	stw %r11, 0x4(%r9)
	add %r3, %r12, %r3
	stw %r3, 0xc0(%r10)
	stw %r4, 0x8(%r9)
	stw %r0, 0xc(%r9)
	stw %r6, 0x10(%r9)
	stw %r5, 0x14(%r9)
	stw %r8, 0x18(%r9)
	bne- _15dd24
	li %r0, 0x0
	stw %r0, 0x1c(%r9)
	b _15dd28
_15dd24:
	stw %r7, 0x1c(%r9)
_15dd28:
	addi %r7, %r10, 0xc0
	addi %r3, %r10, 0x120
	li %r0, 0x20
	lis %r8, 0x8016
	stw %r3, 0x20(%r7)
	mr %r9, %r30
	lwz %r3, -0x7318(%r13)
	addi %r8, %r8, 0x45e4
	stw %r0, 0x24(%r7)
	li %r4, 0x94
	li %r5, 0x4
	li %r6, 0x1
	bl sub_18d19c
	cmpwi %r3, 0x0
	beq- _15dd84
	mr %r4, %r3
	addi %r3, %r31, 0x3d0
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15dd88
_15dd84:
	li %r3, 0x1
_15dd88:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x15dda0, 0x80165504 - 0x80165060

	.global sub_15e244
sub_15e244: # 0x80165504
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15e27c
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15e27c:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x8c
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15e2dc
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15e2d8:
	b _15e2d8
_15e2dc:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15e2fc
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15e2f8:
	b _15e2f8
_15e2fc:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15e320
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15e320:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r9, 0x8016
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	add %r5, %r4, %r0
	lwz %r3, -0x7318(%r13)
	mr %r10, %r30
	addi %r9, %r9, 0x45e4
	li %r4, 0x8c
	li %r6, 0x20
	li %r7, 0x0
	li %r8, 0x0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15e38c
	mr %r4, %r3
	addi %r3, %r31, 0x668
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15e390
_15e38c:
	li %r3, 0x1
_15e390:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15e3a8
sub_15e3a8: # 0x80165668
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r9, 0x8034
	li %r12, 0x1
	stw %r0, 0x14(%r1)
	subi %r9, %r9, 0xea0
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r11, -0x64e0(%r13)
	stb %r12, -0x64e8(%r13)
	slwi  %r10, %r11, 5
	add %r8, %r9, %r10
	lbz %r7, 0x8(%r8)
	neg %r0, %r7
	or %r0, %r0, %r7
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15e418
	mr %r4, %r11
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15e414:
	b _15e414
_15e418:
	lwz %r7, 0xc(%r8)
	addis %r0, %r7, 0x115
	cmplwi %r0, 0xdaed
	beq- _15e438
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15e434:
	b _15e434
_15e438:
	stwx %r6, %r9, %r10
	addi %r0, %r11, 0x1
	cmpwi %r0, 0x4
	stw %r12, 0x4(%r8)
	stb %r12, 0x8(%r8)
	stw %r0, -0x64e0(%r13)
	blt- _15e45c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15e45c:
	lwz %r6, -0x64e4(%r13)
	lis %r7, 0x8034
	stw %r4, -0x64d4(%r13)
	slwi  %r8, %r11, 5
	addi %r0, %r6, 0x1
	subi %r7, %r7, 0xea0
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	add %r30, %r7, %r8
	blt- _15e48c
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15e48c:
	lwz %r6, -0x64cc(%r13)
	lis %r9, 0x8016
	slwi  %r0, %r0, 5
	li %r7, 0x8d
	stbx %r7, %r6, %r0
	mr %r7, %r3
	mr %r8, %r4
	mr %r10, %r30
	lwz %r0, -0x64e4(%r13)
	addi %r9, %r9, 0x45e4
	lwz %r3, -0x64cc(%r13)
	li %r6, 0x20
	slwi  %r0, %r0, 5
	add %r3, %r3, %r0
	stw %r4, 0x4(%r3)
	li %r4, 0x8d
	lwz %r0, -0x64e4(%r13)
	lwz %r3, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	add %r3, %r3, %r0
	stw %r5, 0x8(%r3)
	lwz %r0, -0x64e4(%r13)
	lwz %r5, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	lwz %r3, -0x7318(%r13)
	add %r5, %r5, %r0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15e520
	mr %r4, %r3
	addi %r3, %r31, 0x6a8
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15e524
_15e520:
	li %r3, 0x1
_15e524:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x15e53c, 0x80165c60 - 0x801657fc

	.global sub_15e9a0
sub_15e9a0: # 0x80165c60
	stw %r3, -0x64d8(%r13)
	li %r3, 0x1
	blr

	.global sub_15e9ac
sub_15e9ac: # 0x80165c6c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r7, 0x8034
	li %r9, 0x1
	stw %r0, 0x14(%r1)
	subi %r7, %r7, 0xea0
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15ea18
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15ea14:
	b _15ea14
_15ea18:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15ea38
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15ea34:
	b _15ea34
_15ea38:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15ea5c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15ea5c:
	lwz %r3, -0x64e4(%r13)
	lis %r5, 0x8034
	slwi  %r4, %r4, 5
	addi %r0, %r3, 0x1
	subi %r5, %r5, 0xea0
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	add %r30, %r5, %r4
	blt- _15ea88
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15ea88:
	lwz %r3, -0x64cc(%r13)
	lis %r9, 0x8016
	slwi  %r0, %r0, 5
	li %r4, 0x8a
	stbx %r4, %r3, %r0
	mr %r10, %r30
	addi %r9, %r9, 0x45e4
	li %r4, 0x8a
	lwz %r0, -0x64e4(%r13)
	li %r6, 0x20
	lwz %r3, -0x64cc(%r13)
	li %r7, 0x0
	slwi  %r0, %r0, 5
	lwz %r5, -0x64d8(%r13)
	add %r3, %r3, %r0
	li %r8, 0x0
	stw %r5, 0x4(%r3)
	lwz %r0, -0x64e4(%r13)
	lwz %r5, -0x64cc(%r13)
	slwi  %r0, %r0, 5
	lwz %r3, -0x7318(%r13)
	add %r5, %r5, %r0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15eb0c
	mr %r4, %r3
	addi %r3, %r31, 0x860
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15eb10
_15eb0c:
	li %r3, 0x1
_15eb10:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15eb28
t1_15eb28:
	.incbin "basemain.dol", 0x161088, 0x7d4
	
	.global sub_15f2fc
sub_15f2fc: # 0x801665bc
	lis %r3, 0x8034
	subi %r3, %r3, 0xe20
	lwz %r3, 0x4(%r3)
	blr
	.incbin "./dol.text.bin", 0x15f30c, 0x801665d8 - 0x801665cc

	.global sub_15f318
sub_15f318: # 0x801665d8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15f350
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15f350:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x7a
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15f3b0
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15f3ac:
	b _15f3ac
_15f3b0:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15f3d0
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15f3cc:
	b _15f3cc
_15f3d0:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15f3f4
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15f3f4:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r7, 0x8034
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	lis %r9, 0x8016
	lwz %r3, -0x7318(%r13)
	add %r5, %r4, %r0
	mr %r10, %r30
	subi %r7, %r7, 0xe00
	addi %r9, %r9, 0x469c
	li %r4, 0x7a
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15f464
	mr %r4, %r3
	addi %r3, %r31, 0xdb0
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15f468
_15f464:
	li %r3, 0x1
_15f468:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15f480
sub_15f480: # 0x80166740
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15f4b8
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15f4b8:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x95
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15f518
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15f514:
	b _15f514
_15f518:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15f538
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15f534:
	b _15f534
_15f538:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15f55c
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15f55c:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r7, 0x8034
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	lis %r9, 0x8016
	lwz %r3, -0x7318(%r13)
	add %r5, %r4, %r0
	mr %r10, %r30
	subi %r7, %r7, 0xd20
	addi %r9, %r9, 0x45e4
	li %r4, 0x95
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15f5cc
	mr %r4, %r3
	addi %r3, %r31, 0xdf4
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15f5d0
_15f5cc:
	li %r3, 0x1
_15f5d0:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15f5e8
t1_15f5e8:
	.incbin "basemain.dol", 0x161b48, 0xc
	
	.global sub_15f5f4
sub_15f5f4: # 0x801668b4
	li %r3, 0x1
	blr

	.global sub_15f5fc
sub_15f5fc: # 0x801668bc
	li %r3, 0x1
	blr

	.global sub_15f604
sub_15f604: # 0x801668c4
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8028
	addi %r31, %r31, 0x4a90
	stw %r30, 0x8(%r1)
	lwz %r4, -0x64e4(%r13)
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r0, -0x64e4(%r13)
	blt- _15f63c
	li %r0, 0x0
	stw %r0, -0x64e4(%r13)
_15f63c:
	lwz %r4, -0x64cc(%r13)
	lis %r7, 0x8034
	slwi  %r0, %r0, 5
	li %r5, 0x86
	stbx %r5, %r4, %r0
	li %r9, 0x1
	subi %r7, %r7, 0xea0
	lwz %r4, -0x64e0(%r13)
	stb %r9, -0x64e8(%r13)
	slwi  %r8, %r4, 5
	add %r6, %r7, %r8
	lbz %r5, 0x8(%r6)
	neg %r0, %r5
	or %r0, %r0, %r5
	srwi  %r0, %r0, 31
	cmplwi %r0, 0x1
	bne- _15f69c
	addi %r3, %r31, 0x240
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x278
	crxor 6, 6, 6
	bl sub_19b270
_15f698:
	b _15f698
_15f69c:
	lwz %r5, 0xc(%r6)
	addis %r0, %r5, 0x115
	cmplwi %r0, 0xdaed
	beq- _15f6bc
	addi %r3, %r31, 0x2a8
	crxor 6, 6, 6
	bl sub_19b270
_15f6b8:
	b _15f6b8
_15f6bc:
	stwx %r3, %r7, %r8
	addi %r0, %r4, 0x1
	cmpwi %r0, 0x4
	stw %r9, 0x4(%r6)
	stb %r9, 0x8(%r6)
	stw %r0, -0x64e0(%r13)
	blt- _15f6e0
	li %r0, 0x0
	stw %r0, -0x64e0(%r13)
_15f6e0:
	lwz %r0, -0x64e4(%r13)
	lis %r3, 0x8034
	slwi  %r5, %r4, 5
	lwz %r4, -0x64cc(%r13)
	subi %r3, %r3, 0xea0
	lis %r9, 0x8016
	add %r30, %r3, %r5
	slwi  %r0, %r0, 5
	add %r5, %r4, %r0
	lwz %r3, -0x7318(%r13)
	mr %r10, %r30
	addi %r9, %r9, 0x45e4
	li %r4, 0x86
	li %r6, 0x20
	li %r7, 0x0
	li %r8, 0x0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	beq- _15f74c
	mr %r4, %r3
	addi %r3, %r31, 0xe3c
	crxor 6, 6, 6
	bl sub_19b270
	li %r0, 0x0
	li %r3, 0x0
	stb %r0, 0x8(%r30)
	b _15f750
_15f74c:
	li %r3, 0x1
_15f750:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_15f768
t1_15f768:
	.incbin "basemain.dol", 0x161cc8, 0x708
	
	.global sub_15fe70
sub_15fe70: # 0x80167130
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0x0
	lwz %r0, -0x72f8(%r13)
	cmpwi %r0, 0x0
	bge- _15feac
	subi %r3, %r13, 0x72f0
	li %r4, 0x0
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, -0x72f8(%r13)
	bge- _15feac
	mr %r31, %r3
_15feac:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15fec4
sub_15fec4: # 0x80167184
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r4, 0x0
	stw %r0, 0x14(%r1)
	lwz %r3, -0x72f8(%r13)
	cmpwi %r3, 0x0
	blt- _15fef8
	bl sub_18c778
	cmpwi %r3, 0x0
	mr %r4, %r3
	bne- _15fef8
	li %r0, -0x1
	stw %r0, -0x72f8(%r13)
_15fef8:
	lwz %r0, 0x14(%r1)
	mr %r3, %r4
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_15ff0c
sub_15ff0c: # 0x801671cc
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x120
	.incbin "./dol.text.bin", 0x15ff18, 0x801671dc - 0x801671d8
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	addi %r10, %r1, 0x20
	lwz %r9, -0x72f8(%r13)
	cmpwi %r9, 0x0
	bge- _15ff40
	li %r3, -0x3f9
	b _15ff8c
_15ff40:
	clrlwi. %r0, %r5, 27
	beq- _15ff50
	li %r3, -0x3f9
	b _15ff8c
_15ff50:
	li %r8, 0x8
	li %r0, 0xd8
	stw %r4, 0x24(%r1)
	li %r4, 0x8
	li %r6, 0x0
	stw %r3, 0x20(%r1)
	mr %r3, %r9
	stw %r5, 0xf8(%r1)
	li %r5, 0x2
	stw %r10, 0xf0(%r1)
	stw %r8, 0xf4(%r1)
	stw %r0, 0xfc(%r1)
	bl sub_18d35c
	li %r0, -0x1
	stw %r0, -0x72f8(%r13)
_15ff8c:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr
	.incbin "./dol.text.bin", 0x15ffa0, 0x801674a4 - 0x80167260

	.global sub_1601e4
sub_1601e4: # 0x801674a4
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x140
	.incbin "./dol.text.bin", 0x1601f0, 0x801674b4 - 0x801674b0
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	addi %r11, %r1, 0x20
	stw %r31, -0x4(%r12)
	mr %r31, %r6
	addi %r12, %r1, 0x40
	lwz %r10, -0x72f8(%r13)
	cmpwi %r10, 0x0
	blt- _160228
	li %r8, 0x0
	cmplw %r6, %r8
	bne- _160230
_160228:
	li %r3, -0x3f9
	b _1602e4
_160230:
	clrlwi. %r0, %r5, 27
	beq- _160240
	li %r3, -0x3f9
	b _1602e4
_160240:
	cmplw %r5, %r8
	stw %r4, 0x24(%r1)
	stw %r3, 0x20(%r1)
	bne- _160290
	li %r5, 0x8
	li %r0, 0x4
	stw %r5, 0xf4(%r1)
	mr %r3, %r10
	li %r4, 0x12
	li %r5, 0x1
	stw %r11, 0xf0(%r1)
	li %r6, 0x1
	stw %r12, 0xf8(%r1)
	stw %r0, 0xfc(%r1)
	bl sub_18d280
	cmpwi %r3, 0x0
	bne- _1602e4
	lwz %r0, 0x40(%r1)
	stw %r0, 0x0(%r31)
	b _1602e4
_160290:
	lwz %r9, 0x0(%r6)
	cmpwi %r9, 0x0
	bne- _1602a4
	li %r3, -0x3f9
	b _1602e4
_1602a4:
	li %r8, 0x8
	li %r0, 0x4
	stw %r5, 0x100(%r1)
	mr %r3, %r10
	li %r4, 0x13
	li %r5, 0x2
	stw %r9, 0x40(%r1)
	stw %r11, 0xf0(%r1)
	stw %r8, 0xf4(%r1)
	stw %r12, 0xf8(%r1)
	stw %r0, 0xfc(%r1)
	lwz %r0, 0x0(%r6)
	li %r6, 0x1
	mulli %r0, %r0, 0xd8
	stw %r0, 0x104(%r1)
	bl sub_18d280
_1602e4:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_1602fc
sub_1602fc: # 0x801675bc
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x120
	.incbin "./dol.text.bin", 0x160308, 0x801675cc - 0x801675c8
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	lwz %r0, -0x72f8(%r13)
	cmpwi %r0, 0x0
	blt- _160330
	li %r5, 0x0
	cmplw %r4, %r5
	bne- _160338
_160330:
	li %r3, -0x3f9
	b _16038c
_160338:
	clrlwi. %r0, %r3, 27
	bne- _160348
	clrlwi. %r0, %r4, 27
	beq- _160350
_160348:
	li %r3, -0x3f9
	b _16038c
_160350:
	cmplw %r3, %r5
	stw %r3, 0xf0(%r1)
	bne- _160364
	stw %r5, 0xf4(%r1)
	b _16036c
_160364:
	li %r0, 0x2a4
	stw %r0, 0xf4(%r1)
_16036c:
	li %r0, 0xd8
	stw %r4, 0xf8(%r1)
	lwz %r3, -0x72f8(%r13)
	li %r4, 0x1b
	stw %r0, 0xfc(%r1)
	li %r5, 0x1
	li %r6, 0x1
	bl sub_18d280
_16038c:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_1603a0
sub_1603a0: # 0x80167660
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x140
	.incbin "./dol.text.bin", 0x1603ac, 0x80167670 - 0x8016766c
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	addi %r8, %r1, 0x20
	stw %r31, -0x4(%r12)
	mr %r31, %r4
	lwz %r6, -0x72f8(%r13)
	cmpwi %r6, 0x0
	blt- _1603e0
	li %r5, 0x0
	cmplw %r4, %r5
	bne- _1603e8
_1603e0:
	li %r3, -0x3f9
	b _160478
_1603e8:
	clrlwi. %r0, %r3, 27
	beq- _1603f8
	li %r3, -0x3f9
	b _160478
_1603f8:
	cmplw %r3, %r5
	bne- _160434
	li %r0, 0x4
	mr %r3, %r6
	stw %r8, 0xf0(%r1)
	li %r4, 0x39
	li %r5, 0x0
	li %r6, 0x1
	stw %r0, 0xf4(%r1)
	bl sub_18d280
	cmpwi %r3, 0x0
	bne- _160478
	lwz %r0, 0x20(%r1)
	stw %r0, 0x0(%r31)
	b _160478
_160434:
	lwz %r5, 0x0(%r4)
	cmpwi %r5, 0x0
	bne- _160448
	li %r3, -0x3f9
	b _160478
_160448:
	li %r0, 0x4
	stw %r3, 0xf8(%r1)
	mr %r3, %r6
	li %r6, 0x1
	stw %r5, 0x20(%r1)
	li %r5, 0x1
	stw %r8, 0xf0(%r1)
	stw %r0, 0xf4(%r1)
	lwz %r0, 0x0(%r4)
	li %r4, 0x3a
	stw %r0, 0xfc(%r1)
	bl sub_18d280
_160478:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr
	.incbin "./dol.text.bin", 0x160490, 0x80167864 - 0x80167750

	.global sub_1605a4
sub_1605a4: # 0x80167864
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x120
	.incbin "./dol.text.bin", 0x1605b0, 0x80167874 - 0x80167870
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	addi %r10, %r1, 0x20
	lwz %r9, -0x72f8(%r13)
	cmpwi %r9, 0x0
	blt- _1605dc
	li %r0, 0x0
	cmplw %r5, %r0
	bne- _1605e4
_1605dc:
	li %r3, -0x3f9
	b _160628
_1605e4:
	clrlwi. %r0, %r5, 27
	beq- _1605f4
	li %r3, -0x3f9
	b _160628
_1605f4:
	li %r8, 0x8
	li %r0, 0x1e
	stw %r4, 0x24(%r1)
	li %r4, 0x1d
	li %r6, 0x1
	stw %r3, 0x20(%r1)
	mr %r3, %r9
	stw %r5, 0xf8(%r1)
	li %r5, 0x1
	stw %r10, 0xf0(%r1)
	stw %r8, 0xf4(%r1)
	stw %r0, 0xfc(%r1)
	bl sub_18d280
_160628:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_16063c
sub_16063c: # 0x801678fc
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x140
	.incbin "./dol.text.bin", 0x160648, 0x8016790c - 0x80167908
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	stw %r31, -0x4(%r12)
	mr %r31, %r3
	lwz %r4, -0x72f8(%r13)
	cmpwi %r4, 0x0
	blt- _160678
	li %r0, 0x0
	cmplw %r3, %r0
	bne- _160680
_160678:
	li %r3, -0x3f9
	b _1606bc
_160680:
	addi %r3, %r1, 0x20
	li %r0, 0x8
	stw %r3, 0xf0(%r1)
	mr %r3, %r4
	li %r4, 0x20
	li %r5, 0x0
	stw %r0, 0xf4(%r1)
	li %r6, 0x1
	bl sub_18d280
	cmpwi %r3, 0x0
	bne- _1606bc
	lwz %r0, 0x20(%r1)
	lwz %r4, 0x24(%r1)
	stw %r4, 0x4(%r31)
	stw %r0, 0x0(%r31)
_1606bc:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_1606d4
sub_1606d4: # 0x80167994
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x140
	.incbin "./dol.text.bin", 0x1606e0, 0x801679a4 - 0x801679a0
	mflr %r0
	stw %r0, 0x4(%r12)
	addi %r7, %r1, 0xf0
	addi %r9, %r1, 0x20
	addi %r10, %r1, 0x40
	stw %r31, -0x4(%r12)
	mr %r31, %r6
	lwz %r0, -0x72f8(%r13)
	cmpwi %r0, 0x0
	bge- _160714
	li %r3, -0x3f9
	b _160790
_160714:
	clrlwi. %r0, %r5, 27
	beq- _160724
	li %r3, -0x3f9
	b _160790
_160724:
	li %r0, 0x0
	li %r8, 0x8
	cmplw %r5, %r0
	stw %r4, 0x24(%r1)
	stw %r3, 0x20(%r1)
	stw %r9, 0xf0(%r1)
	stw %r8, 0xf4(%r1)
	bne- _160750
	stw %r0, 0xf8(%r1)
	stw %r0, 0xfc(%r1)
	b _160768
_160750:
	stw %r5, 0xf8(%r1)
	lwz %r0, 0x0(%r6)
	slwi  %r0, %r0, 3
	stw %r0, 0xfc(%r1)
	lwz %r0, 0x0(%r6)
	stw %r0, 0x40(%r1)
_160768:
	li %r0, 0x4
	stw %r10, 0x100(%r1)
	lwz %r3, -0x72f8(%r13)
	li %r4, 0x16
	stw %r0, 0x104(%r1)
	li %r5, 0x1
	li %r6, 0x2
	bl sub_18d280
	lwz %r0, 0x40(%r1)
	stw %r0, 0x0(%r31)
_160790:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr
	.incbin "./dol.text.bin", 0x1607a8, 0x80167dd8 - 0x80167a68

	.global sub_160b18
sub_160b18: # 0x80167dd8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	lis %r5, 0x8034
	subi %r5, %r5, 0xd00
	cmpwi %r3, 0x1
	beq- _160b94
	bge- _160b4c
	cmpwi %r3, 0x0
	bge- _160b58
	b _160bf4
_160b4c:
	cmpwi %r3, 0x3
	bge- _160bf4
	b _160bc4
_160b58:
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	bne- _160b70
	lwz %r0, 0x80(%r5)
	cmpwi %r0, 0x0
	beq- _160b7c
_160b70:
	lwz %r0, 0xc(%r4)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _160b88
_160b7c:
	lis %r3, 0x41
	bl sub_19f5dc
	b _160bf4
_160b88:
	lis %r3, 0x41
	bl sub_19f65c
	b _160bf4
_160b94:
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	beq- _160bac
	lwz %r0, 0xc(%r4)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _160bb8
_160bac:
	lis %r3, 0x8
	bl sub_19f5dc
	b _160bf4
_160bb8:
	lis %r3, 0x8
	bl sub_19f65c
	b _160bf4
_160bc4:
	li %r3, 0x19
	bl sub_19f2ac
	cmpwi %r3, 0x0
	beq- _160be0
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _160bec
_160be0:
	li %r3, 0x40
	bl sub_19f5dc
	b _160bf4
_160bec:
	li %r3, 0x40
	bl sub_19f65c
_160bf4:
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_160c08
sub_160c08: # 0x80167ec8
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	mr %r25, %r7
	slwi  %r0, %r3, 6
	lis %r3, 0x8034
	subi %r3, %r3, 0xd00
	add %r31, %r3, %r0
	bl sub_19f24c
	mr %r30, %r3
	lwz %r0, 0xc(%r31)
	clrlwi. %r0, %r0, 30
	bne- _160c60
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 29, 29
	bne- _160c70
_160c60:
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x0
	b _160e6c
_160c70:
	stw %r25, 0x4(%r31)
	cmpwi %r25, 0x0
	beq- _160cac
	mulli %r3, %r26, 0x14
	lis %r0, 0xcd00
	add %r3, %r0, %r3
	lwz %r0, 0x6800(%r3)
	andi. %r0, %r0, 0x7f5
	ori %r0, %r0, 0x8
	stw %r0, 0x6800(%r3)
	lis %r3, 0x20
	slwi  %r0, %r26, 2
	subf %r0, %r26, %r0
	srw %r3, %r3, %r0
	bl sub_19f65c
_160cac:
	lwz %r0, 0xc(%r31)
	ori %r0, %r0, 0x2
	stw %r0, 0xc(%r31)
	cmpwi %r29, 0x0
	beq- _160e20
	li %r0, 0x0
	li %r4, 0x0
	cmpwi %cr1, %r28, 0x0
	ble- cr1, _160e10
	subi %r6, %r28, 0x8
	cmpwi %r28, 0x8
	ble- _160ddc
	li %r5, 0x0
	blt- cr1, _160cf8
	lis %r3, 0x8000
	subi %r3, %r3, 0x2
	cmpw %r28, %r3
	bgt- _160cf8
	li %r5, 0x1
_160cf8:
	cmpwi %r5, 0x0
	beq- _160ddc
	mr %r3, %r27
	addi %r5, %r6, 0x7
	srwi  %r5, %r5, 3
	mtctr %r5
	cmpwi %r6, 0x0
	ble- _160ddc
_160d18:
	lbz %r6, 0x0(%r3)
	subfic %r5, %r4, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x1(%r3)
	addi %r5, %r4, 0x1
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x2(%r3)
	addi %r5, %r4, 0x2
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x3(%r3)
	neg %r5, %r4
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x4(%r3)
	addi %r5, %r4, 0x4
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x5(%r3)
	addi %r5, %r4, 0x5
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x6(%r3)
	addi %r5, %r4, 0x6
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	lbz %r6, 0x7(%r3)
	addi %r5, %r4, 0x7
	subfic %r5, %r5, 0x3
	slwi  %r5, %r5, 3
	slw %r5, %r6, %r5
	or %r0, %r0, %r5
	addi %r3, %r3, 0x8
	addi %r4, %r4, 0x8
	bdnz+ _160d18
_160ddc:
	add %r6, %r27, %r4
	subf %r3, %r4, %r28
	mtctr %r3
	cmpw %r4, %r28
	bge- _160e10
_160df0:
	lbz %r5, 0x0(%r6)
	subfic %r3, %r4, 0x3
	slwi  %r3, %r3, 3
	slw %r3, %r5, %r3
	or %r0, %r0, %r3
	addi %r6, %r6, 0x1
	addi %r4, %r4, 0x1
	bdnz+ _160df0
_160e10:
	lis %r4, 0xcd00
	mulli %r3, %r26, 0x14
	add %r3, %r4, %r3
	stw %r0, 0x6810(%r3)
_160e20:
	stw %r27, 0x14(%r31)
	subi %r3, %r29, 0x1
	subfic %r0, %r29, 0x1
	or %r0, %r3, %r0
	srawi %r0, %r0, 31
	and %r0, %r28, %r0
	stw %r0, 0x10(%r31)
	slwi  %r0, %r29, 2
	ori %r3, %r0, 0x1
	subi %r0, %r28, 0x1
	slwi  %r0, %r0, 4
	or %r4, %r3, %r0
	lis %r3, 0xcd00
	mulli %r0, %r26, 0x14
	add %r3, %r3, %r0
	stw %r4, 0x680c(%r3)
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x1
_160e6c:
	addi %r11, %r1, 0x30
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	.incbin "./dol.text.bin", 0x160e84, 0x801682e0 - 0x80168144

	.global sub_161020
sub_161020: # 0x801682e0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	slwi  %r0, %r3, 6
	lis %r4, 0x8034
	subi %r4, %r4, 0xd00
	add %r31, %r4, %r0
	li %r29, 0x0
	mulli %r30, %r3, 0x14
	lis %r0, 0xcd00
	add %r3, %r0, %r30
	b _16126c
_161060:
	lwz %r0, 0x680c(%r3)
	clrlwi. %r0, %r0, 31
	bne- _16126c
	bl sub_19f24c
	mr %r28, %r3
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 29, 29
	beq- _161260
	lwz %r0, 0xc(%r31)
	clrlwi. %r0, %r0, 30
	beq- _1611dc
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 30, 30
	beq- _1611d0
	lwz %r5, 0x10(%r31)
	cmpwi %cr1, %r5, 0x0
	beq- cr1, _1611d0
	lwz %r4, 0x14(%r31)
	lis %r0, 0xcd00
	add %r3, %r0, %r30
	lwz %r0, 0x6810(%r3)
	li %r3, 0x0
	ble- cr1, _1611d0
	subi %r7, %r5, 0x8
	cmpwi %r5, 0x8
	ble- _1611a4
	li %r8, 0x0
	blt- cr1, _1610e4
	lis %r6, 0x8000
	subi %r6, %r6, 0x2
	cmpw %r5, %r6
	bgt- _1610e4
	li %r8, 0x1
_1610e4:
	cmpwi %r8, 0x0
	beq- _1611a4
	addi %r6, %r7, 0x7
	srwi  %r6, %r6, 3
	mtctr %r6
	cmpwi %r7, 0x0
	ble- _1611a4
_161100:
	subfic %r6, %r3, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x0(%r4)
	addi %r6, %r3, 0x1
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x1(%r4)
	addi %r6, %r3, 0x2
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x2(%r4)
	neg %r6, %r3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x3(%r4)
	addi %r6, %r3, 0x4
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x4(%r4)
	addi %r6, %r3, 0x5
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x5(%r4)
	addi %r6, %r3, 0x6
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x6(%r4)
	addi %r6, %r3, 0x7
	subfic %r6, %r6, 0x3
	slwi  %r6, %r6, 3
	srw %r6, %r0, %r6
	stb %r6, 0x7(%r4)
	addi %r4, %r4, 0x8
	addi %r3, %r3, 0x8
	bdnz+ _161100
_1611a4:
	subf %r6, %r3, %r5
	mtctr %r6
	cmpw %r3, %r5
	bge- _1611d0
_1611b4:
	subfic %r5, %r3, 0x3
	slwi  %r5, %r5, 3
	srw %r5, %r0, %r5
	stb %r5, 0x0(%r4)
	addi %r4, %r4, 0x1
	addi %r3, %r3, 0x1
	bdnz+ _1611b4
_1611d0:
	lwz %r0, 0xc(%r31)
	clrrwi  %r0, %r0, 2
	stw %r0, 0xc(%r31)
_1611dc:
	bl sub_199194
	cmplwi %r3, 0xff
	bne- _16125c
	bl sub_197fdc
	clrrwi  %r3, %r3, 28
	addis %r0, %r3, 0xe000
	cmplwi %r0, 0x0
	beq- _16125c
	lwz %r0, 0x10(%r31)
	cmpwi %r0, 0x4
	bne- _16125c
	lis %r0, 0xcd00
	add %r4, %r0, %r30
	lwz %r0, 0x6800(%r4)
	rlwinm. %r0, %r0, 0, 25, 27
	bne- _16125c
	lwz %r3, 0x6810(%r4)
	addis %r0, %r3, 0xfeff
	cmplwi %r0, 0x0
	beq- _16124c
	lwz %r3, 0x6810(%r4)
	addis %r0, %r3, 0xfaf9
	cmplwi %r0, 0x0
	beq- _16124c
	lwz %r3, 0x6810(%r4)
	addis %r0, %r3, 0xfbde
	cmplwi %r0, 0x1
	bne- _16125c
_16124c:
	lis %r3, 0x8000
	lhz %r0, 0x30e6(%r3)
	cmplwi %r0, 0x8200
	bne- _161260
_16125c:
	li %r29, 0x1
_161260:
	mr %r3, %r28
	bl sub_19f274
	b _161278
_16126c:
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 29, 29
	bne+ _161060
_161278:
	mr %r3, %r29
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x16129c, 0x801685e0 - 0x8016855c

	.global sub_161320
sub_161320: # 0x801685e0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	slwi  %r0, %r3, 6
	lis %r4, 0x8034
	subi %r4, %r4, 0xd00
	add %r31, %r4, %r0
	cmpwi %r3, 0x2
	bne- _161360
	li %r3, 0x1
	b _161480
_161360:
	li %r29, 0x1
	bl sub_19f24c
	mr %r30, %r3
	mulli %r3, %r28, 0x14
	lis %r0, 0xcd00
	add %r3, %r0, %r3
	lwz %r5, 0x6800(%r3)
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 28, 28
	bne- _161448
	rlwinm. %r0, %r5, 0, 20, 20
	beq- _1613b8
	lwz %r0, 0x6800(%r3)
	andi. %r0, %r0, 0x7f5
	ori %r0, %r0, 0x800
	stw %r0, 0x6800(%r3)
	li %r4, 0x0
	stw %r4, 0x20(%r31)
	slwi  %r3, %r28, 2
	lis %r0, 0x8000
	add %r3, %r0, %r3
	stw %r4, 0x30c0(%r3)
_1613b8:
	rlwinm. %r0, %r5, 0, 19, 19
	beq- _161428
	bl sub_1a39fc
	lis %r31, 0x8000
	lwz %r0, 0xf8(%r31)
	srwi  %r0, %r0, 2
	lis %r5, 0x1062
	addi %r5, %r5, 0x4dd3
	mulhwu %r0, %r5, %r0
	srwi  %r6, %r0, 6
	li %r5, 0x0
	bl sub_198d0
	li %r6, 0x64
	li %r5, 0x0
	bl sub_198d0
	addi %r4, %r4, 0x1
	slwi  %r0, %r28, 2
	add %r3, %r31, %r0
	lwz %r0, 0x30c0(%r3)
	cmpwi %r0, 0x0
	bne- _161410
	stw %r4, 0x30c0(%r3)
_161410:
	lwz %r0, 0x30c0(%r3)
	subf %r0, %r0, %r4
	cmpwi %r0, 0x3
	bge- _161474
	li %r29, 0x0
	b _161474
_161428:
	li %r4, 0x0
	stw %r4, 0x20(%r31)
	slwi  %r3, %r28, 2
	lis %r0, 0x8000
	add %r3, %r0, %r3
	stw %r4, 0x30c0(%r3)
	li %r29, 0x0
	b _161474
_161448:
	rlwinm. %r0, %r5, 0, 19, 19
	beq- _161458
	rlwinm. %r0, %r5, 0, 20, 20
	beq- _161474
_161458:
	li %r4, 0x0
	stw %r4, 0x20(%r31)
	slwi  %r3, %r28, 2
	lis %r0, 0x8000
	add %r3, %r0, %r3
	stw %r4, 0x30c0(%r3)
	li %r29, 0x0
_161474:
	mr %r3, %r30
	bl sub_19f274
	mr %r3, %r29
_161480:
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1614a0, 0x80168930 - 0x80168760

	.global sub_161670
sub_161670: # 0x80168930
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	slwi  %r0, %r3, 6
	lis %r3, 0x8034
	subi %r3, %r3, 0xd00
	add %r31, %r3, %r0
	bl sub_19f24c
	mr %r30, %r3
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 29, 29
	bne- _1616f8
	cmpwi %r27, 0x2
	beq- _161708
	cmpwi %r28, 0x0
	bne- _1616e0
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 28, 28
	bne- _1616e0
	mr %r3, %r27
	bl sub_161320
	cmpwi %r3, 0x0
	beq- _1616f8
_1616e0:
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _1616f8
	lwz %r0, 0x18(%r31)
	cmplw %r0, %r28
	beq- _161708
_1616f8:
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x0
	b _161788
_161708:
	lwz %r0, 0xc(%r31)
	ori %r0, %r0, 0x4
	stw %r0, 0xc(%r31)
	mulli %r3, %r27, 0x14
	lis %r0, 0xcd00
	add %r4, %r0, %r3
	lwz %r3, 0x6800(%r4)
	andi. %r3, %r3, 0x405
	slwi  %r0, %r29, 4
	or %r3, %r3, %r0
	li %r0, 0x1
	slw %r0, %r0, %r28
	slwi  %r0, %r0, 7
	or %r3, %r3, %r0
	stw %r3, 0x6800(%r4)
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 28, 28
	beq- _16177c
	cmpwi %r27, 0x1
	beq- _161774
	bge- _16177c
	cmpwi %r27, 0x0
	bge- _161768
	b _16177c
_161768:
	lis %r3, 0x10
	bl sub_19f5dc
	b _16177c
_161774:
	lis %r3, 0x2
	bl sub_19f5dc
_16177c:
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x1
_161788:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1617a0
sub_1617a0: # 0x80168a60
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	slwi  %r0, %r3, 6
	lis %r3, 0x8034
	subi %r3, %r3, 0xd00
	add %r31, %r3, %r0
	bl sub_19f24c
	mr %r29, %r3
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 29, 29
	bne- _1617f0
	bl sub_19f274
	li %r3, 0x0
	b _161880
_1617f0:
	lwz %r0, 0xc(%r31)
	rlwinm  %r0, %r0, 0, 30, 28
	stw %r0, 0xc(%r31)
	mulli %r3, %r28, 0x14
	lis %r0, 0xcd00
	add %r3, %r0, %r3
	lwz %r30, 0x6800(%r3)
	andi. %r0, %r30, 0x405
	stw %r0, 0x6800(%r3)
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 28, 28
	beq- _16184c
	cmpwi %r28, 0x1
	beq- _161844
	bge- _16184c
	cmpwi %r28, 0x0
	bge- _161838
	b _16184c
_161838:
	lis %r3, 0x10
	bl sub_19f65c
	b _16184c
_161844:
	lis %r3, 0x2
	bl sub_19f65c
_16184c:
	mr %r3, %r29
	bl sub_19f274
	cmpwi %r28, 0x2
	beq- _16187c
	rlwinm. %r0, %r30, 0, 24, 24
	beq- _16187c
	mr %r3, %r28
	bl sub_161320
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi  %r3, %r0, 31
	b _161880
_16187c:
	li %r3, 0x1
_161880:
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1618a0, 0x801690c4 - 0x80168b60

	.global sub_161e04
sub_161e04: # 0x801690c4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r31, %r4
	mr %r28, %r5
	slwi  %r0, %r3, 6
	lis %r3, 0x8034
	subi %r3, %r3, 0xd00
	add %r30, %r3, %r0
	bl sub_19f24c
	mr %r29, %r3
	lwz %r0, 0xc(%r30)
	rlwinm. %r0, %r0, 0, 27, 27
	beq- _161ec0
	cmpwi %r28, 0x0
	beq- _161eb0
	mr %r3, %r30
	lwz %r4, 0x24(%r30)
	mtctr %r4
	cmpwi %r4, 0x0
	ble- _161e88
_161e64:
	lwz %r0, 0x28(%r3)
	cmplw %r31, %r0
	bne- _161e80
	mr %r3, %r29
	bl sub_19f274
	li %r3, 0x0
	b _161ee8
_161e80:
	addi %r3, %r3, 0x8
	bdnz+ _161e64
_161e88:
	slwi  %r0, %r4, 3
	add %r3, %r30, %r0
	stw %r28, 0x2c(%r3)
	lwz %r0, 0x24(%r30)
	slwi  %r0, %r0, 3
	add %r3, %r30, %r0
	stw %r31, 0x28(%r3)
	lwz %r3, 0x24(%r30)
	addi %r0, %r3, 0x1
	stw %r0, 0x24(%r30)
_161eb0:
	mr %r3, %r29
	bl sub_19f274
	li %r3, 0x0
	b _161ee8
_161ec0:
	lwz %r0, 0xc(%r30)
	ori %r0, %r0, 0x10
	stw %r0, 0xc(%r30)
	stw %r31, 0x18(%r30)
	mr %r3, %r27
	mr %r4, %r30
	bl sub_160b18
	mr %r3, %r29
	bl sub_19f274
	li %r3, 0x1
_161ee8:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_161f00
sub_161f00: # 0x801691c0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	slwi  %r0, %r3, 6
	lis %r3, 0x8034
	subi %r3, %r3, 0xd00
	add %r31, %r3, %r0
	bl sub_19f24c
	mr %r30, %r3
	lwz %r0, 0xc(%r31)
	rlwinm. %r0, %r0, 0, 27, 27
	bne- _161f50
	bl sub_19f274
	li %r3, 0x0
	b _161fb8
_161f50:
	lwz %r0, 0xc(%r31)
	rlwinm  %r0, %r0, 0, 28, 26
	stw %r0, 0xc(%r31)
	mr %r3, %r28
	mr %r4, %r31
	bl sub_160b18
	lwz %r3, 0x24(%r31)
	cmpwi %r3, 0x0
	ble- _161fac
	lwz %r29, 0x2c(%r31)
	subic. %r0, %r3, 0x1
	stw %r0, 0x24(%r31)
	ble- _161f98
	addi %r3, %r31, 0x28
	addi %r4, %r31, 0x30
	lwz %r0, 0x24(%r31)
	slwi  %r5, %r0, 3
	bl sub_73d0
_161f98:
	mr %r3, %r28
	li %r4, 0x0
	mr %r12, %r29
	mtctr %r12
	bctrl 
_161fac:
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x1
_161fb8:
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x161fd8, 0x80169b2c - 0x80169298

	.global sub_16286c
sub_16286c: # 0x80169b2c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0x0
	stw %r30, 0x8(%r1)
	lwz %r0, -0x6490(%r13)
	cmpwi %r0, 0x0
	bne- _1628a0
	bl sub_18bcd8
	stw %r3, -0x6484(%r13)
	bl sub_18bcd0
	stw %r3, -0x6480(%r13)
_1628a0:
	lwz %r3, -0x6484(%r13)
	lwz %r0, -0x6490(%r13)
	addi %r3, %r3, 0x1f
	clrrwi  %r3, %r3, 5
	cmpwi %r0, 0x0
	stw %r3, -0x648c(%r13)
	bne- _1628e4
	lwz %r0, -0x6480(%r13)
	addi %r4, %r3, 0x40
	cmplw %r4, %r0
	ble- _1628e4
	lis %r3, 0x8028
	addi %r3, %r3, 0x59e0
	crxor 6, 6, 6
	bl sub_19b270
	li %r31, -0x16
	b _162978
_1628e4:
	subi %r4, %r13, 0x72d8
	bl sub_b300
	lwz %r3, -0x648c(%r13)
	li %r4, 0x0
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, -0x72e0(%r13)
	bge- _16290c
	mr %r31, %r3
	b _162978
_16290c:
	lwz %r4, -0x6490(%r13)
	lwz %r30, -0x648c(%r13)
	cmpwi %r4, 0x0
	bne- _162944
	lwz %r0, -0x6480(%r13)
	addi %r3, %r30, 0x1540
	cmplw %r3, %r0
	ble- _162944
	lis %r3, 0x8028
	addi %r3, %r3, 0x59e0
	crxor 6, 6, 6
	bl sub_19b270
	li %r31, -0x16
	b _162978
_162944:
	cmpwi %r4, 0x0
	bne- _16295c
	addi %r3, %r30, 0x1540
	bl sub_18bce0
	li %r0, 0x1
	stw %r0, -0x6490(%r13)
_16295c:
	mr %r3, %r30
	li %r4, 0x1540
	bl sub_18d658
	cmpwi %r3, 0x0
	stw %r3, -0x647c(%r13)
	bge- _162978
	li %r31, -0x16
_162978:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x162994, 0x8016a460 - 0x80169c54

	.global sub_1631a0
sub_1631a0: # 0x8016a460
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	cmpwi %r3, 0x0
	mr %r30, %r3
	mr %r23, %r4
	mr %r24, %r5
	mr %r25, %r6
	mr %r26, %r7
	mr %r27, %r8
	mr %r28, %r9
	li %r29, 0x0
	beq- _16322c
	lwz %r0, -0x72e0(%r13)
	cmpwi %r0, 0x0
	blt- _16322c
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	beq- _16322c
	cmpwi %r23, 0x0
	beq- _16322c
	cmpwi %r24, 0x0
	beq- _16322c
	cmpwi %r25, 0x0
	beq- _16322c
	cmpwi %r26, 0x0
	beq- _16322c
	cmpwi %r27, 0x0
	beq- _16322c
	cmpwi %r28, 0x0
	bne- _163234
_16322c:
	li %r31, -0x65
	b _1632c4
_163234:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne- _163258
	li %r31, -0x16
	b _1632c4
_163258:
	mr %r4, %r30
	addi %r5, %r31, 0x1
	bl memcpy
	addi %r0, %r29, 0x5f
	lwz %r3, -0x72e0(%r13)
	clrrwi  %r30, %r0, 5
	mr %r5, %r29
	mr %r7, %r30
	li %r4, 0x6
	li %r6, 0x40
	li %r8, 0x4c
	bl sub_18cf30
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _1632c4
	lwz %r0, 0x0(%r30)
	stw %r0, 0x0(%r23)
	lhz %r0, 0x4(%r30)
	sth %r0, 0x0(%r24)
	lbz %r0, 0x49(%r30)
	stw %r0, 0x0(%r25)
	lbz %r0, 0x46(%r30)
	stw %r0, 0x0(%r26)
	lbz %r0, 0x47(%r30)
	stw %r0, 0x0(%r27)
	lbz %r0, 0x48(%r30)
	stw %r0, 0x0(%r28)
_1632c4:
	cmpwi %r29, 0x0
	beq- _1632dc
	beq- _1632dc
	lwz %r3, -0x647c(%r13)
	mr %r4, %r29
	bl sub_18d990
_1632dc:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_1632f8
sub_1632f8: # 0x8016a5b8
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19768
	cmpwi %r3, 0x0
	lwz %r29, 0x48(%r1)
	mr %r21, %r3
	mr %r22, %r4
	mr %r23, %r5
	mr %r24, %r6
	mr %r25, %r7
	mr %r26, %r8
	mr %r27, %r9
	mr %r28, %r10
	beq- _163388
	lwz %r0, -0x72e0(%r13)
	cmpwi %r0, 0x0
	blt- _163388
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	beq- _163388
	cmpwi %r22, 0x0
	beq- _163388
	cmpwi %r23, 0x0
	beq- _163388
	cmpwi %r24, 0x0
	beq- _163388
	cmpwi %r25, 0x0
	beq- _163388
	cmpwi %r26, 0x0
	beq- _163388
	cmpwi %r27, 0x0
	bne- _163390
_163388:
	li %r3, -0x65
	b _163414
_163390:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _1633b4
	li %r3, -0x76
	b _163414
_1633b4:
	stw %r22, 0x10c(%r3)
	li %r0, 0x3
	mr %r4, %r21
	addi %r5, %r31, 0x1
	stw %r23, 0x110(%r3)
	stw %r24, 0x114(%r3)
	stw %r25, 0x118(%r3)
	stw %r26, 0x11c(%r3)
	stw %r27, 0x120(%r3)
	stw %r28, 0x100(%r3)
	stw %r29, 0x104(%r3)
	stw %r0, 0x108(%r3)
	bl memcpy
	addi %r0, %r30, 0x5f
	lis %r9, 0x8017
	lwz %r3, -0x72e0(%r13)
	mr %r5, %r30
	mr %r10, %r30
	clrrwi  %r7, %r0, 5
	subi %r9, %r9, 0x63ac
	li %r4, 0x6
	li %r6, 0x40
	li %r8, 0x4c
	bl sub_18cdf8
_163414:
	addi %r11, %r1, 0x40
	bl sub_197b4
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_16342c
sub_16342c: # 0x8016a6ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	beq- _163474
	lwz %r0, -0x72e0(%r13)
	cmpwi %r0, 0x0
	blt- _163474
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	bne- _16347c
_163474:
	li %r31, -0x65
	b _1634cc
_16347c:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _1634a0
	li %r31, -0x16
	b _1634cc
_1634a0:
	mr %r4, %r29
	addi %r5, %r31, 0x1
	bl memcpy
	lwz %r3, -0x72e0(%r13)
	mr %r5, %r30
	li %r4, 0x7
	li %r6, 0x40
	li %r7, 0x0
	li %r8, 0x0
	bl sub_18cf30
	mr %r31, %r3
_1634cc:
	cmpwi %r30, 0x0
	beq- _1634e4
	beq- _1634e4
	lwz %r3, -0x647c(%r13)
	mr %r4, %r30
	bl sub_18d990
_1634e4:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x163504, 0x8016abd4 - 0x8016a7c4

	.global sub_163914
sub_163914: # 0x8016abd4
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	cmpwi %r3, 0x0
	mr %r25, %r3
	mr %r26, %r4
	mr %r27, %r5
	mr %r28, %r6
	mr %r29, %r7
	li %r30, 0x0
	beq- _163968
	lwz %r0, -0x72e0(%r13)
	cmpwi %r0, 0x0
	blt- _163968
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	bne- _163970
_163968:
	li %r31, -0x65
	b _1639d4
_163970:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _163994
	li %r31, -0x16
	b _1639d4
_163994:
	mr %r4, %r25
	addi %r5, %r31, 0x1
	addi %r3, %r3, 0x6
	bl memcpy
	stb %r26, 0x49(%r30)
	mr %r5, %r30
	li %r4, 0x9
	li %r6, 0x4c
	stb %r27, 0x46(%r30)
	li %r7, 0x0
	li %r8, 0x0
	stb %r28, 0x47(%r30)
	stb %r29, 0x48(%r30)
	lwz %r3, -0x72e0(%r13)
	bl sub_18cf30
	mr %r31, %r3
_1639d4:
	cmpwi %r30, 0x0
	beq- _1639ec
	beq- _1639ec
	lwz %r3, -0x647c(%r13)
	mr %r4, %r30
	bl sub_18d990
_1639ec:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_163a08
sub_163a08: # 0x8016acc8
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	cmpwi %r3, 0x0
	mr %r23, %r3
	mr %r24, %r4
	mr %r25, %r5
	mr %r26, %r6
	mr %r27, %r7
	mr %r28, %r8
	mr %r29, %r9
	beq- _163a60
	lwz %r0, -0x72e0(%r13)
	cmpwi %r0, 0x0
	blt- _163a60
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	bne- _163a68
_163a60:
	li %r3, -0x65
	b _163ae4
_163a68:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _163a8c
	li %r3, -0x76
	b _163ae4
_163a8c:
	stw %r28, 0x100(%r3)
	li %r0, 0x0
	mr %r4, %r23
	addi %r5, %r31, 0x1
	stw %r29, 0x104(%r3)
	stw %r0, 0x108(%r3)
	addi %r3, %r3, 0x6
	bl memcpy
	stb %r24, 0x49(%r30)
	lis %r9, 0x8017
	mr %r5, %r30
	mr %r10, %r30
	stb %r25, 0x46(%r30)
	subi %r9, %r9, 0x63ac
	li %r4, 0x9
	li %r6, 0x4c
	stb %r26, 0x47(%r30)
	li %r7, 0x0
	li %r8, 0x0
	stb %r27, 0x48(%r30)
	lwz %r3, -0x72e0(%r13)
	bl sub_18cdf8
_163ae4:
	addi %r11, %r1, 0x30
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_163afc
sub_163afc: # 0x8016adbc
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	beq- _163b40
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	bne- _163b48
_163b40:
	li %r31, -0x65
	b _163b88
_163b48:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _163b6c
	li %r31, -0x16
	b _163b88
_163b6c:
	mr %r4, %r28
	addi %r5, %r31, 0x1
	bl memcpy
	mr %r3, %r30
	mr %r4, %r29
	bl sub_18c598
	mr %r31, %r3
_163b88:
	cmpwi %r30, 0x0
	beq- _163ba0
	beq- _163ba0
	lwz %r3, -0x647c(%r13)
	mr %r4, %r30
	bl sub_18d990
_163ba0:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_163bc4
sub_163bc4: # 0x8016ae84
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	cmpwi %r3, 0x0
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	beq- _163c04
	li %r4, 0x40
	bl sub_18bce8
	cmplwi %r3, 0x40
	mr %r31, %r3
	bne- _163c0c
_163c04:
	li %r3, -0x65
	b _163c64
_163c0c:
	lwz %r3, -0x647c(%r13)
	li %r4, 0x140
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _163c30
	li %r3, -0x76
	b _163c64
_163c30:
	stw %r28, 0x100(%r3)
	li %r0, 0x0
	mr %r4, %r26
	addi %r5, %r31, 0x1
	stw %r29, 0x104(%r3)
	stw %r0, 0x108(%r3)
	bl memcpy
	lis %r5, 0x8017
	mr %r3, %r30
	mr %r4, %r27
	mr %r6, %r30
	subi %r5, %r5, 0x63ac
	bl sub_18c480
_163c64:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x163c7c, 0x8016b15c - 0x8016af3c

	.global sub_163e9c
sub_163e9c: # 0x8016b15c
	cmpwi %r4, 0x0
	beq- _163eac
	clrlwi. %r0, %r4, 27
	beq- _163eb4
_163eac:
	li %r3, -0x65
	blr
_163eb4:
	b _18c920

	.incbin "./dol.text.bin", 0x163eb8, 0x8016b220 - 0x8016b178

	.global sub_163f60
sub_163f60: # 0x8016b220
	cmpwi %r4, 0x0
	beq- _163f70
	clrlwi. %r0, %r4, 27
	beq- _163f78
_163f70:
	li %r3, -0x65
	blr
_163f78:
	b _18cb28

	.incbin "./dol.text.bin", 0x163f7c, 0x8016b2e4 - 0x8016b23c

	.global sub_164024
sub_164024: # 0x8016b2e4
	b sub_18c778

	.incbin "./dol.text.bin", 0x164028, 0x8016d304 - 0x8016b2e8
	
	.global sub_166044
sub_166044: # 0x8016d304
	cmplwi %r3, 0x19
	bgt- _166258
	lis %r5, 0x8028
	slwi  %r0, %r3, 2
	addi %r5, %r5, 0x5c90
	lwzx %r5, %r5, %r0
	mtctr %r5
	bctr 
	lwz %r3, -0x68d8(%r2)
	lwz %r0, 0x14(%r3)
	insrwi  %r0, %r4, 1, 31
	stw %r0, 0x14(%r3)
	b _166258
	.incbin "./dol.text.bin", 0x166078, 0x8016d518 - 0x8016d338
_166258:
	lwz %r4, -0x68d8(%r2)
	lbz %r0, 0x524(%r4)
	cmpwi %r0, 0x0
	bne- _166274
	lbz %r0, 0x525(%r4)
	cmpwi %r0, 0x0
	beq- _16628c
_166274:
	lwz %r5, -0x68d8(%r2)
	lwz %r0, 0x520(%r5)
	lwz %r3, 0x14(%r5)
	insrwi  %r3, %r0, 2, 19
	stw %r3, 0x14(%r5)
	b _166298
_16628c:
	lwz %r0, 0x14(%r4)
	rlwinm  %r0, %r0, 0, 21, 18
	stw %r0, 0x14(%r4)
_166298:
	lwz %r0, 0x5fc(%r4)
	ori %r0, %r0, 0x8
	stw %r0, 0x5fc(%r4)
	blr
	.incbin "./dol.text.bin", 0x1662a8, 0x8016d774 - 0x8016d568

	.global sub_1664b4
sub_1664b4: # 0x8016d774
	lis %r5, 0xcc01
	li %r6, 0x8
	stb %r6, -0x8000(%r5)
	li %r4, 0x50
	lwz %r3, -0x68d8(%r2)
	li %r0, 0x60
	stb %r4, -0x8000(%r5)
	lwz %r4, 0x14(%r3)
	stw %r4, -0x8000(%r5)
	stb %r6, -0x8000(%r5)
	stb %r0, -0x8000(%r5)
	lwz %r0, 0x18(%r3)
	stw %r0, -0x8000(%r5)
	lbz %r0, 0x525(%r3)
	cmpwi %r0, 0x0
	beq- _1664fc
	li %r8, 0x2
	b _16650c
_1664fc:
	lbz %r4, 0x524(%r3)
	neg %r0, %r4
	or %r0, %r0, %r4
	srwi  %r8, %r0, 31
_16650c:
	lwz %r5, 0x14(%r3)
	lis %r6, 0xcc01
	lwz %r4, 0x18(%r3)
	li %r0, 0x10
	extrwi  %r7, %r5, 4, 15
	li %r5, 0x1008
	cntlzw %r7, %r7
	clrlwi  %r4, %r4, 16
	stb %r0, -0x8000(%r6)
	subfic %r7, %r7, 0x21
	cntlzw %r0, %r4
	slwi  %r4, %r8, 2
	subfic %r0, %r0, 0x21
	srwi  %r7, %r7, 1
	extlwi  %r0, %r0, 28, 3
	stw %r5, -0x8000(%r6)
	or %r5, %r0, %r7
	or %r4, %r5, %r4
	li %r0, 0x1
	stw %r4, -0x8000(%r6)
	sth %r0, 0x2(%r3)
	blr

	.global sub_166564
sub_166564: # 0x8016d824
	stwu %r1, -0x10(%r1)
	lwz %r3, -0x68d8(%r2)
	stw %r31, 0xc(%r1)
	lhz %r0, 0x4(%r3)
	cmpwi %r0, 0x0
	beq- _166684
	lwz %r9, 0x14(%r3)
	subi %r7, %r13, 0x72c0
	lwz %r5, 0x1c(%r3)
	clrlwi  %r0, %r9, 31
	extrwi  %r4, %r9, 1, 30
	add %r0, %r0, %r4
	extrwi  %r8, %r5, 1, 22
	extrwi  %r4, %r9, 1, 29
	extrwi  %r5, %r9, 2, 19
	add %r0, %r0, %r4
	cmpwi %r8, 0x1
	extrwi  %r4, %r9, 1, 28
	extrwi  %r6, %r9, 1, 25
	add %r0, %r0, %r4
	extrwi  %r8, %r9, 1, 23
	extrwi  %r4, %r9, 1, 27
	lwz %r31, 0x18(%r3)
	add %r0, %r0, %r4
	lbzx %r5, %r7, %r5
	extrwi  %r4, %r9, 1, 26
	add %r0, %r0, %r4
	add %r0, %r0, %r6
	extrwi  %r6, %r9, 1, 24
	add %r0, %r0, %r6
	extrwi  %r4, %r9, 2, 21
	lbzx %r6, %r7, %r4
	add %r0, %r0, %r8
	li %r4, 0x1
	add %r0, %r0, %r6
	bne- _1665f8
	li %r4, 0x3
_1665f8:
	mullw %r8, %r5, %r4
	subi %r7, %r13, 0x72c8
	extrwi  %r4, %r9, 2, 17
	extrwi  %r5, %r9, 2, 15
	lbzx %r6, %r7, %r4
	lbzx %r5, %r7, %r5
	add %r0, %r0, %r8
	subi %r12, %r13, 0x72c4
	add %r0, %r0, %r6
	clrlwi  %r4, %r31, 30
	extrwi  %r10, %r31, 2, 28
	lbzx %r11, %r12, %r4
	add %r0, %r0, %r5
	extrwi  %r9, %r31, 2, 26
	extrwi  %r8, %r31, 2, 24
	extrwi  %r7, %r31, 2, 22
	extrwi  %r6, %r31, 2, 20
	extrwi  %r5, %r31, 2, 18
	extrwi  %r4, %r31, 2, 16
	lbzx %r10, %r12, %r10
	add %r0, %r0, %r11
	lbzx %r9, %r12, %r9
	add %r0, %r0, %r10
	lbzx %r8, %r12, %r8
	add %r0, %r0, %r9
	lbzx %r7, %r12, %r7
	add %r0, %r0, %r8
	lbzx %r6, %r12, %r6
	add %r0, %r0, %r7
	lbzx %r5, %r12, %r5
	add %r0, %r0, %r6
	lbzx %r4, %r12, %r4
	add %r0, %r0, %r5
	add %r0, %r0, %r4
	sth %r0, 0x6(%r3)
_166684:
	lwz %r31, 0xc(%r1)
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x166690, 0x8016db94 - 0x8016d950

	.global sub_1668d4
sub_1668d4: # 0x8016db94
	lwz %r5, -0x68d8(%r2)
	li %r0, 0x1
	li %r3, 0x0
	li %r4, 0x0
	insrwi  %r3, %r0, 2, 21
	stw %r3, 0x14(%r5)
	stw %r4, 0x18(%r5)
	stb %r4, 0x524(%r5)
	stb %r4, 0x525(%r5)
	lwz %r0, 0x5fc(%r5)
	ori %r0, %r0, 0x8
	stw %r0, 0x5fc(%r5)
	blr

	.global sub_166908
sub_166908: # 0x8016dbc8
	subi %r0, %r4, 0x9
	lwz %r8, -0x68d8(%r2)
	cmplwi %r0, 0x10
	slwi  %r4, %r3, 2
	add %r8, %r8, %r4
	bgt- _166a78
	lis %r4, 0x8028
	slwi  %r0, %r0, 2
	addi %r4, %r4, 0x5dc8
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	lwz %r0, 0x1c(%r8)
	insrwi  %r0, %r5, 1, 31
	insrwi  %r0, %r6, 3, 28
	insrwi  %r0, %r7, 5, 23
	stw %r0, 0x1c(%r8)
	b _166a78
	.incbin "./dol.text.bin", 0x166950, 0x8016dd38 - 0x8016dc10
_166a78:
	lwz %r5, -0x68d8(%r2)
	clrlwi  %r0, %r3, 24
	li %r3, 0x1
	lwz %r4, 0x5fc(%r5)
	slw %r0, %r3, %r0
	clrlwi  %r0, %r0, 24
	ori %r3, %r4, 0x10
	stw %r3, 0x5fc(%r5)
	lbz %r3, 0x5fb(%r5)
	or %r0, %r3, %r0
	stb %r0, 0x5fb(%r5)
	blr
	.incbin "./dol.text.bin", 0x166aa8, 0x8016df2c - 0x8016dd68

	.global sub_166c6c
sub_166c6c: # 0x8016df2c
	lwz %r8, -0x68d8(%r2)
	li %r9, 0x0
	li %r6, 0x8
	lis %r5, 0xcc01
	lbz %r10, 0x5fb(%r8)
	mr %r7, %r8
_166c84:
	clrlwi. %r0, %r10, 31
	beq- _166cc8
	stb %r6, -0x8000(%r5)
	ori %r4, %r9, 0x70
	ori %r3, %r9, 0x80
	ori %r0, %r9, 0x90
	stb %r4, -0x8000(%r5)
	lwz %r4, 0x1c(%r7)
	stw %r4, -0x8000(%r5)
	stb %r6, -0x8000(%r5)
	stb %r3, -0x8000(%r5)
	lwz %r3, 0x3c(%r7)
	stw %r3, -0x8000(%r5)
	stb %r6, -0x8000(%r5)
	stb %r0, -0x8000(%r5)
	lwz %r0, 0x5c(%r7)
	stw %r0, -0x8000(%r5)
_166cc8:
	srwi. %r10, %r10, 1
	addi %r9, %r9, 0x1
	addi %r7, %r7, 0x4
	bne+ _166c84
	li %r0, 0x0
	lis %r3, 0xcc01
	stb %r0, -0x8000(%r3)
	stb %r0, 0x5fb(%r8)
	blr
	.incbin "./dol.text.bin", 0x166cec, 0x8016e2dc - 0x8016dfac

	.global sub_16701c
sub_16701c: # 0x8016e2dc
	cmplwi %r5, 0x14
	li %r11, 0x0
	li %r12, 0x0
	li %r10, 0x5
	bgt- _1670c4
	lis %r9, 0x8028
	slwi  %r0, %r5, 2
	addi %r9, %r9, 0x5eb0
	lwzx %r9, %r9, %r0
	mtctr %r9
	bctr 
	li %r10, 0x0
	li %r12, 0x1
	b _1670c4
	.incbin "./dol.text.bin", 0x167054, 0x8016e384 - 0x8016e314
_1670c4:
	cmpwi %r4, 0x1
	beq- _1670ec
	bge- _1670dc
	cmpwi %r4, 0x0
	bge- _1670fc
	b _167164
_1670dc:
	cmpwi %r4, 0xa
	beq- _167138
	bge- _167164
	b _167110
_1670ec:
	li %r11, 0x0
	insrwi  %r11, %r12, 1, 29
	insrwi  %r11, %r10, 5, 20
	b _167164
_1670fc:
	li %r0, 0x0
	ori %r11, %r0, 0x2
	insrwi  %r11, %r12, 1, 29
	insrwi  %r11, %r10, 5, 20
	b _167164
_167110:
	li %r9, 0x1
	subi %r5, %r5, 0xc
	li %r11, 0x0
	subi %r0, %r4, 0x2
	insrwi  %r11, %r12, 1, 29
	insrwi  %r11, %r9, 3, 25
	insrwi  %r11, %r10, 5, 20
	insrwi  %r11, %r5, 3, 17
	insrwi  %r11, %r0, 3, 14
	b _167164
_167138:
	cmpwi %r5, 0x13
	li %r11, 0x0
	insrwi  %r11, %r12, 1, 29
	bne- _167154
	li %r0, 0x2
	insrwi  %r11, %r0, 3, 25
	b _16715c
_167154:
	li %r0, 0x3
	insrwi  %r11, %r0, 3, 25
_16715c:
	li %r0, 0x2
	insrwi  %r11, %r0, 5, 20
_167164:
	lwz %r10, -0x68d8(%r2)
	slwi  %r9, %r3, 2
	subi %r0, %r8, 0x40
	li %r4, 0x0
	add %r8, %r10, %r9
	lis %r5, 0x1
	stw %r11, 0xc8(%r8)
	insrwi  %r4, %r0, 6, 26
	slw %r0, %r5, %r3
	cmplwi %r3, 0x6
	lwz %r5, 0x5fc(%r10)
	insrwi  %r4, %r7, 1, 23
	or %r0, %r5, %r0
	stw %r0, 0x5fc(%r10)
	stw %r4, 0xe8(%r8)
	bgt- _167228
	lis %r3, 0x8028
	addi %r3, %r3, 0x5e94
	lwzx %r3, %r3, %r9
	mtctr %r3
	bctr 
	lwz %r0, 0x80(%r10)
	insrwi  %r0, %r6, 6, 20
	stw %r0, 0x80(%r10)
	b _167234
	.incbin "./dol.text.bin", 0x1671c8, 0x8016e4e8 - 0x8016e488
_167228:
	lwz %r0, 0x84(%r10)
	insrwi  %r0, %r6, 6, 8
	stw %r0, 0x84(%r10)
_167234:
	lwz %r0, 0x5fc(%r10)
	oris %r0, %r0, 0x400
	stw %r0, 0x5fc(%r10)
	blr

	.global sub_167244
sub_167244: # 0x8016e504
	lwz %r4, -0x68d8(%r2)
	lwz %r0, 0x254(%r4)
	insrwi  %r0, %r3, 4, 28
	stw %r0, 0x254(%r4)
	lwz %r0, 0x5fc(%r4)
	oris %r0, %r0, 0x200
	ori %r0, %r0, 0x4
	stw %r0, 0x5fc(%r4)
	blr
	.incbin "./dol.text.bin", 0x167268, 0x8016edd8 - 0x8016e528 # gx_draw 0x8016ea10

	.global sub_167b18
sub_167b18: # 0x8016edd8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lwz %r31, -0x68d8(%r2)
	stw %r30, 0x8(%r1)
	lwz %r30, 0x5fc(%r31)
	clrlwi. %r0, %r30, 31
	beq- _167b40
	bl sub_169f90
_167b40:
	rlwinm. %r0, %r30, 0, 30, 30
	beq- _167b4c
	bl sub_16a894
_167b4c:
	rlwinm. %r0, %r30, 0, 29, 29
	beq- _167b74
	lis %r4, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r4)
	li %r0, 0x0
	lwz %r5, -0x68d8(%r2)
	lwz %r3, 0x254(%r5)
	stw %r3, -0x8000(%r4)
	sth %r0, 0x2(%r5)
_167b74:
	rlwinm. %r0, %r30, 0, 28, 28
	beq- _167b80
	bl sub_1664b4
_167b80:
	rlwinm. %r0, %r30, 0, 27, 27
	beq- _167b8c
	bl sub_166c6c
_167b8c:
	rlwinm. %r0, %r30, 0, 27, 28
	beq- _167b98
	bl sub_166564
_167b98:
	clrrwi. %r30, %r30, 8
	beq- _167d70
	rlwinm. %r4, %r30, 0, 20, 23
	beq- _167c38
	rlwinm. %r0, %r4, 0, 23, 23
	beq- _167bcc
	lis %r3, 0xcc01
	li %r0, 0x10
	stb %r0, -0x8000(%r3)
	li %r0, 0x100a
	stw %r0, -0x8000(%r3)
	lwz %r0, 0xa8(%r31)
	stw %r0, -0x8000(%r3)
_167bcc:
	rlwinm. %r0, %r4, 0, 22, 22
	beq- _167bf0
	lis %r3, 0xcc01
	li %r0, 0x10
	stb %r0, -0x8000(%r3)
	li %r0, 0x100b
	stw %r0, -0x8000(%r3)
	lwz %r0, 0xac(%r31)
	stw %r0, -0x8000(%r3)
_167bf0:
	rlwinm. %r0, %r4, 0, 21, 21
	beq- _167c14
	lis %r3, 0xcc01
	li %r0, 0x10
	stb %r0, -0x8000(%r3)
	li %r0, 0x100c
	stw %r0, -0x8000(%r3)
	lwz %r0, 0xb0(%r31)
	stw %r0, -0x8000(%r3)
_167c14:
	rlwinm. %r0, %r4, 0, 20, 20
	beq- _167c38
	lis %r3, 0xcc01
	li %r0, 0x10
	stb %r0, -0x8000(%r3)
	li %r0, 0x100d
	stw %r0, -0x8000(%r3)
	lwz %r0, 0xb4(%r31)
	stw %r0, -0x8000(%r3)
_167c38:
	rlwinm  %r7, %r30, 0, 7, 7
	rlwimi. %r7, %r30, 0, 16, 19
	beq- _167cb0
	rlwinm. %r0, %r7, 0, 7, 7
	li %r6, 0x100e
	beq- _167c70
	lwz %r5, 0x254(%r31)
	lis %r3, 0xcc01
	li %r4, 0x10
	li %r0, 0x1009
	stb %r4, -0x8000(%r3)
	extrwi  %r4, %r5, 3, 25
	stw %r0, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
_167c70:
	mr %r5, %r31
	extrwi  %r7, %r7, 4, 16
	li %r4, 0x10
	lis %r3, 0xcc01
	b _167ca8
_167c84:
	clrlwi. %r0, %r7, 31
	beq- _167c9c
	stb %r4, -0x8000(%r3)
	stw %r6, -0x8000(%r3)
	lwz %r0, 0xb8(%r5)
	stw %r0, -0x8000(%r3)
_167c9c:
	srwi  %r7, %r7, 1
	addi %r5, %r5, 0x4
	addi %r6, %r6, 0x1
_167ca8:
	cmpwi %r7, 0x0
	bne+ _167c84
_167cb0:
	.incbin "./dol.text.bin", 0x167cb0, 0x8016ef74 - 0x8016ef70
	beq- _167d38
	rlwinm. %r0, %r8, 0, 6, 6
	li %r6, 0x1040
	beq- _167ce4
	lwz %r5, 0x254(%r31)
	lis %r3, 0xcc01
	li %r4, 0x10
	li %r0, 0x103f
	stb %r4, -0x8000(%r3)
	clrlwi  %r4, %r5, 28
	stw %r0, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
_167ce4:
	mr %r7, %r31
	extrwi  %r8, %r8, 8, 8
	li %r4, 0x10
	lis %r3, 0xcc01
	b _167d30
_167cf8:
	clrlwi. %r0, %r8, 31
	addi %r5, %r6, 0x10
	beq- _167d24
	stb %r4, -0x8000(%r3)
	stw %r6, -0x8000(%r3)
	lwz %r0, 0xc8(%r7)
	stw %r0, -0x8000(%r3)
	stb %r4, -0x8000(%r3)
	stw %r5, -0x8000(%r3)
	lwz %r0, 0xe8(%r7)
	stw %r0, -0x8000(%r3)
_167d24:
	srwi  %r8, %r8, 1
	addi %r6, %r6, 0x1
	addi %r7, %r7, 0x4
_167d30:
	cmpwi %r8, 0x0
	bne+ _167cf8
_167d38:
	rlwinm. %r0, %r30, 0, 5, 5
	beq- _167d50
	li %r3, 0x0
	bl sub_16c1e4
	li %r3, 0x5
	bl sub_16c1e4
_167d50:
	rlwinm. %r0, %r30, 0, 3, 3
	beq- _167d5c
	bl sub_16bf88
_167d5c:
	rlwinm. %r0, %r30, 0, 4, 4
	beq- _167d68
	bl sub_16bc78
_167d68:
	li %r0, 0x1
	sth %r0, 0x2(%r31)
_167d70:
	li %r0, 0x0
	stw %r0, 0x5fc(%r31)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_167d90
sub_167d90: # 0x8016f050
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lwz %r31, -0x68d8(%r2)
	stw %r30, 0x18(%r1)
	mr %r30, %r5
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	lwz %r0, 0x5fc(%r31)
	cmpwi %r0, 0x0
	beq- _167dcc
	bl sub_167b18
_167dcc:
	lwz %r0, 0x0(%r31)
	cmpwi %r0, 0x0
	bne- _167eac
	lwz %r7, -0x68d8(%r2)
	lis %r3, 0xcc01
	li %r0, 0x98
	li %r6, 0x0
	lhz %r5, 0x4(%r7)
	lhz %r4, 0x6(%r7)
	stb %r0, -0x8000(%r3)
	mullw. %r5, %r5, %r4
	lhz %r0, 0x4(%r7)
	sth %r0, -0x8000(%r3)
	beq- _167ea4
	addi %r3, %r5, 0x3
	subi %r7, %r5, 0x20
	srwi  %r0, %r3, 2
	cmplwi %r0, 0x8
	ble- _167e7c
	cmplwi %r3, 0x3
	li %r0, 0x0
	blt- _167e30
	cmplw %r5, %r3
	bgt- _167e30
	li %r0, 0x1
_167e30:
	cmpwi %r0, 0x0
	beq- _167e7c
	addi %r0, %r7, 0x1f
	li %r4, 0x0
	srwi  %r0, %r0, 5
	lis %r3, 0xcc01
	mtctr %r0
	cmplwi %r7, 0x0
	ble- _167e7c
_167e54:
	stw %r4, -0x8000(%r3)
	addi %r6, %r6, 0x20
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	stw %r4, -0x8000(%r3)
	bdnz+ _167e54
_167e7c:
	addi %r0, %r5, 0x3
	li %r4, 0x0
	subf %r0, %r6, %r0
	lis %r3, 0xcc01
	srwi  %r0, %r0, 2
	mtctr %r0
	cmplw %r6, %r5
	bge- _167ea4
_167e9c:
	stw %r4, -0x8000(%r3)
	bdnz+ _167e9c
_167ea4:
	li %r0, 0x1
	sth %r0, 0x2(%r31)
_167eac:
	lis %r3, 0xcc01
	or %r0, %r29, %r28
	stb %r0, -0x8000(%r3)
	sth %r30, -0x8000(%r3)
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x167edc, 0x801704ac - 0x8016f19c

	.global sub_1691ec
sub_1691ec: # 0x801704ac
	lwz %r4, -0x68d8(%r2)
	lwz %r0, 0x254(%r4)
	insrwi  %r0, %r3, 3, 25
	stw %r0, 0x254(%r4)
	lwz %r0, 0x5fc(%r4)
	oris %r0, %r0, 0x100
	ori %r0, %r0, 0x4
	stw %r0, 0x5fc(%r4)
	blr

	.global sub_169210
sub_169210: # 0x801704d0
	cmpwi %r9, 0x0
	li %r10, 0x0
	insrwi  %r10, %r4, 1, 30
	clrlwi  %r11, %r3, 30
	insrwi  %r10, %r6, 1, 31
	insrwi  %r10, %r5, 1, 25
	bne- _169230
	li %r8, 0x0
_169230:
	subfic %r5, %r9, 0x2
	subi %r4, %r9, 0x2
	neg %r0, %r9
	insrwi  %r10, %r8, 2, 23
	or %r4, %r5, %r4
	lwz %r5, -0x68d8(%r2)
	inslwi  %r10, %r4, 1, 22
	or %r0, %r0, %r9
	inslwi  %r10, %r0, 1, 21
	slwi  %r4, %r11, 2
	insrwi  %r10, %r7, 4, 26
	li %r0, 0x1000
	add %r4, %r5, %r4
	cmpwi %r3, 0x4
	rlwimi  %r10, %r7, 7, 17, 20
	slw %r0, %r0, %r11
	stw %r10, 0xb8(%r4)
	lwz %r4, 0x5fc(%r5)
	or %r0, %r4, %r0
	stw %r0, 0x5fc(%r5)
	bne- _169298
	stw %r10, 0xc0(%r5)
	lwz %r0, 0x5fc(%r5)
	ori %r0, %r0, 0x5000
	stw %r0, 0x5fc(%r5)
	blr
_169298:
	cmpwi %r3, 0x5
	bnelr- 
	stw %r10, 0xc4(%r5)
	lwz %r0, 0x5fc(%r5)
	ori %r0, %r0, 0xa000
	stw %r0, 0x5fc(%r5)
	blr
	.incbin "./dol.text.bin", 0x1692b4, 0x80170758 - 0x80170574

	.global sub_169498
sub_169498: # 0x80170758
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19774
	mr %r27, %r4
	mr %r28, %r5
	mr %r31, %r3
	mr %r29, %r6
	mr %r30, %r7
	mr %r24, %r8
	mr %r25, %r9
	mr %r26, %r10
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	lwz %r0, 0x0(%r31)
	insrwi  %r0, %r24, 2, 30
	insrwi  %r0, %r25, 2, 28
	cmpwi %r26, 0x0
	ori %r4, %r0, 0x10
	stw %r4, 0x0(%r31)
	beq- _169580
	lbz %r3, 0x1f(%r31)
	subi %r0, %r30, 0x8
	cmplwi %r0, 0x2
	ori %r0, %r3, 0x1
	stb %r0, 0x1f(%r31)
	bgt- _16951c
	li %r0, 0x5
	insrwi  %r4, %r0, 3, 24
	stw %r4, 0x0(%r31)
	b _169528
_16951c:
	li %r0, 0x6
	insrwi  %r4, %r0, 3, 24
	stw %r4, 0x0(%r31)
_169528:
	cmplw %r28, %r29
	ble- _16953c
	cntlzw %r0, %r28
	subfic %r3, %r0, 0x1f
	b _169544
_16953c:
	cntlzw %r0, %r29
	subfic %r3, %r0, 0x1f
_169544:
	lis %r0, 0x4330
	stw %r3, 0xc(%r1)
	lfd %f2, -0x6860(%r2)
	stw %r0, 0x8(%r1)
	lfs %f0, -0x6868(%r2)
	lfd %f1, 0x8(%r1)
	lwz %r0, 0x4(%r31)
	fsubs %f1, %f1, %f2
	fmuls %f0, %f0, %f1
	fctiwz  %f0, %f0
	stfd %f0, 0x10(%r1)
	lwz %r3, 0x14(%r1)
	insrwi  %r0, %r3, 8, 16
	stw %r0, 0x4(%r31)
	b _16958c
_169580:
	li %r0, 0x4
	insrwi  %r4, %r0, 3, 24
	stw %r4, 0x0(%r31)
_16958c:
	subi %r0, %r28, 0x1
	lwz %r3, 0x8(%r31)
	insrwi  %r3, %r0, 10, 22
	clrlwi  %r4, %r30, 28
	subi %r0, %r29, 0x1
	stw %r30, 0x14(%r31)
	insrwi  %r3, %r0, 10, 12
	lwz %r0, 0xc(%r31)
	rlwimi  %r0, %r27, 27, 8, 31
	cmplwi %r4, 0xe
	insrwi  %r3, %r30, 4, 8
	stw %r0, 0xc(%r31)
	stw %r3, 0x8(%r31)
	bgt- _169640
	lis %r3, 0x8028
	slwi  %r0, %r4, 2
	addi %r3, %r3, 0x6240
	lwzx %r3, %r3, %r0
	mtctr %r3
	bctr 
	li %r0, 0x1
	li %r6, 0x3
	stb %r0, 0x1e(%r31)
	li %r7, 0x3
	b _169650
	.incbin "./dol.text.bin", 0x1695f0, 0x80170900 - 0x801708b0
_169640:
	li %r0, 0x2
	li %r6, 0x2
	stb %r0, 0x1e(%r31)
	li %r7, 0x2
_169650:
	li %r5, 0x1
	lbz %r0, 0x1f(%r31)
	slw %r3, %r5, %r6
	addi %r11, %r1, 0x40
	add %r4, %r28, %r3
	ori %r0, %r0, 0x2
	slw %r3, %r5, %r7
	stb %r0, 0x1f(%r31)
	subi %r4, %r4, 0x1
	add %r3, %r29, %r3
	sraw %r4, %r4, %r6
	subi %r0, %r3, 0x1
	sraw %r0, %r0, %r7
	mullw %r0, %r4, %r0
	clrlwi  %r0, %r0, 17
	sth %r0, 0x1c(%r31)
	bl sub_197c0
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	.incbin "./dol.text.bin", 0x1696a4, 0x801709ac - 0x80170964

	.global sub_1696ec
sub_1696ec: # 0x801709ac
	lfs %f0, -0x6858(%r2)
	stwu %r1, -0x10(%r1)
	fcmpo %cr0, %f3, %f0
	bge- _169704
	fmr  %f3, %f0
	b _169718
_169704:
	lfs %f0, -0x6850(%r2)
	fcmpo %cr0, %f3, %f0
	cror 2, 1, 2
	bne- _169718
	lfs %f3, -0x6854(%r2)
_169718:
	lfs %f4, -0x684c(%r2)
	subi %r0, %r5, 0x1
	cntlzw %r9, %r0
	lfs %f0, -0x6848(%r2)
	fmuls %f3, %f4, %f3
	cntlzw %r0, %r7
	lwz %r10, 0x0(%r3)
	subi %r5, %r13, 0x7280
	fcmpo %cr0, %f1, %f0
	fctiwz  %f3, %f3
	stfd %f3, 0x8(%r1)
	lwz %r7, 0xc(%r1)
	insrwi  %r10, %r7, 8, 15
	rlwimi  %r10, %r9, 31, 27, 27
	stw %r10, 0x0(%r3)
	lbzx %r4, %r5, %r4
	insrwi  %r10, %r4, 3, 24
	rlwimi  %r10, %r0, 3, 23, 23
	rlwinm  %r0, %r10, 0, 15, 12
	insrwi  %r0, %r8, 2, 11
	insrwi  %r0, %r6, 1, 10
	stw %r0, 0x0(%r3)
	bge- _16977c
	fmr  %f1, %f0
	b _16978c
_16977c:
	lfs %f0, -0x6844(%r2)
	fcmpo %cr0, %f1, %f0
	ble- _16978c
	fmr  %f1, %f0
_16978c:
	lfs %f3, -0x6868(%r2)
	lfs %f0, -0x6848(%r2)
	fmuls %f1, %f3, %f1
	fcmpo %cr0, %f2, %f0
	fctiwz  %f1, %f1
	stfd %f1, 0x8(%r1)
	lwz %r4, 0xc(%r1)
	bge- _1697b4
	fmr  %f2, %f0
	b _1697c4
_1697b4:
	lfs %f0, -0x6844(%r2)
	fcmpo %cr0, %f2, %f0
	ble- _1697c4
	fmr  %f2, %f0
_1697c4:
	lfs %f0, -0x6868(%r2)
	lwz %r0, 0x4(%r3)
	insrwi  %r0, %r4, 8, 24
	fmuls %f0, %f0, %f2
	fctiwz  %f0, %f0
	stfd %f0, 0x8(%r1)
	lwz %r4, 0xc(%r1)
	insrwi  %r0, %r4, 8, 16
	stw %r0, 0x4(%r3)
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1697f0, 0x80170d28 - 0x80170ab0

	.global sub_169a68
sub_169a68: # 0x80170d28
	stwu %r1, -0x20(%r1)
	mflr %r0
	subi %r11, %r13, 0x72b8
	subi %r10, %r13, 0x72b0
	stw %r0, 0x24(%r1)
	subi %r9, %r13, 0x72a8
	lwz %r12, 0x0(%r3)
	subi %r8, %r13, 0x72a0
	stw %r31, 0x1c(%r1)
	subi %r7, %r13, 0x7298
	subi %r6, %r13, 0x7290
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	lis %r29, 0xcc01
	stw %r28, 0x10(%r1)
	li %r28, 0x61
	lbzx %r0, %r11, %r5
	lwz %r11, 0x4(%r3)
	insrwi  %r12, %r0, 8, 0
	lbzx %r0, %r10, %r5
	lbzx %r10, %r9, %r5
	insrwi  %r11, %r0, 8, 0
	lbzx %r0, %r7, %r5
	lbzx %r8, %r8, %r5
	lbzx %r5, %r6, %r5
	lwz %r9, 0x8(%r3)
	insrwi  %r9, %r10, 8, 0
	stb %r28, -0x8000(%r29)
	lwz %r7, 0x0(%r4)
	insrwi  %r7, %r8, 8, 0
	stw %r12, -0x8000(%r29)
	lwz %r6, 0x4(%r4)
	insrwi  %r6, %r0, 8, 0
	stb %r28, -0x8000(%r29)
	lbz %r0, 0x1f(%r3)
	stw %r11, -0x8000(%r29)
	rlwinm. %r0, %r0, 0, 30, 30
	lwz %r0, 0xc(%r3)
	stb %r28, -0x8000(%r29)
	insrwi  %r0, %r5, 8, 0
	stw %r9, -0x8000(%r29)
	stb %r28, -0x8000(%r29)
	stw %r7, -0x8000(%r29)
	stb %r28, -0x8000(%r29)
	stw %r6, -0x8000(%r29)
	stb %r28, -0x8000(%r29)
	stw %r12, 0x0(%r3)
	stw %r11, 0x4(%r3)
	stw %r9, 0x8(%r3)
	stw %r7, 0x0(%r4)
	stw %r6, 0x4(%r4)
	stw %r0, 0xc(%r3)
	stw %r0, -0x8000(%r29)
	bne- _169b7c
	lwz %r4, -0x68d8(%r2)
	lwz %r3, 0x18(%r3)
	lwz %r12, 0x51c(%r4)
	mtctr %r12
	bctrl 
	subi %r4, %r13, 0x7288
	lwz %r0, 0x4(%r3)
	lbzx %r4, %r4, %r31
	insrwi  %r0, %r4, 8, 0
	stw %r0, 0x4(%r3)
	stb %r28, -0x8000(%r29)
	lwz %r0, 0x4(%r3)
	stw %r0, -0x8000(%r29)
_169b7c:
	lwz %r6, -0x68d8(%r2)
	slwi  %r3, %r31, 2
	lwz %r5, 0x8(%r30)
	li %r0, 0x0
	add %r4, %r6, %r3
	lwz %r3, 0x0(%r30)
	stw %r5, 0x564(%r4)
	stw %r3, 0x584(%r4)
	lwz %r3, 0x5fc(%r6)
	ori %r3, %r3, 0x1
	stw %r3, 0x5fc(%r6)
	sth %r0, 0x2(%r6)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_169bcc
sub_169bcc: # 0x80170e8c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lwz %r5, -0x68d8(%r2)
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r12, 0x518(%r5)
	mtctr %r12
	bctrl 
	mr %r4, %r3
	mr %r3, %r30
	mr %r5, %r31
	bl sub_169a68
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x169c20, 0x801711c0 - 0x80170ee0

	.global sub_169f00
sub_169f00: # 0x801711c0
	lwz %r11, -0x68d8(%r2)
	slwi  %r6, %r4, 2
	slwi  %r0, %r3, 2
	lis %r5, 0xcc01
	add %r10, %r11, %r0
	add %r9, %r11, %r6
	lwz %r3, 0x564(%r10)
	li %r4, 0x61
	lwz %r8, 0x108(%r9)
	li %r0, 0x0
	clrlwi  %r6, %r3, 22
	extrwi  %r3, %r3, 10, 12
	insrwi  %r8, %r6, 16, 16
	stw %r8, 0x108(%r9)
	lwz %r7, 0x128(%r9)
	insrwi  %r7, %r3, 16, 16
	stw %r7, 0x128(%r9)
	lwz %r3, 0x584(%r10)
	clrlwi  %r6, %r3, 30
	extrwi  %r3, %r3, 2, 28
	subi %r6, %r6, 0x1
	cntlzw %r6, %r6
	subi %r3, %r3, 0x1
	rlwimi  %r8, %r6, 11, 15, 15
	cntlzw %r3, %r3
	stw %r8, 0x108(%r9)
	rlwimi  %r7, %r3, 11, 15, 15
	stw %r7, 0x128(%r9)
	stb %r4, -0x8000(%r5)
	lwz %r3, 0x108(%r9)
	stw %r3, -0x8000(%r5)
	stb %r4, -0x8000(%r5)
	lwz %r3, 0x128(%r9)
	stw %r3, -0x8000(%r5)
	sth %r0, 0x2(%r11)
	blr

	.global sub_169f90
sub_169f90: # 0x80171250
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	lwz %r29, -0x68d8(%r2)
	lwz %r0, 0x5e4(%r29)
	cmplwi %r0, 0xff
	beq- _16a0e0
	lwz %r0, 0x254(%r29)
	li %r28, 0x0
	li %r23, 0x1
	extrwi  %r3, %r0, 4, 18
	extrwi  %r27, %r0, 3, 13
	addi %r26, %r3, 0x1
	b _16a054
_169fd0:
	cmpwi %r28, 0x2
	beq- _16a018
	bge- _169fec
	cmpwi %r28, 0x0
	beq- _169ff8
	bge- _16a008
	b _16a034
_169fec:
	cmpwi %r28, 0x4
	bge- _16a034
	b _16a028
_169ff8:
	lwz %r0, 0x170(%r29)
	clrlwi  %r25, %r0, 29
	extrwi  %r24, %r0, 3, 26
	b _16a034
_16a008:
	lwz %r0, 0x170(%r29)
	extrwi  %r25, %r0, 3, 23
	extrwi  %r24, %r0, 3, 20
	b _16a034
_16a018:
	lwz %r0, 0x170(%r29)
	extrwi  %r25, %r0, 3, 17
	extrwi  %r24, %r0, 3, 14
	b _16a034
_16a028:
	lwz %r0, 0x170(%r29)
	extrwi  %r25, %r0, 3, 11
	extrwi  %r24, %r0, 3, 8
_16a034:
	lwz %r3, 0x5e4(%r29)
	slw %r0, %r23, %r24
	and. %r0, %r3, %r0
	bne- _16a050
	mr %r3, %r25
	mr %r4, %r24
	bl sub_169f00
_16a050:
	addi %r28, %r28, 0x1
_16a054:
	cmplw %r28, %r27
	blt+ _169fd0
	lwz %r28, -0x68d8(%r2)
	li %r27, 0x0
	li %r23, 0x1
	mr %r31, %r28
	addi %r30, %r28, 0x150
	b _16a0d8
_16a074:
	clrlwi. %r0, %r27, 31
	lwz %r0, 0x5a4(%r31)
	extlwi  %r3, %r27, 30, 1
	rlwinm  %r25, %r0, 0, 24, 22
	beq- _16a094
	lwzx %r0, %r30, %r3
	extrwi  %r24, %r0, 3, 14
	b _16a09c
_16a094:
	lwzx %r0, %r30, %r3
	extrwi  %r24, %r0, 3, 26
_16a09c:
	cmplwi %r25, 0xff
	beq- _16a0d0
	lwz %r3, 0x5e4(%r29)
	slw %r0, %r23, %r24
	and. %r0, %r3, %r0
	bne- _16a0d0
	lwz %r3, 0x5e8(%r28)
	slw %r0, %r23, %r27
	and. %r0, %r3, %r0
	beq- _16a0d0
	mr %r3, %r25
	mr %r4, %r24
	bl sub_169f00
_16a0d0:
	addi %r31, %r31, 0x4
	addi %r27, %r27, 0x1
_16a0d8:
	cmplw %r27, %r26
	blt+ _16a074
_16a0e0:
	addi %r11, %r1, 0x30
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	.incbin "./dol.text.bin", 0x16a0f8, 0x8017170c - 0x801713b8

	.global sub_16a44c
sub_16a44c: # 0x8017170c
	stwu %r1, -0x10(%r1)
	li %r12, 0x0
	insrwi  %r12, %r4, 2, 30
	addi %r4, %r3, 0x10
	stw %r31, 0xc(%r1)
	insrwi  %r12, %r5, 2, 28
	lis %r11, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r11)
	insrwi  %r12, %r6, 3, 25
	lwz %r31, 0x1c(%r1)
	li %r0, 0x0
	lbz %r5, 0x1b(%r1)
	insrwi  %r12, %r31, 2, 23
	lwz %r3, -0x68d8(%r2)
	insrwi  %r12, %r7, 4, 19
	insrwi  %r12, %r8, 3, 16
	insrwi  %r12, %r9, 3, 13
	insrwi  %r12, %r5, 1, 12
	insrwi  %r12, %r10, 1, 11
	insrwi  %r12, %r4, 8, 0
	stw %r12, -0x8000(%r11)
	sth %r0, 0x2(%r3)
	lwz %r31, 0xc(%r1)
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x16a4b4, 0x80171a98 - 0x80171774

	.global sub_16a7d8
sub_16a7d8: # 0x80171a98
	lwz %r4, -0x68d8(%r2)
	lwz %r0, 0x254(%r4)
	insrwi  %r0, %r3, 3, 13
	stw %r0, 0x254(%r4)
	lwz %r0, 0x5fc(%r4)
	ori %r0, %r0, 0x6
	stw %r0, 0x5fc(%r4)
	blr

	.global sub_16a7f8
sub_16a7f8: # 0x80171ab8
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r4, 0x0
	li %r5, 0x0
	stw %r0, 0x14(%r1)
	li %r0, 0x0
	li %r6, 0x0
	li %r7, 0x0
	stw %r0, 0x8(%r1)
	li %r8, 0x0
	li %r9, 0x0
	li %r10, 0x0
	stw %r0, 0xc(%r1)
	bl sub_16a44c
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x16a840, 0x80171b54 - 0x80171b00

	.global sub_16a894
sub_16a894: # 0x80171b54
	blr
	.incbin "./dol.text.bin", 0x16a898, 0x80171bac - 0x80171b58

	.global sub_16a8ec
sub_16a8ec: # 0x80171bac
	cmpwi %r3, 0x0
	lis %r5, 0x8028
	addi %r5, %r5, 0x6280
	bne- _16a914
	slwi  %r6, %r4, 2
	addi %r4, %r5, 0x0
	addi %r0, %r5, 0x28
	add %r8, %r4, %r6
	add %r9, %r0, %r6
	b _16a928
_16a914:
	slwi  %r6, %r4, 2
	addi %r4, %r5, 0x14
	addi %r0, %r5, 0x3c
	add %r8, %r4, %r6
	add %r9, %r0, %r6
_16a928:
	lwz %r7, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	lwz %r3, 0x0(%r8)
	lis %r4, 0xcc01
	add %r6, %r7, %r0
	li %r5, 0x61
	lwz %r8, 0x180(%r6)
	li %r0, 0x0
	stb %r5, -0x8000(%r4)
	clrrwi  %r8, %r8, 24
	insrwi  %r8, %r3, 24, 8
	stw %r8, -0x8000(%r4)
	stw %r8, 0x180(%r6)
	lwz %r8, 0x1c0(%r6)
	lwz %r3, 0x0(%r9)
	rlwinm  %r8, %r8, 0, 28, 7
	stb %r5, -0x8000(%r4)
	rlwimi  %r8, %r3, 0, 8, 27
	stw %r8, -0x8000(%r4)
	stw %r8, 0x1c0(%r6)
	sth %r0, 0x2(%r7)
	blr

	.global sub_16a980
sub_16a980: # 0x80171c40
	lwz %r11, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	lis %r3, 0xcc01
	li %r8, 0x61
	add %r10, %r11, %r0
	li %r0, 0x0
	lwz %r9, 0x180(%r10)
	insrwi  %r9, %r4, 4, 16
	insrwi  %r9, %r5, 4, 20
	stb %r8, -0x8000(%r3)
	insrwi  %r9, %r6, 4, 24
	insrwi  %r9, %r7, 4, 28
	stw %r9, -0x8000(%r3)
	stw %r9, 0x180(%r10)
	sth %r0, 0x2(%r11)
	blr

	.global sub_16a9c0
sub_16a9c0: # 0x80171c80
	lwz %r11, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	lis %r3, 0xcc01
	li %r8, 0x61
	add %r10, %r11, %r0
	li %r0, 0x0
	lwz %r9, 0x1c0(%r10)
	insrwi  %r9, %r4, 3, 16
	insrwi  %r9, %r5, 3, 19
	stb %r8, -0x8000(%r3)
	insrwi  %r9, %r6, 3, 22
	insrwi  %r9, %r7, 3, 25
	stw %r9, -0x8000(%r3)
	stw %r9, 0x1c0(%r10)
	sth %r0, 0x2(%r11)
	blr

	.global sub_16aa00
sub_16aa00: # 0x80171cc0
	lwz %r10, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	cmpwi %r4, 0x1
	add %r9, %r10, %r0
	lwz %r11, 0x180(%r9)
	insrwi  %r11, %r4, 1, 13
	bgt- _16aa28
	insrwi  %r11, %r6, 2, 10
	insrwi  %r11, %r5, 2, 14
	b _16aa30
_16aa28:
	rlwimi  %r11, %r4, 19, 10, 11
	oris %r11, %r11, 0x3
_16aa30:
	lis %r3, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r3)
	insrwi  %r11, %r7, 1, 12
	insrwi  %r11, %r8, 2, 8
	li %r0, 0x0
	stw %r11, -0x8000(%r3)
	stw %r11, 0x180(%r9)
	sth %r0, 0x2(%r10)
	blr

	.global sub_16aa58
sub_16aa58: # 0x80171d18
	lwz %r10, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	cmpwi %r4, 0x1
	add %r9, %r10, %r0
	lwz %r11, 0x1c0(%r9)
	insrwi  %r11, %r4, 1, 13
	bgt- _16aa80
	insrwi  %r11, %r6, 2, 10
	insrwi  %r11, %r5, 2, 14
	b _16aa88
_16aa80:
	rlwimi  %r11, %r4, 19, 10, 11
	oris %r11, %r11, 0x3
_16aa88:
	lis %r3, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r3)
	insrwi  %r11, %r7, 1, 12
	insrwi  %r11, %r8, 2, 8
	li %r0, 0x0
	stw %r11, -0x8000(%r3)
	stw %r11, 0x1c0(%r9)
	sth %r0, 0x2(%r10)
	blr

	.global sub_16aab0
sub_16aab0: # 0x80171d70
	slwi  %r3, %r3, 1
	lwz %r8, 0x0(%r4)
	addi %r0, %r3, 0xe0
	lis %r4, 0xcc01
	slwi  %r7, %r0, 24
	li %r5, 0x61
	inslwi  %r7, %r8, 8, 24
	stb %r5, -0x8000(%r4)
	insrwi  %r7, %r8, 8, 12
	addi %r0, %r3, 0xe1
	stw %r7, -0x8000(%r4)
	slwi  %r6, %r0, 24
	rlwimi  %r6, %r8, 24, 24, 31
	lwz %r3, -0x68d8(%r2)
	stb %r5, -0x8000(%r4)
	rlwimi  %r6, %r8, 28, 12, 19
	li %r0, 0x0
	stw %r6, -0x8000(%r4)
	stb %r5, -0x8000(%r4)
	stw %r6, -0x8000(%r4)
	stb %r5, -0x8000(%r4)
	stw %r6, -0x8000(%r4)
	sth %r0, 0x2(%r3)
	blr
	.incbin "./dol.text.bin", 0x16ab10, 0x80171f30 - 0x80171dd0

	.global sub_16ac70
sub_16ac70: # 0x80171f30
	lwz %r9, -0x68d8(%r2)
	slwi  %r0, %r3, 2
	lis %r6, 0xcc01
	li %r3, 0x61
	add %r8, %r9, %r0
	li %r0, 0x0
	lwz %r7, 0x1c0(%r8)
	insrwi  %r7, %r4, 2, 30
	insrwi  %r7, %r5, 2, 28
	stw %r7, 0x1c0(%r8)
	stb %r3, -0x8000(%r6)
	lwz %r3, 0x1c0(%r8)
	stw %r3, -0x8000(%r6)
	sth %r0, 0x2(%r9)
	blr

	.global sub_16acac
sub_16acac: # 0x80171f6c
	stwu %r1, -0x10(%r1)
	slwi  %r11, %r3, 3
	slwi  %r12, %r3, 1
	lis %r8, 0xcc01
	stw %r31, 0xc(%r1)
	li %r9, 0x61
	addi %r3, %r12, 0x1
	li %r0, 0x0
	stw %r30, 0x8(%r1)
	lwz %r30, -0x68d8(%r2)
	addi %r31, %r30, 0x200
	lwzx %r10, %r31, %r11
	insrwi  %r10, %r4, 2, 30
	insrwi  %r10, %r5, 2, 28
	slwi  %r4, %r3, 2
	stwx %r10, %r31, %r11
	stb %r9, -0x8000(%r8)
	lwzx %r3, %r31, %r11
	stw %r3, -0x8000(%r8)
	lwzx %r3, %r31, %r4
	insrwi  %r3, %r6, 2, 30
	insrwi  %r3, %r7, 2, 28
	stwx %r3, %r31, %r4
	stb %r9, -0x8000(%r8)
	lwzx %r3, %r31, %r4
	stw %r3, -0x8000(%r8)
	sth %r0, 0x2(%r30)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x16ad28, 0x80172020 - 0x80171fe8

	.global sub_16ad60
sub_16ad60: # 0x80172020
	cmpwi %r4, 0x13
	li %r7, 0x0
	li %r0, 0xf4
	insrwi  %r7, %r5, 24, 8
	insrwi  %r7, %r0, 8, 0
	beq- _16ad9c
	bge- _16ad88
	cmpwi %r4, 0x11
	beq- _16ad94
	b _16adac
_16ad88:
	cmpwi %r4, 0x16
	beq- _16ada4
	b _16adac
_16ad94:
	li %r5, 0x0
	b _16adb0
_16ad9c:
	li %r5, 0x1
	b _16adb0
_16ada4:
	li %r5, 0x2
	b _16adb0
_16adac:
	li %r5, 0x2
_16adb0:
	lis %r4, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r4)
	li %r6, 0x0
	insrwi  %r6, %r5, 2, 30
	li %r5, 0xf5
	stw %r7, -0x8000(%r4)
	insrwi  %r6, %r3, 2, 28
	insrwi  %r6, %r5, 8, 0
	lwz %r3, -0x68d8(%r2)
	stb %r0, -0x8000(%r4)
	li %r0, 0x0
	stw %r6, -0x8000(%r4)
	sth %r0, 0x2(%r3)
	blr

	.global sub_16adec
sub_16adec: # 0x801720ac
	rlwinm  %r11, %r5, 0, 24, 22
	li %r7, 0x8
	srwi  %r9, %r3, 31
	lwz %r10, -0x68d8(%r2)
	subfc %r0, %r7, %r11
	slwi  %r8, %r3, 2
	addze %r0, %r7
	add %r9, %r9, %r3
	add %r7, %r10, %r8
	cmpwi %r4, 0x8
	extlwi  %r8, %r9, 30, 1
	subfic %r0, %r0, 0x8
	stw %r5, 0x5a4(%r7)
	add %r7, %r10, %r8
	andc %r9, %r11, %r0
	blt- _16ae48
	li %r0, 0x1
	lwz %r8, 0x5e8(%r10)
	slw %r0, %r0, %r3
	li %r4, 0x0
	andc %r0, %r8, %r0
	stw %r0, 0x5e8(%r10)
	b _16ae5c
_16ae48:
	li %r0, 0x1
	lwz %r8, 0x5e8(%r10)
	slw %r0, %r0, %r3
	or %r0, %r8, %r0
	stw %r0, 0x5e8(%r10)
_16ae5c:
	clrlwi. %r0, %r3, 31
	beq- _16aec0
	lwz %r8, 0x150(%r7)
	insrwi  %r8, %r9, 3, 17
	insrwi  %r8, %r4, 3, 14
	cmpwi %r6, 0xff
	stw %r8, 0x150(%r7)
	bne- _16ae84
	li %r0, 0x7
	b _16ae94
_16ae84:
	lis %r3, 0x8028
	slwi  %r0, %r6, 2
	addi %r3, %r3, 0x62d0
	lwzx %r0, %r3, %r0
_16ae94:
	insrwi  %r8, %r0, 3, 10
	cmpwi %r5, 0xff
	stw %r8, 0x150(%r7)
	li %r3, 0x0
	beq- _16aeb4
	rlwinm. %r0, %r5, 0, 23, 23
	bne- _16aeb4
	li %r3, 0x1
_16aeb4:
	insrwi  %r8, %r3, 1, 13
	stw %r8, 0x150(%r7)
	b _16af18
_16aec0:
	lwz %r8, 0x150(%r7)
	insrwi  %r8, %r9, 3, 29
	insrwi  %r8, %r4, 3, 26
	cmpwi %r6, 0xff
	stw %r8, 0x150(%r7)
	bne- _16aee0
	li %r0, 0x7
	b _16aef0
_16aee0:
	lis %r3, 0x8028
	slwi  %r0, %r6, 2
	addi %r3, %r3, 0x62d0
	lwzx %r0, %r3, %r0
_16aef0:
	insrwi  %r8, %r0, 3, 22
	cmpwi %r5, 0xff
	stw %r8, 0x150(%r7)
	li %r3, 0x0
	beq- _16af10
	rlwinm. %r0, %r5, 0, 23, 23
	bne- _16af10
	li %r3, 0x1
_16af10:
	insrwi  %r8, %r3, 1, 25
	stw %r8, 0x150(%r7)
_16af18:
	lis %r4, 0xcc01
	li %r0, 0x61
	stb %r0, -0x8000(%r4)
	li %r0, 0x0
	lwz %r5, -0x68d8(%r2)
	lwz %r3, 0x150(%r7)
	stw %r3, -0x8000(%r4)
	sth %r0, 0x2(%r5)
	lwz %r0, 0x5fc(%r5)
	ori %r0, %r0, 0x1
	stw %r0, 0x5fc(%r5)
	blr

	.global sub_16af48
sub_16af48: # 0x80172208
	lwz %r4, -0x68d8(%r2)
	subi %r0, %r3, 0x1
	lwz %r3, 0x254(%r4)
	insrwi  %r3, %r0, 4, 18
	stw %r3, 0x254(%r4)
	lwz %r0, 0x5fc(%r4)
	ori %r0, %r0, 0x4
	stw %r0, 0x5fc(%r4)
	blr

	.global sub_16af6c
sub_16af6c: # 0x8017222c
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stfd %f31, 0x30(%r1)
	psq_st 31, 0x38, 1, 0, 0
	li %r8, 0x0
	li %r9, 0x0
	stw %r31, 0x2c(%r1)
	clrlwi  %r31, %r3, 29
	stw %r30, 0x28(%r1)
	extrwi. %r30, %r3, 1, 28
	stw %r29, 0x24(%r1)
	mr %r29, %r4
	stw %r28, 0x20(%r1)
	beq- _16aff0
	fcmpu %cr0, %f4, %f3
	beq- _16afb8
	fcmpu %cr0, %f2, %f1
	bne- _16afc8
_16afb8:
	lfs %f0, -0x6828(%r2)
	stfs %f0, 0xc(%r1)
	stfs %f0, 0x8(%r1)
	b _16b0e0
_16afc8:
	fsubs %f6, %f2, %f1
	lfs %f5, -0x6824(%r2)
	fsubs %f2, %f4, %f3
	fsubs %f0, %f1, %f3
	fdivs %f3, %f5, %f6
	fmuls %f1, %f3, %f2
	fmuls %f0, %f3, %f0
	stfs %f1, 0xc(%r1)
	stfs %f0, 0x8(%r1)
	b _16b0e0
_16aff0:
	fcmpu %cr0, %f4, %f3
	beq- _16b000
	fcmpu %cr0, %f2, %f1
	bne- _16b010
_16b000:
	lfs %f3, -0x6828(%r2)
	lfs %f4, -0x6820(%r2)
	fmr  %f31, %f3
	b _16b02c
_16b010:
	fsubs %f0, %f4, %f3
	fsubs %f2, %f2, %f1
	fmuls %f3, %f4, %f3
	fdivs %f4, %f4, %f0
	fmuls %f0, %f0, %f2
	fdivs %f31, %f1, %f2
	fdivs %f3, %f3, %f0
_16b02c:
	lfs %f1, -0x6820(%r2)
	li %r28, 0x0
	lfd %f0, -0x6818(%r2)
	b _16b044
_16b03c:
	fmuls %f4, %f4, %f1
	addi %r28, %r28, 0x1
_16b044:
	fcmpo %cr0, %f4, %f0
	bgt+ _16b03c
	lfd %f0, -0x6808(%r2)
	lfs %f2, -0x6810(%r2)
	lfs %f1, -0x6828(%r2)
	b _16b064
_16b05c:
	fmuls %f4, %f4, %f2
	subi %r28, %r28, 0x1
_16b064:
	fcmpo %cr0, %f4, %f1
	mfcr %r0
	extrwi. %r0, %r0, 1, 1
	beq- _16b07c
	fcmpo %cr0, %f4, %f0
	blt+ _16b05c
_16b07c:
	addi %r0, %r28, 0x1
	li %r3, 0x1
	slw %r3, %r3, %r0
	lfs %f0, -0x6800(%r2)
	lis %r0, 0x4330
	lfd %f2, -0x67f8(%r2)
	xoris %r3, %r3, 0x8000
	stw %r0, 0x10(%r1)
	fmuls %f1, %f0, %f4
	stw %r3, 0x14(%r1)
	lfd %f0, 0x10(%r1)
	fsubs %f0, %f0, %f2
	fdivs %f0, %f3, %f0
	stfs %f0, 0xc(%r1)
	bl sub_19658
	addi %r0, %r28, 0x1
	li %r8, 0x0
	insrwi  %r8, %r3, 24, 8
	li %r9, 0x0
	insrwi  %r9, %r0, 5, 27
	li %r3, 0xef
	li %r0, 0xf0
	stfs %f31, 0x8(%r1)
	insrwi  %r8, %r3, 8, 0
	insrwi  %r9, %r0, 8, 0
_16b0e0:
	lwz %r3, 0xc(%r1)
	lis %r4, 0xcc01
	li %r5, 0x61
	li %r0, 0xee
	li %r6, 0x0
	stb %r5, -0x8000(%r4)
	rlwimi  %r6, %r3, 20, 21, 31
	lwz %r10, 0x8(%r1)
	rlwimi  %r6, %r3, 20, 13, 20
	li %r7, 0x0
	inslwi  %r6, %r3, 1, 12
	li %r3, 0xf1
	insrwi  %r6, %r0, 8, 0
	rlwimi  %r7, %r10, 20, 21, 31
	stw %r6, -0x8000(%r4)
	rlwimi  %r7, %r10, 20, 13, 20
	inslwi  %r7, %r10, 1, 12
	lwz %r0, 0x0(%r29)
	stb %r5, -0x8000(%r4)
	insrwi  %r7, %r30, 1, 11
	insrwi  %r7, %r31, 3, 8
	li %r6, 0x0
	stw %r8, -0x8000(%r4)
	insrwi  %r7, %r3, 8, 0
	inslwi  %r6, %r0, 24, 8
	li %r0, 0xf2
	stb %r5, -0x8000(%r4)
	insrwi  %r6, %r0, 8, 0
	lwz %r3, -0x68d8(%r2)
	li %r0, 0x0
	stw %r9, -0x8000(%r4)
	stb %r5, -0x8000(%r4)
	stw %r7, -0x8000(%r4)
	stb %r5, -0x8000(%r4)
	stw %r6, -0x8000(%r4)
	sth %r0, 0x2(%r3)
	psq_l 31, 0x38, 1, 0, 0
	lfd %f31, 0x30(%r1)
	lwz %r31, 0x2c(%r1)
	lwz %r30, 0x28(%r1)
	lwz %r29, 0x24(%r1)
	lwz %r28, 0x20(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	.incbin "./dol.text.bin", 0x16b198, 0x801726dc - 0x80172458

	.global sub_16b41c
sub_16b41c: # 0x801726dc
	lwz %r10, -0x68d8(%r2)
	subi %r0, %r3, 0x3
	subi %r8, %r3, 0x2
	lis %r7, 0xcc01
	cntlzw %r0, %r0
	lwz %r9, 0x220(%r10)
	rlwimi  %r9, %r0, 6, 20, 20
	cntlzw %r8, %r8
	li %r0, 0x61
	stb %r0, -0x8000(%r7)
	insrwi  %r9, %r3, 1, 31
	rlwimi  %r9, %r8, 28, 30, 30
	li %r0, 0x0
	insrwi  %r9, %r6, 4, 16
	insrwi  %r9, %r4, 3, 21
	insrwi  %r9, %r5, 3, 24
	stw %r9, -0x8000(%r7)
	stw %r9, 0x220(%r10)
	sth %r0, 0x2(%r10)
	blr
	.incbin "./dol.text.bin", 0x16b46c, 0x80172f38 - 0x8017272c

	.global sub_16bc78
sub_16bc78: # 0x80172f38
	lis %r4, 0xcc01
	li %r0, 0x10
	lis %r3, 0x6
	stb %r0, -0x8000(%r4)
	addi %r0, %r3, 0x1020
	lwz %r3, -0x68d8(%r2)
	stw %r0, -0x8000(%r4)
	subi %r5, %r4, 0x8000
	psq_l 2, 0x52c, 3, 0, 0
	psq_l 1, 0x534, 3, 0, 0
	psq_l 0, 0x53c, 3, 0, 0
	psq_st 2, 0x0, 5, 0, 0
	psq_st 1, 0x0, 5, 0, 0
	psq_st 0, 0x0, 5, 0, 0
	lwz %r0, 0x528(%r3)
	stw %r0, -0x8000(%r4)
	blr

	.global sub_16bcbc
sub_16bcbc: # 0x80172f7c
	lwz %r5, -0x68d8(%r2)
	cmpwi %r4, 0x1
	lfs %f1, 0x0(%r3)
	stw %r4, 0x528(%r5)
	lfs %f0, 0x14(%r3)
	stfs %f1, 0x52c(%r5)
	lfs %f1, 0x28(%r3)
	stfs %f0, 0x534(%r5)
	lfs %f0, 0x2c(%r3)
	stfs %f1, 0x53c(%r5)
	stfs %f0, 0x540(%r5)
	bne- _16bd00
	lfs %f1, 0xc(%r3)
	lfs %f0, 0x1c(%r3)
	stfs %f1, 0x530(%r5)
	stfs %f0, 0x538(%r5)
	b _16bd10
_16bd00:
	lfs %f1, 0x8(%r3)
	lfs %f0, 0x18(%r3)
	stfs %f1, 0x530(%r5)
	stfs %f0, 0x538(%r5)
_16bd10:
	lwz %r0, 0x5fc(%r5)
	oris %r0, %r0, 0x800
	stw %r0, 0x5fc(%r5)
	blr
	.incbin "./dol.text.bin", 0x16bd20, 0x8017306c - 0x80172fe0

	.global sub_16bdac
sub_16bdac: # 0x8017306c
	lis %r5, 0xcc01
	li %r0, 0x10
	slwi  %r4, %r4, 2
	stb %r0, -0x8000(%r5)
	oris %r0, %r4, 0xb
	stw %r0, -0x8000(%r5)
	subi %r4, %r5, 0x8000
	psq_l 5, 0x0, 3, 0, 0
	psq_l 4, 0x8, 3, 0, 0
	psq_l 3, 0x10, 3, 0, 0
	psq_l 2, 0x18, 3, 0, 0
	psq_l 1, 0x20, 3, 0, 0
	psq_l 0, 0x28, 3, 0, 0
	psq_st 5, 0x0, 4, 0, 0
	psq_st 4, 0x0, 4, 0, 0
	psq_st 3, 0x0, 4, 0, 0
	psq_st 2, 0x0, 4, 0, 0
	psq_st 1, 0x0, 4, 0, 0
	psq_st 0, 0x0, 4, 0, 0
	blr
	.incbin "./dol.text.bin", 0x16bdfc, 0x80173174 - 0x801730bc

	.global sub_16beb4
sub_16beb4: # 0x80173174
	lwz %r4, -0x68d8(%r2)
	lwz %r0, 0x80(%r4)
	insrwi  %r0, %r3, 6, 26
	stw %r0, 0x80(%r4)
	lwz %r0, 0x5fc(%r4)
	oris %r0, %r0, 0x400
	stw %r0, 0x5fc(%r4)
	blr
	.incbin "./dol.text.bin", 0x16bed4, 0x80173248 - 0x80173194

	.global sub_16bf88
sub_16bf88: # 0x80173248
	lwz %r6, -0x68d8(%r2)
	lis %r3, 0x5
	lfs %f6, -0x67b0(%r2)
	lis %r4, 0xcc01
	lfs %f2, 0x550(%r6)
	li %r5, 0x10
	lfs %f3, 0x54c(%r6)
	addi %r0, %r3, 0x101a
	fneg  %f1, %f2
	lfs %f0, 0x544(%r6)
	fmuls %f7, %f3, %f6
	lfs %f4, 0x548(%r6)
	fmuls %f5, %f2, %f6
	lfs %f3, 0x554(%r6)
	fmuls %f8, %f1, %f6
	lfs %f2, 0x560(%r6)
	lfs %f1, 0x558(%r6)
	fadds %f6, %f0, %f7
	lfs %f0, 0x55c(%r6)
	fmuls %f3, %f3, %f2
	fmuls %f9, %f1, %f2
	stb %r5, -0x8000(%r4)
	lfs %f2, -0x67ac(%r2)
	fadds %f1, %f4, %f5
	stw %r0, -0x8000(%r4)
	fsubs %f3, %f9, %f3
	stfs %f7, -0x8000(%r4)
	fadds %f4, %f2, %f6
	fadds %f1, %f2, %f1
	stfs %f8, -0x8000(%r4)
	fadds %f0, %f9, %f0
	stfs %f3, -0x8000(%r4)
	stfs %f4, -0x8000(%r4)
	stfs %f1, -0x8000(%r4)
	stfs %f0, -0x8000(%r4)
	blr
	.incbin "./dol.text.bin", 0x16c018, 0x80173314 - 0x801732d8

	.global sub_16c054
sub_16c054: # 0x80173314
	lwz %r3, -0x68d8(%r2)
	stfs %f1, 0x544(%r3)
	stfs %f2, 0x548(%r3)
	stfs %f3, 0x54c(%r3)
	stfs %f4, 0x550(%r3)
	stfs %f5, 0x554(%r3)
	stfs %f6, 0x558(%r3)
	lwz %r0, 0x5fc(%r3)
	oris %r0, %r0, 0x1000
	stw %r0, 0x5fc(%r3)
	blr

	.global sub_16c080
sub_16c080: # 0x80173340
	lwz %r4, -0x68d8(%r2)
	psq_l 2, 0x544, 4, 0, 0
	psq_l 1, 0x54c, 4, 0, 0
	psq_l 0, 0x554, 4, 0, 0
	psq_st 2, 0x0, 3, 0, 0
	psq_st 1, 0x8, 3, 0, 0
	psq_st 0, 0x10, 3, 0, 0
	blr
	.incbin "./dol.text.bin", 0x16c0a0, 0x80173390 - 0x80173360

	.global sub_16c0d0
sub_16c0d0: # 0x80173390
	lwz %r8, -0x68d8(%r2)
	addi %r4, %r4, 0x156
	addi %r9, %r3, 0x156
	lis %r7, 0xcc01
	lwz %r0, 0x148(%r8)
	insrwi  %r0, %r4, 11, 21
	insrwi  %r0, %r9, 11, 9
	add %r6, %r4, %r6
	stw %r0, 0x148(%r8)
	add %r3, %r9, %r5
	subi %r5, %r6, 0x1
	li %r4, 0x61
	lwz %r6, 0x14c(%r8)
	subi %r3, %r3, 0x1
	insrwi  %r6, %r5, 11, 21
	li %r0, 0x0
	insrwi  %r6, %r3, 11, 9
	stw %r6, 0x14c(%r8)
	stb %r4, -0x8000(%r7)
	lwz %r3, 0x148(%r8)
	stw %r3, -0x8000(%r7)
	stb %r4, -0x8000(%r7)
	lwz %r3, 0x14c(%r8)
	stw %r3, -0x8000(%r7)
	sth %r0, 0x2(%r8)
	blr

	.global sub_16c138
sub_16c138: # 0x801733f8
	lwz %r7, -0x68d8(%r2)
	lwz %r0, 0x148(%r7)
	lwz %r8, 0x14c(%r7)
	extrwi  %r10, %r0, 11, 9
	clrlwi  %r9, %r0, 21
	subi %r7, %r10, 0x156
	extrwi  %r0, %r8, 11, 9
	stw %r7, 0x0(%r3)
	subi %r7, %r9, 0x156
	subf %r3, %r10, %r0
	clrlwi  %r0, %r8, 21
	stw %r7, 0x0(%r4)
	addi %r4, %r3, 0x1
	subf %r3, %r9, %r0
	stw %r4, 0x0(%r5)
	addi %r0, %r3, 0x1
	stw %r0, 0x0(%r6)
	blr
	.incbin "./dol.text.bin", 0x16c180, 0x801734a4 - 0x80173440

	.global sub_16c1e4
sub_16c1e4: # 0x801734a4
	cmpwi %r3, 0x5
	bge- _16c228
	lis %r5, 0xcc01
	li %r0, 0x8
	stb %r0, -0x8000(%r5)
	li %r0, 0x30
	lwz %r6, -0x68d8(%r2)
	li %r3, 0x10
	stb %r0, -0x8000(%r5)
	li %r0, 0x1018
	lwz %r4, 0x80(%r6)
	stw %r4, -0x8000(%r5)
	stb %r3, -0x8000(%r5)
	stw %r0, -0x8000(%r5)
	lwz %r0, 0x80(%r6)
	stw %r0, -0x8000(%r5)
	b _16c260
_16c228:
	lis %r5, 0xcc01
	li %r0, 0x8
	stb %r0, -0x8000(%r5)
	li %r0, 0x40
	lwz %r6, -0x68d8(%r2)
	li %r3, 0x10
	stb %r0, -0x8000(%r5)
	li %r0, 0x1019
	lwz %r4, 0x84(%r6)
	stw %r4, -0x8000(%r5)
	stb %r3, -0x8000(%r5)
	stw %r0, -0x8000(%r5)
	lwz %r0, 0x84(%r6)
	stw %r0, -0x8000(%r5)
_16c260:
	li %r0, 0x1
	sth %r0, 0x2(%r6)
	blr

	.incbin "./dol.text.bin", 0x16c26c, 0x80192edc - 0x8017352c
	
	.global sub_18bc1c
sub_18bc1c: # 0x80192edc
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	lbz %r0, -0x6418(%r13)
	cmpwi %r0, 0x0
	bne- _18bc58
	bl sub_1a42e8
	stw %r3, -0x6408(%r13)
	bl sub_1a42f0
	lwz %r4, -0x6408(%r13)
	li %r0, 0x1
	stw %r3, -0x640c(%r13)
	stw %r4, -0x6410(%r13)
	stw %r3, -0x6414(%r13)
	stb %r0, -0x6418(%r13)
_18bc58:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_18bc68
sub_18bc68: # 0x80192f28
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	li %r0, 0x0
	stb %r0, -0x6418(%r13)
	bl sub_1a42e8
	stw %r3, -0x6408(%r13)
	bl sub_1a42f0
	lwz %r4, -0x6408(%r13)
	li %r0, 0x1
	stw %r3, -0x640c(%r13)
	stw %r4, -0x6410(%r13)
	stw %r3, -0x6414(%r13)
	stb %r0, -0x6418(%r13)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_18bcb0
sub_18bcb0: # 0x80192f70
	slwi  %r0, %r3, 2
	lis %r3, 0xcd00
	lwzx %r3, %r3, %r0
	blr

	.global sub_18bcc0
sub_18bcc0: # 0x80192f80
	slwi  %r0, %r3, 2
	lis %r3, 0xcd00
	stwx %r4, %r3, %r0
	blr
	
	.global sub_18bcd0
sub_18bcd0: # 0x80192f90
	lwz %r3, -0x6410(%r13)
	blr

	.global sub_18bcd8
sub_18bcd8: # 0x80192f98
	lwz %r3, -0x6414(%r13)
	blr

	.global sub_18bce0
sub_18bce0: # 0x80192fa0
	stw %r3, -0x6414(%r13)
	blr

	.global sub_18bce8
sub_18bce8: # 0x80192fa8
	mr %r5, %r3
	b _18bcf4
_18bcf0:
	addi %r5, %r5, 0x1
_18bcf4:
	lbz %r0, 0x0(%r5)
	cmpwi %r0, 0x0
	beq- _18bd0c
	cmpwi %r4, 0x0
	subi %r4, %r4, 0x1
	bne+ _18bcf0
_18bd0c:
	subf %r3, %r3, %r5
	blr
	.incbin "./dol.text.bin", 0x18bd14, 0x801933d8 - 0x80192fd4

	.global sub_18c118
sub_18c118: # 0x801933d8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	lwz %r0, -0x63f4(%r13)
	stw %r31, 0x1c(%r1)
	cmpwi %r0, 0x0
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	bne- _18c1ac
	li %r0, 0x1
	stw %r0, -0x63f4(%r13)
	bl sub_18bc1c
	bl sub_18bcd8
	mr %r29, %r3
	addi %r31, %r3, 0x1000
	bl sub_18bcd0
	cmplw %r31, %r3
	ble- _18c16c
	li %r30, -0x16
	b _18c1ac
_18c16c:
	mr %r3, %r29
	li %r4, 0x1000
	bl sub_18d658
	stw %r3, -0x726c(%r13)
	mr %r3, %r31
	bl sub_18bce0
	lis %r4, 0x8019
	li %r3, 0x1b
	addi %r4, %r4, 0x322c
	bl sub_19f298
	li %r3, 0x10
	bl sub_19f65c
	li %r3, 0x1
	li %r4, 0x38
	bl sub_18bcc0
	bl sub_18db7c
_18c1ac:
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_18c1cc
sub_18c1cc: # 0x8019348c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	bl sub_18bcd8
	mr %r29, %r3
	addi %r31, %r3, 0x800
	bl sub_18bcd0
	cmplw %r31, %r3
	ble- _18c208
	li %r30, -0x16
	b _18c220
_18c208:
	mr %r3, %r29
	li %r4, 0x800
	bl sub_18d658
	stw %r3, -0x726c(%r13)
	mr %r3, %r31
	bl sub_18bce0
_18c220:
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_18c240
sub_18c240: # 0x80193500
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bne- _18c274
	li %r31, -0x4
	b _18c440
_18c274:
	cmpwi %r4, 0x0
	bne- _18c284
	addi %r3, %r3, 0x2c
	bl sub_1a2540
_18c284:
	mr %r3, %r28
	li %r4, 0x20
	bl sub_19a2cc
	bl sub_19f24c
	lis %r4, 0x8034
	mr %r30, %r3
	addi %r3, %r4, 0x1240
	lwz %r4, 0x1240(%r4)
	lwz %r0, 0x4(%r3)
	li %r31, 0x0
	cmplw %r0, %r4
	bge- _18c2bc
	subf %r0, %r4, %r0
	b _18c2d8
_18c2bc:
	subf %r4, %r4, %r0
	li %r3, 0x10
	subi %r0, %r4, 0x10
	orc %r3, %r4, %r3
	srwi  %r0, %r0, 1
	subf %r0, %r0, %r3
	srwi  %r0, %r0, 31
_18c2d8:
	cmpwi %r0, 0x0
	beq- _18c2e8
	li %r31, -0x8
	b _18c328
_18c2e8:
	lis %r6, 0x8034
	mr %r3, %r28
	addi %r6, %r6, 0x1240
	lwz %r0, 0xc(%r6)
	slwi  %r0, %r0, 2
	add %r4, %r6, %r0
	stw %r28, 0x10(%r4)
	lwz %r5, 0xc(%r6)
	lwz %r4, 0x4(%r6)
	addi %r0, %r5, 0x1
	clrlwi  %r5, %r0, 28
	addi %r0, %r4, 0x1
	stw %r5, 0xc(%r6)
	stw %r0, 0x4(%r6)
	lwz %r4, 0x8(%r28)
	bl sub_18dc34
_18c328:
	cmpwi %r31, 0x0
	beq- _18c350
	mr %r3, %r30
	bl sub_19f274
	cmpwi %r29, 0x0
	beq- _18c440
	lwz %r3, -0x726c(%r13)
	mr %r4, %r28
	bl sub_18d990
	b _18c440
_18c350:
	lwz %r0, -0x7270(%r13)
	cmpwi %r0, 0x0
	ble- _18c41c
	lis %r4, 0x8034
	addi %r3, %r4, 0x1240
	lwz %r4, 0x1240(%r4)
	lwz %r0, 0x4(%r3)
	cmplw %r0, %r4
	bge- _18c37c
	subf %r0, %r4, %r0
	b _18c388
_18c37c:
	subf %r0, %r4, %r0
	cntlzw %r0, %r0
	srwi  %r0, %r0, 5
_18c388:
	cmpwi %r0, 0x0
	bne- _18c41c
	lis %r3, 0x8034
	addi %r3, %r3, 0x1240
	lwz %r0, 0x8(%r3)
	slwi  %r0, %r0, 2
	add %r3, %r3, %r0
	lwz %r4, 0x10(%r3)
	cmpwi %r4, 0x0
	beq- _18c41c
	lwz %r0, 0x28(%r4)
	cmpwi %r0, 0x0
	beq- _18c3c8
	lwz %r3, -0x7270(%r13)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
_18c3c8:
	addis %r4, %r4, 0x8000
	li %r3, 0x0
	bl sub_18bcc0
	lis %r7, 0x8034
	lwz %r3, -0x7270(%r13)
	addi %r6, %r7, 0x1240
	lwz %r4, 0x1240(%r7)
	lwz %r5, 0x8(%r6)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
	addi %r4, %r4, 0x1
	addi %r0, %r5, 0x1
	li %r3, 0x1
	clrlwi  %r0, %r0, 28
	stw %r4, 0x1240(%r7)
	stw %r0, 0x8(%r6)
	bl sub_18bcb0
	rlwinm  %r0, %r3, 0, 26, 27
	li %r3, 0x1
	ori %r4, %r0, 0x1
	bl sub_18bcc0
_18c41c:
	cmpwi %r29, 0x0
	bne- _18c42c
	addi %r3, %r28, 0x2c
	bl sub_1a3658
_18c42c:
	mr %r3, %r30
	bl sub_19f274
	cmpwi %r29, 0x0
	bne- _18c440
	lwz %r31, 0x4(%r28)
_18c440:
	cmpwi %r28, 0x0
	beq- _18c45c
	cmpwi %r29, 0x0
	bne- _18c45c
	lwz %r3, -0x726c(%r13)
	mr %r4, %r28
	bl sub_18d990
_18c45c:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_18c480
sub_18c480: # 0x80193740
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19780
	addic. %r0, %r1, 0x8
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r31, %r6
	li %r30, 0x0
	bne- _18c4b8
	li %r30, -0x4
	b _18c500
_18c4b8:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18c4dc
	li %r30, -0x16
	b _18c500
_18c4dc:
	stw %r29, 0x20(%r3)
	li %r5, 0x0
	li %r0, 0x1
	lwz %r4, 0x8(%r1)
	stw %r31, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r5, 0x8(%r3)
_18c500:
	cmpwi %r30, 0x0
	bne- _18c57c
	lwz %r31, 0x8(%r1)
	li %r30, 0x0
	cmpwi %r31, 0x0
	bne- _18c520
	li %r30, -0x4
	b _18c564
_18c520:
	mr %r3, %r27
	li %r4, 0x40
	b _18c530
_18c52c:
	addi %r3, %r3, 0x1
_18c530:
	lbz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	beq- _18c548
	cmpwi %r4, 0x0
	subi %r4, %r4, 0x1
	bne+ _18c52c
_18c548:
	subf %r4, %r27, %r3
	mr %r3, %r27
	addi %r4, %r4, 0x1
	bl sub_19a2cc
	addis %r0, %r27, 0x8000
	stw %r0, 0xc(%r31)
	stw %r28, 0x10(%r31)
_18c564:
	cmpwi %r30, 0x0
	bne- _18c57c
	lwz %r3, 0x8(%r1)
	mr %r4, %r29
	bl sub_18c240
	mr %r30, %r3
_18c57c:
	addi %r11, %r1, 0x30
	mr %r3, %r30
	bl sub_197cc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_18c598
sub_18c598: # 0x80193858
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addic. %r0, %r1, 0x8
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bne- _18c5d0
	li %r30, -0x4
	b _18c618
_18c5d0:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18c5f4
	li %r30, -0x16
	b _18c618
_18c5f4:
	li %r5, 0x0
	li %r0, 0x1
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r5, 0x8(%r3)
_18c618:
	cmpwi %r30, 0x0
	bne- _18c694
	lwz %r31, 0x8(%r1)
	li %r30, 0x0
	cmpwi %r31, 0x0
	bne- _18c638
	li %r30, -0x4
	b _18c67c
_18c638:
	mr %r3, %r28
	li %r4, 0x40
	b _18c648
_18c644:
	addi %r3, %r3, 0x1
_18c648:
	lbz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	beq- _18c660
	cmpwi %r4, 0x0
	subi %r4, %r4, 0x1
	bne+ _18c644
_18c660:
	subf %r4, %r28, %r3
	mr %r3, %r28
	addi %r4, %r4, 0x1
	bl sub_19a2cc
	addis %r0, %r28, 0x8000
	stw %r0, 0xc(%r31)
	stw %r29, 0x10(%r31)
_18c67c:
	cmpwi %r30, 0x0
	bne- _18c694
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r30, %r3
_18c694:
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x18c6b8, 0x80193a38 - 0x80193978

	.global sub_18c778
sub_18c778: # 0x80193a38
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addic. %r0, %r1, 0x8
	stw %r31, 0x1c(%r1)
	li %r31, 0x0
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	bne- _18c7a4
	li %r31, -0x4
	b _18c7ec
_18c7a4:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18c7c8
	li %r31, -0x16
	b _18c7ec
_18c7c8:
	li %r5, 0x0
	li %r0, 0x2
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r30, 0x8(%r3)
_18c7ec:
	cmpwi %r31, 0x0
	bne- _18c804
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r31, %r3
_18c804:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x18c820, 0x80193be0 - 0x80193ae0
_18c920:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addic. %r0, %r1, 0x8
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	li %r30, 0x0
	stw %r29, 0x14(%r1)
	mr %r29, %r5
	stw %r28, 0x10(%r1)
	mr %r28, %r4
	bne- _18c95c
	li %r30, -0x4
	b _18c9a4
_18c95c:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18c980
	li %r30, -0x16
	b _18c9a4
_18c980:
	li %r5, 0x0
	li %r0, 0x3
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r31, 0x8(%r3)
_18c9a4:
	cmpwi %r30, 0x0
	bne- _18ca04
	lwz %r31, 0x8(%r1)
	li %r30, 0x0
	cmpwi %r31, 0x0
	bne- _18c9c4
	li %r30, -0x4
	b _18c9ec
_18c9c4:
	mr %r3, %r28
	mr %r4, %r29
	bl sub_19a2a0
	cmpwi %r28, 0x0
	beq- _18c9e0
	addis %r0, %r28, 0x8000
	b _18c9e4
_18c9e0:
	li %r0, 0x0
_18c9e4:
	stw %r0, 0xc(%r31)
	stw %r29, 0x10(%r31)
_18c9ec:
	cmpwi %r30, 0x0
	bne- _18ca04
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r30, %r3
_18ca04:
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x18ca28, 0x80193de8 - 0x80193ce8
_18cb28:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addic. %r0, %r1, 0x8
	stw %r31, 0x1c(%r1)
	li %r31, 0x0
	stw %r30, 0x18(%r1)
	mr %r30, %r5
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bne- _18cb64
	li %r31, -0x4
	b _18cbac
_18cb64:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18cb88
	li %r31, -0x16
	b _18cbac
_18cb88:
	li %r5, 0x0
	li %r0, 0x4
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r28, 0x8(%r3)
_18cbac:
	cmpwi %r31, 0x0
	bne- _18cc0c
	lwz %r5, 0x8(%r1)
	li %r31, 0x0
	cmpwi %r5, 0x0
	bne- _18cbcc
	li %r31, -0x4
	b _18cbf4
_18cbcc:
	cmpwi %r29, 0x0
	beq- _18cbdc
	addis %r0, %r29, 0x8000
	b _18cbe0
_18cbdc:
	li %r0, 0x0
_18cbe0:
	stw %r0, 0xc(%r5)
	mr %r3, %r29
	mr %r4, %r30
	stw %r30, 0x10(%r5)
	bl sub_19a2cc
_18cbf4:
	cmpwi %r31, 0x0
	bne- _18cc0c
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r31, %r3
_18cc0c:
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x18cc30, 0x801940b8 - 0x80193ef0

	.global sub_18cdf8
sub_18cdf8: # 0x801940b8
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19770
	addic. %r0, %r1, 0x8
	mr %r23, %r3
	mr %r24, %r4
	mr %r25, %r5
	mr %r26, %r6
	mr %r27, %r7
	mr %r28, %r8
	mr %r29, %r9
	mr %r30, %r10
	li %r31, 0x0
	bne- _18ce40
	li %r31, -0x4
	b _18ce88
_18ce40:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18ce64
	li %r31, -0x16
	b _18ce88
_18ce64:
	stw %r29, 0x20(%r3)
	li %r5, 0x0
	li %r0, 0x6
	lwz %r4, 0x8(%r1)
	stw %r30, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r23, 0x8(%r3)
_18ce88:
	cmpwi %r31, 0x0
	bne- _18cf14
	lwz %r5, 0x8(%r1)
	li %r31, 0x0
	cmpwi %r5, 0x0
	bne- _18cea8
	li %r31, -0x4
	b _18cefc
_18cea8:
	cmpwi %r27, 0x0
	stw %r24, 0xc(%r5)
	beq- _18cebc
	addis %r0, %r27, 0x8000
	b _18cec0
_18cebc:
	li %r0, 0x0
_18cec0:
	stw %r0, 0x18(%r5)
	cmpwi %r25, 0x0
	stw %r28, 0x1c(%r5)
	beq- _18ced8
	addis %r0, %r25, 0x8000
	b _18cedc
_18ced8:
	li %r0, 0x0
_18cedc:
	stw %r0, 0x10(%r5)
	mr %r3, %r25
	mr %r4, %r26
	stw %r26, 0x14(%r5)
	bl sub_19a2cc
	mr %r3, %r27
	mr %r4, %r28
	bl sub_19a2cc
_18cefc:
	cmpwi %r31, 0x0
	bne- _18cf14
	lwz %r3, 0x8(%r1)
	mr %r4, %r29
	bl sub_18c240
	mr %r31, %r3
_18cf14:
	addi %r11, %r1, 0x40
	mr %r3, %r31
	bl sub_197bc
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	
	.global sub_18cf30
sub_18cf30: # 0x801941f0
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	addic. %r0, %r1, 0x8
	mr %r25, %r3
	mr %r26, %r4
	mr %r27, %r5
	mr %r28, %r6
	mr %r29, %r7
	mr %r30, %r8
	li %r31, 0x0
	bne- _18cf70
	li %r31, -0x4
	b _18cfb8
_18cf70:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18cf94
	li %r31, -0x16
	b _18cfb8
_18cf94:
	li %r5, 0x0
	li %r0, 0x6
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r25, 0x8(%r3)
_18cfb8:
	cmpwi %r31, 0x0
	bne- _18d044
	lwz %r5, 0x8(%r1)
	li %r31, 0x0
	cmpwi %r5, 0x0
	bne- _18cfd8
	li %r31, -0x4
	b _18d02c
_18cfd8:
	cmpwi %r29, 0x0
	stw %r26, 0xc(%r5)
	beq- _18cfec
	addis %r0, %r29, 0x8000
	b _18cff0
_18cfec:
	li %r0, 0x0
_18cff0:
	stw %r0, 0x18(%r5)
	cmpwi %r27, 0x0
	stw %r30, 0x1c(%r5)
	beq- _18d008
	addis %r0, %r27, 0x8000
	b _18d00c
_18d008:
	li %r0, 0x0
_18d00c:
	stw %r0, 0x10(%r5)
	mr %r3, %r27
	mr %r4, %r28
	stw %r28, 0x14(%r5)
	bl sub_19a2cc
	mr %r3, %r29
	mr %r4, %r30
	bl sub_19a2cc
_18d02c:
	cmpwi %r31, 0x0
	bne- _18d044
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r31, %r3
_18d044:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_18d060
sub_18d060: # 0x80194320
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	cmpwi %r3, 0x0
	mr %r29, %r3
	mr %r30, %r7
	li %r31, 0x0
	bne- _18d090
	li %r31, -0x4
	b _18d180
_18d090:
	stw %r4, 0xc(%r3)
	slwi  %r27, %r5, 3
	li %r26, 0x0
	li %r28, 0x0
	stw %r5, 0x10(%r3)
	stw %r6, 0x14(%r3)
	stw %r7, 0x18(%r3)
	b _18d0f4
_18d0b0:
	lwz %r3, 0x18(%r29)
	add %r0, %r28, %r27
	add %r4, %r3, %r0
	lwzx %r3, %r3, %r0
	lwz %r4, 0x4(%r4)
	bl sub_19a2cc
	lwz %r4, 0x18(%r29)
	add %r3, %r28, %r27
	lwzx %r5, %r4, %r3
	cmpwi %r5, 0x0
	beq- _18d0e4
	addis %r0, %r5, 0x8000
	b _18d0e8
_18d0e4:
	li %r0, 0x0
_18d0e8:
	stwx %r0, %r4, %r3
	addi %r28, %r28, 0x8
	addi %r26, %r26, 0x1
_18d0f4:
	lwz %r0, 0x14(%r29)
	cmplw %r26, %r0
	blt+ _18d0b0
	li %r27, 0x0
	li %r28, 0x0
	b _18d148
_18d10c:
	lwz %r0, 0x18(%r29)
	add %r4, %r0, %r28
	lwzx %r3, %r28, %r0
	lwz %r4, 0x4(%r4)
	bl sub_19a2cc
	lwz %r3, 0x18(%r29)
	lwzx %r4, %r3, %r28
	cmpwi %r4, 0x0
	beq- _18d138
	addis %r0, %r4, 0x8000
	b _18d13c
_18d138:
	li %r0, 0x0
_18d13c:
	stwx %r0, %r3, %r28
	addi %r28, %r28, 0x8
	addi %r27, %r27, 0x1
_18d148:
	lwz %r4, 0x10(%r29)
	cmplw %r27, %r4
	blt+ _18d10c
	lwz %r0, 0x14(%r29)
	lwz %r3, 0x18(%r29)
	add %r0, %r4, %r0
	slwi  %r4, %r0, 3
	bl sub_19a2cc
	cmpwi %r30, 0x0
	beq- _18d178
	addis %r0, %r30, 0x8000
	b _18d17c
_18d178:
	li %r0, 0x0
_18d17c:
	stw %r0, 0x18(%r29)
_18d180:
	addi %r11, %r1, 0x20
	mr %r3, %r31
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_18d19c
sub_18d19c: # 0x8019445c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19774
	addic. %r0, %r1, 0x8
	mr %r24, %r3
	mr %r25, %r4
	mr %r26, %r5
	mr %r27, %r6
	mr %r28, %r7
	mr %r29, %r8
	mr %r30, %r9
	li %r31, 0x0
	bne- _18d1e0
	li %r31, -0x4
	b _18d228
_18d1e0:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18d204
	li %r31, -0x16
	b _18d228
_18d204:
	stw %r29, 0x20(%r3)
	li %r5, 0x0
	li %r0, 0x7
	lwz %r4, 0x8(%r1)
	stw %r30, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r24, 0x8(%r3)
_18d228:
	cmpwi %r31, 0x0
	bne- _18d264
	lwz %r3, 0x8(%r1)
	mr %r4, %r25
	mr %r5, %r26
	mr %r6, %r27
	mr %r7, %r28
	bl sub_18d060
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _18d264
	lwz %r3, 0x8(%r1)
	mr %r4, %r29
	bl sub_18c240
	mr %r31, %r3
_18d264:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197c0
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_18d280
sub_18d280: # 0x80194540
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_1977c
	addic. %r0, %r1, 0x8
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	mr %r30, %r7
	li %r31, 0x0
	bne- _18d2bc
	li %r31, -0x4
	b _18d304
_18d2bc:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18d2e0
	li %r31, -0x16
	b _18d304
_18d2e0:
	li %r5, 0x0
	li %r0, 0x7
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r26, 0x8(%r3)
_18d304:
	cmpwi %r31, 0x0
	bne- _18d340
	lwz %r3, 0x8(%r1)
	mr %r4, %r27
	mr %r5, %r28
	mr %r6, %r29
	mr %r7, %r30
	bl sub_18d060
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _18d340
	lwz %r3, 0x8(%r1)
	li %r4, 0x0
	bl sub_18c240
	mr %r31, %r3
_18d340:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197c8
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_18d35c
sub_18d35c: # 0x8019461c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_1977c
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r30, %r6
	mr %r29, %r7
	bl sub_19f24c
	lwz %r0, -0x6400(%r13)
	cmpwi %r0, 0x0
	beq- _18d3a0
	bl sub_19f274
	li %r31, -0xa
	b _18d63c
_18d3a0:
	li %r0, 0x1
	stw %r0, -0x6400(%r13)
	bl sub_19f274
	addic. %r0, %r1, 0x8
	li %r31, 0x0
	bne- _18d3c0
	li %r31, -0x4
	b _18d408
_18d3c0:
	lwz %r3, -0x726c(%r13)
	li %r4, 0x40
	li %r5, 0x20
	bl sub_18d98c
	cmpwi %r3, 0x0
	stw %r3, 0x8(%r1)
	bne- _18d3e4
	li %r31, -0x16
	b _18d408
_18d3e4:
	li %r5, 0x0
	li %r0, 0x7
	stw %r5, 0x20(%r3)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x24(%r4)
	lwz %r4, 0x8(%r1)
	stw %r5, 0x28(%r4)
	stw %r0, 0x0(%r3)
	stw %r26, 0x8(%r3)
_18d408:
	cmpwi %r31, 0x0
	bne- _18d614
	lwz %r3, 0x8(%r1)
	li %r0, 0x1
	mr %r4, %r27
	mr %r5, %r28
	stw %r3, -0x63f8(%r13)
	mr %r6, %r30
	mr %r7, %r29
	stw %r0, 0x28(%r3)
	lwz %r3, 0x8(%r1)
	bl sub_18d060
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _18d614
	lis %r29, 0x8034
	lwz %r4, 0x8(%r1)
	addi %r3, %r29, 0x12a0
	li %r5, 0x40
	bl memcpy
	addi %r3, %r29, 0x12a0
	lwz %r29, 0x8(%r1)
	stw %r3, -0x63fc(%r13)
	addi %r3, %r3, 0x2c
	bl sub_1a2540
	mr %r3, %r29
	li %r4, 0x20
	bl sub_19a2cc
	bl sub_19f24c
	lis %r4, 0x8034
	mr %r30, %r3
	addi %r3, %r4, 0x1240
	lwz %r0, 0x1240(%r4)
	lwz %r3, 0x4(%r3)
	li %r31, 0x0
	cmplw %r3, %r0
	bge- _18d4a8
	subfic %r0, %r0, 0x0
	add %r0, %r0, %r3
	b _18d4c4
_18d4a8:
	subf %r4, %r0, %r3
	li %r3, 0x10
	subi %r0, %r4, 0x10
	.incbin "./dol.text.bin", 0x18d4b4, 0x80194778 - 0x80194774
	srwi  %r0, %r0, 1
	subf %r0, %r0, %r3
	srwi  %r0, %r0, 31
_18d4c4:
	cmpwi %r0, 0x0
	beq- _18d4d4
	li %r31, -0x8
	b _18d514
_18d4d4:
	lis %r6, 0x8034
	mr %r3, %r29
	addi %r6, %r6, 0x1240
	lwz %r0, 0xc(%r6)
	slwi  %r0, %r0, 2
	add %r4, %r6, %r0
	stw %r29, 0x10(%r4)
	lwz %r5, 0xc(%r6)
	lwz %r4, 0x4(%r6)
	addi %r0, %r5, 0x1
	clrlwi  %r5, %r0, 28
	addi %r0, %r4, 0x1
	stw %r5, 0xc(%r6)
	stw %r0, 0x4(%r6)
	lwz %r4, 0x8(%r29)
	bl sub_18dc34
_18d514:
	cmpwi %r31, 0x0
	beq- _18d528
	mr %r3, %r30
	bl sub_19f274
	b _18d614
_18d528:
	lwz %r0, -0x7270(%r13)
	cmpwi %r0, 0x0
	ble- _18d5f8
	lis %r4, 0x8034
	addi %r3, %r4, 0x1240
	lwz %r0, 0x1240(%r4)
	lwz %r3, 0x4(%r3)
	cmplw %r3, %r0
	bge- _18d558
	subfic %r0, %r0, 0x0
	add %r0, %r0, %r3
	b _18d564
_18d558:
	subf %r0, %r0, %r3
	cntlzw %r0, %r0
	srwi  %r0, %r0, 5
_18d564:
	cmpwi %r0, 0x0
	bne- _18d5f8
	lis %r3, 0x8034
	addi %r3, %r3, 0x1240
	lwz %r0, 0x8(%r3)
	slwi  %r0, %r0, 2
	add %r3, %r3, %r0
	lwz %r4, 0x10(%r3)
	cmpwi %r4, 0x0
	beq- _18d5f8
	lwz %r0, 0x28(%r4)
	cmpwi %r0, 0x0
	beq- _18d5a4
	lwz %r3, -0x7270(%r13)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
_18d5a4:
	addis %r4, %r4, 0x8000
	li %r3, 0x0
	bl sub_18bcc0
	lis %r7, 0x8034
	lwz %r3, -0x7270(%r13)
	addi %r6, %r7, 0x1240
	lwz %r4, 0x1240(%r7)
	lwz %r5, 0x8(%r6)
	subi %r0, %r3, 0x1
	stw %r0, -0x7270(%r13)
	addi %r4, %r4, 0x1
	addi %r0, %r5, 0x1
	li %r3, 0x1
	clrlwi  %r0, %r0, 28
	stw %r4, 0x1240(%r7)
	stw %r0, 0x8(%r6)
	bl sub_18bcb0
	rlwinm  %r0, %r3, 0, 26, 27
	li %r3, 0x1
	ori %r4, %r0, 0x1
	bl sub_18bcc0
_18d5f8:
	lwz %r3, -0x63fc(%r13)
	addi %r3, %r3, 0x2c
	bl sub_1a3658
	mr %r3, %r30
	bl sub_19f274
	lwz %r3, -0x63fc(%r13)
	lwz %r31, 0x4(%r3)
_18d614:
	lwz %r4, 0x8(%r1)
	li %r0, 0x0
	stw %r0, -0x6400(%r13)
	cmpwi %r4, 0x0
	stw %r0, -0x63f8(%r13)
	beq- _18d63c
	cmpwi %r31, 0x0
	beq- _18d63c
	lwz %r3, -0x726c(%r13)
	bl sub_18d990
_18d63c:
	addi %r11, %r1, 0x30
	mr %r3, %r31
	bl sub_197c8
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_18d658
sub_18d658: # 0x80194918
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, -0x4
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	clrlwi. %r0, %r29, 27
	bne- _18d764
	lis %r4, 0x8034
	lwzu %r0, 0x12e0(%r4)
	li %r31, 0x0
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x10(%r4)
	li %r31, 0x1
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x20(%r4)
	li %r31, 0x2
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x30(%r4)
	li %r31, 0x3
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x40(%r4)
	li %r31, 0x4
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x50(%r4)
	li %r31, 0x5
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x60(%r4)
	li %r31, 0x6
	cmpwi %r0, 0x0
	beq- _18d710
	lwz %r0, 0x70(%r4)
	li %r31, 0x7
	cmpwi %r0, 0x0
	beq- _18d710
	li %r31, 0x8
_18d710:
	cmpwi %r31, 0x8
	bne- _18d720
	li %r31, -0x5
	b _18d764
_18d720:
	lis %r5, 0x8034
	slwi  %r0, %r31, 4
	addi %r5, %r5, 0x12e0
	lis %r4, 0xbabe
	add %r6, %r5, %r0
	li %r0, 0x0
	stw %r29, 0x0(%r6)
	subi %r5, %r30, 0x10
	stw %r30, 0x8(%r6)
	stw %r29, 0xc(%r6)
	stw %r4, 0x0(%r29)
	lwz %r4, 0xc(%r6)
	stw %r5, 0x4(%r4)
	lwz %r4, 0xc(%r6)
	stw %r0, 0x8(%r4)
	lwz %r4, 0xc(%r6)
	stw %r0, 0xc(%r4)
_18d764:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
_18d788:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, 0x0
	stw %r30, 0x18(%r1)
	mr %r30, %r5
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_19f24c
	cmpwi %r29, 0x0
	beq- _18d964
	cmpwi %r30, 0x0
	beq- _18d964
	subi %r0, %r30, 0x1
	and. %r0, %r30, %r0
	bne- _18d964
	cmplwi %r30, 0x20
	bge- _18d7e0
	li %r30, 0x20
_18d7e0:
	cmpwi %r28, 0x0
	addi %r0, %r29, 0x1f
	clrrwi  %r29, %r0, 5
	blt- _18d810
	cmpwi %r28, 0x8
	bge- _18d810
	lis %r4, 0x8034
	slwi  %r0, %r28, 4
	addi %r4, %r4, 0x12e0
	lwzux %r0, %r4, %r0
	cmpwi %r0, 0x0
	bne- _18d818
_18d810:
	li %r31, 0x0
	b _18d964
_18d818:
	lwz %r8, 0xc(%r4)
	subi %r6, %r30, 0x1
	li %r5, 0x0
	b _18d87c
_18d828:
	lwz %r7, 0x4(%r8)
	addi %r0, %r8, 0x10
	and %r0, %r0, %r6
	cmplw %r7, %r29
	subf %r0, %r0, %r30
	and %r0, %r6, %r0
	bne- _18d854
	cmpwi %r0, 0x0
	bne- _18d854
	mr %r5, %r8
	b _18d884
_18d854:
	add %r0, %r29, %r0
	cmplw %r7, %r0
	blt- _18d878
	cmpwi %r5, 0x0
	beq- _18d874
	lwz %r0, 0x4(%r5)
	cmplw %r7, %r0
	bge- _18d878
_18d874:
	mr %r5, %r8
_18d878:
	lwz %r8, 0xc(%r8)
_18d87c:
	cmpwi %r8, 0x0
	bne+ _18d828
_18d884:
	cmpwi %r5, 0x0
	beq- _18d964
	subi %r7, %r30, 0x1
	addi %r0, %r5, 0x10
	and %r0, %r0, %r7
	lwz %r6, 0x4(%r5)
	subf %r0, %r0, %r30
	and %r8, %r7, %r0
	add %r7, %r29, %r8
	addi %r0, %r7, 0x10
	cmplw %r6, %r0
	ble- _18d8f8
	add %r6, %r5, %r29
	lis %r0, 0xbabe
	add %r9, %r8, %r6
	stw %r0, 0x10(%r9)
	lwz %r0, 0x4(%r5)
	subf %r0, %r29, %r0
	subf %r6, %r8, %r0
	subi %r0, %r6, 0x10
	stw %r0, 0x14(%r9)
	lwz %r6, 0xc(%r5)
	cmpwi %r6, 0x0
	stw %r6, 0x1c(%r9)
	addi %r9, %r9, 0x10
	beq- _18d8f0
	stw %r9, 0x8(%r6)
_18d8f0:
	stw %r9, 0xc(%r5)
	stw %r7, 0x4(%r5)
_18d8f8:
	lis %r6, 0xbabe
	addi %r0, %r6, 0x1
	stw %r0, 0x0(%r5)
	lwz %r6, 0x8(%r5)
	cmpwi %r6, 0x0
	beq- _18d91c
	lwz %r0, 0xc(%r5)
	stw %r0, 0xc(%r6)
	b _18d924
_18d91c:
	lwz %r0, 0xc(%r5)
	stw %r0, 0xc(%r4)
_18d924:
	lwz %r4, 0xc(%r5)
	cmpwi %r4, 0x0
	beq- _18d938
	lwz %r0, 0x8(%r5)
	stw %r0, 0x8(%r4)
_18d938:
	li %r0, 0x0
	add %r31, %r5, %r8
	stw %r0, 0xc(%r5)
	cmpwi %r8, 0x0
	addi %r31, %r31, 0x10
	stw %r0, 0x8(%r5)
	beq- _18d964
	lis %r4, 0xbabe
	addi %r0, %r4, 0x2
	stw %r0, -0x10(%r31)
	stw %r5, -0x8(%r31)
_18d964:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_18d98c
sub_18d98c: # 0x80194c4c
	b _18d788

	.global sub_18d990
sub_18d990: # 0x80194c50
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	li %r31, -0x4
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	cmpwi %r30, 0x0
	beq- _18db58
	cmpwi %r29, 0x0
	blt- _18d9ec
	cmpwi %r29, 0x8
	bge- _18d9ec
	lis %r4, 0x8034
	slwi  %r0, %r29, 4
	addi %r4, %r4, 0x12e0
	add %r5, %r4, %r0
	lwzx %r4, %r4, %r0
	cmpwi %r4, 0x0
	bne- _18d9f4
_18d9ec:
	li %r31, -0x4
	b _18db58
_18d9f4:
	addi %r0, %r4, 0x10
	cmplw %r30, %r0
	blt- _18db58
	lwz %r0, 0x8(%r5)
	add %r0, %r4, %r0
	cmplw %r30, %r0
	bgt- _18db58
	lwz %r4, -0x10(%r30)
	subi %r6, %r30, 0x10
	addis %r0, %r4, 0x4542
	cmplwi %r0, 0x2
	bne- _18da28
	lwz %r6, 0x8(%r6)
_18da28:
	lwz %r4, 0x0(%r6)
	addis %r0, %r4, 0x4542
	cmplwi %r0, 0x1
	bne- _18db58
	lis %r0, 0xbabe
	stw %r0, 0x0(%r6)
	lwz %r4, 0xc(%r5)
	mr %r7, %r4
	b _18da64
_18da4c:
	lwz %r0, 0xc(%r7)
	cmpwi %r0, 0x0
	beq- _18da6c
	cmplw %r0, %r6
	bgt- _18da6c
	mr %r7, %r0
_18da64:
	cmpwi %r7, 0x0
	bne+ _18da4c
_18da6c:
	cmpwi %r7, 0x0
	beq- _18daa0
	cmplw %r6, %r7
	ble- _18daa0
	stw %r7, 0x8(%r6)
	lwz %r0, 0xc(%r7)
	stw %r0, 0xc(%r6)
	stw %r6, 0xc(%r7)
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	beq- _18dac0
	stw %r6, 0x8(%r4)
	b _18dac0
_18daa0:
	stw %r4, 0xc(%r6)
	li %r0, 0x0
	stw %r6, 0xc(%r5)
	stw %r0, 0x8(%r6)
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	beq- _18dac0
	stw %r6, 0x8(%r4)
_18dac0:
	cmpwi %r6, 0x0
	beq- _18db08
	lwz %r0, 0x4(%r6)
	lwz %r5, 0xc(%r6)
	add %r4, %r6, %r0
	addi %r0, %r4, 0x10
	cmplw %r5, %r0
	bne- _18db08
	lwz %r4, 0xc(%r5)
	cmpwi %r4, 0x0
	stw %r4, 0xc(%r6)
	beq- _18daf4
	stw %r6, 0x8(%r4)
_18daf4:
	lwz %r4, 0x4(%r6)
	lwz %r0, 0x4(%r5)
	add %r4, %r0, %r4
	addi %r0, %r4, 0x10
	stw %r0, 0x4(%r6)
_18db08:
	lwz %r5, 0x8(%r6)
	cmpwi %r5, 0x0
	beq- _18db54
	lwz %r0, 0x4(%r5)
	lwz %r6, 0xc(%r5)
	add %r4, %r5, %r0
	addi %r0, %r4, 0x10
	cmplw %r6, %r0
	bne- _18db54
	lwz %r4, 0xc(%r6)
	cmpwi %r4, 0x0
	stw %r4, 0xc(%r5)
	beq- _18db40
	stw %r5, 0x8(%r4)
_18db40:
	lwz %r4, 0x4(%r5)
	lwz %r0, 0x4(%r6)
	add %r4, %r0, %r4
	addi %r0, %r4, 0x10
	stw %r0, 0x4(%r5)
_18db54:
	li %r31, 0x0
_18db58:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_18db7c
sub_18db7c: # 0x80194e3c
	li %r4, 0x0
	lis %r5, 0x8034
	lis %r6, 0x8034
	li %r0, 0x2
	stw %r4, -0x63f0(%r13)
	addi %r5, %r5, 0x13e0
	addi %r6, %r6, 0x1360
	li %r3, -0x1
	stw %r4, -0x63ec(%r13)
	mtctr %r0
_18dba4:
	stw %r4, 0x0(%r5)
	stw %r3, 0x0(%r6)
	stw %r4, 0x4(%r5)
	stw %r3, 0x4(%r6)
	stw %r4, 0x8(%r5)
	stw %r3, 0x8(%r6)
	stw %r4, 0xc(%r5)
	stw %r3, 0xc(%r6)
	stw %r4, 0x10(%r5)
	stw %r3, 0x10(%r6)
	stw %r4, 0x14(%r5)
	stw %r3, 0x14(%r6)
	stw %r4, 0x18(%r5)
	stw %r3, 0x18(%r6)
	stw %r4, 0x1c(%r5)
	stw %r3, 0x1c(%r6)
	stw %r4, 0x20(%r5)
	stw %r3, 0x20(%r6)
	stw %r4, 0x24(%r5)
	stw %r3, 0x24(%r6)
	stw %r4, 0x28(%r5)
	stw %r3, 0x28(%r6)
	stw %r4, 0x2c(%r5)
	stw %r3, 0x2c(%r6)
	stw %r4, 0x30(%r5)
	stw %r3, 0x30(%r6)
	stw %r4, 0x34(%r5)
	stw %r3, 0x34(%r6)
	stw %r4, 0x38(%r5)
	stw %r3, 0x38(%r6)
	stw %r4, 0x3c(%r5)
	addi %r5, %r5, 0x40
	stw %r3, 0x3c(%r6)
	addi %r6, %r6, 0x40
	bdnz+ _18dba4
	blr

	.global sub_18dc34
sub_18dc34: # 0x80194ef4
	lwz %r6, -0x63f0(%r13)
	lis %r8, 0x8034
	lwz %r5, -0x63ec(%r13)
	lis %r9, 0x8034
	addi %r6, %r6, 0x1
	li %r0, 0x20
	addi %r5, %r5, 0x1
	stw %r6, -0x63f0(%r13)
	addi %r8, %r8, 0x13e0
	addi %r9, %r9, 0x1360
	stw %r5, -0x63ec(%r13)
	li %r7, 0x0
	mtctr %r0
_18dc68:
	lwz %r0, 0x0(%r8)
	cmpwi %r0, 0x0
	bne- _18dca0
	lwz %r0, 0x0(%r9)
	cmpwi %r0, -0x1
	bne- _18dca0
	lis %r6, 0x8034
	lis %r5, 0x8034
	slwi  %r0, %r7, 2
	addi %r6, %r6, 0x13e0
	addi %r5, %r5, 0x1360
	stwx %r3, %r6, %r0
	stwx %r4, %r5, %r0
	blr
_18dca0:
	addi %r8, %r8, 0x4
	addi %r9, %r9, 0x4
	addi %r7, %r7, 0x1
	bdnz+ _18dc68
	blr
	
	.global t1_18dcb4
t1_18dcb4:
	.incbin "basemain.dol", 0x190214, 0x31d8

	.global sub_190e8c
sub_190e8c: # 0x8019814c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	stw %r28, 0x10(%r1)
	mr %r28, %r4
	b _190f90
_190eb8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f90
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f90
	li %r31, 0x0
	b _190f60
_190ed8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f60
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f60
	li %r30, 0x0
	b _190f30
_190ef8:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _190f30
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _190f30
	mr %r4, %r28
	addi %r3, %r3, 0xc
	bl sub_190e8c
	cmpwi %r3, 0x0
	beq- _190f28
	b _190f4c
_190f28:
	mr %r3, %r30
	b _190f4c
_190f30:
	mr %r4, %r30
	addi %r3, %r31, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne+ _190ef8
	li %r3, 0x0
_190f4c:
	cmpwi %r3, 0x0
	beq- _190f58
	b _190f7c
_190f58:
	mr %r3, %r31
	b _190f7c
_190f60:
	mr %r4, %r31
	addi %r3, %r29, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne+ _190ed8
	li %r3, 0x0
_190f7c:
	cmpwi %r3, 0x0
	beq- _190f88
	b _190fac
_190f88:
	mr %r3, %r29
	b _190fac
_190f90:
	mr %r3, %r30
	mr %r4, %r29
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne+ _190eb8
	li %r3, 0x0
_190fac:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_190fcc
t1_190fcc:
	.incbin "basemain.dol", 0x19352c, 0x32c

	.global sub_1912f8
sub_1912f8: # 0x801985b8
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8034
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	b _1913fc
_191324:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _1913fc
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _1913fc
	li %r30, 0x0
	b _1913cc
_191344:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _1913cc
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _1913cc
	li %r31, 0x0
	b _19139c
_191364:
	lwz %r0, 0x18(%r3)
	cmplw %r0, %r28
	bgt- _19139c
	lwz %r0, 0x1c(%r3)
	cmplw %r28, %r0
	bge- _19139c
	mr %r4, %r28
	addi %r3, %r3, 0xc
	bl sub_190e8c
	cmpwi %r3, 0x0
	beq- _191394
	b _1913b8
_191394:
	mr %r3, %r31
	b _1913b8
_19139c:
	mr %r4, %r31
	addi %r3, %r30, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne+ _191364
	li %r3, 0x0
_1913b8:
	cmpwi %r3, 0x0
	beq- _1913c4
	b _1913e8
_1913c4:
	mr %r3, %r30
	b _1913e8
_1913cc:
	mr %r4, %r30
	addi %r3, %r29, 0xc
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne+ _191344
	li %r3, 0x0
_1913e8:
	cmpwi %r3, 0x0
	beq- _1913f4
	b _191418
_1913f4:
	mr %r3, %r29
	b _191418
_1913fc:
	mr %r4, %r29
	addi %r3, %r31, 0x2970
	bl sub_192984
	cmpwi %r3, 0x0
	mr %r29, %r3
	bne+ _191324
	li %r3, 0x0
_191418:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_191438
t1_191438:
	.incbin "basemain.dol", 0x193998, 0x154c

	.global sub_192984
sub_192984: # 0x80199c44
	cmpwi %r4, 0x0
	bne- _192994
	lwz %r3, 0x0(%r3)
	blr
_192994:
	lhz %r0, 0xa(%r3)
	add %r3, %r4, %r0
	lwz %r3, 0x4(%r3)
	blr
	
	.global sub_1929a4
sub_1929a4: # 0x80199c64
	lfs %f0, -0x672c(%r2)
	lfs %f1, -0x6730(%r2)
	psq_st 0, 0x8, 3, 0, 0
#	ps_merge 10, f2, f1, f0
#	ps_merge 1, f1, f0, f1
	.4byte 0x104104a0
	.4byte 0x10200c60
	psq_st 0, 0x18, 3, 0, 0
	psq_st 0, 0x20, 3, 0, 0
	psq_st 1, 0x10, 3, 0, 0
	psq_st 2, 0x0, 3, 0, 0
	psq_st 2, 0x28, 3, 0, 0
	blr
	.incbin "./dol.text.bin", 0x1929d0, 0x8019aaac - 0x80199c90

	.global sub_1937ec
sub_1937ec: # 0x8019aaac
	fsubs %f11, %f4, %f3
	lfs %f8, -0x6708(%r2)
	lfs %f10, -0x6710(%r2)
	fsubs %f7, %f1, %f2
	fsubs %f0, %f6, %f5
	lfs %f9, -0x670c(%r2)
	fdivs %f12, %f10, %f11
	lfs %f5, -0x6704(%r2)
	stfs %f8, 0x4(%r3)
	stfs %f8, 0x8(%r3)
	stfs %f8, 0x10(%r3)
	stfs %f8, 0x18(%r3)
	fdivs %f11, %f10, %f7
	stfs %f8, 0x20(%r3)
	stfs %f8, 0x24(%r3)
	stfs %f8, 0x30(%r3)
	stfs %f8, 0x34(%r3)
	stfs %f8, 0x38(%r3)
	fdivs %f7, %f10, %f0
	stfs %f10, 0x3c(%r3)
	fneg  %f0, %f6
	fadds %f1, %f1, %f2
	fadds %f3, %f4, %f3
	fmuls %f6, %f9, %f12
	fmuls %f0, %f0, %f7
	fneg  %f2, %f3
	fmuls %f3, %f9, %f11
	stfs %f6, 0x0(%r3)
	fneg  %f1, %f1
	fmuls %f4, %f12, %f2
	stfs %f0, 0x2c(%r3)
	fmuls %f2, %f11, %f1
	stfs %f3, 0x14(%r3)
	fmuls %f1, %f5, %f7
	stfs %f4, 0xc(%r3)
	stfs %f2, 0x1c(%r3)
	stfs %f1, 0x28(%r3)
	blr

	.incbin "./dol.text.bin", 0x193884, 0x8019b274 - 0x8019ab44
	
	.global sub_193fb4
sub_193fb4: # 0x8019b274
	stwu %r1, -0x70(%r1)
	mflr %r0
	stw %r0, 0x74(%r1)
	addi %r11, %r1, 0x70
	bl sub_19780
	li %r0, 0x0
	mr %r27, %r4
	stw %r0, 0x18(%r1)
	mr %r4, %r3
	mr %r28, %r5
	mr %r29, %r6
	stw %r0, 0x1c(%r1)
	mr %r30, %r7
	mr %r31, %r8
	addi %r3, %r1, 0x18
	stw %r0, 0x20(%r1)
	stw %r0, 0x24(%r1)
	stw %r0, 0x28(%r1)
	stw %r0, 0x2c(%r1)
	stw %r0, 0x30(%r1)
	stw %r0, 0x34(%r1)
	stw %r0, 0x38(%r1)
	stw %r0, 0x3c(%r1)
	stw %r0, 0x40(%r1)
	stw %r0, 0x44(%r1)
	stw %r0, 0x48(%r1)
	stw %r0, 0x4c(%r1)
	stw %r0, 0x50(%r1)
	stw %r0, 0x54(%r1)
	stw %r0, 0x10(%r1)
	stw %r0, 0xc(%r1)
	stw %r0, 0x8(%r1)
	bl sub_196cc0
	cmpwi %r31, 0x0
	bne- _194058
	addi %r3, %r1, 0x18
	bl sub_196abc
	cmpwi %r3, 0x0
	beq- _194058
	li %r3, -0x66
	b _1940c4
_194058:
	rlwinm. %r0, %r27, 0, 27, 27
	bne- _194068
	li %r3, -0x65
	b _1940c4
_194068:
	mr %r3, %r27
	addi %r4, %r1, 0x10
	addi %r5, %r1, 0xc
	addi %r6, %r1, 0x8
	bl sub_194dcc
	cmpwi %r30, 0x0
	beq- _1940ac
	lis %r8, 0x801a
	lwz %r5, 0x10(%r1)
	lwz %r6, 0xc(%r1)
	mr %r4, %r28
	lwz %r7, 0x8(%r1)
	mr %r9, %r29
	addi %r3, %r1, 0x18
	subi %r8, %r8, 0x1c40
	bl sub_163a08
	b _1940c4
_1940ac:
	lwz %r5, 0x10(%r1)
	mr %r4, %r28
	lwz %r6, 0xc(%r1)
	addi %r3, %r1, 0x18
	lwz %r7, 0x8(%r1)
	bl sub_163914
_1940c4:
	addi %r11, %r1, 0x70
	bl sub_197cc
	lwz %r0, 0x74(%r1)
	mtlr %r0
	addi %r1, %r1, 0x70
	blr
	.incbin "./dol.text.bin", 0x1940dc, 0x8019b410 - 0x8019b39c

	.global sub_194150
sub_194150: # 0x8019b410
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	beq- _1941a4
	mr %r3, %r29
	mr %r4, %r30
	mr %r5, %r31
	li %r6, 0x0
	li %r7, 0x0
	li %r8, 0x1
	bl sub_193fb4
	bl sub_196b60
	b _1941a8
_1941a4:
	li %r3, -0x80
_1941a8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1941c4, 0x8019b4fc - 0x8019b484

	.global sub_19423c
sub_19423c: # 0x8019b4fc
	stwu %r1, -0x50(%r1)
	mflr %r0
	stw %r0, 0x54(%r1)
	stw %r31, 0x4c(%r1)
	mr %r31, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _194264
	li %r3, -0x80
	b _1942d8
_194264:
	li %r0, 0x0
	mr %r4, %r31
	stw %r0, 0x8(%r1)
	addi %r3, %r1, 0x8
	stw %r0, 0xc(%r1)
	stw %r0, 0x10(%r1)
	stw %r0, 0x14(%r1)
	stw %r0, 0x18(%r1)
	stw %r0, 0x1c(%r1)
	stw %r0, 0x20(%r1)
	stw %r0, 0x24(%r1)
	stw %r0, 0x28(%r1)
	stw %r0, 0x2c(%r1)
	stw %r0, 0x30(%r1)
	stw %r0, 0x34(%r1)
	stw %r0, 0x38(%r1)
	stw %r0, 0x3c(%r1)
	stw %r0, 0x40(%r1)
	stw %r0, 0x44(%r1)
	bl sub_196cc0
	addi %r3, %r1, 0x8
	bl sub_196abc
	cmpwi %r3, 0x0
	beq- _1942cc
	li %r3, -0x66
	b _1942d4
_1942cc:
	addi %r3, %r1, 0x8
	bl sub_16342c
_1942d4:
	bl sub_196b60
_1942d8:
	lwz %r0, 0x54(%r1)
	lwz %r31, 0x4c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x50
	blr

	.global sub_1942ec
sub_1942ec: # 0x8019b5ac
	stwu %r1, -0x50(%r1)
	mflr %r0
	stw %r0, 0x54(%r1)
	stw %r31, 0x4c(%r1)
	mr %r31, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _194314
	li %r3, -0x80
	b _194370
_194314:
	li %r0, 0x0
	mr %r4, %r31
	stw %r0, 0x8(%r1)
	addi %r3, %r1, 0x8
	stw %r0, 0xc(%r1)
	stw %r0, 0x10(%r1)
	stw %r0, 0x14(%r1)
	stw %r0, 0x18(%r1)
	stw %r0, 0x1c(%r1)
	stw %r0, 0x20(%r1)
	stw %r0, 0x24(%r1)
	stw %r0, 0x28(%r1)
	stw %r0, 0x2c(%r1)
	stw %r0, 0x30(%r1)
	stw %r0, 0x34(%r1)
	stw %r0, 0x38(%r1)
	stw %r0, 0x3c(%r1)
	stw %r0, 0x40(%r1)
	stw %r0, 0x44(%r1)
	bl sub_196cc0
	addi %r3, %r1, 0x8
	bl sub_16342c
	bl sub_196b60
_194370:
	lwz %r0, 0x54(%r1)
	lwz %r31, 0x4c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x50
	blr
	.incbin "./dol.text.bin", 0x194384, 0x8019b704 - 0x8019b644

	.global sub_194444
sub_194444: # 0x8019b704
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	beq- _19448c
	lwz %r3, 0x0(%r29)
	mr %r4, %r30
	mr %r5, %r31
	bl sub_163e9c
	bl sub_196b60
	b _194490
_19448c:
	li %r3, -0x80
_194490:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1944ac, 0x8019b7e4 - 0x8019b76c

	.global sub_194524
sub_194524: # 0x8019b7e4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	beq- _19456c
	lwz %r3, 0x0(%r29)
	mr %r4, %r30
	mr %r5, %r31
	bl sub_163f60
	bl sub_196b60
	b _194570
_19456c:
	li %r3, -0x80
_194570:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x19458c, 0x8019c038 - 0x8019b84c

	.global sub_194d78
sub_194d78: # 0x8019c038
	clrlwi. %r0, %r4, 31
	li %r7, 0x0
	beq- _194d88
	ori %r7, %r7, 0x10
_194d88:
	rlwinm. %r0, %r4, 0, 30, 30
	beq- _194d94
	ori %r7, %r7, 0x20
_194d94:
	clrlwi. %r0, %r5, 31
	beq- _194da0
	ori %r7, %r7, 0x4
_194da0:
	rlwinm. %r0, %r5, 0, 30, 30
	beq- _194dac
	ori %r7, %r7, 0x8
_194dac:
	clrlwi. %r0, %r6, 31
	beq- _194db8
	ori %r7, %r7, 0x1
_194db8:
	rlwinm. %r0, %r6, 0, 30, 30
	beq- _194dc4
	ori %r7, %r7, 0x2
_194dc4:
	stb %r7, 0x0(%r3)
	blr

	.global sub_194dcc
sub_194dcc: # 0x8019c08c
	li %r7, 0x0
	rlwinm. %r0, %r3, 0, 27, 27
	stw %r7, 0x0(%r4)
	stw %r7, 0x0(%r5)
	stw %r7, 0x0(%r6)
	beq- _194df0
	lwz %r0, 0x0(%r4)
	ori %r0, %r0, 0x1
	stw %r0, 0x0(%r4)
_194df0:
	rlwinm. %r0, %r3, 0, 26, 26
	beq- _194e04
	lwz %r0, 0x0(%r4)
	ori %r0, %r0, 0x2
	stw %r0, 0x0(%r4)
_194e04:
	rlwinm. %r0, %r3, 0, 29, 29
	beq- _194e18
	lwz %r0, 0x0(%r5)
	ori %r0, %r0, 0x1
	stw %r0, 0x0(%r5)
_194e18:
	rlwinm. %r0, %r3, 0, 28, 28
	beq- _194e2c
	lwz %r0, 0x0(%r5)
	ori %r0, %r0, 0x2
	stw %r0, 0x0(%r5)
_194e2c:
	clrlwi. %r0, %r3, 31
	beq- _194e40
	lwz %r0, 0x0(%r6)
	ori %r0, %r0, 0x1
	stw %r0, 0x0(%r6)
_194e40:
	rlwinm. %r0, %r3, 0, 30, 30
	beqlr- 
	lwz %r0, 0x0(%r6)
	ori %r0, %r0, 0x2
	stw %r0, 0x0(%r6)
	blr

	.global sub_194e58
sub_194e58: # 0x8019c118
	stwu %r1, -0x70(%r1)
	mflr %r0
	stw %r0, 0x74(%r1)
	li %r0, 0x0
	stw %r31, 0x6c(%r1)
	mr %r31, %r7
	stw %r30, 0x68(%r1)
	mr %r30, %r6
	stw %r29, 0x64(%r1)
	mr %r29, %r5
	stw %r28, 0x60(%r1)
	mr %r28, %r4
	mr %r4, %r3
	addi %r3, %r1, 0x20
	stw %r0, 0x20(%r1)
	stw %r0, 0x24(%r1)
	stw %r0, 0x28(%r1)
	stw %r0, 0x2c(%r1)
	stw %r0, 0x30(%r1)
	stw %r0, 0x34(%r1)
	stw %r0, 0x38(%r1)
	stw %r0, 0x3c(%r1)
	stw %r0, 0x40(%r1)
	stw %r0, 0x44(%r1)
	stw %r0, 0x48(%r1)
	stw %r0, 0x4c(%r1)
	stw %r0, 0x50(%r1)
	stw %r0, 0x54(%r1)
	stw %r0, 0x58(%r1)
	stw %r0, 0x5c(%r1)
	bl sub_196cc0
	cmpwi %r31, 0x0
	bne- _194ef4
	addi %r3, %r1, 0x20
	bl sub_196af0
	cmpwi %r3, 0x0
	beq- _194ef4
	li %r3, -0x66
	b _194f8c
_194ef4:
	cmpwi %r30, 0x0
	beq- _194f2c
	lis %r10, 0x801a
	stw %r29, 0x8(%r1)
	mr %r4, %r28
	addi %r3, %r1, 0x20
	addi %r5, %r28, 0x4
	addi %r6, %r29, 0x20
	addi %r7, %r29, 0x24
	addi %r8, %r29, 0x28
	addi %r9, %r29, 0x2c
	subi %r10, %r10, 0x3d94
	bl sub_1632f8
	b _194f8c
_194f2c:
	li %r0, 0x0
	mr %r4, %r28
	stw %r0, 0x1c(%r1)
	addi %r3, %r1, 0x20
	addi %r5, %r28, 0x4
	addi %r6, %r1, 0x1c
	stw %r0, 0x18(%r1)
	addi %r7, %r1, 0x18
	addi %r8, %r1, 0x14
	addi %r9, %r1, 0x10
	stw %r0, 0x14(%r1)
	stw %r0, 0x10(%r1)
	bl sub_1631a0
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _194f88
	lwz %r4, 0x18(%r1)
	addi %r3, %r28, 0x7
	lwz %r5, 0x14(%r1)
	lwz %r6, 0x10(%r1)
	bl sub_194d78
	lwz %r0, 0x1c(%r1)
	stb %r0, 0x6(%r28)
_194f88:
	mr %r3, %r31
_194f8c:
	lwz %r0, 0x74(%r1)
	lwz %r31, 0x6c(%r1)
	lwz %r30, 0x68(%r1)
	lwz %r29, 0x64(%r1)
	lwz %r28, 0x60(%r1)
	mtlr %r0
	addi %r1, %r1, 0x70
	blr
	.incbin "./dol.text.bin", 0x194fac, 0x8019c344 - 0x8019c26c

	.global sub_195084
sub_195084: # 0x8019c344
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	beq- _1950cc
	mr %r3, %r30
	mr %r4, %r31
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	bl sub_194e58
	bl sub_196b60
	b _1950d0
_1950cc:
	li %r3, -0x80
_1950d0:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1950e8, 0x8019c64c - 0x8019c3a8

	.global sub_19538c
sub_19538c: # 0x8019c64c
	stwu %r1, -0x60(%r1)
	mflr %r0
	stw %r0, 0x64(%r1)
	addi %r11, %r1, 0x60
	bl sub_19780
	li %r0, 0x0
	mr %r27, %r4
	stw %r0, 0x8(%r1)
	mr %r4, %r3
	mr %r28, %r5
	mr %r29, %r6
	stw %r0, 0xc(%r1)
	mr %r30, %r7
	addi %r3, %r1, 0x8
	li %r31, 0x0
	stw %r0, 0x10(%r1)
	stw %r0, 0x14(%r1)
	stw %r0, 0x18(%r1)
	stw %r0, 0x1c(%r1)
	stw %r0, 0x20(%r1)
	stw %r0, 0x24(%r1)
	stw %r0, 0x28(%r1)
	stw %r0, 0x2c(%r1)
	stw %r0, 0x30(%r1)
	stw %r0, 0x34(%r1)
	stw %r0, 0x38(%r1)
	stw %r0, 0x3c(%r1)
	stw %r0, 0x40(%r1)
	stw %r0, 0x44(%r1)
	bl sub_196cc0
	cmpwi %r30, 0x0
	bne- _195424
	addi %r3, %r1, 0x8
	bl sub_196abc
	cmpwi %r3, 0x0
	beq- _195424
	li %r3, -0x66
	b _195488
_195424:
	cmpwi %r27, 0x2
	beq- _195454
	bge- _19543c
	cmpwi %r27, 0x1
	bge- _19544c
	b _195458
_19543c:
	cmpwi %r27, 0x4
	bge- _195458
	li %r31, 0x3
	b _195458
_19544c:
	li %r31, 0x1
	b _195458
_195454:
	li %r31, 0x2
_195458:
	cmpwi %r29, 0x0
	beq- _19547c
	lis %r5, 0x801a
	mr %r4, %r31
	mr %r6, %r28
	addi %r3, %r1, 0x8
	subi %r5, %r5, 0x3698
	bl sub_163bc4
	b _195488
_19547c:
	mr %r4, %r31
	addi %r3, %r1, 0x8
	bl sub_163afc
_195488:
	addi %r11, %r1, 0x60
	bl sub_197cc
	lwz %r0, 0x64(%r1)
	mtlr %r0
	addi %r1, %r1, 0x60
	blr

	.global sub_1954a0
sub_1954a0: # 0x8019c760
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _1954d8
	li %r3, -0x80
	b _195510
_1954d8:
	mr %r3, %r29
	mr %r4, %r31
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x0
	bl sub_19538c
	cmpwi %r3, 0x0
	blt- _19550c
	li %r0, 0x1
	stw %r3, 0x0(%r30)
	li %r3, 0x0
	stb %r0, 0x8a(%r30)
	b _195510
_19550c:
	bl sub_196b60
_195510:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_19552c
sub_19552c: # 0x8019c7ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _195564
	li %r3, -0x80
	b _19559c
_195564:
	mr %r3, %r29
	mr %r4, %r31
	li %r5, 0x0
	li %r6, 0x0
	li %r7, 0x1
	bl sub_19538c
	cmpwi %r3, 0x0
	blt- _195598
	li %r0, 0x1
	stw %r3, 0x0(%r30)
	li %r3, 0x0
	stb %r0, 0x8a(%r30)
	b _19559c
_195598:
	bl sub_196b60
_19559c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1955b8, 0x8019c8f0 - 0x8019c878

	.global sub_195630
sub_195630: # 0x8019c8f0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r30, %r6
	mr %r31, %r7
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _19566c
	li %r3, -0x80
	b _195690
_19566c:
	stw %r30, 0x4(%r31)
	mr %r3, %r27
	mr %r4, %r29
	mr %r5, %r31
	stw %r28, 0x8(%r31)
	li %r6, 0x1
	li %r7, 0x1
	bl sub_19538c
	bl sub_196b60
_195690:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x1956a8, 0x8019c9e0 - 0x8019c968
	
	.global sub_195720
sub_195720: # 0x8019c9e0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_196b48
	cmpwi %r3, 0x0
	bne- _195748
	li %r3, -0x80
	b _195778
_195748:
	lbz %r0, 0x8a(%r31)
	cmplwi %r0, 0x1
	beq- _19575c
	li %r3, -0x8
	b _195778
_19575c:
	lwz %r3, 0x0(%r31)
	bl sub_164024
	cmpwi %r3, 0x0
	bne- _195774
	li %r0, 0x2
	stb %r0, 0x8a(%r31)
_195774:
	bl sub_196b60
_195778:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x19578c, 0x8019da00 - 0x8019ca4c

	.global sub_196740
sub_196740: # 0x8019da00
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	lbz %r0, 0x0(%r4)
	stw %r31, 0x1c(%r1)
	cmpwi %r0, 0x2f
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bne- _19678c
	lbz %r0, 0x1(%r4)
	extsb. %r0, %r0
	bne- _19678c
	li %r4, 0x2f
	li %r0, 0x0
	stb %r4, 0x0(%r3)
	stb %r0, 0x1(%r3)
	b _1967f8
_19678c:
	mr %r3, %r30
	bl sub_19434
	subic. %r31, %r3, 0x1
	addi %r0, %r31, 0x1
	add %r3, %r30, %r31
	mtctr %r0
	blt- _1967f8
_1967a8:
	lbz %r0, 0x0(%r3)
	cmpwi %r0, 0x2f
	bne- _1967ec
	cmpwi %r31, 0x0
	beq- _1967d8
	mr %r3, %r29
	mr %r4, %r30
	mr %r5, %r31
	bl sub_b3c0
	li %r0, 0x0
	stbx %r0, %r29, %r31
	b _1967f8
_1967d8:
	li %r3, 0x2f
	li %r0, 0x0
	stb %r3, 0x0(%r29)
	stb %r0, 0x1(%r29)
	b _1967f8
_1967ec:
	subi %r31, %r31, 0x1
	subi %r3, %r3, 0x1
	bdnz+ _1967a8
_1967f8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_196814
sub_196814: # 0x8019dad4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r31, %r5
	li %r30, 0x0
	b _1968c0
_196840:
	lbz %r0, 0x0(%r31)
	extsb %r0, %r0
	cmpwi %r0, 0x2f
	bne- _196890
	mr %r3, %r27
	mr %r4, %r29
	mr %r5, %r30
	bl sub_b3c0
	add %r4, %r30, %r29
	li %r3, 0x0
	lbz %r0, 0x1(%r4)
	stbx %r3, %r27, %r30
	extsb. %r0, %r0
	bne- _196880
	stb %r3, 0x0(%r28)
	b _1968d0
_196880:
	mr %r3, %r28
	addi %r4, %r4, 0x1
	bl sub_b300
	b _1968d0
_196890:
	cmpwi %r0, 0x0
	bne- _1968b8
	mr %r3, %r27
	mr %r4, %r29
	mr %r5, %r30
	bl sub_b3c0
	li %r0, 0x0
	stbx %r0, %r27, %r30
	stb %r0, 0x0(%r28)
	b _1968d0
_1968b8:
	addi %r30, %r30, 0x1
	addi %r31, %r31, 0x1
_1968c0:
	mr %r3, %r29
	bl sub_19434
	cmplw %r30, %r3
	ble+ _196840
_1968d0:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1968e8, 0x8019dc40 - 0x8019dba8

	.global sub_196980
sub_196980: # 0x8019dc40
	stwu %r1, -0x220(%r1)
	mflr %r0
	stw %r0, 0x224(%r1)
	stw %r31, 0x21c(%r1)
	mr %r31, %r5
	stw %r30, 0x218(%r1)
	mr %r30, %r4
	stw %r29, 0x214(%r1)
	mr %r29, %r3
	mr %r3, %r31
	bl sub_19434
	cmpwi %r3, 0x0
	bne- _1969c4
	mr %r3, %r29
	mr %r4, %r30
	bl sub_b300
	b _196aa0
_1969c4:
	mr %r5, %r31
	addi %r3, %r1, 0x188
	addi %r4, %r1, 0x108
	bl sub_196814
	addi %r3, %r1, 0x188
	subi %r4, %r13, 0x71cc
	bl sub_b47c
	cmpwi %r3, 0x0
	bne- _1969fc
	mr %r3, %r29
	mr %r4, %r30
	addi %r5, %r1, 0x108
	bl sub_196980
	b _196aa0
_1969fc:
	addi %r3, %r1, 0x188
	subi %r4, %r13, 0x71c8
	bl sub_b47c
	cmpwi %r3, 0x0
	bne- _196a30
	mr %r4, %r30
	addi %r3, %r1, 0x88
	bl sub_196740
	mr %r3, %r29
	addi %r4, %r1, 0x88
	addi %r5, %r1, 0x108
	bl sub_196980
	b _196aa0
_196a30:
	lbz %r0, 0x188(%r1)
	extsb. %r0, %r0
	beq- _196a94
	mr %r3, %r30
	subi %r4, %r13, 0x71d4
	bl sub_b47c
	cmpwi %r3, 0x0
	bne- _196a68
	addi %r3, %r1, 0x8
	addi %r5, %r1, 0x188
	subi %r4, %r13, 0x71c4
	crxor 6, 6, 6
	bl sub_9c0c
	b _196a80
_196a68:
	mr %r5, %r30
	addi %r3, %r1, 0x8
	addi %r6, %r1, 0x188
	subi %r4, %r13, 0x71c0
	crxor 6, 6, 6
	bl sub_9c0c
_196a80:
	mr %r3, %r29
	addi %r4, %r1, 0x8
	addi %r5, %r1, 0x108
	bl sub_196980
	b _196aa0
_196a94:
	mr %r3, %r29
	mr %r4, %r30
	bl sub_b300
_196aa0:
	lwz %r0, 0x224(%r1)
	lwz %r31, 0x21c(%r1)
	lwz %r30, 0x218(%r1)
	lwz %r29, 0x214(%r1)
	mtlr %r0
	addi %r1, %r1, 0x220
	blr

	.global sub_196abc
sub_196abc: # 0x8019dd7c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x8029
	li %r5, 0x8
	stw %r0, 0x14(%r1)
	subi %r4, %r4, 0x5870
	bl sub_b598
	cntlzw %r0, %r3
	srwi  %r3, %r0, 5
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_196af0
sub_196af0: # 0x8019ddb0
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x8029
	li %r5, 0x9
	stw %r0, 0x14(%r1)
	subi %r4, %r4, 0x5864
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_b598
	cmpwi %r3, 0x0
	bne- _196b30
	lbz %r0, 0x9(%r31)
	extsb. %r0, %r0
	beq- _196b30
	li %r3, 0x1
	b _196b34
_196b30:
	li %r3, 0x0
_196b34:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_196b48
sub_196b48: # 0x8019de08
	lwz %r3, -0x63b8(%r13)
	subi %r0, %r3, 0x2
	cntlzw %r0, %r0
	srwi  %r3, %r0, 5
	blr

	.global sub_196b5c
sub_196b5c: # 0x8019de1c
	blr

	.global sub_196b60
sub_196b60: # 0x8019de20
	clrlwi  %r11, %r1, 26
	mr %r12, %r1
	subfic %r11, %r11, -0x300
	.incbin "./dol.text.bin", 0x196b6c, 0x8019de30 - 0x8019de2c
	mflr %r0
	lis %r4, 0x8025
	stw %r0, 0x4(%r12)
	addi %r4, %r4, 0x2970
	li %r0, 0x29
	addi %r6, %r1, 0x13c
	stw %r31, -0x4(%r12)
	lis %r31, 0x8029
	subi %r31, %r31, 0x5920
	subi %r5, %r4, 0x4
	stw %r30, -0x8(%r12)
	stw %r29, -0xc(%r12)
	mr %r29, %r3
	mtctr %r0
_196ba8:
	lwz %r4, 0x4(%r5)
	lwzu %r0, 0x8(%r5)
	stw %r4, 0x4(%r6)
	stwu %r0, 0x8(%r6)
	bdnz+ _196ba8
	cmpwi %r3, 0x0
	li %r30, 0x0
	li %r4, 0x0
	blt- _196bd4
	mr %r3, %r29
	b _196ca0
_196bd4:
	li %r0, 0x29
	addi %r5, %r1, 0x140
	mtctr %r0
_196be0:
	lwzx %r0, %r5, %r4
	cmpw %r3, %r0
	bne- _196c54
	cmpwi %r3, -0x72
	beq- _196c14
	cmpwi %r3, -0x74
	beq- _196c14
	cmpwi %r3, -0x75
	beq- _196c14
	cmpwi %r3, -0x9
	beq- _196c14
	cmpwi %r3, -0xc
	bne- _196c38
_196c14:
	mr %r5, %r29
	addi %r3, %r1, 0xc0
	addi %r4, %r31, 0xc8
	crxor 6, 6, 6
	bl sub_9c0c
	addi %r4, %r1, 0xc0
	li %r3, 0x0
	crxor 6, 6, 6
	bl sub_1978cc
_196c38:
	mr %r3, %r29
	bl sub_196b5c
	addi %r0, %r30, 0x1
	addi %r3, %r1, 0x140
	slwi  %r0, %r0, 2
	lwzx %r3, %r3, %r0
	b _196ca0
_196c54:
	addi %r30, %r30, 0x2
	addi %r4, %r4, 0x8
	bdnz+ _196be0
	mr %r4, %r29
	addi %r3, %r31, 0xdc
	crxor 6, 6, 6
	bl sub_19b270
	mr %r5, %r29
	addi %r3, %r1, 0x40
	addi %r4, %r31, 0x110
	crxor 6, 6, 6
	bl sub_9c0c
	addi %r4, %r1, 0x40
	li %r3, 0x0
	crxor 6, 6, 6
	bl sub_1978cc
	mr %r3, %r29
	bl sub_196b5c
	li %r3, -0x40
_196ca0:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	lwz %r30, -0x8(%r10)
	lwz %r29, -0xc(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_196cc0
sub_196cc0: # 0x8019df80
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	mr %r3, %r31
	bl sub_19434
	cmpwi %r3, 0x0
	bne- _196cfc
	mr %r3, %r30
	subi %r4, %r13, 0x71d0
	bl sub_b300
	b _196d70
_196cfc:
	lbz %r0, 0x0(%r31)
	cmpwi %r0, 0x2f
	bne- _196d10
	li %r0, 0x0
	b _196d14
_196d10:
	li %r0, 0x1
_196d14:
	cmpwi %r0, 0x0
	beq- _196d34
	lis %r4, 0x8029
	mr %r3, %r30
	mr %r5, %r31
	subi %r4, %r4, 0x58c0
	bl sub_196980
	b _196d70
_196d34:
	mr %r3, %r30
	mr %r4, %r31
	bl sub_b300
	mr %r3, %r30
	bl sub_19434
	cmpwi %r3, 0x0
	beq- _196d70
	add %r4, %r3, %r30
	lbz %r0, -0x1(%r4)
	cmpwi %r0, 0x2f
	bne- _196d70
	subic. %r0, %r3, 0x1
	beq- _196d70
	li %r0, 0x0
	stb %r0, -0x1(%r4)
_196d70:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x196d88, 0x8019e0ec - 0x8019e048

	.global sub_196e2c
sub_196e2c: # 0x8019e0ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	lis %r31, 0x8029
	subi %r31, %r31, 0x5920
	stw %r30, 0x18(%r1)
	bl sub_19f24c
	lwz %r0, -0x63b8(%r13)
	cmpwi %r0, 0x1
	bne- _196e64
	bl sub_19f274
	li %r3, -0x3
	b _196f40
_196e64:
	cmpwi %r0, 0x2
	bne- _196e78
	bl sub_19f274
	li %r3, 0x0
	b _196f40
_196e78:
	li %r0, 0x1
	stw %r0, -0x63b8(%r13)
	bl sub_19f274
	bl sub_16286c
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _196f28
	bl sub_15fe70
	cmpwi %r3, 0x0
	mr %r30, %r3
	bne- _196eb0
	addi %r3, %r1, 0x8
	bl sub_16063c
	mr %r30, %r3
_196eb0:
	cmpwi %r30, 0x0
	bne- _196ed0
	lis %r5, 0x8034
	lwz %r3, 0x8(%r1)
	lwz %r4, 0xc(%r1)
	addi %r5, %r5, 0x29a0
	bl sub_1605a4
	mr %r30, %r3
_196ed0:
	cmpwi %r30, 0x0
	bne- _196ee8
	lis %r4, 0x8034
	addi %r3, %r31, 0x60
	addi %r4, %r4, 0x29a0
	bl sub_b300
_196ee8:
	bl sub_15fec4
	cmpwi %r30, 0x0
	beq- _196f00
	addi %r3, %r31, 0x130
	crxor 6, 6, 6
	bl sub_19b270
_196f00:
	addi %r3, %r31, 0xa0
	bl sub_1a0ed8
	bl sub_19f24c
	li %r0, 0x2
	stw %r0, -0x63b8(%r13)
	bl sub_19f274
	lwz %r3, -0x71d8(%r13)
	bl sub_1991a4
	li %r3, 0x0
	b _196f40
_196f28:
	bl sub_19f24c
	li %r0, 0x0
	stw %r0, -0x63b8(%r13)
	bl sub_19f274
	mr %r3, %r30
	bl sub_196b60
_196f40:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x196f58, 0x8019eb38 - 0x8019e218

	.global sub_197878
sub_197878: # 0x8019eb38
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lwz %r0, -0x71a0(%r13)
	cmpwi %r0, -0xff
	bne- _1978a8
	li %r0, -0xfe
	li %r31, 0x0
	stw %r0, -0x71a0(%r13)
	b _1978ac
_1978a8:
	li %r31, 0x1
_1978ac:
	bl sub_19f274
	cntlzw %r0, %r31
	lwz %r31, 0xc(%r1)
	srwi  %r3, %r0, 5
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1978cc
sub_1978cc: # 0x8019eb8c
	stwu %r1, -0x80(%r1)
	mflr %r0
	stw %r0, 0x84(%r1)
	stw %r31, 0x7c(%r1)
	mr %r31, %r4
	stw %r30, 0x78(%r1)
	mr %r30, %r3
	bne- cr1, _19790c
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_19790c:
	stw %r3, 0x8(%r1)
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	bl sub_197878
	cmpwi %r3, 0x0
	bne- _197940
	li %r3, 0x0
	b _1979ac
_197940:
	addi %r4, %r1, 0x88
	addi %r0, %r1, 0x8
	lis %r5, 0x200
	lis %r3, 0x8034
	stw %r5, 0x68(%r1)
	addi %r6, %r1, 0x68
	mr %r5, %r31
	addi %r3, %r3, 0x2a00
	stw %r4, 0x6c(%r1)
	li %r4, 0x100
	stw %r0, 0x70(%r1)
	bl sub_9a0c
	li %r0, 0x1
	lis %r3, 0x8029
	lis %r5, 0x801a
	stw %r30, -0x63b0(%r13)
	subi %r3, %r3, 0x5720
	li %r4, 0x3
	stw %r0, -0x63ac(%r13)
	subi %r5, %r5, 0x137c
	li %r6, 0x0
	bl sub_163bc4
	cmpwi %r3, 0x0
	bne- _1979a8
	li %r3, 0x1
	b _1979ac
_1979a8:
	li %r3, 0x0
_1979ac:
	lwz %r0, 0x84(%r1)
	lwz %r31, 0x7c(%r1)
	lwz %r30, 0x78(%r1)
	mtlr %r0
	addi %r1, %r1, 0x80
	blr

	.incbin "./dol.text.bin", 0x1979c4, 0x484

	.global t1_197e48
t1_197e48:
	.incbin "basemain.dol", 0x19a3a8, 0x128
	
	.global sub_197f70
sub_197f70: # 0x8019f230
	lis %r4, 0xc000
	lwz %r10, 0x3144(%r4)
	lwz %r9, 0x3140(%r4)
	extrwi  %r0, %r10, 4, 24
	extrwi  %r6, %r10, 4, 8
	mulli %r4, %r0, 0xa
	srwi  %r7, %r9, 24
	clrlwi  %r0, %r10, 28
	stb %r7, 0x0(%r3)
	extrwi  %r8, %r9, 8, 8
	add %r4, %r0, %r4
	addi %r0, %r4, 0x7d0
	extrwi  %r5, %r10, 4, 16
	mulli %r4, %r5, 0xa
	stb %r8, 0x1(%r3)
	extrwi  %r5, %r10, 4, 20
	extrwi  %r8, %r9, 8, 16
	stb %r9, 0x3(%r3)
	add %r4, %r5, %r4
	mulli %r6, %r6, 0xa
	extrwi  %r7, %r10, 4, 12
	stb %r8, 0x2(%r3)
	add %r6, %r7, %r6
	stb %r4, 0x5(%r3)
	stb %r6, 0x4(%r3)
	sth %r0, 0x6(%r3)
	blr

	.global sub_197fdc
sub_197fdc: # 0x8019f29c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lwz %r3, -0x6370(%r13)
	cmpwi %r3, 0x0
	beq- _198004
	lwz %r0, 0x2c(%r3)
	cmpwi %r0, 0x0
	bne- _198010
_198004:
	lis %r3, 0x1000
	addi %r3, %r3, 0x2
	b _19824c
_198010:
	lis %r3, 0x8000
	lhz %r0, 0x30e6(%r3)
	lwz %r31, 0x3138(%r3)
	rlwinm. %r0, %r0, 0, 16, 16
	beq- _19815c
	lhz %r0, 0x30e6(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	cmpwi %r0, 0x203
	beq- _198064
	bge- _198058
	cmpwi %r0, 0x4
	bge- _19804c
	cmpwi %r0, 0x2
	bge- _198064
	b _19815c
_19804c:
	cmpwi %r0, 0x201
	bge- _1980d0
	b _19815c
_198058:
	cmpwi %r0, 0x300
	beq- _198154
	b _19815c
_198064:
	cmpwi %r31, 0x2
	beq- _1980a8
	bge- _198080
	cmpwi %r31, 0x0
	beq- _198098
	bge- _1980a0
	b _1980c0
_198080:
	cmpwi %r31, 0x11
	beq- _1980b8
	bge- _1980c0
	cmpwi %r31, 0x10
	bge- _1980b0
	b _1980c0
_198098:
	li %r3, 0x10
	b _19824c
_1980a0:
	li %r3, 0x11
	b _19824c
_1980a8:
	li %r3, 0x12
	b _19824c
_1980b0:
	li %r3, 0x20
	b _19824c
_1980b8:
	li %r3, 0x21
	b _19824c
_1980c0:
	cmplwi %r31, 0x11
	ble- _1980d0
	li %r3, 0x21
	b _19824c
_1980d0:
	cmpwi %r31, 0x2
	beq- _19811c
	bge- _1980ec
	cmpwi %r31, 0x0
	beq- _198104
	bge- _198110
	b _198140
_1980ec:
	cmpwi %r31, 0x11
	beq- _198134
	bge- _198140
	cmpwi %r31, 0x10
	bge- _198128
	b _198140
_198104:
	lis %r3, 0x1000
	addi %r3, %r3, 0x10
	b _19824c
_198110:
	lis %r3, 0x1000
	addi %r3, %r3, 0x11
	b _19824c
_19811c:
	lis %r3, 0x1000
	addi %r3, %r3, 0x12
	b _19824c
_198128:
	lis %r3, 0x1000
	addi %r3, %r3, 0x20
	b _19824c
_198134:
	lis %r3, 0x1000
	addi %r3, %r3, 0x21
	b _19824c
_198140:
	cmplwi %r31, 0x11
	ble- _198154
	lis %r3, 0x1000
	addi %r3, %r3, 0x21
	b _19824c
_198154:
	li %r3, 0x100
	b _19824c
_19815c:
	bl sub_1a027c
	cmpwi %r31, 0x2
	beq- _1981cc
	bge- _19817c
	cmpwi %r31, 0x0
	beq- _198194
	bge- _1981b0
	b _198220
_19817c:
	cmpwi %r31, 0x11
	beq- _198204
	bge- _198220
	cmpwi %r31, 0x10
	bge- _1981e8
	b _198220
_198194:
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x10
	bne- _19824c
	li %r3, 0x10
	b _19824c
_1981b0:
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x11
	bne- _19824c
	li %r3, 0x11
	b _19824c
_1981cc:
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x12
	bne- _19824c
	li %r3, 0x12
	b _19824c
_1981e8:
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x20
	bne- _19824c
	li %r3, 0x20
	b _19824c
_198204:
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x21
	bne- _19824c
	li %r3, 0x21
	b _19824c
_198220:
	cmplwi %r31, 0x11
	ble- _198244
	addis %r0, %r3, 0xfc00
	lis %r3, 0x1000
	cmplwi %r0, 0x0
	addi %r3, %r3, 0x21
	bne- _19824c
	li %r3, 0x21
	b _19824c
_198244:
	lwz %r3, -0x6370(%r13)
	lwz %r3, 0x2c(%r3)
_19824c:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x198260, 0x6a8

	.global t1_198908
t1_198908:
	.incbin "basemain.dol", 0x19ae68, 0x838

	.global t1_199140
t1_199140:
	.incbin "basemain.dol", 0x19b6a0, 0x54
	
	.global sub_199194
sub_199194: # 0x801a0454
	lis %r3, 0xcd00
	lwz %r0, 0x6024(%r3)
	clrlwi  %r3, %r0, 24
	blr

	.global sub_1991a4
sub_1991a4: # 0x801a0464
	mr %r4, %r3
	subi %r3, %r13, 0x7184
	crxor 6, 6, 6
	b sub_19b270
	.incbin "./dol.text.bin", 0x1991b4, 0x801a04f8 - 0x801a0474

	.global sub_199238
sub_199238: # 0x801a04f8
	lwz %r0, -0x63a8(%r13)
	cmpwi %r0, 0x0
	beq- _19924c
	li %r3, 0x40
	blr
_19924c:
	lis %r3, 0x8000
	lbz %r3, 0x3184(%r3)
	blr
	.incbin "./dol.text.bin", 0x199258, 0x801a0570 - 0x801a0518
	
	.global sub_1992b0
sub_1992b0: # 0x801a0570
	li %r0, 0x0
	stw %r0, 0x0(%r3)
	stw %r0, 0x4(%r3)
	blr

	.global sub_1992c0
sub_1992c0: # 0x801a0580
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	lwz %r4, 0x18(%r3)
	li %r29, 0x0
	lwz %r8, 0x1c(%r3)
	mr %r30, %r3
	xoris %r0, %r29, 0x8000
	xoris %r4, %r4, 0x8000
	subfc %r3, %r8, %r29
	mr %r31, %r7
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	beq- _19937c
	bl sub_1a3a1c
	lwz %r28, 0x20(%r30)
	xoris %r7, %r3, 0x8000
	lwz %r27, 0x24(%r30)
	xoris %r0, %r28, 0x8000
	mr %r5, %r28
	subfc %r6, %r4, %r27
	subfe %r7, %r7, %r0
	subfe %r7, %r0, %r0
	mr %r6, %r27
	neg. %r7, %r7
	beq- _19937c
	lwz %r26, 0x18(%r30)
	subfc %r4, %r27, %r4
	lwz %r25, 0x1c(%r30)
	subfe %r3, %r28, %r3
	mr %r5, %r26
	mr %r6, %r25
	bl sub_198d0
	li %r0, 0x1
	addc %r4, %r4, %r0
	mulhwu %r0, %r25, %r4
	adde %r5, %r3, %r29
	mullw %r3, %r26, %r4
	mullw %r4, %r25, %r4
	add %r3, %r0, %r3
	mullw %r0, %r25, %r5
	addc %r6, %r27, %r4
	add %r0, %r3, %r0
	adde %r5, %r28, %r0
_19937c:
	stw %r31, 0x0(%r30)
	xoris %r0, %r5, 0x8000
	stw %r6, 0xc(%r30)
	stw %r5, 0x8(%r30)
	lwz %r7, -0x6360(%r13)
	b _199454
_199394:
	lwz %r3, 0x8(%r7)
	lwz %r5, 0xc(%r7)
	xoris %r4, %r3, 0x8000
	subfc %r3, %r5, %r6
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	beq- _199450
	lwz %r0, 0x10(%r7)
	stw %r0, 0x10(%r30)
	stw %r30, 0x10(%r7)
	lwz %r3, 0x10(%r30)
	stw %r7, 0x14(%r30)
	cmpwi %r3, 0x0
	beq- _1993d8
	stw %r30, 0x14(%r3)
	b _1994f8
_1993d8:
	stw %r30, -0x6360(%r13)
	bl sub_1a3a1c
	lwz %r5, 0xc(%r30)
	li %r7, 0x0
	lwz %r0, 0x8(%r30)
	xoris %r6, %r7, 0x8000
	subfc %r8, %r4, %r5
	subfe %r0, %r3, %r0
	xoris %r5, %r0, 0x8000
	subfc %r0, %r7, %r8
	subfe %r6, %r6, %r5
	subfe %r6, %r5, %r5
	neg. %r6, %r6
	beq- _19941c
	li %r3, 0x0
	bl sub_127234
	b _1994f8
_19941c:
	lis %r4, 0x8000
	xoris %r3, %r7, 0x8000
	subfc %r0, %r4, %r8
	subfe %r3, %r3, %r5
	subfe %r3, %r5, %r5
	neg. %r3, %r3
	beq- _199444
	mr %r3, %r8
	bl sub_127234
	b _1994f8
_199444:
	subi %r3, %r4, 0x1
	bl sub_127234
	b _1994f8
_199450:
	lwz %r7, 0x14(%r7)
_199454:
	cmpwi %r7, 0x0
	bne+ _199394
	li %r31, 0x0
	subi %r3, %r13, 0x6360
	stw %r31, 0x14(%r30)
	lwz %r4, 0x4(%r3)
	stw %r30, 0x4(%r3)
	cmpwi %r4, 0x0
	stw %r4, 0x10(%r30)
	beq- _199484
	stw %r30, 0x14(%r4)
	b _1994f8
_199484:
	stw %r30, 0x4(%r3)
	stw %r30, -0x6360(%r13)
	bl sub_1a3a1c
	lwz %r5, 0xc(%r30)
	xoris %r6, %r31, 0x8000
	lwz %r0, 0x8(%r30)
	subfc %r7, %r4, %r5
	subfe %r0, %r3, %r0
	xoris %r5, %r0, 0x8000
	subfc %r0, %r31, %r7
	subfe %r6, %r6, %r5
	subfe %r6, %r5, %r5
	neg. %r6, %r6
	beq- _1994c8
	li %r3, 0x0
	bl sub_127234
	b _1994f8
_1994c8:
	lis %r4, 0x8000
	xoris %r3, %r31, 0x8000
	subfc %r0, %r4, %r7
	subfe %r3, %r3, %r5
	subfe %r3, %r5, %r5
	neg. %r3, %r3
	beq- _1994f0
	mr %r3, %r7
	bl sub_127234
	b _1994f8
_1994f0:
	subi %r3, %r4, 0x1
	bl sub_127234
_1994f8:
	addi %r11, %r1, 0x30
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.global sub_199510
sub_199510: # 0x801a07d0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	mr %r29, %r5
	mr %r28, %r6
	mr %r30, %r7
	bl sub_19f24c
	li %r0, 0x0
	mr %r31, %r3
	stw %r0, 0x1c(%r27)
	stw %r0, 0x18(%r27)
	bl sub_1a3a1c
	addc %r6, %r28, %r4
	mr %r7, %r30
	adde %r5, %r29, %r3
	mr %r3, %r27
	bl sub_1992c0
	mr %r3, %r31
	bl sub_19f274
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_199580
sub_199580: # 0x801a0840
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	mr %r26, %r3
	mr %r28, %r5
	mr %r27, %r6
	mr %r29, %r7
	mr %r31, %r8
	mr %r30, %r9
	bl sub_19f24c
	stw %r31, 0x1c(%r26)
	mr %r31, %r3
	mr %r4, %r27
	mr %r3, %r28
	stw %r29, 0x18(%r26)
	bl sub_1a3a80
	stw %r3, 0x20(%r26)
	mr %r3, %r26
	mr %r7, %r30
	li %r6, 0x0
	stw %r4, 0x24(%r26)
	li %r5, 0x0
	bl sub_1992c0
	mr %r3, %r31
	bl sub_19f274
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_199604
sub_199604: # 0x801a08c4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	lwz %r0, 0x0(%r30)
	mr %r31, %r3
	cmpwi %r0, 0x0
	bne- _19963c
	bl sub_19f274
	b _199700
_19963c:
	lwz %r29, 0x14(%r30)
	cmpwi %r29, 0x0
	bne- _199658
	lwz %r0, 0x10(%r30)
	subi %r3, %r13, 0x6360
	stw %r0, 0x4(%r3)
	b _199660
_199658:
	lwz %r0, 0x10(%r30)
	stw %r0, 0x10(%r29)
_199660:
	lwz %r3, 0x10(%r30)
	cmpwi %r3, 0x0
	beq- _199674
	stw %r29, 0x14(%r3)
	b _1996f0
_199674:
	cmpwi %r29, 0x0
	stw %r29, -0x6360(%r13)
	beq- _1996f0
	bl sub_1a3a1c
	lwz %r5, 0xc(%r29)
	li %r7, 0x0
	lwz %r0, 0x8(%r29)
	xoris %r6, %r7, 0x8000
	subfc %r8, %r4, %r5
	subfe %r0, %r3, %r0
	xoris %r5, %r0, 0x8000
	subfc %r0, %r7, %r8
	subfe %r6, %r6, %r5
	subfe %r6, %r5, %r5
	neg. %r6, %r6
	beq- _1996c0
	li %r3, 0x0
	bl sub_127234
	b _1996f0
_1996c0:
	lis %r4, 0x8000
	xoris %r3, %r7, 0x8000
	subfc %r0, %r4, %r8
	subfe %r3, %r3, %r5
	subfe %r3, %r5, %r5
	neg. %r3, %r3
	beq- _1996e8
	mr %r3, %r8
	bl sub_127234
	b _1996f0
_1996e8:
	subi %r3, %r4, 0x1
	bl sub_127234
_1996f0:
	li %r0, 0x0
	mr %r3, %r31
	stw %r0, 0x0(%r30)
	bl sub_19f274
_199700:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x19971c, 0x801a1014 - 0x801a09dc

	.global sub_199d54
sub_199d54: # 0x801a1014
	lwz %r3, -0x6348(%r13)
	blr
	.incbin "./dol.text.bin", 0x199d5c, 0x801a1044 - 0x801a101c

	.global sub_199d84
sub_199d84: # 0x801a1044
	stw %r3, -0x6348(%r13)
	blr
	.incbin "./dol.text.bin", 0x199d8c, 0x801a105c - 0x801a104c

	.global sub_199d9c
sub_199d9c: # 0x801a105c
	stw %r3, -0x7160(%r13)
	blr

	.global sub_199da4
sub_199da4: # 0x801a1064
	lwz %r0, -0x7160(%r13)
	subi %r5, %r4, 0x1
	not %r6, %r5
	add %r5, %r4, %r0
	subi %r0, %r5, 0x1
	and %r0, %r6, %r0
	add %r3, %r0, %r3
	add %r4, %r3, %r4
	mr %r3, %r0
	subi %r0, %r4, 0x1
	and %r0, %r6, %r0
	stw %r0, -0x7160(%r13)
	blr
	.incbin "./dol.text.bin", 0x199dd8, 0x801a1480 - 0x801a1098

	.global sub_19a1c0
sub_19a1c0: # 0x801a1480
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0xcc00
	stw %r0, 0x14(%r1)
	li %r0, 0x804
	stw %r31, 0xc(%r1)
	sth %r0, 0x500a(%r3)
	lhz %r0, 0x5036(%r3)
	clrlwi  %r0, %r0, 17
	sth %r0, 0x5036(%r3)
	lhz %r0, 0x500a(%r3)
	b _19a1f4
_19a1f0:
	lhz %r0, 0x500a(%r3)
_19a1f4:
	rlwinm. %r0, %r0, 0, 21, 21
	bne+ _19a1f0
	lis %r3, 0xcc00
	lhz %r0, 0x500a(%r3)
	b _19a20c
_19a208:
	lhz %r0, 0x500a(%r3)
_19a20c:
	rlwinm. %r0, %r0, 0, 22, 22
	bne+ _19a208
	lis %r4, 0xcc00
	li %r0, 0x8ac
	sth %r0, 0x500a(%r4)
	li %r0, 0x0
	sth %r0, 0x5000(%r4)
_19a228:
	lhz %r3, 0x5004(%r4)
	lhz %r0, 0x5006(%r4)
	insrwi  %r0, %r3, 16, 0
	clrrwi. %r0, %r0, 31
	bne+ _19a228
	bl sub_1a3a14
	mr %r31, %r3
_19a244:
	bl sub_1a3a14
	subf %r0, %r31, %r3
	cmpwi %r0, 0x2c
	blt+ _19a244
	lis %r3, 0xcc00
	lhz %r0, 0x500a(%r3)
	ori %r0, %r0, 0x1
	sth %r0, 0x500a(%r3)
	lhz %r0, 0x500a(%r3)
	b _19a270
_19a26c:
	lhz %r0, 0x500a(%r3)
_19a270:
	clrlwi. %r0, %r0, 31
	bne+ _19a26c
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x19a28c, 0x801a1560 - 0x801a154c
	
	.global sub_19a2a0
sub_19a2a0: # 0x801a1560
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a2bc:
	dcbi %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a2bc
	blr

	.global sub_19a2cc
sub_19a2cc: # 0x801a158c
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a2e8:
	dcbf %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a2e8
	sc
	blr
	
	.global sub_19a2fc
sub_19a2fc:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a318:
	dcbst %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a318
	sc
	blr
_19a32c:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a348:
	dcbf %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a348
	blr
_19a358:
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a374:
	dcbst %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a374
	blr

	.incbin "./dol.text.bin", 0x19a384, 0x801a1670 - 0x801a1644

	.global sub_19a3b0
sub_19a3b0: # 0x801a1670
	cmplwi %r4, 0x0
	blelr- 
	clrlwi  %r5, %r3, 27
	add %r4, %r4, %r5
	addi %r4, %r4, 0x1f
	srwi  %r4, %r4, 5
	mtctr %r4
_19a3cc:
	icbi 0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a3cc
	sync
	isync
	blr
	
	.global sub_19a3e4
sub_19a3e4: # 0x801a16a4
	mfspr %r3, 1008
	ori %r3, %r3, 0x800
	mtspr 1008, %r3
	blr

	.incbin "./dol.text.bin", 0x19a3f4, 0x801a17cc - 0x801a16b4

	.global sub_19a50c
sub_19a50c: # 0x801a17cc
	lis %r3, 0xe000
	li %r4, 0x200
	mtctr %r4
_19a518:
	dcbi %r0, %r3
	addi %r3, %r3, 0x20
	bdnz+ _19a518
	mfspr %r4, 920
	rlwinm  %r4, %r4, 0, 4, 2
	mtspr 920, %r4
	blr

	.incbin "./dol.text.bin", 0x19a534, 0x250

	.global t1_19a784
t1_19a784:
	.incbin "basemain.dol", 0x19cce4, 0x38c

	.global sub_19ab10
sub_19ab10: # 0x801a1dd0
	lis %r4, 0x8000
	stw %r3, 0xd4(%r4)
	clrlwi  %r5, %r3, 2
	stw %r5, 0xc0(%r4)
	lwz %r5, 0xd8(%r4)
	cmpw %r5, %r3
	bne- _19ab48
	lwz %r6, 0x19c(%r3)
	ori %r6, %r6, 0x2000
	stw %r6, 0x19c(%r3)
	mfmsr %r6
	ori %r6, %r6, 0x2
	mtmsr %r6
	blr
_19ab48:
	lwz %r6, 0x19c(%r3)
	rlwinm  %r6, %r6, 0, 19, 17
	stw %r6, 0x19c(%r3)
	mfmsr %r6
	rlwinm  %r6, %r6, 0, 19, 17
	ori %r6, %r6, 0x2
	mtmsr %r6
	isync
	blr

	.global sub_19ab6c
sub_19ab6c: # 0x801a1e2c
	lis %r3, 0x8000
	lwz %r3, 0xd4(%r3)
	blr

	.global sub_19ab78
sub_19ab78: # 0x801a1e38
	stmw %r13, 0x34(%r3)
	mfspr %r0, 913
	stw %r0, 0x1a8(%r3)
	mfspr %r0, 914
	stw %r0, 0x1ac(%r3)
	mfspr %r0, 915
	stw %r0, 0x1b0(%r3)
	mfspr %r0, 916
	stw %r0, 0x1b4(%r3)
	mfspr %r0, 917
	stw %r0, 0x1b8(%r3)
	mfspr %r0, 918
	stw %r0, 0x1bc(%r3)
	mfspr %r0, 919
	stw %r0, 0x1c0(%r3)
	mfcr %r0
	stw %r0, 0x80(%r3)
	mflr %r0
	stw %r0, 0x84(%r3)
	stw %r0, 0x198(%r3)
	mfmsr %r0
	stw %r0, 0x19c(%r3)
	mfctr %r0
	stw %r0, 0x88(%r3)
	mfxer %r0
	stw %r0, 0x8c(%r3)
	stw %r1, 0x4(%r3)
	stw %r2, 0x8(%r3)
	li %r0, 0x1
	stw %r0, 0xc(%r3)
	li %r3, 0x0
	blr

	.global sub_19abf8
sub_19abf8: # 0x801a1eb8
	lis %r4, 0x801a
	lwz %r6, 0x198(%r3)
	addi %r5, %r4, 0x650c
	cmplw %r6, %r5
	ble- _19ac20
	lis %r4, 0x801a
	addi %r0, %r4, 0x6518
	cmplw %r6, %r0
	bge- _19ac20
	stw %r5, 0x198(%r3)
_19ac20:
	lwz %r0, 0x0(%r3)
	lwz %r1, 0x4(%r3)
	lwz %r2, 0x8(%r3)
	lhz %r4, 0x1a2(%r3)
	rlwinm. %r5, %r4, 0, 30, 30
	beq- _19ac48
	rlwinm  %r4, %r4, 0, 31, 29
	sth %r4, 0x1a2(%r3)
	lmw %r5, 0x14(%r3)
	b _19ac4c
_19ac48:
	lmw %r13, 0x34(%r3)
_19ac4c:
	lwz %r4, 0x1a8(%r3)
	mtspr 913, %r4
	lwz %r4, 0x1ac(%r3)
	mtspr 914, %r4
	lwz %r4, 0x1b0(%r3)
	mtspr 915, %r4
	lwz %r4, 0x1b4(%r3)
	mtspr 916, %r4
	lwz %r4, 0x1b8(%r3)
	mtspr 917, %r4
	lwz %r4, 0x1bc(%r3)
	mtspr 918, %r4
	lwz %r4, 0x1c0(%r3)
	mtspr 919, %r4
	lwz %r4, 0x80(%r3)
	mtcrf 255, %r4
	lwz %r4, 0x84(%r3)
	mtlr %r4
	lwz %r4, 0x88(%r3)
	mtctr %r4
	lwz %r4, 0x8c(%r3)
	mtxer %r4
	mfmsr %r4
	rlwinm  %r4, %r4, 0, 17, 15
	rlwinm  %r4, %r4, 0, 31, 29
	mtmsr %r4
	lwz %r4, 0x198(%r3)
	mtspr 26, %r4
	lwz %r4, 0x19c(%r3)
	mtspr 27, %r4
	lwz %r4, 0x10(%r3)
	lwz %r3, 0xc(%r3)
	rfi
	
	.global sub_19acd0
sub_19acd0: # 0x801a1f90
	mr %r3, %r1
	blr
	
	.global t1_19acd8
t1_19acd8:
	.incbin "basemain.dol", 0x19d238, 0x60

	.global sub_19ad38
sub_19ad38: # 0x801a1ff8
	li %r5, 0x0
	lis %r4, 0x8000
	sth %r5, 0x1a0(%r3)
	sth %r5, 0x1a2(%r3)
	lwz %r0, 0xd8(%r4)
	cmplw %r3, %r0
	bnelr- 
	stw %r5, 0xd8(%r4)
	blr
	
	.global sub_19ad5c
sub_19ad5c: # 0x801a201c
	stw %r4, 0x198(%r3)
	stw %r5, 0x4(%r3)
	li %r11, 0x0
	ori %r11, %r11, 0x9032
	stw %r11, 0x19c(%r3)
	li %r0, 0x0
	stw %r0, 0x80(%r3)
	stw %r0, 0x8c(%r3)
	stw %r2, 0x8(%r3)
	stw %r13, 0x34(%r3)
	stw %r0, 0xc(%r3)
	stw %r0, 0x10(%r3)
	stw %r0, 0x14(%r3)
	stw %r0, 0x18(%r3)
	stw %r0, 0x1c(%r3)
	stw %r0, 0x20(%r3)
	stw %r0, 0x24(%r3)
	stw %r0, 0x28(%r3)
	stw %r0, 0x2c(%r3)
	stw %r0, 0x30(%r3)
	stw %r0, 0x38(%r3)
	stw %r0, 0x3c(%r3)
	stw %r0, 0x40(%r3)
	stw %r0, 0x44(%r3)
	stw %r0, 0x48(%r3)
	stw %r0, 0x4c(%r3)
	stw %r0, 0x50(%r3)
	stw %r0, 0x54(%r3)
	stw %r0, 0x58(%r3)
	stw %r0, 0x5c(%r3)
	stw %r0, 0x60(%r3)
	stw %r0, 0x64(%r3)
	stw %r0, 0x68(%r3)
	stw %r0, 0x6c(%r3)
	stw %r0, 0x70(%r3)
	stw %r0, 0x74(%r3)
	stw %r0, 0x78(%r3)
	stw %r0, 0x7c(%r3)
	stw %r0, 0x1a4(%r3)
	stw %r0, 0x1a8(%r3)
	stw %r0, 0x1ac(%r3)
	stw %r0, 0x1b0(%r3)
	stw %r0, 0x1b4(%r3)
	stw %r0, 0x1b8(%r3)
	stw %r0, 0x1bc(%r3)
	stw %r0, 0x1c0(%r3)
	b sub_19ad38

	.incbin "./dol.text.bin", 0x19ae18, 0x801a2530 - 0x801a20d8
	
	.global sub_19b270
sub_19b270: # 0x801a2530
	stwu %r1, -0x80(%r1)
	mflr %r0
	stw %r0, 0x84(%r1)
	stw %r31, 0x7c(%r1)
	bne- cr1, _19b2a4
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_19b2a4:
	addi %r11, %r1, 0x88
	addi %r0, %r1, 0x8
	lis %r12, 0x100
	stw %r3, 0x8(%r1)
	addi %r31, %r1, 0x68
	stw %r4, 0xc(%r1)
	mr %r4, %r31
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	stw %r12, 0x68(%r1)
	stw %r11, 0x6c(%r1)
	stw %r0, 0x70(%r1)
	bl sub_9990
	lwz %r0, 0x84(%r1)
	lwz %r31, 0x7c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x80
	blr
	
	.global sub_19b2fc
sub_19b2fc: # 0x801a25bc
	b sub_9990
	
	.global sub_19b300
sub_19b300: # 0x801a25c0
	stwu %r1, -0x90(%r1)
	mflr %r0
	stw %r0, 0x94(%r1)
	stw %r31, 0x8c(%r1)
	stw %r30, 0x88(%r1)
	mr %r30, %r4
	stw %r29, 0x84(%r1)
	mr %r29, %r5
	stw %r28, 0x80(%r1)
	mr %r28, %r3
	bne- cr1, _19b34c
	stfd %f1, 0x28(%r1)
	stfd %f2, 0x30(%r1)
	stfd %f3, 0x38(%r1)
	stfd %f4, 0x40(%r1)
	stfd %f5, 0x48(%r1)
	stfd %f6, 0x50(%r1)
	stfd %f7, 0x58(%r1)
	stfd %f8, 0x60(%r1)
_19b34c:
	lis %r31, 0x8029
	stw %r3, 0x8(%r1)
	subi %r31, %r31, 0x4e40
	stw %r4, 0xc(%r1)
	stw %r5, 0x10(%r1)
	stw %r6, 0x14(%r1)
	stw %r7, 0x18(%r1)
	stw %r8, 0x1c(%r1)
	stw %r9, 0x20(%r1)
	stw %r10, 0x24(%r1)
	bl sub_19f24c
	addi %r5, %r1, 0x98
	addi %r0, %r1, 0x8
	lis %r3, 0x300
	stw %r5, 0x6c(%r1)
	addi %r4, %r1, 0x68
	stw %r3, 0x68(%r1)
	mr %r3, %r29
	stw %r0, 0x70(%r1)
	bl sub_9990
	mr %r4, %r28
	mr %r5, %r30
	addi %r3, %r31, 0x0
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r31, 0x18
	crxor 6, 6, 6
	bl sub_19b270
	li %r30, 0x0
	bl sub_19acd0
	mr %r29, %r3
	b _19b3e8
_19b3cc:
	lwz %r5, 0x0(%r29)
	mr %r4, %r29
	lwz %r6, 0x4(%r29)
	addi %r3, %r31, 0x40
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r29, 0x0(%r29)
_19b3e8:
	cmpwi %r29, 0x0
	beq- _19b408
	addis %r0, %r29, 0x1
	cmplwi %r0, 0xffff
	beq- _19b408
	cmplwi %r30, 0x10
	addi %r30, %r30, 0x1
	blt+ _19b3cc
_19b408:
	bl sub_127244
	lwz %r0, 0x94(%r1)
	lwz %r31, 0x8c(%r1)
	lwz %r30, 0x88(%r1)
	lwz %r29, 0x84(%r1)
	lwz %r28, 0x80(%r1)
	mtlr %r0
	addi %r1, %r1, 0x90
	blr
	
	.global t1_19b42c
t1_19b42c:
	.incbin "basemain.dol", 0x19d98c, 0x578
	
	.global sub_19b9a4
sub_19b9a4: # 0x801a2c64
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	mr %r25, %r4
	mr %r29, %r5
	mr %r30, %r3
	li %r4, 0x0
	li %r5, 0x2000
	bl memset
	cmpwi %r25, 0x0
	bne- _19b9e4
	li %r0, 0x0
	stw %r0, 0x8(%r30)
	b _19bb08
_19b9e4:
	slwi  %r0, %r25, 2
	mr %r31, %r25
	addi %r26, %r30, 0x2000
	add %r28, %r29, %r0
	b _19ba20
_19b9f8:
	lwz %r27, 0x0(%r28)
	mr %r3, %r27
	bl sub_19434
	addi %r0, %r3, 0x1
	mr %r4, %r27
	subf %r26, %r0, %r26
	mr %r3, %r26
	bl sub_b300
	subf %r0, %r30, %r26
	stw %r0, 0x0(%r28)
_19ba20:
	subic. %r25, %r25, 0x1
	subi %r28, %r28, 0x4
	bge+ _19b9f8
	addic. %r3, %r31, 0x1
	subf %r0, %r30, %r26
	clrrwi  %r4, %r0, 2
	li %r7, 0x0
	add %r6, %r30, %r4
	slwi  %r0, %r3, 2
	subf %r6, %r0, %r6
	beq- _19baf8
	cmplwi %r3, 0x8
	subi %r3, %r31, 0x7
	ble- _19bac4
	addi %r0, %r3, 0x7
	mr %r4, %r29
	srwi  %r0, %r0, 3
	mr %r5, %r6
	mtctr %r0
	cmplwi %r3, 0x0
	ble- _19bac4
_19ba74:
	lwz %r0, 0x0(%r4)
	addi %r7, %r7, 0x8
	stw %r0, 0x0(%r5)
	lwz %r0, 0x4(%r4)
	stw %r0, 0x4(%r5)
	lwz %r0, 0x8(%r4)
	stw %r0, 0x8(%r5)
	lwz %r0, 0xc(%r4)
	stw %r0, 0xc(%r5)
	lwz %r0, 0x10(%r4)
	stw %r0, 0x10(%r5)
	lwz %r0, 0x14(%r4)
	stw %r0, 0x14(%r5)
	lwz %r0, 0x18(%r4)
	stw %r0, 0x18(%r5)
	lwz %r0, 0x1c(%r4)
	addi %r4, %r4, 0x20
	stw %r0, 0x1c(%r5)
	addi %r5, %r5, 0x20
	bdnz+ _19ba74
_19bac4:
	addi %r3, %r31, 0x1
	slwi  %r5, %r7, 2
	subf %r0, %r7, %r3
	add %r4, %r29, %r5
	add %r5, %r6, %r5
	mtctr %r0
	cmplw %r7, %r3
	bge- _19baf8
_19bae4:
	lwz %r0, 0x0(%r4)
	addi %r4, %r4, 0x4
	stw %r0, 0x0(%r5)
	addi %r5, %r5, 0x4
	bdnz+ _19bae4
_19baf8:
	subi %r0, %r6, 0x4
	stw %r31, -0x4(%r6)
	subf %r0, %r30, %r0
	stw %r0, 0x8(%r30)
_19bb08:
	addi %r11, %r1, 0x30
	li %r3, 0x1
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_19bb24
sub_19bb24: # 0x801a2de4
	cmpwi %r4, 0x0
	beq- _19bc74
	mr %r9, %r3
	li %r5, 0x4
	li %r0, 0x2
	b _19bc4c
_19bb3c:
	li %r10, 0x0
	mtctr %r0
_19bb44:
	clrlwi. %r8, %r10, 31
	li %r7, 0xf0
	beq- _19bb54
	li %r7, 0xf
_19bb54:
	neg %r3, %r8
	lbz %r6, 0x0(%r4)
	or %r3, %r3, %r8
	srawi %r3, %r3, 31
	extsb %r6, %r6
	andc %r3, %r5, %r3
	and %r6, %r6, %r7
	clrlwi  %r3, %r3, 24
	sraw. %r3, %r6, %r3
	blt- _19bb90
	cmpwi %r3, 0xa
	bge- _19bb90
	addi %r3, %r3, 0x30
	stb %r3, 0x0(%r9)
	b _19bbb4
_19bb90:
	cmpwi %r3, 0xa
	blt- _19bbac
	cmpwi %r3, 0x10
	bge- _19bbac
	addi %r3, %r3, 0x57
	stb %r3, 0x0(%r9)
	b _19bbb4
_19bbac:
	li %r3, 0x0
	blr
_19bbb4:
	cmpwi %r8, 0x0
	beq- _19bbc0
	addi %r4, %r4, 0x1
_19bbc0:
	addi %r10, %r10, 0x1
	li %r7, 0xf0
	clrlwi. %r8, %r10, 31
	beq- _19bbd4
	li %r7, 0xf
_19bbd4:
	neg %r3, %r8
	lbz %r6, 0x0(%r4)
	or %r3, %r3, %r8
	srawi %r3, %r3, 31
	extsb %r6, %r6
	andc %r3, %r5, %r3
	and %r6, %r6, %r7
	clrlwi  %r3, %r3, 24
	sraw. %r3, %r6, %r3
	blt- _19bc10
	cmpwi %r3, 0xa
	bge- _19bc10
	addi %r3, %r3, 0x30
	stb %r3, 0x1(%r9)
	b _19bc34
_19bc10:
	cmpwi %r3, 0xa
	blt- _19bc2c
	cmpwi %r3, 0x10
	bge- _19bc2c
	addi %r3, %r3, 0x57
	stb %r3, 0x1(%r9)
	b _19bc34
_19bc2c:
	li %r3, 0x0
	blr
_19bc34:
	cmpwi %r8, 0x0
	addi %r9, %r9, 0x2
	beq- _19bc44
	addi %r4, %r4, 0x1
_19bc44:
	addi %r10, %r10, 0x1
	bdnz+ _19bb44
_19bc4c:
	lbz %r3, 0x0(%r4)
	extsb. %r3, %r3
	bne+ _19bb3c
	lbz %r3, 0x1(%r4)
	extsb. %r3, %r3
	bne+ _19bb3c
	li %r0, 0x0
	li %r3, 0x1
	stb %r0, 0x0(%r9)
	blr
_19bc74:
	li %r3, 0x0
	blr

	.global sub_19bc7c
sub_19bc7c: # 0x801a2f3c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	mr %r27, %r4
	mr %r28, %r5
	mr %r30, %r3
	li %r4, 0x0
	li %r5, 0x2000
	bl memset
	cmpwi %r27, 0x0
	bne- _19bcbc
	li %r0, 0x0
	stw %r0, 0x8(%r30)
	b _19be2c
_19bcbc:
	slwi  %r0, %r27, 2
	mr %r31, %r27
	addi %r29, %r30, 0x2000
	add %r26, %r28, %r0
	b _19bd44
_19bcd0:
	cmpwi %r27, 0x2
	blt- _19bcec
	srwi  %r3, %r27, 31
	clrlwi  %r0, %r27, 31
	xor %r0, %r0, %r3
	subf. %r0, %r3, %r0
	beq- _19bd18
_19bcec:
	lwz %r25, 0x0(%r26)
	mr %r3, %r25
	bl sub_19434
	addi %r0, %r3, 0x1
	mr %r4, %r25
	subf %r29, %r0, %r29
	mr %r3, %r29
	bl sub_b300
	subf %r0, %r30, %r29
	stw %r0, 0x0(%r26)
	b _19bd44
_19bd18:
	lwz %r25, 0x0(%r26)
	mr %r3, %r25
	bl sub_fb78
	slwi  %r3, %r3, 2
	mr %r4, %r25
	addi %r0, %r3, 0x1
	subf %r29, %r0, %r29
	mr %r3, %r29
	bl sub_19bb24
	subf %r0, %r30, %r29
	stw %r0, 0x0(%r26)
_19bd44:
	subic. %r27, %r27, 0x1
	subi %r26, %r26, 0x4
	bge+ _19bcd0
	addic. %r3, %r31, 0x1
	subf %r0, %r30, %r29
	clrrwi  %r4, %r0, 2
	li %r7, 0x0
	add %r6, %r30, %r4
	slwi  %r0, %r3, 2
	subf %r6, %r0, %r6
	beq- _19be1c
	cmplwi %r3, 0x8
	subi %r3, %r31, 0x7
	ble- _19bde8
	addi %r0, %r3, 0x7
	mr %r4, %r28
	srwi  %r0, %r0, 3
	mr %r5, %r6
	mtctr %r0
	cmplwi %r3, 0x0
	ble- _19bde8
_19bd98:
	lwz %r0, 0x0(%r4)
	addi %r7, %r7, 0x8
	stw %r0, 0x0(%r5)
	lwz %r0, 0x4(%r4)
	stw %r0, 0x4(%r5)
	lwz %r0, 0x8(%r4)
	stw %r0, 0x8(%r5)
	lwz %r0, 0xc(%r4)
	stw %r0, 0xc(%r5)
	lwz %r0, 0x10(%r4)
	stw %r0, 0x10(%r5)
	lwz %r0, 0x14(%r4)
	stw %r0, 0x14(%r5)
	lwz %r0, 0x18(%r4)
	stw %r0, 0x18(%r5)
	lwz %r0, 0x1c(%r4)
	addi %r4, %r4, 0x20
	stw %r0, 0x1c(%r5)
	addi %r5, %r5, 0x20
	bdnz+ _19bd98
_19bde8:
	addi %r3, %r31, 0x1
	slwi  %r5, %r7, 2
	subf %r0, %r7, %r3
	add %r4, %r28, %r5
	add %r5, %r6, %r5
	mtctr %r0
	cmplw %r7, %r3
	bge- _19be1c
_19be08:
	lwz %r0, 0x0(%r4)
	addi %r4, %r4, 0x4
	stw %r0, 0x0(%r5)
	addi %r5, %r5, 0x4
	bdnz+ _19be08
_19be1c:
	subi %r0, %r6, 0x4
	stw %r31, -0x4(%r6)
	subf %r0, %r30, %r0
	stw %r0, 0x8(%r30)
_19be2c:
	addi %r11, %r1, 0x30
	li %r3, 0x1
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_19be48
sub_19be48: # 0x801a3108
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_19a3e4
	sync
	isync
	mtctr %r31
	bctr 
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x19be84, 0x801a317c - 0x801a3144

	.global sub_19bebc
sub_19bebc: # 0x801a317c
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19770
	li %r3, 0x1
	li %r0, 0x0
	stw %r3, 0x14(%r1)
	li %r31, -0x1
	li %r3, 0x20
	li %r4, 0x20
	stw %r0, 0x10(%r1)
	bl sub_199da4
	mr %r28, %r3
	li %r3, 0x800
	li %r4, 0x20
	bl sub_199da4
	mr %r29, %r3
	li %r3, 0x4a00
	li %r4, 0x40
	bl sub_199da4
	mr %r26, %r3
	li %r3, 0xe0
	li %r4, 0x20
	bl sub_199da4
	lis %r4, 0x8000
	lwz %r5, -0x6340(%r13)
	lwz %r0, 0x3194(%r4)
	mr %r30, %r3
	cmplw %r5, %r0
	bne- _19bfd8
	lwz %r0, 0x3198(%r4)
	cmpwi %r0, 0x0
	beq- _19bfd8
	bl sub_15fe70
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _19bf64
	mr %r4, %r30
	li %r3, 0x0
	bl sub_1602fc
	mr %r31, %r3
_19bf64:
	cmpwi %r31, 0x0
	bne- _19bf7c
	addi %r4, %r1, 0x10
	li %r3, 0x0
	bl sub_1603a0
	mr %r31, %r3
_19bf7c:
	cmpwi %r31, 0x0
	bne- _19bf94
	mr %r3, %r26
	addi %r4, %r1, 0x10
	bl sub_1603a0
	mr %r31, %r3
_19bf94:
	bl sub_15fec4
	bl sub_1a55dc
	cmpwi %r3, 0x0
	beq- _19bfd8
	li %r3, 0x0
	li %r0, -0x1
	stw %r3, 0xc(%r1)
	mr %r3, %r30
	addi %r4, %r1, 0xc
	addi %r5, %r1, 0x8
	stw %r0, 0x8(%r1)
	bl sub_1a5b54
	lwz %r0, 0x8(%r1)
	cmpwi %r0, 0x0
	bne- _19bfd8
	bl sub_1a5838
	bl sub_1a15f4
_19bfd8:
	cmpwi %r31, 0x0
	bne- _19bffc
	lis %r3, 0x8000
	mr %r27, %r29
	lwz %r0, 0x3194(%r3)
	stw %r0, 0x4(%r29)
	lwz %r0, 0x3198(%r3)
	stw %r0, 0x0(%r29)
	b _19c270
_19bffc:
	li %r0, 0x0
	lis %r3, 0x801a
	stw %r0, -0x6338(%r13)
	addi %r3, %r3, 0x3174
	bl sub_15e244
_19c010:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c010
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c044
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x395
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c044:
	li %r0, 0x0
	lis %r6, 0x801a
	stw %r0, -0x6338(%r13)
	mr %r3, %r28
	addi %r6, %r6, 0x3174
	li %r4, 0x20
	lis %r5, 0x1
	bl sub_15e3a8
_19c064:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c064
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c098
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x39f
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c098:
	li %r0, 0x0
	lis %r6, 0x801a
	stw %r0, -0x6338(%r13)
	mr %r3, %r29
	addi %r6, %r6, 0x3174
	li %r4, 0x800
	lwz %r5, 0x4(%r28)
	bl sub_15e3a8
_19c0b8:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c0b8
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c0ec
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x3ab
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c0ec:
	lwz %r4, -0x6340(%r13)
	mr %r6, %r29
	li %r27, 0x0
	li %r5, 0x0
	b _19c118
_19c100:
	lwz %r0, 0x4(%r6)
	cmplw %r0, %r4
	bne- _19c110
	mr %r27, %r6
_19c110:
	addi %r6, %r6, 0x8
	addi %r5, %r5, 0x1
_19c118:
	lwz %r0, 0x0(%r28)
	clrlwi  %r3, %r5, 24
	cmplw %r3, %r0
	blt+ _19c100
	cmpwi %r27, 0x0
	bne- _19c168
	lwz %r4, -0x6340(%r13)
	addi %r6, %r29, 0x20
	li %r5, 0x0
	b _19c158
_19c140:
	lwz %r0, 0x4(%r6)
	cmplw %r0, %r4
	bne- _19c150
	mr %r27, %r6
_19c150:
	addi %r6, %r6, 0x8
	addi %r5, %r5, 0x1
_19c158:
	lwz %r0, 0x8(%r28)
	clrlwi  %r3, %r5, 24
	cmplw %r3, %r0
	blt+ _19c140
_19c168:
	cmpwi %r27, 0x0
	bne- _19c184
	lis %r3, 0x8029
	subi %r3, %r3, 0x4afc
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c184:
	lwz %r3, 0x4(%r27)
	lis %r4, 0x8000
	li %r0, 0x0
	stw %r3, 0x3194(%r4)
	lwz %r3, 0x0(%r27)
	stw %r3, 0x3198(%r4)
	stw %r0, -0x6338(%r13)
	lbz %r0, 0x3187(%r4)
	cmplwi %r0, 0x80
	bne- _19c1d4
	lis %r9, 0x801a
	lwz %r3, 0x0(%r27)
	lwz %r5, 0x10(%r1)
	mr %r4, %r30
	mr %r6, %r26
	addi %r9, %r9, 0x3174
	li %r7, 0x0
	li %r8, 0x0
	bl sub_15db3c
	b _19c1f4
_19c1d4:
	lis %r8, 0x801a
	lwz %r3, 0x0(%r27)
	mr %r7, %r26
	li %r4, 0x0
	addi %r8, %r8, 0x3174
	li %r5, 0x0
	li %r6, 0x0
	bl sub_15d8d4
_19c1f4:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c1f4
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c228
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x3e8
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c228:
	li %r0, 0x0
	lis %r3, 0x801a
	stw %r0, -0x6338(%r13)
	addi %r3, %r3, 0x3174
	bl sub_15e244
_19c23c:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c23c
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c270
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x3f2
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c270:
	lwz %r24, 0x184(%r26)
	lwz %r23, 0x188(%r26)
	bl sub_15fe70
	cmpwi %r3, 0x0
	mr %r31, %r3
	beq- _19c2a4
	lis %r3, 0x8029
	mr %r4, %r31
	subi %r3, %r3, 0x4b20
	li %r5, 0x3fd
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a1698
_19c2a4:
	mr %r4, %r23
	mr %r3, %r24
	addi %r6, %r1, 0x14
	li %r5, 0x0
	bl sub_1601e4
	lwz %r0, 0x14(%r1)
	mr %r31, %r3
	cmplwi %r0, 0x1
	bne- _19c2d0
	cmpwi %r3, 0x0
	beq- _19c2ec
_19c2d0:
	lis %r3, 0x8029
	mr %r4, %r31
	subi %r3, %r3, 0x4b20
	li %r5, 0x406
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a1698
_19c2ec:
	lwz %r0, 0x14(%r1)
	li %r4, 0x20
	mulli %r3, %r0, 0xd8
	addi %r0, %r3, 0x1f
	clrrwi  %r3, %r0, 5
	bl sub_199da4
	mr %r25, %r3
	mr %r4, %r23
	mr %r3, %r24
	addi %r6, %r1, 0x14
	mr %r5, %r25
	bl sub_1601e4
	cmpwi %r3, 0x0
	mr %r31, %r3
	beq- _19c344
	lis %r3, 0x8029
	mr %r4, %r31
	subi %r3, %r3, 0x4b20
	li %r5, 0x40f
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a1698
_19c344:
	bl sub_15d498
	lis %r5, 0x8000
	li %r4, 0x100
	lwz %r29, 0x311c(%r5)
	addi %r3, %r5, 0x3100
	lwz %r28, 0x3120(%r5)
	bl sub_19a2fc
	mr %r4, %r23
	mr %r3, %r24
	mr %r5, %r25
	bl sub_15ff0c
	cmpwi %r3, 0x0
	mr %r31, %r3
	beq- _19c398
	lis %r3, 0x8029
	mr %r4, %r31
	subi %r3, %r3, 0x4b20
	li %r5, 0x41f
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a1698
_19c398:
	bl sub_15fec4
	lis %r31, 0x8000
	li %r4, 0x100
	addi %r3, %r31, 0x3100
	bl sub_19a2a0
	lwz %r3, 0x311c(%r31)
	cmplw %r29, %r3
	bge- _19c408
	lwz %r0, 0x3120(%r31)
	subf %r0, %r0, %r3
	subf %r0, %r0, %r29
	stw %r0, 0x3120(%r31)
	lwz %r3, 0x3128(%r31)
	lwz %r0, 0x311c(%r31)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r29
	stw %r0, 0x3128(%r31)
	lwz %r3, 0x3130(%r31)
	lwz %r0, 0x311c(%r31)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r29
	stw %r0, 0x3130(%r31)
	lwz %r3, 0x3134(%r31)
	lwz %r0, 0x311c(%r31)
	subf %r0, %r3, %r0
	subf %r0, %r0, %r29
	stw %r0, 0x3134(%r31)
	stw %r29, 0x311c(%r31)
_19c408:
	lis %r3, 0x8000
	lwz %r0, 0x3120(%r3)
	cmplw %r28, %r0
	bge- _19c41c
	bl sub_1a0a9c
_19c41c:
	bl sub_1a42f8
	bl sub_18bc68
	bl sub_18c1cc
	bl sub_15d4e8
	li %r0, 0x0
	lis %r3, 0x8034
	lis %r4, 0x801a
	stw %r0, -0x6338(%r13)
	addi %r3, %r3, 0x2dc0
	addi %r4, %r4, 0x3174
	bl sub_15d74c
_19c448:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c448
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c47c
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x44b
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c47c:
	li %r0, 0x0
	lis %r3, 0x8000
	stw %r0, -0x6338(%r13)
	lbz %r0, 0x3187(%r3)
	cmplwi %r0, 0x80
	bne- _19c4bc
	lis %r9, 0x801a
	lwz %r3, 0x0(%r27)
	lwz %r5, 0x10(%r1)
	mr %r4, %r30
	mr %r6, %r26
	addi %r9, %r9, 0x3174
	li %r7, 0x0
	li %r8, 0x0
	bl sub_15db3c
	b _19c4dc
_19c4bc:
	lis %r8, 0x801a
	lwz %r3, 0x0(%r27)
	mr %r7, %r26
	li %r4, 0x0
	addi %r8, %r8, 0x3174
	li %r5, 0x0
	li %r6, 0x0
	bl sub_15d8d4
_19c4dc:
	lwz %r0, -0x6338(%r13)
	cmpwi %r0, 0x0
	beq+ _19c4dc
	lwz %r0, -0x6338(%r13)
	cmplwi %r0, 0x1
	beq- _19c510
	lis %r3, 0x8029
	lwz %r4, -0x6338(%r13)
	subi %r3, %r3, 0x4b20
	li %r5, 0x462
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_1a15f4
_19c510:
	addi %r11, %r1, 0x40
	bl sub_197bc
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_19c528
sub_19c528: # 0x801a37e8
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r3, 0x8128
	stw %r0, 0x24(%r1)
	li %r0, 0x1
	stw %r31, 0x1c(%r1)
	stw %r0, 0x8(%r1)
	bl sub_199d9c
	lis %r3, 0x812f
	bl sub_199d84
	bl sub_15fe70
	cmpwi %r3, 0x0
	bne- _19c5d8
	addi %r6, %r1, 0x8
	li %r4, 0x2
	li %r3, 0x1
	li %r5, 0x0
	bl sub_1601e4
	lwz %r0, 0x8(%r1)
	cmplwi %r0, 0x1
	bne- _19c5d8
	cmpwi %r3, 0x0
	beq- _19c588
	b _19c5d8
_19c588:
	mulli %r3, %r0, 0xd8
	li %r4, 0x20
	addi %r0, %r3, 0x1f
	clrrwi  %r3, %r0, 5
	bl sub_199da4
	mr %r31, %r3
	addi %r6, %r1, 0x8
	mr %r5, %r31
	li %r4, 0x2
	li %r3, 0x1
	bl sub_1601e4
	cmpwi %r3, 0x0
	bne- _19c5d8
	mr %r5, %r31
	li %r4, 0x2
	li %r3, 0x1
	bl sub_15ff0c
	cmpwi %r3, 0x0
	bne- _19c5d8
_19c5d4:
	b _19c5d4
_19c5d8:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x19c5ec, 0x801a3d60 - 0x801a38ac

	.global sub_19caa0
sub_19caa0: # 0x801a3d60
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x220
	.incbin "./dol.text.bin", 0x19caac, 0x801a3d70 - 0x801a3d6c
	mflr %r0
	mr %r11, %r12
	stw %r0, 0x4(%r12)
	bl sub_19774
	mr %r27, %r3
	mr %r24, %r4
	mr %r28, %r5
	mr %r29, %r6
	mr %r31, %r7
	mr %r26, %r8
	mr %r25, %r9
	bl sub_19f24c
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	beq- _19caf8
	lis %r3, 0x8000
	lwz %r0, 0x3194(%r3)
	stw %r0, -0x6340(%r13)
_19caf8:
	li %r3, 0x1c
	li %r4, 0x1
	bl sub_199da4
	li %r0, 0x1
	cmpwi %r31, 0x0
	stw %r0, 0x0(%r3)
	mr %r30, %r3
	stw %r24, 0x4(%r3)
	stw %r28, 0xc(%r3)
	stw %r29, 0x10(%r3)
	stw %r31, 0x14(%r3)
	bne- _19cb74
	li %r3, 0x2000
	li %r4, 0x1
	bl sub_199da4
	stw %r3, 0x18(%r30)
	lwz %r0, -0x6340(%r13)
	cmplwi %r0, 0x2
	bne- _19cb64
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	bne- _19cb64
	lwz %r3, 0x18(%r30)
	mr %r4, %r26
	mr %r5, %r25
	bl sub_19bc7c
	b _19cb74
_19cb64:
	lwz %r3, 0x18(%r30)
	mr %r4, %r26
	mr %r5, %r25
	bl sub_19b9a4
_19cb74:
	bl sub_1576bc
	li %r3, 0x1
	bl sub_15b88c
	bl sub_15b8d8
	li %r0, 0x0
	lis %r3, 0x801a
	stw %r0, -0x6330(%r13)
	addi %r3, %r3, 0x3144
	bl sub_15bfd8
	li %r3, -0x10
	bl sub_19f5dc
	li %r3, 0x10
	bl sub_19f65c
	bl sub_19f260
_19cbac:
	lwz %r0, -0x6330(%r13)
	cmpwi %r0, 0x1
	bne+ _19cbac
	bl sub_19bebc
	addis %r0, %r24, 0x6000
	cmplwi %r0, 0x0
	bne- _19cc20
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	bne- _19cc20
	bl sub_15fe70
	cmpwi %r3, 0x0
	bne- _19d2cc
	addi %r3, %r1, 0x60
	bl sub_16063c
	cmpwi %r3, 0x0
	bne- _19d2cc
	bl sub_15fec4
	cmpwi %r3, 0x0
	bne- _19d2cc
	lwz %r3, 0x18(%r30)
	li %r4, 0x11
	lwz %r0, 0x4(%r25)
	subi %r5, %r13, 0x7148
	lwz %r7, 0x60(%r1)
	lwz %r8, 0x64(%r1)
	add %r3, %r3, %r0
	crxor 6, 6, 6
	bl sub_9b18
_19cc20:
	li %r3, 0x20
	li %r4, 0x20
	bl sub_199da4
	lwz %r6, -0x633c(%r13)
	mr %r31, %r3
	cmpwi %r6, 0x0
	beq- _19cc40
	b _19ccfc
_19cc40:
	lis %r26, 0x8000
	lwz %r0, 0x30f4(%r26)
	cmpwi %r0, 0x0
	beq- _19ccf4
	li %r3, 0x40
	li %r4, 0x20
	bl sub_199da4
	lbz %r6, -0x66d0(%r2)
	mr %r25, %r3
	lbz %r10, -0x66cf(%r2)
	mr %r4, %r25
	lbz %r9, -0x66ce(%r2)
	addi %r3, %r1, 0x140
	lbz %r0, -0x66cd(%r2)
	li %r5, 0x40
	lwz %r8, 0x30f4(%r26)
	li %r7, 0x0
	stb %r6, 0x48(%r1)
	srawi %r6, %r8, 2
	li %r8, 0x0
	stb %r10, 0x49(%r1)
	stb %r9, 0x4a(%r1)
	stb %r0, 0x4b(%r1)
	bl sub_15b56c
	b _19ccc8
_19cca4:
	addi %r3, %r1, 0x140
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19ccc4
	addi %r3, %r1, 0x140
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19ccc8
_19ccc4:
	bl sub_1a15f4
_19ccc8:
	addi %r3, %r1, 0x140
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19cca4
	lis %r3, 0x8000
	lwz %r4, 0x38(%r25)
	lwz %r0, 0x30f4(%r3)
	add %r0, %r0, %r4
	srawi %r6, %r0, 2
	stw %r6, -0x633c(%r13)
	b _19ccfc
_19ccf4:
	li %r6, 0x910
	stw %r6, -0x633c(%r13)
_19ccfc:
	lbz %r7, -0x66d0(%r2)
	mr %r4, %r31
	lbz %r10, -0x66cf(%r2)
	addi %r3, %r1, 0x170
	lbz %r9, -0x66ce(%r2)
	li %r5, 0x20
	lbz %r0, -0x66cd(%r2)
	li %r8, 0x0
	stb %r7, 0x4c(%r1)
	li %r7, 0x0
	stb %r10, 0x4d(%r1)
	stb %r9, 0x4e(%r1)
	stb %r0, 0x4f(%r1)
	bl sub_15b56c
	b _19cd5c
_19cd38:
	addi %r3, %r1, 0x170
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19cd58
	addi %r3, %r1, 0x170
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19cd5c
_19cd58:
	bl sub_1a15f4
_19cd5c:
	addi %r3, %r1, 0x170
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19cd38
	lwz %r6, -0x633c(%r13)
	cmpwi %r6, 0x0
	beq- _19cd7c
	b _19ce38
_19cd7c:
	lis %r26, 0x8000
	lwz %r0, 0x30f4(%r26)
	cmpwi %r0, 0x0
	beq- _19ce30
	li %r3, 0x40
	li %r4, 0x20
	bl sub_199da4
	lbz %r6, -0x66d0(%r2)
	mr %r25, %r3
	lbz %r10, -0x66cf(%r2)
	mr %r4, %r25
	lbz %r9, -0x66ce(%r2)
	addi %r3, %r1, 0x1a0
	lbz %r0, -0x66cd(%r2)
	li %r5, 0x40
	lwz %r8, 0x30f4(%r26)
	li %r7, 0x0
	stb %r6, 0x50(%r1)
	srawi %r6, %r8, 2
	li %r8, 0x0
	stb %r10, 0x51(%r1)
	stb %r9, 0x52(%r1)
	stb %r0, 0x53(%r1)
	bl sub_15b56c
	b _19ce04
_19cde0:
	addi %r3, %r1, 0x1a0
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19ce00
	addi %r3, %r1, 0x1a0
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19ce04
_19ce00:
	bl sub_1a15f4
_19ce04:
	addi %r3, %r1, 0x1a0
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19cde0
	lis %r3, 0x8000
	lwz %r4, 0x38(%r25)
	lwz %r0, 0x30f4(%r3)
	add %r0, %r0, %r4
	srawi %r6, %r0, 2
	stw %r6, -0x633c(%r13)
	b _19ce38
_19ce30:
	li %r6, 0x910
	stw %r6, -0x633c(%r13)
_19ce38:
	lwz %r4, 0x14(%r31)
	addi %r3, %r1, 0x1d0
	lbz %r7, -0x66d0(%r2)
	addi %r6, %r6, 0x8
	addi %r0, %r4, 0x1f
	lbz %r10, -0x66cf(%r2)
	lbz %r9, -0x66ce(%r2)
	clrrwi  %r5, %r0, 5
	lbz %r0, -0x66cd(%r2)
	lis %r4, 0x8120
	stb %r7, 0x54(%r1)
	li %r7, 0x0
	li %r8, 0x0
	stb %r10, 0x55(%r1)
	stb %r9, 0x56(%r1)
	stb %r0, 0x57(%r1)
	bl sub_15b56c
	b _19cea4
_19ce80:
	addi %r3, %r1, 0x1d0
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19cea0
	addi %r3, %r1, 0x1d0
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19cea4
_19cea0:
	bl sub_1a15f4
_19cea4:
	addi %r3, %r1, 0x1d0
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19ce80
	lwz %r4, 0x14(%r31)
	lis %r3, 0x8120
	addi %r0, %r4, 0x1f
	clrrwi  %r4, %r0, 5
	bl sub_19a3b0
	lis %r4, 0x8029
	mr %r3, %r31
	subi %r4, %r4, 0x49c0
	li %r5, 0xa
	bl sub_b598
	cmpwi %r3, 0x0
	ble- _19ceec
	li %r0, 0x1
	b _19cef0
_19ceec:
	li %r0, 0x0
_19cef0:
	cmpwi %r0, 0x0
	beq- _19d140
	addis %r0, %r27, 0x1
	cmplwi %r0, 0xffff
	bne- _19cfe0
	lwz %r6, -0x633c(%r13)
	cmpwi %r6, 0x0
	beq- _19cf14
	b _19cfd0
_19cf14:
	lis %r27, 0x8000
	lwz %r0, 0x30f4(%r27)
	cmpwi %r0, 0x0
	beq- _19cfc8
	li %r3, 0x40
	li %r4, 0x20
	bl sub_199da4
	lbz %r6, -0x66d0(%r2)
	mr %r25, %r3
	lbz %r10, -0x66cf(%r2)
	mr %r4, %r25
	lbz %r9, -0x66ce(%r2)
	addi %r3, %r1, 0x110
	lbz %r0, -0x66cd(%r2)
	li %r5, 0x40
	lwz %r8, 0x30f4(%r27)
	li %r7, 0x0
	stb %r6, 0x44(%r1)
	srawi %r6, %r8, 2
	li %r8, 0x0
	stb %r10, 0x45(%r1)
	stb %r9, 0x46(%r1)
	stb %r0, 0x47(%r1)
	bl sub_15b56c
	b _19cf9c
_19cf78:
	addi %r3, %r1, 0x110
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19cf98
	addi %r3, %r1, 0x110
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19cf9c
_19cf98:
	bl sub_1a15f4
_19cf9c:
	addi %r3, %r1, 0x110
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19cf78
	lis %r3, 0x8000
	lwz %r4, 0x38(%r25)
	lwz %r0, 0x30f4(%r3)
	add %r0, %r0, %r4
	srawi %r6, %r0, 2
	stw %r6, -0x633c(%r13)
	b _19cfd0
_19cfc8:
	li %r6, 0x910
	stw %r6, -0x633c(%r13)
_19cfd0:
	lwz %r3, 0x14(%r31)
	addi %r0, %r3, 0x20
	srwi  %r0, %r0, 2
	add %r27, %r0, %r6
_19cfe0:
	stw %r27, 0x8(%r30)
	addi %r3, %r1, 0x28
	addi %r4, %r1, 0x2c
	addi %r5, %r1, 0x30
	lwz %r12, 0x10(%r31)
	mtctr %r12
	bctrl 
	li %r3, 0x1c
	li %r4, 0x1
	bl sub_199da4
	mr %r25, %r3
	mr %r4, %r30
	li %r5, 0x1c
	bl memcpy
	lis %r4, 0x8000
	lis %r3, 0x801a
	stw %r25, 0x30f0(%r4)
	addi %r3, %r3, 0x2530
	lwz %r12, 0x28(%r1)
	mtctr %r12
	bctrl 
	mr %r3, %r25
	bl sub_199d9c
	b _19d0bc
_19d040:
	lbz %r5, -0x66d0(%r2)
	addi %r3, %r1, 0xe0
	lbz %r4, -0x66cf(%r2)
	li %r7, 0x0
	lbz %r9, -0x66ce(%r2)
	li %r8, 0x0
	lbz %r0, -0x66cd(%r2)
	stb %r5, 0x40(%r1)
	lwz %r10, 0x3c(%r1)
	lwz %r6, -0x6564(%r13)
	stb %r4, 0x41(%r1)
	lwz %r5, 0x38(%r1)
	srw %r6, %r10, %r6
	lwz %r4, 0x34(%r1)
	stb %r9, 0x42(%r1)
	stb %r0, 0x43(%r1)
	bl sub_15b56c
	b _19d0ac
_19d088:
	addi %r3, %r1, 0xe0
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19d0a8
	addi %r3, %r1, 0xe0
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19d0ac
_19d0a8:
	bl sub_1a15f4
_19d0ac:
	addi %r3, %r1, 0xe0
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19d088
_19d0bc:
	lwz %r12, 0x2c(%r1)
	addi %r3, %r1, 0x34
	addi %r4, %r1, 0x38
	addi %r5, %r1, 0x3c
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	bne+ _19d040
	lwz %r12, 0x30(%r1)
	mtctr %r12
	bctrl 
	lis %r6, 0x8000
	mr %r26, %r3
	lwz %r5, 0x0(%r6)
	li %r0, 0x80
	li %r3, 0x1c
	li %r4, 0x1
	stw %r5, 0x3180(%r6)
	stb %r0, 0x3184(%r6)
	bl sub_199da4
	mr %r25, %r3
	mr %r4, %r30
	li %r5, 0x1c
	bl memcpy
	lis %r3, 0x8000
	li %r0, 0x7
	stw %r25, 0x30f0(%r3)
	lis %r3, 0xcc00
	stw %r0, 0x3024(%r3)
	bl sub_19f24c
	mr %r3, %r26
	bl sub_19be48
	b _19d2cc
_19d140:
	lis %r3, 0x8130
	lwz %r6, -0x633c(%r13)
	stw %r28, -0x2010(%r3)
	li %r0, 0x1
	cmpwi %r6, 0x0
	lis %r27, 0x8000
	stw %r29, -0x2014(%r3)
	stb %r0, 0x30e2(%r27)
	beq- _19d168
	b _19d220
_19d168:
	lwz %r0, 0x30f4(%r27)
	cmpwi %r0, 0x0
	beq- _19d218
	li %r3, 0x40
	li %r4, 0x20
	bl sub_199da4
	lbz %r6, -0x66d0(%r2)
	mr %r25, %r3
	lbz %r10, -0x66cf(%r2)
	mr %r4, %r25
	lbz %r9, -0x66ce(%r2)
	addi %r3, %r1, 0xb0
	lbz %r0, -0x66cd(%r2)
	li %r5, 0x40
	lwz %r8, 0x30f4(%r27)
	li %r7, 0x0
	stb %r6, 0x24(%r1)
	srawi %r6, %r8, 2
	li %r8, 0x0
	stb %r10, 0x25(%r1)
	stb %r9, 0x26(%r1)
	stb %r0, 0x27(%r1)
	bl sub_15b56c
	b _19d1ec
_19d1c8:
	addi %r3, %r1, 0xb0
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19d1e8
	addi %r3, %r1, 0xb0
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19d1ec
_19d1e8:
	bl sub_1a15f4
_19d1ec:
	addi %r3, %r1, 0xb0
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19d1c8
	lis %r3, 0x8000
	lwz %r4, 0x38(%r25)
	lwz %r0, 0x30f4(%r3)
	add %r0, %r0, %r4
	srawi %r6, %r0, 2
	stw %r6, -0x633c(%r13)
	b _19d220
_19d218:
	li %r6, 0x910
	stw %r6, -0x633c(%r13)
_19d220:
	lwz %r8, 0x14(%r31)
	addi %r3, %r1, 0x80
	lwz %r7, 0x18(%r31)
	lis %r4, 0x8133
	addi %r0, %r8, 0x20
	lbz %r5, -0x66d0(%r2)
	srwi  %r8, %r0, 2
	lbz %r10, -0x66cf(%r2)
	lbz %r9, -0x66ce(%r2)
	add %r6, %r8, %r6
	lbz %r0, -0x66cd(%r2)
	addi %r7, %r7, 0x1f
	stb %r5, 0x20(%r1)
	clrrwi  %r5, %r7, 5
	li %r7, 0x0
	li %r8, 0x0
	stb %r10, 0x21(%r1)
	stb %r9, 0x22(%r1)
	stb %r0, 0x23(%r1)
	bl sub_15b56c
	b _19d298
_19d274:
	addi %r3, %r1, 0x80
	bl sub_15b728
	cmpwi %r3, 0x2
	bgt- _19d294
	addi %r3, %r1, 0x80
	bl sub_15b728
	cmpwi %r3, 0x0
	bge- _19d298
_19d294:
	bl sub_1a15f4
_19d298:
	addi %r3, %r1, 0x80
	bl sub_15b728
	cmpwi %r3, 0x0
	bne+ _19d274
	lwz %r4, 0x18(%r31)
	lis %r3, 0x8133
	addi %r0, %r4, 0x1f
	clrrwi  %r4, %r0, 5
	bl sub_19a3b0
	bl sub_19f24c
	bl sub_19a3e4
	lis %r3, 0x8133
	bl sub_19be48
_19d2cc:
	lwz %r10, 0x0(%r1)
	mr %r11, %r10
	bl sub_197c0
	lwz %r0, 0x4(%r10)
	mtlr %r0
	mr %r1, %r10
	blr

	.global sub_19d2e8
sub_19d2e8: # 0x801a45a8
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	stw %r31, 0x3c(%r1)
	mr %r31, %r3
	addi %r3, %r1, 0xc
	stw %r30, 0x38(%r1)
	mr %r30, %r5
	stw %r29, 0x34(%r1)
	mr %r29, %r4
	addi %r4, %r1, 0x8
	bl sub_1a0ec4
	mr %r5, %r31
	addi %r3, %r1, 0x10
	subi %r4, %r13, 0x7140
	crxor 6, 6, 6
	bl sub_9c0c
	cmpwi %r30, 0x0
	li %r31, 0x0
	beq- _19d354
	mr %r3, %r30
	b _19d348
_19d340:
	addi %r3, %r3, 0x4
	addi %r31, %r31, 0x1
_19d348:
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	bne+ _19d340
_19d354:
	addi %r0, %r31, 0x2
	li %r4, 0x1
	slwi  %r3, %r0, 2
	bl sub_199da4
	addi %r6, %r31, 0x1
	addi %r0, %r1, 0x10
	cmpwi %cr1, %r6, 0x1
	stw %r0, 0x0(%r3)
	li %r4, 0x1
	ble- cr1, _19d48c
	cmpwi %r31, 0x8
	subi %r7, %r31, 0x7
	ble- _19d458
	li %r8, 0x0
	li %r9, 0x0
	blt- cr1, _19d3a8
	lis %r5, 0x8000
	subi %r0, %r5, 0x2
	cmpw %r6, %r0
	bgt- _19d3a8
	li %r9, 0x1
_19d3a8:
	cmpwi %r9, 0x0
	beq- _19d3e4
	addi %r0, %r31, 0x1
	li %r5, 0x1
	clrrwi  %r6, %r0, 31
	addis %r0, %r6, 0x8000
	cmplwi %r0, 0x0
	bne- _19d3d8
	clrrwi  %r0, %r31, 31
	cmpw %r6, %r0
	beq- _19d3d8
	li %r5, 0x0
_19d3d8:
	cmpwi %r5, 0x0
	beq- _19d3e4
	li %r8, 0x1
_19d3e4:
	cmpwi %r8, 0x0
	beq- _19d458
	addi %r0, %r7, 0x6
	addi %r5, %r30, 0x4
	srwi  %r0, %r0, 3
	addi %r6, %r3, 0x4
	mtctr %r0
	cmpwi %r7, 0x1
	ble- _19d458
_19d408:
	lwz %r0, -0x4(%r5)
	addi %r4, %r4, 0x8
	stw %r0, 0x0(%r6)
	lwz %r0, 0x0(%r5)
	stw %r0, 0x4(%r6)
	lwz %r0, 0x4(%r5)
	stw %r0, 0x8(%r6)
	lwz %r0, 0x8(%r5)
	stw %r0, 0xc(%r6)
	lwz %r0, 0xc(%r5)
	stw %r0, 0x10(%r6)
	lwz %r0, 0x10(%r5)
	stw %r0, 0x14(%r6)
	lwz %r0, 0x14(%r5)
	stw %r0, 0x18(%r6)
	lwz %r0, 0x18(%r5)
	addi %r5, %r5, 0x20
	stw %r0, 0x1c(%r6)
	addi %r6, %r6, 0x20
	bdnz+ _19d408
_19d458:
	addi %r5, %r31, 0x1
	slwi  %r7, %r4, 2
	subf %r0, %r4, %r5
	add %r6, %r30, %r7
	add %r7, %r3, %r7
	mtctr %r0
	cmpw %r4, %r5
	bge- _19d48c
_19d478:
	lwz %r0, -0x4(%r6)
	addi %r6, %r6, 0x4
	stw %r0, 0x0(%r7)
	addi %r7, %r7, 0x4
	bdnz+ _19d478
_19d48c:
	lwz %r5, 0xc(%r1)
	mr %r9, %r3
	lwz %r6, 0x8(%r1)
	mr %r4, %r29
	addi %r8, %r31, 0x1
	li %r3, -0x1
	li %r7, 0x0
	bl sub_19caa0
	lwz %r0, 0x44(%r1)
	lwz %r31, 0x3c(%r1)
	lwz %r30, 0x38(%r1)
	lwz %r29, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.incbin "./dol.text.bin", 0x19d4c8, 0x801a650c - 0x801a4788

	.global sub_19f24c
sub_19f24c: # 0x801a650c
	mfmsr %r3
	rlwinm  %r4, %r3, 0, 17, 15
	mtmsr %r4
	extrwi  %r3, %r3, 1, 16
	blr

	.global sub_19f260
sub_19f260: # 0x801a6520
	mfmsr %r3
	ori %r4, %r3, 0x8000
	mtmsr %r4
	extrwi  %r3, %r3, 1, 16
	blr

	.global sub_19f274
sub_19f274: # 0x801a6534
	cmpwi %r3, 0x0
	mfmsr %r4
	beq- _19f288
	ori %r5, %r4, 0x8000
	b _19f28c
_19f288:
	rlwinm  %r5, %r4, 0, 17, 15
_19f28c:
	mtmsr %r5
	extrwi  %r3, %r4, 1, 16
	blr
	
	.global sub_19f298
sub_19f298: # 0x801a6558
	lwz %r5, -0x6308(%r13)
	slwi  %r0, %r3, 2
	lwzx %r3, %r5, %r0
	stwx %r4, %r5, %r0
	blr

	.global sub_19f2ac
sub_19f2ac: # 0x801a656c
	lwz %r4, -0x6308(%r13)
	slwi  %r0, %r3, 2
	lwzx %r3, %r4, %r0
	blr
	.incbin "./dol.text.bin", 0x19f2bc, 0x801a6640 - 0x801a657c

	.global sub_19f380
sub_19f380: # 0x801a6640
	cntlzw %r0, %r3
	cmpwi %r0, 0xc
	bge- _19f3ac
	cmpwi %r0, 0x8
	beq- _19f45c
	bge- _19f488
	cmpwi %r0, 0x5
	bge- _19f41c
	cmpwi %r0, 0x0
	bge- _19f3cc
	blr
_19f3ac:
	cmpwi %r0, 0x11
	bge- _19f3c0
	cmpwi %r0, 0xf
	bge- _19f510
	b _19f4cc
_19f3c0:
	cmpwi %r0, 0x1c
	bgelr- 
	b _19f544
_19f3cc:
	clrrwi. %r0, %r4, 31
	li %r5, 0x0
	bne- _19f3dc
	ori %r5, %r5, 0x1
_19f3dc:
	rlwinm. %r0, %r4, 0, 1, 1
	bne- _19f3e8
	ori %r5, %r5, 0x2
_19f3e8:
	rlwinm. %r0, %r4, 0, 2, 2
	bne- _19f3f4
	ori %r5, %r5, 0x4
_19f3f4:
	rlwinm. %r0, %r4, 0, 3, 3
	bne- _19f400
	ori %r5, %r5, 0x8
_19f400:
	rlwinm. %r0, %r4, 0, 4, 4
	bne- _19f40c
	ori %r5, %r5, 0x10
_19f40c:
	lis %r4, 0xcc00
	clrlwi  %r3, %r3, 5
	sth %r5, 0x401c(%r4)
	blr
_19f41c:
	lis %r5, 0xcc00
	rlwinm. %r0, %r4, 0, 5, 5
	lhz %r5, 0x500a(%r5)
	rlwinm  %r5, %r5, 0, 29, 22
	bne- _19f434
	ori %r5, %r5, 0x10
_19f434:
	rlwinm. %r0, %r4, 0, 6, 6
	bne- _19f440
	ori %r5, %r5, 0x40
_19f440:
	rlwinm. %r0, %r4, 0, 7, 7
	bne- _19f44c
	ori %r5, %r5, 0x100
_19f44c:
	lis %r4, 0xcc00
	rlwinm  %r3, %r3, 0, 8, 4
	sth %r5, 0x500a(%r4)
	blr
_19f45c:
	rlwinm. %r0, %r4, 0, 8, 8
	lis %r4, 0xcd00
	lwz %r5, 0x6c00(%r4)
	li %r0, -0x2d
	and %r5, %r5, %r0
	bne- _19f478
	ori %r5, %r5, 0x4
_19f478:
	lis %r4, 0xcd00
	rlwinm  %r3, %r3, 0, 9, 7
	stw %r5, 0x6c00(%r4)
	blr
_19f488:
	rlwinm. %r0, %r4, 0, 9, 9
	lis %r5, 0xcd00
	lwz %r5, 0x6800(%r5)
	li %r0, -0x2c10
	and %r5, %r5, %r0
	bne- _19f4a4
	ori %r5, %r5, 0x1
_19f4a4:
	rlwinm. %r0, %r4, 0, 10, 10
	bne- _19f4b0
	ori %r5, %r5, 0x4
_19f4b0:
	rlwinm. %r0, %r4, 0, 11, 11
	bne- _19f4bc
	ori %r5, %r5, 0x400
_19f4bc:
	lis %r4, 0xcd00
	rlwinm  %r3, %r3, 0, 12, 8
	stw %r5, 0x6800(%r4)
	blr
_19f4cc:
	rlwinm. %r0, %r4, 0, 12, 12
	lis %r5, 0xcd00
	lwz %r5, 0x6814(%r5)
	li %r0, -0xc10
	and %r5, %r5, %r0
	bne- _19f4e8
	ori %r5, %r5, 0x1
_19f4e8:
	rlwinm. %r0, %r4, 0, 13, 13
	bne- _19f4f4
	ori %r5, %r5, 0x4
_19f4f4:
	rlwinm. %r0, %r4, 0, 14, 14
	bne- _19f500
	ori %r5, %r5, 0x400
_19f500:
	lis %r4, 0xcd00
	rlwinm  %r3, %r3, 0, 15, 11
	stw %r5, 0x6814(%r4)
	blr
_19f510:
	lis %r5, 0xcd00
	rlwinm. %r0, %r4, 0, 15, 15
	lwz %r5, 0x6828(%r5)
	clrrwi  %r5, %r5, 4
	bne- _19f528
	ori %r5, %r5, 0x1
_19f528:
	rlwinm. %r0, %r4, 0, 16, 16
	bne- _19f534
	ori %r5, %r5, 0x4
_19f534:
	lis %r4, 0xcd00
	rlwinm  %r3, %r3, 0, 17, 14
	stw %r5, 0x6828(%r4)
	blr
_19f544:
	rlwinm. %r0, %r4, 0, 17, 17
	li %r5, 0xf0
	bne- _19f554
	ori %r5, %r5, 0x800
_19f554:
	rlwinm. %r0, %r4, 0, 20, 20
	bne- _19f560
	ori %r5, %r5, 0x8
_19f560:
	rlwinm. %r0, %r4, 0, 21, 21
	bne- _19f56c
	ori %r5, %r5, 0x4
_19f56c:
	rlwinm. %r0, %r4, 0, 22, 22
	bne- _19f578
	ori %r5, %r5, 0x2
_19f578:
	rlwinm. %r0, %r4, 0, 23, 23
	bne- _19f584
	ori %r5, %r5, 0x1
_19f584:
	rlwinm. %r0, %r4, 0, 24, 24
	bne- _19f590
	ori %r5, %r5, 0x100
_19f590:
	rlwinm. %r0, %r4, 0, 25, 25
	bne- _19f59c
	ori %r5, %r5, 0x1000
_19f59c:
	rlwinm. %r0, %r4, 0, 18, 18
	bne- _19f5a8
	ori %r5, %r5, 0x200
_19f5a8:
	rlwinm. %r0, %r4, 0, 19, 19
	bne- _19f5b4
	ori %r5, %r5, 0x400
_19f5b4:
	rlwinm. %r0, %r4, 0, 26, 26
	bne- _19f5c0
	ori %r5, %r5, 0x2000
_19f5c0:
	rlwinm. %r0, %r4, 0, 27, 27
	bne- _19f5cc
	ori %r5, %r5, 0x4000
_19f5cc:
	lis %r4, 0xcc00
	rlwinm  %r3, %r3, 0, 28, 16
	stw %r5, 0x3004(%r4)
	blr

	.global sub_19f5dc
sub_19f5dc: # 0x801a689c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	lis %r4, 0x8000
	mr %r30, %r3
	lwz %r29, 0xc4(%r4)
	lwz %r5, 0xc8(%r4)
	or %r0, %r29, %r5
	andc %r3, %r31, %r0
	or %r31, %r31, %r29
	stw %r31, 0xc4(%r4)
	or %r31, %r31, %r5
	b _19f62c
_19f624:
	mr %r4, %r31
	bl sub_19f380
_19f62c:
	cmpwi %r3, 0x0
	bne+ _19f624
	mr %r3, %r30
	bl sub_19f274
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_19f65c
sub_19f65c: # 0x801a691c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r3
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	lis %r4, 0x8000
	mr %r30, %r3
	lwz %r29, 0xc4(%r4)
	lwz %r5, 0xc8(%r4)
	or %r0, %r29, %r5
	and %r3, %r31, %r0
	andc %r31, %r29, %r31
	stw %r31, 0xc4(%r4)
	or %r31, %r31, %r5
	b _19f6ac
_19f6a4:
	mr %r4, %r31
	bl sub_19f380
_19f6ac:
	cmpwi %r3, 0x0
	bne+ _19f6a4
	mr %r3, %r30
	bl sub_19f274
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x19f6dc, 0x2f4
	
	.global sub_19f9d0
sub_19f9d0: # 0x801a6c90
	blr

	.global sub_19f9d4
sub_19f9d4: # 0x801a6c94
	blr

	.global sub_19f9d8
sub_19f9d8: # 0x801a6c98
	blr

	.global sub_19f9dc
sub_19f9dc: # 0x801a6c9c
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	cmpwi %r3, 0x0
	mr %r26, %r3
	mr %r27, %r4
	beq- _19fa08
	lwz %r31, 0x0(%r3)
	b _19fa0c
_19fa08:
	li %r31, 0x0
_19fa0c:
	lwz %r24, 0x28(%r4)
	lwz %r0, 0x2c(%r4)
	add %r3, %r24, %r0
	addi %r0, %r3, 0x7
	subf %r0, %r24, %r0
	srwi  %r0, %r0, 3
	mtctr %r0
	cmplw %r24, %r3
	bge- _19fa44
_19fa30:
	lwz %r0, 0x0(%r24)
	cmplw %r0, %r31
	beq- _19fa4c
	addi %r24, %r24, 0x8
	bdnz+ _19fa30
_19fa44:
	li %r3, 0x0
	b _19fc84
_19fa4c:
	mr %r3, %r26
	mr %r4, %r27
	bl sub_19f9d4
	lwz %r30, 0x4(%r24)
	li %r29, 0x0
	lis %r25, 0x8029
	b _19fc40
_19fa68:
	lhz %r0, 0x0(%r30)
	cmpwi %r31, 0x0
	add %r28, %r28, %r0
	beq- _19fa90
	lbz %r0, 0x3(%r30)
	lwz %r3, 0x10(%r26)
	slwi  %r0, %r0, 3
	lwzx %r0, %r3, %r0
	clrrwi  %r3, %r0, 1
	b _19fa94
_19fa90:
	li %r3, 0x0
_19fa94:
	cmpwi %r4, 0x6
	beq- _19fb5c
	bge- _19facc
	cmpwi %r4, 0x2
	beq- _19fb0c
	bge- _19fabc
	cmpwi %r4, 0x0
	beq- _19fc3c
	bge- _19fafc
	b _19fc30
_19fabc:
	cmpwi %r4, 0x4
	beq- _19fb38
	bge- _19fb48
	b _19fb28
_19facc:
	cmpwi %r4, 0xc9
	beq- _19fc3c
	bge- _19faf0
	cmpwi %r4, 0xa
	beq- _19fb94
	blt- _19fb78
	cmpwi %r4, 0xe
	bge- _19fc30
	b _19fbb4
_19faf0:
	cmpwi %r4, 0xcb
	bge- _19fc30
	b _19fbd4
_19fafc:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb0c:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r3, %r3, %r0
	rlwinm  %r0, %r4, 0, 30, 5
	rlwimi  %r0, %r3, 0, 6, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb28:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb38:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb48:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	srwi  %r0, %r0, 16
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb5c:
	lwz %r0, 0x4(%r30)
	add %r0, %r3, %r0
	srwi  %r3, %r0, 16
	extrwi  %r0, %r0, 1, 16
	add %r0, %r3, %r0
	sth %r0, 0x0(%r28)
	b _19fc3c
_19fb78:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r3, %r3, %r0
	rlwinm  %r0, %r4, 0, 30, 15
	rlwimi  %r0, %r3, 0, 16, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fb94:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r0, %r3, %r0
	subf %r3, %r28, %r0
	rlwinm  %r0, %r4, 0, 30, 5
	rlwimi  %r0, %r3, 0, 6, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fbb4:
	lwz %r0, 0x4(%r30)
	lwz %r4, 0x0(%r28)
	add %r0, %r3, %r0
	subf %r3, %r28, %r0
	rlwinm  %r0, %r4, 0, 30, 15
	rlwimi  %r0, %r3, 0, 16, 29
	stw %r0, 0x0(%r28)
	b _19fc3c
_19fbd4:
	lbz %r0, 0x3(%r30)
	cmpwi %r29, 0x0
	lwz %r3, 0x10(%r27)
	slwi  %r0, %r0, 3
	add %r23, %r3, %r0
	lwzx %r0, %r3, %r0
	clrrwi  %r28, %r0, 1
	beq- _19fc14
	lwz %r0, 0x0(%r29)
	lwz %r4, 0x4(%r29)
	clrrwi  %r24, %r0, 1
	mr %r3, %r24
	bl sub_19a2cc
	lwz %r4, 0x4(%r29)
	mr %r3, %r24
	bl sub_19a3b0
_19fc14:
	lwz %r0, 0x0(%r23)
	clrlwi. %r0, %r0, 31
	beq- _19fc28
	mr %r29, %r23
	b _19fc3c
_19fc28:
	li %r29, 0x0
	b _19fc3c
_19fc30:
	subi %r3, %r25, 0x3d10
	crxor 6, 6, 6
	bl sub_19b270
_19fc3c:
	addi %r30, %r30, 0x8
_19fc40:
	lbz %r4, 0x2(%r30)
	cmplwi %r4, 0xcb
	bne+ _19fa68
	cmpwi %r29, 0x0
	beq- _19fc74
	lwz %r0, 0x0(%r29)
	lwz %r4, 0x4(%r29)
	clrrwi  %r25, %r0, 1
	mr %r3, %r25
	bl sub_19a2cc
	lwz %r4, 0x4(%r29)
	mr %r3, %r25
	bl sub_19a3b0
_19fc74:
	mr %r3, %r26
	mr %r4, %r27
	bl sub_19f9d8
	li %r3, 0x1
_19fc84:
	addi %r11, %r1, 0x30
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
_19fc9c:
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	li %r0, 0x0
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r28, 0x10(%r1)
	lwz %r6, 0x1c(%r3)
	stb %r0, 0x33(%r3)
	cmplwi %r6, 0x3
	bgt- _19fd18
	cmplwi %r6, 0x2
	blt- _19fd20
	lwz %r5, 0x40(%r3)
	cmpwi %r5, 0x0
	beq- _19fcfc
	divwu %r0, %r3, %r5
	mullw %r0, %r0, %r5
	subf. %r0, %r0, %r3
	bne- _19fd18
_19fcfc:
	lwz %r5, 0x44(%r3)
	cmpwi %r5, 0x0
	beq- _19fd20
	divwu %r0, %r4, %r5
	mullw %r0, %r0, %r5
	subf. %r0, %r0, %r4
	beq- _19fd20
_19fd18:
	li %r3, 0x0
	b _19ff5c
_19fd20:
	lis %r5, 0x8000
	lwz %r6, 0x30cc(%r5)
	cmpwi %r6, 0x0
	bne- _19fd38
	stw %r3, 0x30c8(%r5)
	b _19fd3c
_19fd38:
	stw %r3, 0x4(%r6)
_19fd3c:
	li %r0, 0x0
	stw %r6, 0x8(%r3)
	lis %r5, 0x8000
	stw %r0, 0x4(%r3)
	stw %r3, 0x30cc(%r5)
	lwz %r0, 0x10(%r3)
	lwz %r6, 0x24(%r3)
	add %r7, %r0, %r3
	lwz %r5, 0x28(%r3)
	lwz %r0, 0x1c(%r3)
	add %r6, %r6, %r3
	add %r5, %r5, %r3
	stw %r7, 0x10(%r3)
	cmplwi %r0, 0x3
	stw %r6, 0x24(%r3)
	stw %r5, 0x28(%r3)
	blt- _19fd8c
	lwz %r0, 0x48(%r3)
	add %r0, %r0, %r3
	stw %r0, 0x48(%r3)
_19fd8c:
	li %r6, 0x1
	li %r5, 0x8
	b _19fdd4
_19fd98:
	lwz %r0, 0x10(%r3)
	add %r7, %r0, %r5
	lwzx %r0, %r5, %r0
	cmpwi %r0, 0x0
	beq- _19fdb8
	add %r0, %r0, %r3
	stw %r0, 0x0(%r7)
	b _19fdcc
_19fdb8:
	lwz %r0, 0x4(%r7)
	cmpwi %r0, 0x0
	beq- _19fdcc
	stb %r6, 0x33(%r3)
	stw %r4, 0x0(%r7)
_19fdcc:
	addi %r5, %r5, 0x8
	addi %r6, %r6, 0x1
_19fdd4:
	lwz %r0, 0xc(%r3)
	cmplw %r6, %r0
	blt+ _19fd98
	lwz %r5, 0x28(%r3)
	b _19fdf8
_19fde8:
	lwz %r0, 0x4(%r5)
	add %r0, %r0, %r3
	stw %r0, 0x4(%r5)
	addi %r5, %r5, 0x8
_19fdf8:
	lwz %r4, 0x28(%r3)
	lwz %r0, 0x2c(%r3)
	add %r0, %r4, %r0
	cmplw %r5, %r0
	blt+ _19fde8
	lbz %r0, 0x30(%r3)
	cmpwi %r0, 0x0
	beq- _19fe34
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x34(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x34(%r3)
_19fe34:
	lbz %r0, 0x31(%r3)
	cmpwi %r0, 0x0
	beq- _19fe5c
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x38(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x38(%r3)
_19fe5c:
	lbz %r0, 0x32(%r3)
	cmpwi %r0, 0x0
	beq- _19fe84
	lwz %r4, 0x10(%r3)
	clrlslwi  %r0, %r0, 24, 3
	lwz %r5, 0x3c(%r3)
	lwzx %r0, %r4, %r0
	clrrwi  %r0, %r0, 1
	add %r0, %r5, %r0
	stw %r0, 0x3c(%r3)
_19fe84:
	lis %r4, 0x8000
	lwz %r4, 0x30d0(%r4)
	cmpwi %r4, 0x0
	beq- _19fea0
	lwz %r0, 0x14(%r3)
	add %r0, %r0, %r4
	stw %r0, 0x14(%r3)
_19fea0:
	mr %r4, %r29
	li %r3, 0x0
	bl sub_19f9dc
	lis %r3, 0x8000
	lwz %r28, 0x30c8(%r3)
	b _19fedc
_19feb8:
	mr %r3, %r29
	mr %r4, %r28
	bl sub_19f9dc
	cmplw %r28, %r29
	beq- _19fed8
	mr %r3, %r28
	mr %r4, %r29
	bl sub_19f9dc
_19fed8:
	lwz %r28, 0x4(%r28)
_19fedc:
	cmpwi %r28, 0x0
	bne+ _19feb8
	cmpwi %r31, 0x0
	beq- _19ff40
	lwz %r4, 0x28(%r29)
	lwz %r0, 0x2c(%r29)
	mr %r5, %r4
	add %r3, %r4, %r0
	addi %r0, %r3, 0x7
	subf %r0, %r4, %r0
	srwi  %r0, %r0, 3
	mtctr %r0
	cmplw %r4, %r3
	bge- _19ff40
_19ff14:
	lwz %r3, 0x0(%r5)
	cmpwi %r3, 0x0
	beq- _19ff2c
	lwz %r0, 0x0(%r29)
	cmplw %r3, %r0
	bne- _19ff38
_19ff2c:
	subf %r0, %r4, %r5
	stw %r0, 0x2c(%r29)
	b _19ff40
_19ff38:
	addi %r5, %r5, 0x8
	bdnz+ _19ff14
_19ff40:
	lwz %r5, 0x20(%r29)
	mr %r3, %r30
	li %r4, 0x0
	bl memset
	mr %r3, %r29
	bl sub_19f9d0
	li %r3, 0x1
_19ff5c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_19ff7c
sub_19ff7c: # 0x801a723c
	li %r5, 0x0
	b _19fc9c
	
	.global t1_19ff84
t1_19ff84:
	.incbin "basemain.dol", 0x1a24e4, 0x18
	
	.global sub_19ff9c
sub_19ff9c: # 0x801a725c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_1a2540
	addi %r3, %r29, 0x8
	bl sub_1a2540
	li %r0, 0x0
	stw %r30, 0x10(%r29)
	stw %r31, 0x14(%r29)
	stw %r0, 0x18(%r29)
	stw %r0, 0x1c(%r29)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_19fffc
sub_19fffc: # 0x801a72bc
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r5
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r4
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_19f24c
	mr %r30, %r3
	clrlwi  %r31, %r31, 31
	b _1a0054
_1a0034:
	cmpwi %r31, 0x0
	bne- _1a004c
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x0
	b _1a00a4
_1a004c:
	mr %r3, %r28
	bl sub_1a3658
_1a0054:
	lwz %r4, 0x1c(%r28)
	lwz %r6, 0x14(%r28)
	cmpw %r6, %r4
	ble+ _1a0034
	lwz %r0, 0x18(%r28)
	addi %r3, %r28, 0x8
	lwz %r5, 0x10(%r28)
	add %r4, %r0, %r4
	divw %r0, %r4, %r6
	mullw %r0, %r0, %r6
	subf %r0, %r0, %r4
	slwi  %r0, %r0, 2
	stwx %r29, %r5, %r0
	lwz %r4, 0x1c(%r28)
	addi %r0, %r4, 0x1
	stw %r0, 0x1c(%r28)
	bl sub_1a3744
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x1
_1a00a4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a00c4, 0x801a753c - 0x801a7384

	.global sub_1a027c
sub_1a027c: # 0x801a753c
	lis %r3, 0x8000
	lwz %r3, 0x3118(%r3)
	blr
	.incbin "./dol.text.bin", 0x1a0288, 0x801a7bf4 - 0x801a7548

	.global sub_1a0934
sub_1a0934: # 0x801a7bf4
	clrlwi  %r3, %r3, 2
	mtspr 26, %r3
	mfmsr %r3
	rlwinm  %r3, %r3, 0, 28, 25
	mtspr 27, %r3
	rfi

	.global sub_1a094c
sub_1a094c: # 0x801a7c0c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0x8000
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lwz %r0, 0x3138(%r3)
	cmpwi %r0, 0x0
	bne- _1a0988
	lis %r0, 0x801a
	addic. %r0, %r0, 0x7530
	bne- _1a0988
	lis %r3, 0x801a
	addi %r3, %r3, 0x7ba4
	bl sub_1a0934
	b _1a0a88
_1a0988:
	lis %r3, 0x8000
	lwz %r31, 0x3104(%r3)
	lwz %r0, 0x3100(%r3)
	cmplw %r31, %r0
	bge- _1a09c0
	addis %r0, %r31, 0xfe80
	cmplwi %r0, 0x0
	bne- _1a09c0
	lis %r3, 0x8180
	lis %r4, 0x180
	bl sub_19a2a0
	li %r0, 0x2
	lis %r3, 0xcc00
	sth %r0, 0x4028(%r3)
_1a09c0:
	lis %r0, 0x180
	cmplw %r31, %r0
	bgt- _1a09dc
	lis %r3, 0x801a
	addi %r3, %r3, 0x76ac
	bl sub_1a0934
	b _1a09f4
_1a09dc:
	lis %r0, 0x300
	cmplw %r31, %r0
	bgt- _1a09f4
	lis %r3, 0x801a
	addi %r3, %r3, 0x772c
	bl sub_1a0934
_1a09f4:
	lis %r3, 0x8000
	lis %r0, 0x400
	lwz %r4, 0x311c(%r3)
	lwz %r3, 0x3120(%r3)
	cmplw %r4, %r0
	bgt- _1a0a54
	lis %r0, 0x9340
	cmplw %r3, %r0
	bgt- _1a0a28
	lis %r3, 0x801a
	addi %r3, %r3, 0x77ac
	bl sub_1a0934
	b _1a0a88
_1a0a28:
	lis %r0, 0x9380
	cmplw %r3, %r0
	bgt- _1a0a44
	lis %r3, 0x801a
	addi %r3, %r3, 0x788c
	bl sub_1a0934
	b _1a0a88
_1a0a44:
	lis %r3, 0x801a
	addi %r3, %r3, 0x796c
	bl sub_1a0934
	b _1a0a88
_1a0a54:
	lis %r0, 0x800
	cmplw %r4, %r0
	bgt- _1a0a88
	lis %r0, 0x9700
	cmplw %r3, %r0
	bgt- _1a0a7c
	lis %r3, 0x801a
	addi %r3, %r3, 0x7a18
	bl sub_1a0934
	b _1a0a88
_1a0a7c:
	lis %r3, 0x801a
	addi %r3, %r3, 0x7af8
	bl sub_1a0934
_1a0a88:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a0a9c
sub_1a0a9c: # 0x801a7d5c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	bl sub_19f24c
	lis %r4, 0xcc00
	li %r0, 0x0
	sth %r0, 0x4020(%r4)
	li %r0, 0xff
	mr %r30, %r3
	lis %r3, 0xf000
	sth %r0, 0x4010(%r4)
	bl sub_19f5dc
	lis %r31, 0x801a
	li %r3, 0x0
	addi %r4, %r31, 0x759c
	bl sub_19f298
	addi %r4, %r31, 0x759c
	li %r3, 0x1
	bl sub_19f298
	addi %r4, %r31, 0x759c
	li %r3, 0x2
	bl sub_19f298
	addi %r4, %r31, 0x759c
	li %r3, 0x3
	bl sub_19f298
	addi %r4, %r31, 0x759c
	li %r3, 0x4
	bl sub_19f298
	lis %r3, 0x8029
	subi %r3, %r3, 0x3ce8
	bl sub_1a0ed8
	bl sub_1a094c
	lis %r3, 0x800
	bl sub_19f65c
	mr %r3, %r30
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a0b4c
sub_1a0b4c: # 0x801a7e0c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_1a2540
	li %r0, 0x0
	stw %r0, 0x8(%r31)
	stw %r0, 0xc(%r31)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a0b84
sub_1a0b84: # 0x801a7e44
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_19f24c
	mr %r29, %r3
	bl sub_1a2550
	mr %r30, %r3
	li %r31, 0x0
_1a0bb8:
	lwz %r0, 0x8(%r28)
	cmpwi %r0, 0x0
	bne- _1a0c00
	lwz %r3, 0xc(%r28)
	stw %r30, 0x8(%r28)
	addi %r0, %r3, 0x1
	stw %r0, 0xc(%r28)
	lwz %r3, 0x2f8(%r30)
	cmpwi %r3, 0x0
	bne- _1a0be8
	stw %r28, 0x2f4(%r30)
	b _1a0bec
_1a0be8:
	stw %r28, 0x10(%r3)
_1a0bec:
	li %r0, 0x0
	stw %r3, 0x14(%r28)
	stw %r0, 0x10(%r28)
	stw %r28, 0x2f8(%r30)
	b _1a0c38
_1a0c00:
	cmplw %r0, %r30
	bne- _1a0c18
	lwz %r3, 0xc(%r28)
	addi %r0, %r3, 0x1
	stw %r0, 0xc(%r28)
	b _1a0c38
_1a0c18:
	stw %r28, 0x2f0(%r30)
	lwz %r3, 0x8(%r28)
	lwz %r4, 0x2d0(%r30)
	bl sub_1a2858
	mr %r3, %r28
	bl sub_1a3658
	stw %r31, 0x2f0(%r30)
	b _1a0bb8
_1a0c38:
	mr %r3, %r29
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a0c60
sub_1a0c60: # 0x801a7f20
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	mr %r31, %r3
	bl sub_1a2550
	lwz %r0, 0x8(%r29)
	mr %r30, %r3
	cmplw %r0, %r3
	bne- _1a0d04
	lwz %r0, 0xc(%r29)
	subic. %r0, %r0, 0x1
	stw %r0, 0xc(%r29)
	bne- _1a0d04
	lwz %r4, 0x10(%r29)
	lwz %r5, 0x14(%r29)
	cmpwi %r4, 0x0
	bne- _1a0cc0
	stw %r5, 0x2f8(%r3)
	b _1a0cc4
_1a0cc0:
	stw %r5, 0x14(%r4)
_1a0cc4:
	cmpwi %r5, 0x0
	bne- _1a0cd4
	stw %r4, 0x2f4(%r3)
	b _1a0cd8
_1a0cd4:
	stw %r4, 0x10(%r5)
_1a0cd8:
	li %r0, 0x0
	stw %r0, 0x8(%r29)
	lwz %r4, 0x2d0(%r3)
	lwz %r0, 0x2d4(%r3)
	cmpw %r4, %r0
	bge- _1a0cfc
	mr %r3, %r30
	bl sub_1a2668
	stw %r3, 0x2d0(%r30)
_1a0cfc:
	mr %r3, %r29
	bl sub_1a3744
_1a0d04:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global sub_1a0d28
sub_1a0d28: # 0x801a7fe8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	li %r31, 0x0
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	b _1a0d70
_1a0d48:
	lwz %r4, 0x10(%r3)
	cmpwi %r4, 0x0
	bne- _1a0d5c
	stw %r31, 0x2f8(%r30)
	b _1a0d60
_1a0d5c:
	stw %r31, 0x14(%r4)
_1a0d60:
	stw %r4, 0x2f4(%r30)
	stw %r31, 0xc(%r3)
	stw %r31, 0x8(%r3)
	bl sub_1a3744
_1a0d70:
	lwz %r3, 0x2f4(%r30)
	cmpwi %r3, 0x0
	bne+ _1a0d48
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_1a0d94
sub_1a0d94: # 0x801a8054
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	mr %r31, %r3
	bl sub_1a2550
	lwz %r0, 0x8(%r29)
	cmpwi %r0, 0x0
	bne- _1a0e08
	lwz %r4, 0xc(%r29)
	stw %r3, 0x8(%r29)
	addi %r0, %r4, 0x1
	stw %r0, 0xc(%r29)
	lwz %r4, 0x2f8(%r3)
	cmpwi %r4, 0x0
	bne- _1a0dec
	stw %r29, 0x2f4(%r3)
	b _1a0df0
_1a0dec:
	stw %r29, 0x10(%r4)
_1a0df0:
	li %r0, 0x0
	stw %r4, 0x14(%r29)
	li %r30, 0x1
	stw %r0, 0x10(%r29)
	stw %r29, 0x2f8(%r3)
	b _1a0e28
_1a0e08:
	cmplw %r0, %r3
	bne- _1a0e24
	lwz %r3, 0xc(%r29)
	li %r30, 0x1
	addi %r0, %r3, 0x1
	stw %r0, 0xc(%r29)
	b _1a0e28
_1a0e24:
	li %r30, 0x0
_1a0e28:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a0e50, 0x801a8118 - 0x801a8110

	.global sub_1a0e58
sub_1a0e58: # 0x801a8118
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	mr %r31, %r4
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r3, 0x8128
	bl sub_199d9c
	lis %r3, 0x812f
	bl sub_199d84
	li %r0, 0x0
	lis %r6, 0x8000
	stw %r0, 0x8(%r1)
	mr %r3, %r31
	oris %r4, %r30, 0x8000
	addi %r5, %r1, 0x8
	lwz %r0, 0x3194(%r6)
	stw %r0, -0x6340(%r13)
	bl sub_19d2e8
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a0ec4
sub_1a0ec4: # 0x801a8184
	lwz %r0, -0x6300(%r13)
	stw %r0, 0x0(%r3)
	lwz %r0, -0x62fc(%r13)
	stw %r0, 0x0(%r4)
	blr

	.global sub_1a0ed8
sub_1a0ed8: # 0x801a8198
	lwz %r5, -0x62f0(%r13)
	b _1a0ee4
_1a0ee0:
	lwz %r5, 0x8(%r5)
_1a0ee4:
	cmpwi %r5, 0x0
	beq- _1a0efc
	lwz %r4, 0x4(%r5)
	lwz %r0, 0x4(%r3)
	cmplw %r4, %r0
	ble+ _1a0ee0
_1a0efc:
	cmpwi %r5, 0x0
	bne- _1a0f38
	subi %r4, %r13, 0x62f0
	lwz %r4, 0x4(%r4)
	cmpwi %r4, 0x0
	bne- _1a0f1c
	stw %r3, -0x62f0(%r13)
	b _1a0f20
_1a0f1c:
	stw %r3, 0x8(%r4)
_1a0f20:
	li %r0, 0x0
	stw %r4, 0xc(%r3)
	subi %r4, %r13, 0x62f0
	stw %r0, 0x8(%r3)
	stw %r3, 0x4(%r4)
	blr
_1a0f38:
	stw %r5, 0x8(%r3)
	lwz %r4, 0xc(%r5)
	stw %r3, 0xc(%r5)
	cmpwi %r4, 0x0
	stw %r4, 0xc(%r3)
	bne- _1a0f58
	stw %r3, -0x62f0(%r13)
	blr
_1a0f58:
	stw %r3, 0x8(%r4)
	blr
	.incbin "./dol.text.bin", 0x1a0f60, 0x801a82d0 - 0x801a8220

	.global sub_1a1010
sub_1a1010: # 0x801a82d0
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	cmpwi %r3, 0x5
	mr %r27, %r3
	bge- _1a103c
	cmpwi %r3, 0x0
	beq- _1a1044
	b _1a104c
_1a103c:
	cmpwi %r3, 0x7
	bge- _1a104c
_1a1044:
	li %r28, 0x0
	b _1a1050
_1a104c:
	li %r28, 0x1
_1a1050:
	bl sub_19a1c0
	cmpwi %r28, 0x0
	bne- _1a1068
	li %r3, 0x1
	bl sub_1a8dc4
	mr %r29, %r3
_1a1068:
	lwz %r30, -0x62f0(%r13)
	li %r3, 0x0
	li %r31, 0x0
	b _1a10b4
_1a1078:
	cmpwi %r31, 0x0
	beq- _1a108c
	lwz %r0, 0x4(%r30)
	cmplw %r3, %r0
	bne- _1a10bc
_1a108c:
	lwz %r12, 0x0(%r30)
	mr %r4, %r27
	li %r3, 0x0
	mtctr %r12
	bctrl 
	cntlzw %r0, %r3
	lwz %r3, 0x4(%r30)
	srwi  %r0, %r0, 5
	lwz %r30, 0x8(%r30)
	or %r31, %r31, %r0
_1a10b4:
	cmpwi %r30, 0x0
	bne+ _1a1078
_1a10bc:
	bl sub_1a1d54
	cntlzw %r0, %r3
	srwi  %r0, %r0, 5
	or. %r31, %r31, %r0
	bne+ _1a1068
_1a10d0:
	bl sub_1a1d54
	cmpwi %r3, 0x0
	beq+ _1a10d0
	bl sub_19f24c
	lwz %r31, -0x62f0(%r13)
	li %r3, 0x0
	li %r30, 0x0
	b _1a112c
_1a10f0:
	cmpwi %r30, 0x0
	beq- _1a1104
	lwz %r0, 0x4(%r31)
	cmplw %r3, %r0
	bne- _1a1134
_1a1104:
	lwz %r12, 0x0(%r31)
	mr %r4, %r27
	li %r3, 0x1
	mtctr %r12
	bctrl 
	cntlzw %r0, %r3
	lwz %r3, 0x4(%r31)
	srwi  %r0, %r0, 5
	lwz %r31, 0x8(%r31)
	or %r30, %r30, %r0
_1a112c:
	cmpwi %r31, 0x0
	bne+ _1a10f0
_1a1134:
	bl sub_1a1d54
	bl sub_19a50c
	cmpwi %r28, 0x0
	bne- _1a114c
	mr %r3, %r29
	bl sub_1a8dc4
_1a114c:
	lis %r3, 0x8000
	lwz %r3, 0xdc(%r3)
	b _1a1180
_1a1158:
	lhz %r0, 0x2c8(%r3)
	lwz %r30, 0x2fc(%r3)
	cmpwi %r0, 0x4
	beq- _1a1178
	bge- _1a117c
	cmpwi %r0, 0x1
	beq- _1a1178
	b _1a117c
_1a1178:
	bl sub_1a2e74
_1a117c:
	mr %r3, %r30
_1a1180:
	cmpwi %r3, 0x0
	bne+ _1a1158
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a11a0, 0x801a84cc - 0x801a8460

	.global sub_1a120c
sub_1a120c: # 0x801a84cc
	stwu %r1, -0x40(%r1)
	mflr %r0
	li %r4, 0x0
	li %r5, 0x2
	stw %r0, 0x44(%r1)
	addi %r3, %r1, 0x8
	stw %r31, 0x3c(%r1)
	bl memset
	bl sub_1a8e20
_1a1230:
	bl sub_1a8ec0
	cmplwi %r3, 0x1
	beq+ _1a1230
	addi %r3, %r1, 0x8
	bl sub_1aa9a0
	bl sub_1a4f14
	bl sub_1a4820
	bl sub_15c100
	addi %r3, %r1, 0x18
	bl sub_1a51e0
	lbz %r31, 0x1e(%r1)
	bl sub_15becc
	cmplwi %r3, 0x2
	beq- _1a1270
	li %r3, 0x3
	b _1a12a0
_1a1270:
	cmplwi %r31, 0x1
	bne- _1a129c
	addi %r3, %r1, 0xc
	bl sub_1a1f9c
	cmpwi %r3, 0x0
	beq- _1a129c
	lwz %r0, 0xc(%r1)
	cmpwi %r0, 0x0
	bne- _1a129c
	li %r3, 0x1
	b _1a12a0
_1a129c:
	li %r3, 0x2
_1a12a0:
	lbz %r0, 0x8(%r1)
	stb %r3, 0x1e(%r1)
	cmplwi %r0, 0x1
	bne- _1a12bc
	li %r0, 0x5
	stb %r0, 0x1d(%r1)
	b _1a12c4
_1a12bc:
	li %r0, 0x1
	stb %r0, 0x1d(%r1)
_1a12c4:
	bl sub_1a20b8
	addi %r3, %r1, 0x18
	bl sub_1a50fc
	addi %r3, %r1, 0x10
	bl sub_197f70
	lbz %r0, 0x8(%r1)
	cmplwi %r0, 0x1
	bne- _1a1304
	li %r0, 0x1
	stw %r0, -0x62f4(%r13)
	bl sub_1a2588
	li %r3, 0x5
	bl sub_1a1010
	bl sub_1a25c4
	bl sub_19c528
	b _1a1314
_1a1304:
	bl sub_1a2588
	li %r3, 0x2
	bl sub_1a1010
	bl sub_1a4600
_1a1314:
	lwz %r0, 0x44(%r1)
	lwz %r31, 0x3c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_1a1328
sub_1a1328: # 0x801a85e8
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_199238
	mr %r31, %r3
	bl sub_1a4f14
	bl sub_1a4820
	clrlwi  %r0, %r31, 24
	cmplwi %r0, 0x81
	bne- _1a1374
	bl sub_1a2588
	li %r3, 0x4
	bl sub_1a1010
	bl sub_1a25c4
	bl sub_1a64a0
	b _1a1398
_1a1374:
	cmplwi %r0, 0x80
	bne- _1a1398
	bl sub_1a2588
	li %r3, 0x4
	bl sub_1a1010
	bl sub_1a25c4
	lwz %r4, -0x62f8(%r13)
	mr %r3, %r30
	bl sub_1a0e58
_1a1398:
	bl sub_1a2588
	li %r3, 0x1
	bl sub_1a1010
	lwz %r0, -0x63a4(%r13)
	cmpwi %r0, 0x0
	bne- _1a13bc
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	beq- _1a13c0
_1a13bc:
	bl sub_1a44e8
_1a13c0:
	bl sub_1a4678
	lis %r3, 0x8029
	lis %r5, 0x8029
	subi %r3, %r3, 0x3cd8
	li %r4, 0x3d0
	subi %r5, %r5, 0x3ccc
	crxor 6, 6, 6
	bl sub_19b300
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1a13f8, 0x801a88b4 - 0x801a86b8

	.global sub_1a15f4
sub_1a15f4: # 0x801a88b4
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r3, %r1, 0x8
	stw %r31, 0x2c(%r1)
	lis %r31, 0x8029
	subi %r31, %r31, 0x3cd8
	bl sub_1a51e0
	li %r3, 0x2
	li %r0, 0x3
	stb %r3, 0xe(%r1)
	stb %r0, 0xd(%r1)
	bl sub_1a20b8
	addi %r3, %r1, 0x8
	bl sub_1a50fc
	bl sub_19c528
	bl sub_1a2588
	bl sub_1b59ec
	lwz %r0, -0x63a4(%r13)
	cmpwi %r0, 0x0
	bne- _1a1654
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	beq- _1a1658
_1a1654:
	bl sub_1a44e8
_1a1658:
	bl sub_1a4678
	addi %r3, %r31, 0x0
	addi %r5, %r31, 0xc
	li %r4, 0x3d0
	crxor 6, 6, 6
	bl sub_19b300
	addi %r3, %r31, 0x0
	addi %r5, %r31, 0x1d8
	li %r4, 0x3b8
	crxor 6, 6, 6
	bl sub_19b300
	lwz %r0, 0x34(%r1)
	lwz %r31, 0x2c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_1a1698
sub_1a1698: # 0x801a8958
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	lwz %r0, -0x63a4(%r13)
	cmpwi %r0, 0x0
	bne- _1a16bc
	lwz %r0, -0x6334(%r13)
	cmpwi %r0, 0x0
	beq- _1a16c0
_1a16bc:
	bl sub_1a44e8
_1a16c0:
	bl sub_1a4678
	lis %r3, 0x8029
	lis %r5, 0x8029
	subi %r3, %r3, 0x3cd8
	li %r4, 0x3d0
	subi %r5, %r5, 0x3ccc
	crxor 6, 6, 6
	bl sub_19b300
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x1a16f0, 0x30
	
	.global t1_1a1720
t1_1a1720:
	.incbin "basemain.dol", 0x1a3c80, 0x634
	
	.global sub_1a1d54
sub_1a1d54: # 0x801a9014
	lis %r3, 0x8034
	addi %r3, %r3, 0x30c0
	lwz %r3, 0x4c(%r3)
	blr
	.incbin "./dol.text.bin", 0x1a1d64, 0x801a925c - 0x801a9024

	.global sub_1a1f9c
sub_1a1f9c: # 0x801a925c
	stwu %r1, -0x20(%r1)
	mflr %r0
	li %r4, 0x1
	li %r5, 0x0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	li %r3, 0x0
	bl sub_161e04
	cmpwi %r3, 0x0
	bne- _1a1fd4
	li %r3, 0x0
	b _1a20a0
_1a1fd4:
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x3
	bl sub_161670
	cmpwi %r3, 0x0
	bne- _1a1ffc
	li %r3, 0x0
	bl sub_161f00
	li %r3, 0x0
	b _1a20a0
_1a1ffc:
	lis %r3, 0x2100
	addi %r4, %r1, 0x8
	addi %r0, %r3, 0x800
	li %r5, 0x4
	stw %r0, 0x8(%r1)
	li %r3, 0x0
	li %r6, 0x1
	li %r7, 0x0
	bl sub_160c08
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r31, %r0, 5
	bl sub_161020
	cntlzw %r0, %r3
	addi %r4, %r1, 0x8
	srwi  %r0, %r0, 5
	li %r3, 0x0
	or %r31, %r31, %r0
	li %r5, 0x4
	li %r6, 0x0
	li %r7, 0x0
	bl sub_160c08
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_161020
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_1617a0
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_161f00
	lwz %r4, 0x8(%r1)
	cntlzw %r0, %r31
	srwi  %r3, %r0, 5
	stw %r4, 0x0(%r30)
_1a20a0:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a20b8
sub_1a20b8: # 0x801a9378
	stwu %r1, -0x20(%r1)
	mflr %r0
	li %r3, 0x0
	li %r4, 0x1
	stw %r0, 0x24(%r1)
	li %r0, 0x0
	li %r5, 0x0
	stw %r31, 0x1c(%r1)
	stw %r0, 0x8(%r1)
	bl sub_161e04
	cmpwi %r3, 0x0
	bne- _1a20f0
	li %r3, 0x0
	b _1a21b4
_1a20f0:
	li %r3, 0x0
	li %r4, 0x1
	li %r5, 0x3
	bl sub_161670
	cmpwi %r3, 0x0
	bne- _1a2118
	li %r3, 0x0
	bl sub_161f00
	li %r3, 0x0
	b _1a21b4
_1a2118:
	lis %r3, 0xa100
	addi %r4, %r1, 0xc
	addi %r0, %r3, 0x800
	li %r5, 0x4
	stw %r0, 0xc(%r1)
	li %r3, 0x0
	li %r6, 0x1
	li %r7, 0x0
	bl sub_160c08
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r31, %r0, 5
	bl sub_161020
	cntlzw %r0, %r3
	addi %r4, %r1, 0x8
	srwi  %r0, %r0, 5
	li %r3, 0x0
	or %r31, %r31, %r0
	li %r5, 0x4
	li %r6, 0x1
	li %r7, 0x0
	bl sub_160c08
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_161020
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_1617a0
	cntlzw %r0, %r3
	li %r3, 0x0
	srwi  %r0, %r0, 5
	or %r31, %r31, %r0
	bl sub_161f00
	cntlzw %r0, %r31
	srwi  %r3, %r0, 5
_1a21b4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x1a21c8, 0x801a9800 - 0x801a9488
	
	.global sub_1a2540
sub_1a2540: # 0x801a9800
	li %r0, 0x0
	stw %r0, 0x4(%r3)
	stw %r0, 0x0(%r3)
	blr

	.global sub_1a2550
sub_1a2550: # 0x801a9810
	lis %r3, 0x8000
	lwz %r3, 0xe4(%r3)
	blr
	
	.global t1_1a255c
t1_1a255c:
	.incbin "basemain.dol", 0x1a4abc, 0x2c
	
	.global sub_1a2588
sub_1a2588: # 0x801a9848
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lwz %r31, -0x62e8(%r13)
	addi %r0, %r31, 0x1
	stw %r0, -0x62e8(%r13)
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a25c4
sub_1a25c4: # 0x801a9884
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lwz %r31, -0x62e8(%r13)
	subi %r0, %r31, 0x1
	stw %r0, -0x62e8(%r13)
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a2600
sub_1a2600: # 0x801a98c0
	lwz %r5, 0x2e0(%r3)
	lwz %r4, 0x2dc(%r3)
	cmpwi %r5, 0x0
	lwz %r6, 0x2e4(%r3)
	bne- _1a261c
	stw %r6, 0x4(%r4)
	b _1a2620
_1a261c:
	stw %r6, 0x2e4(%r5)
_1a2620:
	cmpwi %r6, 0x0
	bne- _1a2630
	stw %r5, 0x0(%r4)
	b _1a2634
_1a2630:
	stw %r5, 0x2e0(%r6)
_1a2634:
	lwz %r0, 0x0(%r4)
	cmpwi %r0, 0x0
	bne- _1a265c
	lwz %r0, 0x2d0(%r3)
	li %r4, 0x1
	lwz %r5, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r4, %r0
	andc %r0, %r5, %r0
	stw %r0, -0x62e0(%r13)
_1a265c:
	li %r0, 0x0
	stw %r0, 0x2dc(%r3)
	blr

	.global sub_1a2668
sub_1a2668: # 0x801a9928
	lwz %r4, 0x2d4(%r3)
	lwz %r3, 0x2f4(%r3)
	b _1a2694
_1a2674:
	lwz %r5, 0x0(%r3)
	cmpwi %r5, 0x0
	beq- _1a2690
	lwz %r0, 0x2d0(%r5)
	cmpw %r0, %r4
	bge- _1a2690
	mr %r4, %r0
_1a2690:
	lwz %r3, 0x10(%r3)
_1a2694:
	cmpwi %r3, 0x0
	bne+ _1a2674
	mr %r3, %r4
	blr

	.global sub_1a26a4
sub_1a26a4: # 0x801a9964
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lhz %r0, 0x2c8(%r3)
	cmpwi %r0, 0x3
	beq- _1a283c
	bge- _1a26e0
	cmpwi %r0, 0x1
	beq- _1a26ec
	bge- _1a2830
	b _1a283c
_1a26e0:
	cmpwi %r0, 0x5
	bge- _1a283c
	b _1a2758
_1a26ec:
	bl sub_1a2600
	lis %r3, 0x8034
	slwi  %r0, %r31, 3
	addi %r3, %r3, 0x3430
	stw %r31, 0x2d0(%r30)
	add %r3, %r3, %r0
	stw %r3, 0x2dc(%r30)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a271c
	stw %r30, 0x0(%r3)
	b _1a2720
_1a271c:
	stw %r30, 0x2e0(%r4)
_1a2720:
	li %r0, 0x0
	stw %r4, 0x2e4(%r30)
	lwz %r4, 0x2dc(%r30)
	li %r3, 0x1
	stw %r0, 0x2e0(%r30)
	stw %r30, 0x4(%r4)
	lwz %r0, 0x2d0(%r30)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
	b _1a283c
_1a2758:
	lwz %r6, 0x2e0(%r3)
	lwz %r7, 0x2e4(%r3)
	cmpwi %r6, 0x0
	bne- _1a2774
	lwz %r5, 0x2dc(%r3)
	stw %r7, 0x4(%r5)
	b _1a2778
_1a2774:
	stw %r7, 0x2e4(%r6)
_1a2778:
	cmpwi %r7, 0x0
	bne- _1a278c
	lwz %r5, 0x2dc(%r3)
	stw %r6, 0x0(%r5)
	b _1a2790
_1a278c:
	stw %r6, 0x2e0(%r7)
_1a2790:
	stw %r4, 0x2d0(%r3)
	lwz %r5, 0x2dc(%r3)
	lwz %r6, 0x0(%r5)
	b _1a27a4
_1a27a0:
	lwz %r6, 0x2e0(%r6)
_1a27a4:
	cmpwi %r6, 0x0
	beq- _1a27bc
	lwz %r4, 0x2d0(%r6)
	lwz %r0, 0x2d0(%r3)
	cmpw %r4, %r0
	ble+ _1a27a0
_1a27bc:
	cmpwi %r6, 0x0
	bne- _1a27f4
	lwz %r4, 0x4(%r5)
	cmpwi %r4, 0x0
	bne- _1a27d8
	stw %r3, 0x0(%r5)
	b _1a27dc
_1a27d8:
	stw %r3, 0x2e0(%r4)
_1a27dc:
	li %r0, 0x0
	stw %r4, 0x2e4(%r3)
	lwz %r4, 0x2dc(%r3)
	stw %r0, 0x2e0(%r3)
	stw %r3, 0x4(%r4)
	b _1a281c
_1a27f4:
	stw %r6, 0x2e0(%r3)
	lwz %r4, 0x2e4(%r6)
	stw %r3, 0x2e4(%r6)
	cmpwi %r4, 0x0
	stw %r4, 0x2e4(%r3)
	bne- _1a2818
	lwz %r4, 0x2dc(%r3)
	stw %r3, 0x0(%r4)
	b _1a281c
_1a2818:
	stw %r3, 0x2e0(%r4)
_1a281c:
	lwz %r3, 0x2f0(%r3)
	cmpwi %r3, 0x0
	beq- _1a283c
	lwz %r3, 0x8(%r3)
	b _1a2840
_1a2830:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	stw %r4, 0x2d0(%r3)
_1a283c:
	li %r3, 0x0
_1a2840:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a2858
sub_1a2858: # 0x801a9b18
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
_1a286c:
	lwz %r0, 0x2cc(%r3)
	cmpwi %r0, 0x0
	bgt- _1a2894
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r31
	ble- _1a2894
	mr %r4, %r31
	bl sub_1a26a4
	cmpwi %r3, 0x0
	bne+ _1a286c
_1a2894:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a28a8
sub_1a28a8: # 0x801a9b68
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r0, -0x62e8(%r13)
	cmpwi %r0, 0x0
	ble- _1a28d4
	li %r3, 0x0
	b _1a2ab8
_1a28d4:
	bl sub_19ab6c
	lis %r4, 0x8000
	lwz %r5, 0xe4(%r4)
	cmplw %r3, %r5
	beq- _1a28f0
	li %r3, 0x0
	b _1a2ab8
_1a28f0:
	cmpwi %r5, 0x0
	beq- _1a29b8
	lhz %r0, 0x2c8(%r5)
	cmplwi %r0, 0x2
	bne- _1a2994
	cmpwi %r30, 0x0
	bne- _1a2928
	lwz %r3, -0x62e0(%r13)
	lwz %r0, 0x2d0(%r5)
	cntlzw %r3, %r3
	cmpw %r0, %r3
	bgt- _1a2928
	li %r3, 0x0
	b _1a2ab8
_1a2928:
	li %r0, 0x1
	lis %r3, 0x8034
	sth %r0, 0x2c8(%r5)
	addi %r3, %r3, 0x3430
	lwz %r0, 0x2d0(%r5)
	slwi  %r0, %r0, 3
	add %r3, %r3, %r0
	stw %r3, 0x2dc(%r5)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a295c
	stw %r5, 0x0(%r3)
	b _1a2960
_1a295c:
	stw %r5, 0x2e0(%r4)
_1a2960:
	stw %r4, 0x2e4(%r5)
	li %r0, 0x0
	li %r3, 0x1
	stw %r0, 0x2e0(%r5)
	lwz %r4, 0x2dc(%r5)
	stw %r5, 0x4(%r4)
	lwz %r0, 0x2d0(%r5)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
_1a2994:
	lhz %r0, 0x1a2(%r5)
	rlwinm. %r0, %r0, 0, 30, 30
	bne- _1a29b8
	mr %r3, %r5
	bl sub_19ab78
	cmpwi %r3, 0x0
	beq- _1a29b8
	li %r3, 0x0
	b _1a2ab8
_1a29b8:
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	bne- _1a2a1c
	lwz %r12, -0x7120(%r13)
	lis %r31, 0x8000
	lwz %r3, 0xe4(%r31)
	li %r4, 0x0
	mtctr %r12
	bctrl 
	li %r0, 0x0
	lis %r3, 0x8034
	stw %r0, 0xe4(%r31)
	addi %r3, %r3, 0x3530
	bl sub_19ab10
_1a29f0:
	bl sub_19f260
_1a29f4:
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	beq+ _1a29f4
	bl sub_19f24c
	lwz %r0, -0x62e0(%r13)
	cmpwi %r0, 0x0
	beq+ _1a29f0
	lis %r3, 0x8034
	addi %r3, %r3, 0x3530
	bl sub_19ad38
_1a2a1c:
	li %r4, 0x0
	lis %r3, 0x8034
	stw %r4, -0x62e4(%r13)
	addi %r3, %r3, 0x3430
	lwz %r0, -0x62e0(%r13)
	cntlzw %r5, %r0
	slwi  %r0, %r5, 3
	lwzux %r30, %r3, %r0
	lwz %r6, 0x2e0(%r30)
	cmpwi %r6, 0x0
	bne- _1a2a50
	stw %r4, 0x4(%r3)
	b _1a2a54
_1a2a50:
	stw %r4, 0x2e4(%r6)
_1a2a54:
	cmpwi %r6, 0x0
	stw %r6, 0x0(%r3)
	bne- _1a2a78
	subfic %r0, %r5, 0x1f
	li %r3, 0x1
	lwz %r4, -0x62e0(%r13)
	slw %r0, %r3, %r0
	andc %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
_1a2a78:
	li %r3, 0x0
	li %r0, 0x2
	stw %r3, 0x2dc(%r30)
	lis %r31, 0x8000
	mr %r4, %r30
	sth %r0, 0x2c8(%r30)
	lwz %r12, -0x7120(%r13)
	lwz %r3, 0xe4(%r31)
	mtctr %r12
	bctrl 
	stw %r30, 0xe4(%r31)
	mr %r3, %r30
	bl sub_19ab10
	mr %r3, %r30
	bl sub_19abf8
	mr %r3, %r30
_1a2ab8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_1a2ad0
t1_1a2ad0:
	.incbin "basemain.dol", 0x1a5030, 0x54
	
	.global sub_1a2b24
sub_1a2b24: # 0x801a9de4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	cmpwi %r8, 0x0
	mr %r31, %r3
	mr %r26, %r5
	mr %r27, %r6
	mr %r28, %r7
	blt- _1a2b58
	cmpwi %r8, 0x1f
	ble- _1a2b60
_1a2b58:
	li %r3, 0x0
	b _1a2d78
_1a2b60:
	li %r30, 0x0
	li %r7, 0x1
	clrlwi  %r0, %r9, 31
	li %r29, -0x1
	clrrwi  %r6, %r6, 3
	sth %r7, 0x2c8(%r3)
	subi %r5, %r6, 0x8
	sth %r0, 0x2ca(%r3)
	stw %r8, 0x2d4(%r3)
	stw %r8, 0x2d0(%r3)
	stw %r7, 0x2cc(%r3)
	stw %r29, 0x2d8(%r3)
	stw %r30, 0x2f0(%r3)
	stw %r30, 0x2ec(%r3)
	stw %r30, 0x2e8(%r3)
	stw %r30, 0x2f8(%r3)
	stw %r30, 0x2f4(%r3)
	stw %r30, -0x8(%r6)
	stw %r30, -0x4(%r6)
	bl sub_19ad5c
	lis %r5, 0x801b
	subf %r4, %r28, %r27
	subi %r5, %r5, 0x5fb0
	lis %r3, 0xdeae
	stw %r5, 0x84(%r31)
	subi %r0, %r3, 0x4542
	stw %r26, 0xc(%r31)
	stw %r27, 0x304(%r31)
	stw %r4, 0x308(%r31)
	stw %r0, 0x0(%r4)
	stw %r30, 0x30c(%r31)
	stw %r30, 0x310(%r31)
	stw %r30, 0x314(%r31)
	bl sub_19f24c
	lis %r4, 0x8034
	addi %r4, %r4, 0x2d70
	lwz %r0, 0x40(%r4)
	cmpwi %r0, 0x0
	beq- _1a2d40
	lwz %r5, 0x19c(%r31)
	li %r0, 0x2
	lhz %r4, 0x1a2(%r31)
	addi %r6, %r31, 0x90
	ori %r5, %r5, 0x900
	addi %r7, %r31, 0x1c8
	ori %r4, %r4, 0x1
	stw %r5, 0x19c(%r31)
	sth %r4, 0x1a2(%r31)
	lwz %r4, -0x7158(%r13)
	rlwinm  %r4, %r4, 0, 24, 28
	ori %r4, %r4, 0x4
	stw %r4, 0x194(%r31)
	mtctr %r0
_1a2c34:
	stw %r29, 0x4(%r6)
	stw %r29, 0x0(%r6)
	stw %r29, 0x4(%r7)
	stw %r29, 0x0(%r7)
	stw %r29, 0xc(%r6)
	stw %r29, 0x8(%r6)
	stw %r29, 0xc(%r7)
	stw %r29, 0x8(%r7)
	stw %r29, 0x14(%r6)
	stw %r29, 0x10(%r6)
	stw %r29, 0x14(%r7)
	stw %r29, 0x10(%r7)
	stw %r29, 0x1c(%r6)
	stw %r29, 0x18(%r6)
	stw %r29, 0x1c(%r7)
	stw %r29, 0x18(%r7)
	stw %r29, 0x24(%r6)
	stw %r29, 0x20(%r6)
	stw %r29, 0x24(%r7)
	stw %r29, 0x20(%r7)
	stw %r29, 0x2c(%r6)
	stw %r29, 0x28(%r6)
	stw %r29, 0x2c(%r7)
	stw %r29, 0x28(%r7)
	stw %r29, 0x34(%r6)
	stw %r29, 0x30(%r6)
	stw %r29, 0x34(%r7)
	stw %r29, 0x30(%r7)
	stw %r29, 0x3c(%r6)
	stw %r29, 0x38(%r6)
	stw %r29, 0x3c(%r7)
	stw %r29, 0x38(%r7)
	stw %r29, 0x44(%r6)
	stw %r29, 0x40(%r6)
	stw %r29, 0x44(%r7)
	stw %r29, 0x40(%r7)
	stw %r29, 0x4c(%r6)
	stw %r29, 0x48(%r6)
	stw %r29, 0x4c(%r7)
	stw %r29, 0x48(%r7)
	stw %r29, 0x54(%r6)
	stw %r29, 0x50(%r6)
	stw %r29, 0x54(%r7)
	stw %r29, 0x50(%r7)
	stw %r29, 0x5c(%r6)
	stw %r29, 0x58(%r6)
	stw %r29, 0x5c(%r7)
	stw %r29, 0x58(%r7)
	stw %r29, 0x64(%r6)
	stw %r29, 0x60(%r6)
	stw %r29, 0x64(%r7)
	stw %r29, 0x60(%r7)
	stw %r29, 0x6c(%r6)
	stw %r29, 0x68(%r6)
	stw %r29, 0x6c(%r7)
	stw %r29, 0x68(%r7)
	stw %r29, 0x74(%r6)
	stw %r29, 0x70(%r6)
	stw %r29, 0x74(%r7)
	stw %r29, 0x70(%r7)
	stw %r29, 0x7c(%r6)
	stw %r29, 0x78(%r6)
	addi %r6, %r6, 0x80
	stw %r29, 0x7c(%r7)
	stw %r29, 0x78(%r7)
	addi %r7, %r7, 0x80
	bdnz+ _1a2c34
_1a2d40:
	lis %r4, 0x8000
	lwz %r5, 0xe0(%r4)
	cmpwi %r5, 0x0
	bne- _1a2d58
	stw %r31, 0xdc(%r4)
	b _1a2d5c
_1a2d58:
	stw %r31, 0x2fc(%r5)
_1a2d5c:
	li %r0, 0x0
	stw %r5, 0x300(%r31)
	lis %r4, 0x8000
	stw %r0, 0x2fc(%r31)
	stw %r31, 0xe0(%r4)
	bl sub_19f274
	li %r3, 0x1
_1a2d78:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a2d90, 0x801aa134 - 0x801aa050

	.global sub_1a2e74
sub_1a2e74: # 0x801aa134
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lhz %r0, 0x2c8(%r30)
	mr %r31, %r3
	cmpwi %r0, 0x3
	beq- _1a2f9c
	bge- _1a2eb4
	cmpwi %r0, 0x1
	beq- _1a2ec0
	bge- _1a2ed8
	b _1a2f9c
_1a2eb4:
	cmpwi %r0, 0x5
	bge- _1a2f9c
	b _1a2ee4
_1a2ec0:
	lwz %r0, 0x2cc(%r30)
	cmpwi %r0, 0x0
	bgt- _1a2fa8
	mr %r3, %r30
	bl sub_1a2600
	b _1a2fa8
_1a2ed8:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	b _1a2fa8
_1a2ee4:
	lwz %r4, 0x2e0(%r30)
	lwz %r5, 0x2e4(%r30)
	cmpwi %r4, 0x0
	bne- _1a2f00
	lwz %r3, 0x2dc(%r30)
	stw %r5, 0x4(%r3)
	b _1a2f04
_1a2f00:
	stw %r5, 0x2e4(%r4)
_1a2f04:
	cmpwi %r5, 0x0
	bne- _1a2f18
	lwz %r3, 0x2dc(%r30)
	stw %r4, 0x0(%r3)
	b _1a2f1c
_1a2f18:
	stw %r4, 0x2e0(%r5)
_1a2f1c:
	lwz %r0, 0x2cc(%r30)
	li %r3, 0x0
	stw %r3, 0x2dc(%r30)
	cmpwi %r0, 0x0
	bgt- _1a2fa8
	lwz %r3, 0x2f0(%r30)
	cmpwi %r3, 0x0
	beq- _1a2fa8
	lwz %r3, 0x8(%r3)
_1a2f40:
	lwz %r0, 0x2cc(%r3)
	cmpwi %r0, 0x0
	bgt- _1a2fa8
	lwz %r4, 0x2d4(%r3)
	lwz %r5, 0x2f4(%r3)
	b _1a2f78
_1a2f58:
	lwz %r6, 0x0(%r5)
	cmpwi %r6, 0x0
	beq- _1a2f74
	lwz %r0, 0x2d0(%r6)
	cmpw %r0, %r4
	bge- _1a2f74
	mr %r4, %r0
_1a2f74:
	lwz %r5, 0x10(%r5)
_1a2f78:
	cmpwi %r5, 0x0
	bne+ _1a2f58
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r4
	beq- _1a2fa8
	bl sub_1a26a4
	cmpwi %r3, 0x0
	bne+ _1a2f40
	b _1a2fa8
_1a2f9c:
	mr %r3, %r31
	bl sub_19f274
	b _1a3034
_1a2fa8:
	mr %r3, %r30
	bl sub_19ad38
	lhz %r0, 0x2ca(%r30)
	clrlwi. %r0, %r0, 31
	beq- _1a3000
	lwz %r4, 0x2fc(%r30)
	lwz %r5, 0x300(%r30)
	cmpwi %r4, 0x0
	bne- _1a2fd8
	lis %r3, 0x8000
	stw %r5, 0xe0(%r3)
	b _1a2fdc
_1a2fd8:
	stw %r5, 0x300(%r4)
_1a2fdc:
	cmpwi %r5, 0x0
	bne- _1a2ff0
	lis %r3, 0x8000
	stw %r4, 0xdc(%r3)
	b _1a2ff4
_1a2ff0:
	stw %r4, 0x2fc(%r5)
_1a2ff4:
	li %r0, 0x0
	sth %r0, 0x2c8(%r30)
	b _1a3008
_1a3000:
	li %r0, 0x8
	sth %r0, 0x2c8(%r30)
_1a3008:
	mr %r3, %r30
	bl sub_1a0d28
	addi %r3, %r30, 0x2e8
	bl sub_1a3744
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a302c
	li %r3, 0x0
	bl sub_1a28a8
_1a302c:
	mr %r3, %r31
	bl sub_19f274
_1a3034:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1a304c, 0x801aa4ec - 0x801aa30c

	.global sub_1a322c
sub_1a322c: # 0x801aa4ec
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lwz %r30, 0x2cc(%r29)
	mr %r31, %r3
	subic. %r0, %r30, 0x1
	stw %r0, 0x2cc(%r29)
	bge- _1a326c
	li %r0, 0x0
	stw %r0, 0x2cc(%r29)
	b _1a349c
_1a326c:
	bne- _1a349c
	lhz %r0, 0x2c8(%r29)
	cmpwi %r0, 0x4
	beq- _1a3328
	bge- _1a3488
	cmpwi %r0, 0x1
	beq- _1a328c
	b _1a3488
_1a328c:
	lwz %r5, 0x2d4(%r29)
	lwz %r4, 0x2f4(%r29)
	b _1a32b8
_1a3298:
	lwz %r3, 0x0(%r4)
	cmpwi %r3, 0x0
	beq- _1a32b4
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r5
	bge- _1a32b4
	mr %r5, %r0
_1a32b4:
	lwz %r4, 0x10(%r4)
_1a32b8:
	cmpwi %r4, 0x0
	bne+ _1a3298
	lis %r3, 0x8034
	slwi  %r0, %r5, 3
	addi %r3, %r3, 0x3430
	stw %r5, 0x2d0(%r29)
	add %r3, %r3, %r0
	stw %r3, 0x2dc(%r29)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a32ec
	stw %r29, 0x0(%r3)
	b _1a32f0
_1a32ec:
	stw %r29, 0x2e0(%r4)
_1a32f0:
	li %r0, 0x0
	stw %r4, 0x2e4(%r29)
	lwz %r4, 0x2dc(%r29)
	li %r3, 0x1
	stw %r0, 0x2e0(%r29)
	stw %r29, 0x4(%r4)
	lwz %r0, 0x2d0(%r29)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
	b _1a3488
_1a3328:
	lwz %r4, 0x2e0(%r29)
	lwz %r5, 0x2e4(%r29)
	cmpwi %r4, 0x0
	bne- _1a3344
	lwz %r3, 0x2dc(%r29)
	stw %r5, 0x4(%r3)
	b _1a3348
_1a3344:
	stw %r5, 0x2e4(%r4)
_1a3348:
	cmpwi %r5, 0x0
	bne- _1a335c
	lwz %r3, 0x2dc(%r29)
	stw %r4, 0x0(%r3)
	b _1a3360
_1a335c:
	stw %r4, 0x2e0(%r5)
_1a3360:
	lwz %r0, 0x2d4(%r29)
	lwz %r4, 0x2f4(%r29)
	b _1a338c
_1a336c:
	lwz %r3, 0x0(%r4)
	cmpwi %r3, 0x0
	beq- _1a3388
	lwz %r3, 0x2d0(%r3)
	cmpw %r3, %r0
	bge- _1a3388
	mr %r0, %r3
_1a3388:
	lwz %r4, 0x10(%r4)
_1a338c:
	cmpwi %r4, 0x0
	bne+ _1a336c
	stw %r0, 0x2d0(%r29)
	lwz %r4, 0x2dc(%r29)
	lwz %r5, 0x0(%r4)
	b _1a33a8
_1a33a4:
	lwz %r5, 0x2e0(%r5)
_1a33a8:
	cmpwi %r5, 0x0
	beq- _1a33c0
	lwz %r3, 0x2d0(%r5)
	lwz %r0, 0x2d0(%r29)
	cmpw %r3, %r0
	ble+ _1a33a4
_1a33c0:
	cmpwi %r5, 0x0
	bne- _1a33f8
	lwz %r3, 0x4(%r4)
	cmpwi %r3, 0x0
	bne- _1a33dc
	stw %r29, 0x0(%r4)
	b _1a33e0
_1a33dc:
	stw %r29, 0x2e0(%r3)
_1a33e0:
	li %r0, 0x0
	stw %r3, 0x2e4(%r29)
	lwz %r3, 0x2dc(%r29)
	stw %r0, 0x2e0(%r29)
	stw %r29, 0x4(%r3)
	b _1a3420
_1a33f8:
	stw %r5, 0x2e0(%r29)
	lwz %r3, 0x2e4(%r5)
	stw %r29, 0x2e4(%r5)
	cmpwi %r3, 0x0
	stw %r3, 0x2e4(%r29)
	bne- _1a341c
	lwz %r3, 0x2dc(%r29)
	stw %r29, 0x0(%r3)
	b _1a3420
_1a341c:
	stw %r29, 0x2e0(%r3)
_1a3420:
	lwz %r3, 0x2f0(%r29)
	cmpwi %r3, 0x0
	beq- _1a3488
	lwz %r3, 0x8(%r3)
_1a3430:
	lwz %r0, 0x2cc(%r3)
	cmpwi %r0, 0x0
	bgt- _1a3488
	lwz %r4, 0x2d4(%r3)
	lwz %r5, 0x2f4(%r3)
	b _1a3468
_1a3448:
	lwz %r6, 0x0(%r5)
	cmpwi %r6, 0x0
	beq- _1a3464
	lwz %r0, 0x2d0(%r6)
	cmpw %r0, %r4
	bge- _1a3464
	mr %r4, %r0
_1a3464:
	lwz %r5, 0x10(%r5)
_1a3468:
	cmpwi %r5, 0x0
	bne+ _1a3448
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r4
	beq- _1a3488
	bl sub_1a26a4
	cmpwi %r3, 0x0
	bne+ _1a3430
_1a3488:
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a349c
	li %r3, 0x0
	bl sub_1a28a8
_1a349c:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a34c4
sub_1a34c4: # 0x801aa784
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lwz %r30, 0x2cc(%r29)
	mr %r31, %r3
	addi %r0, %r30, 0x1
	cmpwi %r30, 0x0
	stw %r0, 0x2cc(%r29)
	bne- _1a3630
	lhz %r0, 0x2c8(%r29)
	cmpwi %r0, 0x3
	beq- _1a361c
	bge- _1a351c
	cmpwi %r0, 0x1
	beq- _1a3538
	bge- _1a3528
	b _1a361c
_1a351c:
	cmpwi %r0, 0x5
	bge- _1a361c
	b _1a3544
_1a3528:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	sth %r0, 0x2c8(%r29)
	b _1a361c
_1a3538:
	mr %r3, %r29
	bl sub_1a2600
	b _1a361c
_1a3544:
	lwz %r4, 0x2e0(%r29)
	lwz %r5, 0x2e4(%r29)
	cmpwi %r4, 0x0
	bne- _1a3560
	lwz %r3, 0x2dc(%r29)
	stw %r5, 0x4(%r3)
	b _1a3564
_1a3560:
	stw %r5, 0x2e4(%r4)
_1a3564:
	cmpwi %r5, 0x0
	bne- _1a3578
	lwz %r3, 0x2dc(%r29)
	stw %r4, 0x0(%r3)
	b _1a357c
_1a3578:
	stw %r4, 0x2e0(%r5)
_1a357c:
	li %r0, 0x20
	lwz %r3, 0x2dc(%r29)
	stw %r0, 0x2d0(%r29)
	lwz %r4, 0x4(%r3)
	cmpwi %r4, 0x0
	bne- _1a359c
	stw %r29, 0x0(%r3)
	b _1a35a0
_1a359c:
	stw %r29, 0x2e0(%r4)
_1a35a0:
	li %r0, 0x0
	stw %r4, 0x2e4(%r29)
	lwz %r3, 0x2dc(%r29)
	stw %r0, 0x2e0(%r29)
	stw %r29, 0x4(%r3)
	lwz %r3, 0x2f0(%r29)
	cmpwi %r3, 0x0
	beq- _1a361c
	lwz %r3, 0x8(%r3)
_1a35c4:
	lwz %r0, 0x2cc(%r3)
	cmpwi %r0, 0x0
	bgt- _1a361c
	lwz %r4, 0x2d4(%r3)
	lwz %r5, 0x2f4(%r3)
	b _1a35fc
_1a35dc:
	lwz %r6, 0x0(%r5)
	cmpwi %r6, 0x0
	beq- _1a35f8
	lwz %r0, 0x2d0(%r6)
	cmpw %r0, %r4
	bge- _1a35f8
	mr %r4, %r0
_1a35f8:
	lwz %r5, 0x10(%r5)
_1a35fc:
	cmpwi %r5, 0x0
	bne+ _1a35dc
	lwz %r0, 0x2d0(%r3)
	cmpw %r0, %r4
	beq- _1a361c
	bl sub_1a26a4
	cmpwi %r3, 0x0
	bne+ _1a35c4
_1a361c:
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a3630
	li %r3, 0x0
	bl sub_1a28a8
_1a3630:
	mr %r3, %r31
	bl sub_19f274
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a3658
sub_1a3658: # 0x801aa918
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r4, 0x8000
	li %r0, 0x4
	lwz %r4, 0xe4(%r4)
	mr %r31, %r3
	sth %r0, 0x2c8(%r4)
	stw %r30, 0x2dc(%r4)
	lwz %r5, 0x0(%r30)
	b _1a3698
_1a3694:
	lwz %r5, 0x2e0(%r5)
_1a3698:
	cmpwi %r5, 0x0
	beq- _1a36b0
	lwz %r3, 0x2d0(%r5)
	lwz %r0, 0x2d0(%r4)
	cmpw %r3, %r0
	ble+ _1a3694
_1a36b0:
	cmpwi %r5, 0x0
	bne- _1a36e4
	lwz %r3, 0x4(%r30)
	cmpwi %r3, 0x0
	bne- _1a36cc
	stw %r4, 0x0(%r30)
	b _1a36d0
_1a36cc:
	stw %r4, 0x2e0(%r3)
_1a36d0:
	stw %r3, 0x2e4(%r4)
	li %r0, 0x0
	stw %r0, 0x2e0(%r4)
	stw %r4, 0x4(%r30)
	b _1a3708
_1a36e4:
	stw %r5, 0x2e0(%r4)
	lwz %r3, 0x2e4(%r5)
	stw %r4, 0x2e4(%r5)
	cmpwi %r3, 0x0
	stw %r3, 0x2e4(%r4)
	bne- _1a3704
	stw %r4, 0x0(%r30)
	b _1a3708
_1a3704:
	stw %r4, 0x2e0(%r3)
_1a3708:
	li %r0, 0x1
	stw %r0, -0x62e4(%r13)
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a3724
	li %r3, 0x0
	bl sub_1a28a8
_1a3724:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a3744
sub_1a3744: # 0x801aaa04
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r5, 0x8034
	mr %r31, %r3
	addi %r5, %r5, 0x3430
	li %r6, 0x0
	li %r3, 0x1
	b _1a37f8
_1a3778:
	lwz %r4, 0x2e0(%r8)
	cmpwi %r4, 0x0
	bne- _1a378c
	stw %r6, 0x4(%r30)
	b _1a3790
_1a378c:
	stw %r6, 0x2e4(%r4)
_1a3790:
	stw %r4, 0x0(%r30)
	sth %r3, 0x2c8(%r8)
	lwz %r0, 0x2cc(%r8)
	cmpwi %r0, 0x0
	bgt- _1a37f8
	lwz %r0, 0x2d0(%r8)
	slwi  %r0, %r0, 3
	add %r4, %r5, %r0
	stw %r4, 0x2dc(%r8)
	lwz %r7, 0x4(%r4)
	cmpwi %r7, 0x0
	bne- _1a37c8
	stw %r8, 0x0(%r4)
	b _1a37cc
_1a37c8:
	stw %r8, 0x2e0(%r7)
_1a37cc:
	stw %r7, 0x2e4(%r8)
	stw %r6, 0x2e0(%r8)
	lwz %r4, 0x2dc(%r8)
	stw %r8, 0x4(%r4)
	lwz %r0, 0x2d0(%r8)
	lwz %r4, -0x62e0(%r13)
	subfic %r0, %r0, 0x1f
	slw %r0, %r3, %r0
	or %r0, %r4, %r0
	stw %r0, -0x62e0(%r13)
	stw %r3, -0x62e4(%r13)
_1a37f8:
	lwz %r8, 0x0(%r30)
	cmpwi %r8, 0x0
	bne+ _1a3778
	lwz %r0, -0x62e4(%r13)
	cmpwi %r0, 0x0
	beq- _1a3818
	li %r3, 0x0
	bl sub_1a28a8
_1a3818:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_1a3838
t1_1a3838:
	.incbin "basemain.dol", 0x1a5d98, 0x1c4
	
	.global sub_1a39fc
sub_1a39fc: # 0x801aacbc
	mftb %r3, 269
	mftb %r4, 268
	mftb %r5, 269
	cmpw %r3, %r5
	bne sub_1a39fc
	blr
	
	.global sub_1a3a14
sub_1a3a14: # 0x801aacd4
	mftb %r3, 268
	blr
	
	.global sub_1a3a1c
sub_1a3a1c: # 0x801aacdc
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	mr %r31, %r3
	bl sub_1a39fc
	lis %r6, 0x8000
	lwz %r5, 0x30dc(%r6)
	lwz %r0, 0x30d8(%r6)
	addc %r29, %r5, %r4
	adde %r30, %r0, %r3
	mr %r3, %r31
	bl sub_19f274
	mr %r4, %r29
	mr %r3, %r30
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a3a80
sub_1a3a80: # 0x801aad40
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r30, 0x8(%r1)
	mr %r30, %r4
	bl sub_19f24c
	lis %r5, 0x8000
	lwz %r4, 0x30dc(%r5)
	lwz %r0, 0x30d8(%r5)
	addc %r30, %r4, %r30
	adde %r31, %r0, %r31
	bl sub_19f274
	mr %r3, %r31
	mr %r4, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global t1_1a3ad8
t1_1a3ad8:
	.incbin "basemain.dol", 0x1a6038, 0x810
	
	.global sub_1a42e8
sub_1a42e8: # 0x801ab5a8
	lwz %r3, -0x62d8(%r13)
	blr

	.global sub_1a42f0
sub_1a42f0: # 0x801ab5b0
	lwz %r3, -0x7118(%r13)
	blr

	.global sub_1a42f8
sub_1a42f8: # 0x801ab5b8
	lis %r3, 0x8000
	lwz %r0, 0x3130(%r3)
	stw %r0, -0x7118(%r13)
	lwz %r0, 0x3134(%r3)
	stw %r0, -0x62d8(%r13)
	blr
	.incbin "./dol.text.bin", 0x1a4310, 0x801ab7a8 - 0x801ab5d0

	.global sub_1a44e8
sub_1a44e8: # 0x801ab7a8
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x801b
	lis %r3, 0x801b
	stw %r0, 0x14(%r1)
	subi %r4, %r4, 0x4494
	subi %r3, %r3, 0x4498
	stw %r31, 0xc(%r1)
	li %r31, 0x0
	stw %r30, 0x8(%r1)
	lwz %r0, -0x62cc(%r13)
	stw %r4, -0x62b8(%r13)
	cmpwi %r0, 0x0
	stw %r3, -0x62b4(%r13)
	stw %r31, -0x62d0(%r13)
	beq- _1a4530
	li %r3, 0x1
	b _1a45e8
_1a4530:
	lis %r3, 0x802a
	stw %r31, -0x62bc(%r13)
	li %r4, 0x0
	subi %r3, %r3, 0x7bb0
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, -0x62c8(%r13)
	bge- _1a455c
	stw %r31, -0x62cc(%r13)
	li %r3, 0x0
	b _1a45e8
_1a455c:
	lis %r3, 0x802a
	li %r4, 0x0
	subi %r3, %r3, 0x7b9c
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, -0x62c4(%r13)
	bge- _1a4584
	stw %r31, -0x62cc(%r13)
	li %r3, 0x0
	b _1a45e8
_1a4584:
	bl sub_19f24c
	mr %r30, %r3
	lis %r5, 0x8034
	lis %r7, 0x8034
	lis %r9, 0x801b
	lwz %r3, -0x62c4(%r13)
	addi %r5, %r5, 0x3b20
	addi %r7, %r7, 0x3b40
	subi %r9, %r9, 0x4490
	li %r4, 0x1000
	li %r6, 0x20
	li %r8, 0x20
	li %r10, 0x0
	bl sub_18cdf8
	cmpwi %r3, 0x0
	bne- _1a45d0
	li %r0, 0x1
	stw %r0, -0x62c0(%r13)
	b _1a45d4
_1a45d0:
	stw %r31, -0x62c0(%r13)
_1a45d4:
	mr %r3, %r30
	bl sub_19f274
	li %r0, 0x1
	li %r3, 0x1
	stw %r0, -0x62cc(%r13)
_1a45e8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a4600
sub_1a4600: # 0x801ab8c0
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0xcc00
	stw %r0, 0x14(%r1)
	li %r0, 0x0
	sth %r0, 0x2002(%r3)
	lwz %r0, -0x62cc(%r13)
	cmpwi %r0, 0x0
	bne- _1a4640
	lis %r3, 0x802a
	lis %r5, 0x802a
	subi %r3, %r3, 0x7b88
	li %r4, 0x13c
	subi %r5, %r5, 0x7b7c
	crxor 6, 6, 6
	bl sub_19b300
_1a4640:
	lis %r4, 0x8034
	li %r0, 0x0
	lis %r7, 0x8034
	stw %r0, 0x3b60(%r4)
	addi %r5, %r4, 0x3b60
	lwz %r3, -0x62c8(%r13)
	addi %r7, %r7, 0x3b80
	li %r4, 0x2003
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cf30
	bl sub_19f24c
	bl sub_19a3e4
_1a4674:
	b _1a4674

	.global sub_1a4678
sub_1a4678: # 0x801ab938
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0xcc00
	stw %r0, 0x14(%r1)
	li %r0, 0x0
	sth %r0, 0x2002(%r3)
	lwz %r0, -0x62cc(%r13)
	cmpwi %r0, 0x0
	bne- _1a46b8
	lis %r3, 0x802a
	lis %r5, 0x802a
	subi %r3, %r3, 0x7b88
	li %r4, 0x17c
	subi %r5, %r5, 0x7b44
	crxor 6, 6, 6
	bl sub_19b300
_1a46b8:
	lis %r5, 0x8034
	lis %r7, 0x8034
	lwz %r3, -0x62c8(%r13)
	addi %r5, %r5, 0x3b60
	addi %r7, %r7, 0x3b80
	li %r4, 0x2001
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cf30
	bl sub_19f24c
	bl sub_19a3e4
_1a46e4:
	b _1a46e4
	.incbin "./dol.text.bin", 0x1a46e8, 0x801abae0 - 0x801ab9a8

	.global sub_1a4820
sub_1a4820: # 0x801abae0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	lwz %r0, -0x62c0(%r13)
	cmpwi %r0, 0x0
	bne- _1a4840
	li %r3, 0x0
	b _1a4888
_1a4840:
	lwz %r0, -0x62cc(%r13)
	cmpwi %r0, 0x0
	bne- _1a4854
	li %r3, -0x6
	b _1a4888
_1a4854:
	lis %r5, 0x8034
	lis %r7, 0x8034
	lwz %r3, -0x62c8(%r13)
	addi %r5, %r5, 0x3b60
	addi %r7, %r7, 0x3b80
	li %r4, 0x3002
	li %r6, 0x20
	li %r8, 0x20
	bl sub_18cf30
	cmpwi %r3, 0x0
	bne- _1a4888
	li %r0, 0x0
	stw %r0, -0x62c0(%r13)
_1a4888:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1a4898, 0x801ac1d4 - 0x801abb58

	.global sub_1a4f14
sub_1a4f14: # 0x801ac1d4
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	lis %r29, 0x8034
	addi %r29, %r29, 0x3be0
	bl sub_19f24c
	lwz %r0, -0x7110(%r13)
	li %r4, 0x1
	stw %r4, -0x62a0(%r13)
	mr %r26, %r3
	cmpwi %r0, 0x7
	beq- _1a4f64
	cmpwi %r0, 0x0
	beq- _1a4f64
	cmpwi %r0, 0x9
	beq- _1a4f64
	cmpwi %r0, 0x8
	bne- _1a4f70
_1a4f64:
	mr %r3, %r26
	bl sub_19f274
	b _1a50dc
_1a4f70:
	cmpwi %r0, 0x4
	bne- _1a4fd8
	addi %r3, %r29, 0x80
	bl sub_199604
	mr %r3, %r26
	bl sub_19f274
	bl sub_1a39fc
	addi %r5, %r29, 0x0
	li %r0, 0x1f
	stw %r4, 0x64(%r5)
	addi %r6, %r5, 0x4
	li %r4, 0x0
	stw %r3, 0x60(%r5)
	mtctr %r0
_1a4fa8:
	lwz %r0, 0x0(%r6)
	addi %r6, %r6, 0x4
	add %r4, %r4, %r0
	bdnz+ _1a4fa8
	stw %r4, 0x0(%r29)
	addi %r3, %r29, 0xb0
	addi %r4, %r29, 0x0
	li %r5, 0x80
	bl sub_194524
	addi %r3, %r29, 0xb0
	bl sub_195720
	b _1a50dc
_1a4fd8:
	lwz %r0, -0x6298(%r13)
	cmpwi %r0, 0x0
	beq- _1a4ff8
	addi %r3, %r29, 0x80
	bl sub_199604
	mr %r3, %r26
	bl sub_19f274
	b _1a506c
_1a4ff8:
	bl sub_19f274
	bl sub_1a39fc
	lis %r5, 0x1062
	li %r0, 0x0
	mr %r30, %r4
	mr %r31, %r3
	addi %r26, %r5, 0x4dd3
	xoris %r28, %r0, 0x8000
	lis %r27, 0x8000
_1a501c:
	lwz %r0, -0x629c(%r13)
	cmpwi %r0, 0x0
	bne- _1a506c
	bl sub_1a39fc
	lwz %r0, 0xf8(%r27)
	subfc %r4, %r30, %r4
	subfe %r3, %r31, %r3
	srwi  %r0, %r0, 2
	mulhwu %r0, %r26, %r0
	xoris %r3, %r3, 0x8000
	srwi  %r0, %r0, 6
	mulli %r0, %r0, 0x1f4
	subfc %r0, %r4, %r0
	subfe %r3, %r3, %r28
	subfe %r3, %r28, %r28
	neg. %r3, %r3
	beq+ _1a501c
	li %r0, 0x8
	stw %r0, -0x7110(%r13)
	b _1a50e4
_1a506c:
	lwz %r0, -0x7110(%r13)
	cmpwi %r0, 0x4
	beq- _1a50dc
	bge- _1a508c
	cmpwi %r0, 0x1
	beq- _1a50a4
	bge- _1a5098
	b _1a50dc
_1a508c:
	cmpwi %r0, 0x6
	beq- _1a50c8
	bge- _1a50dc
_1a5098:
	addi %r3, %r29, 0xb0
	bl sub_195720
	b _1a50dc
_1a50a4:
	lwz %r0, -0x6294(%r13)
	cmpwi %r0, 0x0
	bne- _1a50dc
	lwz %r0, -0x6298(%r13)
	cmpwi %r0, 0x0
	bne- _1a50dc
	addi %r3, %r29, 0xb0
	bl sub_195720
	b _1a50dc
_1a50c8:
	lwz %r0, -0x6298(%r13)
	cmpwi %r0, 0x0
	beq- _1a50dc
	addi %r3, %r29, 0xb0
	bl sub_195720
_1a50dc:
	li %r0, 0x9
	stw %r0, -0x7110(%r13)
_1a50e4:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a50fc
sub_1a50fc: # 0x801ac3bc
	stwu %r1, -0xa0(%r1)
	mflr %r0
	mr %r4, %r3
	li %r5, 0x20
	stw %r0, 0xa4(%r1)
	stw %r31, 0x9c(%r1)
	stw %r30, 0x98(%r1)
	lis %r30, 0x8034
	addi %r3, %r30, 0x3de0
	bl memcpy
	addi %r31, %r30, 0x3de0
	lis %r3, 0x802a
	lwz %r6, 0x4(%r31)
	subi %r3, %r3, 0x7aa0
	lwz %r0, 0x8(%r31)
	addi %r4, %r1, 0x8
	li %r5, 0x2
	add %r6, %r6, %r0
	lwz %r0, 0xc(%r31)
	add %r6, %r6, %r0
	lwz %r0, 0x10(%r31)
	add %r6, %r6, %r0
	lwz %r0, 0x14(%r31)
	add %r6, %r6, %r0
	lwz %r0, 0x18(%r31)
	add %r6, %r6, %r0
	lwz %r0, 0x1c(%r31)
	add %r6, %r6, %r0
	stw %r6, 0x3de0(%r30)
	bl sub_1954a0
	cmpwi %r3, 0x0
	bne- _1a51bc
	mr %r4, %r31
	addi %r3, %r1, 0x8
	li %r5, 0x20
	bl sub_194524
	cmplwi %r3, 0x20
	beq- _1a51a4
	addi %r3, %r1, 0x8
	bl sub_195720
	li %r3, 0x0
	b _1a51c8
_1a51a4:
	addi %r3, %r1, 0x8
	bl sub_195720
	cmpwi %r3, 0x0
	beq- _1a51c4
	li %r3, 0x0
	b _1a51c8
_1a51bc:
	li %r3, 0x0
	b _1a51c8
_1a51c4:
	li %r3, 0x1
_1a51c8:
	lwz %r0, 0xa4(%r1)
	lwz %r31, 0x9c(%r1)
	lwz %r30, 0x98(%r1)
	mtlr %r0
	addi %r1, %r1, 0xa0
	blr

	.global sub_1a51e0
sub_1a51e0: # 0x801ac4a0
	stwu %r1, -0xb0(%r1)
	mflr %r0
	li %r5, 0x1
	stw %r0, 0xb4(%r1)
	addi %r4, %r1, 0x8
	stw %r31, 0xac(%r1)
	stw %r30, 0xa8(%r1)
	stw %r29, 0xa4(%r1)
	lis %r29, 0x802a
	stw %r28, 0xa0(%r1)
	mr %r28, %r3
	subi %r3, %r29, 0x7aa0
	bl sub_1954a0
	cmpwi %r3, 0x0
	bne- _1a5264
	lis %r30, 0x8034
	addi %r3, %r1, 0x8
	addi %r4, %r30, 0x3de0
	li %r5, 0x20
	bl sub_194444
	mr %r31, %r3
	addi %r3, %r1, 0x8
	bl sub_195720
	cmplwi %r31, 0x20
	beq- _1a527c
	subi %r3, %r29, 0x7aa0
	bl sub_19423c
	mr %r3, %r28
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	li %r3, 0x0
	b _1a52e8
_1a5264:
	mr %r3, %r28
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	li %r3, 0x0
	b _1a52e8
_1a527c:
	addi %r4, %r30, 0x3de0
	lwz %r0, 0x3de0(%r30)
	lwz %r5, 0x4(%r4)
	lwz %r3, 0x8(%r4)
	add %r5, %r5, %r3
	lwz %r3, 0xc(%r4)
	add %r5, %r5, %r3
	lwz %r3, 0x10(%r4)
	add %r5, %r5, %r3
	lwz %r3, 0x14(%r4)
	add %r5, %r5, %r3
	lwz %r3, 0x18(%r4)
	add %r5, %r5, %r3
	lwz %r3, 0x1c(%r4)
	add %r5, %r5, %r3
	cmplw %r0, %r5
	beq- _1a52d8
	mr %r3, %r28
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	li %r3, 0x0
	b _1a52e8
_1a52d8:
	mr %r3, %r28
	li %r5, 0x20
	bl memcpy
	li %r3, 0x1
_1a52e8:
	lwz %r0, 0xb4(%r1)
	lwz %r31, 0xac(%r1)
	lwz %r30, 0xa8(%r1)
	lwz %r29, 0xa4(%r1)
	lwz %r28, 0xa0(%r1)
	mtlr %r0
	addi %r1, %r1, 0xb0
	blr
	.incbin "./dol.text.bin", 0x1a5308, 0x801ac67c - 0x801ac5c8

	.global sub_1a53bc
sub_1a53bc: # 0x801ac67c
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r3, 0x802a
	stw %r0, 0x14(%r1)
	addi %r4, %r1, 0x8
	subi %r3, %r3, 0x7910
	bl sub_195084
	cmpwi %r3, 0x0
	bne- _1a53f4
	lbz %r0, 0xf(%r1)
	cmplwi %r0, 0x3f
	bne- _1a53f4
	li %r3, 0x1
	b _1a545c
_1a53f4:
	cmpwi %r3, 0x0
	bne- _1a5424
	lbz %r0, 0xf(%r1)
	cmplwi %r0, 0x3f
	beq- _1a5424
	lis %r3, 0x802a
	subi %r3, %r3, 0x7910
	bl sub_1942ec
	cmpwi %r3, 0x0
	beq- _1a5434
	li %r3, 0x0
	b _1a545c
_1a5424:
	cmpwi %r3, -0xc
	beq- _1a5434
	li %r3, 0x0
	b _1a545c
_1a5434:
	lis %r3, 0x802a
	li %r4, 0x3f
	subi %r3, %r3, 0x7910
	li %r5, 0x0
	bl sub_194150
	cmpwi %r3, 0x0
	beq- _1a5458
	li %r3, 0x0
	b _1a545c
_1a5458:
	li %r3, 0x1
_1a545c:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a546c
sub_1a546c: # 0x801ac72c
	stwu %r1, -0xa0(%r1)
	mflr %r0
	addi %r8, %r3, 0x4
	li %r7, 0x0
	stw %r0, 0xa4(%r1)
	li %r0, 0x40
	stw %r31, 0x9c(%r1)
	mr %r31, %r3
	mtctr %r0
_1a5490:
	lwz %r4, 0x0(%r8)
	lwz %r0, 0x4(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x8(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0xc(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x10(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x14(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x18(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x1c(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x20(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x24(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x28(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x2c(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x30(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x34(%r8)
	add %r7, %r7, %r4
	lwz %r4, 0x38(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x3c(%r8)
	add %r7, %r7, %r4
	addi %r8, %r8, 0x40
	add %r7, %r7, %r0
	bdnz+ _1a5490
	lwz %r0, 0x0(%r8)
	lis %r6, 0x802a
	lwz %r5, 0x4(%r8)
	addi %r4, %r1, 0x8
	add %r7, %r7, %r0
	lwz %r0, 0x8(%r8)
	add %r7, %r7, %r5
	lwz %r5, 0xc(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x10(%r8)
	add %r7, %r7, %r5
	lwz %r5, 0x14(%r8)
	add %r7, %r7, %r0
	lwz %r0, 0x18(%r8)
	add %r7, %r7, %r5
	li %r5, 0x2
	add %r7, %r7, %r0
	stw %r7, 0x0(%r3)
	subi %r3, %r6, 0x7910
	bl sub_19552c
	cmpwi %r3, 0x0
	bne- _1a55ac
	mr %r4, %r31
	addi %r3, %r1, 0x8
	li %r5, 0x1020
	bl sub_194524
	cmplwi %r3, 0x1020
	beq- _1a5598
	addi %r3, %r1, 0x8
	bl sub_195720
	li %r3, 0x0
	b _1a55b0
_1a5598:
	addi %r3, %r1, 0x8
	bl sub_195720
	cntlzw %r0, %r3
	srwi  %r3, %r0, 5
	b _1a55b0
_1a55ac:
	li %r3, 0x0
_1a55b0:
	lwz %r0, 0xa4(%r1)
	lwz %r31, 0x9c(%r1)
	mtlr %r0
	addi %r1, %r1, 0xa0
	blr
	.incbin "./dol.text.bin", 0x1a55c4, 0x801ac89c - 0x801ac884

	.global sub_1a55dc
sub_1a55dc: # 0x801ac89c
	lwz %r0, -0x6278(%r13)
	lwz %r3, -0x6274(%r13)
	or %r0, %r3, %r0
	subic %r3, %r0, 0x1
	subfe %r3, %r3, %r0
	blr
	.incbin "./dol.text.bin", 0x1a55f4, 0x801acaf8 - 0x801ac8b4

	.global sub_1a5838
sub_1a5838: # 0x801acaf8
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x100
	.incbin "./dol.text.bin", 0x1a5844, 0x801acb08 - 0x801acb04
	mflr %r0
	lis %r3, 0x802a
	li %r5, 0x0
	stw %r0, 0x4(%r12)
	subi %r3, %r3, 0x78f0
	li %r4, 0x3f
	stw %r31, -0x4(%r12)
	stw %r30, -0x8(%r12)
	li %r30, 0x0
	bl sub_194150
	cmpwi %r3, 0x0
	mr %r31, %r3
	beq- _1a5884
	cmpwi %r3, -0x6
	bne- _1a590c
_1a5884:
	lis %r3, 0x802a
	addi %r4, %r1, 0x40
	subi %r3, %r3, 0x78f0
	li %r5, 0x2
	bl sub_19552c
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _1a590c
	li %r30, 0x1
	bl sub_15fe70
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _1a590c
	addi %r3, %r1, 0x20
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	addi %r3, %r1, 0x20
	bl sub_16063c
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _1a590c
	addi %r3, %r1, 0x40
	addi %r4, %r1, 0x20
	li %r5, 0x20
	bl sub_194524
	cmpwi %r3, 0x0
	mr %r31, %r3
	blt- _1a590c
	cmpwi %r3, 0x20
	beq- _1a5908
	li %r31, -0x8
	b _1a590c
_1a5908:
	li %r31, 0x0
_1a590c:
	cmpwi %r30, 0x0
	beq- _1a591c
	addi %r3, %r1, 0x40
	bl sub_195720
_1a591c:
	cmpwi %r31, 0x0
	bne- _1a592c
	li %r3, 0x1
	b _1a5930
_1a592c:
	li %r3, 0x0
_1a5930:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	lwz %r30, -0x8(%r10)
	mtlr %r0
	mr %r1, %r10
	blr
	.incbin "./dol.text.bin", 0x1a594c, 0x801ace14 - 0x801acc0c

	.global sub_1a5b54
sub_1a5b54: # 0x801ace14
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0x180
	.incbin "./dol.text.bin", 0x1a5b60, 0x801ace24 - 0x801ace20
	mflr %r0
	stw %r0, 0x4(%r12)
	clrlwi. %r0, %r3, 27
	li %r0, 0x0
	stw %r31, -0x4(%r12)
	mr %r31, %r5
	stw %r30, -0x8(%r12)
	li %r30, 0x0
	stw %r29, -0xc(%r12)
	mr %r29, %r4
	stw %r28, -0x10(%r12)
	mr %r28, %r3
	stw %r0, 0x20(%r1)
	beq- _1a5bb0
	mr %r4, %r28
	addi %r3, %r1, 0x80
	li %r5, 0xd8
	bl memcpy
	addi %r28, %r1, 0x80
_1a5bb0:
	lwz %r3, 0x4(%r28)
	addi %r6, %r1, 0x20
	lwz %r4, 0x8(%r28)
	li %r5, 0x0
	bl sub_1606d4
	cmpwi %r3, 0x0
	bgt- _1a5bf8
	beq- _1a5bd4
	b _1a5bf8
_1a5bd4:
	lwz %r0, 0x20(%r1)
	cmpwi %r0, 0x0
	beq- _1a5bf8
	lwz %r3, 0x4(%r28)
	addi %r5, %r1, 0x40
	lwz %r4, 0x8(%r28)
	addi %r6, %r1, 0x20
	bl sub_1606d4
	cmpwi %r3, 0x0
_1a5bf8:
	cmpwi %r3, 0x0
	bne- _1a5cf8
	li %r0, 0x8
	li %r5, 0x0
	li %r4, 0x0
	mtctr %r0
_1a5c10:
	add %r6, %r28, %r4
	lwz %r0, 0x98(%r6)
	cmplwi %r0, 0x1
	bne- _1a5c70
	li %r0, 0x1
	stw %r0, 0x0(%r29)
	lwz %r0, 0x20(%r1)
	cmpwi %r0, 0x0
	bne- _1a5c40
	lwz %r0, 0x9c(%r6)
	stw %r0, 0x0(%r31)
	b _1a5cf8
_1a5c40:
	addi %r5, %r1, 0x40
	lwz %r0, 0x9c(%r6)
	add %r4, %r5, %r4
	lwz %r4, 0x4(%r4)
	cmplw %r4, %r0
	blt- _1a5c64
	li %r0, 0x0
	stw %r0, 0x0(%r31)
	b _1a5cf8
_1a5c64:
	subf %r0, %r4, %r0
	stw %r0, 0x0(%r31)
	b _1a5cf8
_1a5c70:
	cmpwi %r0, 0x0
	beq- _1a5c7c
	addi %r30, %r5, 0x1
_1a5c7c:
	addi %r5, %r5, 0x1
	addi %r4, %r4, 0x8
	bdnz+ _1a5c10
	cmpwi %r30, 0x0
	bne- _1a5ca4
	li %r4, 0x0
	li %r0, -0x1
	stw %r4, 0x0(%r29)
	stw %r0, 0x0(%r31)
	b _1a5cf8
_1a5ca4:
	subi %r30, %r30, 0x1
	slwi  %r6, %r30, 3
	add %r4, %r28, %r6
	lwz %r0, 0x98(%r4)
	cmplwi %r0, 0x4
	bne- _1a5cf0
	li %r0, 0x4
	stw %r0, 0x0(%r29)
	lwz %r5, 0x9c(%r4)
	stw %r5, 0x0(%r31)
	lwz %r0, 0x20(%r1)
	cmpwi %r0, 0x0
	beq- _1a5cf8
	addi %r0, %r1, 0x40
	add %r4, %r0, %r6
	lwz %r0, 0x4(%r4)
	subf %r0, %r0, %r5
	stw %r0, 0x0(%r31)
	b _1a5cf8
_1a5cf0:
	li %r0, 0x9
	stw %r0, 0x0(%r29)
_1a5cf8:
	lwz %r10, 0x0(%r1)
	lwz %r0, 0x4(%r10)
	lwz %r31, -0x4(%r10)
	lwz %r30, -0x8(%r10)
	lwz %r29, -0xc(%r10)
	lwz %r28, -0x10(%r10)
	mtlr %r0
	mr %r1, %r10
	blr
	.incbin "./dol.text.bin", 0x1a5d1c, 0x801ad760 - 0x801acfdc

	.global sub_1a64a0
sub_1a64a0: # 0x801ad760
	clrlwi  %r11, %r1, 27
	mr %r12, %r1
	subfic %r11, %r11, -0xa0
	.incbin "./dol.text.bin", 0x1a64ac, 0x801ad770 - 0x801ad76c
	mflr %r0
	stw %r0, 0x4(%r12)
	li %r0, 0x1
	stw %r31, -0x4(%r12)
	stw %r30, -0x8(%r12)
	stw %r29, -0xc(%r12)
	mr %r29, %r3
	lis %r3, 0x8128
	stw %r0, 0x28(%r1)
	bl sub_199d9c
	lis %r3, 0x812f
	bl sub_199d84
	bl sub_15fe70
	cmpwi %r3, 0x0
	beq- _1a64f0
	bl sub_1a15f4
_1a64f0:
	addi %r3, %r1, 0x40
	bl sub_16063c
	cmpwi %r3, 0x0
	beq- _1a6504
	bl sub_1a15f4
_1a6504:
	li %r3, 0xe0
	li %r4, 0x20
	bl sub_199da4
	li %r0, 0x0
	mr %r31, %r3
	cmplw %r3, %r0
	bne- _1a6524
	bl sub_1a15f4
_1a6524:
	mr %r3, %r31
	li %r4, 0x0
	li %r5, 0xe0
	bl memset
	mr %r4, %r31
	li %r3, 0x0
	bl sub_1602fc
	cmpwi %r3, -0x3f9
	bne- _1a65c8
	lwz %r3, 0x40(%r1)
	addi %r6, %r1, 0x28
	lwz %r4, 0x44(%r1)
	li %r5, 0x0
	bl sub_1601e4
	cmpwi %r3, 0x0
	beq- _1a6568
	bl sub_1a15f4
_1a6568:
	lwz %r0, 0x28(%r1)
	li %r4, 0x20
	mulli %r3, %r0, 0xd8
	addi %r0, %r3, 0x1f
	clrrwi  %r3, %r0, 5
	bl sub_199da4
	li %r0, 0x0
	mr %r30, %r3
	cmplw %r3, %r0
	bne- _1a6594
	bl sub_1a15f4
_1a6594:
	lwz %r3, 0x40(%r1)
	mr %r5, %r30
	lwz %r4, 0x44(%r1)
	addi %r6, %r1, 0x28
	bl sub_1601e4
	cmpwi %r3, 0x0
	beq- _1a65b4
	bl sub_1a15f4
_1a65b4:
	mr %r3, %r31
	mr %r4, %r30
	li %r5, 0xd8
	bl memcpy
	b _1a6618
_1a65c8:
	cmpwi %r3, 0x0
	beq- _1a65d8
	bl sub_1a15f4
	b _1a6618
_1a65d8:
	bl sub_1a55dc
	cmpwi %r3, 0x0
	beq- _1a6618
	li %r3, 0x0
	li %r0, -0x1
	stw %r3, 0x24(%r1)
	mr %r3, %r31
	addi %r4, %r1, 0x24
	addi %r5, %r1, 0x20
	stw %r0, 0x20(%r1)
	bl sub_1a5b54
	lwz %r0, 0x20(%r1)
	cmpwi %r0, 0x0
	bne- _1a6618
	bl sub_1a5838
	bl sub_1a15f4
_1a6618:
	li %r3, 0x2000
	li %r4, 0x40
	bl sub_199da4
	addi %r30, %r3, 0xfe0
	li %r4, 0x0
	li %r5, 0x2000
	bl memset
	lwz %r0, 0x40(%r1)
	lwz %r3, 0x44(%r1)
	stw %r3, 0x1c(%r30)
	stw %r0, 0x18(%r30)
	bl sub_199238
	stb %r3, 0xa(%r30)
	li %r3, 0x1
	oris %r0, %r29, 0x8000
	stb %r3, 0xb(%r30)
	stw %r0, 0xc(%r30)
	bl sub_1a53bc
	mr %r3, %r30
	bl sub_1a546c
	addi %r3, %r1, 0x60
	bl sub_1a51e0
	li %r0, 0x3
	addi %r3, %r1, 0x60
	stb %r0, 0x65(%r1)
	bl sub_1a50fc
	lwz %r3, 0x40(%r1)
	mr %r5, %r31
	lwz %r4, 0x44(%r1)
	bl sub_15ff0c
	cmpwi %r3, 0x0
	beq- _1a669c
	bl sub_1a15f4
_1a669c:
	b _1a669c

	.incbin "./dol.text.bin", 0x1a66a0, 0xb24
	
	.global t1_1a71c4
t1_1a71c4:
	.incbin "basemain.dol", 0x1a9724, 0x68

	.global t1_1a722c
t1_1a722c:
	.incbin "basemain.dol", 0x1a978c, 0x137c
	
	#TODO: Realign this to the correct location
	
#	.ifdef USE_GECKO
#	.4byte 0x4be46e28 # will disassemble later
#	.else
#	blr
#	.endif
	
	.global sub_1a85a8
sub_1a85a8: # 0x801af868
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r4
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bl sub_19f24c
	lis %r0, 0x8000
	lwz %r4, -0x6244(%r13)
	srw %r0, %r0, %r29
	mr %r31, %r3
	and. %r0, %r4, %r0
	beq- _1a863c
	mr %r3, %r29
	bl sub_1ac4a8
	rlwinm. %r0, %r3, 0, 2, 2
	bne- _1a863c
	lwz %r0, -0x70e8(%r13)
	cmplwi %r0, 0x2
	bge- _1a860c
	cmplwi %r30, 0x2
	bne- _1a860c
	li %r30, 0x0
_1a860c:
	lis %r3, 0x8000
	lbz %r0, 0x30e3(%r3)
	rlwinm. %r0, %r0, 0, 26, 26
	beq- _1a8620
	li %r30, 0x0
_1a8620:
	lwz %r4, -0x70ec(%r13)
	clrlwi  %r0, %r30, 30
	mr %r3, %r29
	oris %r4, %r4, 0x40
	or %r4, %r4, %r0
	bl sub_1abd68
	bl sub_1abd7c
_1a863c:
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a8660, 0x801b0084 - 0x801af920

	.global sub_1a8dc4
sub_1a8dc4: # 0x801b0084
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_19f24c
	lis %r5, 0x8000
	cmpwi %r31, 0x0
	lbz %r4, 0x30e3(%r5)
	rlwinm  %r0, %r4, 0, 26, 24
	extrwi  %r31, %r4, 1, 25
	stb %r0, 0x30e3(%r5)
	beq- _1a8e04
	lbz %r0, 0x30e3(%r5)
	ori %r0, %r0, 0x40
	stb %r0, 0x30e3(%r5)
_1a8e04:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a8e20
sub_1a8e20: # 0x801b00e0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lbz %r0, -0x6222(%r13)
	cmpwi %r0, 0x0
	beq- _1a8e48
	bl sub_19f274
	b _1a8eac
_1a8e48:
	li %r31, 0x1
	stb %r31, -0x6222(%r13)
	stb %r31, -0x6238(%r13)
	bl sub_19f274
	lwz %r3, -0x70d8(%r13)
	bl sub_1991a4
	lis %r3, 0x8034
	addi %r3, %r3, 0x3ee0
	bl sub_1a2540
	bl sub_197fdc
	rlwinm. %r0, %r3, 0, 3, 3
	beq- _1a8e7c
	stb %r31, -0x6224(%r13)
_1a8e7c:
	bl sub_196e2c
	cmpwi %r3, 0x0
	bne- _1a8ea4
	lis %r3, 0x8034
	li %r4, 0x4000
	addi %r3, %r3, 0x4080
	li %r5, 0x0
	bl sub_1a8fdc
	cmpwi %r3, 0x0
	beq- _1a8eac
_1a8ea4:
	li %r0, 0x2
	stb %r0, -0x6238(%r13)
_1a8eac:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1a8ec0
sub_1a8ec0: # 0x801b0180
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	bl sub_19f24c
	lbz %r29, -0x6238(%r13)
	cmplwi %r29, 0x3
	bne- _1a8fb8
	li %r0, 0x1
	stb %r0, -0x6238(%r13)
	bl sub_19f274
	lis %r31, 0x8034
	addi %r31, %r31, 0x3ee0
	lwz %r3, 0x16c(%r31)
	lwz %r4, 0x17c(%r31)
	bl sub_1a9474
	cmpwi %r3, 0x0
	bne- _1a8f4c
	bl sub_19f24c
	lis %r5, 0x8034
	lwz %r4, 0x16c(%r31)
	addi %r5, %r5, 0x4080
	mr %r29, %r3
	cmplw %r5, %r4
	beq- _1a8f38
	mr %r3, %r5
	li %r5, 0x4000
	bl memcpy
_1a8f38:
	li %r0, 0x0
	mr %r3, %r29
	stb %r0, -0x6223(%r13)
	bl sub_19f274
	b _1a8fac
_1a8f4c:
	bl sub_19f24c
	lwz %r31, 0x16c(%r31)
	mr %r29, %r3
	li %r30, 0x4000
	li %r4, 0x0
	mr %r3, %r31
	li %r5, 0x4000
	bl memset
	cmplwi %r30, 0xc
	ble- _1a8f9c
	mr %r3, %r31
	subi %r4, %r13, 0x6fe0
	li %r5, 0x4
	bl memcpy
	addi %r3, %r31, 0x3ffc
	subi %r4, %r13, 0x6fd8
	li %r5, 0x4
	bl memcpy
	li %r0, 0x8
	sth %r0, 0x6(%r31)
_1a8f9c:
	li %r0, 0x0
	mr %r3, %r29
	stb %r0, -0x6223(%r13)
	bl sub_19f274
_1a8fac:
	li %r29, 0x0
	stb %r29, -0x6238(%r13)
	b _1a8fbc
_1a8fb8:
	bl sub_19f274
_1a8fbc:
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1a8fdc
sub_1a8fdc: # 0x801b029c
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmplwi %r4, 0x4000
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	bge- _1a9008
	li %r3, -0x80
	b _1a90d4
_1a9008:
	lis %r30, 0x8034
	lis %r9, 0x8025
	addi %r30, %r30, 0x3ee0
	li %r31, 0x0
	lis %r8, 0x8025
	lis %r4, 0x8000
	addi %r7, %r4, 0x3800
	addi %r9, %r9, 0x2ae0
	li %r10, 0x1
	addi %r8, %r8, 0x2af8
	li %r6, 0x4000
	li %r0, 0x100
	stw %r5, 0x15c(%r30)
	li %r4, 0x0
	li %r5, 0x4000
	stb %r10, -0x6238(%r13)
	stw %r31, 0x160(%r30)
	stb %r31, 0x15a(%r30)
	stw %r31, 0x17c(%r30)
	stw %r31, 0x180(%r30)
	stw %r9, 0x164(%r30)
	stw %r8, 0x168(%r30)
	stw %r3, 0x16c(%r30)
	stw %r7, 0x170(%r30)
	stw %r6, 0x174(%r30)
	stw %r0, 0x178(%r30)
	bl memset
	mr %r3, %r29
	subi %r4, %r13, 0x6fe0
	li %r5, 0x4
	bl memcpy
	addi %r3, %r29, 0x3ffc
	subi %r4, %r13, 0x6fd8
	li %r5, 0x4
	bl memcpy
	li %r0, 0x8
	lis %r6, 0x801b
	sth %r0, 0x6(%r29)
	addi %r4, %r30, 0x8
	addi %r6, %r6, 0x3b0
	addi %r7, %r30, 0x94
	lbz %r0, 0x15a(%r30)
	li %r5, 0x1
	stb %r31, 0x159(%r30)
	slwi  %r0, %r0, 2
	add %r3, %r30, %r0
	stw %r31, -0x6228(%r13)
	lwz %r3, 0x164(%r3)
	stw %r31, -0x6230(%r13)
	stw %r31, -0x6234(%r13)
	bl sub_195630
_1a90d4:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1a90f0, 0x801b0734 - 0x801b03b0

	.global sub_1a9474
sub_1a9474: # 0x801b0734
	stwu %r1, -0x60(%r1)
	mflr %r0
	stw %r0, 0x64(%r1)
	addi %r11, %r1, 0x60
	bl sub_19768
	cmplwi %r4, 0xc
	lis %r27, 0x802a
	mr %r25, %r3
	mr %r26, %r4
	subi %r27, %r27, 0x75d8
	blt- _1a96a4
	cmplwi %r4, 0x4000
	bgt- _1a96a4
	li %r0, 0x24
	add %r31, %r3, %r4
	stw %r0, -0x622c(%r13)
	subi %r4, %r13, 0x6fe0
	li %r5, 0x4
	subi %r31, %r31, 0x4
	bl sub_74f4
	cmpwi %r3, 0x0
	bne- _1a96a4
	mr %r3, %r31
	subi %r4, %r13, 0x6fd8
	li %r5, 0x4
	bl sub_74f4
	cmpwi %r3, 0x0
	bne- _1a96a4
	cmplwi %r26, 0x4000
	bge- _1a9514
	subfic %r22, %r26, 0x4000
	mr %r3, %r31
	mr %r5, %r22
	li %r4, 0x0
	bl memset
	add %r31, %r31, %r22
	subi %r4, %r13, 0x6fd8
	mr %r3, %r31
	li %r5, 0x4
	bl memcpy
_1a9514:
	addi %r0, %r25, 0x6
	cmplw %r0, %r31
	ble- _1a9528
	li %r0, 0x0
	b _1a9538
_1a9528:
	lbz %r3, 0x4(%r25)
	li %r0, 0x1
	lbz %r30, 0x5(%r25)
	insrwi  %r30, %r3, 8, 16
_1a9538:
	cmpwi %r0, 0x0
	beq- _1a96a4
	addi %r29, %r25, 0x6
	slwi  %r0, %r30, 1
	add %r3, %r29, %r0
	li %r23, 0x0
	addi %r0, %r3, 0x2
	mr %r24, %r29
	subf %r28, %r25, %r0
	b _1a95a4
_1a9560:
	cmplw %r28, %r26
	bgt- _1a96a4
	subf %r0, %r25, %r24
	cmplw %r0, %r26
	bgt- _1a96a4
	lhz %r0, 0x0(%r24)
	cmplw %r28, %r0
	bne- _1a96a4
	add %r3, %r25, %r28
	addi %r4, %r1, 0x8
	bl sub_1a96c0
	cmpwi %r3, 0x0
	beq- _1a96a4
	lwz %r0, 0x24(%r1)
	addi %r24, %r24, 0x2
	addi %r23, %r23, 0x1
	add %r28, %r28, %r0
_1a95a4:
	cmplw %r23, %r30
	blt+ _1a9560
	cmplw %r28, %r26
	bgt- _1a96a4
	slwi  %r0, %r23, 1
	lhzx %r0, %r29, %r0
	cmplw %r28, %r0
	bne- _1a96a4
	subi %r3, %r31, 0x46
	add %r0, %r25, %r28
	cmplw %r0, %r3
	bgt- _1a96a4
	subf %r28, %r0, %r3
	subf %r5, %r3, %r31
	li %r4, 0x0
	bl memset
	lwz %r0, -0x622c(%r13)
	subi %r31, %r31, 0x2
	slwi  %r0, %r0, 3
	add %r26, %r27, %r0
	b _1a9678
_1a95f8:
	mr %r3, %r22
	bl sub_19434
	mr %r21, %r3
	mr %r24, %r29
	li %r23, 0x0
	b _1a966c
_1a9610:
	lhz %r0, 0x0(%r24)
	add %r4, %r25, %r0
	lbzx %r0, %r25, %r0
	clrlwi  %r3, %r0, 27
	addi %r0, %r3, 0x1
	cmplw %r21, %r0
	bne- _1a9664
	mr %r3, %r22
	mr %r5, %r21
	addi %r4, %r4, 0x1
	bl sub_74f4
	cmpwi %r3, 0x0
	bne- _1a9664
	lwz %r0, 0x4(%r27)
	slwi  %r3, %r23, 1
	add %r3, %r29, %r3
	neg %r0, %r0
	subf %r3, %r25, %r3
	slwi  %r0, %r0, 1
	sthx %r3, %r31, %r0
	b _1a9674
_1a9664:
	addi %r24, %r24, 0x2
	addi %r23, %r23, 0x1
_1a966c:
	cmplw %r23, %r30
	blt+ _1a9610
_1a9674:
	addi %r27, %r27, 0x8
_1a9678:
	cmplw %r27, %r26
	bge- _1a968c
	lwz %r22, 0x0(%r27)
	cmpwi %r22, 0x0
	bne+ _1a95f8
_1a968c:
	subf %r0, %r25, %r31
	stw %r30, -0x6230(%r13)
	li %r3, 0x0
	stw %r0, -0x6228(%r13)
	stw %r28, -0x6234(%r13)
	b _1a96a8
_1a96a4:
	li %r3, 0x2
_1a96a8:
	addi %r11, %r1, 0x60
	bl sub_197b4
	lwz %r0, 0x64(%r1)
	mtlr %r0
	addi %r1, %r1, 0x60
	blr

	.global sub_1a96c0
sub_1a96c0: # 0x801b0980
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r5, 0x20
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	li %r4, 0x0
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	mr %r3, %r31
	bl memset
	lbz %r4, 0x0(%r30)
	addi %r0, %r30, 0x1
	stw %r0, 0x14(%r31)
	clrlwi  %r3, %r4, 27
	rlwinm  %r6, %r4, 0, 24, 26
	addi %r0, %r3, 0x1
	add %r3, %r30, %r0
	cmpwi %r6, 0x80
	addi %r3, %r3, 0x1
	stw %r0, 0xc(%r31)
	stw %r3, 0x18(%r31)
	beq- _1a9774
	bge- _1a9744
	cmpwi %r6, 0x40
	beq- _1a9798
	bge- _1a9738
	cmpwi %r6, 0x20
	beq- _1a97bc
	b _1a9830
_1a9738:
	cmpwi %r6, 0x60
	beq- _1a9768
	b _1a9830
_1a9744:
	cmpwi %r6, 0xc0
	beq- _1a978c
	bge- _1a975c
	cmpwi %r6, 0xa0
	beq- _1a9780
	b _1a9830
_1a975c:
	cmpwi %r6, 0xe0
	beq- _1a9768
	b _1a9830
_1a9768:
	li %r0, 0x1
	stw %r0, 0x10(%r31)
	b _1a97e4
_1a9774:
	li %r0, 0x2
	stw %r0, 0x10(%r31)
	b _1a97e4
_1a9780:
	li %r0, 0x4
	stw %r0, 0x10(%r31)
	b _1a97e4
_1a978c:
	li %r0, 0x8
	stw %r0, 0x10(%r31)
	b _1a97e4
_1a9798:
	lbz %r4, 0x0(%r3)
	addi %r0, %r3, 0x1
	lwz %r3, 0x1c(%r31)
	addi %r4, %r4, 0x1
	stw %r0, 0x18(%r31)
	addi %r0, %r3, 0x1
	stw %r4, 0x10(%r31)
	stw %r0, 0x1c(%r31)
	b _1a97e4
_1a97bc:
	lbz %r5, 0x0(%r3)
	addi %r0, %r3, 0x2
	lbz %r4, 0x1(%r3)
	insrwi  %r4, %r5, 8, 16
	lwz %r3, 0x1c(%r31)
	addi %r4, %r4, 0x1
	stw %r0, 0x18(%r31)
	addi %r0, %r3, 0x2
	stw %r4, 0x10(%r31)
	stw %r0, 0x1c(%r31)
_1a97e4:
	cmplwi %r6, 0x40
	beq- _1a97f4
	cmplwi %r6, 0x20
	bne- _1a9800
_1a97f4:
	li %r0, 0x40
	stb %r0, 0x9(%r31)
	b _1a9814
_1a9800:
	stb %r6, 0x8(%r31)
	mr %r3, %r31
	lwz %r4, 0x18(%r31)
	lwz %r5, 0x10(%r31)
	bl memcpy
_1a9814:
	lwz %r3, 0xc(%r31)
	lwz %r0, 0x10(%r31)
	lwz %r4, 0x1c(%r31)
	add %r0, %r3, %r0
	add %r3, %r0, %r4
	addi %r0, %r3, 0x1
	stw %r0, 0x1c(%r31)
_1a9830:
	lwz %r3, 0x10(%r31)
	lwz %r31, 0xc(%r1)
	neg %r0, %r3
	lwz %r30, 0x8(%r1)
	or %r0, %r0, %r3
	srwi  %r3, %r0, 31
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1a9858, 0x801b0f20 - 0x801b0b18
_1a9c60:
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19780
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	li %r31, 0x0
	bl sub_19f24c
	li %r0, 0x0
	mr %r30, %r3
	cmplw %r27, %r0
	beq- _1a9d1c
	lwz %r0, -0x622c(%r13)
	lis %r5, 0x8034
	addi %r5, %r5, 0x4080
	cmplw %r29, %r0
	bge- _1a9ce4
	lwz %r3, -0x6228(%r13)
	cmpwi %r3, 0x0
	beq- _1a9ce4
	neg %r0, %r29
	add %r3, %r5, %r3
	slwi  %r0, %r0, 1
	lhzx %r0, %r3, %r0
	cmpwi %r0, 0x0
	beq- _1a9ce4
	lhzx %r0, %r5, %r0
	addi %r4, %r1, 0x8
	add %r3, %r5, %r0
	bl sub_1a96c0
	b _1a9ce8
_1a9ce4:
	li %r3, 0x0
_1a9ce8:
	cmpwi %r3, 0x0
	beq- _1a9d1c
	lbz %r0, 0x11(%r1)
	cmpwi %r0, 0x0
	beq- _1a9d1c
	lwz %r0, 0x18(%r1)
	cmplw %r0, %r28
	bne- _1a9d1c
	lwz %r4, 0x20(%r1)
	mr %r3, %r27
	mr %r5, %r28
	bl memcpy
	li %r31, 0x1
_1a9d1c:
	mr %r3, %r30
	bl sub_19f274
	addi %r11, %r1, 0x40
	mr %r3, %r31
	bl sub_197cc
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	.incbin "./dol.text.bin", 0x1a9d40, 0x801b1c60 - 0x801b1000

	.global sub_1aa9a0
sub_1aa9a0: # 0x801b1c60
	li %r4, 0x2
	li %r5, 0x9
	b _1a9c60
	.incbin "./dol.text.bin", 0x1aa9ac, 0x801b2e00 - 0x801b1c6c

	.global sub_1abb40
sub_1abb40: # 0x801b2e00
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_1977c
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r26, %r6
	mr %r30, %r7
	mr %r31, %r8
	bl sub_19f24c
	lis %r8, 0x802a
	lwz %r0, -0x73f0(%r8)
	cmpwi %r0, -0x1
	beq- _1abb8c
	bl sub_19f274
	li %r3, 0x0
	b _1abcd8
_1abb8c:
	lis %r7, 0xcd00
	slwi  %r4, %r27, 3
	lis %r5, 0xf00
	lwz %r9, 0x6438(%r7)
	sraw %r5, %r5, %r4
	addi %r0, %r29, 0x3
	and %r9, %r9, %r5
	subi %r6, %r8, 0x73f0
	stw %r9, 0x6438(%r7)
	srwi. %r4, %r0, 2
	li %r5, 0x0
	stw %r27, -0x73f0(%r8)
	stw %r31, 0x10(%r6)
	stw %r30, 0x8(%r6)
	stw %r26, 0xc(%r6)
	beq- _1abc7c
	cmplwi %r4, 0x8
	subi %r6, %r4, 0x8
	ble- _1abc44
	addi %r0, %r6, 0x7
	mr %r8, %r28
	srwi  %r0, %r0, 3
	addi %r7, %r7, 0x6400
	mtctr %r0
	cmplwi %r6, 0x0
	ble- _1abc44
_1abbf4:
	lwz %r0, 0x0(%r8)
	addi %r5, %r5, 0x8
	stw %r0, 0x80(%r7)
	lwz %r0, 0x4(%r8)
	stw %r0, 0x84(%r7)
	lwz %r0, 0x8(%r8)
	stw %r0, 0x88(%r7)
	lwz %r0, 0xc(%r8)
	stw %r0, 0x8c(%r7)
	lwz %r0, 0x10(%r8)
	stw %r0, 0x90(%r7)
	lwz %r0, 0x14(%r8)
	stw %r0, 0x94(%r7)
	lwz %r0, 0x18(%r8)
	stw %r0, 0x98(%r7)
	lwz %r0, 0x1c(%r8)
	addi %r8, %r8, 0x20
	stw %r0, 0x9c(%r7)
	addi %r7, %r7, 0x20
	bdnz+ _1abbf4
_1abc44:
	slwi  %r7, %r5, 2
	lis %r0, 0xcd00
	add %r6, %r0, %r7
	subf %r0, %r5, %r4
	add %r7, %r28, %r7
	addi %r6, %r6, 0x6400
	mtctr %r0
	cmplw %r5, %r4
	bge- _1abc7c
_1abc68:
	lwz %r0, 0x0(%r7)
	addi %r7, %r7, 0x4
	stw %r0, 0x80(%r6)
	addi %r6, %r6, 0x4
	bdnz+ _1abc68
_1abc7c:
	subi %r4, %r29, 0x80
	subfic %r0, %r29, 0x80
	nor %r0, %r4, %r0
	lis %r9, 0xcd00
	srawi %r5, %r0, 31
	neg %r6, %r31
	subi %r4, %r30, 0x80
	subfic %r0, %r30, 0x80
	nor %r0, %r4, %r0
	lwz %r8, 0x6434(%r9)
	srawi %r0, %r0, 31
	or %r7, %r6, %r31
	andc %r4, %r29, %r5
	oris %r6, %r8, 0x8000
	inslwi  %r6, %r7, 1, 1
	andc %r0, %r30, %r0
	insrwi  %r6, %r4, 7, 9
	insrwi  %r6, %r0, 7, 17
	insrwi  %r6, %r27, 2, 29
	ori %r0, %r6, 0x1
	stw %r0, 0x6434(%r9)
	bl sub_19f274
	li %r3, 0x1
_1abcd8:
	addi %r11, %r1, 0x20
	bl sub_197c8
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1abcf0, 0x801b3028 - 0x801b2fb0

	.global sub_1abd68
sub_1abd68: # 0x801b3028
	mulli %r3, %r3, 0xc
	lis %r0, 0xcd00
	add %r3, %r0, %r3
	stw %r4, 0x6400(%r3)
	blr

	.global sub_1abd7c
sub_1abd7c: # 0x801b303c
	lis %r0, 0x8000
	lis %r3, 0xcd00
	stw %r0, 0x6438(%r3)
	blr
	.incbin "./dol.text.bin", 0x1abd8c, 0x801b334c - 0x801b304c

	.global sub_1ac08c
sub_1ac08c: # 0x801b334c
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19768
	lis %r31, 0x8035
	slwi  %r11, %r3, 5
	subi %r31, %r31, 0x3f80
	mr %r21, %r3
	addi %r0, %r31, 0x0
	mr %r22, %r4
	mr %r23, %r5
	mr %r24, %r6
	mr %r25, %r7
	mr %r26, %r8
	mr %r27, %r9
	mr %r28, %r10
	add %r29, %r0, %r11
	bl sub_19f24c
	lwz %r0, 0x0(%r29)
	mr %r30, %r3
	cmpwi %r0, -0x1
	bne- _1ac0f8
	lis %r3, 0x802a
	lwz %r0, -0x73f0(%r3)
	cmpw %r0, %r21
	bne- _1ac108
_1ac0f8:
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x0
	b _1ac1e0
_1ac108:
	bl sub_1a3a1c
	or. %r0, %r28, %r27
	mr %r8, %r3
	bne- _1ac124
	mr %r28, %r4
	mr %r27, %r8
	b _1ac140
_1ac124:
	slwi  %r5, %r21, 3
	addi %r0, %r31, 0x80
	add %r6, %r0, %r5
	lwz %r5, 0x4(%r6)
	lwz %r0, 0x0(%r6)
	addc %r28, %r28, %r5
	adde %r27, %r27, %r0
_1ac140:
	xoris %r0, %r3, 0x8000
	xoris %r5, %r27, 0x8000
	subfc %r3, %r28, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	beq- _1ac180
	mulli %r3, %r21, 0x30
	addi %r0, %r31, 0xc0
	subfc %r6, %r4, %r28
	lis %r7, 0x801b
	add %r3, %r0, %r3
	subfe %r5, %r8, %r27
	addi %r7, %r7, 0x32c0
	bl sub_199510
	b _1ac1b4
_1ac180:
	mr %r3, %r21
	mr %r4, %r22
	mr %r5, %r23
	mr %r6, %r24
	mr %r7, %r25
	mr %r8, %r26
	bl sub_1abb40
	cmpwi %r3, 0x0
	beq- _1ac1b4
	mr %r3, %r30
	bl sub_19f274
	li %r3, 0x1
	b _1ac1e0
_1ac1b4:
	stw %r21, 0x0(%r29)
	mr %r3, %r30
	stw %r22, 0x4(%r29)
	stw %r23, 0x8(%r29)
	stw %r24, 0xc(%r29)
	stw %r25, 0x10(%r29)
	stw %r26, 0x14(%r29)
	stw %r28, 0x1c(%r29)
	stw %r27, 0x18(%r29)
	bl sub_19f274
	li %r3, 0x1
_1ac1e0:
	addi %r11, %r1, 0x40
	bl sub_197b4
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	.incbin "./dol.text.bin", 0x1ac1f8, 0x801b3768 - 0x801b34b8

	.global sub_1ac4a8
sub_1ac4a8: # 0x801b3768
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	bl sub_19f24c
	lis %r5, 0x802a
	lis %r4, 0x8035
	slwi  %r6, %r27, 2
	slwi  %r0, %r27, 3
	subi %r5, %r5, 0x73d8
	subi %r4, %r4, 0x3ee0
	lwzx %r28, %r5, %r6
	add %r30, %r5, %r6
	mr %r29, %r3
	add %r31, %r4, %r0
	bl sub_1a3a1c
	lwz %r6, 0x4(%r31)
	lis %r5, 0x802a
	lwz %r0, 0x0(%r31)
	subi %r5, %r5, 0x73f0
	subfc %r8, %r6, %r4
	lwz %r4, 0x4(%r5)
	subfe %r7, %r0, %r3
	li %r3, 0x80
	sraw %r0, %r3, %r27
	and. %r0, %r4, %r0
	beq- _1ac54c
	cmplwi %r28, 0x8
	beq- _1ac540
	bl sub_1a3a1c
	stw %r4, 0x4(%r31)
	stw %r3, 0x0(%r31)
	mr %r3, %r29
	bl sub_19f274
	mr %r3, %r28
	b _1ac644
_1ac540:
	stw %r3, 0x0(%r30)
	li %r28, 0x80
	b _1ac5e0
_1ac54c:
	lis %r4, 0x8000
	lis %r3, 0x1062
	lwz %r5, 0xf8(%r4)
	addi %r6, %r3, 0x4dd3
	li %r0, 0x0
	xoris %r4, %r7, 0x8000
	srwi  %r3, %r5, 2
	mulhwu %r3, %r6, %r3
	xoris %r0, %r0, 0x8000
	srwi  %r5, %r3, 6
	mulli %r3, %r5, 0x32
	subfc %r3, %r8, %r3
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	bne- _1ac5a4
	cmplwi %r28, 0x8
	beq- _1ac5a4
	mr %r3, %r29
	bl sub_19f274
	mr %r3, %r28
	b _1ac644
_1ac5a4:
	mulli %r3, %r5, 0x4b
	li %r0, 0x0
	xoris %r4, %r7, 0x8000
	xoris %r0, %r0, 0x8000
	subfc %r3, %r8, %r3
	subfe %r4, %r4, %r0
	subfe %r4, %r0, %r0
	neg. %r4, %r4
	bne- _1ac5d4
	li %r0, 0x80
	stw %r0, 0x0(%r30)
	b _1ac5e0
_1ac5d4:
	li %r0, 0x80
	li %r28, 0x80
	stw %r0, 0x0(%r30)
_1ac5e0:
	bl sub_1a3a1c
	stw %r4, 0x4(%r31)
	lis %r4, 0x431c
	subi %r9, %r4, 0x217d
	lis %r8, 0x801b
	stw %r3, 0x0(%r31)
	lis %r5, 0x8000
	mr %r3, %r27
	mr %r6, %r30
	lwz %r0, 0xf8(%r5)
	addi %r8, %r8, 0x34b8
	subi %r4, %r13, 0x6210
	li %r5, 0x1
	srwi  %r0, %r0, 2
	li %r7, 0x3
	mulhwu %r0, %r9, %r0
	li %r9, 0x0
	srwi  %r10, %r0, 15
	rlwinm  %r0, %r0, 23, 9, 25
	add %r0, %r0, %r10
	srwi  %r10, %r0, 3
	bl sub_1ac08c
	mr %r3, %r29
	bl sub_19f274
	mr %r3, %r28
_1ac644:
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x1ac65c, 0x801b9054 - 0x801b391c
	
	.global sub_1b1d94
sub_1b1d94: # 0x801b9054
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r31, -0x6048(%r13)
	bl sub_19f24c
	stw %r30, -0x6048(%r13)
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1b1dd8
sub_1b1dd8: # 0x801b9098
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r31, -0x604c(%r13)
	bl sub_19f24c
	stw %r30, -0x604c(%r13)
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1b1e1c
sub_1b1e1c: # 0x801b90dc
	cmplwi %r3, 0x22
	bgt- _1b1f2c
	lis %r4, 0x802a
	slwi  %r0, %r3, 2
	subi %r4, %r4, 0x691c
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	lis %r3, 0x802a
	subi %r3, %r3, 0x6be0
	blr
	.incbin "./dol.text.bin", 0x1b1e48, 0x801b91ec - 0x801b9108
_1b1f2c:
	li %r3, 0x0
	blr
	.incbin "./dol.text.bin", 0x1b1f34, 0x801b994c - 0x801b91f4
	
	.global sub_1b268c
sub_1b268c: # 0x801b994c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	bl sub_19f24c
	mr %r31, %r3
	lwz %r30, -0x601c(%r13)
_1b26ac:
	subi %r3, %r13, 0x6040
	bl sub_1a3658
	lwz %r0, -0x601c(%r13)
	cmplw %r30, %r0
	beq+ _1b26ac
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1b26e0
sub_1b26e0: # 0x801b99a0
	stwu %r1, -0x10(%r1)
	stw %r31, 0xc(%r1)
	lbz %r8, 0x2c(%r3)
	lhz %r0, 0xe(%r3)
	slwi  %r31, %r8, 5
	lwz %r11, 0x20(%r3)
	mullw %r8, %r31, %r0
	lhz %r9, 0x16(%r3)
	lwz %r10, 0x30(%r3)
	cmpwi %r11, 0x0
	extlwi  %r0, %r9, 27, 1
	lhz %r12, 0xa(%r3)
	add %r0, %r10, %r0
	add %r9, %r8, %r0
	stw %r9, 0x0(%r4)
	bne- _1b2724
	b _1b2728
_1b2724:
	add %r9, %r9, %r31
_1b2728:
	srwi  %r8, %r12, 31
	clrlwi  %r0, %r12, 31
	xor %r0, %r0, %r8
	stw %r9, 0x0(%r5)
	subf %r0, %r8, %r0
	cmpwi %r0, 0x1
	bne- _1b2750
	lwz %r0, 0x0(%r4)
	stw %r9, 0x0(%r4)
	stw %r0, 0x0(%r5)
_1b2750:
	lwz %r0, 0x0(%r4)
	clrlwi  %r0, %r0, 2
	stw %r0, 0x0(%r4)
	lwz %r0, 0x0(%r5)
	clrlwi  %r0, %r0, 2
	stw %r0, 0x0(%r5)
	lwz %r0, 0x44(%r3)
	cmpwi %r0, 0x0
	beq- _1b27f4
	lbz %r8, 0x2c(%r3)
	lhz %r0, 0xe(%r3)
	slwi  %r31, %r8, 5
	lwz %r11, 0x20(%r3)
	mullw %r8, %r31, %r0
	lhz %r9, 0x16(%r3)
	lwz %r10, 0x48(%r3)
	cmpwi %r11, 0x0
	extlwi  %r0, %r9, 27, 1
	lhz %r12, 0xa(%r3)
	add %r0, %r10, %r0
	add %r9, %r8, %r0
	stw %r9, 0x0(%r6)
	bne- _1b27b0
	b _1b27b4
_1b27b0:
	add %r9, %r9, %r31
_1b27b4:
	srwi  %r8, %r12, 31
	clrlwi  %r0, %r12, 31
	xor %r0, %r0, %r8
	stw %r9, 0x0(%r7)
	subf %r0, %r8, %r0
	cmpwi %r0, 0x1
	bne- _1b27dc
	lwz %r0, 0x0(%r6)
	stw %r9, 0x0(%r6)
	stw %r0, 0x0(%r7)
_1b27dc:
	lwz %r0, 0x0(%r6)
	clrlwi  %r0, %r0, 2
	stw %r0, 0x0(%r6)
	lwz %r0, 0x0(%r7)
	clrlwi  %r0, %r0, 2
	stw %r0, 0x0(%r7)
_1b27f4:
	lwz %r0, 0x0(%r4)
	lis %r8, 0x100
	cmplw %r0, %r8
	bge- _1b2830
	lwz %r0, 0x0(%r5)
	cmplw %r0, %r8
	bge- _1b2830
	lwz %r0, 0x0(%r6)
	cmplw %r0, %r8
	bge- _1b2830
	lwz %r0, 0x0(%r7)
	cmplw %r0, %r8
	bge- _1b2830
	li %r11, 0x0
	b _1b2834
_1b2830:
	li %r11, 0x1
_1b2834:
	cmpwi %r11, 0x0
	beq- _1b286c
	lwz %r0, 0x0(%r4)
	srwi  %r0, %r0, 5
	stw %r0, 0x0(%r4)
	lwz %r0, 0x0(%r5)
	srwi  %r0, %r0, 5
	stw %r0, 0x0(%r5)
	lwz %r0, 0x0(%r6)
	srwi  %r0, %r0, 5
	stw %r0, 0x0(%r6)
	lwz %r0, 0x0(%r7)
	srwi  %r0, %r0, 5
	stw %r0, 0x0(%r7)
_1b286c:
	lwz %r0, -0x6090(%r13)
	lis %r8, 0x8035
	lwz %r10, 0x0(%r4)
	subi %r8, %r8, 0x3b98
	lwz %r9, -0x608c(%r13)
	oris %r0, %r0, 0x1
	sth %r10, 0x1e(%r8)
	slwi  %r11, %r11, 12
	stw %r9, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	lwz %r4, 0x0(%r4)
	lwz %r0, -0x6090(%r13)
	srwi  %r10, %r4, 16
	lbz %r9, 0x3c(%r3)
	lwz %r4, -0x608c(%r13)
	oris %r0, %r0, 0x2
	or %r10, %r11, %r10
	slwi  %r9, %r9, 8
	stw %r4, -0x608c(%r13)
	or %r4, %r10, %r9
	stw %r0, -0x6090(%r13)
	sth %r4, 0x1c(%r8)
	lwz %r0, -0x6090(%r13)
	lwz %r9, 0x0(%r5)
	lwz %r4, -0x608c(%r13)
	ori %r0, %r0, 0x1000
	sth %r9, 0x26(%r8)
	stw %r4, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r5, 0x0(%r5)
	lwz %r4, -0x608c(%r13)
	ori %r0, %r0, 0x2000
	srwi  %r5, %r5, 16
	stw %r4, -0x608c(%r13)
	sth %r5, 0x24(%r8)
	stw %r0, -0x6090(%r13)
	lwz %r0, 0x44(%r3)
	cmpwi %r0, 0x0
	beq- _1b298c
	lwz %r4, -0x6090(%r13)
	lis %r3, 0x1
	lwz %r9, 0x0(%r6)
	subi %r0, %r3, 0x8000
	lwz %r5, -0x608c(%r13)
	ori %r3, %r4, 0x4000
	sth %r9, 0x22(%r8)
	stw %r5, -0x608c(%r13)
	stw %r3, -0x6090(%r13)
	lwz %r3, -0x6090(%r13)
	lwz %r5, 0x0(%r6)
	lwz %r4, -0x608c(%r13)
	or %r0, %r3, %r0
	srwi  %r3, %r5, 16
	stw %r4, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	sth %r3, 0x20(%r8)
	lwz %r0, -0x6090(%r13)
	lwz %r4, 0x0(%r7)
	lwz %r3, -0x608c(%r13)
	ori %r0, %r0, 0x400
	sth %r4, 0x2a(%r8)
	stw %r3, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r4, 0x0(%r7)
	lwz %r3, -0x608c(%r13)
	ori %r0, %r0, 0x800
	srwi  %r4, %r4, 16
	stw %r3, -0x608c(%r13)
	sth %r4, 0x28(%r8)
	stw %r0, -0x6090(%r13)
_1b298c:
	lwz %r31, 0xc(%r1)
	addi %r1, %r1, 0x10
	blr

	.global sub_1b2998
sub_1b2998: # 0x801b9c58
	lwz %r0, -0x6090(%r13)
	lis %r9, 0x8035
	lis %r6, 0x8035
	lhz %r10, 0x1a(%r3)
	lwz %r8, -0x608c(%r13)
	subi %r9, %r9, 0x3b98
	oris %r7, %r0, 0x1000
	subi %r6, %r6, 0x3b20
	stw %r8, -0x608c(%r13)
	lwz %r0, 0x28(%r6)
	sth %r10, 0x6(%r9)
	cmplwi %r0, 0x8
	stw %r7, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lbz %r8, 0x1d(%r3)
	lbz %r7, 0x1e(%r3)
	oris %r0, %r0, 0x2000
	lwz %r6, -0x608c(%r13)
	insrwi  %r7, %r8, 8, 16
	sth %r7, 0x4(%r9)
	stw %r6, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	bne- _1b2a04
	lbz %r4, 0x1f(%r3)
	lhz %r10, 0x20(%r3)
	addi %r9, %r4, 0xac
	b _1b2a24
_1b2a04:
	lhz %r0, 0x20(%r3)
	subfic %r6, %r5, 0x2d0
	lbz %r7, 0x1f(%r3)
	add %r5, %r4, %r0
	add %r4, %r4, %r7
	addi %r0, %r5, 0x28
	subi %r9, %r4, 0x28
	subf %r10, %r6, %r0
_1b2a24:
	lwz %r0, -0x6090(%r13)
	lis %r6, 0x8035
	lbz %r8, 0x1c(%r3)
	clrlslwi  %r7, %r9, 23, 7
	lwz %r4, -0x608c(%r13)
	oris %r5, %r0, 0x400
	srwi  %r3, %r9, 9
	slwi  %r0, %r10, 1
	stw %r4, -0x608c(%r13)
	or %r4, %r3, %r0
	subi %r6, %r6, 0x3b98
	or %r7, %r8, %r7
	stw %r5, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r3, -0x608c(%r13)
	oris %r0, %r0, 0x800
	sth %r7, 0xa(%r6)
	stw %r3, -0x608c(%r13)
	sth %r4, 0x8(%r6)
	stw %r0, -0x6090(%r13)
	blr

	.global sub_1b2a78
sub_1b2a78: # 0x801b9d38
	stwu %r1, -0x10(%r1)
	lis %r11, 0x8035
	subi %r11, %r11, 0x3b20
	stw %r31, 0xc(%r1)
	lwz %r12, 0x18(%r1)
	stw %r30, 0x8(%r1)
	lwz %r11, 0x24(%r11)
	subi %r0, %r11, 0x2
	cmplwi %r0, 0x1
	bgt- _1b2aac
	li %r11, 0x1
	li %r30, 0x2
	b _1b2ab4
_1b2aac:
	li %r11, 0x2
	li %r30, 0x1
_1b2ab4:
	srwi  %r31, %r3, 31
	clrlwi  %r0, %r3, 31
	xor %r0, %r0, %r31
	subf. %r0, %r31, %r0
	bne- _1b2b00
	mullw %r0, %r11, %r6
	subf %r0, %r4, %r0
	subf %r0, %r3, %r0
	mullw %r31, %r30, %r0
	mullw %r3, %r30, %r3
	add %r6, %r9, %r31
	clrlwi  %r6, %r6, 16
	add %r0, %r7, %r3
	add %r7, %r10, %r31
	add %r3, %r8, %r3
	clrlwi  %r0, %r0, 16
	clrlwi  %r7, %r7, 16
	clrlwi  %r3, %r3, 16
	b _1b2b34
_1b2b00:
	mullw %r0, %r11, %r6
	subf %r0, %r4, %r0
	subf %r0, %r3, %r0
	mullw %r31, %r30, %r0
	mullw %r3, %r30, %r3
	add %r6, %r10, %r31
	clrlwi  %r6, %r6, 16
	add %r0, %r8, %r3
	add %r3, %r7, %r3
	add %r7, %r9, %r31
	clrlwi  %r0, %r0, 16
	clrlwi  %r3, %r3, 16
	clrlwi  %r7, %r7, 16
_1b2b34:
	divw %r4, %r4, %r11
	cmpwi %r12, 0x0
	clrlwi  %r10, %r4, 16
	beq- _1b2b70
	clrlslwi  %r4, %r10, 16, 1
	addi %r6, %r6, 0x2
	subi %r8, %r4, 0x2
	li %r10, 0x0
	addi %r4, %r7, 0x2
	clrlwi  %r6, %r6, 16
	add %r0, %r0, %r8
	add %r3, %r3, %r8
	clrlwi  %r7, %r4, 16
	clrlwi  %r0, %r0, 16
	clrlwi  %r3, %r3, 16
_1b2b70:
	lwz %r8, -0x6090(%r13)
	lis %r4, 0x8000
	lwz %r9, -0x608c(%r13)
	clrlslwi  %r11, %r10, 16, 4
	or %r4, %r8, %r4
	lis %r10, 0x8035
	stw %r9, -0x608c(%r13)
	subi %r8, %r10, 0x3b98
	or %r9, %r5, %r11
	stw %r4, -0x6090(%r13)
	lwz %r4, -0x6090(%r13)
	lwz %r5, -0x608c(%r13)
	oris %r4, %r4, 0x100
	sth %r0, 0xe(%r8)
	stw %r5, -0x608c(%r13)
	stw %r4, -0x6090(%r13)
	lwz %r4, -0x6090(%r13)
	lwz %r5, -0x608c(%r13)
	oris %r4, %r4, 0x200
	sth %r9, -0x3b98(%r10)
	stw %r5, -0x608c(%r13)
	stw %r4, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r4, -0x608c(%r13)
	oris %r0, %r0, 0x40
	sth %r6, 0xc(%r8)
	stw %r4, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r4, -0x608c(%r13)
	oris %r0, %r0, 0x80
	sth %r3, 0x12(%r8)
	stw %r4, -0x608c(%r13)
	sth %r7, 0x10(%r8)
	stw %r0, -0x6090(%r13)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	addi %r1, %r1, 0x10
	blr

	.global sub_1b2c0c
sub_1b2c0c: # 0x801b9ecc
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19778
	lis %r28, 0x802a
	mr %r30, %r3
	subi %r28, %r28, 0x6c28
	bl sub_19f24c
	lis %r4, 0x8035
	lwz %r5, 0x0(%r30)
	subi %r4, %r4, 0x3b20
	mr %r29, %r3
	lwz %r0, 0x24(%r4)
	clrlwi  %r3, %r5, 30
	cmplw %r0, %r3
	beq- _1b2c5c
	li %r0, 0x1
	stw %r3, 0x24(%r4)
	stw %r0, -0x6098(%r13)
_1b2c5c:
	lwz %r0, 0x0(%r30)
	lis %r3, 0x8000
	lwz %r25, 0xcc(%r3)
	srwi  %r26, %r0, 2
	cmplwi %r26, 0x4
	bne- _1b2cdc
	lwz %r0, -0x6064(%r13)
	cmpwi %r0, 0x0
	bne- _1b2cdc
	li %r0, 0x1
	addi %r3, %r28, 0x3bc
	stw %r0, -0x6064(%r13)
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x3e8
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x414
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x440
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x46c
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x498
	crxor 6, 6, 6
	bl sub_19b270
	addi %r3, %r28, 0x3bc
	crxor 6, 6, 6
	bl sub_19b270
_1b2cdc:
	cmplwi %r25, 0x1
	beq- _1b2cfc
	cmplwi %r25, 0x5
	beq- _1b2cfc
	cmplwi %r26, 0x1
	beq- _1b2d1c
	cmplwi %r26, 0x5
	beq- _1b2d1c
_1b2cfc:
	cmplwi %r25, 0x1
	beq- _1b2d0c
	cmplwi %r25, 0x5
	bne- _1b2d38
_1b2d0c:
	cmplwi %r26, 0x1
	beq- _1b2d38
	cmplwi %r26, 0x5
	beq- _1b2d38
_1b2d1c:
	mr %r6, %r25
	mr %r7, %r26
	addi %r5, %r28, 0x4c4
	subi %r3, %r13, 0x6f68
	li %r4, 0xa57
	crxor 6, 6, 6
	bl sub_19b300
_1b2d38:
	cmpwi %r26, 0x0
	beq- _1b2d48
	cmplwi %r26, 0x2
	bne- _1b2d58
_1b2d48:
	lis %r3, 0x8035
	subi %r3, %r3, 0x3b20
	stw %r25, 0x28(%r3)
	b _1b2d64
_1b2d58:
	lis %r3, 0x8035
	subi %r3, %r3, 0x3b20
	stw %r26, 0x28(%r3)
_1b2d64:
	lis %r4, 0x8035
	lhz %r5, 0xa(%r30)
	subi %r3, %r4, 0x3b20
	lwz %r0, 0x24(%r3)
	sth %r5, -0x3b20(%r4)
	cmplwi %r0, 0x1
	bne- _1b2d8c
	lhz %r0, 0xc(%r30)
	clrlslwi  %r8, %r0, 17, 1
	b _1b2d90
_1b2d8c:
	lhz %r8, 0xc(%r30)
_1b2d90:
	lis %r7, 0x8035
	lhz %r6, 0xe(%r30)
	subi %r7, %r7, 0x3b20
	lhz %r4, 0x4(%r30)
	lwz %r9, 0x24(%r7)
	li %r0, 0x0
	lhz %r5, 0x8(%r30)
	lwz %r3, 0x14(%r30)
	cmplwi %r9, 0x2
	sth %r8, 0x2(%r7)
	sth %r6, 0x4(%r7)
	sth %r4, 0x12(%r7)
	sth %r5, 0x14(%r7)
	stw %r3, 0x20(%r7)
	sth %r4, 0x1a(%r7)
	sth %r5, 0x1c(%r7)
	sth %r0, 0x16(%r7)
	sth %r0, 0x18(%r7)
	bne- _1b2de0
	b _1b2df8
_1b2de0:
	cmplwi %r9, 0x3
	bne- _1b2dec
	b _1b2df8
_1b2dec:
	cmpwi %r3, 0x0
	bne- _1b2df8
	clrlslwi  %r5, %r5, 17, 1
_1b2df8:
	lis %r31, 0x8035
	subi %r28, %r31, 0x3b20
	lwz %r4, 0x24(%r28)
	lwz %r0, 0x28(%r28)
	subi %r3, %r4, 0x3
	sth %r5, 0x6(%r28)
	cntlzw %r3, %r3
	slwi  %r0, %r0, 2
	srwi  %r3, %r3, 5
	stw %r3, 0x44(%r28)
	add %r3, %r0, %r4
	bl sub_1b1e1c
	lhz %r0, 0x4(%r28)
	mr %r30, %r3
	lha %r5, -0x3b20(%r31)
	lha %r4, -0x609c(%r13)
	subfic %r8, %r0, 0x2d0
	stw %r3, 0x54(%r28)
	add %r4, %r5, %r4
	cmpw %r4, %r8
	lhz %r7, 0x2(%r3)
	ble- _1b2e54
	b _1b2e5c
_1b2e54:
	srawi %r0, %r4, 31
	andc %r8, %r4, %r0
_1b2e5c:
	lis %r5, 0x8035
	lha %r9, -0x609a(%r13)
	subi %r5, %r5, 0x3b20
	lhz %r6, 0x2(%r5)
	lwz %r4, 0x20(%r5)
	extsh %r0, %r6
	clrlwi  %r6, %r6, 31
	add %r10, %r0, %r9
	sth %r8, 0x8(%r5)
	cntlzw %r0, %r4
	srwi  %r4, %r0, 5
	cmpw %r10, %r6
	mr %r0, %r6
	addi %r5, %r4, 0x1
	ble- _1b2e9c
	mr %r0, %r10
_1b2e9c:
	lis %r4, 0x8035
	extsh %r7, %r7
	subi %r4, %r4, 0x3b20
	lhz %r10, 0x2(%r4)
	slwi  %r8, %r7, 1
	lhz %r7, 0x6(%r4)
	subf %r31, %r6, %r8
	extsh %r8, %r10
	lha %r11, 0x2(%r4)
	add %r28, %r9, %r8
	lha %r10, 0x6(%r4)
	extsh %r8, %r7
	add %r11, %r11, %r9
	add %r8, %r8, %r28
	add %r9, %r10, %r28
	subf %r8, %r31, %r8
	subf %r26, %r6, %r11
	neg %r12, %r8
	subf %r25, %r31, %r9
	subf %r27, %r6, %r28
	sth %r0, 0xa(%r4)
	andc %r10, %r12, %r8
	neg %r6, %r25
	srawi %r28, %r10, 31
	lhz %r9, 0x1c(%r4)
	srawi %r10, %r27, 31
	andc %r6, %r6, %r25
	srawi %r12, %r26, 31
	and %r8, %r8, %r28
	and %r31, %r27, %r10
	srawi %r10, %r6, 31
	srawi %r6, %r27, 31
	and %r12, %r26, %r12
	and %r6, %r27, %r6
	add %r7, %r7, %r31
	subf %r0, %r8, %r7
	and %r10, %r25, %r10
	divw %r6, %r6, %r5
	sth %r0, 0xc(%r4)
	lhz %r11, 0x18(%r4)
	divw %r7, %r12, %r5
	add %r0, %r9, %r6
	divw %r5, %r10, %r5
	subf %r6, %r7, %r11
	sth %r6, 0xe(%r4)
	subf %r0, %r5, %r0
	sth %r0, 0x10(%r4)
	lhz %r5, 0x18(%r3)
	srwi  %r4, %r5, 31
	clrlwi  %r0, %r5, 31
	xor %r0, %r0, %r4
	extrwi  %r7, %r5, 16, 15
	subf %r0, %r4, %r0
	clrlwi. %r0, %r0, 16
	beq- _1b2f80
	lhz %r6, 0x1a(%r3)
	b _1b2f84
_1b2f80:
	li %r6, 0x0
_1b2f84:
	lwz %r0, -0x6090(%r13)
	lis %r3, 0x8035
	lwz %r5, -0x608c(%r13)
	subi %r3, %r3, 0x3b20
	ori %r4, %r0, 0x40
	addi %r0, %r7, 0x1
	stw %r5, -0x608c(%r13)
	lis %r7, 0x8035
	lwz %r9, 0x24(%r3)
	clrlwi  %r5, %r0, 16
	stw %r4, -0x6090(%r13)
	addi %r8, %r6, 0x1
	subi %r0, %r9, 0x2
	ori %r6, %r5, 0x1000
	subi %r7, %r7, 0x3b98
	lwz %r4, -0x6090(%r13)
	lwz %r5, -0x608c(%r13)
	cmplwi %r0, 0x1
	ori %r0, %r4, 0x80
	sth %r8, 0x32(%r7)
	lhz %r4, 0x2(%r7)
	stw %r5, -0x608c(%r13)
	lhz %r5, 0x6c(%r7)
	sth %r6, 0x30(%r7)
	stw %r0, -0x6090(%r13)
	bgt- _1b3014
	lwz %r0, 0x28(%r3)
	rlwinm  %r3, %r4, 0, 30, 28
	ori %r4, %r3, 0x4
	cmplwi %r0, 0x8
	bne- _1b3008
	clrrwi  %r10, %r5, 1
	b _1b3020
_1b3008:
	clrrwi  %r0, %r5, 1
	ori %r10, %r0, 0x1
	b _1b3020
_1b3014:
	rlwinm  %r4, %r4, 0, 30, 28
	clrrwi  %r10, %r5, 1
	insrwi  %r4, %r9, 1, 29
_1b3020:
	lis %r3, 0x8035
	rlwinm  %r4, %r4, 0, 29, 27
	subi %r3, %r3, 0x3b20
	lwz %r5, 0x28(%r3)
	lwz %r8, 0x44(%r3)
	subi %r0, %r5, 0x1
	slwi  %r3, %r8, 3
	or %r3, %r4, %r3
	cmplwi %r0, 0x2
	rlwinm  %r7, %r3, 0, 24, 21
	bgt- _1b3054
	slwi  %r0, %r5, 8
	or %r7, %r7, %r0
_1b3054:
	lwz %r0, -0x6090(%r13)
	lis %r3, 0x8035
	lwz %r4, -0x608c(%r13)
	subi %r3, %r3, 0x3b20
	oris %r0, %r0, 0x4000
	lis %r6, 0x8035
	stw %r4, -0x608c(%r13)
	subi %r6, %r6, 0x3b98
	lhz %r4, 0x1a(%r3)
	cmpwi %r8, 0x0
	stw %r0, -0x6090(%r13)
	lhz %r5, 0x4(%r3)
	lwz %r3, -0x6090(%r13)
	lwz %r0, -0x608c(%r13)
	sth %r7, 0x2(%r6)
	ori %r0, %r0, 0x200
	stw %r0, -0x608c(%r13)
	sth %r10, 0x6c(%r6)
	stw %r3, -0x6090(%r13)
	beq- _1b30a8
	clrlslwi  %r4, %r4, 16, 1
_1b30a8:
	clrlwi  %r7, %r4, 16
	cmplw %r7, %r5
	bge- _1b3104
	clrlslwi  %r0, %r7, 16, 8
	lwz %r3, -0x6090(%r13)
	add %r4, %r5, %r0
	lwz %r0, -0x608c(%r13)
	subi %r6, %r4, 0x1
	divwu %r6, %r6, %r5
	oris %r0, %r0, 0x400
	stw %r0, -0x608c(%r13)
	lis %r4, 0x8035
	stw %r3, -0x6090(%r13)
	subi %r4, %r4, 0x3b98
	lwz %r3, -0x6090(%r13)
	ori %r6, %r6, 0x1000
	lwz %r0, -0x608c(%r13)
	sth %r6, 0x4a(%r4)
	ori %r0, %r0, 0x80
	stw %r0, -0x608c(%r13)
	sth %r7, 0x70(%r4)
	stw %r3, -0x6090(%r13)
	b _1b3128
_1b3104:
	lwz %r3, -0x6090(%r13)
	lis %r4, 0x8035
	lwz %r0, -0x608c(%r13)
	subi %r4, %r4, 0x3b98
	li %r6, 0x100
	oris %r0, %r0, 0x400
	sth %r6, 0x4a(%r4)
	stw %r0, -0x608c(%r13)
	stw %r3, -0x6090(%r13)
_1b3128:
	lis %r31, 0x8035
	mr %r3, %r30
	subi %r31, %r31, 0x3b20
	lhz %r4, 0x8(%r31)
	bl sub_1b2998
	lhz %r4, 0x10(%r30)
	lis %r3, 0x8035
	lwz %r0, -0x6090(%r13)
	subi %r3, %r3, 0x3b98
	lbz %r7, 0xc(%r30)
	slwi  %r4, %r4, 5
	lwz %r6, -0x608c(%r13)
	oris %r5, %r0, 0x10
	or %r7, %r7, %r4
	lhz %r4, 0x12(%r31)
	stw %r6, -0x608c(%r13)
	lwz %r6, 0x20(%r31)
	addi %r0, %r4, 0xf
	stw %r5, -0x6090(%r13)
	srawi %r4, %r0, 4
	cmpwi %r6, 0x0
	lhz %r0, 0x1a(%r31)
	sth %r7, 0x16(%r3)
	addze %r4, %r4
	lwz %r5, -0x6090(%r13)
	lhz %r6, 0x14(%r30)
	lbz %r8, 0xe(%r30)
	oris %r5, %r5, 0x20
	slwi  %r7, %r6, 5
	lwz %r6, -0x608c(%r13)
	or %r7, %r8, %r7
	lhz %r9, 0x16(%r31)
	stw %r6, -0x608c(%r13)
	stw %r5, -0x6090(%r13)
	sth %r7, 0x14(%r3)
	lwz %r5, -0x6090(%r13)
	lhz %r6, 0x12(%r30)
	lbz %r8, 0xd(%r30)
	oris %r5, %r5, 0x4
	slwi  %r7, %r6, 5
	lwz %r6, -0x608c(%r13)
	or %r7, %r8, %r7
	stw %r6, -0x608c(%r13)
	stw %r5, -0x6090(%r13)
	sth %r7, 0x1a(%r3)
	lwz %r5, -0x6090(%r13)
	lhz %r6, 0x16(%r30)
	lbz %r8, 0xf(%r30)
	oris %r5, %r5, 0x8
	slwi  %r7, %r6, 5
	lwz %r6, -0x608c(%r13)
	or %r7, %r8, %r7
	stb %r4, 0x2c(%r31)
	stw %r6, -0x608c(%r13)
	sth %r7, 0x18(%r3)
	stw %r5, -0x6090(%r13)
	bne- _1b3214
	clrlwi  %r10, %r4, 24
	b _1b3218
_1b3214:
	clrlslwi  %r10, %r4, 25, 1
_1b3218:
	slwi  %r3, %r9, 28
	srwi  %r4, %r9, 31
	subf %r3, %r4, %r3
	lwz %r5, -0x6090(%r13)
	rotlwi  %r3, %r3, 4
	lwz %r6, -0x608c(%r13)
	add %r9, %r3, %r4
	lwz %r4, -0x6078(%r13)
	clrlwi  %r7, %r9, 24
	lis %r3, 0x8035
	add %r8, %r0, %r7
	cmpwi %r4, 0x0
	addi %r0, %r8, 0xf
	subi %r3, %r3, 0x3b20
	srawi %r8, %r0, 4
	lis %r7, 0x8035
	oris %r0, %r6, 0x800
	stb %r10, 0x2d(%r3)
	addze %r6, %r8
	subi %r7, %r7, 0x3b98
	stw %r0, -0x608c(%r13)
	mr %r0, %r10
	insrwi  %r0, %r6, 8, 16
	stb %r9, 0x3c(%r3)
	stb %r6, 0x2e(%r3)
	sth %r0, 0x48(%r7)
	stw %r5, -0x6090(%r13)
	beq- _1b329c
	addi %r4, %r3, 0x34
	addi %r5, %r3, 0x38
	addi %r6, %r3, 0x4c
	addi %r7, %r3, 0x50
	bl sub_1b26e0
_1b329c:
	lis %r4, 0x8035
	subi %r4, %r4, 0x3b20
	lwz %r0, 0x40(%r4)
	stw %r0, 0x8(%r1)
	lhz %r3, 0xa(%r4)
	lhz %r4, 0xc(%r4)
	lbz %r5, 0x0(%r30)
	lhz %r6, 0x2(%r30)
	lhz %r7, 0x4(%r30)
	lhz %r8, 0x6(%r30)
	lhz %r9, 0x8(%r30)
	lhz %r10, 0xa(%r30)
	bl sub_1b2a78
	mr %r3, %r29
	bl sub_19f274
	addi %r11, %r1, 0x30
	bl sub_197c4
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	.incbin "./dol.text.bin", 0x1b32f0, 0x801ba904 - 0x801ba5b0
	
	.global sub_1b3644
sub_1b3644: # 0x801ba904
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	lis %r31, 0x8035
	subi %r31, %r31, 0x3c10
	bl sub_19f24c
	lwz %r5, -0x6088(%r13)
	li %r0, 0x0
	lwz %r4, -0x6098(%r13)
	mr %r30, %r3
	addi %r28, %r31, 0x78
	addi %r29, %r31, 0x0
	or %r3, %r5, %r4
	li %r27, -0x1
	stw %r3, -0x6088(%r13)
	stw %r0, -0x6098(%r13)
	lwz %r4, -0x6080(%r13)
	lwz %r5, -0x607c(%r13)
	lwz %r0, -0x6090(%r13)
	lwz %r3, -0x608c(%r13)
	or %r0, %r4, %r0
	or %r3, %r5, %r3
	stw %r3, -0x607c(%r13)
	stw %r0, -0x6080(%r13)
	b _1b3710
_1b36b0:
	lwz %r0, -0x6090(%r13)
	lwz %r3, -0x608c(%r13)
	cntlzw %r0, %r0
	cmpwi %r0, 0x20
	and %r3, %r3, %r27
	bge- _1b36cc
	b _1b36d4
_1b36cc:
	cntlzw %r3, %r3
	addi %r0, %r3, 0x20
_1b36d4:
	slwi  %r6, %r0, 1
	subfic %r5, %r0, 0x3f
	lhzx %r0, %r28, %r6
	li %r4, 0x1
	li %r3, 0x0
	sthx %r0, %r29, %r6
	bl sub_19bf8
	lwz %r0, -0x6090(%r13)
	not %r5, %r3
	lwz %r3, -0x608c(%r13)
	not %r4, %r4
	and %r0, %r0, %r5
	and %r3, %r3, %r4
	stw %r3, -0x608c(%r13)
	stw %r0, -0x6090(%r13)
_1b3710:
	lwz %r0, -0x6090(%r13)
	lwz %r3, -0x608c(%r13)
	or. %r0, %r3, %r0
	bne+ _1b36b0
	addi %r3, %r31, 0xf0
	li %r4, 0x1
	lwz %r0, 0x30(%r3)
	mr %r3, %r30
	stw %r4, -0x6020(%r13)
	stw %r4, -0x6024(%r13)
	stw %r0, -0x605c(%r13)
	bl sub_19f274
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1b3758
sub_1b3758: # 0x801baa18
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r7, 0x8035
	li %r0, 0x1
	subi %r7, %r7, 0x3b20
	mr %r31, %r3
	stw %r30, 0x30(%r7)
	mr %r3, %r7
	addi %r4, %r7, 0x34
	addi %r5, %r7, 0x38
	addi %r6, %r7, 0x4c
	stw %r0, -0x6078(%r13)
	addi %r7, %r7, 0x50
	bl sub_1b26e0
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1b37c4
sub_1b37c4: # 0x801baa84
	lwz %r3, -0x6060(%r13)
	blr

	.global sub_1b37cc
sub_1b37cc: # 0x801baa8c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	mr %r30, %r3
	bl sub_19f24c
	lis %r4, 0x8035
	mr %r31, %r3
	subi %r4, %r4, 0x3b20
	stw %r30, 0x40(%r4)
	lwz %r10, 0x54(%r4)
	stw %r30, 0x8(%r1)
	lhz %r3, 0xa(%r4)
	lhz %r4, 0x6(%r4)
	lbz %r5, 0x0(%r10)
	lhz %r6, 0x2(%r10)
	lhz %r7, 0x4(%r10)
	lhz %r8, 0x6(%r10)
	lhz %r9, 0x8(%r10)
	lhz %r10, 0xa(%r10)
	bl sub_1b2a78
	mr %r3, %r31
	bl sub_19f274
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1b3844
sub_1b3844: # 0x801bab04
	lwz %r3, -0x601c(%r13)
	blr
	.incbin "./dol.text.bin", 0x1b384c, 0x801bac38 - 0x801bab0c

	.global sub_1b3978
sub_1b3978: # 0x801bac38
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	bl sub_19f24c
	lwz %r31, -0x6058(%r13)
	cmplwi %r31, 0x8
	bgt- _1b39bc
	lis %r4, 0x802a
	slwi  %r0, %r31, 2
	subi %r4, %r4, 0x6718
	lwzx %r4, %r4, %r0
	mtctr %r4
	bctr 
	li %r31, 0x0
	b _1b39bc
	.incbin "./dol.text.bin", 0x1b39b8, 0x801bac7c - 0x801bac78
_1b39bc:
	bl sub_19f274
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1b39d8, 0x801bb040 - 0x801bac98

	.global sub_1b3d80
sub_1b3d80: # 0x801bb040
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	addi %r11, %r1, 0x20
	bl sub_19780
	mr %r27, %r3
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r28, %r4
	mr %r29, %r3
	lis %r31, 0x8000
	subi %r30, %r5, 0x217d
_1b3db0:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r31)
	subfc %r6, %r28, %r4
	subfe %r3, %r29, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r30, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	srawi %r5, %r27, 31
	xoris %r0, %r3, 0x8000
	xoris %r5, %r5, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b3db0
	addi %r11, %r1, 0x20
	bl sub_197cc
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_1b3e18
sub_1b3e18: # 0x801bb0d8
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	addi %r11, %r1, 0x30
	bl sub_19770
	lwz %r0, -0x6f60(%r13)
	mr %r29, %r3
	cmpwi %r0, 0x0
	bne- _1b3e54
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r3)
	b _1b3e64
_1b3e54:
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r3)
_1b3e64:
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r28, %r4
	mr %r27, %r3
	lis %r25, 0x8000
	subi %r26, %r5, 0x217d
	li %r24, 0x2
	li %r23, 0x0
_1b3e84:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r25)
	subfc %r6, %r28, %r4
	subfe %r3, %r27, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r26, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r23, 0x8000
	subfc %r3, %r24, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b3e84
	lis %r31, 0xcd80
	lis %r3, 0x431c
	lwz %r0, 0xc0(%r31)
	subi %r25, %r3, 0x217d
	li %r30, 0x0
	lis %r28, 0x8000
	rlwinm  %r0, %r0, 0, 18, 16
	li %r27, 0x2
	stw %r0, 0xc0(%r31)
	li %r26, 0x0
_1b3ef8:
	rlwinm. %r0, %r29, 0, 24, 24
	beq- _1b3f30
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b3f1c
	lwz %r0, 0xc0(%r31)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r31)
	b _1b3f5c
_1b3f1c:
	lwz %r0, 0xc0(%r31)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r31)
	b _1b3f5c
_1b3f30:
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b3f50
	lwz %r0, 0xc0(%r31)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r31)
	b _1b3f5c
_1b3f50:
	lwz %r0, 0xc0(%r31)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r31)
_1b3f5c:
	bl sub_1a3a1c
	mr %r24, %r4
	mr %r23, %r3
_1b3f68:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r28)
	subfc %r6, %r24, %r4
	subfe %r3, %r23, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r26, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b3f68
	lwz %r0, 0xc0(%r31)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r31)
	bl sub_1a3a1c
	mr %r23, %r4
	mr %r24, %r3
_1b3fd0:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r28)
	subfc %r6, %r23, %r4
	subfe %r3, %r24, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r26, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b3fd0
	lwz %r0, 0xc0(%r31)
	addi %r30, %r30, 0x1
	cmpwi %r30, 0x8
	clrlslwi  %r29, %r29, 25, 1
	rlwinm  %r0, %r0, 0, 18, 16
	stw %r0, 0xc0(%r31)
	blt+ _1b3ef8
	lis %r3, 0xcd80
	lwz %r0, 0xc4(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x4000
	stw %r0, 0xc4(%r3)
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r31, %r4
	mr %r30, %r3
	lis %r28, 0x8000
	subi %r29, %r5, 0x217d
	li %r27, 0x2
	li %r26, 0x0
_1b406c:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r28)
	subfc %r6, %r31, %r4
	subfe %r3, %r30, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r29, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r26, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b406c
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r3)
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r26, %r4
	mr %r27, %r3
	lis %r31, 0x8000
	subi %r28, %r5, 0x217d
	li %r30, 0x2
	li %r29, 0x0
_1b40ec:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r31)
	subfc %r6, %r26, %r4
	subfe %r3, %r27, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r28, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r29, 0x8000
	subfc %r3, %r30, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b40ec
	lwz %r0, -0x6f60(%r13)
	cmplwi %r0, 0x1
	bne- _1b415c
	lis %r3, 0xcd80
	lwz %r0, 0xc8(%r3)
	extrwi. %r0, %r0, 1, 16
	beq- _1b415c
	li %r3, 0x0
	b _1b41b4
_1b415c:
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b4180
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r3)
	b _1b4190
_1b4180:
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r3)
_1b4190:
	lis %r4, 0xcd80
	li %r3, 0x1
	lwz %r0, 0xc4(%r4)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0xc000
	stw %r0, 0xc4(%r4)
	lwz %r0, 0xc0(%r4)
	rlwinm  %r0, %r0, 0, 18, 16
	stw %r0, 0xc0(%r4)
_1b41b4:
	addi %r11, %r1, 0x30
	bl sub_197bc
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_1b41cc
sub_1b41cc: # 0x801bb48c
	stwu %r1, -0x40(%r1)
	mflr %r0
	stw %r0, 0x44(%r1)
	addi %r11, %r1, 0x40
	bl sub_19764
	lwz %r0, -0x6018(%r13)
	mr %r20, %r3
	mr %r29, %r4
	mr %r30, %r5
	cmpwi %r0, 0x0
	bne- _1b4204
	li %r0, 0x1
	stw %r0, -0x6f60(%r13)
	stw %r0, -0x6018(%r13)
_1b4204:
	bl sub_19f24c
	lis %r4, 0xcd80
	mr %r31, %r3
	lwz %r0, 0xc4(%r4)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0xc000
	stw %r0, 0xc4(%r4)
	lwz %r0, 0xc0(%r4)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r4)
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b424c
	lwz %r0, 0xc0(%r4)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r4)
	b _1b425c
_1b424c:
	lwz %r0, 0xc0(%r4)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r4)
_1b425c:
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r23, %r4
	mr %r22, %r3
	lis %r25, 0x8000
	subi %r26, %r5, 0x217d
	li %r24, 0x2
	li %r21, 0x0
_1b427c:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r25)
	subfc %r6, %r23, %r4
	subfe %r3, %r22, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r26, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r21, 0x8000
	subfc %r3, %r24, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b427c
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r23, %r4
	mr %r22, %r3
	lis %r25, 0x8000
	subi %r26, %r5, 0x217d
	li %r24, 0x2
	li %r21, 0x0
_1b42e8:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r25)
	subfc %r6, %r23, %r4
	subfe %r3, %r22, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r26, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r21, 0x8000
	subfc %r3, %r24, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b42e8
	mr %r3, %r20
	bl sub_1b3e18
	cmpwi %r3, 0x0
	bne- _1b4354
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x0
	b _1b4784
_1b4354:
	lis %r22, 0xcd80
	lis %r3, 0x431c
	lwz %r0, 0xc4(%r22)
	subi %r25, %r3, 0x217d
	lis %r26, 0x8000
	li %r27, 0x2
	rlwinm  %r0, %r0, 0, 17, 15
	li %r28, 0x0
	ori %r0, %r0, 0xc000
	stw %r0, 0xc4(%r22)
	b _1b4610
_1b4380:
	lbz %r20, 0x0(%r29)
	li %r21, 0x0
	addi %r29, %r29, 0x1
_1b438c:
	rlwinm. %r0, %r20, 0, 24, 24
	beq- _1b43c4
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b43b0
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r22)
	b _1b43f0
_1b43b0:
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r22)
	b _1b43f0
_1b43c4:
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b43e4
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r22)
	b _1b43f0
_1b43e4:
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r22)
_1b43f0:
	bl sub_1a3a1c
	mr %r24, %r4
	mr %r23, %r3
_1b43fc:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r26)
	subfc %r6, %r24, %r4
	subfe %r3, %r23, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r28, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b43fc
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r22)
	bl sub_1a3a1c
	mr %r24, %r4
	mr %r23, %r3
_1b4464:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r26)
	subfc %r6, %r24, %r4
	subfe %r3, %r23, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r28, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b4464
	lwz %r0, 0xc0(%r22)
	addi %r21, %r21, 0x1
	cmpwi %r21, 0x8
	clrlslwi  %r20, %r20, 25, 1
	rlwinm  %r0, %r0, 0, 18, 16
	stw %r0, 0xc0(%r22)
	blt+ _1b438c
	lwz %r0, 0xc4(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x4000
	stw %r0, 0xc4(%r22)
	bl sub_1a3a1c
	mr %r24, %r4
	mr %r23, %r3
_1b44e8:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r26)
	subfc %r6, %r24, %r4
	subfe %r3, %r23, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r28, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b44e8
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r22)
	bl sub_1a3a1c
	mr %r23, %r4
	mr %r24, %r3
_1b4550:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r26)
	subfc %r6, %r23, %r4
	subfe %r3, %r24, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r25, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r28, 0x8000
	subfc %r3, %r27, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b4550
	lwz %r0, -0x6f60(%r13)
	cmplwi %r0, 0x1
	bne- _1b45c4
	lwz %r0, 0xc8(%r22)
	extrwi. %r0, %r0, 1, 16
	beq- _1b45c4
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x0
	b _1b4784
_1b45c4:
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b45e4
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r22)
	b _1b45f0
_1b45e4:
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r22)
_1b45f0:
	lwz %r0, 0xc4(%r22)
	subi %r30, %r30, 0x1
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0xc000
	stw %r0, 0xc4(%r22)
	lwz %r0, 0xc0(%r22)
	rlwinm  %r0, %r0, 0, 18, 16
	stw %r0, 0xc0(%r22)
_1b4610:
	cmpwi %r30, 0x0
	bne+ _1b4380
	lis %r3, 0xcd80
	lwz %r0, 0xc4(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0xc000
	stw %r0, 0xc4(%r3)
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b464c
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r3)
	b _1b4658
_1b464c:
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r3)
_1b4658:
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r25, %r4
	mr %r24, %r3
	lis %r22, 0x8000
	subi %r23, %r5, 0x217d
	li %r21, 0x2
	li %r20, 0x0
_1b4678:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r22)
	subfc %r6, %r25, %r4
	subfe %r3, %r24, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r23, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r20, 0x8000
	subfc %r3, %r21, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b4678
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 18, 16
	ori %r0, %r0, 0x4000
	stw %r0, 0xc0(%r3)
	bl sub_1a3a1c
	lis %r5, 0x431c
	mr %r25, %r4
	mr %r24, %r3
	lis %r22, 0x8000
	subi %r23, %r5, 0x217d
	li %r21, 0x2
	li %r20, 0x0
_1b46f8:
	bl sub_1a3a1c
	lwz %r0, 0xf8(%r22)
	subfc %r6, %r25, %r4
	subfe %r3, %r24, %r3
	li %r5, 0x0
	srwi  %r0, %r0, 2
	slwi  %r4, %r6, 3
	mulhwu %r0, %r23, %r0
	slwi  %r3, %r3, 3
	inslwi  %r3, %r6, 3, 29
	srwi  %r6, %r0, 15
	bl sub_198d0
	xoris %r0, %r3, 0x8000
	xoris %r5, %r20, 0x8000
	subfc %r3, %r21, %r4
	subfe %r5, %r5, %r0
	subfe %r5, %r0, %r0
	neg. %r5, %r5
	bne+ _1b46f8
	lwz %r0, -0x6f60(%r13)
	cmpwi %r0, 0x0
	bne- _1b4764
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	stw %r0, 0xc0(%r3)
	b _1b4778
_1b4764:
	lis %r3, 0xcd80
	lwz %r0, 0xc0(%r3)
	rlwinm  %r0, %r0, 0, 17, 15
	ori %r0, %r0, 0x8000
	stw %r0, 0xc0(%r3)
_1b4778:
	mr %r3, %r31
	bl sub_19f274
	li %r3, 0x1
_1b4784:
	addi %r11, %r1, 0x40
	bl sub_197b0
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr
	.incbin "./dol.text.bin", 0x1b479c, 0x801bccac - 0x801bba5c

	.global sub_1b59ec
sub_1b59ec: # 0x801bccac
	stwu %r1, -0x10(%r1)
	mflr %r0
	li %r6, 0x3
	li %r3, 0xe0
	stw %r0, 0x14(%r1)
	li %r0, 0x1
	addi %r4, %r1, 0x8
	li %r5, 0x2
	stw %r6, -0x6000(%r13)
	stb %r0, 0x8(%r1)
	stb %r6, 0x9(%r1)
	bl sub_1b41cc
	li %r3, 0x2
	bl sub_1b3d80
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1b5a34, 0x801c0e24 - 0x801bccf4

	.global sub_1b9b64
sub_1b9b64: # 0x801c0e24
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r5, 0x8035
	stw %r0, 0x14(%r1)
	slwi  %r0, %r3, 2
	subi %r5, %r5, 0x3a50
	stw %r31, 0xc(%r1)
	stw %r30, 0x8(%r1)
	mr %r30, %r4
	lwzx %r31, %r5, %r0
	bl sub_19f24c
	lwz %r0, 0x8bc(%r31)
	cmpwi %r0, -0x1
	bne- _1b9ba4
	bl sub_19f274
	b _1b9c18
_1b9ba4:
	lwz %r0, -0x5fcc(%r13)
	cmpwi %r0, 0x0
	bne- _1b9bcc
	cmpwi %r30, 0x0
	bne- _1b9bc4
	lwz %r0, 0x8d4(%r31)
	cmpwi %r0, 0x1
	beq- _1b9bcc
_1b9bc4:
	bl sub_19f274
	b _1b9c18
_1b9bcc:
	cmpwi %r30, 0x0
	bne- _1b9be0
	lwz %r0, 0x8d4(%r31)
	cmpwi %r0, 0x0
	beq- _1b9bf4
_1b9be0:
	cmplwi %r30, 0x1
	bne- _1b9bfc
	lwz %r0, 0x8d4(%r31)
	cmpwi %r0, 0x1
	bne- _1b9bfc
_1b9bf4:
	bl sub_19f274
	b _1b9c18
_1b9bfc:
	neg %r4, %r30
	li %r0, 0x1
	or %r4, %r4, %r30
	srwi  %r4, %r4, 31
	stw %r4, 0x8d4(%r31)
	stw %r0, 0x8d0(%r31)
	bl sub_19f274
_1b9c18:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x1b9c30, 0x801dceb4 - 0x801c0ef0
	
	.global sub_1d5bf4
sub_1d5bf4: # 0x801dceb4
	lwz %r3, -0x5f3c(%r13)
	subi %r0, %r3, 0x1
	cntlzw %r0, %r0
	srwi  %r3, %r0, 5
	blr

	.global sub_1d5c08
sub_1d5c08: # 0x801dcec8
	lwz %r3, -0x5f3c(%r13)
	subi %r0, %r3, 0x2
	cntlzw %r0, %r0
	srwi  %r3, %r0, 5
	blr

	.incbin "./dol.text.bin", 0x1d5c1c, 0x801e5784 - 0x801dcedc
	
	.global sub_1de4c4
sub_1de4c4: # 0x801e5784
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8035
	addi %r31, %r31, 0x2b60
	stw %r30, 0x8(%r1)
	lwz %r0, -0x5f18(%r13)
	clrlwi. %r0, %r0, 31
	bne- _1de544
	bl sub_19f24c
	lwz %r0, -0x5f18(%r13)
	mr %r30, %r3
	clrlwi. %r0, %r0, 31
	bne- _1de53c
	addi %r3, %r31, 0x0
	bl sub_1a0b4c
	addi %r3, %r31, 0x18
	bl sub_1a0b4c
	addi %r3, %r31, 0x40
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	addi %r3, %r31, 0x60
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	lwz %r0, -0x5f18(%r13)
	ori %r0, %r0, 0x1
	stw %r0, -0x5f18(%r13)
_1de53c:
	mr %r3, %r30
	bl sub_19f274
_1de544:
	addi %r3, %r31, 0x18
	bl sub_1a0d94
	cmpwi %r3, 0x0
	bne- _1de55c
	li %r30, -0x16
	b _1de58c
_1de55c:
	li %r3, 0x0
	bl sub_1df094
	cmpwi %r3, 0x0
	mr %r30, %r3
	blt- _1de584
	lwz %r4, -0x5f14(%r13)
	lwz %r0, -0x5f10(%r13)
	addi %r4, %r4, 0x1
	stw %r4, -0x5f14(%r13)
	subf %r30, %r0, %r3
_1de584:
	addi %r3, %r31, 0x18
	bl sub_1a0c60
_1de58c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x1de5a8, 0x801e6354 - 0x801e5868

	.global sub_1df094
sub_1df094: # 0x801e6354
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	lis %r30, 0x8035
	addi %r30, %r30, 0x2b60
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_1a2550
	cmpwi %r3, 0x0
	bne- _1df0d0
	li %r3, -0x1
	b _1df0f4
_1df0d0:
	bl sub_1d5bf4
	cmpwi %r3, 0x0
	bne- _1df0e8
	bl sub_1d5c08
	cmpwi %r3, 0x0
	beq- _1df0f0
_1df0e8:
	li %r3, -0xa
	b _1df0f4
_1df0f0:
	li %r3, 0x0
_1df0f4:
	cmpwi %r3, 0x0
	bge- _1df100
	b _1df200
_1df100:
	lwz %r0, -0x5f18(%r13)
	clrlwi. %r0, %r0, 31
	bne- _1df164
	bl sub_19f24c
	lwz %r0, -0x5f18(%r13)
	mr %r31, %r3
	clrlwi. %r0, %r0, 31
	bne- _1df15c
	addi %r3, %r30, 0x0
	bl sub_1a0b4c
	addi %r3, %r30, 0x18
	bl sub_1a0b4c
	addi %r3, %r30, 0x40
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	addi %r3, %r30, 0x60
	li %r4, 0x0
	li %r5, 0x20
	bl memset
	lwz %r0, -0x5f18(%r13)
	ori %r0, %r0, 0x1
	stw %r0, -0x5f18(%r13)
_1df15c:
	mr %r3, %r31
	bl sub_19f274
_1df164:
	addi %r3, %r30, 0x0
	bl sub_1a0d94
	cmpwi %r3, 0x0
	bne- _1df17c
	li %r3, -0x16
	b _1df200
_1df17c:
	lis %r31, 0x802a
	lis %r4, 0x802a
	subi %r3, %r31, 0x2178
	addi %r5, %r1, 0x8
	subi %r4, %r4, 0x21e0
	li %r6, 0x0
	bl sub_1e1820
	cmpwi %r3, 0x0
	mr %r29, %r3
	blt- _1df1f4
	stw %r28, 0x40(%r30)
	subi %r3, %r31, 0x2178
	lwz %r4, 0x8(%r1)
	addi %r6, %r30, 0x40
	addi %r8, %r30, 0x60
	li %r5, 0x2
	li %r7, 0x20
	li %r9, 0x20
	bl sub_1e18cc
	cmpwi %r3, 0x0
	mr %r29, %r3
	blt- _1df1d8
	lwz %r29, 0x60(%r30)
_1df1d8:
	lis %r3, 0x802a
	lwz %r4, 0x8(%r1)
	subi %r3, %r3, 0x2178
	bl sub_1e1898
	cmpwi %r3, 0x0
	bge- _1df1f4
	mr %r29, %r3
_1df1f4:
	addi %r3, %r30, 0x0
	bl sub_1a0c60
	mr %r3, %r29
_1df200:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x1df220, 0x801e8ae0 - 0x801e64e0
	
	.global sub_1e1820
sub_1e1820: # 0x801e8ae0
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r5, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r5
	bne- _1e1844
	li %r3, -0x3
	b _1e1884
_1e1844:
	mr %r3, %r4
	mr %r4, %r6
	bl sub_18c598
	cmpwi %r3, 0x0
	stw %r3, 0x0(%r31)
	bge- _1e1880
	cmpwi %r3, -0x6
	bne- _1e186c
	li %r3, -0x1d
	b _1e1884
_1e186c:
	cmpwi %r3, -0x8
	li %r3, -0x2a
	bne- _1e1884
	li %r3, -0x1a
	b _1e1884
_1e1880:
	li %r3, 0x0
_1e1884:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1e1898
sub_1e1898: # 0x801e8b58
	stwu %r1, -0x10(%r1)
	mflr %r0
	mr %r3, %r4
	stw %r0, 0x14(%r1)
	bl sub_18c778
	cmpwi %r3, 0x0
	li %r3, 0x0
	bge- _1e18bc
	li %r3, -0x2a
_1e18bc:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_1e18cc
sub_1e18cc: # 0x801e8b8c
	stwu %r1, -0x10(%r1)
	mflr %r0
	mr %r3, %r4
	mr %r4, %r5
	stw %r0, 0x14(%r1)
	mr %r5, %r6
	mr %r6, %r7
	mr %r7, %r8
	mr %r8, %r9
	bl sub_18cf30
	cmpwi %r3, 0x0
	li %r3, 0x0
	bge- _1e1904
	li %r3, -0x2a
_1e1904:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.incbin "./dol.text.bin", 0x1e1914, 0x80218b04 - 0x801e8bd4
	
	.global sub_211844
sub_211844: # 0x80218b04
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	bl sub_212598
	cmpwi %r3, 0x1
	beq- _211880
	cmpwi %r3, 0x2
	beq- _211890
	cmpwi %r3, 0x3
	beq- _2118a0
	b _2118b0
_211880:
	mr %r3, %r30
	mr %r4, %r31
	bl sub_2118cc
	b _2118b4
_211890:
	mr %r3, %r30
	mr %r4, %r31
	bl sub_211a60
	b _2118b4
_2118a0:
	mr %r3, %r30
	mr %r4, %r31
	bl sub_211c90
	b _2118b4
_2118b0:
	li %r3, -0x1
_2118b4:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_2118cc
sub_2118cc: # 0x80218b8c
	stwu %r1, -0x10(%r1)
	li %r5, 0x10
	lbz %r0, 0x5(%r3)
	li %r6, 0x0
	stw %r31, 0xc(%r1)
	lbz %r8, 0x6(%r3)
	slwi  %r0, %r0, 16
	lbz %r7, 0x4(%r3)
	lbz %r9, 0x7(%r3)
	insrwi  %r9, %r8, 8, 16
	insrwi  %r0, %r7, 8, 0
	stw %r30, 0x8(%r1)
	li %r8, 0x0
	or %r0, %r9, %r0
	b _211a44
_211908:
	clrlwi. %r9, %r6, 24
	bne- _21191c
	lbzx %r7, %r3, %r5
	li %r6, 0x80
	addi %r5, %r5, 0x1
_21191c:
	clrlwi  %r9, %r6, 24
	and. %r9, %r7, %r9
	beq- _21193c
	lbzx %r9, %r3, %r5
	addi %r5, %r5, 0x1
	stbx %r9, %r4, %r8
	addi %r8, %r8, 0x1
	b _211a40
_21193c:
	add %r10, %r3, %r5
	lbzx %r9, %r3, %r5
	lbz %r11, 0x1(%r10)
	addi %r5, %r5, 0x2
	insrwi  %r11, %r9, 8, 16
	srawi. %r10, %r11, 12
	clrlwi  %r9, %r11, 20
	subf %r31, %r9, %r8
	bne- _211970
	lbzx %r9, %r3, %r5
	addi %r5, %r5, 0x1
	addi %r30, %r9, 0x12
	b _211974
_211970:
	addi %r30, %r10, 0x2
_211974:
	cmpwi %r30, 0x0
	ble- _211a40
	cmpwi %r30, 0x8
	ble- _211a10
	cmpwi %r30, -0x1
	li %r9, 0x0
	ble- _211994
	li %r9, 0x1
_211994:
	cmpwi %r9, 0x0
	beq- _211a10
	subi %r9, %r30, 0x1
	add %r10, %r4, %r8
	srwi  %r9, %r9, 3
	mtctr %r9
	cmpwi %r30, 0x8
	ble- _211a10
_2119b4:
	add %r12, %r4, %r31
	add %r11, %r8, %r4
	lbz %r9, -0x1(%r12)
	addi %r8, %r8, 0x8
	stb %r9, 0x0(%r10)
	addi %r10, %r10, 0x8
	subi %r30, %r30, 0x8
	lbzx %r9, %r4, %r31
	addi %r31, %r31, 0x8
	stb %r9, 0x1(%r11)
	lbz %r9, 0x1(%r12)
	stb %r9, 0x2(%r11)
	lbz %r9, 0x2(%r12)
	stb %r9, 0x3(%r11)
	lbz %r9, 0x3(%r12)
	stb %r9, 0x4(%r11)
	lbz %r9, 0x4(%r12)
	stb %r9, 0x5(%r11)
	lbz %r9, 0x5(%r12)
	stb %r9, 0x6(%r11)
	lbz %r9, 0x6(%r12)
	stb %r9, 0x7(%r11)
	bdnz+ _2119b4
_211a10:
	add %r9, %r4, %r8
	mtctr %r30
	cmpwi %r30, 0x0
	ble- _211a40
_211a20:
	add %r10, %r4, %r31
	addi %r31, %r31, 0x1
	lbz %r10, -0x1(%r10)
	subi %r30, %r30, 0x1
	stb %r10, 0x0(%r9)
	addi %r9, %r9, 0x1
	addi %r8, %r8, 0x1
	bdnz+ _211a20
_211a40:
	extrwi  %r6, %r6, 7, 24
_211a44:
	cmpw %r8, %r0
	blt+ _211908
	lwz %r31, 0xc(%r1)
	mr %r3, %r0
	lwz %r30, 0x8(%r1)
	addi %r1, %r1, 0x10
	blr

	.global sub_211a60
sub_211a60: # 0x80218d20
	stwu %r1, -0x40(%r1)
	mflr %r0
	lbz %r10, 0xa(%r3)
	subi %r8, %r13, 0x5e10
	stw %r0, 0x44(%r1)
	li %r5, 0xc
	lbz %r0, 0x9(%r3)
	li %r9, 0x0
	stmw %r20, 0x10(%r1)
	mr %r22, %r4
	lbz %r6, 0xb(%r3)
	li %r7, 0x200
	lbz %r4, 0x8(%r3)
	slwi  %r0, %r0, 16
	lbz %r11, 0x6(%r3)
	insrwi  %r6, %r10, 8, 16
	insrwi  %r0, %r4, 8, 0
	lbz %r12, 0x5(%r3)
	slwi  %r10, %r11, 8
	lbz %r11, 0x7(%r3)
	insrwi  %r10, %r12, 8, 8
	or %r12, %r6, %r0
	subi %r4, %r13, 0x5e00
	subi %r6, %r13, 0x5e08
	li %r0, 0x800
	mr %r21, %r3
	or %r23, %r11, %r10
	lwz %r27, -0x5e18(%r13)
	stw %r5, -0x5e00(%r13)
	li %r5, 0x0
	addi %r26, %r27, 0xffc
	addi %r25, %r26, 0xffc
	stw %r12, 0x4(%r4)
	addi %r24, %r25, 0x3ffc
	li %r4, 0x20
	stw %r9, 0x4(%r8)
	addi %r20, %r24, 0x3ffc
	stw %r9, -0x5e10(%r13)
	stw %r7, -0x5e08(%r13)
	stw %r0, 0x4(%r6)
	bl sub_21271c
	mr %r3, %r21
	li %r4, 0x20
	li %r5, 0x1
	bl sub_21271c
	mr %r3, %r21
	mr %r4, %r27
	mr %r5, %r26
	mr %r6, %r20
	bl sub_2128b0
	mr %r29, %r3
	mr %r3, %r21
	mr %r4, %r25
	mr %r5, %r24
	mr %r6, %r20
	bl sub_2129d4
	mr %r28, %r3
	li %r30, 0x0
	b _211c70
_211b4c:
	mr %r31, %r29
	b _211b7c
_211b54:
	mr %r3, %r21
	li %r4, 0x0
	bl sub_212824
	cmpwi %r3, 0x0
	beq- _211b74
	slwi  %r0, %r31, 1
	lhzx %r31, %r26, %r0
	b _211b7c
_211b74:
	slwi  %r0, %r31, 1
	lhzx %r31, %r27, %r0
_211b7c:
	cmpwi %r31, 0x200
	bge+ _211b54
	cmpwi %r31, 0x100
	bge- _211b98
	stbx %r31, %r22, %r30
	addi %r30, %r30, 0x1
	b _211c70
_211b98:
	mr %r20, %r28
	b _211bc8
_211ba0:
	mr %r3, %r21
	li %r4, 0x1
	bl sub_212824
	cmpwi %r3, 0x0
	beq- _211bc0
	slwi  %r0, %r20, 1
	lhzx %r20, %r24, %r0
	b _211bc8
_211bc0:
	slwi  %r0, %r20, 1
	lhzx %r20, %r25, %r0
_211bc8:
	cmpwi %r20, 0x800
	bge+ _211ba0
	subf %r4, %r20, %r30
	subic. %r31, %r31, 0xfd
	subi %r5, %r4, 0x1
	add %r3, %r22, %r30
	add %r4, %r22, %r5
	ble- _211c70
	srwi. %r0, %r31, 3
	mtctr %r0
	beq- _211c50
_211bf4:
	lbz %r0, 0x0(%r4)
	addi %r30, %r30, 0x8
	stb %r0, 0x0(%r3)
	addi %r5, %r5, 0x8
	lbz %r0, 0x1(%r4)
	stb %r0, 0x1(%r3)
	lbz %r0, 0x2(%r4)
	stb %r0, 0x2(%r3)
	lbz %r0, 0x3(%r4)
	stb %r0, 0x3(%r3)
	lbz %r0, 0x4(%r4)
	stb %r0, 0x4(%r3)
	lbz %r0, 0x5(%r4)
	stb %r0, 0x5(%r3)
	lbz %r0, 0x6(%r4)
	stb %r0, 0x6(%r3)
	lbz %r0, 0x7(%r4)
	addi %r4, %r4, 0x8
	stb %r0, 0x7(%r3)
	addi %r3, %r3, 0x8
	bdnz+ _211bf4
	andi. %r31, %r31, 0x7
	beq- _211c70
_211c50:
	mtctr %r31
_211c54:
	lbz %r0, 0x0(%r4)
	addi %r5, %r5, 0x1
	stb %r0, 0x0(%r3)
	addi %r3, %r3, 0x1
	addi %r4, %r4, 0x1
	addi %r30, %r30, 0x1
	bdnz+ _211c54
_211c70:
	cmplw %r30, %r23
	blt+ _211b4c
	mr %r3, %r30
	lmw %r20, 0x10(%r1)
	lwz %r0, 0x44(%r1)
	mtlr %r0
	addi %r1, %r1, 0x40
	blr

	.global sub_211c90
sub_211c90: # 0x80218f50
	stwu %r1, -0x50(%r1)
	li %r11, 0x200
	lbz %r5, 0x6(%r3)
	stmw %r14, 0x8(%r1)
	lbz %r0, 0x4(%r3)
	slwi  %r7, %r5, 8
	lbz %r8, 0x5(%r3)
	rlwinm. %r0, %r0, 0, 24, 24
	lbz %r0, 0x9(%r3)
	insrwi  %r7, %r8, 8, 8
	lbz %r8, 0x7(%r3)
	lbz %r5, 0xa(%r3)
	lbz %r6, 0xb(%r3)
	slwi  %r0, %r0, 16
	insrwi  %r6, %r5, 8, 16
	lbz %r5, 0x8(%r3)
	or %r24, %r8, %r7
	insrwi  %r0, %r5, 8, 0
	or %r23, %r6, %r0
	beq- _211ce4
	li %r11, 0x1000
_211ce4:
	lwz %r21, -0x5e18(%r13)
	li %r16, 0x0
	li %r8, 0x20
	li %r7, -0x1
	addi %r20, %r21, 0x800
	stw %r16, 0x5004(%r21)
	addi %r19, %r20, 0x804
	mr %r5, %r21
	addi %r18, %r19, 0x4000
	mr %r6, %r20
	li %r17, -0x1
	li %r15, 0x0
	stw %r16, 0x800(%r21)
	li %r0, 0x1
	mtctr %r8
_211d20:
	stw %r0, 0x0(%r5)
	lwz %r8, 0x0(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x4(%r6)
	stw %r0, 0x4(%r5)
	lwz %r8, 0x4(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x8(%r6)
	stw %r0, 0x8(%r5)
	lwz %r8, 0x8(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0xc(%r6)
	stw %r0, 0xc(%r5)
	lwz %r8, 0xc(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x10(%r6)
	stw %r0, 0x10(%r5)
	lwz %r8, 0x10(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x14(%r6)
	stw %r0, 0x14(%r5)
	lwz %r8, 0x14(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x18(%r6)
	stw %r0, 0x18(%r5)
	lwz %r8, 0x18(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x1c(%r6)
	stw %r0, 0x1c(%r5)
	lwz %r8, 0x1c(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x20(%r6)
	stw %r0, 0x20(%r5)
	lwz %r8, 0x20(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x24(%r6)
	stw %r0, 0x24(%r5)
	lwz %r8, 0x24(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x28(%r6)
	stw %r0, 0x28(%r5)
	lwz %r8, 0x28(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x2c(%r6)
	stw %r0, 0x2c(%r5)
	lwz %r8, 0x2c(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x30(%r6)
	stw %r0, 0x30(%r5)
	lwz %r8, 0x30(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x34(%r6)
	stw %r0, 0x34(%r5)
	lwz %r8, 0x34(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x38(%r6)
	stw %r0, 0x38(%r5)
	lwz %r8, 0x38(%r6)
	addi %r8, %r8, 0x1
	stw %r8, 0x3c(%r6)
	stw %r0, 0x3c(%r5)
	addi %r5, %r5, 0x40
	lwz %r8, 0x3c(%r6)
	addi %r8, %r8, 0x1
	stwu %r8, 0x40(%r6)
	bdnz+ _211d20
	cmpwi %cr1, %r11, 0x0
	li %r8, 0x0
	ble- cr1, _211f48
	cmpwi %r11, 0x8
	subi %r10, %r11, 0x8
	ble- _211f10
	li %r6, 0x0
	blt- cr1, _211e5c
	lis %r5, 0x8000
	subi %r0, %r5, 0x2
	cmpw %r11, %r0
	bgt- _211e5c
	li %r6, 0x1
_211e5c:
	cmpwi %r6, 0x0
	beq- _211f10
	addi %r9, %r10, 0x7
	mr %r5, %r19
	srwi  %r9, %r9, 3
	mr %r6, %r18
	li %r0, 0x1
	mtctr %r9
	cmpwi %r10, 0x0
	ble- _211f10
_211e84:
	stw %r0, 0x0(%r5)
	addi %r8, %r8, 0x8
	lwz %r9, 0x0(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x4(%r6)
	stw %r0, 0x4(%r5)
	lwz %r9, 0x4(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x8(%r6)
	stw %r0, 0x8(%r5)
	lwz %r9, 0x8(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0xc(%r6)
	stw %r0, 0xc(%r5)
	lwz %r9, 0xc(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x10(%r6)
	stw %r0, 0x10(%r5)
	lwz %r9, 0x10(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x14(%r6)
	stw %r0, 0x14(%r5)
	lwz %r9, 0x14(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x18(%r6)
	stw %r0, 0x18(%r5)
	lwz %r9, 0x18(%r6)
	addi %r9, %r9, 0x1
	stw %r9, 0x1c(%r6)
	stw %r0, 0x1c(%r5)
	addi %r5, %r5, 0x20
	lwz %r9, 0x1c(%r6)
	addi %r9, %r9, 0x1
	stwu %r9, 0x20(%r6)
	bdnz+ _211e84
_211f10:
	slwi  %r5, %r8, 2
	subf %r0, %r8, %r11
	add %r9, %r19, %r5
	li %r6, 0x1
	add %r10, %r18, %r5
	mtctr %r0
	cmpw %r8, %r11
	bge- _211f48
_211f30:
	stw %r6, 0x0(%r9)
	addi %r9, %r9, 0x4
	lwz %r5, 0x0(%r10)
	addi %r0, %r5, 0x1
	stwu %r0, 0x4(%r10)
	bdnz+ _211f30
_211f48:
	lbz %r8, 0xd(%r3)
	add %r6, %r23, %r3
	lbzx %r5, %r3, %r23
	slwi  %r10, %r11, 2
	slwi  %r9, %r8, 16
	lbz %r8, 0xc(%r3)
	lbz %r0, 0x1(%r6)
	li %r28, 0x0
	insrwi  %r9, %r8, 8, 0
	lbz %r8, 0x2(%r6)
	lbz %r6, 0x3(%r6)
	slwi  %r0, %r0, 16
	insrwi  %r0, %r5, 8, 0
	insrwi  %r6, %r8, 8, 16
	or %r26, %r6, %r0
	lbz %r14, 0xe(%r3)
	lbz %r12, 0xf(%r3)
	li %r22, 0x10
	insrwi  %r12, %r14, 8, 16
	lis %r5, 0x1
	or %r27, %r12, %r9
	li %r6, 0x0
	lis %r14, 0x8000
	li %r0, 0x40
	addi %r23, %r23, 0x4
	b _212580
_211fb0:
	lwz %r25, 0x800(%r20)
	subf %r12, %r16, %r27
	li %r8, 0x0
	li %r9, 0x200
	divwu %r25, %r7, %r25
	divwu %r12, %r12, %r25
	b _211ffc
_211fcc:
	add %r29, %r8, %r9
	extlwi  %r7, %r29, 30, 1
	lwzx %r7, %r20, %r7
	srawi %r30, %r29, 1
	cmplw %r12, %r7
	bge- _211fe8
	mr %r9, %r30
_211fe8:
	slwi  %r7, %r30, 2
	lwzx %r7, %r20, %r7
	cmplw %r12, %r7
	blt- _211ffc
	addi %r8, %r30, 0x1
_211ffc:
	cmpw %r8, %r9
	blt+ _211fcc
	slwi  %r7, %r30, 2
	addi %r8, %r30, 0x1
	add %r7, %r20, %r7
	mtctr %r8
	cmpwi %r30, 0x0
	blt- _212040
_21201c:
	lwz %r8, 0x0(%r7)
	cmplw %r8, %r12
	bgt- _212034
	lwz %r8, 0x4(%r7)
	cmplw %r12, %r8
	blt- _212040
_212034:
	subi %r7, %r7, 0x4
	subi %r30, %r30, 0x1
	bdnz+ _21201c
_212040:
	slwi  %r31, %r30, 2
	mr %r29, %r30
	lwzx %r7, %r20, %r31
	add %r12, %r20, %r31
	lwzx %r8, %r21, %r31
	mullw %r9, %r25, %r7
	addi %r7, %r8, 0x1
	stwx %r7, %r21, %r31
	mullw %r7, %r25, %r8
	add %r16, %r16, %r9
	b _212078
_21206c:
	lwz %r8, 0x0(%r12)
	addi %r8, %r8, 0x1
	stw %r8, 0x0(%r12)
_212078:
	addi %r30, %r30, 0x1
	addi %r12, %r12, 0x4
	cmpwi %r30, 0x200
	ble+ _21206c
	lwz %r8, 0x800(%r20)
	cmplw %r8, %r5
	blt- _21218c
	mr %r8, %r21
	mr %r9, %r20
	stw %r6, 0x0(%r20)
	mtctr %r0
_2120a4:
	lwz %r12, 0x0(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x0(%r8)
	lwz %r12, 0x0(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x4(%r9)
	lwz %r12, 0x4(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x4(%r8)
	lwz %r12, 0x4(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x8(%r9)
	lwz %r12, 0x8(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x8(%r8)
	lwz %r12, 0x8(%r9)
	add %r12, %r12, %r25
	stw %r12, 0xc(%r9)
	lwz %r12, 0xc(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0xc(%r8)
	lwz %r12, 0xc(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x10(%r9)
	lwz %r12, 0x10(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x10(%r8)
	lwz %r12, 0x10(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x14(%r9)
	lwz %r12, 0x14(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x14(%r8)
	lwz %r12, 0x14(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x18(%r9)
	lwz %r12, 0x18(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x18(%r8)
	lwz %r12, 0x18(%r9)
	add %r12, %r12, %r25
	stw %r12, 0x1c(%r9)
	lwz %r12, 0x1c(%r8)
	srwi  %r12, %r12, 1
	ori %r25, %r12, 0x1
	stw %r25, 0x1c(%r8)
	addi %r8, %r8, 0x20
	lwz %r12, 0x1c(%r9)
	add %r12, %r12, %r25
	stwu %r12, 0x20(%r9)
	bdnz+ _2120a4
_21218c:
	add %r8, %r3, %r22
	b _2121b0
_212194:
	lbz %r9, 0x0(%r8)
	slwi  %r12, %r27, 8
	slwi  %r16, %r16, 8
	slwi  %r7, %r7, 8
	add %r27, %r12, %r9
	addi %r22, %r22, 0x1
	addi %r8, %r8, 0x1
_2121b0:
	add %r9, %r16, %r7
	clrrwi  %r12, %r16, 24
	clrrwi  %r9, %r9, 24
	cmplw %r12, %r9
	beq+ _212194
	add %r8, %r3, %r22
	b _2121f0
_2121cc:
	clrlwi  %r7, %r16, 16
	lbz %r9, 0x0(%r8)
	subf %r7, %r7, %r5
	slwi  %r12, %r27, 8
	slwi  %r7, %r7, 8
	slwi  %r16, %r16, 8
	add %r27, %r12, %r9
	addi %r22, %r22, 0x1
	addi %r8, %r8, 0x1
_2121f0:
	cmplw %r7, %r5
	blt+ _2121cc
	cmpwi %r29, 0x100
	bge- _21220c
	stbx %r29, %r4, %r28
	addi %r28, %r28, 0x1
	b _212580
_21220c:
	lwzx %r8, %r18, %r10
	subf %r9, %r15, %r26
	mr %r25, %r11
	li %r12, 0x0
	divwu %r8, %r17, %r8
	divwu %r9, %r9, %r8
	b _212258
_212228:
	add %r30, %r12, %r25
	extlwi  %r17, %r30, 30, 1
	lwzx %r17, %r18, %r17
	srawi %r30, %r30, 1
	cmplw %r9, %r17
	bge- _212244
	mr %r25, %r30
_212244:
	slwi  %r17, %r30, 2
	lwzx %r17, %r18, %r17
	cmplw %r9, %r17
	blt- _212258
	addi %r12, %r30, 0x1
_212258:
	cmpw %r12, %r25
	blt+ _212228
	slwi  %r12, %r30, 2
	addi %r17, %r30, 0x1
	add %r12, %r18, %r12
	mtctr %r17
	cmpwi %r30, 0x0
	blt- _21229c
_212278:
	lwz %r17, 0x0(%r12)
	cmplw %r17, %r9
	bgt- _212290
	lwz %r17, 0x4(%r12)
	cmplw %r9, %r17
	blt- _21229c
_212290:
	subi %r12, %r12, 0x4
	subi %r30, %r30, 0x1
	bdnz+ _212278
_21229c:
	subf %r12, %r30, %r28
	subic. %r29, %r29, 0xfd
	subi %r17, %r12, 0x1
	add %r9, %r4, %r28
	add %r12, %r4, %r17
	ble- _21233c
	srwi. %r25, %r29, 3
	mtctr %r25
	beq- _21231c
_2122c0:
	lbz %r25, 0x0(%r12)
	addi %r28, %r28, 0x8
	stb %r25, 0x0(%r9)
	addi %r17, %r17, 0x8
	lbz %r25, 0x1(%r12)
	stb %r25, 0x1(%r9)
	lbz %r25, 0x2(%r12)
	stb %r25, 0x2(%r9)
	lbz %r25, 0x3(%r12)
	stb %r25, 0x3(%r9)
	lbz %r25, 0x4(%r12)
	stb %r25, 0x4(%r9)
	lbz %r25, 0x5(%r12)
	stb %r25, 0x5(%r9)
	lbz %r25, 0x6(%r12)
	stb %r25, 0x6(%r9)
	lbz %r25, 0x7(%r12)
	addi %r12, %r12, 0x8
	stb %r25, 0x7(%r9)
	addi %r9, %r9, 0x8
	bdnz+ _2122c0
	andi. %r29, %r29, 0x7
	beq- _21233c
_21231c:
	mtctr %r29
_212320:
	lbz %r25, 0x0(%r12)
	addi %r17, %r17, 0x1
	stb %r25, 0x0(%r9)
	addi %r9, %r9, 0x1
	addi %r12, %r12, 0x1
	addi %r28, %r28, 0x1
	bdnz+ _212320
_21233c:
	slwi  %r17, %r30, 2
	lwzx %r12, %r18, %r17
	add %r25, %r18, %r17
	lwzx %r9, %r19, %r17
	mullw %r12, %r8, %r12
	addi %r29, %r9, 0x1
	stwx %r29, %r19, %r17
	mullw %r17, %r8, %r9
	add %r15, %r15, %r12
	b _212370
_212364:
	lwz %r8, 0x0(%r25)
	addi %r8, %r8, 0x1
	stw %r8, 0x0(%r25)
_212370:
	addi %r30, %r30, 0x1
	addi %r25, %r25, 0x4
	cmpw %r30, %r11
	ble+ _212364
	lwzx %r8, %r18, %r10
	cmplw %r8, %r5
	blt- _212514
	cmpwi %cr1, %r11, 0x0
	stw %r6, 0x0(%r18)
	li %r8, 0x0
	ble- cr1, _212514
	cmpwi %r11, 0x8
	subi %r9, %r11, 0x8
	ble- _2124d0
	li %r25, 0x0
	blt- cr1, _2123c0
	subi %r12, %r14, 0x2
	cmpw %r11, %r12
	bgt- _2123c0
	li %r25, 0x1
_2123c0:
	cmpwi %r25, 0x0
	beq- _2124d0
	addi %r29, %r9, 0x7
	mr %r12, %r19
	srwi  %r29, %r29, 3
	mr %r25, %r18
	mtctr %r29
	cmpwi %r9, 0x0
	ble- _2124d0
_2123e4:
	lwz %r9, 0x0(%r12)
	addi %r8, %r8, 0x8
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x0(%r12)
	lwz %r9, 0x0(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x4(%r25)
	lwz %r9, 0x4(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x4(%r12)
	lwz %r9, 0x4(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x8(%r25)
	lwz %r9, 0x8(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x8(%r12)
	lwz %r9, 0x8(%r25)
	add %r9, %r9, %r29
	stw %r9, 0xc(%r25)
	lwz %r9, 0xc(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0xc(%r12)
	lwz %r9, 0xc(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x10(%r25)
	lwz %r9, 0x10(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x10(%r12)
	lwz %r9, 0x10(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x14(%r25)
	lwz %r9, 0x14(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x14(%r12)
	lwz %r9, 0x14(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x18(%r25)
	lwz %r9, 0x18(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x18(%r12)
	lwz %r9, 0x18(%r25)
	add %r9, %r9, %r29
	stw %r9, 0x1c(%r25)
	lwz %r9, 0x1c(%r12)
	srwi  %r9, %r9, 1
	ori %r29, %r9, 0x1
	stw %r29, 0x1c(%r12)
	addi %r12, %r12, 0x20
	lwz %r9, 0x1c(%r25)
	add %r9, %r9, %r29
	stwu %r9, 0x20(%r25)
	bdnz+ _2123e4
_2124d0:
	slwi  %r12, %r8, 2
	subf %r25, %r8, %r11
	add %r9, %r19, %r12
	add %r12, %r18, %r12
	mtctr %r25
	cmpw %r8, %r11
	bge- _212514
_2124ec:
	lwz %r25, 0x0(%r9)
	addi %r8, %r8, 0x1
	srwi  %r25, %r25, 1
	ori %r29, %r25, 0x1
	stw %r29, 0x0(%r9)
	addi %r9, %r9, 0x4
	lwz %r25, 0x0(%r12)
	add %r25, %r25, %r29
	stwu %r25, 0x4(%r12)
	bdnz+ _2124ec
_212514:
	add %r8, %r3, %r23
	b _212538
_21251c:
	lbz %r9, 0x0(%r8)
	slwi  %r12, %r26, 8
	slwi  %r15, %r15, 8
	slwi  %r17, %r17, 8
	add %r26, %r12, %r9
	addi %r23, %r23, 0x1
	addi %r8, %r8, 0x1
_212538:
	add %r9, %r15, %r17
	clrrwi  %r12, %r15, 24
	clrrwi  %r9, %r9, 24
	cmplw %r12, %r9
	beq+ _21251c
	add %r8, %r3, %r23
	b _212578
_212554:
	clrlwi  %r12, %r15, 16
	lbz %r9, 0x0(%r8)
	subf %r17, %r12, %r5
	slwi  %r15, %r15, 8
	slwi  %r12, %r26, 8
	addi %r23, %r23, 0x1
	slwi  %r17, %r17, 8
	addi %r8, %r8, 0x1
	add %r26, %r12, %r9
_212578:
	cmplw %r17, %r5
	blt+ _212554
_212580:
	cmpw %r28, %r24
	blt+ _211fb0
	mr %r3, %r28
	lmw %r14, 0x8(%r1)
	addi %r1, %r1, 0x50
	blr

	.global sub_212598
sub_212598: # 0x80219858
	lbz %r4, 0x0(%r3)
	cmpwi %r4, 0x59
	bne- _2125c4
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x61
	bne- _2125c4
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x7a
	bne- _2125c4
	li %r3, 0x1
	blr
_2125c4:
	cmpwi %r4, 0x41
	bne- _2125ec
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x53
	bne- _2125ec
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x48
	bne- _2125ec
	li %r3, 0x2
	blr
_2125ec:
	cmpwi %r4, 0x41
	bne- _212614
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x53
	bne- _212614
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x52
	bne- _212614
	li %r3, 0x3
	blr
_212614:
	li %r3, 0x0
	blr

	.global sub_21261c
sub_21261c: # 0x802198dc
	lbz %r4, 0x0(%r3)
	cmpwi %r4, 0x59
	bne- _212648
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x61
	bne- _212648
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x7a
	bne- _212648
	li %r0, 0x1
	b _21269c
_212648:
	cmpwi %r4, 0x41
	bne- _212670
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x53
	bne- _212670
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x48
	bne- _212670
	li %r0, 0x2
	b _21269c
_212670:
	cmpwi %r4, 0x41
	bne- _212698
	lbz %r0, 0x1(%r3)
	cmpwi %r0, 0x53
	bne- _212698
	lbz %r0, 0x2(%r3)
	cmpwi %r0, 0x52
	bne- _212698
	li %r0, 0x3
	b _21269c
_212698:
	li %r0, 0x0
_21269c:
	cmpwi %r0, 0x1
	beq- _2126b8
	cmpwi %r0, 0x2
	beq- _2126dc
	cmpwi %r0, 0x3
	beq- _2126f8
	b _212714
_2126b8:
	lbz %r0, 0x5(%r3)
	lbz %r5, 0x6(%r3)
	lbz %r4, 0x7(%r3)
	slwi  %r0, %r0, 16
	lbz %r3, 0x4(%r3)
	insrwi  %r4, %r5, 8, 16
	insrwi  %r0, %r3, 8, 0
	or %r3, %r4, %r0
	blr
_2126dc:
	lbz %r0, 0x6(%r3)
	lbz %r4, 0x5(%r3)
	slwi  %r0, %r0, 8
	lbz %r3, 0x7(%r3)
	insrwi  %r0, %r4, 8, 8
	or %r3, %r3, %r0
	blr
_2126f8:
	lbz %r0, 0x6(%r3)
	lbz %r4, 0x5(%r3)
	slwi  %r0, %r0, 8
	lbz %r3, 0x7(%r3)
	insrwi  %r0, %r4, 8, 8
	or %r3, %r3, %r0
	blr
_212714:
	li %r3, -0x1
	blr

	.global sub_21271c
sub_21271c: # 0x802199dc
	stwu %r1, -0x20(%r1)
	slwi  %r0, %r5, 2
	subi %r6, %r13, 0x5e10
	subi %r7, %r13, 0x5e00
	stw %r31, 0x1c(%r1)
	subi %r5, %r13, 0x5df8
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	lwzx %r28, %r6, %r0
	lwzx %r29, %r7, %r0
	add %r31, %r28, %r4
	lwzx %r8, %r5, %r0
	cmpwi %r31, 0x20
	ble- _2127b0
	add %r11, %r29, %r3
	subfic %r9, %r4, 0x20
	lbz %r10, 0x1(%r11)
	subfic %r4, %r4, 0x40
	lbz %r30, 0x2(%r11)
	subf %r4, %r28, %r4
	lbz %r12, 0x3(%r11)
	slwi  %r10, %r10, 16
	lbzx %r11, %r3, %r29
	subi %r28, %r31, 0x20
	addi %r3, %r29, 0x4
	stwx %r28, %r6, %r0
	insrwi  %r12, %r30, 8, 16
	insrwi  %r10, %r11, 8, 0
	or %r10, %r12, %r10
	stwx %r3, %r7, %r0
	slw %r3, %r10, %r28
	srw %r6, %r8, %r9
	srw %r4, %r10, %r4
	stwx %r3, %r5, %r0
	or %r3, %r6, %r4
	b _21280c
_2127b0:
	bne- _2127f8
	add %r11, %r29, %r3
	subfic %r30, %r4, 0x20
	lbz %r10, 0x1(%r11)
	addi %r9, %r29, 0x4
	lbz %r31, 0x2(%r11)
	li %r4, 0x0
	lbz %r12, 0x3(%r11)
	slwi  %r10, %r10, 16
	lbzx %r11, %r3, %r29
	insrwi  %r12, %r31, 8, 16
	stwx %r9, %r7, %r0
	srw %r3, %r8, %r30
	insrwi  %r10, %r11, 8, 0
	or %r7, %r12, %r10
	stwx %r7, %r5, %r0
	stwx %r4, %r6, %r0
	b _21280c
_2127f8:
	slw %r3, %r8, %r4
	subfic %r7, %r4, 0x20
	stwx %r3, %r5, %r0
	srw %r3, %r8, %r7
	stwx %r31, %r6, %r0
_21280c:
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	addi %r1, %r1, 0x20
	blr

	.global sub_212824
sub_212824: # 0x80219ae4
	stwu %r1, -0x10(%r1)
	slwi  %r11, %r4, 2
	subi %r9, %r13, 0x5e10
	subi %r8, %r13, 0x5df8
	stw %r31, 0xc(%r1)
	subi %r10, %r13, 0x5e00
	lwzx %r4, %r9, %r11
	lwzx %r0, %r8, %r11
	cmpwi %r4, 0x1f
	lwzx %r12, %r10, %r11
	srwi  %r31, %r0, 31
	bne- _212890
	add %r6, %r12, %r3
	addi %r4, %r12, 0x4
	lbz %r5, 0x1(%r6)
	li %r0, 0x0
	lbz %r7, 0x2(%r6)
	lbz %r6, 0x3(%r6)
	slwi  %r5, %r5, 16
	lbzx %r3, %r3, %r12
	insrwi  %r6, %r7, 8, 16
	stwx %r4, %r10, %r11
	insrwi  %r5, %r3, 8, 0
	or %r3, %r6, %r5
	stwx %r3, %r8, %r11
	stwx %r0, %r9, %r11
	b _2128a0
_212890:
	slwi  %r3, %r0, 1
	addi %r0, %r4, 0x1
	stwx %r3, %r8, %r11
	stwx %r0, %r9, %r11
_2128a0:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	addi %r1, %r1, 0x10
	blr

	.global sub_2128b0
sub_2128b0: # 0x80219b70
	stwu %r1, -0x30(%r1)
	mflr %r0
	stw %r0, 0x34(%r1)
	stmw %r25, 0x14(%r1)
	mr %r26, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	li %r30, 0x0
	li %r25, 0x0
	lwz %r31, -0x5e08(%r13)
	mr %r4, %r31
_2128e0:
	lwz %r5, -0x5e10(%r13)
	lwz %r0, -0x5df8(%r13)
	cmpwi %r5, 0x1f
	lwz %r3, -0x5e00(%r13)
	srwi  %r8, %r0, 31
	bne- _212930
	add %r5, %r26, %r3
	addi %r0, %r3, 0x4
	lbz %r3, 0x1(%r5)
	lbz %r7, 0x2(%r5)
	lbz %r6, 0x3(%r5)
	slwi  %r3, %r3, 16
	lbz %r5, 0x0(%r5)
	insrwi  %r6, %r7, 8, 16
	stw %r0, -0x5e00(%r13)
	insrwi  %r3, %r5, 8, 0
	or %r0, %r6, %r3
	stw %r0, -0x5df8(%r13)
	stw %r25, -0x5e10(%r13)
	b _212940
_212930:
	slwi  %r3, %r0, 1
	addi %r0, %r5, 0x1
	stw %r3, -0x5df8(%r13)
	stw %r0, -0x5e10(%r13)
_212940:
	cmpwi %r8, 0x0
	beq- _212970
	slwi  %r0, %r30, 1
	ori %r3, %r4, 0x8000
	add %r5, %r29, %r0
	addi %r31, %r31, 0x1
	sth %r3, 0x0(%r5)
	ori %r0, %r4, 0x4000
	addi %r4, %r4, 0x1
	addi %r30, %r30, 0x2
	sth %r0, 0x2(%r5)
	b _2128e0
_212970:
	mr %r3, %r26
	li %r4, 0x9
	li %r5, 0x0
	bl sub_21271c
	slwi  %r4, %r30, 1
_212984:
	subi %r4, %r4, 0x2
	subi %r30, %r30, 0x1
	lhzx %r5, %r29, %r4
	rlwinm. %r0, %r5, 0, 16, 16
	beq- _2129b0
	clrlslwi  %r0, %r5, 18, 1
	cmpwi %r30, 0x0
	sthx %r3, %r28, %r0
	clrlwi  %r3, %r5, 18
	bne+ _212984
	b _2129c0
_2129b0:
	clrlslwi  %r0, %r5, 18, 1
	mr %r4, %r31
	sthx %r3, %r27, %r0
	b _2128e0
_2129c0:
	lmw %r25, 0x14(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr

	.global sub_2129d4
sub_2129d4: # 0x80219c94
	stwu %r1, -0x30(%r1)
	mflr %r0
	subi %r7, %r13, 0x5e08
	stw %r0, 0x34(%r1)
	stmw %r22, 0x8(%r1)
	mr %r22, %r3
	mr %r23, %r4
	mr %r24, %r5
	mr %r25, %r6
	li %r26, 0x0
	subi %r30, %r13, 0x5df8
	subi %r31, %r13, 0x5e10
	subi %r28, %r13, 0x5e00
	li %r29, 0x0
	lwz %r27, 0x4(%r7)
	mr %r4, %r27
_212a14:
	lwz %r5, 0x4(%r31)
	lwz %r0, 0x4(%r30)
	cmpwi %r5, 0x1f
	lwz %r3, 0x4(%r28)
	srwi  %r8, %r0, 31
	bne- _212a64
	add %r5, %r22, %r3
	addi %r0, %r3, 0x4
	lbz %r3, 0x1(%r5)
	lbz %r7, 0x2(%r5)
	lbz %r6, 0x3(%r5)
	slwi  %r3, %r3, 16
	lbz %r5, 0x0(%r5)
	insrwi  %r6, %r7, 8, 16
	stw %r0, 0x4(%r28)
	insrwi  %r3, %r5, 8, 0
	or %r0, %r6, %r3
	stw %r0, 0x4(%r30)
	stw %r29, 0x4(%r31)
	b _212a74
_212a64:
	slwi  %r3, %r0, 1
	addi %r0, %r5, 0x1
	stw %r3, 0x4(%r30)
	stw %r0, 0x4(%r31)
_212a74:
	cmpwi %r8, 0x0
	beq- _212aa4
	slwi  %r0, %r26, 1
	ori %r3, %r4, 0x8000
	add %r5, %r25, %r0
	addi %r27, %r27, 0x1
	sth %r3, 0x0(%r5)
	ori %r0, %r4, 0x4000
	addi %r4, %r4, 0x1
	addi %r26, %r26, 0x2
	sth %r0, 0x2(%r5)
	b _212a14
_212aa4:
	mr %r3, %r22
	li %r4, 0xb
	li %r5, 0x1
	bl sub_21271c
	slwi  %r4, %r26, 1
_212ab8:
	subi %r4, %r4, 0x2
	subi %r26, %r26, 0x1
	lhzx %r5, %r25, %r4
	rlwinm. %r0, %r5, 0, 16, 16
	beq- _212ae4
	clrlslwi  %r0, %r5, 18, 1
	cmpwi %r26, 0x0
	sthx %r3, %r24, %r0
	clrlwi  %r3, %r5, 18
	bne+ _212ab8
	b _212af4
_212ae4:
	clrlslwi  %r0, %r5, 18, 1
	mr %r4, %r27
	sthx %r3, %r23, %r0
	b _212a14
_212af4:
	lmw %r22, 0x8(%r1)
	lwz %r0, 0x34(%r1)
	mtlr %r0
	addi %r1, %r1, 0x30
	blr
	
	.incbin "./dol.text.bin", 0x212b08, 0x288

	.global sub_212d90
sub_212d90: # 0x8021a050
	stwu %r1, -0x10(%r1)
	mflr %r0
	lis %r4, 0x802a
	stw %r0, 0x14(%r1)
	subi %r4, %r4, 0x17f8
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r4, 0x0(%r3)
	bl sub_222498
	cmpwi %r3, 0x0
	stw %r3, 0x4(%r31)
	beq- _212dcc
	mr %r4, %r31
	addi %r3, %r3, 0x28
	bl sub_a7c20
_212dcc:
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global sub_212de4
sub_212de4: # 0x8021a0a4
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _212e3c
	lwz %r5, 0x4(%r3)
	lis %r4, 0x802a
	subi %r4, %r4, 0x17f8
	stw %r4, 0x0(%r3)
	cmpwi %r5, 0x0
	beq- _212e2c
	mr %r4, %r30
	addi %r3, %r5, 0x28
	bl sub_a7db0
_212e2c:
	cmpwi %r31, 0x0
	ble- _212e3c
	mr %r3, %r30
	bl sub_2227d0
_212e3c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_212e58
t1_212e58:
	.incbin "basemain.dol", 0x2153b8, 0xc328
	
	.global sub_21f180
sub_21f180: # 0x80226440
	lwz %r3, -0x5db8(%r13)
	li %r0, 0x0
	lwz %r4, -0x5dc0(%r13)
	mulli %r3, %r3, 0x14
	add %r4, %r4, %r3
	stw %r0, 0x10(%r4)
	lwz %r3, -0x5db8(%r13)
	addi %r0, %r3, 0x1
	stw %r0, -0x5db8(%r13)
	lwz %r3, 0x10(%r4)
	blr

	.incbin "./dol.text.bin", 0x21f1ac, 0x5e0

	.global sub_21f78c
sub_21f78c: # 0x80226a4c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_21f7bc
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_21f7bc
sub_21f7bc: # 0x80226a7c
	li %r0, 0x8
	li %r4, 0x0
	mtctr %r0
_21f7c8:
	stw %r4, 0x0(%r3)
	stw %r4, 0x4(%r3)
	stw %r4, 0x8(%r3)
	stw %r4, 0xc(%r3)
	stw %r4, 0x10(%r3)
	stw %r4, 0x14(%r3)
	stw %r4, 0x18(%r3)
	stw %r4, 0x1c(%r3)
	stw %r4, 0x20(%r3)
	stw %r4, 0x24(%r3)
	stw %r4, 0x28(%r3)
	stw %r4, 0x2c(%r3)
	stw %r4, 0x30(%r3)
	stw %r4, 0x34(%r3)
	stw %r4, 0x38(%r3)
	stw %r4, 0x3c(%r3)
	stw %r4, 0x40(%r3)
	stw %r4, 0x44(%r3)
	stw %r4, 0x48(%r3)
	stw %r4, 0x4c(%r3)
	stw %r4, 0x50(%r3)
	stw %r4, 0x54(%r3)
	stw %r4, 0x58(%r3)
	stw %r4, 0x5c(%r3)
	stw %r4, 0x60(%r3)
	stw %r4, 0x64(%r3)
	stw %r4, 0x68(%r3)
	stw %r4, 0x6c(%r3)
	stw %r4, 0x70(%r3)
	stw %r4, 0x74(%r3)
	stw %r4, 0x78(%r3)
	stw %r4, 0x7c(%r3)
	addi %r3, %r3, 0x80
	bdnz+ _21f7c8
	blr
	
	.global t1_21f854
t1_21f854:
	.incbin "basemain.dol", 0x221db4, 0x297c # malloc
	
_2221d0:
	stwu %r1, -0x50(%r1)
	mflr %r0
	stw %r0, 0x54(%r1)
	addi %r11, %r1, 0x50
	bl sub_19780
	lwz %r28, -0x5d60(%r13)
	mr %r30, %r3
	mr %r31, %r4
	mr %r27, %r5
	bl sub_1a2550
	bl sub_23b35c
	lwz %r0, -0x5d44(%r13)
	mr %r29, %r3
	cmpwi %r0, 0x0
	beq- _222210
	bl sub_1a2550
_222210:
	cmpwi %r29, 0x0
	beq- _22222c
	lwz %r0, 0x3c(%r29)
	cmpwi %r0, 0x0
	beq- _22222c
	mr %r28, %r0
	mr %r27, %r0
_22222c:
	lwz %r0, -0x5d58(%r13)
	cmpwi %r0, 0x0
	beq- _222318
	cmpwi %r28, 0x0
	beq- _22224c
	cmpwi %r27, 0x0
	bne- _22224c
	mr %r27, %r28
_22224c:
	cmplw %r27, %r0
	beq- _222318
	lwz %r6, -0x5d58(%r13)
	lis %r30, 0x8025
	addi %r30, %r30, 0x7420
	lwz %r5, 0x34(%r27)
	lwz %r7, 0x34(%r6)
	mr %r4, %r27
	addi %r3, %r30, 0x7
	crxor 6, 6, 6
	bl sub_19b270
	cmpwi %r29, 0x0
	addi %r3, %r30, 0x46
	beq- _22228c
	lwz %r4, 0x3c(%r29)
	b _222290
_22228c:
	li %r4, 0x0
_222290:
	crxor 6, 6, 6
	bl sub_19b270
	cmpwi %r29, 0x0
	beq- _2222c4
	lwz %r3, 0x3c(%r29)
	cmpwi %r3, 0x0
	beq- _2222b4
	lwz %r4, 0x34(%r3)
	b _2222d0
_2222b4:
	lis %r3, 0x8025
	addi %r3, %r3, 0x7420
	addi %r4, %r3, 0x57
	b _2222d0
_2222c4:
	lis %r3, 0x8025
	addi %r3, %r3, 0x7420
	addi %r4, %r3, 0x5c
_2222d0:
	lis %r30, 0x8025
	addi %r30, %r30, 0x7420
	addi %r3, %r30, 0x61
	crxor 6, 6, 6
	bl sub_19b270
	lwz %r12, -0x5d54(%r13)
	cmpwi %r12, 0x0
	beq- _22230c
	lwz %r0, -0x5d4c(%r13)
	addi %r3, %r30, 0x72
	stw %r3, 0x8(%r1)
	addi %r3, %r1, 0x8
	stw %r0, 0xc(%r1)
	mtctr %r12
	bctrl 
_22230c:
	bl sub_22266c
	li %r3, 0x0
	b _222478
_222318:
	lwz %r12, -0x5d50(%r13)
	cmpwi %r12, 0x0
	beq- _22236c
	cmpwi %r27, 0x0
	li %r0, 0x0
	stw %r0, 0x10(%r1)
	stw %r0, 0x14(%r1)
	stw %r0, 0x18(%r1)
	stw %r0, 0x1c(%r1)
	beq- _222348
	mr %r3, %r27
	b _22234c
_222348:
	mr %r3, %r28
_22234c:
	lwz %r0, -0x5d48(%r13)
	stw %r3, 0x1c(%r1)
	addi %r3, %r1, 0x10
	stw %r30, 0x14(%r1)
	stw %r31, 0x18(%r1)
	stw %r0, 0x10(%r1)
	mtctr %r12
	bctrl 
_22236c:
	cmpwi %r27, 0x0
	beq- _222394
	lwz %r12, 0x0(%r27)
	mr %r3, %r27
	mr %r4, %r30
	mr %r5, %r31
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	b _222478
_222394:
	cmpwi %r28, 0x0
	beq- _222454
	lwz %r12, 0x0(%r28)
	mr %r3, %r28
	mr %r4, %r30
	mr %r5, %r31
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	cmpwi %r3, 0x0
	mr %r27, %r3
	bne- _22244c
	lwz %r12, 0x0(%r28)
	mr %r3, %r28
	lwz %r5, 0x10(%r28)
	li %r4, 0x4
	lwz %r12, 0x24(%r12)
	lwz %r29, 0x1c(%r5)
	mtctr %r12
	bctrl 
	subf %r4, %r28, %r29
	lis %r0, 0x4330
	xoris %r4, %r4, 0x8000
	stw %r4, 0x24(%r1)
	lis %r8, 0x8025
	lfd %f1, -0x6238(%r2)
	stw %r0, 0x20(%r1)
	addi %r8, %r8, 0x7420
	mr %r5, %r3
	lfd %f2, -0x6230(%r2)
	lfd %f0, 0x20(%r1)
	mr %r4, %r28
	stw %r30, 0x2c(%r1)
	mr %r6, %r30
	fsubs %f1, %f0, %f1
	lfs %f3, -0x6240(%r2)
	stw %r0, 0x28(%r1)
	mr %r7, %r31
	addi %r3, %r8, 0x7e
	lfd %f0, 0x28(%r1)
	fdivs %f1, %f1, %f3
	fsubs %f0, %f0, %f2
	fdivs %f2, %f0, %f3
	creqv 6, 6, 6
	bl sub_19b270
	bl sub_22266c
_22244c:
	mr %r3, %r27
	b _222478
_222454:
	lis %r3, 0x8025
	mr %r4, %r30
	addi %r3, %r3, 0x7420
	mr %r5, %r27
	addi %r3, %r3, 0xc3
	crxor 6, 6, 6
	bl sub_19b270
	bl sub_22266c
	li %r3, 0x0
_222478:
	addi %r11, %r1, 0x50
	bl sub_197cc
	lwz %r0, 0x54(%r1)
	mtlr %r0
	addi %r1, %r1, 0x50
	blr

	.incbin "./dol.text.bin", 0x222490, 0x8

	.global sub_222498
sub_222498: # 0x80229758
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	li %r29, 0x0
	bl sub_1912f8
	cmpwi %r3, 0x0
	mr %r30, %r3
	beq- _222520
	lis %r3, 0x8038
	li %r29, 0x0
	subi %r3, %r3, 0x50
	bl sub_1a0b84
	lwz %r0, -0x5d5c(%r13)
	cmpwi %r0, 0x0
	beq- _222514
	li %r4, 0x0
	lis %r31, 0x8038
	b _222500
_2224ec:
	lwz %r0, 0x10(%r3)
	cmplw %r0, %r30
	bne- _222500
	mr %r29, %r4
	b _222514
_222500:
	subi %r3, %r31, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r4, %r3
	bne+ _2224ec
_222514:
	lis %r3, 0x8038
	subi %r3, %r3, 0x50
	bl sub_1a0c60
_222520:
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global t1_222540
t1_222540:
	.incbin "basemain.dol", 0x224aa0, 0x12c

	.global sub_22266c
sub_22266c: # 0x8022992c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stmw %r26, 0x8(%r1)
	li %r27, 0x0
	li %r30, 0x0
	li %r31, 0x0
	lis %r29, 0x8038
	lis %r28, 0x9000
	b _222704
_222694:
	cmplw %r3, %r28
	li %r26, 0x0
	bge- _2226c0
	lwz %r12, 0x0(%r27)
	mr %r3, %r27
	li %r4, 0x4
	lwz %r12, 0x24(%r12)
	mtctr %r12
	bctrl 
	add %r30, %r30, %r3
	b _2226ec
_2226c0:
	lwz %r12, 0x0(%r27)
	mr %r3, %r27
	li %r4, 0x4
	lwz %r12, 0x24(%r12)
	mtctr %r12
	bctrl 
	add %r31, %r31, %r3
	b _2226ec
_2226e0:
	lwz %r0, 0x18(%r27)
	cmplw %r0, %r3
	beq- _222704
_2226ec:
	mr %r4, %r26
	subi %r3, %r29, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r26, %r3
	bne+ _2226e0
_222704:
	mr %r4, %r27
	subi %r3, %r29, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r27, %r3
	bne+ _222694
	lmw %r26, 0x8(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.incbin "./dol.text.bin", 0x222730, 0x80229a5c - 0x802299f0

	.global sub_22279c
sub_22279c: # 0x80229a5c
	mr %r0, %r4
	mr %r4, %r5
	mr %r5, %r0
	b _2221d0

	.incbin "./dol.text.bin", 0x2227ac, 0x80229a80 - 0x80229a6c

	.global sub_2227c0
sub_2227c0: # 0x80229a80
	mr %r0, %r4
	mr %r4, %r5
	mr %r5, %r0
	b _2221d0

	.global sub_2227d0
sub_2227d0: # 0x80229a90
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stw %r31, 0x1c(%r1)
	stw %r30, 0x18(%r1)
	stw %r29, 0x14(%r1)
	stw %r28, 0x10(%r1)
	mr %r28, %r3
	bl sub_1912f8
	cmpwi %r3, 0x0
	mr %r30, %r3
	beq- _22287c
	lis %r3, 0x8038
	li %r29, 0x0
	subi %r3, %r3, 0x50
	bl sub_1a0b84
	lwz %r0, -0x5d5c(%r13)
	cmpwi %r0, 0x0
	beq- _222850
	li %r4, 0x0
	lis %r31, 0x8038
	b _22283c
_222828:
	lwz %r0, 0x10(%r3)
	cmplw %r0, %r30
	bne- _22283c
	mr %r29, %r4
	b _222850
_22283c:
	subi %r3, %r31, 0x60
	bl sub_a7e20
	cmpwi %r3, 0x0
	mr %r4, %r3
	bne+ _222828
_222850:
	lis %r3, 0x8038
	subi %r3, %r3, 0x50
	bl sub_1a0c60
	cmpwi %r29, 0x0
	beq- _22287c
	lwz %r12, 0x0(%r29)
	mr %r3, %r29
	mr %r4, %r28
	lwz %r12, 0x18(%r12)
	mtctr %r12
	bctrl 
_22287c:
	lwz %r0, 0x24(%r1)
	lwz %r31, 0x1c(%r1)
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r28, 0x10(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	
	.global t1_22289c
t1_22289c:
	.incbin "basemain.dol", 0x224dfc, 0x10e30

	.global sub_2336cc
sub_2336cc: # 0x8023a98c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_212d90
	lis %r3, 0x802a
	li %r4, 0x0
	subi %r3, %r3, 0x588
	stw %r3, 0x0(%r31)
	li %r0, -0x1
	lwz %r5, -0x5d60(%r13)
	mr %r3, %r31
	stw %r5, 0x10(%r31)
	lwz %r5, -0x5cfc(%r13)
	stw %r5, 0x14(%r31)
	lwz %r5, -0x5cf8(%r13)
	stw %r5, 0x18(%r31)
	lwz %r5, -0x5cf4(%r13)
	stw %r5, 0x1c(%r31)
	stw %r4, 0x20(%r31)
	stw %r4, 0x24(%r31)
	stw %r0, 0x28(%r31)
	stw %r4, 0x2c(%r31)
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_233740
sub_233740: # 0x8023aa00
	stwu %r1, -0x10(%r1)
	mflr %r0
	cmpwi %r3, 0x0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	beq- _23377c
	li %r4, 0x0
	bl sub_212de4
	cmpwi %r31, 0x0
	ble- _23377c
	mr %r3, %r30
	bl sub_2227d0
_23377c:
	mr %r3, %r30
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_233798
t1_233798:
	.incbin "basemain.dol", 0x235cf8, 0x70
	
	.global sub_233808
sub_233808: # 0x8023aac8
	lwz %r3, 0x24(%r3)
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctr 
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	lwz %r12, 0x0(%r3)
	lwz %r12, 0x10(%r12)
	mtctr %r12
	bctrl 
	lwz %r12, 0x0(%r31)
	mr %r3, %r31
	lwz %r12, 0x14(%r12)
	mtctr %r12
	bctrl 
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x233868, 0x80241a2c - 0x8023ab28 # branch_to_mod2_addr
	
	.global sub_23a76c
sub_23a76c: # 0x80241a2c
	stwu %r1, -0x20(%r1)
	mflr %r0
	cmpwi %r6, 0x0
	stw %r0, 0x24(%r1)
	stmw %r27, 0xc(%r1)
	mr %r30, %r3
	mr %r27, %r4
	mr %r28, %r5
	mr %r29, %r6
	bne- _23a798
	lwz %r29, -0x5d60(%r13)
_23a798:
	mr %r4, %r29
	li %r3, 0x58
	li %r5, 0x4
	bl sub_22279c
	cmpwi %r3, 0x0
	mr %r31, %r3
	beq- _23a7c8
	mr %r4, %r30
	mr %r5, %r27
	mr %r6, %r28
	bl sub_23acd8
	mr %r31, %r3
_23a7c8:
	cmpwi %r31, 0x0
	bne- _23a7d8
	li %r3, 0x0
	b _23aa04
_23a7d8:
	mulli %r3, %r30, 0x18
	li %r0, 0x0
	stw %r0, 0x48(%r31)
	mr %r4, %r29
	li %r5, 0x4
	addi %r3, %r3, 0x10
	bl sub_2227c0
	lis %r4, 0x8024
	mr %r7, %r30
	addi %r4, %r4, 0x1cd8
	li %r5, 0x0
	li %r6, 0x18
	bl sub_19014
	stw %r3, 0x4c(%r31)
	cmpwi %r3, 0x0
	stw %r30, 0x50(%r31)
	bne- _23a844
	cmpwi %r31, 0x0
	beq- _23a83c
	lwz %r12, 0x0(%r31)
	mr %r3, %r31
	li %r4, 0x1
	lwz %r12, 0x8(%r12)
	mtctr %r12
	bctrl 
_23a83c:
	li %r3, 0x0
	b _23aa04
_23a844:
	cmpwi %cr1, %r30, 0x0
	li %r4, 0x0
	ble- cr1, _23aa00
	cmpwi %r30, 0x8
	subi %r6, %r30, 0x8
	ble- _23a9c0
	li %r5, 0x0
	blt- cr1, _23a878
	lis %r3, 0x8000
	subi %r0, %r3, 0x2
	cmpw %r30, %r0
	bgt- _23a878
	li %r5, 0x1
_23a878:
	cmpwi %r5, 0x0
	beq- _23a9c0
	addi %r5, %r6, 0x7
	li %r3, 0x0
	srwi  %r5, %r5, 3
	li %r0, 0x0
	mtctr %r5
	cmpwi %r6, 0x0
	ble- _23a9c0
_23a89c:
	lwz %r5, 0x4c(%r31)
	addi %r4, %r4, 0x8
	stwx %r0, %r5, %r3
	lwz %r5, 0x4c(%r31)
	.incbin "./dol.text.bin", 0x23a8ac, 0x80241b70 - 0x80241b6c
	stw %r0, 0xc(%r5)
	stw %r0, 0x10(%r5)
	stw %r0, 0x14(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x18(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x18(%r5)
	stw %r0, 0x24(%r5)
	stw %r0, 0x28(%r5)
	stw %r0, 0x2c(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x30(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x30(%r5)
	stw %r0, 0x3c(%r5)
	stw %r0, 0x40(%r5)
	stw %r0, 0x44(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x48(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x48(%r5)
	stw %r0, 0x54(%r5)
	stw %r0, 0x58(%r5)
	stw %r0, 0x5c(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x60(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x60(%r5)
	stw %r0, 0x6c(%r5)
	stw %r0, 0x70(%r5)
	stw %r0, 0x74(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x78(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x78(%r5)
	stw %r0, 0x84(%r5)
	stw %r0, 0x88(%r5)
	stw %r0, 0x8c(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x90(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0x90(%r5)
	stw %r0, 0x9c(%r5)
	stw %r0, 0xa0(%r5)
	stw %r0, 0xa4(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	stw %r0, 0xa8(%r5)
	lwz %r5, 0x4c(%r31)
	add %r5, %r5, %r3
	addi %r3, %r3, 0xc0
	stw %r0, 0xa8(%r5)
	stw %r0, 0xb4(%r5)
	stw %r0, 0xb8(%r5)
	stw %r0, 0xbc(%r5)
	bdnz+ _23a89c
_23a9c0:
	subf %r0, %r4, %r30
	li %r5, 0x0
	mulli %r6, %r4, 0x18
	mtctr %r0
	cmpw %r4, %r30
	bge- _23aa00
_23a9d8:
	lwz %r3, 0x4c(%r31)
	stwx %r5, %r3, %r6
	lwz %r0, 0x4c(%r31)
	add %r3, %r0, %r6
	stwx %r5, %r6, %r0
	addi %r6, %r6, 0x18
	stw %r5, 0xc(%r3)
	stw %r5, 0x10(%r3)
	stw %r5, 0x14(%r3)
	bdnz+ _23a9d8
_23aa00:
	mr %r3, %r31
_23aa04:
	lmw %r27, 0xc(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x23aa18, 0x80241d5c - 0x80241cd8

	.global sub_23aa9c
sub_23aa9c: # 0x80241d5c
	stwu %r1, -0x20(%r1)
	mflr %r0
	stw %r0, 0x24(%r1)
	stmw %r27, 0xc(%r1)
	mr %r27, %r3
	mr %r28, %r4
	mr %r29, %r5
	mr %r30, %r6
	bl sub_23ad3c
	cmpwi %r3, 0x0
	mr %r31, %r3
	bne- _23aad4
	li %r3, 0x0
	b _23ab08
_23aad4:
	stw %r28, 0x0(%r3)
	mr %r4, %r31
	li %r5, 0x0
	stw %r29, 0x4(%r3)
	stw %r30, 0x8(%r3)
	addi %r3, %r27, 0xc
	bl sub_19fffc
	neg %r0, %r3
	or %r0, %r0, %r3
	srwi. %r3, %r0, 31
	bne- _23ab08
	li %r0, 0x0
	stw %r0, 0x0(%r31)
_23ab08:
	lmw %r27, 0xc(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr

	.global sub_23ab1c
sub_23ab1c: # 0x80241ddc
	lwz %r0, 0x50(%r3)
	li %r5, 0x0
	mtctr %r0
	cmpwi %r0, 0x0
	ble- _23ab50
_23ab30:
	lwz %r4, 0x4c(%r3)
	lwzx %r0, %r4, %r5
	cmpwi %r0, 0x0
	beq- _23ab48
	li %r3, 0x1
	blr
_23ab48:
	addi %r5, %r5, 0x18
	bdnz+ _23ab30
_23ab50:
	li %r3, 0x0
	blr
	.incbin "./dol.text.bin", 0x23ab58, 0x80241f98 - 0x80241e18

	.global sub_23acd8
sub_23acd8: # 0x80241f98
	stwu %r1, -0x10(%r1)
	mflr %r0
	mr %r7, %r4
	mr %r4, %r6
	stw %r0, 0x14(%r1)
	mr %r0, %r5
	mr %r5, %r7
	li %r7, 0x0
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	mr %r6, %r0
	bl sub_23b164
	lis %r3, 0x802a
	li %r0, 0x0
	subi %r3, %r3, 0x3d8
	stw %r3, 0x0(%r31)
	lwz %r3, 0x8(%r31)
	stw %r0, 0x54(%r31)
	bl sub_1a322c
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

	.global sub_23ad3c
sub_23ad3c: # 0x80241ffc
	lwz %r0, 0x50(%r3)
	li %r6, 0x0
	li %r4, 0x0
	mtctr %r0
	cmpwi %r0, 0x0
	ble- _23ad98
_23ad54:
	lwz %r5, 0x4c(%r3)
	lwzx %r0, %r5, %r4
	cmpwi %r0, 0x0
	bne- _23ad8c
	mulli %r6, %r6, 0x18
	li %r0, 0x0
	add %r4, %r5, %r6
	stwx %r0, %r5, %r6
	stw %r0, 0xc(%r4)
	stw %r0, 0x10(%r4)
	stw %r0, 0x14(%r4)
	lwz %r0, 0x4c(%r3)
	add %r3, %r0, %r6
	blr
_23ad8c:
	addi %r4, %r4, 0x18
	addi %r6, %r6, 0x1
	bdnz+ _23ad54
_23ad98:
	li %r3, 0x0
	blr
	.incbin "./dol.text.bin", 0x23ada0, 0x80242424 - 0x80242060

	.global sub_23b164
sub_23b164: # 0x80242424
	stwu %r1, -0x20(%r1)
	mflr %r0
	lis %r8, 0x802a
	cmpwi %r7, 0x0
	stw %r0, 0x24(%r1)
	subi %r8, %r8, 0x3a8
	stw %r31, 0x1c(%r1)
	mr %r31, %r6
	stw %r30, 0x18(%r1)
	mr %r30, %r5
	stw %r29, 0x14(%r1)
	mr %r29, %r3
	stw %r8, 0x0(%r3)
	bne- _23b1a0
	lwz %r7, -0x5d60(%r13)
_23b1a0:
	clrrwi  %r0, %r4, 5
	stw %r7, 0x4(%r3)
	mr %r5, %r7
	li %r4, 0x20
	stw %r0, 0x38(%r3)
	mr %r3, %r0
	bl _2221d0
	stw %r3, 0x34(%r29)
	li %r3, 0x318
	lwz %r5, 0x4(%r29)
	li %r4, 0x20
	bl _2221d0
	lwz %r7, 0x38(%r29)
	lis %r4, 0x8024
	lwz %r0, 0x34(%r29)
	mr %r5, %r29
	stw %r3, 0x8(%r29)
	mr %r8, %r31
	addi %r4, %r4, 0x2880
	add %r6, %r0, %r7
	li %r9, 0x1
	bl sub_1a2b24
	li %r0, 0x0
	stw %r0, 0x3c(%r29)
	lwz %r5, 0x4(%r29)
	mr %r3, %r29
	mr %r4, %r30
	bl sub_23b564
	lwz %r31, 0x1c(%r1)
	mr %r3, %r29
	lwz %r30, 0x18(%r1)
	lwz %r29, 0x14(%r1)
	lwz %r0, 0x24(%r1)
	mtlr %r0
	addi %r1, %r1, 0x20
	blr
	.incbin "./dol.text.bin", 0x23b230, 0x8024261c - 0x802424f0

	.global sub_23b35c
sub_23b35c: # 0x8024261c
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	lis %r31, 0x8038
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	li %r3, 0x0
	b _23b390
_23b380:
	lwz %r0, 0x8(%r3)
	cmplw %r0, %r30
	bne- _23b390
	b _23b3a8
_23b390:
	mr %r4, %r3
	addi %r3, %r31, 0x760
	bl sub_a7e20
	cmpwi %r3, 0x0
	bne+ _23b380
	li %r3, 0x0
_23b3a8:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	.incbin "./dol.text.bin", 0x23b3c0, 0x80242824 - 0x80242680

	.global sub_23b564
sub_23b564: # 0x80242824
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	stw %r4, 0x30(%r3)
	slwi  %r3, %r4, 2
	li %r4, 0x4
	bl _2221d0
	stw %r3, 0x2c(%r31)
	mr %r4, %r3
	lwz %r5, 0x30(%r31)
	addi %r3, %r31, 0xc
	bl sub_19ff9c
	lis %r3, 0x8038
	mr %r4, %r31
	addi %r3, %r3, 0x760
	bl sub_a7c20
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_23b5c0
t1_23b5c0:
	.incbin "basemain.dol", 0x23db20, 0x24c0

