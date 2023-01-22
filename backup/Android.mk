LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),c18pro)
include $(call all-makefiles-under,$(LOCAL_PATH))

VENDOR_SYMLINKS := \
	$(TARGET_OUT_VENDOR)/lib/hw \
	$(TARGET_OUT_VENDOR)/lib64/hw \
	$(TARGET_OUT_VENDOR)/bin \
	$(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64

$(VENDOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	$(hide) echo "Making vendor symlinks"
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/hw

	@mkdir -p $(TARGET_OUT_VENDOR)/bin
	@mkdir -p $(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64

	@ln -sf libSoftGatekeeper.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.default.so
	@ln -sf libSoftGatekeeper.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.default.so

	@ln -sf gatekeeper.trustkernel.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.mt6757.so
	@ln -sf gatekeeper.trustkernel.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.mt6757.so
	@ln -sf gatekeeper.trustkernel.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.k57pv1_dm_64.so
	@ln -sf gatekeeper.trustkernel.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.k57pv1_dm_64.so

	@ln -sf kmsetkey.trustkernel.so $(TARGET_OUT_VENDOR)/lib/hw/kmsetkey.mt6757.so
	@ln -sf kmsetkey.trustkernel.so $(TARGET_OUT_VENDOR)/lib64/hw/kmsetkey.mt6757.so

	@ln -sf $(TARGET_OUT_VENDOR)/lib64/libem_sensor_jni.so $(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64/libem_sensor_jni.so

	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/netcat
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/unlink
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/i2cget
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/i2cdump
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/bc
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/nsenter
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/unshare
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/install
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/getconf
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/devmem
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/i2cdetect
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/fsync
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/iconv
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/nproc
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/nc
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/watch
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/uuidgen
	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/i2cset

	$(hide) touch $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENDOR_SYMLINKS)

endif

