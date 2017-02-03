LOCAL_PATH := $(call my-dir)

################################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.configstore@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_RELATIVE_PATH := hw

include $(LOCAL_PATH)/surfaceflinger.mk

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    android.hardware.configstore@1.0 \
    android.hidl.base@1.0

include $(BUILD_SHARED_LIBRARY)

################################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.configstore@1.0-service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INIT_RC := android.hardware.configstore@1.0-service.rc
LOCAL_SRC_FILES:= service.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libdl \
    libutils \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    android.hardware.configstore@1.0 \

include $(BUILD_EXECUTABLE)

