	.data
	.global DolHeader
DolHeader:
	.4byte init_offset
	.4byte text_offset
	.ifdef CTGP_CODE
	.4byte bad0text_offset
	.ifdef USE_GECKO
	.4byte codehandler_offset
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte codehandler_offset
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte extab_offset
	.4byte extab_index_offset
	.4byte ctors_offset
	.4byte dtors_offset
	.4byte rodata_offset
	.4byte data_offset
	.4byte sdata_offset
	.4byte sdata2_offset
	.ifdef CTGP_CODE
	.4byte bad0data_offset
	.ifdef USE_GECKO
	.4byte gct_offset
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte gct_offset
	.space 8
	.else
	.space 12
	.endif
	.endif
	.4byte init_start
	.4byte text_start
	.ifdef CTGP_CODE
	.4byte bad0text_start
	.ifdef USE_GECKO
	.4byte codehandler_start
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte codehandler_start
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte extab_start
	.4byte extab_index_start
	.4byte ctors_start
	.4byte dtors_start
	.4byte rodata_start
	.4byte data_start
	.4byte sdata_start
	.4byte sdata2_start
	.ifdef CTGP_CODE
	.4byte bad0data_start
	.ifdef USE_GECKO
	.4byte gct_start
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte gct_start
	.space 8
	.else
	.space 12
	.endif
	.endif
	.4byte init_size
	.4byte text_size
	.ifdef CTGP_CODE
	.4byte bad0text_size
	.ifdef USE_GECKO
	.4byte codehandler_size
	.space 12
	.else
	.space 16
	.endif
	.else
	.ifdef USE_GECKO
	.4byte codehandler_size
	.space 16
	.else
	.space 20
	.endif
	.endif
	.4byte extab_size
	.4byte extab_index_size
	.4byte ctors_size
	.4byte dtors_size
	.4byte rodata_size
	.4byte data_size
	.4byte sdata_size
	.4byte sdata2_size
	.ifdef CTGP_CODE
	.4byte bad0data_size
	.ifdef USE_GECKO
	.4byte gct_size
	.space 4
	.else
	.space 8
	.endif
	.else
	.ifdef USE_GECKO
	.4byte gct_size
	.space 8
	.else
	.space 12
	.endif
	.endif
	.4byte bss_start
	.4byte bssTotalSize
	.ifdef CTGP_CODE
	.4byte CTCode_Entrypoint
	.else
	.4byte dol_entrypoint
	.endif
	.space 28

