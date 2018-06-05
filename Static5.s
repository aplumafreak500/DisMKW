	.data
	.global Section5Size
	.set Section5Size, Section5End-Section5Start
	.global Section5Start
Section5Start:
	.incbin "baseStaticR.rel", 0x3a25c0, 0x2a75c
	.global Section5End
Section5End:
