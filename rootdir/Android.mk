LOCAL_PATH := $(call my-dir)

# Recovery init configuration files
include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/ueventd.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt6757.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.recovery.mt6757.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Confilcts with system/core/rootdir
# include $(CLEAR_VARS)
# LOCAL_MODULE       := init.rc
# LOCAL_MODULE_TAGS  := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_SRC_FILES    := etc/init.rc
# LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
# include $(BUILD_PREBUILT)

