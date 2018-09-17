	.data
	
	.asciz "Failed assertion len <= RETURNFUNC_MAXSIZE\0"
	.asciz "\nApploader Initialized.\n\0\0\0"
	.asciz "This Apploader built %s %s for RVL\n"
	.asciz "Dec  6 2007"
	.asciz "12:45:59\0\0\0"
	.4byte 0
	.asciz "\nAPPLOADER WARNING >>> Older version of DEVKIT BOOT PROGRAM.\nAPPLOADER WARNING >>> Use v1.07 or later.\n"
	.asciz "APPLOADER ERROR >>> FSTLength(%d) in BB2 is greater than FSTMaxLength(%d)\n\0"
	.4byte 0
	.asciz "APPLOADER ERROR >>> Debug monitor size (%d) should be a multiple of 32\n"
	.asciz "APPLOADER ERROR >>> Simulated memory size (%d) should be a multiple of 32\n\0"
	.asciz "APPLOADER ERROR >>> [Physical memory size(0x%x)] - [Console simulated memory size(0x%x)]\nAPPLOADER ERROR >>> must be greater than debug monitor size(0x%x)\n"
	.asciz "APPLOADER WARNING >>> Physical memory size is 0x%x bytes.\nAPPLOADER WARNING >>> Console simulated memory size (0x%x) must be smaller than or equal to the Physical memory size\nAPPLOADER WARNING >>> Use physical memory size as the console simulated memory size.....\n\0\0\0"
	.asciz "APPLOADER ERROR >>> Illegal FST destination address! (0x%x)\n\0\0\0"
	.asciz "APPLOADER ERROR >>> Total size of text/data sections of the dol file are too big (%d(0x%08x) bytes). Currently the limit is set as %d(0x%08x) bytes\n\0\0\0"
	.asciz "APPLOADER ERROR >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x (production mode)\n"
	.asciz "\n\nAPPLOADER WARNING >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x in production mode.\n\n\0"
	.asciz "APPLOADER ERROR >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x (development mode).\n"
	.2byte 0
	.asciz "APPLOADER ERROR >>> Too big text segment! (0x%x - 0x%x)\n\0\0\0"
	.asciz "APPLOADER ERROR >>> Too big data segment! (0x%x - 0x%x)\n\0\0\0"
	.asciz "Failed assertion SecondTimeForThePart == TRUE"
	.2byte 0
	.4byte 0x81200658, 0x81200658, 0x81200698, 0x81200704
	.4byte 0x812008A0, 0x81200A78, 0x81200AA8, 0x81200D00
	.4byte 0x81200E28, 0x81200F50, 0x81200FE4, 0x81201054
	.4byte 0x812010B8
	
	.space 412 # Black and gold, yo.

