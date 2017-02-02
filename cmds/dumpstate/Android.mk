bin_PROGRAMS += \
    %reldir%/dumpstate

%canon_reldir%_dumpstate_SOURCES = \
    %reldir%/dumpstate.cpp \
    %reldir%/libdumpstate_default.cpp \
    %reldir%/utils.cpp

%canon_reldir%_dumpstate_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(BASE_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(MINCRYPT_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(SELINUX_CFLAGS) \
    $(ZIPARCHIVE_CFLAGS) \
    $(ZLIB_CFLAGS)

# ZipArchive support, the order matters here to get all symbols.
%canon_reldir%_dumpstate_LDADD = \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(SELINUX_LIBS) \
    $(ZIPARCHIVE_LIBS) \
    $(ZLIB_LIBS) \
    $(BASE_LIBS) \
    $(MINCRYPT_LIBS)

%canon_reldir%_dumpstate_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-parameter
