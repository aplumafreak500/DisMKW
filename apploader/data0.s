	.data
	.global Data0Size
	.set Data0Size, Data0End - Data0Start
	.global Data0Start
Data0Start:
	.incbin "baseapploader.img", 0x12e0, 0x87c
	.global Data0End
Data0End:
