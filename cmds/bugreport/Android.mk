bin_PROGRAMS += \
    %reldir%/bugreport

%canon_reldir%_bugreport_SOURCES = \
    %reldir%/bugreport.cpp

%canon_reldir%_bugreport_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS)
%canon_reldir%_bugreport_LDADD = \
    $(CUTILS_LIBS)
