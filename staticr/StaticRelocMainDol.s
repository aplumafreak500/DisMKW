	.data
	.global gRelocTableMainDol
gRelocTableMainDol:
	.incbin "baseStaticR.rel", 0x481cdc, 0x2b2b8
	.global StaticRRelEnd
StaticRRelEnd:
