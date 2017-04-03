# Copyright (C) 2009 The Android Open Source Project
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
    %reldir%/libandroid-binder.la

# we have the common sources, plus some device-specific stuff
%canon_reldir%_libandroid_binder_la_SOURCES = \
    include/private/binder/binder_module.h \
    include/private/binder/Static.h \
    %reldir%/AppOpsManager.cpp \
    %reldir%/Binder.cpp \
    %reldir%/BpBinder.cpp \
    %reldir%/BufferedTextOutput.cpp \
    %reldir%/Debug.cpp \
    %reldir%/IAppOpsCallback.cpp \
    %reldir%/IAppOpsService.cpp \
    %reldir%/IBatteryStats.cpp \
    %reldir%/IInterface.cpp \
    %reldir%/IMediaResourceMonitor.cpp \
    %reldir%/IMemory.cpp \
    %reldir%/IPCThreadState.cpp \
    %reldir%/IPermissionController.cpp \
    %reldir%/IProcessInfoService.cpp \
    %reldir%/IResultReceiver.cpp \
    %reldir%/IServiceManager.cpp \
    %reldir%/MemoryBase.cpp \
    %reldir%/MemoryDealer.cpp \
    %reldir%/MemoryHeapBase.cpp \
    %reldir%/Parcel.cpp \
    %reldir%/PermissionCache.cpp \
    %reldir%/PersistableBundle.cpp \
    %reldir%/ProcessInfoService.cpp \
    %reldir%/ProcessState.cpp \
    %reldir%/Static.cpp \
    %reldir%/Status.cpp \
    %reldir%/TextOutput.cpp
%canon_reldir%_libandroid_binder_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(BIONIC_CFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)
if WITH_ANDROID_BACKTRACE
%canon_reldir%_libandroid_binder_la_CPPFLAGS += \
    $(BACKTRACE_CFLAGS)
endif
if !WITH_64BIT_BINDER
%canon_reldir%_libandroid_binder_la_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_libandroid_binder_la_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    $(PTHREAD_CFLAGS)
%canon_reldir%_libandroid_binder_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)
%canon_reldir%_libandroid_binder_la_LIBADD = \
    $(PTHREAD_LIBS) -lpthread \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS)

pkgconfig_DATA += \
    %reldir%/android-binder-$(LAARID_API_VERSION).pc

include %reldir%/tests/Android.mk
