	.text
	.global dol_entrypoint
dol_entrypoint:
	.incbin "baseapploader.img", 0x1b5c + 0x100, 0x3a0
