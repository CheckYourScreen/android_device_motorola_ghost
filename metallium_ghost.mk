# Check for target product
ifeq (metallium_ghost,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include metallium common configuration
include vendor/metallium/main.mk

$(call inherit-product, device/motorola/ghost/full_ghost.mk)

# Inheriting shit not allowed.
# (call inherit-product, vendor/metallium/config/common_full_phone.mk)

# Enhanced NFC
# (call inherit-product, vendor/metallium/config/nfc_enhanced.mk)

PRODUCT_RELEASE_NAME := MOTO X
PRODUCT_NAME := metallium_ghost

PRODUCT_GMS_CLIENTID_BASE := android-motorola

endif
