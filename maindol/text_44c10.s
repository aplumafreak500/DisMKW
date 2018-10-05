	.text
	.global sub_44c10
sub_44c10: # 0x8004bed0
	stwu %r1, -0x10(%r1)
	mflr %r0
	lwz %r6, 0x0(%r3)
	stw %r0, 0x14(%r1)
	addi %r7, %r6, 0x8
	stw %r31, 0xc(%r1)
	lhz %r0, 0xc(%r6)
	slwi  %r0, %r0, 4
	add %r3, %r6, %r0
	addi %r31, %r3, 0x8
	b _44c8c
	nop # what?
_44c40:
	extrwi  %r0, %r3, 13, 16
	mr %r7, %r31
	cmplw %r0, %r5
	clrlwi  %r3, %r3, 29
	bge- _44c7c
	lbzx %r0, %r4, %r0
	extsb %r0, %r0
	sraw %r0, %r0, %r3
	clrlwi. %r0, %r0, 31
	beq- _44c7c
	lhz %r0, 0x6(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r6, %r0
	addi %r31, %r3, 0x8
	b _44c8c
_44c7c:
	lhz %r0, 0x4(%r31)
	slwi  %r0, %r0, 4
	add %r3, %r6, %r0
	addi %r31, %r3, 0x8
_44c8c:
	lhz %r3, 0x0(%r31)
	lhz %r0, 0x0(%r7)
	cmplw %r0, %r3
	bgt+ _44c40
	lwz %r0, 0x8(%r31)
	cmpwi %r0, 0x0
	beq- _44cd0
	mr %r3, %r4
	beq- _44cb8
	add %r4, %r6, %r0
	b _44cbc
_44cb8:
	li %r4, 0x0
_44cbc:
	bl sub_b47c
	cmpwi %r3, 0x0
	bne- _44cd0
	mr %r3, %r31
	b _44cd4
_44cd0:
	li %r3, 0x0
_44cd4:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

