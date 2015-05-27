package o;

import java.util.Arrays;

final class ᚆ$if
{
  private final int xm;
  private boolean xn;
  private boolean xo;
  public byte[] xp;
  public int xq;
  
  public ᚆ$if(int paramInt1, int paramInt2)
  {
    this.xm = paramInt1;
    this.xp = new byte[paramInt2 + 4];
    this.xp[2] = 1;
    this.xp[3] = ((byte)paramInt1);
  }
  
  public boolean isCompleted()
  {
    return this.xo;
  }
  
  public void reset()
  {
    this.xn = false;
    this.xo = false;
  }
  
  public void ʻ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.xn) {
      return;
    }
    paramInt2 -= paramInt1;
    if (this.xp.length < this.xq + paramInt2) {
      this.xp = Arrays.copyOf(this.xp, (this.xq + paramInt2) * 2);
    }
    System.arraycopy(paramArrayOfByte, paramInt1, this.xp, this.xq, paramInt2);
    this.xq += paramInt2;
  }
  
  public void ᕪ(int paramInt)
  {
    boolean bool;
    if (!this.xn) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    if (paramInt == this.xm) {
      bool = true;
    } else {
      bool = false;
    }
    this.xn = bool;
    if (this.xn)
    {
      this.xq = 4;
      this.xo = false;
    }
  }
  
  public boolean ᙆ(int paramInt)
  {
    if (!this.xn) {
      return false;
    }
    this.xq -= paramInt;
    this.xn = false;
    this.xo = true;
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.if
 * JD-Core Version:    0.7.0.1
 */