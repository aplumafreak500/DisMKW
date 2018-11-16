	.text
	.global sub_44a60
sub_44a60: # 0x8004bd20
	srwi  %r7, %r5, 24
	extrwi  %r6, %r5, 8, 8
	extrwi  %r0, %r5, 8, 16
	li %r8, 0x8
	stb %r8, 0x0(%r3)
	stb %r4, 0x1(%r3)
	stb %r7, 0x2(%r3)
	stb %r6, 0x3(%r3)
	stb %r0, 0x4(%r3)
	stb %r5, 0x5(%r3)
	blr

