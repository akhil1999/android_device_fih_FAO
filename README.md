# InFocus M370/M372 TWRP Device Tree

This branch is for building of TeamWin Recovey Project (TWRP) Recovery.
This tree compatible with TWRP 3.4.0.0 as of 17/06/2020

---
![InFocus M680](https://www.infocusindia.co.in/images/spec-m370-two.jpg)


# About Device

InFocus M370 (FAO)

### Specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.1 GHz ARM® Cortex™ A7
CHIPSET | Qualcomm MSM8909 Snapdragon 210
GPU     | Adreno 304
Memory  | 1 GB / 2 GB
Shipped Android Version | 5.1.1
Storage | 8 GB / 16GB
MicroSD | Up to 64 GB
Battery | 2230 mAh (removable)
Dimensions | 143 x 71.5 x 8.1 mm
Display | 720 x 1280 pixels, 5.0" IPS
Rear Camera  | 8.0 MP, LED flash
Front Camera | 2.0 MP

---

#  Steps to Compile

 Add Omni Source or Minimal TWRP Source
 
 `repo sync git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0`
 
Then Run `repo sync` 

```sh
. source ./build/envsetup.sh && lunch omni_FAO-userdebug && make clean && make -j# recoveryimage
```
`# = No. of CPU threads of your PC'

### Thanks to:
 * akhil1999
 * TeamWin
 * jellycandy for recovery reboot fixes
