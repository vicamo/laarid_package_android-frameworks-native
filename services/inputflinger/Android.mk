# Copyright (C) 2013 The Android Open Source Project
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
    %reldir%/libandroid-inputflinger.la

%canon_reldir%_libandroid_inputflinger_la_SOURCES = \
    %reldir%/EventHub.cpp \
    %reldir%/EventHub.h \
    %reldir%/InputApplication.cpp \
    %reldir%/InputApplication.h \
    %reldir%/InputDispatcher.cpp \
    %reldir%/InputDispatcher.h \
    %reldir%/InputListener.cpp \
    %reldir%/InputListener.h \
    %reldir%/InputManager.cpp \
    %reldir%/InputManager.h \
    %reldir%/InputReader.cpp \
    %reldir%/InputReader.h \
    %reldir%/InputWindow.cpp \
    %reldir%/InputWindow.h \
    %reldir%/PointerControllerInterface.h

%canon_reldir%_libandroid_inputflinger_la_LIBADD = \
    $(CRYPTO_LIBS) \
    $(CUTILS_LIBS) \
    $(LOG_LIBS) \
    $(HARDWARE_LEGACY_LIBS) \
    $(UTILS_LIBS) \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la

%canon_reldir%_libandroid_inputflinger_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CRYPTO_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(HARDWARE_LEGACY_CFLAGS) \
    $(UTILS_CFLAGS) \
    -I$(srcdir)/services

%canon_reldir%_libandroid_inputflinger_la_CXXFLAGS = \
    $(AM_CXXFLAGS)
# TODO: Move inputflinger to its own process and mark it hidden
#%canon_reldir%_libandroid_inputflinger_la_CXXFLAGS += \
#    -fvisibility=hidden

%canon_reldir%_libandroid_inputflinger_la_CXXFLAGS += \
    -Wno-unused-parameter \
    -Wno-unused-variable \
    -Wno-unused-but-set-variable

%canon_reldir%_libandroid_inputflinger_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

%canon_reldir%_inputflingerincdir = $(frameworks_native_incdir)/inputflinger
%canon_reldir%_inputflingerinc_HEADERS = \
    %reldir%/EventHub.h \
    %reldir%/InputApplication.h \
    %reldir%/InputDispatcher.h \
    %reldir%/InputListener.h \
    %reldir%/InputManager.h \
    %reldir%/InputReader.h \
    %reldir%/InputWindow.h \
    %reldir%/PointerControllerInterface.h

pkgconfig_DATA += \
    %reldir%/android-inputflinger-0.0.pc

#include $(call all-makefiles-under,$(LOCAL_PATH))
