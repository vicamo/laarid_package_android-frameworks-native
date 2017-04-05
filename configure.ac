dnl Versioning
dnl ----------
dnl To make new release:
dnl
dnl   laarid_micro_version += 1
dnl   laarid_interface_revision += 1
dnl
dnl if any functions have been added:
dnl
dnl   laarid_micro_version += 1
dnl   laarid_interface_revision = 0
dnl
dnl   or
dnl
dnl   laarid_minor_version += 1
dnl   laarid_micro_version = 0
dnl   laarid_interface_revision = 0
dnl
dnl if backwards compatibility has been broken:
dnl
dnl   laarid_major_version += 1
dnl   laarid_minor_version = 0
dnl   laarid_micro_version = 0
dnl   laarid_interface_revision = 0
m4_define([laarid_major_version], [0])
m4_define([laarid_minor_version], [0])
m4_define([laarid_micro_version], [5])
m4_define([laarid_interface_revision], [2])
m4_define([laarid_api_version], [laarid_major_version.0])
m4_define([laarid_release_number], [laarid_major_version])
m4_define([laarid_version],
  [laarid_major_version.laarid_minor_version.laarid_micro_version])

AC_INIT([android-frameworks-native], [laarid_version],
  [https://github.com/laarid/package_android-frameworks-native/issues], [],
  [https://github.com/laarid/package_android-frameworks-native])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_SRCDIR([include/binder/Binder.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])

AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects no-define tar-ustar])
AM_MAINTAINER_MODE([enable])
AM_SILENT_RULES([yes])

LAARID_MAJOR_VERSION=laarid_major_version
LAARID_MINOR_VERSION=laarid_minor_version
LAARID_MICRO_VERSION=laarid_micro_version
LAARID_API_VERSION=laarid_api_version
LAARID_RELEASE_NUMBER=laarid_release_number
AC_SUBST([LAARID_MAJOR_VERSION])
AC_SUBST([LAARID_MINOR_VERSION])
AC_SUBST([LAARID_MICRO_VERSION])
AC_SUBST([LAARID_API_VERSION])
AC_SUBST([LAARID_RELEASE_NUMBER])

# Define _GNU_SOURCE etc. where appropriate, e.g. for strptime() on glibc
AC_USE_SYSTEM_EXTENSIONS
# Large file support
AC_SYS_LARGEFILE

# Multi-arch environment
# ----------------------
AC_CANONICAL_HOST

AM_PROG_AR
AC_PROG_CC
AC_PROG_CXX
PKG_PROG_PKG_CONFIG([0.24])

dnl libtool versioning
dnl ------------------
LT_INIT

m4_define([laarid_binary_age], [m4_eval(100 * laarid_minor_version + laarid_micro_version)])
m4_define([lt_current], [m4_eval(laarid_binary_age - laarid_interface_revision)])
m4_define([lt_revision], [laarid_interface_revision])
dnl Whenever backward compatibility is broken, we generate libraries
dnl of different release number. That follows the library files of the
dnl same release are always compatible, and they have their lt_age
dnl equal to lt_current.
m4_define([lt_age], [lt_current])
LT_VERSION_INFO="lt_current:lt_revision:lt_age"
AC_SUBST([LT_VERSION_INFO])

LT_OUTPUT

# Build stages
# ------------
# Android source code might have circular dependency between two or more
# source repositories, so spliting them into some stages is necessary. Here
# we have currently stage 1 and 2 only.
AC_ARG_WITH([stage],
  [AS_HELP_STRING([--with-stage], [Stage to build with @<:@default=1@:>@])],
  [AS_CASE([${with_stage}],
    [1|2], [AC_MSG_RESULT([Building for stage ${with_stage}])],
    [AC_MSG_ERROR([Unknown stage "${with_stage}"])])],
  [with_stage=1])
AM_CONDITIONAL([WITH_STAGE_1], [test "x${with_stage}" = x1])
AM_CONDITIONAL([WITH_STAGE_2], [test "x${with_stage}" = x2])

dnl Thread implementation
dnl ---------------------
AX_PTHREAD(
  [AC_DEFINE([HAVE_PTHREAD], [1],
    [Define if you have POSIX threads libraries and header files.])
  AC_DEFINE([HAVE_PTHREADS], [1],
    [Define if you have POSIX threads libraries and header files.])],
  [AC_MSG_FAILURE([pthread not available.])])

dnl Dependencies
dnl ------------
BIONIC_API_VERSION=0.0
BIONIC_REQUIRED_VERSION=0.1.4
AC_SUBST([BIONIC_API_VERSION])
AC_SUBST([BIONIC_REQUIRED_VERSION])
PKG_CHECK_MODULES([BIONIC], [android-bionic-$BIONIC_API_VERSION >= $BIONIC_REQUIRED_VERSION])

SYSTEMCORE_API_VERSION=0.0
SYSTEMCORE_REQUIRED_VERSION=0.0.19
AC_SUBST([SYSTEMCORE_API_VERSION])
AC_SUBST([SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([LOG], [android-log-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([BASE], [android-base-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([CUTILS], [android-cutils-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([SYNC], [android-sync-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([BACKTRACE], [android-backtrace-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION],
  [AC_DEFINE([WITH_ANDROID_BACKTRACE], [1],
    [Define if you have libandroid-backtrace libraries and header files.])],
  [#no op])
AM_CONDITIONAL([WITH_ANDROID_BACKTRACE], [test -n "${BACKTRACE_LIBS}"])
PKG_CHECK_MODULES([UIDMAP], [android-uidmap-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])
PKG_CHECK_MODULES([UTILS], [android-utils-$SYSTEMCORE_API_VERSION >= $SYSTEMCORE_REQUIRED_VERSION])

NATIVEHELPER_API_VERSION=0.0
NATIVEHELPER_REQUIRED_VERSION=0.0.4
AC_SUBST([NATIVEHELPER_API_VERSION])
AC_SUBST([NATIVEHELPER_REQUIRED_VERSION])
PKG_CHECK_MODULES([NATIVEHELPER], [android-nativehelper-$NATIVEHELPER_API_VERSION >= $NATIVEHELPER_REQUIRED_VERSION])

HARDWARE_API_VERSION=0.0
HARDWARE_REQUIRED_VERSION=0.0.1
AC_SUBST([HARDWARE_API_VERSION])
AC_SUBST([HARDWARE_REQUIRED_VERSION])
PKG_CHECK_MODULES([HARDWARE], [android-hardware-$HARDWARE_API_VERSION >= $HARDWARE_REQUIRED_VERSION])

HARDWARE_LEGACY_API_VERSION=0.0
HARDWARE_LEGACY_REQUIRED_VERSION=0.0.2
AC_SUBST([HARDWARE_LEGACY_API_VERSION])
AC_SUBST([HARDWARE_LEGACY_REQUIRED_VERSION])
PKG_CHECK_MODULES([HARDWARE_LEGACY], [android-hardware-legacy-$HARDWARE_LEGACY_API_VERSION >= $HARDWARE_LEGACY_REQUIRED_VERSION])

PKG_CHECK_MODULES([CRYPTO], [libcrypto])

AM_COND_IF([WITH_STAGE_1],
  [PKG_CHECK_MODULES([SELINUX], [libselinux])
  PKG_CHECK_MODULES([ZLIB], [zlib])]
)

AM_COND_IF([WITH_STAGE_2],
  [PKG_CHECK_MODULES([BINDER], [android-binder-$LAARID_API_VERSION])
  PKG_CHECK_MODULES([UI], [android-ui-$LAARID_API_VERSION])
  PKG_CHECK_MODULES([EGL], [egl])
  PKG_CHECK_MODULES([GLESV1_CM], [glesv1_cm])
  PKG_CHECK_MODULES([GLESV2], [glesv2])]
)

dnl Extra Features
dnl --------------

AM_COND_IF([WITH_STAGE_1],
  [AC_ARG_WITH([64bit-binder],
    [AS_HELP_STRING([--with-64bit-binder],
      [Use 64-bit binder IPC. Default no on 32-bit platforms, yes otherwise.])],
    [], [])
  AS_IF([test "x${with_64bit_binder}" = "x"],
    [AC_TRY_COMPILE([
#if !defined(__LP64__)
#error "Not 64 bit systems"
#endif
      ], [], [with_64bit_binder=yes], [with_64bit_binder=no])
    ])
  dnl Whether should we run binder driver tests
  AS_IF([test "x${cross_compiling}" != xyes],
    [AC_CHECK_FILE([/dev/binder])])
  ]
) dnl WITH_STAGE_1

AM_CONDITIONAL([WITH_64BIT_BINDER], [test "x${with_64bit_binder}" = "xyes"])
AM_CONDITIONAL([HAVE_DEV_BINDER], [test "x${c_cv_file_dev_binder}" = xyes])

AM_COND_IF([WITH_STAGE_2],
  [AC_ARG_ENABLE([fence-sync],
    [AS_HELP_STRING([--enable-fence-sync], [Use fence sync])])]
) dnl WITH_STAGE_2

AM_CONDITIONAL([ENABLE_FENCE_SYNC], [test "x${enable_fence_sync}" != "xno"])

# GTest
# -----
AC_LANG_PUSH([C++])
AC_ARG_WITH([gtest],
  [AS_HELP_STRING([--with-gtest],
    [Build with Google Test Frameworks based tests @<:@default=check@:>@])],
  [], [])
AS_IF([test "x${with_gtest}" != xno],
  [GTEST_SRCDIR="/usr/src/gtest"
  AS_IF([test "x${with_gtest}" != xyes],
    [AS_IF([test -e "${with_gtest}/include/gtest/gtest.h"],
      [GTEST_SRCDIR="${with_gtest}"])])
  CPPFLAGS_save="$CPPFLAGS"
  GTEST_CPPFLAGS="-I ${GTEST_SRCDIR}/include"
  GTEST_LIBS="libgtest.la libgtest_main.la"
  CPPFLAGS="${GTEST_CPPFLAGS}"
  AC_CHECK_HEADER([gtest/gtest.h], [],
    [AS_IF([test "x${with_gtest}" != xyes],
      [AC_MSG_ERROR([Google Test Frameworks source folder not found])],
      [with_gtest=no])])
  CPPFLAGS="$CPPFLAGS_save"])
AC_SUBST([GTEST_CPPFLAGS])
AC_SUBST([GTEST_LIBS])
AC_SUBST([GTEST_SRCDIR])
AC_LANG_POP()
AM_CONDITIONAL([HAVE_GTEST], [test "x${with_gtest}" != xno])

dnl Output Files
dnl ------------
AC_CONFIG_FILES([
  Makefile
])
AM_COND_IF([WITH_STAGE_1],
  [AC_CONFIG_FILES(
    [android-frameworks-native-$LAARID_API_VERSION.pc
    libs/binder/android-binder-$LAARID_API_VERSION.pc
    libs/diskusage/android-diskusage-$LAARID_API_VERSION.pc
    libs/input/android-input-$LAARID_API_VERSION.pc
    libs/ui/android-ui-$LAARID_API_VERSION.pc
    opengl/libs/ETC1/android-etc1-$LAARID_API_VERSION.pc
    services/batteryservice/android-batteryservice-$LAARID_API_VERSION.pc
    services/inputflinger/android-inputflinger-$LAARID_API_VERSION.pc
    services/powermanager/android-powermanager-$LAARID_API_VERSION.pc]
  )]
)
AM_COND_IF([WITH_STAGE_2],
  [AC_CONFIG_FILES(
    [libs/gui/android-gui-$LAARID_API_VERSION.pc
    opengl/libs/EGL/android-egl-$LAARID_API_VERSION.pc
    opengl/libs/GLES2/android-glesv2-$LAARID_API_VERSION.pc
    opengl/libs/GLES_CM/android-glesv1_cm-$LAARID_API_VERSION.pc
    services/sensorservice/android-sensorservice-$LAARID_API_VERSION.pc]
  )]
)
AC_OUTPUT
