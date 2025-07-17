    # Release name
PRODUCT_RELEASE_NAME := avalon

# PRODUCT_COPY_FILES += \
# device/oneplus/avalon/recovery.fstab:root/recovery.fstab

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/oneplus/avalon/recovery/root,recovery/root)

# Inherit from common AOSP config
$(call inherit-product, build/target/product/base.mk)
$(call inherit-product, build/target/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/avalon/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_avalon
PRODUCT_DEVICE := avalon
PRODUCT_MODEL := CPH2663
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_avalon-ap2a-eng 14 UKQ1.231108.001 1727343049899 test-keys"

BUILD_FINGERPRINT := OnePlus/CPH2663/OP5E93L1/pineapple:14/UKQ1.231108.001/1727343049899:eng/test-keys

