package o;

import android.opengl.GLES20;
import tv.periscope.android.util.Size;

public class abo
{
  protected int bwI;
  protected Size bwJ;
  
  public abo(Size paramSize)
  {
    this.bwJ = paramSize;
    paramSize = new int[1];
    GLES20.glGenTextures(1, paramSize, 0);
    this.bwI = paramSize[0];
  }
  
  void vQ()
  {
    GLES20.glDeleteTextures(1, new int[] { this.bwI }, 0);
  }
  
  public Size ww()
  {
    return this.bwJ;
  }
  
  public int wx()
  {
    return this.bwI;
  }
  
  public int ﹼ(int paramInt1, int paramInt2)
  {
    GLES20.glBindTexture(3553, this.bwI);
    GLES20.glTexParameteri(3553, 10241, paramInt1);
    GLES20.glTexParameteri(3553, 10240, paramInt1);
    GLES20.glTexParameteri(3553, 10242, paramInt2);
    GLES20.glTexParameteri(3553, 10243, paramInt2);
    return 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abo
 * JD-Core Version:    0.7.0.1
 */