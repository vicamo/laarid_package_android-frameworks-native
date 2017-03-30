if HAVE_GTEST

# Build the unit tests,
check_PROGRAMS += \
    %reldir%/libgui_test

#TESTS += \
#    %reldir%/libgui_test

%canon_reldir%_libgui_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(GTEST_CFLAGS) \
    $(LOG_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(GLESV2_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_libgui_test_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_libgui_test_SOURCES = \
    %reldir%/BufferQueue_test.cpp \
    %reldir%/CpuConsumer_test.cpp \
    %reldir%/DisconnectWaiter.h \
    %reldir%/DummyConsumer.h \
    %reldir%/FillBuffer.cpp \
    %reldir%/FillBuffer.h \
    %reldir%/FrameWaiter.h \
    %reldir%/GLTest.cpp \
    %reldir%/GLTest.h \
    %reldir%/IGraphicBufferProducer_test.cpp \
    %reldir%/MultiTextureConsumer_test.cpp \
    %reldir%/SRGB_test.cpp \
    %reldir%/StreamSplitter_test.cpp \
    %reldir%/SurfaceTextureClient_test.cpp \
    %reldir%/SurfaceTextureFBO.h \
    %reldir%/SurfaceTextureFBO_test.cpp \
    %reldir%/SurfaceTextureGL.h \
    %reldir%/SurfaceTextureGLThreadToGL.h \
    %reldir%/SurfaceTextureGLThreadToGL_test.cpp \
    %reldir%/SurfaceTextureGLToGL.h \
    %reldir%/SurfaceTextureGLToGL_test.cpp \
    %reldir%/SurfaceTextureGL_test.cpp \
    %reldir%/SurfaceTextureMultiContextGL_test.cpp \
    %reldir%/SurfaceTextureMultiContextGL.h \
    %reldir%/Surface_test.cpp \
    %reldir%/TextureRenderer.cpp \
    %reldir%/TextureRenderer.h

%canon_reldir%_libgui_test_LDADD = \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    $(GLESV2_LIBS) \
    $(LOG_LIBS) \
    $(CUTILS_LIBS) \
    $(SYNC_LIBS) \
    $(UTILS_LIBS) \
    $(GTEST_LIBS) \
    libs/binder/libandroid-binder.la \
    libs/ui/libandroid-ui.la \
    libs/gui/libandroid-gui.la

%canon_reldir%_libgui_test_DEPENDENCIES = \
    $(GTEST_LIBS)

endif # HAVE_GTEST
