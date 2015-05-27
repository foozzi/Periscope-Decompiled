package o;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;

class abl$ˊ
  extends abl.if
{
  private int[] bvW = new int[1];
  protected int bvX;
  protected int bvY;
  protected int bvZ;
  protected int bwa;
  protected int bwb;
  protected int bwc;
  
  public abl$ˊ(abl paramabl, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramabl, new int[] { 12324, paramInt1, 12323, paramInt2, 12322, paramInt3, 12321, paramInt4, 12325, paramInt5, 12326, paramInt6, 12344 });
    this.bvX = paramInt1;
    this.bvY = paramInt2;
    this.bvZ = paramInt3;
    this.bwa = paramInt4;
    this.bwb = paramInt5;
    this.bwc = paramInt6;
  }
  
  private int ˊ(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
  {
    if (EGL14.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, this.bvW, 0)) {
      return this.bvW[0];
    }
    return paramInt2;
  }
  
  public EGLConfig ˊ(EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
  {
    int j = paramArrayOfEGLConfig.length;
    int i = 0;
    while (i < j)
    {
      EGLConfig localEGLConfig = paramArrayOfEGLConfig[i];
      int k = ˊ(paramEGLDisplay, localEGLConfig, 12325, 0);
      int m = ˊ(paramEGLDisplay, localEGLConfig, 12326, 0);
      if ((k >= this.bwb) && (m >= this.bwc))
      {
        k = ˊ(paramEGLDisplay, localEGLConfig, 12324, 0);
        m = ˊ(paramEGLDisplay, localEGLConfig, 12323, 0);
        int n = ˊ(paramEGLDisplay, localEGLConfig, 12322, 0);
        int i1 = ˊ(paramEGLDisplay, localEGLConfig, 12321, 0);
        if ((k == this.bvX) && (m == this.bvY) && (n == this.bvZ) && (i1 == this.bwa)) {
          return localEGLConfig;
        }
      }
      i += 1;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ë
 * JD-Core Version:    0.7.0.1
 */