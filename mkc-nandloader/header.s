	.data
	.global DolHeader
DolHeader:
	.4byte init_offset
	.space 24
	.4byte loader_offset
	.space 40
	.4byte init_start
	.space 24
	.4byte loader_start
	.space 40
	.4byte init_size
	.space 24
	.4byte loader_size
	.space 40
	.4byte bss_start
	.4byte bss_size
	.4byte dol_entrypoint - 0x80000000
	.space 28

