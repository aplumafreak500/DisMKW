	.text
	.global memcpy
memcpy:
	cmplw %r4, %r3
	blt _1f60
	addi %r4, %r4, -1
	addi %r6, %r3, -1
	addi %r5, %r5, 1
	b _1f54
_1f4c:
	lbzu %r0, 1(%r4)
	stbu %r0, 1(%r6)
_1f54:
	addic. %r5, %r5, -1
	bne _1f4c
	blr
_1f60:
	add %r4, %r4, %r5
	add %r6, %r3, %r5
	addi %r5, %r5, 1
	b _1f78
_1f70:
	lbzu %r0, -1(%r4)
	stbu %r0, -1(%r6)
_1f78:
	addic. %r5, %r5, -1
	bne _1f70
	blr
	.global sub_1f84
sub_1f84:
	cmplwi %r5, 0x20
	clrlwi %r7, %r4, 0x18
	addi %r6, %r3, -1
	blt _2020
	nor %r0, %r6, %r6
	clrlwi. %r0, %r0, 0x1e
	beq _1fb0
	subf %r5, %r0, %r5
_1fa4:
	addic. %r0, %r0, -1
	stbu %r7, 1(%r6)
	bne _1fa4
_1fb0:
	cmpwi %r7, 0
	beq _1fd0
	slwi %r4, %r7, 8
	slwi %r3, %r7, 0x18
	slwi %r0, %r7, 0x10
	or %r4, %r7, %r4
	or %r0, %r3, %r0
	or %r7, %r4, %r0
_1fd0:
	rlwinm. %r0, %r5, 0x1b, 5, 0x1f
	addi %r3, %r6, -3
	beq _2004
_1fdc:
	stw %r7, 4(%r3)
	addic. %r0, %r0, -1
	stw %r7, 8(%r3)
	stw %r7, 0xc(%r3)
	stw %r7, 0x10(%r3)
	stw %r7, 0x14(%r3)
	stw %r7, 0x18(%r3)
	stw %r7, 0x1c(%r3)
	stwu %r7, 0x20(%r3)
	bne _1fdc
_2004:
	rlwinm. %r0, %r5, 0x1e, 0x1d, 0x1f
	beq _2018
_200c:
	addic. %r0, %r0, -1
	stwu %r7, 4(%r3)
	bne _200c
_2018:
	addi %r6, %r3, 3
	clrlwi %r5, %r5, 0x1e
_2020:
	cmpwi %r5, 0
	beqlr
_2028:
	addic. %r5, %r5, -1
	stbu %r7, 1(%r6)
	bne _2028
	blr
	.global memset
memset:
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r3
	bl sub_1f84
	mr %r3, %r31
	lwz %r31, 0xc(%r1)
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
