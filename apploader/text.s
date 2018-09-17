	.text
	
	.global apl_0
apl_0:
	.incbin "baseapploader.img", 0x20, 0x294
	
	.global apl_entrypoint
apl_entrypoint:
	.incbin "baseapploader.img", 0x2b4, 0x3c4
	
	.global apl_658
apl_658:
	.incbin "baseapploader.img", 0x678, 0x40
	
	.global apl_698
apl_698:
	.incbin "baseapploader.img", 0x6b8, 0x6c
	
	.global apl_704
apl_704:
	.incbin "baseapploader.img", 0x724, 0x19c
	
	.global apl_8a0
apl_8a0:
	.incbin "baseapploader.img", 0x8c0, 0x1d8
	
	.global apl_a78
apl_a78:
	.incbin "baseapploader.img", 0xa98, 0x30
	
	.global apl_aa8
apl_aa8:
	.incbin "baseapploader.img", 0xac8, 0x258
	
	.global apl_d00
apl_d00:
	.incbin "baseapploader.img", 0xd20, 0x128
	
	.global apl_e28
apl_e28:
	.incbin "baseapploader.img", 0xe48, 0x128
	
	.global apl_f50
apl_f50:
	.incbin "baseapploader.img", 0xf70, 0x94
	
	.global apl_fe4
apl_fe4:
	.incbin "baseapploader.img", 0x1004, 0x70
	
	.global apl_1054
apl_1054:
	.incbin "baseapploader.img", 0x1074, 0x64
	
	.global apl_10b8
apl_10b8:
	.incbin "baseapploader.img", 0x10d8, 0x208
	
