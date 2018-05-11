	.data
	.global Data4Size
	.set Data4Size, Data4End - Data4Start
	.global Data4Start
Data4Start:
	.incbin "basemain.dol", 0x240f20, 0x13420
	.global Data4End
Data4End:
