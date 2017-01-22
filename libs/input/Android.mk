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
    %reldir%/libandroid-input.la

# libinput is partially built for the host (used by build time keymap validation tool)
# These files are common to host and target builds.

%canon_reldir%_libandroid_input_la_SOURCES = \
    %reldir%/Input.cpp \
    %reldir%/InputDevice.cpp \
    %reldir%/Keyboard.cpp \
    %reldir%/KeyCharacterMap.cpp \
    %reldir%/KeyLayoutMap.cpp \
    %reldir%/VirtualKeyMap.cpp

%canon_reldir%_libandroid_input_la_SOURCES += \
    %reldir%/IInputFlinger.cpp \
    %reldir%/InputTransport.cpp \
    %reldir%/VelocityControl.cpp \
    %reldir%/VelocityTracker.cpp

%canon_reldir%_libandroid_input_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)

%canon_reldir%_libandroid_input_la_LIBADD = \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la

%canon_reldir%_libandroid_input_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

pkgconfig_DATA += \
    %reldir%/android-input-0.0.pc
