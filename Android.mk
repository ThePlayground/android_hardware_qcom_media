QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)

ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif
ifneq ($(BOARD_USES_LEGACY_QCOM),true)
	include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
endif

endif
