	.text
	.global sub_44cf0
sub_44cf0: # 0x8004bfb0
	stwu %r1, -0x10(%r1)
	mflr %r0
	stw %r0, 0x14(%r1)
	stw %r31, 0xc(%r1)
	mr %r31, %r4
	stw %r30, 0x8(%r1)
	mr %r30, %r3
	lwz %r0, 0x0(%r3)
	cmpwi %r0, 0x0
	beq- _44d50
	cmpwi %r4, 0x0
	beq- _44d50
	mr %r3, %r31
	bl sub_19434
	mr %r5, %r3
	mr %r3, %r30
	mr %r4, %r31
	bl sub_44c10
	cmpwi %r3, 0x0
	beq- _44d50
	lwz %r4, 0x0(%r30)
	lwz %r0, 0xc(%r3)
	add %r3, %r4, %r0
	.global mod_mod0_entry_addr
mod_mod0_entry_addr:
	.ifdef CTGP_CODE
	b mod0_mod_start
	.else
	b _44d54
	.endif
_44d50:
	li %r3, 0x0
	.global _44d54
_44d54:
	lwz %r0, 0x14(%r1)
	lwz %r31, 0xc(%r1)
	lwz %r30, 0x8(%r1)
	mtlr %r0
	addi %r1, %r1, 0x10
	blr

