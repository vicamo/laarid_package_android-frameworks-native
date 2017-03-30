#include <EGL/egl.h>
#include <EGL/eglext.h>

#if !defined(__ANDROID__)

EGLSyncKHR EGLAPIENTRY
eglCreateSyncKHR(EGLDisplay dpy, EGLenum type, const EGLint *attrib_list)
{
    static PFNEGLCREATESYNCKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLCREATESYNCKHRPROC) eglGetProcAddress("eglCreateSyncKHR");

    // MESA has eglCreateSyncKHR but not exported.
    return pfn(dpy, type, attrib_list);
}

EGLBoolean EGLAPIENTRY
eglDestroySyncKHR(EGLDisplay dpy, EGLSyncKHR sync)
{
    static PFNEGLDESTROYSYNCKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLDESTROYSYNCKHRPROC) eglGetProcAddress("eglDestroySyncKHR");

    // MESA aliases eglDestroySyncKHR to eglDestroySync.
    return pfn(dpy, sync);
}

EGLint EGLAPIENTRY
eglWaitSyncKHR(EGLDisplay dpy, EGLSyncKHR sync, EGLint flags)
{
    static PFNEGLWAITSYNCKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLWAITSYNCKHRPROC) eglGetProcAddress("eglWaitSyncKHR");

    // MESA has eglWaitSyncKHR but not exported.
    return pfn(dpy, sync, flags);
}

EGLint EGLAPIENTRY
eglClientWaitSyncKHR(EGLDisplay dpy, EGLSyncKHR sync, EGLint flags,
                     EGLTimeKHR timeout)
{
    static PFNEGLCLIENTWAITSYNCKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLCLIENTWAITSYNCKHRPROC) eglGetProcAddress("eglClientWaitSyncKHR");

    // MESA aliases eglClientWaitSyncKHR to eglClientWaitSync.
    return pfn(dpy, sync, flags, timeout);
}

EGLImageKHR EGLAPIENTRY
eglCreateImageKHR(EGLDisplay dpy, EGLContext ctx, EGLenum target,
                  EGLClientBuffer buffer, const EGLint *attrib_list)
{
    static PFNEGLCREATEIMAGEKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLCREATEIMAGEKHRPROC) eglGetProcAddress("eglCreateImageKHR");

    // MESA has eglCreateImageKHR but not exported.
    return pfn(dpy, ctx, target, buffer, attrib_list);
}

EGLBoolean EGLAPIENTRY
eglDestroyImageKHR(EGLDisplay dpy, EGLImageKHR image)
{
    static PFNEGLDESTROYIMAGEKHRPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNEGLDESTROYIMAGEKHRPROC) eglGetProcAddress("eglDestroyImageKHR");

    // MESA aliases eglDestroyImageKHR to eglDestroyImage.
    return pfn(dpy, image);
}

EGLint EGLAPIENTRY
eglDupNativeFenceFDANDROID(EGLDisplay dpy, EGLSyncKHR sync)
{
    static PFNEGLDUPNATIVEFENCEFDANDROIDPROC pfn = NULL;

    if (!pfn) {
        pfn = (PFNEGLDUPNATIVEFENCEFDANDROIDPROC) eglGetProcAddress("eglDupNativeFenceFDANDROID");
        if (!pfn)
            return EGL_NO_NATIVE_FENCE_FD_ANDROID;
    }

    return pfn(dpy, sync);
}

#endif // !__ANDROID__
