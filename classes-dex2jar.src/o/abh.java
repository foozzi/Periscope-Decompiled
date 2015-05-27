package o;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

public class abh
{
  private EGLContext bvA;
  private boolean bvB;
  private boolean bvC;
  private Surface bvD = null;
  private EGLSurface bvx;
  private EGLDisplay bvy;
  private EGLConfig bvz;
  
  public void vQ()
  {
    if (this.bvy == null) {
      return;
    }
    EGL14.eglMakeCurrent(this.bvy, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
    EGL14.eglDestroySurface(this.bvy, this.bvx);
    EGL14.eglDestroyContext(this.bvy, this.bvA);
    EGL14.eglTerminate(this.bvy);
    this.bvA = null;
    this.bvx = null;
    this.bvy = null;
    if (this.bvD != null)
    {
      this.bvD.release();
      this.bvD = null;
    }
  }
  
  public EGLContext vR()
  {
    return this.bvA;
  }
  
  public boolean vS()
  {
    if (this.bvB) {
      throw new RuntimeException("Unbalanced calls to makeCurrent/unsetCurrent!");
    }
    boolean bool = true;
    this.bvC = false;
    if (!this.bvA.equals(EGL14.eglGetCurrentContext()))
    {
      if ((EGL14.eglMakeCurrent(this.bvy, this.bvx, this.bvx, this.bvA)) && (EGL14.eglGetError() == 12288)) {
        bool = true;
      } else {
        bool = false;
      }
      this.bvC = true;
    }
    if (bool) {
      this.bvB = true;
    }
    return bool;
  }
  
  public boolean vT()
  {
    this.bvB = false;
    if (this.bvC) {
      return (EGL14.eglMakeCurrent(this.bvy, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)) && (EGL14.eglGetError() == 12288);
    }
    return true;
  }
  
  public void vU()
  {
    EGL14.eglSwapBuffers(this.bvy, this.bvx);
  }
  
  public abl.aux vV()
  {
    return new abh.ˊ(this);
  }
  
  public abl.ˏ vW()
  {
    return new if();
  }
  
  public void ʵ(long paramLong)
  {
    EGLExt.eglPresentationTimeANDROID(this.bvy, this.bvx, paramLong);
  }
  
  public boolean ˊ(abh.ˋ paramˋ)
  {
    try
    {
      if (vS())
      {
        paramˋ.uB();
        vT();
      }
      return false;
    }
    finally
    {
      paramˋ = finally;
      throw paramˋ;
    }
  }
  
  public boolean ˊ(abh paramabh, Surface paramSurface)
  {
    this.bvy = EGL14.eglGetDisplay(0);
    if (this.bvy == null) {
      return false;
    }
    int i;
    if (paramSurface != null) {
      i = 12610;
    } else {
      i = 12344;
    }
    int j;
    if (paramSurface != null) {
      j = 1;
    } else {
      j = 12344;
    }
    Object localObject = new int[2];
    int[] arrayOfInt = new int[2];
    if (!EGL14.eglInitialize(this.bvy, arrayOfInt, 0, (int[])localObject, 0)) {
      return false;
    }
    localObject = new EGLConfig[1];
    arrayOfInt = new int[1];
    if (!EGL14.eglChooseConfig(this.bvy, new int[] { 12324, 8, 12323, 8, 12322, 8, 12321, 0, 12339, 5, 12352, 4, i, j, 12344 }, 0, (EGLConfig[])localObject, 0, 1, arrayOfInt, 0)) {
      return false;
    }
    this.bvz = localObject[0];
    if (paramabh != null) {
      paramabh = paramabh.vR();
    } else {
      paramabh = EGL14.EGL_NO_CONTEXT;
    }
    paramabh = EGL14.eglCreateContext(this.bvy, this.bvz, paramabh, new int[] { 12440, 2, 12344 }, 0);
    if (EGL14.eglGetError() != 12288) {
      return false;
    }
    this.bvA = paramabh;
    if (paramSurface != null)
    {
      this.bvD = paramSurface;
      this.bvx = EGL14.eglCreateWindowSurface(this.bvy, this.bvz, paramSurface, new int[] { 12344 }, 0);
    }
    else
    {
      this.bvx = EGL14.eglCreatePbufferSurface(this.bvy, this.bvz, new int[] { 12375, 4, 12374, 4, 12344 }, 0);
    }
    return (this.bvx != EGL14.EGL_NO_SURFACE) && (EGL14.eglGetError() == 12288);
  }
  
  public void ˋ(Surface paramSurface)
  {
    if (!this.bvB) {
      throw new IllegalStateException("Context must be current when calling bindSurface");
    }
    vT();
    EGL14.eglDestroySurface(this.bvy, this.bvx);
    this.bvx = EGL14.eglCreateWindowSurface(this.bvy, this.bvz, paramSurface, new int[] { 12344 }, 0);
    vS();
    if (this.bvD != null) {
      this.bvD.release();
    }
    this.bvD = paramSurface;
  }
  
  static class if
    implements abl.ˏ
  {
    public EGLConfig ˊ(EGLDisplay paramEGLDisplay)
    {
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[1];
      int[] arrayOfInt = new int[1];
      EGL14.eglChooseConfig(paramEGLDisplay, new int[] { 12324, 8, 12323, 8, 12322, 8, 12321, 0, 12352, 4, 12344 }, 0, arrayOfEGLConfig, 0, 1, arrayOfInt, 0);
      return arrayOfEGLConfig[0];
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abh
 * JD-Core Version:    0.7.0.1
 */