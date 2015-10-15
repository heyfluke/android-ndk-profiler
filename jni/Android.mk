LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -fvisibility=hidden -DDEBUG
LOCAL_MODULE    := android-ndk-profiler
LOCAL_SRC_FILES := prof.c read_maps.c

ifeq ($(TARGET_ARCH),arm64)
LOCAL_SRC_FILES += gnu_mcount_arm64.S
else
LOCAL_SRC_FILES += gnu_mcount.S
endif
include $(BUILD_STATIC_LIBRARY)
