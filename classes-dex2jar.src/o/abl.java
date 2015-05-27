package o;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.lang.ref.WeakReference;

public class abl
  extends SurfaceView
  implements SurfaceHolder.Callback
{
  private static final abl.ʽ bvK = new abl.ʽ(null);
  private final WeakReference<abl> bvL = new WeakReference(this);
  private abl.ʼ bvM;
  private abl.ͺ bvN;
  private abl.ˏ bvO;
  private aux bvP;
  private abl.ᐝ bvQ;
  private int bvR;
  private int bvS;
  private boolean bvT;
  private boolean mDetached;
  
  public abl(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public abl(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  private void init()
  {
    getHolder().addCallback(this);
  }
  
  private void vZ()
  {
    if (this.bvM != null) {
      throw new IllegalStateException("setRenderer has already been called for this instance.");
    }
  }
  
  protected void finalize()
  {
    try
    {
      if (this.bvM != null) {
        this.bvM.wm();
      }
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.mDetached) && (this.bvN != null))
    {
      int i = 1;
      if (this.bvM != null) {
        i = this.bvM.getRenderMode();
      }
      this.bvM = new abl.ʼ(this.bvL);
      if (i != 1) {
        this.bvM.setRenderMode(i);
      }
      this.bvM.start();
    }
    this.mDetached = false;
  }
  
  protected void onDetachedFromWindow()
  {
    if (this.bvM != null) {
      this.bvM.wm();
    }
    this.mDetached = true;
    super.onDetachedFromWindow();
  }
  
  public void requestRender()
  {
    if (this.bvM != null) {
      this.bvM.requestRender();
    }
  }
  
  public void setDebugFlags(int paramInt)
  {
    this.bvR = paramInt;
  }
  
  public void setEGLConfigChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setEGLConfigChooser(new abl.ˊ(this, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6));
  }
  
  public void setEGLConfigChooser(abl.ˏ paramˏ)
  {
    vZ();
    this.bvO = paramˏ;
  }
  
  public void setEGLConfigChooser(boolean paramBoolean)
  {
    setEGLConfigChooser(new abl.ι(this, paramBoolean));
  }
  
  public void setEGLContextClientVersion(int paramInt)
  {
    vZ();
    this.bvS = paramInt;
  }
  
  public void setEGLContextFactory(aux paramaux)
  {
    vZ();
    this.bvP = paramaux;
  }
  
  public void setEGLWindowSurfaceFactory(abl.ᐝ paramᐝ)
  {
    vZ();
    this.bvQ = paramᐝ;
  }
  
  public void setPreserveEGLContextOnPause(boolean paramBoolean)
  {
    this.bvT = paramBoolean;
  }
  
  public void setRenderMode(int paramInt)
  {
    this.bvM.setRenderMode(paramInt);
  }
  
  public void setRenderer(abl.ͺ paramͺ)
  {
    vZ();
    if (this.bvO == null) {
      this.bvO = new abl.ι(this, true);
    }
    if (this.bvP == null) {
      this.bvP = new abl.ˋ(this, null);
    }
    if (this.bvQ == null) {
      this.bvQ = new abl.ˎ(null);
    }
    this.bvN = paramͺ;
    this.bvM = new abl.ʼ(this.bvL);
    this.bvM.start();
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.bvM != null) {
      this.bvM.ﹻ(paramInt2, paramInt3);
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (this.bvM != null) {
      this.bvM.wk();
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (this.bvM != null) {
      this.bvM.wl();
    }
  }
  
  public static abstract interface aux
  {
    public abstract EGLContext ˊ(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig);
    
    public abstract void ˊ(EGLDisplay paramEGLDisplay, EGLContext paramEGLContext);
  }
  
  abstract class if
    implements abl.ˏ
  {
    protected int[] bvU = ﹶ(paramArrayOfInt);
    
    public if(int[] paramArrayOfInt) {}
    
    private int[] ﹶ(int[] paramArrayOfInt)
    {
      if ((abl.ˋ(abl.this) != 2) && (abl.ˋ(abl.this) != 3)) {
        return paramArrayOfInt;
      }
      int i = paramArrayOfInt.length;
      int[] arrayOfInt = new int[i + 2];
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i - 1);
      arrayOfInt[(i - 1)] = 12352;
      if (abl.ˋ(abl.this) == 2) {
        arrayOfInt[i] = 4;
      } else {
        arrayOfInt[i] = 64;
      }
      arrayOfInt[(i + 1)] = 12344;
      return arrayOfInt;
    }
    
    public EGLConfig ˊ(EGLDisplay paramEGLDisplay)
    {
      int[] arrayOfInt = new int[1];
      if (!EGL14.eglChooseConfig(paramEGLDisplay, this.bvU, 0, null, 0, 0, arrayOfInt, 0)) {
        throw new IllegalArgumentException("eglChooseConfig failed");
      }
      int i = arrayOfInt[0];
      if (i <= 0) {
        throw new IllegalArgumentException("No configs match configSpec");
      }
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
      if (!EGL14.eglChooseConfig(paramEGLDisplay, this.bvU, 0, arrayOfEGLConfig, 0, i, arrayOfInt, 0)) {
        throw new IllegalArgumentException("eglChooseConfig#2 failed");
      }
      paramEGLDisplay = ˊ(paramEGLDisplay, arrayOfEGLConfig);
      if (paramEGLDisplay == null) {
        throw new IllegalArgumentException("No config chosen");
      }
      return paramEGLDisplay;
    }
    
    abstract EGLConfig ˊ(EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl
 * JD-Core Version:    0.7.0.1
 */