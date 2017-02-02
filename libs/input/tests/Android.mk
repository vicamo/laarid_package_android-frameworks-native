if HAVE_GTEST
# Build the unit tests.
check_PROGRAMS += \
    %reldir%/InputChannel_test \
    %reldir%/InputEvent_test \
    %reldir%/InputPublisherAndConsumer_test

TESTS += \
    %reldir%/InputChannel_test \
    %reldir%/InputEvent_test \
    %reldir%/InputPublisherAndConsumer_test

%canon_reldir%_InputChannel_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
%canon_reldir%_InputChannel_test_SOURCES = \
    %reldir%/TestHelpers.h \
    %reldir%/InputChannel_test.cpp
%canon_reldir%_InputChannel_test_LDADD = \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS) \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la
%canon_reldir%_InputChannel_test_DEPENDENCIES = \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la

%canon_reldir%_InputEvent_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
if HAVE_DEV_BINDER
%canon_reldir%_InputEvent_test_CPPFLAGS += \
    -DENABLE_PARCEL_TESTS
endif
%canon_reldir%_InputEvent_test_SOURCES = \
    %reldir%/InputEvent_test.cpp
%canon_reldir%_InputEvent_test_LDADD = \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS) \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la
%canon_reldir%_InputEvent_test_DEPENDENCIES = \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la

%canon_reldir%_InputPublisherAndConsumer_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(GTEST_CFLAGS)
%canon_reldir%_InputPublisherAndConsumer_test_SOURCES = \
    %reldir%/TestHelpers.h \
    %reldir%/InputPublisherAndConsumer_test.cpp
%canon_reldir%_InputPublisherAndConsumer_test_LDADD = \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS) \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la
%canon_reldir%_InputPublisherAndConsumer_test_DEPENDENCIES = \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/input/libandroid-input.la \
    libs/ui/libandroid-ui.la
endif # HAVE_GTEST

# NOTE: This is a compile time test, and does not need to be
# run. All assertions are static_asserts and will fail during
# buildtime if something's wrong.
check_LIBRARIES += \
    %reldir%/libStructLayout_test.a

%canon_reldir%_libStructLayout_test_a_SOURCES = \
    %reldir%/StructLayout_test.cpp
%canon_reldir%_libStructLayout_test_a_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -std=c++11 -O0
%canon_reldir%_libStructLayout_test_a_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS)
