#
# Copyright (C) 2011 The Android Open-Source Project
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
#

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_SMP := true

TARGET_BOARD_PLATFORM := clovertrail
TARGET_BOOTLOADER_BOARD_NAME := santos10wifi

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1780373820
BOARD_FLASH_BLOCK_SIZE := 131072

# Use dlmalloc
MALLOC_IMPL := dlmalloc

# Kernel cmdline -- we'll see later, not taken into account by kernel for now
#BOARD_KERNEL_CMDLINE :=

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP := "/vendor/firmware/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/vendor/firmware/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/vendor/firmware/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_ARG := "iface_name=wlan0 firmware_path=/vendor/firmware/bcmdhd_sta.bin nvram_path=/vendor/firmware/nvram_net.txt"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/santos10wifi/bluetooth

# Audio
#BOARD_USES_ALSA_AUDIO := true
#BOARD_USES_TINY_ALSA_AUDIO := true

# DRM Protected Video
#BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1
#USE_INTEL_SECURE_AVC := true

# enable ARM codegen for x86 with Houdini
#BUILD_ARM_FOR_X86 := true

#BOARD_SEPOLICY_DIRS := device/samsung/santos10wifi/sepolicy
#BOARD_SEPOLICY_UNION := \
#    bluetooth.te \
#    btfwloader.te \
#    dhcp.te \
#    dumpstate.te \
#    file.te \
#    mediaserver.te \
#    netd.te \
#    property.te \
#    pvrsrvctl.te \
#    surfaceflinger.te \
#    system_app.te \
#    wpa.te \
#    shell.te \
#    sepfs.te \
#    file_contexts \
#    property_contexts

# No opensource opengl renderer
USE_OPENGL_RENDERER := false
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/santos10
TARGET_KERNEL_CONFIG := santos10_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
BOARD_KERNEL_IMAGE_NAME := bzImage

# Use the non-open-source parts, if they're present
-include vendor/samsung/santos10wifi/BoardConfigVendor.mk
