# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6757 \
    multi_init.rc \
    factory_init.project.rc \
    init.mt6757.usb.rc \
    init.sensor_1_0.rc \
    init.modem.rc \
    init.mt6757.rc \
    init.fingerprint.rc \
    meta_init.rc \
    init.project.rc \
    meta_init.project.rc \
    factory_init.connectivity.rc \
    meta_init.modem.rc \
    factory_init.rc \
    meta_init.connectivity.rc \
    init.aee.rc \
    init.connectivity.rc \
    init.ago.rc \
    ueventd.rc \
    init.recovery.mt6757.rc \
    init.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_FULL_TREBLE_OVERRIDE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
# $(call inherit-product, vendor/oukitel/c18pro/c18pro-vendor.mk)
