	.text
	.global dol_entrypoint
dol_entrypoint:
	li %r0, 0
	stw %r0, -0x8000(%r13)
	blr
	.space 20
