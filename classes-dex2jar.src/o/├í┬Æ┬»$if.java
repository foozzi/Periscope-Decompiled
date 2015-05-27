package o;

final class ᒯ$if
{
  private int uU = 1000;
  private long[] uV = new long[this.uU];
  private int[] uW = new int[this.uU];
  private int[] uX = new int[this.uU];
  private long[] uY = new long[this.uU];
  private byte[][] uZ = new byte[this.uU][];
  private int va;
  private int vb;
  private int vc;
  private int vd;
  
  public void clear()
  {
    this.vb = 0;
    this.vc = 0;
    this.vd = 0;
    this.va = 0;
  }
  
  public void ˊ(long paramLong1, int paramInt1, long paramLong2, int paramInt2, byte[] paramArrayOfByte)
  {
    try
    {
      this.uY[this.vd] = paramLong1;
      this.uV[this.vd] = paramLong2;
      this.uW[this.vd] = paramInt2;
      this.uX[this.vd] = paramInt1;
      this.uZ[this.vd] = paramArrayOfByte;
      this.va += 1;
      if (this.va == this.uU)
      {
        paramInt1 = this.uU + 1000;
        paramArrayOfByte = new long[paramInt1];
        long[] arrayOfLong = new long[paramInt1];
        int[] arrayOfInt1 = new int[paramInt1];
        int[] arrayOfInt2 = new int[paramInt1];
        byte[][] arrayOfByte = new byte[paramInt1][];
        paramInt2 = this.uU - this.vc;
        System.arraycopy(this.uV, this.vc, paramArrayOfByte, 0, paramInt2);
        System.arraycopy(this.uY, this.vc, arrayOfLong, 0, paramInt2);
        System.arraycopy(this.uX, this.vc, arrayOfInt1, 0, paramInt2);
        System.arraycopy(this.uW, this.vc, arrayOfInt2, 0, paramInt2);
        System.arraycopy(this.uZ, this.vc, arrayOfByte, 0, paramInt2);
        int i = this.vc;
        System.arraycopy(this.uV, 0, paramArrayOfByte, paramInt2, i);
        System.arraycopy(this.uY, 0, arrayOfLong, paramInt2, i);
        System.arraycopy(this.uX, 0, arrayOfInt1, paramInt2, i);
        System.arraycopy(this.uW, 0, arrayOfInt2, paramInt2, i);
        System.arraycopy(this.uZ, 0, arrayOfByte, paramInt2, i);
        this.uV = paramArrayOfByte;
        this.uY = arrayOfLong;
        this.uX = arrayOfInt1;
        this.uW = arrayOfInt2;
        this.uZ = arrayOfByte;
        this.vc = 0;
        this.vd = this.uU;
        this.va = this.uU;
        this.uU = paramInt1;
      }
      else
      {
        this.vd += 1;
        if (this.vd == this.uU) {
          this.vd = 0;
        }
      }
      return;
    }
    finally {}
  }
  
  public boolean ˋ(ڋ paramڋ, ᒯ.ˊ paramˊ)
  {
    try
    {
      if (this.va == 0) {
        return false;
      }
      paramڋ.sJ = this.uY[this.vc];
      paramڋ.size = this.uW[this.vc];
      paramڋ.flags = this.uX[this.vc];
      paramˊ.oR = this.uV[this.vc];
      paramˊ.ve = this.uZ[this.vc];
      return true;
    }
    finally {}
  }
  
  public long ᚁ()
  {
    try
    {
      this.va -= 1;
      int i = this.vc;
      this.vc = (i + 1);
      this.vb += 1;
      if (this.vc == this.uU) {
        this.vc = 0;
      }
      long l1;
      if (this.va > 0)
      {
        l1 = this.uV[this.vc];
      }
      else
      {
        l1 = this.uW[i];
        long l2 = this.uV[i];
        l1 += l2;
      }
      return l1;
    }
    finally {}
  }
  
  public long ﹺ(long paramLong)
  {
    try
    {
      if ((this.va == 0) || (paramLong < this.uY[this.vc])) {
        return -1L;
      }
      if (this.vd == 0) {
        i = this.uU;
      } else {
        i = this.vd;
      }
      if (paramLong > this.uY[(i - 1)]) {
        return -1L;
      }
      int i = 0;
      int k = -1;
      int j = this.vc;
      while ((j != this.vd) && (this.uY[j] <= paramLong))
      {
        if ((this.uX[j] & 0x1) != 0) {
          k = i;
        }
        j = (j + 1) % this.uU;
        i += 1;
      }
      if (k == -1) {
        return -1L;
      }
      this.va -= k;
      this.vc = ((this.vc + k) % this.uU);
      this.vb += k;
      paramLong = this.uV[this.vc];
      return paramLong;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¯.if
 * JD-Core Version:    0.7.0.1
 */