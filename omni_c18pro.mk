LOCAL_PATH := device/oukitel/c18pro

# Necessary to mount a PC.

$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, vendor/pb/config/common.mk)
PRODUCT_DEVICE := c18pro
PRODUCT_NAME := omni_c18pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL
PRODUCT_BOARD := mt6757
