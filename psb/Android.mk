# Copyright (c) 2009-2010 Wind River Systems, Inc.
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	psb.cpp

LOCAL_MODULE := libwrs_omxil_intel_mrst_psb

LOCAL_CPPFLAGS :=

LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
	libwrs_omxil_common \
	liblog \
	libglib-2.0 \
	libgobject-2.0 \
	libmixcommon \
	libmixvideo \
	libmixvbp \
	libva

VENDORS_INTEL_MRST_MIXVBP_ROOT := $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/mix_vbp

LOCAL_C_INCLUDES := \
	$(WRS_OMXIL_CORE_ROOT)/utils/inc \
	$(WRS_OMXIL_CORE_ROOT)/base/inc \
	$(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
	$(PV_INCLUDES) \
	$(GLIB_TOP) \
	$(GLIB_TOP)/glib \
	$(GLIB_TOP)/android \
	$(GLIB_TOP)/gobject \
	$(TARGET_OUT_HEADERS)/libmixcommon \
	$(TARGET_OUT_HEADERS)/libmixvideo \
	$(TARGET_OUT_HEADERS)/libva \
	$(TARGET_OUT_HEADERS)/libdrm \
	$(TARGET_OUT_HEADERS)/libmixvbp \
	$(TARGET_OUT_HEADERS)/libpsb_drm 

include $(BUILD_SHARED_LIBRARY)