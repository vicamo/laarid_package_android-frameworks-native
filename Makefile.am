ACLOCAL_AMFLAGS = -I m4 ${ACLOCAL_FLAGS}

# Distribution
# ------------
EXTRA_DIST = \
    MODULE_LICENSE_APACHE2 \
    NOTICE
BUILT_SOURCES =
CLEANFILES =
DISTCLEANFILES =
MAINTAINERCLEANFILES = \
	$(GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL) \
	$(GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL) \
	$(GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN)

# We're running CI in docker, which reports host architecture as host,
# not the docker image architecture as we expected, so specifying the
# host/build information is necessary here.
DISTCHECK_CONFIGURE_FLAGS = \
	--host=$(host_alias) \
	--build=$(build_alias) \
	--disable-dependency-tracking \
	--disable-maintainer-mode

GITIGNOREFILES = \
	debian \
	$(DIST_ARCHIVES)

# Common/global flags
# -------------------
AM_CPPFLAGS = \
	-include config.h \
	-I$(top_srcdir)/include

AM_CFLAGS = \
	-Wall -Werror \
	-std=gnu99

AM_CXXFLAGS = \
	-Wall -Werror \
	-std=gnu++11

libtool_opts = \
	-version-info $(LT_VERSION_INFO) \
	-export-dynamic \
	-rpath $(libdir)

# Various build targets
# ---------------------
bin_PROGRAMS =
lib_LTLIBRARIES =
pkgconfig_DATA =
TESTS =
check_PROGRAMS =
check_LIBRARIES =
check_LTLIBRARIES =

include $(srcdir)/gtest.mk
include $(srcdir)/include/Makefile.inc


if WITH_STAGE_1
pkgconfig_DATA += \
    android-frameworks-native-$(LAARID_API_VERSION).pc
# ---------------------
include $(srcdir)/cmds/bugreport/Android.mk
include $(srcdir)/cmds/bugreportz/Android.mk
include $(srcdir)/cmds/ip-up-vpn/Android.mk
include $(srcdir)/cmds/servicemanager/Android.mk
include $(srcdir)/libs/binder/Android.mk
include $(srcdir)/libs/diskusage/Android.mk
include $(srcdir)/opengl/libs/Android.mk
# ---------------------
include $(srcdir)/cmds/atrace/Android.mk
include $(srcdir)/cmds/cmd/Android.mk
include $(srcdir)/cmds/dumpsys/Android.mk
include $(srcdir)/cmds/service/Android.mk
include $(srcdir)/libs/input/Android.mk
include $(srcdir)/libs/ui/Android.mk
include $(srcdir)/services/batteryservice/Android.mk
include $(srcdir)/services/powermanager/Android.mk
# ---------------------
include $(srcdir)/services/inputflinger/Android.mk
else
if WITH_STAGE_2
include $(srcdir)/opengl/libs/Android.mk
# ---------------------
include $(srcdir)/libs/gui/Android.mk
endif
endif

# PKG-CONFIG data files
# ---------------------
pkgconfigdir = $(libdir)/pkgconfig

$(pkgconfig_DATA): config.status

EXTRA_DIST += $(pkgconfig_DATA:.pc=.pc.in)
DISTCLEANFILES += \
	$(pkgconfig_DATA)

CLEANFILES += $(BUILT_SOURCES)
GITIGNOREFILES += $(BUILT_SOURCES)

-include $(top_srcdir)/git.mk
