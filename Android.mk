QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
	media-hals := libstagefrighthw librpc
	include $(call all-named-subdir-makefiles,$(media-hals))

ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif
ifeq ($(BOARD_USES_QCOM_LIBS),true)
	include $(TOP)/vendor/qcom-opensource/omx/mm-core/Android.mk
	include $(TOP)/vendor/qcom-opensource/omx/mm-video/Android.mk
endif
endif
