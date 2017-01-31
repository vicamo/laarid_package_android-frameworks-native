# Copyright 2012 The Android Open Source Project

bin_PROGRAMS += \
    %reldir%/atrace

%canon_reldir%_atrace_SOURCES = \
    %reldir%/atrace.cpp

%canon_reldir%_atrace_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(ZLIB_CFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)

%canon_reldir%_atrace_LDADD = \
    $(ZLIB_LIBS) \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la
