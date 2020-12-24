#
# This policy configuration will be used by all mediatek products
# that inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/xtended/sepolicy/mediatek/dynamic \
    device/xtended/sepolicy/mediatek/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xtended/sepolicy/mediatek/dynamic \
    device/xtended/sepolicy/mediatek/vendor
endif
