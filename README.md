RCA Viking Pro Tablet (MediaTek MT8127)
==============

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.3GHz Quad-Core MT8127
GPU     | Mali-450MP
Memory  | 1GB RAM
Shipped Android Version | 5.0
Storage | 32GB
Display | 10.1" 1280 x 800 px
Camera  | 2MPx, No Flash

This branch is for building TWRP 3.0 and hopefully soon CyanogenMod (or CM based) ROMS.

# Build

* Working

  Nothing Yet, use the 12.1 Branch
  
* Compilation for Testing Only...

        # repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0
        
        # repo sync

* Bootable Recovery

  Replace CM Simple Recovery with Latest TWRP (OmniRom 6.0)
  From Here: https://github.com/omnirom/android_bootable_recovery/tree/android-6.0
        
        # Drop "build_recovery" script from "scripts" folder onto terminal
        
        # Press enter
