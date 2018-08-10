	.section .bss
	.global DolphinGlobals
DolphinGlobals:
	.space 0xd8
	.global UnkNandTitleValue
UnkNandTitleValue:
	.space 4
	.space 8
	.global GCNPort4BootFromDisc
GCNPort4BootFromDisc:
	.space 4
	.space 8
	.global DolParams
DolParams:
	.space 4
	.space 0xc
	.global Mem1Size_2
Mem1Size_2:
	.space 4
	.space 0x10
	.global SimulatedMemSize_2
SimulatedMemSize_2:
	.space 4
	.global Mem2Size
Mem2Size:
	.space 4
	.global SimulatedMem2Size
SimulatedMem2Size:
	.space 4
	.space 0x10
	.global IOSHeapRange
IOSHeapRange:
	.space 8
	.global HollywoodVersion
HollywoodVersion:
	.space 4
	.space 4
	.global IOSVersion
IOSVersion:
	.space 4
	.global IOSBuildDate
IOSBuildDate:
	.space 4
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
	.global SemaphoreVal
SemaphoreVal:
	.space 4
	.global MiosFlags
MiosFlags:
	.space 4
	.space 0x18
	.global NWC24GameID
NWC24GameID:
	.space 4
	.global AppType
AppType:
	.space 2
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
	.space 0x264
	.global NandApploader
NandApploader:
	.space 0xb00
