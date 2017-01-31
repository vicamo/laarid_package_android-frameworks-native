# This was named 'service', which conflict with /usr/bin/service from
# init-system-helpers package.
bin_PROGRAMS += \
	%reldir%/aservice

%canon_reldir%_aservice_SOURCES = \
	%reldir%/service.cpp

%canon_reldir%_aservice_LDADD = \
	$(UTILS_LIBS) \
	libs/binder/libandroid-binder.la

%canon_reldir%_aservice_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(CUTILS_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	-DXP_UNIX
