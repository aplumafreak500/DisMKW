	.text
	.global Text1Size
	.set Text1Size, Text1End - Text1Start
	.global Text1Start
Text1Start:
	.incbin "basemain.dol", 0x2560, 0x23da80
	.global Text1End
Text1End:
