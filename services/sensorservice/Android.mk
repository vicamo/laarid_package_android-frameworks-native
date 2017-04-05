lib_LTLIBRARIES += \
    %reldir%/libandroid-sensorservice.la

%canon_reldir%_libandroid_sensorservice_la_SOURCES = \
    %reldir%/BatteryService.cpp \
    %reldir%/BatteryService.h \
    %reldir%/CorrectedGyroSensor.cpp \
    %reldir%/CorrectedGyroSensor.h \
    %reldir%/Fusion.cpp \
    %reldir%/Fusion.h \
    %reldir%/GravitySensor.cpp \
    %reldir%/GravitySensor.h \
    %reldir%/LinearAccelerationSensor.cpp \
    %reldir%/LinearAccelerationSensor.h \
    %reldir%/OrientationSensor.cpp \
    %reldir%/OrientationSensor.h \
    %reldir%/RecentEventLogger.cpp \
    %reldir%/RecentEventLogger.h \
    %reldir%/RingBuffer.h \
    %reldir%/RotationVectorSensor.cpp \
    %reldir%/RotationVectorSensor.h \
    %reldir%/SensorDevice.cpp \
    %reldir%/SensorDevice.h \
    %reldir%/SensorEventAckReceiver.h \
    %reldir%/SensorEventConnection.cpp \
    %reldir%/SensorEventConnection.h \
    %reldir%/SensorFusion.cpp \
    %reldir%/SensorFusion.h \
    %reldir%/SensorInterface.cpp \
    %reldir%/SensorInterface.h \
    %reldir%/SensorList.cpp \
    %reldir%/SensorList.h \
    %reldir%/SensorRecord.cpp \
    %reldir%/SensorRecord.h \
    %reldir%/SensorRegistrationInfo.h \
    %reldir%/SensorService.cpp \
    %reldir%/SensorService.h \
    %reldir%/SensorServiceUtils.cpp \
    %reldir%/SensorServiceUtils.h \
    %reldir%/mat.h \
    %reldir%/quat.h \
    %reldir%/traits.h \
    %reldir%/vec.h


%canon_reldir%_libandroid_sensorservice_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(HARDWARE_LEGACY_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UI_CFLAGS) \
    -I$(srcdir)/services \
    -DLOG_TAG=\"SensorService\"

%canon_reldir%_libandroid_sensorservice_la_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -fvisibility=hidden \
    -Wno-multichar \
    -Wno-unused-but-set-variable

%canon_reldir%_libandroid_sensorservice_la_LIBADD = \
    $(CRYPTO_LIBS) \
    $(CUTILS_LIBS) \
    $(HARDWARE_LIBS) \
    $(HARDWARE_LEGACY_LIBS) \
    $(UTILS_LIBS) \
    $(LOG_LIBS) \
    $(BINDER_LIBS) \
    libs/gui/libandroid-gui.la

%canon_reldir%_libandroid_sensorservice_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

pkgconfig_DATA += \
    %reldir%/android-sensorservice-$(LAARID_API_VERSION).pc

%canon_reldir%_sensorserviceincdir = $(frameworks_native_incdir)/sensorservice
%canon_reldir%_sensorserviceinc_HEADERS = \
    %reldir%/SensorService.h

#####################################################################
# build executable
bin_PROGRAMS += \
    %reldir%/sensorservice

%canon_reldir%_sensorservice_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UTILS_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UI_CFLAGS) \
    -I$(srcdir)/services

%canon_reldir%_sensorservice_SOURCES = \
    %reldir%/main_sensorservice.cpp

%canon_reldir%_sensorservice_LDADD = \
    $(BINDER_LIBS) \
    $(UTILS_LIBS) \
    %reldir%/libandroid-sensorservice.la

include $(srcdir)/%reldir%/tests/Android.mk
