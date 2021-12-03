LOCAL_PATH := device/oukitel/c18pro

# Necessary to mount a PC.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/pb/config/common.mk)


PRODUCT_PACKAGES += \
    charger_res_images

    
# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/oukitel/c18pro/root,recovery/root)
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/root/init.recovery.mt6757.rc:root/init.recovery.mt6757.rc
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/root/sbin/permissive.sh:root/sbin/permissive.sh

# Release name
PRODUCT_RELEASE_NAME := C18_Pro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c18pro
PRODUCT_NAME := omni_c18pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

# PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp,adb
