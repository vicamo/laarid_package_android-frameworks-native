bin_PROGRAMS += \
	%reldir%/dumpsys

%canon_reldir%_dumpsys_SOURCES = \
	%reldir%/dumpsys.cpp

%canon_reldir%_dumpsys_LDADD = \
	$(BASE_LIBS) \
	$(UTILS_LIBS) \
	$(LOG_LIBS) \
	libs/binder/libandroid-binder.la

%canon_reldir%_dumpsys_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(BASE_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	$(UTILS_CFLAGS) \
	-DXP_UNIX

%canon_reldir%_dumpsys_CXXFLAGS = \
	$(AM_CXXFLAGS) \
	-std=gnu++14
