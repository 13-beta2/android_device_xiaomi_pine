LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), pine)

include $(call all-makefiles-under, $(LOCAL_PATH))

endif
