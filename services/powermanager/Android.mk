lib_LTLIBRARIES += \
    %reldir%/libandroid-powermanager.la

%canon_reldir%_libandroid_powermanager_la_SOURCES = \
    %reldir%/IPowerManager.cpp

%canon_reldir%_libandroid_powermanager_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(HARDWARE_CFLAGS)

%canon_reldir%_libandroid_powermanager_la_LIBADD = \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la

%canon_reldir%_libandroid_powermanager_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

pkgconfig_DATA += \
    %reldir%/android-powermanager-$(LAARID_API_VERSION).pc
