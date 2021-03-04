# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from nio device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := nio
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_nio
PRODUCT_MODEL := XT2125-4

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := nio
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="nio_retcn-user 11 RRN31.Q1-20-17-6 efbc14 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/nio_retcn/nio:11/RRN31.Q1-20-17-6/efbc14:user/release-keys
