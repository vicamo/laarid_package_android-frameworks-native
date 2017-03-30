#include <EGL/egl.h>
#include <GLES/gl.h>
#include <GLES/glext.h>

#if !defined(__ANDROID__)

void GL_APIENTRY
glEGLImageTargetTexture2DOES(GLenum target, GLeglImageOES image)
{
    static PFNGLEGLIMAGETARGETTEXTURE2DOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLEGLIMAGETARGETTEXTURE2DOESPROC) eglGetProcAddress("glEGLImageTargetTexture2DOES");

    if (pfn)
        pfn(target, image);
}

#endif // !__ANDROID__
