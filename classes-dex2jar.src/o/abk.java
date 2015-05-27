package o;

import android.opengl.GLES20;
import tv.periscope.android.util.Size;

public class abk
{
  private abo bvI;
  private int bvJ;
  private int bvd;
  private int γ;
  
  public abk(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bvd = paramInt1;
    this.γ = paramInt2;
    this.bvJ = paramInt3;
  }
  
  public abk(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.bvd = paramInt1;
    this.γ = paramInt2;
    int[] arrayOfInt = new int[1];
    GLES20.glGenFramebuffers(1, arrayOfInt, 0);
    this.bvJ = arrayOfInt[0];
    arrayOfInt = new int[1];
    GLES20.glGetIntegerv(36006, arrayOfInt, 0);
    GLES20.glBindFramebuffer(36160, this.bvJ);
    this.bvI = new abo(Size.ﻧ(paramInt1, paramInt2));
    GLES20.glBindTexture(3553, this.bvI.wx());
    GLES20.glTexParameteri(3553, 10242, 33071);
    GLES20.glTexParameteri(3553, 10243, 33071);
    GLES20.glTexParameteri(3553, 10241, 9729);
    GLES20.glTexParameteri(3553, 10240, 9729);
    GLES20.glTexImage2D(3553, 0, paramInt3, paramInt1, paramInt2, 0, paramInt3, paramInt4, null);
    GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.bvI.wx(), 0);
    GLES20.glBindTexture(3553, 0);
    GLES20.glBindFramebuffer(36160, arrayOfInt[0]);
  }
  
  public void tQ()
  {
    GLES20.glBindFramebuffer(36160, this.bvJ);
    GLES20.glViewport(0, 0, this.bvd, this.γ);
  }
  
  public void vQ()
  {
    this.bvI.vQ();
    GLES20.glDeleteFramebuffers(1, new int[] { this.bvJ }, 0);
  }
  
  public abo vY()
  {
    return this.bvI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abk
 * JD-Core Version:    0.7.0.1
 */