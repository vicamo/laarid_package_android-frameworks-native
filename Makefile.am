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

DISTCHECK_CONFIGURE_FLAGS = \
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
lib_LTLIBRARIES =
pkgconfig_DATA =
TESTS =
check_PROGRAMS =
check_LTLIBRARIES =

include $(srcdir)/gtest.mk
include $(srcdir)/include/Makefile.inc
include $(srcdir)/libs/binder/Android.mk

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
