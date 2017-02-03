lib_LTLIBRARIES += \
    %reldir%/libandroid-batteryservice.la

%canon_reldir%_libandroid_batteryservice_la_SOURCES = \
    %reldir%/BatteryProperties.cpp \
    %reldir%/BatteryProperty.cpp \
    %reldir%/IBatteryPropertiesListener.cpp \
    %reldir%/IBatteryPropertiesRegistrar.cpp

%canon_reldir%_libandroid_batteryservice_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS)

%canon_reldir%_libandroid_batteryservice_la_LIBADD = \
    $(UTILS_LIBS) \
    libs/binder/libandroid-binder.la

%canon_reldir%_libandroid_batteryservice_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

pkgconfig_DATA += \
    %reldir%/android-batteryservice-0.0.pc
