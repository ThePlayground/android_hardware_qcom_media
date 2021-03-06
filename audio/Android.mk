AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(AUDIO_HW_ROOT)/8x60/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm7x27)
    include $(AUDIO_HW_ROOT)/7x27/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm7x27a)
    include $(AUDIO_HW_ROOT)/7x27a/Android.mk
endif

ifneq ($(BOARD_USES_LEGACY_QCOM),true)

ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
    include $(AUDIO_HW_ROOT)/7x30/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),qsd8k)
    include $(AUDIO_HW_ROOT)/qsd8k/Android.mk
endif

endif