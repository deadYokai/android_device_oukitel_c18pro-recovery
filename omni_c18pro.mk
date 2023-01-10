LOCAL_PATH := device/oukitel/c18pro

# Necessary to mount a PC.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

#Check if PitchBlack manifest
ifneq ("$(wildcard vendor/pb/config/common.mk)","")
    $(call inherit-product, vendor/pb/config/common.mk)
else  
    $(call inherit-product, vendor/omni/config/common.mk)
endif

PRODUCT_DEVICE := c18pro
PRODUCT_NAME := omni_c18pro
PRODUCT_BRAND := oukitel
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

PRODUCT_GMS_CLIENTID_BASE := android-hct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k57pv1_dm_64-user 10 QP1A.190711.020 mp1V9176 release-keys"

BUILD_FINGERPRINT := OUKITEL/C18_Pro_EEA/C18_Pro:10/QP1A.190711.020/1605752701:user/release-keys
