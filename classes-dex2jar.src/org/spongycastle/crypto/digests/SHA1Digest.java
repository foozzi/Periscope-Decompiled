package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class SHA1Digest
  extends GeneralDigest
  implements EncodableDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[80];
  private int aGI;
  private int aGw;
  
  public SHA1Digest()
  {
    reset();
  }
  
  public SHA1Digest(SHA1Digest paramSHA1Digest)
  {
    super(paramSHA1Digest);
    ˊ(paramSHA1Digest);
  }
  
  private void ˊ(SHA1Digest paramSHA1Digest)
  {
    this.aGA = paramSHA1Digest.aGA;
    this.aGB = paramSHA1Digest.aGB;
    this.aGC = paramSHA1Digest.aGC;
    this.aGD = paramSHA1Digest.aGD;
    this.aGI = paramSHA1Digest.aGI;
    System.arraycopy(paramSHA1Digest.aGE, 0, this.aGE, 0, paramSHA1Digest.aGE.length);
    this.aGw = paramSHA1Digest.aGw;
  }
  
  private int ՙ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int י(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int ٴ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    Pack.ʾ(this.aGA, paramArrayOfByte, paramInt);
    Pack.ʾ(this.aGB, paramArrayOfByte, paramInt + 4);
    Pack.ʾ(this.aGC, paramArrayOfByte, paramInt + 8);
    Pack.ʾ(this.aGD, paramArrayOfByte, paramInt + 12);
    Pack.ʾ(this.aGI, paramArrayOfByte, paramInt + 16);
    reset();
    return 20;
  }
  
  public String iG()
  {
    return "SHA-1";
  }
  
  public int iJ()
  {
    return 20;
  }
  
  public Memoable iU()
  {
    return new SHA1Digest(this);
  }
  
  protected void iV()
  {
    int i = 16;
    while (i < 80)
    {
      j = this.aGE[(i - 3)] ^ this.aGE[(i - 8)] ^ this.aGE[(i - 14)] ^ this.aGE[(i - 16)];
      this.aGE[i] = (j << 1 | j >>> 31);
      i += 1;
    }
    int j = this.aGA;
    int m = this.aGB;
    i = this.aGC;
    int k = this.aGD;
    int n = this.aGI;
    int i1 = 0;
    int i2 = 0;
    int i4;
    int[] arrayOfInt;
    int i3;
    while (i2 < 4)
    {
      i4 = ՙ(m, i, k);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      n += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] + 1518500249;
      m = m << 30 | m >>> 2;
      i4 = ՙ(j, m, i);
      arrayOfInt = this.aGE;
      i1 = i3 + 1;
      k += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] + 1518500249;
      j = j << 30 | j >>> 2;
      i4 = ՙ(n, j, m);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      i += (k << 5 | k >>> 27) + i4 + arrayOfInt[i1] + 1518500249;
      n = n << 30 | n >>> 2;
      i1 = ՙ(k, n, j);
      arrayOfInt = this.aGE;
      i4 = i3 + 1;
      m += (i << 5 | i >>> 27) + i1 + arrayOfInt[i3] + 1518500249;
      k = k << 30 | k >>> 2;
      i3 = ՙ(i, k, n);
      arrayOfInt = this.aGE;
      i1 = i4 + 1;
      j += (m << 5 | m >>> 27) + i3 + arrayOfInt[i4] + 1518500249;
      i = i << 30 | i >>> 2;
      i2 += 1;
    }
    i2 = 0;
    while (i2 < 4)
    {
      i4 = י(m, i, k);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      n += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] + 1859775393;
      m = m << 30 | m >>> 2;
      i4 = י(j, m, i);
      arrayOfInt = this.aGE;
      i1 = i3 + 1;
      k += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] + 1859775393;
      j = j << 30 | j >>> 2;
      i4 = י(n, j, m);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      i += (k << 5 | k >>> 27) + i4 + arrayOfInt[i1] + 1859775393;
      n = n << 30 | n >>> 2;
      i1 = י(k, n, j);
      arrayOfInt = this.aGE;
      i4 = i3 + 1;
      m += (i << 5 | i >>> 27) + i1 + arrayOfInt[i3] + 1859775393;
      k = k << 30 | k >>> 2;
      i3 = י(i, k, n);
      arrayOfInt = this.aGE;
      i1 = i4 + 1;
      j += (m << 5 | m >>> 27) + i3 + arrayOfInt[i4] + 1859775393;
      i = i << 30 | i >>> 2;
      i2 += 1;
    }
    i2 = 0;
    while (i2 < 4)
    {
      i4 = ٴ(m, i, k);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      n += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] - 1894007588;
      m = m << 30 | m >>> 2;
      i4 = ٴ(j, m, i);
      arrayOfInt = this.aGE;
      i1 = i3 + 1;
      k += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] - 1894007588;
      j = j << 30 | j >>> 2;
      i4 = ٴ(n, j, m);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      i += (k << 5 | k >>> 27) + i4 + arrayOfInt[i1] - 1894007588;
      n = n << 30 | n >>> 2;
      i1 = ٴ(k, n, j);
      arrayOfInt = this.aGE;
      i4 = i3 + 1;
      m += (i << 5 | i >>> 27) + i1 + arrayOfInt[i3] - 1894007588;
      k = k << 30 | k >>> 2;
      i3 = ٴ(i, k, n);
      arrayOfInt = this.aGE;
      i1 = i4 + 1;
      j += (m << 5 | m >>> 27) + i3 + arrayOfInt[i4] - 1894007588;
      i = i << 30 | i >>> 2;
      i2 += 1;
    }
    i2 = 0;
    while (i2 <= 3)
    {
      i4 = י(m, i, k);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      n += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] - 899497514;
      m = m << 30 | m >>> 2;
      i4 = י(j, m, i);
      arrayOfInt = this.aGE;
      i1 = i3 + 1;
      k += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] - 899497514;
      j = j << 30 | j >>> 2;
      i4 = י(n, j, m);
      arrayOfInt = this.aGE;
      i3 = i1 + 1;
      i += (k << 5 | k >>> 27) + i4 + arrayOfInt[i1] - 899497514;
      n = n << 30 | n >>> 2;
      i1 = י(k, n, j);
      arrayOfInt = this.aGE;
      i4 = i3 + 1;
      m += (i << 5 | i >>> 27) + i1 + arrayOfInt[i3] - 899497514;
      k = k << 30 | k >>> 2;
      i3 = י(i, k, n);
      arrayOfInt = this.aGE;
      i1 = i4 + 1;
      j += (m << 5 | m >>> 27) + i3 + arrayOfInt[i4] - 899497514;
      i = i << 30 | i >>> 2;
      i2 += 1;
    }
    this.aGA += j;
    this.aGB += m;
    this.aGC += i;
    this.aGD += k;
    this.aGI += n;
    this.aGw = 0;
    i = 0;
    while (i < 16)
    {
      this.aGE[i] = 0;
      i += 1;
    }
  }
  
  public void reset()
  {
    super.reset();
    this.aGA = 1732584193;
    this.aGB = -271733879;
    this.aGC = -1732584194;
    this.aGD = 271733878;
    this.aGI = -1009589776;
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
    paramMemoable = (SHA1Digest)paramMemoable;
    super.ˊ(paramMemoable);
    ˊ(paramMemoable);
  }
  
  protected void ۦ(long paramLong)
  {
    if (this.aGw > 14) {
      iV();
    }
    this.aGE[14] = ((int)(paramLong >>> 32));
    this.aGE[15] = ((int)(0xFFFFFFFF & paramLong));
  }
  
  protected void ι(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt];
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[j];
    int k = j + 1;
    j = paramArrayOfByte[k];
    k = paramArrayOfByte[(k + 1)];
    this.aGE[this.aGw] = (i << 24 | (paramInt & 0xFF) << 16 | (j & 0xFF) << 8 | k & 0xFF);
    paramInt = this.aGw + 1;
    this.aGw = paramInt;
    if (paramInt == 16) {
      iV();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SHA1Digest
 * JD-Core Version:    0.7.0.1
 */