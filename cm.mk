# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fih/FAO/cm_FAO.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_FAO
PRODUCT_BRAND := InFocus
PRODUCT_MODEL := M370i

TARGET_VENDOR := fih