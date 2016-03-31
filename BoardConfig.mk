# Copyright (C) 2015-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Board overrides
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_KERNEL     := false

# Board Vendor
BOARD_VENDOR := sony

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
BOARD_VENDOR_PLATFORM := viskan

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/msm8960t
TARGET_KERNEL_CONFIG := cm_viskan_huashan_defconfig
TARGET_PREBUILT_KERNEL := device/sony/huashan/prebuilts/kernel

# Kernel configurations
BOARD_KERNEL_BASE  := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE  := # Ignored
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Vold
BOARD_VOLD_MAX_PARTITIONS := 26
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Custom boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/sony/huashan/customrecoveryimg.mk
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_NO_SEPARATE_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP configurations
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TARGET_RECOVERY_FSTAB := device/sony/huashan/recovery.fstab

TW_BRIGHTNESS_PATH := /sys/devices/i2c-10/10-0040/leds/lcd-backlight1/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/i2c-10/10-0040/leds/lcd-backlight2/brightness
TW_DEFAULT_BRIGHTNESS := 51
TW_MAX_BRIGHTNESS := 255

TW_INCLUDE_CRYPTO := true

TW_EXCLUDE_SUPERSU := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INPUT_BLACKLIST := "lsm303dlhc_acc_lt\nl3gd20_gyr\ncompass"
TW_HAS_NO_RECOVERY_PARTITION := true
TW_NO_SCREEN_BLANK := true
