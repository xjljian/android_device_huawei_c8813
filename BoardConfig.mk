USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/c8813/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE 

# Optimisations used by Qualcomm
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := c8813
TARGET_OTA_ASSERT_DEVICE := c8813,hwc8813,C8813

# Lights
TARGET_USE_HUAWEI_LIBLIGHTS := true

#BOARD_NEEDS_MEMORYHEAPPMEM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8813
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_SPECIFIC_HEADER_PATH := device/huawei/c8813/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/c8813/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27A
TARGET_USES_ION := true

DCHECK_FOR_EXTERNAL_FORMAT := true
USE_OPENGL_RENDERER := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER
#COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK


WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true

BOARD_HAVE_BLUETOOTH := true


# Wi-Fi
BOARD_WLAN_DEVICE:= ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_EXT_MODULE_PATH		:= "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME		:= "cfg80211"
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000
WIFI_DRIVER_LOADER_DELAY := 1000000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel 
#TARGET_KERNEL_SOURCE := kernel/huawei/G330D
#TARGET_KERNEL_CONFIG := shendu_c8813_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/c8813/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x01508000

# Custom releasetools for old partition table.
#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/c8813/releasetools/ota_from_target_files

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/c8813/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8813/recovery/graphics_cn.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/c8813/recovery/recovery-keys.c
TARGET_RECOVERY_INITRC := device/huawei/c8813/recovery/etc/init.rc
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_RECOVERY_RMT_STORAGE := true
#BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

