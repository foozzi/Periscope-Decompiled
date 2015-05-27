package o;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import tv.periscope.android.util.Size;

public class abn
  extends abo
{
  private SurfaceTexture bwF = new SurfaceTexture(this.bwI);
  private volatile boolean bwG;
  private int bwH;
  
  public abn()
  {
    super(null);
  }
  
  public SurfaceTexture getSurfaceTexture()
  {
    return this.bwF;
  }
  
  public long getTimestamp()
  {
    return this.bwF.getTimestamp();
  }
  
  public void vQ()
  {
    super.vQ();
    this.bwF.releaseTexImage();
    this.bwF.release();
    synchronized (this.bwF)
    {
      this.bwF.notifyAll();
      return;
    }
  }
  
  public int wt()
  {
    synchronized (this.bwF)
    {
      int i = this.bwH;
      return i;
    }
  }
  
  public void wu()
  {
    synchronized (this.bwF)
    {
      this.bwF.updateTexImage();
      return;
    }
  }
  
  public boolean wv()
  {
    synchronized (this.bwF)
    {
      if (this.bwG)
      {
        this.bwG = false;
        return true;
      }
      try
      {
        this.bwF.wait(100L);
      }
      catch (InterruptedException localInterruptedException) {}
      if (this.bwG)
      {
        this.bwG = false;
        return true;
      }
    }
    return false;
  }
  
  public void ˊ(Size paramSize, int paramInt)
  {
    synchronized (this.bwF)
    {
      this.bwF.updateTexImage();
      this.bwJ = paramSize;
      this.bwH = paramInt;
      this.bwG = true;
      this.bwF.notifyAll();
      return;
    }
  }
  
  public int ﹼ(int paramInt1, int paramInt2)
  {
    GLES20.glBindTexture(36197, this.bwI);
    GLES20.glTexParameteri(36197, 10241, paramInt1);
    GLES20.glTexParameteri(36197, 10240, paramInt1);
    GLES20.glTexParameteri(36197, 10242, paramInt2);
    GLES20.glTexParameteri(36197, 10243, paramInt2);
    return 3;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abn
 * JD-Core Version:    0.7.0.1
 */