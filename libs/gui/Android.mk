# Copyright 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

lib_LTLIBRARIES += \
	%reldir%/libandroid-gui.la

%canon_reldir%_libandroid_gui_la_CXXFLAGS = \
	$(AM_CXXFLAGS) \
	-Wno-multichar

%canon_reldir%_libandroid_gui_la_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(EGL_CFLAGS) \
	$(HARDWARE_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	$(UIDMAP_CFLAGS) \
	$(UTILS_CFLAGS) \
	-DANDROID_EGL_PLATFORM
#	-DDEBUG_ONLY_CODE=1

%canon_reldir%_libandroid_gui_la_SOURCES = \
	include/private/gui/ComposerService.h \
	include/private/gui/LayerState.h \
	include/private/gui/SyncFeatures.h \
	%reldir%/IGraphicBufferConsumer.cpp \
	%reldir%/IConsumerListener.cpp \
	%reldir%/BitTube.cpp \
	%reldir%/BufferItem.cpp \
	%reldir%/BufferItemConsumer.cpp \
	%reldir%/BufferQueue.cpp \
	%reldir%/BufferQueueConsumer.cpp \
	%reldir%/BufferQueueCore.cpp \
	%reldir%/BufferQueueProducer.cpp \
	%reldir%/BufferSlot.cpp \
	%reldir%/ConsumerBase.cpp \
	%reldir%/CpuConsumer.cpp \
	%reldir%/DisplayEventReceiver.cpp \
	%reldir%/GLConsumer.cpp \
	%reldir%/GraphicBufferAlloc.cpp \
	%reldir%/GuiConfig.cpp \
	%reldir%/IDisplayEventConnection.cpp \
	%reldir%/IGraphicBufferAlloc.cpp \
	%reldir%/IGraphicBufferProducer.cpp \
	%reldir%/IProducerListener.cpp \
	%reldir%/ISensorEventConnection.cpp \
	%reldir%/ISensorServer.cpp \
	%reldir%/ISurfaceComposer.cpp \
	%reldir%/ISurfaceComposerClient.cpp \
	%reldir%/LayerState.cpp \
	%reldir%/Sensor.cpp \
	%reldir%/SensorEventQueue.cpp \
	%reldir%/SensorManager.cpp \
	%reldir%/StreamSplitter.cpp \
	%reldir%/Surface.cpp \
	%reldir%/SurfaceControl.cpp \
	%reldir%/SurfaceComposerClient.cpp \
	%reldir%/SyncFeatures.cpp

%canon_reldir%_libandroid_gui_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	$(libtool_opts)

%canon_reldir%_libandroid_gui_la_LIBADD = \
	$(EGL_LIBS) \
	$(GLESV2_LIBS) \
	$(LOG_LIBS) \
	$(CUTILS_LIBS) \
	$(UIDMAP_LIBS) \
	$(UTILS_LIBS) \
	libs/binder/libandroid-binder.la \
	libs/ui/libandroid-ui.la \
	opengl/libs/EGL/libandroid-EGL.la \
	opengl/libs/GLES2/libandroid-GLESv2.la

if !ENABLE_FENCE_SYNC
%canon_reldir%_libandroid_gui_la_CPPFLAGS += \
	-DDONT_USE_FENCE_SYNC
endif

pkgconfig_DATA += \
	%reldir%/android-gui-0.0.pc

include %reldir%/tests/Android.mk
