LOCAL_PATH := device/oukitel/c18pro

# Necessary to mount a PC.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_arm64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulator.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/pb/config/common.mk)


PRODUCT_PACKAGES += \
    charger_res_images
    
PRODUCT_PACKAGES += \
    fastbootd
	
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

    
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
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
PRODUCT_SHIPPING_API_LEVEL := 29
# PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp,adb
