OMX_CORE_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(BUILD_QCOM_VENDOR),true)
    include $(OMX_CORE_PATH)/omxcore/Android.mk
endif