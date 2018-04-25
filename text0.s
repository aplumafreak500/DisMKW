	.text
	.global Text0Start
Text0Start:
	.asciz "Metrowerks Target Resident Kernel for PowerPC"
	.space 210
	.incbin "basemain.dol", 0x200, 0x2360
