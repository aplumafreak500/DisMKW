	.data
	.global DolHeader
DolHeader:
	.4byte text_offset
	.space 24
	.4byte data_offset
	.space 40
	.4byte text_start
	.space 24
	.4byte data_start
	.space 40
	.4byte text_size
	.space 24
	.4byte data_size
	.space 40
	.4byte bss_start
	.4byte bss_size
	.4byte dol_entrypoint
	.space 28

