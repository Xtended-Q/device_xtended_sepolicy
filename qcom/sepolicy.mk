#
# This policy configuration will be used by all qcom products
# that inherit from Xtended
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/xtended/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/xtended/sepolicy/qcom/dynamic \
    device/xtended/sepolicy/qcom/system
else
BOARD_SEPOLICY_DIRS += \
    device/xtended/sepolicy/qcom/dynamic \
    device/xtended/sepolicy/qcom/vendor
endif

ifneq ($(filter msm8226 msm8610 msm8974 msm8909 msm8916 msm8952 msm8992 msm8994,$(TARGET_BOARD_PLATFORM)),)
BOARD_SEPOLICY_DIRS += \
    device/xtended/sepolicy/qcom/legacy-vendor
endif
