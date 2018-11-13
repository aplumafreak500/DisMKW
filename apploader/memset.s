	.text
	.global memcpy
memcpy:
	cmplw %r4, %r3
	blt- _2c
	subi %r4, %r4, 0x1
	subi %r6, %r3, 0x1
	addi %r5, %r5, 0x1
	b _20
_18:
	lbzu %r0, 0x1(%r4)
	stbu %r0, 0x1(%r6)
_20:
	subic. %r5, %r5, 0x1
	bne+ _18
	blr
_2c:
	add %r4, %r4, %r5
	add %r6, %r3, %r5
	addi %r5, %r5, 0x1
	b _44
_3c:
	lbzu %r0, -0x1(%r4)
	stbu %r0, -0x1(%r6)
_44:
	subic. %r5, %r5, 0x1
	bne+ _3c
	blr
	
	.global sub_50
sub_50:
	cmplwi %r5, 0x20
	clrlwi  %r7, %r4, 24
	subi %r6, %r3, 0x1
	blt- _ec
	not %r0, %r6
	clrlwi. %r0, %r0, 30
	beq- _7c
	subf %r5, %r0, %r5
_70:
	subic. %r0, %r0, 0x1
	stbu %r7, 0x1(%r6)
	bne+ _70
_7c:
	cmpwi %r7, 0x0
	beq- _9c
	slwi  %r4, %r7, 8
	slwi  %r3, %r7, 24
	slwi  %r0, %r7, 16
	or %r4, %r7, %r4
	or %r0, %r3, %r0
	or %r7, %r4, %r0
_9c:
	srwi. %r0, %r5, 5
	subi %r3, %r6, 0x3
	beq- _d0
_a8:
	stw %r7, 0x4(%r3)
	subic. %r0, %r0, 0x1
	stw %r7, 0x8(%r3)
	stw %r7, 0xc(%r3)
	stw %r7, 0x10(%r3)
	stw %r7, 0x14(%r3)
	stw %r7, 0x18(%r3)
	stw %r7, 0x1c(%r3)
	stwu %r7, 0x20(%r3)
	bne+ _a8
_d0:
	extrwi. %r0, %r5, 3, 27
	beq- _e4
_d8:
	subic. %r0, %r0, 0x1
	stwu %r7, 0x4(%r3)
	bne+ _d8
_e4:
	addi %r6, %r3, 0x3
	clrlwi  %r5, %r5, 30
_ec:
	cmpwi %r5, 0x0
	beqlr- 
_f4:
	subic. %r5, %r5, 0x1
	stbu %r7, 0x1(%r6)
	bne+ _f4
	blr
	
	.global memset
memset:
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_50
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
