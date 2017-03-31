frameworks_native_incdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)

%canon_reldir%_androidincdir = $(frameworks_native_incdir)/android
%canon_reldir%_androidinc_HEADERS = \
    %reldir%/android/asset_manager.h \
    %reldir%/android/asset_manager_jni.h \
    %reldir%/android/bitmap.h \
    %reldir%/android/choreographer.h \
    %reldir%/android/configuration.h \
    %reldir%/android/input.h \
    %reldir%/android/keycodes.h \
    %reldir%/android/looper.h \
    %reldir%/android/multinetwork.h \
    %reldir%/android/native_activity.h \
    %reldir%/android/native_window.h \
    %reldir%/android/native_window_jni.h \
    %reldir%/android/obb.h \
    %reldir%/android/rect.h \
    %reldir%/android/sensor.h \
    %reldir%/android/storage_manager.h \
    %reldir%/android/trace.h \
    %reldir%/android/window.h

%canon_reldir%_batteryserviceincdir = $(frameworks_native_incdir)/batteryservice
%canon_reldir%_batteryserviceinc_HEADERS = \
    %reldir%/batteryservice/BatteryService.h \
    %reldir%/batteryservice/IBatteryPropertiesListener.h \
    %reldir%/batteryservice/IBatteryPropertiesRegistrar.h

%canon_reldir%_binderincdir = $(frameworks_native_incdir)/binder
%canon_reldir%_binderinc_HEADERS = \
    %reldir%/binder/AppOpsManager.h \
    %reldir%/binder/Binder.h \
    %reldir%/binder/BinderService.h \
    %reldir%/binder/BpBinder.h \
    %reldir%/binder/BufferedTextOutput.h \
    %reldir%/binder/Debug.h \
    %reldir%/binder/IAppOpsCallback.h \
    %reldir%/binder/IAppOpsService.h \
    %reldir%/binder/IBatteryStats.h \
    %reldir%/binder/IBinder.h \
    %reldir%/binder/IInterface.h \
    %reldir%/binder/IMediaResourceMonitor.h \
    %reldir%/binder/IMemory.h \
    %reldir%/binder/IPCThreadState.h \
    %reldir%/binder/IPermissionController.h \
    %reldir%/binder/IProcessInfoService.h \
    %reldir%/binder/IResultReceiver.h \
    %reldir%/binder/IServiceManager.h \
    %reldir%/binder/MemoryBase.h \
    %reldir%/binder/MemoryDealer.h \
    %reldir%/binder/MemoryHeapBase.h \
    %reldir%/binder/Parcelable.h \
    %reldir%/binder/Parcel.h \
    %reldir%/binder/PermissionCache.h \
    %reldir%/binder/PersistableBundle.h \
    %reldir%/binder/ProcessInfoService.h \
    %reldir%/binder/ProcessState.h \
    %reldir%/binder/Status.h \
    %reldir%/binder/TextOutput.h

%canon_reldir%_diskusageincdir = $(frameworks_native_incdir)/diskusage
%canon_reldir%_diskusageinc_HEADERS = \
    %reldir%/diskusage/dirsize.h

%canon_reldir%_guiincdir = $(frameworks_native_incdir)/gui
%canon_reldir%_guiinc_HEADERS = \
    %reldir%/gui/BitTube.h \
    %reldir%/gui/BufferItemConsumer.h \
    %reldir%/gui/BufferItem.h \
    %reldir%/gui/BufferQueueConsumer.h \
    %reldir%/gui/BufferQueueCore.h \
    %reldir%/gui/BufferQueueDefs.h \
    %reldir%/gui/BufferQueue.h \
    %reldir%/gui/BufferQueueProducer.h \
    %reldir%/gui/BufferSlot.h \
    %reldir%/gui/ConsumerBase.h \
    %reldir%/gui/CpuConsumer.h \
    %reldir%/gui/DisplayEventReceiver.h \
    %reldir%/gui/GLConsumer.h \
    %reldir%/gui/GraphicBufferAlloc.h \
    %reldir%/gui/GuiConfig.h \
    %reldir%/gui/IConsumerListener.h \
    %reldir%/gui/IDisplayEventConnection.h \
    %reldir%/gui/IGraphicBufferAlloc.h \
    %reldir%/gui/IGraphicBufferConsumer.h \
    %reldir%/gui/IGraphicBufferProducer.h \
    %reldir%/gui/IProducerListener.h \
    %reldir%/gui/ISensorEventConnection.h \
    %reldir%/gui/ISensorServer.h \
    %reldir%/gui/ISurfaceComposerClient.h \
    %reldir%/gui/ISurfaceComposer.h \
    %reldir%/gui/SensorEventQueue.h \
    %reldir%/gui/Sensor.h \
    %reldir%/gui/SensorManager.h \
    %reldir%/gui/StreamSplitter.h \
    %reldir%/gui/SurfaceComposerClient.h \
    %reldir%/gui/SurfaceControl.h \
    %reldir%/gui/Surface.h

%canon_reldir%_inputincdir = $(frameworks_native_incdir)/input
%canon_reldir%_inputinc_HEADERS = \
    %reldir%/input/IInputFlinger.h \
    %reldir%/input/InputDevice.h \
    %reldir%/input/InputEventLabels.h \
    %reldir%/input/Input.h \
    %reldir%/input/InputTransport.h \
    %reldir%/input/Keyboard.h \
    %reldir%/input/KeyCharacterMap.h \
    %reldir%/input/KeyLayoutMap.h \
    %reldir%/input/VelocityControl.h \
    %reldir%/input/VelocityTracker.h \
    %reldir%/input/VirtualKeyMap.h

%canon_reldir%_mediaincdir = $(frameworks_native_incdir)/media
%canon_reldir%_media_drmincdir = $(%canon_reldir%_mediaincdir)/drm
%canon_reldir%_media_drminc_HEADERS = \
    %reldir%/media/drm/DrmAPI.h
%canon_reldir%_media_editorincdir = $(%canon_reldir%_mediaincdir)/editor
%canon_reldir%_media_editorinc_HEADERS = \
    %reldir%/media/editor/II420ColorConverter.h
%canon_reldir%_media_hardwareincdir = $(%canon_reldir%_mediaincdir)/hardware
%canon_reldir%_media_hardwareinc_HEADERS = \
    %reldir%/media/hardware/CryptoAPI.h \
    %reldir%/media/hardware/HardwareAPI.h \
    %reldir%/media/hardware/HDCPAPI.h \
    %reldir%/media/hardware/MetadataBufferType.h \
    %reldir%/media/hardware/OMXPluginBase.h \
    %reldir%/media/hardware/VideoAPI.h
%canon_reldir%_media_openmaxincdir = $(%canon_reldir%_mediaincdir)/openmax
%canon_reldir%_media_openmaxinc_HEADERS = \
    %reldir%/media/openmax/OMX_AsString.h \
    %reldir%/media/openmax/OMX_AudioExt.h \
    %reldir%/media/openmax/OMX_Audio.h \
    %reldir%/media/openmax/OMX_Component.h \
    %reldir%/media/openmax/OMX_ContentPipe.h \
    %reldir%/media/openmax/OMX_Core.h \
    %reldir%/media/openmax/OMX_Image.h \
    %reldir%/media/openmax/OMX_IndexExt.h \
    %reldir%/media/openmax/OMX_Index.h \
    %reldir%/media/openmax/OMX_IVCommon.h \
    %reldir%/media/openmax/OMX_Other.h \
    %reldir%/media/openmax/OMX_Types.h \
    %reldir%/media/openmax/OMX_VideoExt.h \
    %reldir%/media/openmax/OMX_Video.h

%canon_reldir%_powermanagerincdir = $(frameworks_native_incdir)/powermanager
%canon_reldir%_powermanagerinc_HEADERS = \
    %reldir%/powermanager/IPowerManager.h \
    %reldir%/powermanager/PowerManager.h

%canon_reldir%_uiincdir = $(frameworks_native_incdir)/ui
%canon_reldir%_uiinc_HEADERS = \
    %reldir%/ui/ANativeObjectBase.h \
    %reldir%/ui/DisplayInfo.h \
    %reldir%/ui/DisplayStatInfo.h \
    %reldir%/ui/Fence.h \
    %reldir%/ui/FrameStats.h \
    %reldir%/ui/GraphicBuffer.h \
    %reldir%/ui/GraphicBufferAllocator.h \
    %reldir%/ui/GraphicBufferMapper.h \
    %reldir%/ui/HdrCapabilities.h \
    %reldir%/ui/PixelFormat.h \
    %reldir%/ui/Point.h \
    %reldir%/ui/Rect.h \
    %reldir%/ui/Region.h \
    %reldir%/ui/TMatHelpers.h \
    %reldir%/ui/TVecHelpers.h \
    %reldir%/ui/UiConfig.h \
    %reldir%/ui/mat4.h \
    %reldir%/ui/vec2.h \
    %reldir%/ui/vec3.h \
    %reldir%/ui/vec4.h
