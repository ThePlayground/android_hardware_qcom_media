SF_HW_ROOT := $(call my-dir)

ifneq ($(BUILD_QCOM_VENDOR),true)

ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
    include $(SF_HW_ROOT)/msm7x30/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),qsd8k)
    include $(SF_HW_ROOT)/msm8x60/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(SF_HW_ROOT)/msm8x60/Android.mk
endif

endif