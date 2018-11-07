	.text
	.incbin "basemain-mkc-installer.dol", 0x100, 0x3c
	.global dol_entrypoint
dol_entrypoint:
	.incbin "basemain-mkc-installer.dol", 0x13c, 0x24a4
