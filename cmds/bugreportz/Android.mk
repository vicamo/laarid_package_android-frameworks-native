bin_PROGRAMS += \
    %reldir%/bugreportz

%canon_reldir%_bugreportz_SOURCES = \
    %reldir%/bugreportz.cpp

%canon_reldir%_bugreportz_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS)
%canon_reldir%_bugreportz_LDADD = \
    $(CUTILS_LIBS)
