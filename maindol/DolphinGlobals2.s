	.section .bss
	.global ExceptionHandlers
ExceptionHandlers:
	.space 0x10
	.global IRQHandlers
IRQHandlers:
	.space 0x20
	.global Unk3030
Unk3030:
	.space 0xa8
	.global UnkNandTitleValue
UnkNandTitleValue:
	.space 4
	.global Unk30DC
Unk30DC:
	.space 8
	.global GCNPort4DebugState
GCNPort4DebugState:
	.space 4
	.global Unk30E8
Unk30E8:
	.space 8
	.global DolParams
DolParams:
	.space 4
	.global Unk30F4
Unk30F4:
	.space 0xc
	.global Mem1Size_2
Mem1Size_2:
	.space 4
	.global SimulatedMemSize_2
SimulatedMemSize_2:
	.space 4
	.global Mem1End
Mem1End:
	.space 4
	.global Unk310C
Unk310C:
	.space 0x4
	.global FSTOffset2
FSTOffset2:
	.space 4
	.global Unk3114
Unk3114:
	.space 4
	.global Mem2Size
Mem2Size:
	.space 4
	.global SimulatedMem2Size
SimulatedMem2Size:
	.space 4
	.global Unk3120
Unk3120:
	.space 0x10
	.global IOSHeapRange
IOSHeapRange:
	.space 8
	.global HollywoodVersion
HollywoodVersion:
	.space 4
	.global Unk313C
Unk313C:
	.space 4
	.global IOSVersion
IOSVersion:
	.space 4
	.global IOSBuildDate
IOSBuildDate:
	.space 4
	.global Unk3148
Unk3148:
	.space 0x10
	.global GDDRVendorCode
GDDRVendorCode:
	.space 4
	.global Unk315C
Unk315C:
	.space 1
	.global EnableLegacyDI
EnableLegacyDI:
	.space 1
	.global DevkitBootProgramVersion
DevkitBootProgramVersion:
	.space 2
	.global InitSemaphore
InitSemaphore:
	.space 4
	.global MiosFlags
MiosFlags:
	.space 4
	.global Unk3168
Unk3168:
	.space 0x18
	.global NWC24GameID
NWC24GameID:
	.space 4
	.global AppType
AppType:
	.space 2
	.global Unk3186
Unk3186:
	.space 2
	.global MinIOSVersion
MinIOSVersion:
	.space 4
	.global NandLaunchCode
NandLaunchCode:
	.space 4
	.global NandLaunchReturnCode
NandLaunchReturnCode:
	.space 4
	.global PartitionType
PartitionType:
	.space 4
	.global PartitionOffset
PartitionOffset:
	.space 4
	.global Unk319C
Unk319C:
	.space 0x264
	.global NandApploader
NandApploader:
	.space 0xc00
