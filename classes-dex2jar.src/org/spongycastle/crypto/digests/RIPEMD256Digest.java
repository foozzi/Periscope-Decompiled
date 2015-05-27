package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class RIPEMD256Digest
  extends GeneralDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[16];
  private int aGH;
  private int aGI;
  private int aGJ;
  private int aGK;
  private int aGw;
  
  public RIPEMD256Digest()
  {
    reset();
  }
  
  public RIPEMD256Digest(RIPEMD256Digest paramRIPEMD256Digest)
  {
    super(paramRIPEMD256Digest);
    ˊ(paramRIPEMD256Digest);
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
  
  private void ˊ(RIPEMD256Digest paramRIPEMD256Digest)
  {
    super.ˊ(paramRIPEMD256Digest);
    this.aGH = paramRIPEMD256Digest.aGH;
    this.aGA = paramRIPEMD256Digest.aGA;
    this.aGB = paramRIPEMD256Digest.aGB;
    this.aGC = paramRIPEMD256Digest.aGC;
    this.aGD = paramRIPEMD256Digest.aGD;
    this.aGI = paramRIPEMD256Digest.aGI;
    this.aGJ = paramRIPEMD256Digest.aGJ;
    this.aGK = paramRIPEMD256Digest.aGK;
    System.arraycopy(paramRIPEMD256Digest.aGE, 0, this.aGE, 0, paramRIPEMD256Digest.aGE.length);
    this.aGw = paramRIPEMD256Digest.aGw;
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
    ˊ(this.aGD, paramArrayOfByte, paramInt + 16);
    ˊ(this.aGI, paramArrayOfByte, paramInt + 20);
    ˊ(this.aGJ, paramArrayOfByte, paramInt + 24);
    ˊ(this.aGK, paramArrayOfByte, paramInt + 28);
    reset();
    return 32;
  }
  
  public String iG()
  {
    return "RIPEMD256";
  }
  
  public int iJ()
  {
    return 32;
  }
  
  public Memoable iU()
  {
    return new RIPEMD256Digest(this);
  }
  
  protected void iV()
  {
    int k = this.aGH;
    int i = this.aGA;
    int n = this.aGB;
    int m = this.aGC;
    int i3 = this.aGD;
    int j = this.aGI;
    int i1 = this.aGJ;
    int i2 = this.aGK;
    k = ˊ(k, i, n, m, this.aGE[0], 11);
    m = ˊ(m, k, i, n, this.aGE[1], 14);
    n = ˊ(n, m, k, i, this.aGE[2], 15);
    i = ˊ(i, n, m, k, this.aGE[3], 12);
    k = ˊ(k, i, n, m, this.aGE[4], 5);
    m = ˊ(m, k, i, n, this.aGE[5], 8);
    n = ˊ(n, m, k, i, this.aGE[6], 7);
    i = ˊ(i, n, m, k, this.aGE[7], 9);
    k = ˊ(k, i, n, m, this.aGE[8], 11);
    m = ˊ(m, k, i, n, this.aGE[9], 13);
    n = ˊ(n, m, k, i, this.aGE[10], 14);
    int i4 = ˊ(i, n, m, k, this.aGE[11], 15);
    i = ˊ(k, i4, n, m, this.aGE[12], 6);
    k = ˊ(m, i, i4, n, this.aGE[13], 7);
    m = ˊ(n, k, i, i4, this.aGE[14], 9);
    n = ˊ(i4, m, k, i, this.aGE[15], 8);
    i3 = ʽ(i3, j, i1, i2, this.aGE[5], 8);
    i2 = ʽ(i2, i3, j, i1, this.aGE[14], 9);
    i1 = ʽ(i1, i2, i3, j, this.aGE[7], 9);
    j = ʽ(j, i1, i2, i3, this.aGE[0], 11);
    i3 = ʽ(i3, j, i1, i2, this.aGE[9], 13);
    i2 = ʽ(i2, i3, j, i1, this.aGE[2], 15);
    i1 = ʽ(i1, i2, i3, j, this.aGE[11], 15);
    j = ʽ(j, i1, i2, i3, this.aGE[4], 5);
    i3 = ʽ(i3, j, i1, i2, this.aGE[13], 7);
    i2 = ʽ(i2, i3, j, i1, this.aGE[6], 7);
    i4 = ʽ(i1, i2, i3, j, this.aGE[15], 8);
    j = ʽ(j, i4, i2, i3, this.aGE[8], 11);
    int i5 = ʽ(i3, j, i4, i2, this.aGE[1], 14);
    i1 = ʽ(i2, i5, j, i4, this.aGE[10], 14);
    i2 = ʽ(i4, i1, i5, j, this.aGE[3], 12);
    i3 = ʽ(j, i2, i1, i5, this.aGE[12], 6);
    j = ˋ(i5, n, m, k, this.aGE[7], 7);
    k = ˋ(k, j, n, m, this.aGE[4], 6);
    m = ˋ(m, k, j, n, this.aGE[13], 8);
    n = ˋ(n, m, k, j, this.aGE[1], 13);
    j = ˋ(j, n, m, k, this.aGE[10], 11);
    k = ˋ(k, j, n, m, this.aGE[6], 9);
    m = ˋ(m, k, j, n, this.aGE[15], 7);
    n = ˋ(n, m, k, j, this.aGE[3], 15);
    j = ˋ(j, n, m, k, this.aGE[12], 7);
    i4 = ˋ(k, j, n, m, this.aGE[0], 12);
    i5 = ˋ(m, i4, j, n, this.aGE[9], 15);
    int i6 = ˋ(n, i5, i4, j, this.aGE[5], 9);
    k = ˋ(j, i6, i5, i4, this.aGE[2], 11);
    m = ˋ(i4, k, i6, i5, this.aGE[14], 7);
    n = ˋ(i5, m, k, i6, this.aGE[11], 13);
    j = ˋ(i6, n, m, k, this.aGE[8], 12);
    i = ʼ(i, i3, i2, i1, this.aGE[6], 9);
    i1 = ʼ(i1, i, i3, i2, this.aGE[11], 13);
    i2 = ʼ(i2, i1, i, i3, this.aGE[3], 15);
    i3 = ʼ(i3, i2, i1, i, this.aGE[7], 7);
    i = ʼ(i, i3, i2, i1, this.aGE[0], 12);
    i1 = ʼ(i1, i, i3, i2, this.aGE[13], 8);
    i2 = ʼ(i2, i1, i, i3, this.aGE[5], 9);
    i3 = ʼ(i3, i2, i1, i, this.aGE[10], 11);
    i = ʼ(i, i3, i2, i1, this.aGE[14], 7);
    i4 = ʼ(i1, i, i3, i2, this.aGE[15], 7);
    i5 = ʼ(i2, i4, i, i3, this.aGE[8], 12);
    i6 = ʼ(i3, i5, i4, i, this.aGE[12], 7);
    i1 = ʼ(i, i6, i5, i4, this.aGE[4], 6);
    i2 = ʼ(i4, i1, i6, i5, this.aGE[9], 15);
    i3 = ʼ(i5, i2, i1, i6, this.aGE[1], 13);
    i = ʼ(i6, i3, i2, i1, this.aGE[2], 11);
    k = ˎ(k, i, n, m, this.aGE[3], 11);
    m = ˎ(m, k, i, n, this.aGE[10], 13);
    n = ˎ(n, m, k, i, this.aGE[14], 6);
    i = ˎ(i, n, m, k, this.aGE[4], 7);
    k = ˎ(k, i, n, m, this.aGE[9], 14);
    m = ˎ(m, k, i, n, this.aGE[15], 9);
    n = ˎ(n, m, k, i, this.aGE[8], 13);
    i = ˎ(i, n, m, k, this.aGE[1], 15);
    k = ˎ(k, i, n, m, this.aGE[2], 14);
    m = ˎ(m, k, i, n, this.aGE[7], 8);
    n = ˎ(n, m, k, i, this.aGE[0], 13);
    i4 = ˎ(i, n, m, k, this.aGE[6], 6);
    k = ˎ(k, i4, n, m, this.aGE[13], 5);
    m = ˎ(m, k, i4, n, this.aGE[11], 12);
    i = ˎ(n, m, k, i4, this.aGE[5], 7);
    n = ˎ(i4, i, m, k, this.aGE[12], 5);
    i1 = ʻ(i1, j, i3, i2, this.aGE[15], 9);
    i2 = ʻ(i2, i1, j, i3, this.aGE[5], 7);
    i3 = ʻ(i3, i2, i1, j, this.aGE[1], 15);
    j = ʻ(j, i3, i2, i1, this.aGE[3], 11);
    i1 = ʻ(i1, j, i3, i2, this.aGE[7], 8);
    i2 = ʻ(i2, i1, j, i3, this.aGE[14], 6);
    i3 = ʻ(i3, i2, i1, j, this.aGE[6], 6);
    j = ʻ(j, i3, i2, i1, this.aGE[9], 14);
    i1 = ʻ(i1, j, i3, i2, this.aGE[11], 12);
    i2 = ʻ(i2, i1, j, i3, this.aGE[8], 13);
    i3 = ʻ(i3, i2, i1, j, this.aGE[12], 5);
    i4 = ʻ(j, i3, i2, i1, this.aGE[2], 14);
    j = ʻ(i1, i4, i3, i2, this.aGE[10], 13);
    i1 = ʻ(i2, j, i4, i3, this.aGE[0], 13);
    i3 = ʻ(i3, i1, j, i4, this.aGE[4], 7);
    i2 = ʻ(i4, i3, i1, j, this.aGE[13], 5);
    k = ˏ(k, n, i3, m, this.aGE[1], 11);
    m = ˏ(m, k, n, i3, this.aGE[9], 12);
    i3 = ˏ(i3, m, k, n, this.aGE[11], 14);
    n = ˏ(n, i3, m, k, this.aGE[10], 15);
    k = ˏ(k, n, i3, m, this.aGE[0], 14);
    m = ˏ(m, k, n, i3, this.aGE[8], 15);
    i3 = ˏ(i3, m, k, n, this.aGE[12], 9);
    n = ˏ(n, i3, m, k, this.aGE[4], 8);
    k = ˏ(k, n, i3, m, this.aGE[13], 9);
    m = ˏ(m, k, n, i3, this.aGE[3], 14);
    i3 = ˏ(i3, m, k, n, this.aGE[7], 5);
    i4 = ˏ(n, i3, m, k, this.aGE[15], 6);
    k = ˏ(k, i4, i3, m, this.aGE[14], 8);
    m = ˏ(m, k, i4, i3, this.aGE[5], 6);
    n = ˏ(i3, m, k, i4, this.aGE[6], 5);
    i3 = ˏ(i4, n, m, k, this.aGE[2], 12);
    j = ᐝ(j, i2, i, i1, this.aGE[8], 15);
    i1 = ᐝ(i1, j, i2, i, this.aGE[6], 5);
    i = ᐝ(i, i1, j, i2, this.aGE[4], 8);
    i2 = ᐝ(i2, i, i1, j, this.aGE[1], 11);
    j = ᐝ(j, i2, i, i1, this.aGE[3], 14);
    i1 = ᐝ(i1, j, i2, i, this.aGE[11], 14);
    i = ᐝ(i, i1, j, i2, this.aGE[15], 6);
    i2 = ᐝ(i2, i, i1, j, this.aGE[0], 14);
    j = ᐝ(j, i2, i, i1, this.aGE[5], 6);
    i1 = ᐝ(i1, j, i2, i, this.aGE[12], 9);
    i = ᐝ(i, i1, j, i2, this.aGE[2], 12);
    i2 = ᐝ(i2, i, i1, j, this.aGE[13], 9);
    j = ᐝ(j, i2, i, i1, this.aGE[9], 12);
    i1 = ᐝ(i1, j, i2, i, this.aGE[7], 5);
    i = ᐝ(i, i1, j, i2, this.aGE[10], 15);
    i2 = ᐝ(i2, i, i1, j, this.aGE[14], 8);
    this.aGH += k;
    this.aGA += i3;
    this.aGB += n;
    this.aGC += i1;
    this.aGD += j;
    this.aGI += i2;
    this.aGJ += i;
    this.aGK += m;
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
    this.aGD = 1985229328;
    this.aGI = -19088744;
    this.aGJ = -1985229329;
    this.aGK = 19088743;
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
    ˊ((RIPEMD256Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.RIPEMD256Digest
 * JD-Core Version:    0.7.0.1
 */