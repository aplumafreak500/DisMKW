	.data
	.global Data0Size
	.set Data0Size, Data0End - Data0Start
	.global Data0Start
Data0Start:
	.incbin "basemain.dol", 0x23ffe0, 0x5c0
	.global Data0End
Data0End:
