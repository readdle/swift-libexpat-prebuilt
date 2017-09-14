LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:= expat

LOCAL_SRC_FILES := \
	../expat/lib/xmlparse.c \
	../expat/lib/xmlrole.c \
	../expat/lib/xmltok.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../expat/lib \
	$(LOCAL_PATH)/../expat/

LOCAL_CFLAGS += \
	-Wall \
	-Wmissing-prototypes -Wstrict-prototypes \
	-Wno-unused-parameter -Wno-missing-field-initializers \
	-fexceptions \
	-DHAVE_EXPAT_CONFIG_H
include $(BUILD_SHARED_LIBRARY)
