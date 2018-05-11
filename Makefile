#### Tools ####

#YAZ0    := tools/wszst/wszst compress --yaz0
#CC1     := 
CPP      := $(DEVKITPPC)/bin/powerpc-eabi-cpp
AS       := $(DEVKITPPC)/bin/powerpc-eabi-as
LD       := $(DEVKITPPC)/bin/powerpc-eabi-ld
OBJCOPY  := $(DEVKITPPC)/bin/powerpc-eabi-objcopy

#CC1FLAGS := -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS := -iquote include -nostdinc -undef
ASFLAGS  := 


#### Files ####

DOL          := main.dol
REL          := StaticR.rel
DOL_ELF      := $(DOL:.dol=.elf)
DOL_MAP      := $(DOL).map
DOL_LDSCRIPT := ldscript_dol.txt
REL_ELF      := $(REL:.rel=.elf)
REL_MAP      := $(REL).map
REL_LDSCRIPT := ldscript_rel.txt
DOL_SOURCES  := dolheader.s \
	text0.s \
	text1.s \
	data0.s \
	data1.s \
	data2.s \
	data3.s \
	data.s \
	
DOL_OFILES   := $(addsuffix .o, $(basename $(DOL_SOURCES)))

REL_SOURCES  := StaticR.s \
	
REL_OFILES   := $(addsuffix .o, $(basename $(REL_SOURCES)))

#### Main Targets ####

compare: $(DOL) $(REL)
	sha1sum -c main.dol.sha1
	sha1sum -c StaticR.rel.sha1

clean:
	$(RM) $(DOL) $(DOL_ELF) $(DOL_MAP) $(DOL_OFILES) $(REL) $(REL_ELF) $(REL_MAP) $(REL_OFILES)


#### Recipes ####

# Get rid of the idiotic built-in rules
.SUFFIXES:

.PHONY: all clean

all: $(DOL)

$(DOL_ELF): $(DOL_OFILES) $(DOL_LDSCRIPT)
	$(LD) -T $(DOL_LDSCRIPT) -Map $(DOL_MAP) $(DOL_OFILES) -o $@

$(DOL): $(DOL_ELF)
	$(OBJCOPY) -O binary $< $@
	
$(REL_ELF): $(REL_OFILES) $(REL_LDSCRIPT)
	$(LD) -T $(REL_LDSCRIPT) -Map $(REL_MAP) $(REL_OFILES) -o $@

$(REL): $(REL_ELF)
	$(OBJCOPY) -O binary $< $@

%.o: %.c
	$(CPP) $(CPPFLAGS) $< $*.s #| $(CC1) $(CC1FLAGS) -o $*.s
	$(AS) $(ASFLAGS) $*.s -o $*.o

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

