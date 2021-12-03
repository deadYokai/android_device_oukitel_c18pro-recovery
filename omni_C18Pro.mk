LOCAL_PATH := device/Oukitel/C18Pro

# Necessary to mount a PC
$(call inherit-product, $(SRC_TARGET_DIR)/product/embeded.mk) 
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) 

# $(call inherit-product, device/Oukitel/C18_Pro.mk)

$(call inherit-product, vendor/pb/config/common.mk)


PRODUCT_PACKAGES += \
    charger_res_images

    
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/Oukitel/C18Pro/root,recovery/root)

# Release name
PRODUCT_RELEASE_NAME := C18_Pro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C18Pro
PRODUCT_NAME := omni_C18Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := C18_Pro
PRODUCT_MANUFACTURER := OUKITEL

# PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp,adb
