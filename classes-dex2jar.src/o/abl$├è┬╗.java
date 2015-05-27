package o;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import java.lang.ref.WeakReference;

class abl$ʻ
{
  private WeakReference<abl> bwd;
  EGLDisplay bwe;
  EGLSurface bwf;
  EGLConfig bwg;
  EGLContext bwh;
  
  public abl$ʻ(WeakReference<abl> paramWeakReference)
  {
    this.bwd = paramWeakReference;
  }
  
  private void we()
  {
    if ((this.bwf != null) && (this.bwf != EGL14.EGL_NO_SURFACE))
    {
      EGL14.eglMakeCurrent(this.bwe, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
      abl localabl = (abl)this.bwd.get();
      if (localabl != null) {
        abl.ᐝ(localabl).ˊ(this.bwe, this.bwf);
      }
      this.bwf = null;
    }
  }
  
  public static void ʽ(String paramString, int paramInt)
  {
    throw new RuntimeException(ͺ(paramString, paramInt));
  }
  
  public static void ˋ(String paramString1, String paramString2, int paramInt)
  {
    akk.ᐧ(paramString1, ͺ(paramString2, paramInt));
  }
  
  public static String ͺ(String paramString, int paramInt)
  {
    return paramString + " failed: " + paramInt;
  }
  
  private void ﺘ(String paramString)
  {
    ʽ(paramString, EGL14.eglGetError());
  }
  
  public void finish()
  {
    if (this.bwh != null)
    {
      abl localabl = (abl)this.bwd.get();
      if (localabl != null) {
        abl.ˏ(localabl).ˊ(this.bwe, this.bwh);
      }
      this.bwh = null;
    }
    if (this.bwe != null)
    {
      EGL14.eglTerminate(this.bwe);
      this.bwe = null;
    }
  }
  
  public void start()
  {
    this.bwe = EGL14.eglGetDisplay(0);
    if (this.bwe == EGL14.EGL_NO_DISPLAY) {
      throw new RuntimeException("eglGetDisplay failed");
    }
    Object localObject = new int[2];
    int[] arrayOfInt = new int[2];
    if (!EGL14.eglInitialize(this.bwe, (int[])localObject, 0, arrayOfInt, 0)) {
      throw new RuntimeException("eglInitialize failed");
    }
    localObject = (abl)this.bwd.get();
    if (localObject == null)
    {
      this.bwg = null;
      this.bwh = null;
    }
    else
    {
      this.bwg = abl.ˎ((abl)localObject).ˊ(this.bwe);
      this.bwh = abl.ˏ((abl)localObject).ˊ(this.bwe, this.bwg);
    }
    if ((this.bwh == null) || (this.bwh == EGL14.EGL_NO_CONTEXT))
    {
      this.bwh = null;
      ﺘ("createContext");
    }
    this.bwf = null;
  }
  
  public boolean wb()
  {
    if (this.bwe == null) {
      throw new RuntimeException("eglDisplay not initialized");
    }
    if (this.bwg == null) {
      throw new RuntimeException("mEglConfig not initialized");
    }
    we();
    abl localabl = (abl)this.bwd.get();
    if (localabl != null) {
      this.bwf = abl.ᐝ(localabl).ˊ(this.bwe, this.bwg, localabl.getHolder());
    } else {
      this.bwf = null;
    }
    if ((this.bwf == null) || (this.bwf == EGL14.EGL_NO_SURFACE))
    {
      if (EGL14.eglGetError() == 12299) {
        akk.ᐨ("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
      }
      return false;
    }
    if (!EGL14.eglMakeCurrent(this.bwe, this.bwf, this.bwf, this.bwh))
    {
      ˋ("EGLHelper", "eglMakeCurrent", EGL14.eglGetError());
      return false;
    }
    return true;
  }
  
  public int wc()
  {
    if (!EGL14.eglSwapBuffers(this.bwe, this.bwf)) {
      return EGL14.eglGetError();
    }
    return 12288;
  }
  
  public void wd()
  {
    we();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ê»
 * JD-Core Version:    0.7.0.1
 */