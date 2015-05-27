package o;

import android.opengl.GLES20;
import java.util.Stack;

public class abm
{
  protected abi bwC;
  protected int bwD;
  protected Stack<abk> bwE = new Stack();
  
  public void wr()
  {
    this.bwC.tR();
    GLES20.glBindBuffer(34962, 0);
    int i = 0;
    while (i < this.bwD)
    {
      GLES20.glActiveTexture(33984 + i);
      GLES20.glBindTexture(3553, 0);
      GLES20.glBindTexture(36197, 0);
      i += 1;
    }
  }
  
  void ws()
  {
    this.bwE.pop();
    ((abk)this.bwE.peek()).tQ();
    if (this.bwE.size() == 1) {
      this.bwE.pop();
    }
  }
  
  public void ˊ(String paramString, abo paramabo, int paramInt1, int paramInt2)
  {
    int i = this.bwC.ﹿ(paramString);
    if (i != -1)
    {
      GLES20.glActiveTexture(this.bwD + 33984);
      paramInt1 = paramabo.ﹼ(paramInt1, paramInt2);
      GLES20.glUniform1i(i, this.bwD);
      this.bwD += paramInt1;
    }
  }
  
  public void ˊ(abi paramabi)
  {
    this.bwC = paramabi;
    this.bwD = 0;
    this.bwC.tQ();
  }
  
  void ˊ(abk paramabk)
  {
    if (this.bwE.size() == 0)
    {
      int[] arrayOfInt1 = new int[4];
      GLES20.glGetIntegerv(2978, arrayOfInt1, 0);
      int[] arrayOfInt2 = new int[1];
      GLES20.glGetIntegerv(36006, arrayOfInt2, 0);
      this.bwE.push(new abk(arrayOfInt1[2], arrayOfInt1[3], arrayOfInt2[0]));
    }
    this.bwE.push(paramabk);
    paramabk.tQ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abm
 * JD-Core Version:    0.7.0.1
 */