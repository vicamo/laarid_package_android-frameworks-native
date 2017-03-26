bin_PROGRAMS += \
    %reldir%/bctest

%canon_reldir%_bctest_SOURCES = \
    %reldir%/bctest.c \
    %reldir%/binder.c \
    %reldir%/binder.h
%canon_reldir%_bctest_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS)
if !WITH_64BIT_BINDER
%canon_reldir%_bctest_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_bctest_LDADD = \
    $(LOG_LIBS)

bin_PROGRAMS += \
    %reldir%/servicemanager

%canon_reldir%_servicemanager_SOURCES = \
    %reldir%/binder.c \
    %reldir%/binder.h \
    %reldir%/service_manager.c
%canon_reldir%_servicemanager_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(SELINUX_CFLAGS) \
    $(UIDMAP_CFLAGS) \
    $(CUTILS_CFLAGS)
if !WITH_64BIT_BINDER
%canon_reldir%_servicemanager_CPPFLAGS += \
    -DBINDER_IPC_32BIT=1
endif
%canon_reldir%_servicemanager_LDADD = \
    $(LOG_LIBS)
