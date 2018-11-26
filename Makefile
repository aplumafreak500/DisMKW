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

ifeq ($(USE_GECKO), 1)
	ASFLAGS += --defsym USE_GECKO=1
	CPPFLAGS += -DUSE_GECKO=1
endif
ifeq ($(CTGP_CODE), 1)
	ASFLAGS += --defsym CTGP_CODE=1
	CPPFLAGS += -DCTGP_CODE=1
endif
ifeq ($(CODEHANDLERONLY), 1)
	ASFLAGS += --defsym CODEHANDLERONLY=1
	CPPFLAGS += -DCODEHANDLERONLY=1
endif

BUILD_DIR := build

#### Files ####

# Main files

APL0         := apploader-update.img
DOL0         := main-update.dol
APL1         := apploader.img
DOL1         := main.dol
REL          := StaticR.rel
DOL2         := main-mkc-installer.dol
APLC         := mkc-nandloader.dol
DOLC         := main-mkc.dol

APL0_ELF     := $(APL0:.img=.elf)
APL0_MAP      = $(APL0).map
APL0_LDSCRIPT:= $(BUILD_DIR)/apploader-update/ld_script.ld
DOL0_ELF      := $(DOL0:.dol=.elf)
DOL0_MAP      := $(DOL0).map
DOL0_LDSCRIPT := $(BUILD_DIR)/maindol-update/ld_script.ld
APL1_ELF     := $(APL1:.img=.elf)
APL1_MAP      = $(APL1).map
APL1_LDSCRIPT:= $(BUILD_DIR)/apploader/ld_script.ld
DOL1_ELF      := $(DOL1:.dol=.elf)
DOL1_MAP      := $(DOL1).map
DOL1_LDSCRIPT := $(BUILD_DIR)/maindol/ld_script.ld
REL_ELF      := $(REL:.rel=.elf)
REL_MAP      := $(REL).map
REL_LDSCRIPT := $(BUILD_DIR)/staticr/ld_script.ld
DOL2_ELF      := $(DOL2:.dol=.elf)
DOL2_MAP      := $(DOL2).map
DOL2_LDSCRIPT := $(BUILD_DIR)/maindol-mkc-installer/ld_script.ld
APLC_ELF      := $(APLC:.dol=.elf)
APLC_MAP      := $(APLC).map
APLC_LDSCRIPT := $(BUILD_DIR)/mkc-nandloader/ld_script.ld
DOLC_ELF      := $(DOLC:.dol=.elf)
DOLC_MAP      := $(DOLC).map
DOLC_LDSCRIPT := $(BUILD_DIR)/maindol-mkc/ld_script.ld

# Source List

GLBL_CSOURCES  := $(wildcard global/*.c)
GLBL_ASMSOURCES  := $(wildcard global/*.s)
GLBL_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(GLBL_CSOURCES:%.c=%.o))
GLBL_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(GLBL_ASMSOURCES:%.s=%.o))
APL0_CSOURCES  := $(wildcard apploader-update/*.c apploader-update/loader/*.c)
APL0_ASMSOURCES  := $(wildcard apploader-update/*.s apploader-update/loader/*.s)
APL0_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL0_CSOURCES:%.c=%.o))
APL0_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL0_ASMSOURCES:%.s=%.o))
# DOL0 only uses ASM
DOL0_ASMSOURCES  := $(wildcard maindol-update/*.s)
DOL0_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL0_ASMSOURCES:%.s=%.o))
APL1_CSOURCES  := $(wildcard apploader/*.c apploader/loader/*.c)
APL1_ASMSOURCES  := $(wildcard apploader/*.s apploader/loader/*.s)
APL1_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL1_CSOURCES:%.c=%.o))
APL1_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(APL1_ASMSOURCES:%.s=%.o))
DOL1_CSOURCES  := $(wildcard maindol/*.c)
DOL1_ASMSOURCES  := $(wildcard maindol/*.s)
DOL1_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL1_CSOURCES:%.c=%.o))
DOL1_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL1_ASMSOURCES:%.s=%.o))
REL_CSOURCES  := $(wildcard staticr/*.c)
REL_ASMSOURCES  := $(wildcard staticr/*.s)
REL_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(REL_CSOURCES:%.c=%.o))
REL_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(REL_ASMSOURCES:%.s=%.o))
DOL2_CSOURCES  := $(wildcard maindol-mkc-installer/*.c)
DOL2_ASMSOURCES  := $(wildcard maindol-mkc-installer/*.s)
DOL2_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL2_CSOURCES:%.c=%.o))
DOL2_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOL2_ASMSOURCES:%.s=%.o))
APLC_CSOURCES  := $(wildcard mkc-nandloader/*.c)
APLC_ASMSOURCES  := $(wildcard mkc-nandloader/*.s)
APLC_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(APLC_CSOURCES:%.c=%.o))
APLC_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(APLC_ASMSOURCES:%.s=%.o))
DOLC_CSOURCES  := $(wildcard maindol-mkc/*.c)
DOLC_ASMSOURCES  := $(wildcard maindol-mkc/*.s)
DOLC_COBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOLC_CSOURCES:%.c=%.o))
DOLC_ASMOBJECTS   := $(addprefix $(BUILD_DIR)/, $(DOLC_ASMSOURCES:%.s=%.o))

# All objects from each file

GLBL_OFILES := $(GLBL_COBJECTS) $(GLBL_ASMOBJECTS)
APL0_OFILES  := $(APL0_COBJECTS) $(APL0_ASMOBJECTS)
DOL0_OFILES  := $(DOL0_ASMOBJECTS)
APL1_OFILES  := $(APL1_COBJECTS) $(APL1_ASMOBJECTS)
DOL1_OFILES  := $(DOL1_COBJECTS) $(DOL1_ASMOBJECTS)
REL_OFILES  := $(REL_COBJECTS) $(REL_ASMOBJECTS)
DOL2_OFILES  := $(DOL2_COBJECTS) $(DOL2_ASMOBJECTS)
APLC_OFILES  := $(APLC_COBJECTS) $(APLC_ASMOBJECTS)
DOLC_OFILES  := $(DOLC_COBJECTS) $(DOLC_ASMOBJECTS)

# Combined lists of objects

C_OBJECTS  := $(GLBL_COBJECTS) $(APL0_COBJECTS) $(APL1_COBJECTS) $(DOL1_COBJECTS) $(REL_COBJECTS) $(DOL2_COBJECTS) $(APLC_COBJECTS) $(DOLC_COBJECTS)
ASM_OBJECTS  := $(GLBL_ASMOBJECTS) $(APL0_ASMOBJECTS) $(DOL0_ASMOBJECTS) $(APL1_ASMOBJECTS) $(DOL1_ASMOBJECTS) $(REL_ASMOBJECTS) $(DOL2_ASMOBJECTS) $(APLC_ASMOBJECTS) $(DOLC_ASMOBJECTS)

ALL_OBJECTS  := $(C_OBJECTS) $(ASM_OBJECTS)

SUBDIRS      := $(sort $(dir $(ALL_OBJECTS)))

$(shell mkdir -p $(SUBDIRS))

#### Main Targets ####

# Get rid of the idiotic built-in rules
.SUFFIXES:

.PHONY: all clean compare main dol dol0 dol1 dol2 staticr rel appldr appldr0 appldr1 appldr2 upd mkw chan mkc apploader-mkc-installer.img

all: $(DOL1) $(REL)

compare: $(APL0) $(DOL0) $(APL1) $(DOL1) $(REL) $(DOL2) $(APLC) $(DOLC)
	sha1sum -c sha1sums.txt

clean:
	$(RM) $(APL0) $(APL0_ELF) $(APL0_MAP) $(APL0_LDSCRIPT) $(DOL0) $(DOL0_ELF) $(DOL0_MAP) $(DOL0_LDSCRIPT) $(APL1) $(APL1_ELF) $(APL1_MAP) $(APL1_LDSCRIPT) $(DOL1) $(DOL1_ELF) $(DOL1_MAP) $(DOL1_LDSCRIPT) $(REL) $(REL_ELF) $(REL_MAP) $(REL_LDSCRIPT) $(DOL2) $(DOL2_ELF) $(DOL2_MAP) $(DOL2_LDSCRIPT) $(APLC) $(APLC_ELF) $(APLC_MAP) $(APLC_LDSCRIPT) $(DOLC) $(DOLC_ELF) $(DOLC_MAP) $(DOLC_LDSCRIPT) $(ALL_OBJECTS)
	
#### Recipes ####

#TODO: $<, $@

$(APL0_LDSCRIPT): ldscript_appl.txt
	cp $< $@
	
$(APL0): $(APL0_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(APL0_ELF): $(APL0_LDSCRIPT) $(GLBL_OFILES) $(APL0_OFILES)
	cd $(BUILD_DIR)/apploader-update && $(LD) -T ld_script.ld -Map ../../$(APL0_MAP) -o ../../$@
	
$(DOL0_LDSCRIPT): ldscript_dol_upd.txt
	cp $< $@
	
$(DOL0_ELF): $(DOL0_LDSCRIPT) $(GLBL_OFILES) $(DOL0_OFILES)
	cd $(BUILD_DIR)/maindol-update && $(LD) -T ld_script.ld -Map ../../$(DOL0_MAP) -o ../../$@

$(DOL0): $(DOL0_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(APL1_LDSCRIPT): ldscript_appl.txt
	cp $< $@
	
$(APL1_ELF): $(APL1_LDSCRIPT) $(GLBL_OFILES) $(APL1_OFILES)
	cd $(BUILD_DIR)/apploader && $(LD) -T ld_script.ld -Map ../../$(APL1_MAP) -o ../../$@

$(APL1): $(APL1_ELF)
	$(OBJCOPY) -O binary $< $@

$(DOL1_LDSCRIPT): ldscript_dol.txt
	cp $< $@

#TODO: StaticR.rel relocation table
$(DOL1_ELF): $(DOL1_LDSCRIPT) $(GLBL_OFILES) $(DOL1_OFILES)
	cd $(BUILD_DIR)/maindol && $(LD) -T ld_script.ld -Map ../../$(DOL1_MAP) -o ../../$@

$(DOL1): $(DOL1_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(REL_LDSCRIPT): ldscript_rel.txt
	cp $< $@
	
$(REL_ELF): $(REL_LDSCRIPT) $(GLBL_OFILES) $(REL_OFILES)
	cd $(BUILD_DIR)/staticr && $(LD) -T ld_script.ld -Map ../../$(REL_MAP) -o ../../$@

$(REL): $(REL_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(DOL2_LDSCRIPT): ldscript_dol_mkc_installer.txt
	cp $< $@

$(DOL2_ELF): $(DOL2_LDSCRIPT) $(GLBL_OFILES) $(DOL2_OFILES)
	cd $(BUILD_DIR)/maindol-mkc-installer && $(LD) -T ld_script.ld -Map ../../$(DOL2_MAP) -o ../../$@

$(DOL2): $(DOL2_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(APLC_LDSCRIPT): ldscript_mkc_nandloader.txt
	cp $< $@
	
$(APLC_ELF): $(APLC_LDSCRIPT) $(GLBL_OFILES) $(APLC_OFILES)
	cd $(BUILD_DIR)/mkc-nandloader && $(LD) -T ld_script.ld -Map ../../$(APLC_MAP) -o ../../$@

$(APLC): $(APLC_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(DOLC_LDSCRIPT): ldscript_dol_mkc.txt
	cp $< $@

$(DOLC_ELF): $(DOLC_LDSCRIPT) $(GLBL_OFILES) $(DOLC_OFILES)
	cd $(BUILD_DIR)/maindol-mkc && $(LD) -T ld_script.ld -Map ../../$(DOLC_MAP) -o ../../$@

$(DOLC): $(DOLC_ELF)
	$(OBJCOPY) -O binary $< $@

$(C_OBJECTS): $(BUILD_DIR)/%.o: %.c
	$(CPP) $(CPPFLAGS) $< -o $(BUILD_DIR)/$*.i
	$(CC1) $(CC1FLAGS) $(BUILD_DIR)/$*.i -o $(BUILD_DIR)/$*.s
	@printf ".text\n\t.align\t2, 0\n" >> $(BUILD_DIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.s

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

# Aliases

main : $(DOL1)
dol : $(DOL1)
dol0 : $(DOL0)
dol1 : $(DOL1)
dol2 : $(DOL2)
all-dol: $(DOL0) $(DOL1) $(DOL2) $(DOLC)
staticr : $(REL)
rel : $(REL)
appldr : $(APL1)
appldr0 : $(APL0)
appldr1 : $(APL1)
appldr2 : $(APL1)
all-appldr: $(APL0) $(APL1) $(APLC)
apploader-mkc-installer.img: $(APL1)
upd : $(APL0) $(DOL0)
mkw : $(APL1) $(DOL1) $(REL)
chan : $(APL1) $(DOL2)
mkc : $(APLC) $(DOLC)

