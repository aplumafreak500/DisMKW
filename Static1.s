	.text
	.global Section1Size
	.set Section1Size, Section1End-Section1Start
	.global Section1Start
Section1Start:
	.incbin "baseStaticR.rel", 0xd4, 0x37ef9c
	.global Section1End
Section1End:
