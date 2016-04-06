# inherit from the proprietary version
-include vendor/mediatek/mt8127/BoardConfigVendor.mk

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/mediatek/mt8127/include

# Platform
TARGET_BOARD_PLATFORM := mt8127
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt8127

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
# set works for viking & maven
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27561820160
BOARD_CACHEIMAGE_PARTITION_SIZE := 671088640
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Alco/RCT6303W87DK/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/Alco/RCT6303W87DK/bootimg.mk
# OEM uses non-standard offsets
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board 1454406196 # v12
#1454406196 <- Viking v12
#1458096252 <- v77
#1429947554 <- Maven
#1428500862 <- Viking v9
BOARD_CUSTOM_BOOTIMG := true

TARGET_KMODULES := true

# Assert for Viking
TARGET_OTA_ASSERT_DEVICE := RCT6303W87DK

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG := device/Alco/RCT6303W87DK/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Offline charging
ADDITIONAL_DEFAULT_PROPERTIES += ro.mount.fs=EXT4

# RIL
BOARD_RIL_CLASS := ../../../device/Alco/RCT6303W87DK/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/Alco/RCT6303W87DK/bluetooth

# CWM
TARGET_RECOVERY_FSTAB := device/Alco/RCT6303W87DK/rootdir/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
TW_THEME := portrait_hdpi
TW_ROUND_SCREEN := true
TWRP_NEW_THEME := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_NO_USB_STORAGE := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_MTP := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_HAS_NO_BOOT_PARTITION := true
TW_ALWAYS_RMRF := true
#TW_NEVER_UNMOUNT_SYSTEM := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_SCREEN_TIMEOUT := true
BOARD_HAS_LARGE_FILESYSTEM := false
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
TARGET_RECOVERY_OVERSCAN_PERCENT := 18
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
TW_X_OFFSET := 85
TW_Y_OFFSET := 20
#BOARD_HAS_FLIPPED_SCREEN := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/battery


TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file"

BOARD_SEPOLICY_DIRS := \
       device/Alco/RCT6303W87DK/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       netd.te \
       file_contexts
