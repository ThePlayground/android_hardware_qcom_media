QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
	media-hals := libstagefrighthw librpc
	include $(call all-named-subdir-makefiles,$(media-hals))

ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif
endif
