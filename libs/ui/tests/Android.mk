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
    %reldir%/Region_test \
    %reldir%/vec_test \
    %reldir%/mat_test

TESTS += \
    %reldir%/Region_test \
    %reldir%/vec_test \
    %reldir%/mat_test

%canon_reldir%_Region_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
%canon_reldir%_Region_test_SOURCES = \
    %reldir%/Region_test.cpp
%canon_reldir%_Region_test_LDADD = \
    $(LOG_LIBS) \
    libs/ui/libandroid-ui.la \
    $(GTEST_LIBS)
%canon_reldir%_Region_test_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_vec_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
%canon_reldir%_vec_test_SOURCES = \
    %reldir%/vec_test.cpp
%canon_reldir%_vec_test_LDADD = \
    $(GTEST_LIBS)
%canon_reldir%_vec_test_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_mat_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
%canon_reldir%_mat_test_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-enum-compare
%canon_reldir%_mat_test_SOURCES = \
    %reldir%/mat_test.cpp
%canon_reldir%_mat_test_LDADD = \
    $(GTEST_LIBS)
%canon_reldir%_mat_test_DEPENDENCIES = \
    $(GTEST_LIBS)
endif # HAVE_GTEST
