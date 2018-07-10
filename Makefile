#### Tools ####

#YAZ0    := tools/wszst/wszst compress --yaz0
CC1      := $(DEVKITPPC)/bin/powerpc-eabi-gcc
CPP      := $(DEVKITPPC)/bin/powerpc-eabi-cpp
AS       := $(DEVKITPPC)/bin/powerpc-eabi-as
LD       := $(DEVKITPPC)/bin/powerpc-eabi-ld
OBJCOPY  := $(DEVKITPPC)/bin/powerpc-eabi-objcopy

CC1FLAGS := -O2 -S -Wall
CPPFLAGS := -iquote include -I include -nostdinc -undef
ASFLAGS  := -I include

BUILD_DIR := build

#### Files ####

DOL          := main.dol
REL          := StaticR.rel
APL0         := apploader.img
APL2         := apploader-update.img
DOL_ELF      := $(DOL:.dol=.elf)
DOL_MAP      := $(DOL).map
DOL_LDSCRIPT := $(BUILD_DIR)/maindol/ld_script.ld
REL_ELF      := $(REL:.rel=.elf)
REL_MAP      := $(REL).map
REL_LDSCRIPT := $(BUILD_DIR)/staticr/ld_script.ld
APL0_ELF     := $(APL0:.img=.elf)
APL0_MAP      = $(APL0).map
APL0_LDSCRIPT:= $(BUILD_DIR)/apploader/ld_script.ld
APL2_ELF     := $(APL2:.img=.elf)
APL2_MAP      = $(APL2).map
APL2_LDSCRIPT:= $(BUILD_DIR)/apploader-update/ld_script.ld
DOL_CSOURCES  := $(wildcard maindol/*.c)
DOL_ASMSOURCES  := $(wildcard maindol/*.s)
DOL_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL_CSOURCES:%.c=%.o))
DOL_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL_ASMSOURCES:%.s=%.o))
REL_CSOURCES  := $(wildcard staticr/*.c)
REL_ASMSOURCES  := $(wildcard staticr/*.s)
REL_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(REL_CSOURCES:%.c=%.o))
REL_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(REL_ASMSOURCES:%.s=%.o))
APL0_CSOURCES  := $(wildcard apploader/*.c)
APL0_ASMSOURCES  := $(wildcard apploader/*.s)
APL0_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL0_CSOURCES:%.c=%.o))
APL0_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL0_ASMSOURCES:%.s=%.o))
APL2_CSOURCES  := $(wildcard apploader-update/*.c)
APL2_ASMSOURCES  := $(wildcard apploader-update/*.s)
APL2_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL2_CSOURCES:%.c=%.o))
APL2_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL2_ASMSOURCES:%.s=%.o))

C_OBJECTS  := $(DOL_COBJECTS) $(REL_COBJECTS) $(APL0_COBJECTS) $(APL1_COBJECTS) $(APL2_COBJECTS)
ASM_OBJECTS  := $(DOL_ASMOBJECTS) $(REL_ASMOBJECTS) $(APL0_ASMOBJECTS) $(APL2_ASMOBJECTS)
DOL_OFILES  := $(DOL_COBJECTS) $(DOL_ASMOBJECTS)
REL_OFILES  := $(REL_COBJECTS) $(REL_ASMOBJECTS)
APL0_OFILES  := $(APL0_COBJECTS) $(APL0_ASMOBJECTS)
APL2_OFILES  := $(APL2_COBJECTS) $(APL2_ASMOBJECTS)
ALL_OBJECTS  := $(C_OBJECTS) $(ASM_OBJECTS)

SUBDIRS      := $(sort $(dir $(ALL_OBJECTS)))

$(shell mkdir -p $(SUBDIRS))

#### Main Targets ####

# Get rid of the idiotic built-in rules
.SUFFIXES:

.PHONY: all clean

all: compare

compare: $(DOL) $(REL) $(APL0) $(APL2)
	sha1sum -c sha1sums.txt

clean:
	$(RM) $(DOL) $(DOL_ELF) $(DOL_MAP) $(REL) $(REL_ELF) $(REL_MAP) $(ALL_OBJECTS)
	
#### Recipes ####

$(DOL_LDSCRIPT): ldscript_dol.txt
	cp ldscript_dol.txt $(BUILD_DIR)/maindol/ld_script.ld

$(REL_LDSCRIPT): ldscript_rel.txt
	cp ldscript_rel.txt $(BUILD_DIR)/staticr/ld_script.ld
	
$(APL0_LDSCRIPT): ldscript_appl.txt
	cp ldscript_appl.txt $(BUILD_DIR)/apploader/ld_script.ld
	
$(APL2_LDSCRIPT): ldscript_appl.txt
	cp ldscript_appl.txt $(BUILD_DIR)/apploader-update/ld_script.ld

$(DOL_ELF): $(DOL_LDSCRIPT) $(DOL_OFILES)
	cd $(BUILD_DIR)/maindol && $(LD) -T ld_script.ld -Map ../../$(DOL_MAP) -o ../../$@

$(DOL): $(DOL_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(REL_ELF): $(REL_LDSCRIPT) $(REL_OFILES)
	cd $(BUILD_DIR)/staticr && $(LD) -T ld_script.ld -Map ../../$(REL_MAP) -o ../../$@

$(APL0): $(APL0_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(APL0_ELF): $(APL0_LDSCRIPT) $(APL0_OFILES)
	cd $(BUILD_DIR)/apploader && $(LD) -T ld_script.ld -Map ../../$(APL0_MAP) -o ../../$@
	
$(APL2): $(APL2_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(APL2_ELF): $(APL2_LDSCRIPT) $(APL2_OFILES)
	cd $(BUILD_DIR)/apploader-update && $(LD) -T ld_script.ld -Map ../../$(APL2_MAP) -o ../../$@

$(C_OBJECTS): $(BUILD_DIR)/%.o: %.c
	$(CPP) $(CPPFLAGS) $< -o $(BUILD_DIR)/$*.i
	$(CC1) $(CC1FLAGS) $(BUILD_DIR)/$*.i -o $(BUILD_DIR)/$*.s
	@printf ".text\n\t.align\t2, 0\n" >> $(BUILD_DIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.s

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

