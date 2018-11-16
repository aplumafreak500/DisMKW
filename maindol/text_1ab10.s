	.text
	.global sub_1ab10
sub_1ab10: # 0x80021dd0
	lis %r3, 0x802a
	addi %r4, %r3, 0x28f8
	lwz %r3, 0x28f8(%r3)
	lwz %r4, 0x4(%r4)
	b sub_19a2fc
