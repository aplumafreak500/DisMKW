# DisMKW
pret-style disassembly of Mario Kart Wii.

This is a work in progress and far from production-ready.

Currently, all PPC code within the game (including the Mario Kart Channel) is buildable. Only the NTSC-U version is disassembled at the moment.

### Common patches to main.dol and StaticR.rel that are included:

- [ ] Wiimmfi
- [x] Gecko hooktype
	* Note: The GCT data is stored in D9 instead of T3.
- [ ] XeR's CTWW patch
- [x] CTGP-Code (more info: http://github.com/Chadderz121/wii-ct-code)
	* Note: Only the MOD0 parts are included. MOD1 and MOD2 are to be built seperately.
	* Note: In the future, modifications to main.dol and StaticR.rel will be included inline, removing the need for CTGP-Code.

## How to use

Install [**devkitPPC**](http://devkitpro.org/wiki/Getting_Started/devkitPPC) to assemble/compile this project.

Obtain the NTSC-U **main.dol** and **StaticR.rel** from a USA (NTSC-U) copy of Mario Kart Wii. Ensure they are named **basemain.dol** and **baseStaticR.rel**. Note that this repository does not contain, use, or assemble any other game files, though that may change in the future.

For Mac OS X, run this command in **Terminal**.

```sh
xcode-select --install
```

For Windows, download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run the Cygwin setup and leave the default settings. At "Select Packages", set the view to "Full" and choose to install the following:

- `make`
- `git`
- `gcc-core`
- `gcc-g++`
- `libpng-devel`

Next, run these commands to set up your enviornment. (Replace **/opt/devkitPro** with where you installed devkitPro to.)

```sh
export DEVKITPRO=/opt/devkitPro
echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
export DEVKITARM=$DEVKITPRO/devkitPPC
echo "export DEVKITPPC=$DEVKITPPC" >> ~/.bashrc

git clone https://github.com/aplumafreak500/DisMKW

cd DisMKW
```

To build **main.dol** and **StaticR.rel**:
```sh
make
```

## Disassembly Progress

(Also known as: What currently requires incbin calls)

- [ ] Partiton 1 main.dol
	- [x] T0
	- [ ] T1
		* First incbin call at T1 0x400
	- [ ] D0
		* Currently disassembled up to D0 0x2c0
	- [ ] D1
	- [x] D2
	- [x] D3
	- [ ] D4
		* Currently disassembled up to D4 0x6180 (first incbin call at D4 0x560)
	- [ ] D5
	- [ ] D6
	- [ ] D7
		* Currently only D7 0x60-0x68
- [ ] StaticR.rel
	- [ ] T0
	- [x] D0
	- [x] D1
	- [ ] D2
	- [ ] D3
	- [x] Imp
	- [ ] Reloc
	- [ ] Reloc (main.dol)
- [ ] Partiton 0 Apploader.img
	 - [ ] .text
	 - [ ] .data
	 - [ ] .loader
		 - [ ] .text
		 - [ ] .data
- [ ] Partition 1 & 2 Apploader.img
	 - [x] .text
	 - [x] .data
	 - [ ] .loader
		 - [ ] .text
		 - [ ] .data
- [x] Partition 0 main.dol
- [ ] Partition 2 main.dol
	 - [ ] .text
	 - [ ] .data
- [ ] Mario Kart Channel main.dol
	 - [ ] .text
	 - [ ] .data
- [ ] Mario Kart Channel NAND loader
	 - [ ] .text
	 - [ ] .data
