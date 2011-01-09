LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	wrs_omxcore.cpp \
	pv_omx_interface.cpp \
        intel_omx_config_parser.cpp \
        intel_video_config_parser.cpp \
        intel_m4v_config_parser.cpp

LOCAL_MODULE := libwrs_omxil_core_pvwrapped
LOCAL_MODULE_TAGS := eng

LOCAL_CPPFLAGS :=

LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
	libwrs_omxil_common \
	liblog \
        libopencore_common

LOCAL_C_INCLUDES := \
	$(WRS_OMXIL_CORE_ROOT)/utils/inc \
	$(WRS_OMXIL_CORE_ROOT)/base/inc \
	$(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
	$(PV_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
