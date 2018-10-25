	.text
	.global dol_entrypoint
dol_entrypoint:
	.incbin "baseapploader.img", 0x1b5c + 0x100, 0x80
	.global ldr_80
ldr_80:
	.incbin "baseapploader.img", 0x1b5c + 0x180, 0x320
