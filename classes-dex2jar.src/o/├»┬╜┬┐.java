package o;

import java.io.FilterInputStream;
import java.io.InputStream;

public class ｿ
  extends FilterInputStream
{
  private int nh = -2147483648;
  
  public ｿ(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long ˏ(long paramLong)
  {
    if (this.nh == 0) {
      return -1L;
    }
    if ((this.nh != -2147483648) && (paramLong > this.nh)) {
      return this.nh;
    }
    return paramLong;
  }
  
  private void ᐝ(long paramLong)
  {
    if ((this.nh != -2147483648) && (paramLong != -1L)) {
      this.nh = ((int)(this.nh - paramLong));
    }
  }
  
  public int available()
  {
    if (this.nh == -2147483648) {
      return super.available();
    }
    return Math.min(this.nh, super.available());
  }
  
  public void mark(int paramInt)
  {
    super.mark(paramInt);
    this.nh = paramInt;
  }
  
  public int read()
  {
    if (ˏ(1L) == -1L) {
      return -1;
    }
    int i = super.read();
    ᐝ(1L);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = (int)ˏ(paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    ᐝ(paramInt1);
    return paramInt1;
  }
  
  public void reset()
  {
    super.reset();
    this.nh = -2147483648;
  }
  
  public long skip(long paramLong)
  {
    paramLong = ˏ(paramLong);
    if (paramLong == -1L) {
      return -1L;
    }
    paramLong = super.skip(paramLong);
    ᐝ(paramLong);
    return paramLong;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½¿
 * JD-Core Version:    0.7.0.1
 */