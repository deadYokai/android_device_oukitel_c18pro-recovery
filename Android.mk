LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),C18Pro)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
