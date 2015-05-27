package o;

final class ᓛ
{
  public final long[] uV;
  public final int[] uW;
  public final int[] uX;
  public final int wK;
  public final long[] wL;
  
  ᓛ(long[] paramArrayOfLong1, int[] paramArrayOfInt1, long[] paramArrayOfLong2, int[] paramArrayOfInt2)
  {
    boolean bool;
    if (paramArrayOfInt1.length == paramArrayOfLong2.length) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (paramArrayOfLong1.length == paramArrayOfLong2.length) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (paramArrayOfInt2.length == paramArrayOfLong2.length) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    this.uV = paramArrayOfLong1;
    this.uW = paramArrayOfInt1;
    this.wL = paramArrayOfLong2;
    this.uX = paramArrayOfInt2;
    this.wK = paramArrayOfLong1.length;
  }
  
  public int ʳ(long paramLong)
  {
    int i = ผ.ˊ(this.wL, paramLong, true, false);
    while (i >= 0)
    {
      if ((this.wL[i] <= paramLong) && ((this.uX[i] & 0x1) != 0)) {
        return i;
      }
      i -= 1;
    }
    return -1;
  }
  
  public int ʴ(long paramLong)
  {
    int i = ผ.ˋ(this.wL, paramLong, true, false);
    while (i < this.wL.length)
    {
      if ((this.wL[i] >= paramLong) && ((this.uX[i] & 0x1) != 0)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */