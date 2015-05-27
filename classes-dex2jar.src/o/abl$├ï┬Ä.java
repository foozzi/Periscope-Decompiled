package o;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;

class abl$ˎ
  implements abl.ᐝ
{
  public EGLSurface ˊ(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject)
  {
    try
    {
      paramEGLDisplay = EGL14.eglCreateWindowSurface(paramEGLDisplay, paramEGLConfig, paramObject, new int[] { 12344 }, 0);
      return paramEGLDisplay;
    }
    catch (IllegalArgumentException paramEGLDisplay)
    {
      akk.ˏ("GLRenderView", "eglCreateWindowSurface", paramEGLDisplay);
    }
    return null;
  }
  
  public void ˊ(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
  {
    EGL14.eglDestroySurface(paramEGLDisplay, paramEGLSurface);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ë
 * JD-Core Version:    0.7.0.1
 */