LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := FreeImage
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/../Source/FreeImage/*.cpp) \
                   $(wildcard $(LOCAL_PATH)/../Source/FreeImageToolkit/*.cpp) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibJPEG/*.c) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibPNG/*.c) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibTIFF4/*.c) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibOpenJPEG/*.c) \
                   $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/**/*.cpp) \
                   $(wildcard $(LOCAL_PATH)/../Source/Metadata/*.cpp) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibJXR/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibJXR/image/**/*.c) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibJXR/jxrgluelib/*.c) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/decoders/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/demosaic/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/integration/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/metadata/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/postprocessing/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/preprocessing/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/tables/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/utils/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/write/*.cpp) \
				   $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/src/x3f/*.cpp) \
                   $(wildcard $(LOCAL_PATH)/../Source/LibWebP/src/**/*.c) \
#                  $(wildcard $(LOCAL_PATH)/../Source/ZLib/*.c) \Add for shared build 
	
LOCAL_SRC_FILES := $(filter-out $(LOCAL_PATH)/../Source/LibJPEG/cjpeg.c \
                                $(LOCAL_PATH)/../Source/LibJPEG/djpeg.c \
								$(LOCAL_PATH)/../Source/LibJPEG/jpegtran.c \
								$(LOCAL_PATH)/../Source/LibJPEG/ckconfig.c \
								$(LOCAL_PATH)/../Source/LibJPEG/jmemdos.c \
                                $(LOCAL_PATH)/../Source/LibJPEG/jmemmac.c \
								$(LOCAL_PATH)/../Source/LibJPEG/jmemname.c \
								$(LOCAL_PATH)/../Source/LibJPEG/jmemnobs.c \
								$(LOCAL_PATH)/../Source/LibJPEG/example.c \
								$(LOCAL_PATH)/../Source/LibJPEG/rdjpgcom.c \
								$(LOCAL_PATH)/../Source/LibJPEG/wrjpgcom.c \
								$(LOCAL_PATH)/../Source/LibPNG/pngtest.c \
								$(LOCAL_PATH)/../Source/LibOpenJPEG/t1_generate_luts.c \
								$(LOCAL_PATH)/../Source/OpenEXR/IlmThread/IlmThreadMutexWin32.cpp \
								$(LOCAL_PATH)/../Source/OpenEXR/IlmThread/IlmThreadSemaphoreWin32.cpp \
								$(LOCAL_PATH)/../Source/OpenEXR/IlmThread/IlmThreadWin32.cpp \
								$(LOCAL_PATH)/../Source/OpenEXR/IlmImf/b44ExpLogTable.cpp \
								$(LOCAL_PATH)/../Source/OpenEXR/IlmImf/dwaLookups.cpp \
								$(LOCAL_PATH)/../Source/LibRawLite/src/write/write_ph.cpp \
								$(LOCAL_PATH)/../Source/LibRawLite/src/preprocessing/preprocessing_ph.cpp \
								$(LOCAL_PATH)/../Source/LibRawLite/src/postprocessing/postprocessing_ph.cpp \
								$(LOCAL_PATH)/../Source/LibTIFF4/mkg3states.c \
								$(LOCAL_PATH)/../Source/LibTIFF4/mkspans.c \
								$(LOCAL_PATH)/../Source/LibTIFF4/tif_wince.c \
								$(LOCAL_PATH)/../Source/LibTIFF4/tif_unix.c \
                                $(LOCAL_PATH)/../Source/LibTIFF4/tif_win32.c, \
                                $(LOCAL_SRC_FILES))

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../Source \
					$(LOCAL_PATH)/../Source/FreeImage \
					$(LOCAL_PATH)/../Source/FreeImageToolkit \
                    $(LOCAL_PATH)/../Source/LibJPEG \
                    $(LOCAL_PATH)/../Source/LibPNG \
                    $(LOCAL_PATH)/../Source/LibTIFF4 \
                    $(LOCAL_PATH)/../Source/ZLib \
                    $(LOCAL_PATH)/../Source/LibOpenJPEG \
					$(LOCAL_PATH)/../Source/OpenEXR \
					$(LOCAL_PATH)/../Source/OpenEXR/Copyrights \
					$(LOCAL_PATH)/../Source/OpenEXR/Half \
					$(LOCAL_PATH)/../Source/OpenEXR/Iex \
					$(LOCAL_PATH)/../Source/OpenEXR/IexMath \
					$(LOCAL_PATH)/../Source/OpenEXR/IlmImf \
					$(LOCAL_PATH)/../Source/OpenEXR/IlmThread \
					$(LOCAL_PATH)/../Source/OpenEXR/Imath \
					$(LOCAL_PATH)/../Source/Metadata \
					$(LOCAL_PATH)/../Source/LibJXR/jxrgluelib \
					$(LOCAL_PATH)/../Source/LibJXR/image/sys \
					$(LOCAL_PATH)/../Source/LibJXR/common/include \
					$(LOCAL_PATH)/../Source/LibRawLite \
					$(LOCAL_PATH)/../Source/LibWebP \

LOCAL_CFLAGS += -O3 -ffunction-sections -fdata-sections -std=c17 -D_LIB -DFREEIMAGE_LIB -D__ANSI__ -DOPJ_STATIC -DLIBRAW_NODLL -DPNG_SET_OPTION_SUPPORTED -DDISABLE_PERF_MEASUREMENT -DINCLUDE_LIB_TIFF4 -DINCLUDE_LIB_JXR -DINCLUDE_LIB_WEBP -DLIBRAW_WIN32_DLLDEFS -DINCLUDE_LIB_RAW -DINCLUDE_LIB_OPEN_EXR -DHAVE_PTHREAD -DPLATFORM_LINUX -Wno-error=implicit-int -include stdlib.h -include unistd.h
LOCAL_CPPFLAGS += -frtti -fexceptions -std=c++17 -ffunction-sections -fdata-sections

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)