	.text
	.incbin "baseapploader-update.img", 0x20, 0x294
	.global apl_entrypoint
apl_entrypoint:
	.incbin "baseapploader-update.img", 0x2b4, 0x102c
