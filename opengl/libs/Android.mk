if WITH_STAGE_2
lib_LTLIBRARIES += \
	%reldir%/EGL/libandroid-EGL.la

%canon_reldir%_EGL_libandroid_EGL_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(EGL_CPPFLAGS)
%canon_reldir%_EGL_libandroid_EGL_la_SOURCES = \
	%reldir%/EGL/export.c
%canon_reldir%_EGL_libandroid_EGL_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)
%canon_reldir%_EGL_libandroid_EGL_la_LIBADD = \
	$(EGL_LIBS)

pkgconfig_DATA += \
    %reldir%/EGL/android-egl-$(LAARID_API_VERSION).pc

###############################################################################
# Build the wrapper OpenGL ES 1.x library
#

lib_LTLIBRARIES += \
	%reldir%/GLES_CM/libandroid-GLESv1_CM.la

%canon_reldir%_GLES_CM_libandroid_GLESv1_CM_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(GLESV1_CM_CPPFLAGS)
%canon_reldir%_GLES_CM_libandroid_GLESv1_CM_la_SOURCES = \
	%reldir%/GLES_CM/export.c
%canon_reldir%_GLES_CM_libandroid_GLESv1_CM_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)
%canon_reldir%_GLES_CM_libandroid_GLESv1_CM_la_LIBADD = \
	$(EGL_LIBS) \
	$(GLESV1_CM_LIBS)

pkgconfig_DATA += \
    %reldir%/GLES_CM/android-glesv1_cm-$(LAARID_API_VERSION).pc

###############################################################################
# Build the wrapper OpenGL ES 2.x library
#

lib_LTLIBRARIES += \
	%reldir%/GLES2/libandroid-GLESv2.la

%canon_reldir%_GLES2_libandroid_GLESv2_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(GLESV2_CPPFLAGS)
%canon_reldir%_GLES2_libandroid_GLESv2_la_SOURCES = \
	%reldir%/GLES2/export.c
%canon_reldir%_GLES2_libandroid_GLESv2_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)
%canon_reldir%_GLES2_libandroid_GLESv2_la_LIBADD = \
	$(EGL_LIBS) \
	$(GLESV2_LIBS)

pkgconfig_DATA += \
    %reldir%/GLES2/android-glesv2-$(LAARID_API_VERSION).pc

else
if WITH_STAGE_1

###############################################################################
# Build the ETC1 device library
#

lib_LTLIBRARIES += \
	%reldir%/ETC1/libandroid-ETC1.la

%canon_reldir%_ETC1_libandroid_ETC1_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	-I$(srcdir)/opengl/include
%canon_reldir%_ETC1_libandroid_ETC1_la_SOURCES = \
	opengl/include/ETC1/etc1.h \
	%reldir%/ETC1/etc1.cpp
%canon_reldir%_ETC1_libandroid_ETC1_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)

%canon_reldir%_ETC1incdir = $(frameworks_native_incdir)/ETC1
%canon_reldir%_ETC1inc_HEADERS = \
	opengl/include/ETC1/etc1.h

pkgconfig_DATA += \
    %reldir%/ETC1/android-etc1-$(LAARID_API_VERSION).pc

endif # WITH_STAGE_1
endif # !WITH_STAGE_2

#include $(call all-makefiles-under,$(LOCAL_PATH))
