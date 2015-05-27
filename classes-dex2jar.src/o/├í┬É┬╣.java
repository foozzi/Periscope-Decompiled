package o;

import java.io.EOFException;

public final class ᐹ
  implements ᒑ
{
  private static final byte[] tT = new byte[4096];
  private long length;
  private final ϒ tF;
  private long tU;
  
  public ᐹ(ϒ paramϒ, long paramLong1, long paramLong2)
  {
    this.tF = paramϒ;
    this.tU = paramLong1;
    this.length = paramLong2;
  }
  
  public long getPosition()
  {
    return this.tU;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (Thread.interrupted()) {
      throw new InterruptedException();
    }
    paramInt1 = this.tF.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      return -1;
    }
    this.tU += paramInt1;
    return paramInt1;
  }
  
  public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ˊ(paramArrayOfByte, paramInt1, paramInt2, false);
  }
  
  public boolean ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = paramInt2;
    int i = paramInt1;
    paramInt1 = j;
    while (paramInt1 > 0)
    {
      if (Thread.interrupted()) {
        throw new InterruptedException();
      }
      j = this.tF.read(paramArrayOfByte, i, paramInt1);
      if (j == -1)
      {
        if ((paramBoolean) && (paramInt1 == paramInt2)) {
          return false;
        }
        throw new EOFException();
      }
      i += j;
      paramInt1 -= j;
    }
    this.tU += paramInt2;
    return true;
  }
  
  public void נ(int paramInt)
  {
    int i = paramInt;
    while (i > 0)
    {
      if (Thread.interrupted()) {
        throw new InterruptedException();
      }
      int j = this.tF.read(tT, 0, Math.min(tT.length, i));
      if (j == -1) {
        throw new EOFException();
      }
      i -= j;
    }
    this.tU += paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¹
 * JD-Core Version:    0.7.0.1
 */