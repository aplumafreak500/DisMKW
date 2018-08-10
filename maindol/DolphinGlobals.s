	.section .bss
	.global GameID
GameID: # RMCE
	.space 4
	.global LicenseCode
LicenseCode: # 01
	.space 2
	.global DiscNumber
DiscNumber:
	.space 1
	.global DiscVersion
DiscVersion:
	.space 1
	.global DiscStreaming
DiscStreaming:
	.space 1
	.global DiscStreamingBufferSize
DiscStreamingBufferSize:
	.space 0xf
	.global DiscMagic
DiscMagic: # 0x5d1c9ea300000000
	.space 8
	.global NintendoStandardBootCode
NintendoStandardBootCode: # 0xd15ea5e
	.space 4
	.global Version
Version: # Set by apploader.img
	.space 4
	.global Mem1Size
Mem1Size: # 0x1800000
	.space 4
	.global BoardModel
BoardModel:
	.space 4
	.global ArenaLow
ArenaLow:
	.space 4
	.global ArenaHigh
ArenaHigh:
	.space 4
	.global FSTOffset
FSTOffset:
	.space 4
	.global FSTSize
FSTSize:
	.space 4
	.global DebugInfo
DebugInfo:
	.space 0x20
	.global DebugHook
DebugHook:
	.space 0x24
	.space 0x68
	.global DevDebuggerMonitorAddress
DevDebuggerMonitorAddress:
	.space 4
	.global SimulatedMemSize
SimulatedMemSize:
	.space 4
	.global Bi2Offset
Bi2Offset:
	.space 4
	.global BusSpeed
BusSpeed:
	.space 4
	.global CpuSpeed
CpuSpeed:
	.space 4
	.global SystemResetInterrupt
SystemResetInterrupt:
	.space 0x100
	.global MachineCheckInterrupt
MachineCheckInterrupt:
	.space 0x100
	.global DSI_Interrupt
DSI_Interrupt:
	.space 0x100
	.global ISI_Interrupt
ISI_Interrupt:
	.space 0x100
	.global ExtInterrupt
ExtInterrupt:
	.space 0x100
	.global AlignmentInterrupt
AlignmentInterrupt:
	.space 0x100
	.global ProgramInterrupt
ProgramInterrupt:
	.space 0x100
	.global FPInterrupt
FPInterrupt:
	.space 0x100
	.global DecrementerInterrupt
DecrementerInterrupt:
	.space 0x100
	.global UnusedInterruptA00
UnusedInterruptA00:
	.space 0x100
	.global UnusedInterruptB00
UnusedInterruptB00:
	.space 0x100
	.global SyscallInterrupt
SyscallInterrupt:
	.space 0x100
	.global TraceInterrupt
TraceInterrupt:
	.space 0x100
	.global UnusedInterruptE00
UnusedInterruptE00:
	.space 0x100
	.global PerformanceMonitorInterrupt
PerformanceMonitorInterrupt:
	.space 0x100
	.global UnusedInterrupt1000
UnusedInterrupt1000:
	.space 0x100
	.global UnusedInterrupt1100
UnusedInterrupt1100:
	.space 0x100
	.global UnusedInterrupt1200
UnusedInterrupt1200:
	.space 0x100
	.global IABR_Interrupt
IABR_Interrupt:
	.space 0x100
	.global ReservedInterrupt
ReservedInterrupt:
	.space 0x100
	.global UnusedInterrupt1500
UnusedInterrupt1500:
	.space 0x100
	.global UnusedInterrupt1600
UnusedInterrupt1600:
	.space 0x100
	.global ThermalInterrupt
ThermalInterrupt:
	.space 0x100
