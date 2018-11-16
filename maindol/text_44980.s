	.text
	.global sub_44980
sub_44980: # 0x8004bc40
	stwu %r1, -0x10(%r1)
	mflr %r0
	lwz %r4, 0x0(%r4)
	stw %r0, 0x14(%r1)
	lwz %r5, 0x0(%r3)
	lwz %r0, 0x0(%r4)
	lwz %r3, 0x0(%r5)
	cmplw %r3, %r0
	bne- _449bc
	addi %r3, %r5, 0x4
	addi %r4, %r4, 0x4
	bl sub_b47c
	cntlzw %r0, %r3
	srwi  %r3, %r0, 5
	b _449c0
_449bc:
	li %r3, 0x0
_449c0:
	lwz %r0, 0x14(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr
	
	.global t1_449d0
t1_449d0:
	.incbin "basemain.dol", 0x46f30, 0x88

