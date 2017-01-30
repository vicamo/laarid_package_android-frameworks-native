# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

lib_LTLIBRARIES += \
	%reldir%/libandroid-ui.la

%canon_reldir%_libandroid_ui_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(CUTILS_CFLAGS) \
	$(SYNC_CFLAGS) \
	$(UTILS_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	$(HARDWARE_CFLAGS)

%canon_reldir%_libandroid_ui_la_CXXFLAGS = \
	$(AM_CXXFLAGS)

# The static constructors and destructors in this library have not been noted to
# introduce significant overheads
#LOCAL_CPPFLAGS += -Wno-exit-time-destructors
#LOCAL_CPPFLAGS += -Wno-global-constructors

# We only care about compiling as C++14
#LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic

# We use four-character constants for the GraphicBuffer header, and don't care
# that they're non-portable as long as they're consistent within one execution
%canon_reldir%_libandroid_ui_la_CXXFLAGS += \
	-Wno-multichar

# Don't warn about struct padding
#LOCAL_CPPFLAGS += -Wno-padded

%canon_reldir%_libandroid_ui_la_SOURCES = \
	include/private/ui/RegionHelper.h \
	%reldir%/Fence.cpp \
	%reldir%/FrameStats.cpp \
	%reldir%/GraphicBuffer.cpp \
	%reldir%/GraphicBufferAllocator.cpp \
	%reldir%/GraphicBufferMapper.cpp \
	%reldir%/HdrCapabilities.cpp \
	%reldir%/PixelFormat.cpp \
	%reldir%/Rect.cpp \
	%reldir%/Region.cpp \
	%reldir%/UiConfig.cpp

%canon_reldir%_libandroid_ui_la_LIBADD = \
	libs/binder/libandroid-binder.la \
	$(CUTILS_LIBS) \
	$(HARDWARE_LIBS) \
	$(SYNC_LIBS) \
	$(UTILS_LIBS) \
	$(LOG_LIBS)

%canon_reldir%_libandroid_ui_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)

pkgconfig_DATA += \
	%reldir%/android-ui-0.0.pc

# Include subdirectory makefiles
# ============================================================

include %reldir%/tests/Android.mk
