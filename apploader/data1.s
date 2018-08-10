	.data
	.global Data1Size
	.set Data1Size, Data1End - Data1Start
	.global Data1Start
Data1Start:
	.incbin "baseapploader.img", 0x2971c, 0x120c0
	.global Data1End
Data1End:
