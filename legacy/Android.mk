ifneq ($(filter msm8960,$(TARGET_BOARD_PLATFORM)),)
ifeq ($(TARGET_QCOM_AUDIO_VARIANT),caf)

AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(TARGET_USES_QCOM_COMPRESSED_AUDIO),true)
    common_flags += -DQCOM_COMPRESSED_AUDIO_ENABLED
endif

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/alsa_sound/Android.mk
    include $(AUDIO_HW_ROOT)/libalsa-intf/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
    include $(AUDIO_HW_ROOT)/audiod/Android.mk
endif
endif
endif
