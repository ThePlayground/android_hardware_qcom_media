QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)

ifeq ($(BOARD_USES_LEGACY_QCOM),true)
	media-hals := librpc
else
ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif
	media-hals := libstagefrighthw librpc
endif
	include $(call all-named-subdir-makefiles,$(media-hals))
endif
