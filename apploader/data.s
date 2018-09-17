	.data
	
	.global FailedAssertStr
FailedAssertStr:
	.asciz "Failed assertion len <= RETURNFUNC_MAXSIZE\0"
	.global ApploaderInitializedStr
ApploaderInitializedStr:
	.asciz "\nApploader Initialized.\n\0"
	.2byte 0
	.global ApploaderBuiltStr
ApploaderBuiltStr:
	.asciz "This Apploader built %s %s for RVL\n"
	.global BuildDate
BuildDate:
	.asciz "Dec  6 2007"
	.global BuildTime
BuildTime:
	.asciz "12:45:59\0"
	.2byte 0
	.4byte 0
	.global OldVersionStr
OldVersionStr:
	.ascii "\nAPPLOADER WARNING >>> Older version of DEVKIT BOOT PROGRAM.\n"
	.global OldVersionStr
OldVersionStr2:
	.asciz "APPLOADER WARNING >>> Use v1.07 or later.\n"
	.global FSTLengthStr
FSTLengthStr:
	.asciz "APPLOADER ERROR >>> FSTLength(%d) in BB2 is greater than FSTMaxLength(%d)\n\0"
	.4byte 0
	.global DebugMonitorSizeStr
DebugMonitorSizeStr:
	.asciz "APPLOADER ERROR >>> Debug monitor size (%d) should be a multiple of 32\n"
	.global SimMemSizeStr
SimMemSizeStr:
	.asciz "APPLOADER ERROR >>> Simulated memory size (%d) should be a multiple of 32\n\0"
	.global MemSizeStr
MemSizeStr:
	.ascii "APPLOADER ERROR >>> [Physical memory size(0x%x)] - [Console simulated memory size(0x%x)]\n"
	.asciz "APPLOADER ERROR >>> must be greater than debug monitor size(0x%x)\n"
	.global PhysMemSizeStr
PhysMemSizeStr:
	.ascii "APPLOADER WARNING >>> Physical memory size is 0x%x bytes.\n"
	.global ConsoleMemSizeStr
ConsoleMemSizeStr:
	.ascii "APPLOADER WARNING >>> Console simulated memory size (0x%x) must be smaller than or equal to the Physical memory size\n"
	.global UsePhysMemSizeStr
UsePhysMemSizeStr:
	.asciz "APPLOADER WARNING >>> Use physical memory size as the console simulated memory size.....\n\0"
	.2byte 0
	.global IllegalFSTDestAddrStr
IllegalFSTDestAddrStr:
	.asciz "APPLOADER ERROR >>> Illegal FST destination address! (0x%x)\n\0"
	.2byte 0
	.global SectionSizeTooBigStr
SectionSizeTooBigStr:
	.asciz "APPLOADER ERROR >>> Total size of text/data sections of the dol file are too big (%d(0x%08x) bytes). Currently the limit is set as %d(0x%08x) bytes\n\0"
	.2byte 0
	.global DolSectionExceedsStr
DolSectionExceedsStr:
	.asciz "APPLOADER ERROR >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x (production mode)\n"
	.global DolSectionExceedsStr2
DolSectionExceedsStr2:
	.asciz "\n\nAPPLOADER WARNING >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x in production mode.\n\n\0"
	.global DolSectionExceedsStr3
DolSectionExceedsStr3:
	.asciz "APPLOADER ERROR >>> One of the sections in the dol file exceeded its boundary. All the sections should not exceed 0x%08x (development mode).\n"
	.2byte 0
	.global TooBigTextSectionStr
TooBigTextSectionStr:
	.asciz "APPLOADER ERROR >>> Too big text segment! (0x%x - 0x%x)\n\0"
	.2byte 0
	.global TooBigDataSectionStr
TooBigDataSectionStr:
	.asciz "APPLOADER ERROR >>> Too big data segment! (0x%x - 0x%x)\n\0"
	.2byte 0
	.global FailedAssertStr2
FailedAssertStr2:
	.asciz "Failed assertion SecondTimeForThePart == TRUE"
	.2byte 0
	.global gUnknown_196c
gUnknown_196c:
	.4byte apl_658, apl_658, apl_698, apl_704
	.4byte apl_8a0, apl_a78, apl_aa8, apl_d00
	.4byte apl_e28, apl_f50, apl_fe4, apl_1054
	.4byte apl_10b8
	
	.space 412 # Black and gold, yo.

