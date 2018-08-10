	.text
	.global Text1Size
	.set Text1Size, Text1End - Text1Start
	.global Text1Start
Text1Start:
	.incbin "baseapploader.img", 0x1b5c, 0x27bc0
	.global Text1End
Text1End:
