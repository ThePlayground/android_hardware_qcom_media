QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)

ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif

include $(QCOM_MEDIA_ROOT)/libI420colorconvert/Android.mk
endif # BOARD_USES_QCOM_HARDWARE
