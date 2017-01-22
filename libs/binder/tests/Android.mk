#
# Copyright (C) 2014 The Android Open Source Project
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
#

if HAVE_GTEST
check_PROGRAMS += \
    %reldir%/binderDriverInterfaceTest \
    %reldir%/binderLibTest \
    %reldir%/binderThroughputTest

if HAVE_DEV_BINDER
TESTS += \
    %reldir%/binderDriverInterfaceTest \
    %reldir%/binderLibTest \
    %reldir%/binderThroughputTest
endif

%canon_reldir%_binderDriverInterfaceTest_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)
    $(GTEST_CFLAGS)
if !WITH_64BIT_BINDER
%canon_reldir%_binderDriverInterfaceTest_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_binderDriverInterfaceTest_SOURCES = \
    %reldir%/binderDriverInterfaceTest.cpp
%canon_reldir%_binderDriverInterfaceTest_LDADD = \
    $(GTEST_LIBS)
%canon_reldir%_binderDriverInterfaceTest_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_binderLibTest_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)
    $(GTEST_CFLAGS)
if !WITH_64BIT_BINDER
%canon_reldir%_binderLibTest_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_binderLibTest_SOURCES = \
    %reldir%/binderLibTest.cpp
%canon_reldir%_binderLibTest_LDADD = \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la \
    $(GTEST_LIBS)
%canon_reldir%_binderLibTest_DEPENDENCIES = \
    libs/binder/libandroid-binder.la \
    $(GTEST_LIBS)

%canon_reldir%_binderThroughputTest_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)
    $(GTEST_CFLAGS)
if !WITH_64BIT_BINDER
%canon_reldir%_binderThroughputTest_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_binderThroughputTest_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-missing-field-initializers -Wno-sign-compare -O3
%canon_reldir%_binderThroughputTest_SOURCES = \
    %reldir%/binderThroughputTest.cpp
%canon_reldir%_binderThroughputTest_LDADD = \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la \
    $(GTEST_LIBS)
%canon_reldir%_binderThroughputTest_DEPENDENCIES = \
    libs/binder/libandroid-binder.la \
    $(GTEST_LIBS)
endif # HAVE_GTEST
