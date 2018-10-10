	.text
	.incbin "baseapploader.img", 0x1b5c + 0x4a0, 0xfa20
	
	.global ldr_ff80
ldr_ff80:
	.incbin "baseapploader.img", 0x1b5c + 0xfec0, 0x17d00

