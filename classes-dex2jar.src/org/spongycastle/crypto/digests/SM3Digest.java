package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class SM3Digest
  extends GeneralDigest
{
  private static final int[] aHp = new int[64];
  private int aGw;
  private int[] aHl = new int[8];
  private int[] aHm = new int[16];
  private int[] aHn = new int[68];
  private int[] aHo = new int[64];
  
  static
  {
    int i = 0;
    while (i < 16)
    {
      aHp[i] = (2043430169 << i | 2043430169 >>> 32 - i);
      i += 1;
    }
    i = 16;
    while (i < 64)
    {
      int j = i % 32;
      aHp[i] = (2055708042 << j | 2055708042 >>> 32 - j);
      i += 1;
    }
  }
  
  public SM3Digest()
  {
    reset();
  }
  
  public SM3Digest(SM3Digest paramSM3Digest)
  {
    super(paramSM3Digest);
    ˊ(paramSM3Digest);
  }
  
  private void ˊ(SM3Digest paramSM3Digest)
  {
    System.arraycopy(paramSM3Digest.aHl, 0, this.aHl, 0, this.aHl.length);
    System.arraycopy(paramSM3Digest.aHm, 0, this.aHm, 0, this.aHm.length);
    this.aGw = paramSM3Digest.aGw;
  }
  
  private int ᓵ(int paramInt)
  {
    return paramInt ^ (paramInt << 9 | paramInt >>> 23) ^ (paramInt << 17 | paramInt >>> 15);
  }
  
  private int ᔿ(int paramInt)
  {
    return paramInt ^ (paramInt << 15 | paramInt >>> 17) ^ (paramInt << 23 | paramInt >>> 9);
  }
  
  private int ᵔ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int ᵢ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  private int ⁱ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int ﹶ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    Pack.ʾ(this.aHl[0], paramArrayOfByte, paramInt + 0);
    Pack.ʾ(this.aHl[1], paramArrayOfByte, paramInt + 4);
    Pack.ʾ(this.aHl[2], paramArrayOfByte, paramInt + 8);
    Pack.ʾ(this.aHl[3], paramArrayOfByte, paramInt + 12);
    Pack.ʾ(this.aHl[4], paramArrayOfByte, paramInt + 16);
    Pack.ʾ(this.aHl[5], paramArrayOfByte, paramInt + 20);
    Pack.ʾ(this.aHl[6], paramArrayOfByte, paramInt + 24);
    Pack.ʾ(this.aHl[7], paramArrayOfByte, paramInt + 28);
    reset();
    return 32;
  }
  
  public String iG()
  {
    return "SM3";
  }
  
  public int iJ()
  {
    return 32;
  }
  
  public Memoable iU()
  {
    return new SM3Digest(this);
  }
  
  protected void iV()
  {
    int i = 0;
    while (i < 16)
    {
      this.aHn[i] = this.aHm[i];
      i += 1;
    }
    i = 16;
    while (i < 68)
    {
      j = this.aHn[(i - 3)];
      k = this.aHn[(i - 13)];
      this.aHn[i] = (ᔿ(this.aHn[(i - 16)] ^ this.aHn[(i - 9)] ^ (j << 15 | j >>> 17)) ^ (k << 7 | k >>> 25) ^ this.aHn[(i - 6)]);
      i += 1;
    }
    i = 0;
    while (i < 64)
    {
      this.aHo[i] = (this.aHn[i] ^ this.aHn[(i + 4)]);
      i += 1;
    }
    i = this.aHl[0];
    int n = this.aHl[1];
    int k = this.aHl[2];
    int i2 = this.aHl[3];
    int j = this.aHl[4];
    int i1 = this.aHl[5];
    int m = this.aHl[6];
    int i3 = this.aHl[7];
    int i4 = 0;
    int i5;
    int i6;
    int i7;
    int i10;
    int i11;
    int i8;
    int i9;
    for (;;)
    {
      i5 = i3;
      i6 = i2;
      if (i4 >= 16) {
        break;
      }
      i3 = i << 12 | i >>> 20;
      i2 = i3 + j + aHp[i4];
      i7 = i2 << 7 | i2 >>> 25;
      i10 = ᵔ(i, n, k);
      i11 = this.aHo[i4];
      i8 = ⁱ(j, i1, m);
      i9 = this.aHn[i4];
      i2 = k;
      k = n << 9 | n >>> 23;
      n = i;
      i = i10 + i6 + (i7 ^ i3) + i11;
      i3 = m;
      m = i1 << 19 | i1 >>> 13;
      i1 = j;
      j = ᓵ(i8 + i5 + i7 + i9);
      i4 += 1;
    }
    i3 = 16;
    i2 = i5;
    i4 = i1;
    i1 = i6;
    for (;;)
    {
      i5 = i2;
      i2 = i1;
      if (i3 >= 64) {
        break;
      }
      i9 = i << 12 | i >>> 20;
      i1 = i9 + j + aHp[i3];
      i6 = i1 << 7 | i1 >>> 25;
      i10 = ᵢ(i, n, k);
      i11 = this.aHo[i3];
      i7 = ﹶ(j, i4, m);
      i8 = this.aHn[i3];
      i1 = k;
      k = n << 9 | n >>> 23;
      n = i;
      i = i10 + i2 + (i6 ^ i9) + i11;
      i2 = m;
      m = i4 << 19 | i4 >>> 13;
      i4 = j;
      j = ᓵ(i7 + i5 + i6 + i8);
      i3 += 1;
    }
    int[] arrayOfInt = this.aHl;
    arrayOfInt[0] ^= i;
    arrayOfInt = this.aHl;
    arrayOfInt[1] ^= n;
    arrayOfInt = this.aHl;
    arrayOfInt[2] ^= k;
    arrayOfInt = this.aHl;
    arrayOfInt[3] ^= i2;
    arrayOfInt = this.aHl;
    arrayOfInt[4] ^= j;
    arrayOfInt = this.aHl;
    arrayOfInt[5] ^= i4;
    arrayOfInt = this.aHl;
    arrayOfInt[6] ^= m;
    arrayOfInt = this.aHl;
    arrayOfInt[7] ^= i5;
    this.aGw = 0;
  }
  
  public void reset()
  {
    super.reset();
    this.aHl[0] = 1937774191;
    this.aHl[1] = 1226093241;
    this.aHl[2] = 388252375;
    this.aHl[3] = -628488704;
    this.aHl[4] = -1452330820;
    this.aHl[5] = 372324522;
    this.aHl[6] = -477237683;
    this.aHl[7] = -1325724082;
    this.aGw = 0;
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (SM3Digest)paramMemoable;
    super.ˊ(paramMemoable);
    ˊ(paramMemoable);
  }
  
  protected void ۦ(long paramLong)
  {
    if (this.aGw > 14)
    {
      this.aHm[this.aGw] = 0;
      this.aGw += 1;
      iV();
    }
    while (this.aGw < 14)
    {
      this.aHm[this.aGw] = 0;
      this.aGw += 1;
    }
    int[] arrayOfInt = this.aHm;
    int i = this.aGw;
    this.aGw = (i + 1);
    arrayOfInt[i] = ((int)(paramLong >>> 32));
    arrayOfInt = this.aHm;
    i = this.aGw;
    this.aGw = (i + 1);
    arrayOfInt[i] = ((int)paramLong);
  }
  
  protected void ι(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt];
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[j];
    int k = j + 1;
    j = paramArrayOfByte[k];
    k = paramArrayOfByte[(k + 1)];
    this.aHm[this.aGw] = ((i & 0xFF) << 24 | (paramInt & 0xFF) << 16 | (j & 0xFF) << 8 | k & 0xFF);
    this.aGw += 1;
    if (this.aGw >= 16) {
      iV();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SM3Digest
 * JD-Core Version:    0.7.0.1
 */