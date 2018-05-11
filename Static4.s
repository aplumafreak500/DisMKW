	.data
	.global Section4Size
	.set Section4Size, Section4End-Section4Start
	.global Section4Start
Section4Start:
	.incbin "baseStaticR.rel", 0x37f380, 0x23240
	.global Section4End
Section4End:
