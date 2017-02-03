%canon_reldir%_androidincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/android
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

%canon_reldir%_batteryserviceincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/batteryservice
%canon_reldir%_batteryserviceinc_HEADERS = \
    %reldir%/batteryservice/BatteryService.h \
    %reldir%/batteryservice/IBatteryPropertiesListener.h \
    %reldir%/batteryservice/IBatteryPropertiesRegistrar.h

%canon_reldir%_binderincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/binder
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

%canon_reldir%_diskusageincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/diskusage
%canon_reldir%_diskusageinc_HEADERS = \
    %reldir%/diskusage/dirsize.h

%canon_reldir%_inputincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/input
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

%canon_reldir%_uiincdir = $(includedir)/android/frameworks-native-$(LAARID_API_VERSION)/ui
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
