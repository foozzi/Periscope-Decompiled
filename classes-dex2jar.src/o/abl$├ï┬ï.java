package o;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;

class abl$ˋ
  implements abl.aux
{
  private int EGL_CONTEXT_CLIENT_VERSION = 12440;
  
  private abl$ˋ(abl paramabl) {}
  
  public EGLContext ˊ(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
  {
    int i = this.EGL_CONTEXT_CLIENT_VERSION;
    int j = abl.ˋ(this.bvV);
    EGLContext localEGLContext = EGL14.EGL_NO_CONTEXT;
    int[] arrayOfInt;
    if (abl.ˋ(this.bvV) != 0) {
      arrayOfInt = new int[] { i, j, 12344 };
    } else {
      arrayOfInt = null;
    }
    return EGL14.eglCreateContext(paramEGLDisplay, paramEGLConfig, localEGLContext, arrayOfInt, 0);
  }
  
  public void ˊ(EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
  {
    if (!EGL14.eglDestroyContext(paramEGLDisplay, paramEGLContext))
    {
      akk.ᐨ("DefaultContextFactory", "display:" + paramEGLDisplay + " context: " + paramEGLContext);
      abl.ʻ.ʽ("eglDestroyContex", EGL14.eglGetError());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ë
 * JD-Core Version:    0.7.0.1
 */