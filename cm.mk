## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := NX40X

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/NX40X/full_NX40X.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX40X
PRODUCT_NAME := cm_NX40X
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX40X
PRODUCT_MANUFACTURER := nubia

PRODUCT_PACKAGES += Torch

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
