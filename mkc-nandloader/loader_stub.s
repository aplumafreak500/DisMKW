	.text
	.global dol_entrypoint
dol_entrypoint:
	.incbin "basemkc-nandloader.dol", 0x100, 0x400
