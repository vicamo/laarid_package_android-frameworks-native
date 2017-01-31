bin_PROGRAMS += \
	%reldir%/cmd

%canon_reldir%_cmd_SOURCES = \
	%reldir%/cmd.cpp

%canon_reldir%_cmd_LDADD = \
	$(UTILS_LIBS) \
	$(LOG_LIBS) \
	libs/binder/libandroid-binder.la

%canon_reldir%_cmd_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(LOG_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	$(UTILS_CFLAGS) \
	-DXP_UNIX
