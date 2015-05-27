package org.spongycastle.crypto.engines;

public final class CAST6Engine
  extends CAST5Engine
{
  protected int[] aJf = new int[48];
  protected int[] aJg = new int[48];
  protected int[] aJk = new int['À'];
  protected int[] aJl = new int['À'];
  private int[] aJm = new int[8];
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "CAST6";
  }
  
  public void reset() {}
  
  protected void ˇ(byte[] paramArrayOfByte)
  {
    int m = 1518500249;
    int j = 19;
    int i = 0;
    while (i < 24)
    {
      int k = 0;
      while (k < 8)
      {
        this.aJl[(i * 8 + k)] = m;
        m += 1859775393;
        this.aJk[(i * 8 + k)] = j;
        j = j + 17 & 0x1F;
        k += 1;
      }
      i += 1;
    }
    byte[] arrayOfByte = new byte[64];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    i = 0;
    while (i < 8)
    {
      this.aJm[i] = ˍ(arrayOfByte, i * 4);
      i += 1;
    }
    i = 0;
    while (i < 12)
    {
      j = i * 2 * 8;
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[6] ^= ﹺ(this.aJm[7], this.aJl[j], this.aJk[j]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[5] ^= ｰ(this.aJm[6], this.aJl[(j + 1)], this.aJk[(j + 1)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[4] ^= ʳ(this.aJm[5], this.aJl[(j + 2)], this.aJk[(j + 2)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[3] ^= ﹺ(this.aJm[4], this.aJl[(j + 3)], this.aJk[(j + 3)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[2] ^= ｰ(this.aJm[3], this.aJl[(j + 4)], this.aJk[(j + 4)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[1] ^= ʳ(this.aJm[2], this.aJl[(j + 5)], this.aJk[(j + 5)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[0] ^= ﹺ(this.aJm[1], this.aJl[(j + 6)], this.aJk[(j + 6)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[7] ^= ｰ(this.aJm[0], this.aJl[(j + 7)], this.aJk[(j + 7)]);
      j = (i * 2 + 1) * 8;
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[6] ^= ﹺ(this.aJm[7], this.aJl[j], this.aJk[j]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[5] ^= ｰ(this.aJm[6], this.aJl[(j + 1)], this.aJk[(j + 1)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[4] ^= ʳ(this.aJm[5], this.aJl[(j + 2)], this.aJk[(j + 2)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[3] ^= ﹺ(this.aJm[4], this.aJl[(j + 3)], this.aJk[(j + 3)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[2] ^= ｰ(this.aJm[3], this.aJl[(j + 4)], this.aJk[(j + 4)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[1] ^= ʳ(this.aJm[2], this.aJl[(j + 5)], this.aJk[(j + 5)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[0] ^= ﹺ(this.aJm[1], this.aJl[(j + 6)], this.aJk[(j + 6)]);
      paramArrayOfByte = this.aJm;
      paramArrayOfByte[7] ^= ｰ(this.aJm[0], this.aJl[(j + 7)], this.aJk[(j + 7)]);
      this.aJf[(i * 4)] = (this.aJm[0] & 0x1F);
      this.aJf[(i * 4 + 1)] = (this.aJm[2] & 0x1F);
      this.aJf[(i * 4 + 2)] = (this.aJm[4] & 0x1F);
      this.aJf[(i * 4 + 3)] = (this.aJm[6] & 0x1F);
      this.aJg[(i * 4)] = this.aJm[7];
      this.aJg[(i * 4 + 1)] = this.aJm[5];
      this.aJg[(i * 4 + 2)] = this.aJm[3];
      this.aJg[(i * 4 + 3)] = this.aJm[1];
      i += 1;
    }
  }
  
  protected final void ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < 6)
    {
      j = i * 4;
      paramInt3 ^= ﹺ(paramInt4, this.aJg[j], this.aJf[j]);
      paramInt2 ^= ｰ(paramInt3, this.aJg[(j + 1)], this.aJf[(j + 1)]);
      paramInt1 ^= ʳ(paramInt2, this.aJg[(j + 2)], this.aJf[(j + 2)]);
      paramInt4 ^= ﹺ(paramInt1, this.aJg[(j + 3)], this.aJf[(j + 3)]);
      i += 1;
    }
    int j = 6;
    i = paramInt4;
    paramInt4 = paramInt1;
    paramInt1 = j;
    while (paramInt1 < 12)
    {
      j = paramInt1 * 4;
      i ^= ﹺ(paramInt4, this.aJg[(j + 3)], this.aJf[(j + 3)]);
      paramInt4 ^= ʳ(paramInt2, this.aJg[(j + 2)], this.aJf[(j + 2)]);
      paramInt2 ^= ｰ(paramInt3, this.aJg[(j + 1)], this.aJf[(j + 1)]);
      paramInt3 ^= ﹺ(i, this.aJg[j], this.aJf[j]);
      paramInt1 += 1;
    }
    paramArrayOfInt[0] = paramInt4;
    paramArrayOfInt[1] = paramInt2;
    paramArrayOfInt[2] = paramInt3;
    paramArrayOfInt[3] = i;
  }
  
  protected final void ˋ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < 6)
    {
      j = (11 - i) * 4;
      paramInt3 ^= ﹺ(paramInt4, this.aJg[j], this.aJf[j]);
      paramInt2 ^= ｰ(paramInt3, this.aJg[(j + 1)], this.aJf[(j + 1)]);
      paramInt1 ^= ʳ(paramInt2, this.aJg[(j + 2)], this.aJf[(j + 2)]);
      paramInt4 ^= ﹺ(paramInt1, this.aJg[(j + 3)], this.aJf[(j + 3)]);
      i += 1;
    }
    int j = 6;
    i = paramInt4;
    paramInt4 = paramInt1;
    paramInt1 = j;
    while (paramInt1 < 12)
    {
      j = (11 - paramInt1) * 4;
      i ^= ﹺ(paramInt4, this.aJg[(j + 3)], this.aJf[(j + 3)]);
      paramInt4 ^= ʳ(paramInt2, this.aJg[(j + 2)], this.aJf[(j + 2)]);
      paramInt2 ^= ｰ(paramInt3, this.aJg[(j + 1)], this.aJf[(j + 1)]);
      paramInt3 ^= ﹺ(i, this.aJg[j], this.aJf[j]);
      paramInt1 += 1;
    }
    paramArrayOfInt[0] = paramInt4;
    paramArrayOfInt[1] = paramInt2;
    paramArrayOfInt[2] = paramInt3;
    paramArrayOfInt[3] = i;
  }
  
  protected int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int[] arrayOfInt = new int[4];
    ˊ(ˍ(paramArrayOfByte1, paramInt1), ˍ(paramArrayOfByte1, paramInt1 + 4), ˍ(paramArrayOfByte1, paramInt1 + 8), ˍ(paramArrayOfByte1, paramInt1 + 12), arrayOfInt);
    ˋ(arrayOfInt[0], paramArrayOfByte2, paramInt2);
    ˋ(arrayOfInt[1], paramArrayOfByte2, paramInt2 + 4);
    ˋ(arrayOfInt[2], paramArrayOfByte2, paramInt2 + 8);
    ˋ(arrayOfInt[3], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  protected int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int[] arrayOfInt = new int[4];
    ˋ(ˍ(paramArrayOfByte1, paramInt1), ˍ(paramArrayOfByte1, paramInt1 + 4), ˍ(paramArrayOfByte1, paramInt1 + 8), ˍ(paramArrayOfByte1, paramInt1 + 12), arrayOfInt);
    ˋ(arrayOfInt[0], paramArrayOfByte2, paramInt2);
    ˋ(arrayOfInt[1], paramArrayOfByte2, paramInt2 + 4);
    ˋ(arrayOfInt[2], paramArrayOfByte2, paramInt2 + 8);
    ˋ(arrayOfInt[3], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.CAST6Engine
 * JD-Core Version:    0.7.0.1
 */