	.data
	.global DolHeader
DolHeader:
	.4byte init_offset
	.4byte text_offset
	.ifdef USE_GECKO
	.4byte codehandler_offset
	.space 16
	.else
	.space 20
	.endif
	.4byte extab_offset
	.4byte extab_index_offset
	.4byte ctors_offset
	.4byte dtors_offset
	.4byte rodata_offset
	.4byte data_offset
	.4byte sdata_offset
	.4byte sdata2_offset
	.ifdef USE_GECKO
	.4byte gct_offset
	.space 8
	.else
	.space 12
	.endif
	.4byte init_start
	.4byte text_start
	.ifdef USE_GECKO
	.4byte codehandler_start
	.space 16
	.else
	.space 20
	.endif
	.4byte extab_start
	.4byte extab_index_start
	.4byte ctors_start
	.4byte dtors_start
	.4byte rodata_start
	.4byte data_start
	.4byte sdata_start
	.4byte sdata2_start
	.ifdef USE_GECKO
	.4byte gct_start
	.space 8
	.else
	.space 12
	.endif
	.4byte init_size
	.4byte text_size
	.ifdef USE_GECKO
	.4byte codehandler_size
	.space 16
	.else
	.space 20
	.endif
	.4byte extab_size
	.4byte extab_index_size
	.4byte ctors_size
	.4byte dtors_size
	.4byte rodata_size
	.4byte data_size
	.4byte sdata_size
	.4byte sdata2_size
	.ifdef USE_GECKO
	.4byte gct_size
	.space 8
	.else
	.space 12
	.endif
	.4byte bss_start
	.4byte bssTotalSize
	.4byte dol_entrypoint
	.space 28

