	.text
	.incbin "baseapploader-update.img", 0x160, 0x154
	.global apl_entrypoint
apl_entrypoint:
	.incbin "baseapploader-update.img", 0x2b4, 0x102c
