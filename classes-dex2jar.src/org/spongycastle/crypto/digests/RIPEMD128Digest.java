package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class RIPEMD128Digest
  extends GeneralDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int[] aGE = new int[16];
  private int aGH;
  private int aGw;
  
  public RIPEMD128Digest()
  {
    reset();
  }
  
  public RIPEMD128Digest(RIPEMD128Digest paramRIPEMD128Digest)
  {
    super(paramRIPEMD128Digest);
    ˊ(paramRIPEMD128Digest);
  }
  
  private int ʻ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ᐨ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 + 1836072691, paramInt6);
  }
  
  private int ʼ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ﹳ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 + 1548603684, paramInt6);
  }
  
  private int ʽ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ﾞ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 + 1352829926, paramInt6);
  }
  
  private int ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ᐧ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5, paramInt6);
  }
  
  private void ˊ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24));
  }
  
  private void ˊ(RIPEMD128Digest paramRIPEMD128Digest)
  {
    super.ˊ(paramRIPEMD128Digest);
    this.aGH = paramRIPEMD128Digest.aGH;
    this.aGA = paramRIPEMD128Digest.aGA;
    this.aGB = paramRIPEMD128Digest.aGB;
    this.aGC = paramRIPEMD128Digest.aGC;
    System.arraycopy(paramRIPEMD128Digest.aGE, 0, this.aGE, 0, paramRIPEMD128Digest.aGE.length);
    this.aGw = paramRIPEMD128Digest.aGw;
  }
  
  private int ˋ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ᐨ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 + 1518500249, paramInt6);
  }
  
  private int ˎ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ﹳ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 + 1859775393, paramInt6);
  }
  
  private int ˏ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ﾞ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5 - 1894007588, paramInt6);
  }
  
  private int ᐝ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ᵛ(ᐧ(paramInt2, paramInt3, paramInt4) + paramInt1 + paramInt5, paramInt6);
  }
  
  private int ᐧ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int ᐨ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int ᵛ(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> 32 - paramInt2;
  }
  
  private int ﹳ(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt2 ^ 0xFFFFFFFF | paramInt1) ^ paramInt3;
  }
  
  private int ﾞ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt3 | (paramInt3 ^ 0xFFFFFFFF) & paramInt2;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    ˊ(this.aGH, paramArrayOfByte, paramInt);
    ˊ(this.aGA, paramArrayOfByte, paramInt + 4);
    ˊ(this.aGB, paramArrayOfByte, paramInt + 8);
    ˊ(this.aGC, paramArrayOfByte, paramInt + 12);
    reset();
    return 16;
  }
  
  public String iG()
  {
    return "RIPEMD128";
  }
  
  public int iJ()
  {
    return 16;
  }
  
  public Memoable iU()
  {
    return new RIPEMD128Digest(this);
  }
  
  protected void iV()
  {
    int i3 = this.aGH;
    int n = this.aGA;
    int i1 = this.aGB;
    int i2 = this.aGC;
    int j = ˊ(i3, n, i1, i2, this.aGE[0], 11);
    int k = ˊ(i2, j, n, i1, this.aGE[1], 14);
    int m = ˊ(i1, k, j, n, this.aGE[2], 15);
    int i = ˊ(n, m, k, j, this.aGE[3], 12);
    j = ˊ(j, i, m, k, this.aGE[4], 5);
    k = ˊ(k, j, i, m, this.aGE[5], 8);
    m = ˊ(m, k, j, i, this.aGE[6], 7);
    i = ˊ(i, m, k, j, this.aGE[7], 9);
    j = ˊ(j, i, m, k, this.aGE[8], 11);
    k = ˊ(k, j, i, m, this.aGE[9], 13);
    m = ˊ(m, k, j, i, this.aGE[10], 14);
    i = ˊ(i, m, k, j, this.aGE[11], 15);
    j = ˊ(j, i, m, k, this.aGE[12], 6);
    k = ˊ(k, j, i, m, this.aGE[13], 7);
    m = ˊ(m, k, j, i, this.aGE[14], 9);
    i = ˊ(i, m, k, j, this.aGE[15], 8);
    j = ˋ(j, i, m, k, this.aGE[7], 7);
    k = ˋ(k, j, i, m, this.aGE[4], 6);
    m = ˋ(m, k, j, i, this.aGE[13], 8);
    i = ˋ(i, m, k, j, this.aGE[1], 13);
    j = ˋ(j, i, m, k, this.aGE[10], 11);
    k = ˋ(k, j, i, m, this.aGE[6], 9);
    m = ˋ(m, k, j, i, this.aGE[15], 7);
    i = ˋ(i, m, k, j, this.aGE[3], 15);
    j = ˋ(j, i, m, k, this.aGE[12], 7);
    k = ˋ(k, j, i, m, this.aGE[0], 12);
    m = ˋ(m, k, j, i, this.aGE[9], 15);
    i = ˋ(i, m, k, j, this.aGE[5], 9);
    j = ˋ(j, i, m, k, this.aGE[2], 11);
    k = ˋ(k, j, i, m, this.aGE[14], 7);
    m = ˋ(m, k, j, i, this.aGE[11], 13);
    i = ˋ(i, m, k, j, this.aGE[8], 12);
    j = ˎ(j, i, m, k, this.aGE[3], 11);
    k = ˎ(k, j, i, m, this.aGE[10], 13);
    m = ˎ(m, k, j, i, this.aGE[14], 6);
    i = ˎ(i, m, k, j, this.aGE[4], 7);
    j = ˎ(j, i, m, k, this.aGE[9], 14);
    k = ˎ(k, j, i, m, this.aGE[15], 9);
    m = ˎ(m, k, j, i, this.aGE[8], 13);
    i = ˎ(i, m, k, j, this.aGE[1], 15);
    j = ˎ(j, i, m, k, this.aGE[2], 14);
    k = ˎ(k, j, i, m, this.aGE[7], 8);
    m = ˎ(m, k, j, i, this.aGE[0], 13);
    i = ˎ(i, m, k, j, this.aGE[6], 6);
    j = ˎ(j, i, m, k, this.aGE[13], 5);
    k = ˎ(k, j, i, m, this.aGE[11], 12);
    m = ˎ(m, k, j, i, this.aGE[5], 7);
    i = ˎ(i, m, k, j, this.aGE[12], 5);
    j = ˏ(j, i, m, k, this.aGE[1], 11);
    k = ˏ(k, j, i, m, this.aGE[9], 12);
    m = ˏ(m, k, j, i, this.aGE[11], 14);
    i = ˏ(i, m, k, j, this.aGE[10], 15);
    j = ˏ(j, i, m, k, this.aGE[0], 14);
    k = ˏ(k, j, i, m, this.aGE[8], 15);
    m = ˏ(m, k, j, i, this.aGE[12], 9);
    i = ˏ(i, m, k, j, this.aGE[4], 8);
    j = ˏ(j, i, m, k, this.aGE[13], 9);
    k = ˏ(k, j, i, m, this.aGE[3], 14);
    m = ˏ(m, k, j, i, this.aGE[7], 5);
    int i4 = ˏ(i, m, k, j, this.aGE[15], 6);
    i = ˏ(j, i4, m, k, this.aGE[14], 8);
    j = ˏ(k, i, i4, m, this.aGE[5], 6);
    k = ˏ(m, j, i, i4, this.aGE[6], 5);
    m = ˏ(i4, k, j, i, this.aGE[2], 12);
    i3 = ʽ(i3, n, i1, i2, this.aGE[5], 8);
    i2 = ʽ(i2, i3, n, i1, this.aGE[14], 9);
    i1 = ʽ(i1, i2, i3, n, this.aGE[7], 9);
    n = ʽ(n, i1, i2, i3, this.aGE[0], 11);
    i3 = ʽ(i3, n, i1, i2, this.aGE[9], 13);
    i2 = ʽ(i2, i3, n, i1, this.aGE[2], 15);
    i1 = ʽ(i1, i2, i3, n, this.aGE[11], 15);
    n = ʽ(n, i1, i2, i3, this.aGE[4], 5);
    i3 = ʽ(i3, n, i1, i2, this.aGE[13], 7);
    i2 = ʽ(i2, i3, n, i1, this.aGE[6], 7);
    i1 = ʽ(i1, i2, i3, n, this.aGE[15], 8);
    n = ʽ(n, i1, i2, i3, this.aGE[8], 11);
    i3 = ʽ(i3, n, i1, i2, this.aGE[1], 14);
    i2 = ʽ(i2, i3, n, i1, this.aGE[10], 14);
    i1 = ʽ(i1, i2, i3, n, this.aGE[3], 12);
    n = ʽ(n, i1, i2, i3, this.aGE[12], 6);
    i3 = ʼ(i3, n, i1, i2, this.aGE[6], 9);
    i2 = ʼ(i2, i3, n, i1, this.aGE[11], 13);
    i1 = ʼ(i1, i2, i3, n, this.aGE[3], 15);
    n = ʼ(n, i1, i2, i3, this.aGE[7], 7);
    i3 = ʼ(i3, n, i1, i2, this.aGE[0], 12);
    i2 = ʼ(i2, i3, n, i1, this.aGE[13], 8);
    i1 = ʼ(i1, i2, i3, n, this.aGE[5], 9);
    n = ʼ(n, i1, i2, i3, this.aGE[10], 11);
    i3 = ʼ(i3, n, i1, i2, this.aGE[14], 7);
    i2 = ʼ(i2, i3, n, i1, this.aGE[15], 7);
    i1 = ʼ(i1, i2, i3, n, this.aGE[8], 12);
    n = ʼ(n, i1, i2, i3, this.aGE[12], 7);
    i3 = ʼ(i3, n, i1, i2, this.aGE[4], 6);
    i2 = ʼ(i2, i3, n, i1, this.aGE[9], 15);
    i1 = ʼ(i1, i2, i3, n, this.aGE[1], 13);
    n = ʼ(n, i1, i2, i3, this.aGE[2], 11);
    i3 = ʻ(i3, n, i1, i2, this.aGE[15], 9);
    i2 = ʻ(i2, i3, n, i1, this.aGE[5], 7);
    i1 = ʻ(i1, i2, i3, n, this.aGE[1], 15);
    n = ʻ(n, i1, i2, i3, this.aGE[3], 11);
    i3 = ʻ(i3, n, i1, i2, this.aGE[7], 8);
    i2 = ʻ(i2, i3, n, i1, this.aGE[14], 6);
    i1 = ʻ(i1, i2, i3, n, this.aGE[6], 6);
    n = ʻ(n, i1, i2, i3, this.aGE[9], 14);
    i3 = ʻ(i3, n, i1, i2, this.aGE[11], 12);
    i2 = ʻ(i2, i3, n, i1, this.aGE[8], 13);
    i1 = ʻ(i1, i2, i3, n, this.aGE[12], 5);
    n = ʻ(n, i1, i2, i3, this.aGE[2], 14);
    i3 = ʻ(i3, n, i1, i2, this.aGE[10], 13);
    i2 = ʻ(i2, i3, n, i1, this.aGE[0], 13);
    i1 = ʻ(i1, i2, i3, n, this.aGE[4], 7);
    n = ʻ(n, i1, i2, i3, this.aGE[13], 5);
    i3 = ᐝ(i3, n, i1, i2, this.aGE[8], 15);
    i2 = ᐝ(i2, i3, n, i1, this.aGE[6], 5);
    i1 = ᐝ(i1, i2, i3, n, this.aGE[4], 8);
    n = ᐝ(n, i1, i2, i3, this.aGE[1], 11);
    i3 = ᐝ(i3, n, i1, i2, this.aGE[3], 14);
    i2 = ᐝ(i2, i3, n, i1, this.aGE[11], 14);
    i1 = ᐝ(i1, i2, i3, n, this.aGE[15], 6);
    n = ᐝ(n, i1, i2, i3, this.aGE[0], 14);
    i3 = ᐝ(i3, n, i1, i2, this.aGE[5], 6);
    i2 = ᐝ(i2, i3, n, i1, this.aGE[12], 9);
    i1 = ᐝ(i1, i2, i3, n, this.aGE[2], 12);
    i4 = ᐝ(n, i1, i2, i3, this.aGE[13], 9);
    n = ᐝ(i3, i4, i1, i2, this.aGE[9], 12);
    i2 = ᐝ(i2, n, i4, i1, this.aGE[7], 5);
    i1 = ᐝ(i1, i2, n, i4, this.aGE[10], 15);
    i3 = ᐝ(i4, i1, i2, n, this.aGE[14], 8);
    i4 = this.aGA;
    this.aGA = (this.aGB + j + n);
    this.aGB = (this.aGC + i + i3);
    this.aGC = (this.aGH + m + i1);
    this.aGH = (i2 + (i4 + k));
    this.aGw = 0;
    i = 0;
    while (i != this.aGE.length)
    {
      this.aGE[i] = 0;
      i += 1;
    }
  }
  
  public void reset()
  {
    super.reset();
    this.aGH = 1732584193;
    this.aGA = -271733879;
    this.aGB = -1732584194;
    this.aGC = 271733878;
    this.aGw = 0;
    int i = 0;
    while (i != this.aGE.length)
    {
      this.aGE[i] = 0;
      i += 1;
    }
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    ˊ((RIPEMD128Digest)paramMemoable);
  }
  
  protected void ۦ(long paramLong)
  {
    if (this.aGw > 14) {
      iV();
    }
    this.aGE[14] = ((int)(0xFFFFFFFF & paramLong));
    this.aGE[15] = ((int)(paramLong >>> 32));
  }
  
  protected void ι(byte[] paramArrayOfByte, int paramInt)
  {
    int[] arrayOfInt = this.aGE;
    int i = this.aGw;
    this.aGw = (i + 1);
    arrayOfInt[i] = (paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24);
    if (this.aGw == 16) {
      iV();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.RIPEMD128Digest
 * JD-Core Version:    0.7.0.1
 */