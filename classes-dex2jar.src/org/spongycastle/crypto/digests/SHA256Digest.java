package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

public class SHA256Digest
  extends GeneralDigest
  implements EncodableDigest
{
  static final int[] aGN = { 1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998 };
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[64];
  private int aGI;
  private int aGJ;
  private int aGK;
  private int aGL;
  private int aGw;
  
  public SHA256Digest()
  {
    reset();
  }
  
  public SHA256Digest(SHA256Digest paramSHA256Digest)
  {
    super(paramSHA256Digest);
    ˊ(paramSHA256Digest);
  }
  
  private void ˊ(SHA256Digest paramSHA256Digest)
  {
    super.ˊ(paramSHA256Digest);
    this.aGA = paramSHA256Digest.aGA;
    this.aGB = paramSHA256Digest.aGB;
    this.aGC = paramSHA256Digest.aGC;
    this.aGD = paramSHA256Digest.aGD;
    this.aGI = paramSHA256Digest.aGI;
    this.aGJ = paramSHA256Digest.aGJ;
    this.aGK = paramSHA256Digest.aGK;
    this.aGL = paramSHA256Digest.aGL;
    System.arraycopy(paramSHA256Digest.aGE, 0, this.aGE, 0, paramSHA256Digest.aGE.length);
    this.aGw = paramSHA256Digest.aGw;
  }
  
  private int ڏ(int paramInt)
  {
    return (paramInt >>> 2 | paramInt << 30) ^ (paramInt >>> 13 | paramInt << 19) ^ (paramInt >>> 22 | paramInt << 10);
  }
  
  private int ઽ(int paramInt)
  {
    return (paramInt >>> 6 | paramInt << 26) ^ (paramInt >>> 11 | paramInt << 21) ^ (paramInt >>> 25 | paramInt << 7);
  }
  
  private int ເ(int paramInt)
  {
    return (paramInt >>> 7 | paramInt << 25) ^ (paramInt >>> 18 | paramInt << 14) ^ paramInt >>> 3;
  }
  
  private int ᓰ(int paramInt)
  {
    return (paramInt >>> 17 | paramInt << 15) ^ (paramInt >>> 19 | paramInt << 13) ^ paramInt >>> 10;
  }
  
  private int ᴵ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 ^ (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int ᵎ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 ^ paramInt1 & paramInt3 ^ paramInt2 & paramInt3;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    Pack.ʾ(this.aGA, paramArrayOfByte, paramInt);
    Pack.ʾ(this.aGB, paramArrayOfByte, paramInt + 4);
    Pack.ʾ(this.aGC, paramArrayOfByte, paramInt + 8);
    Pack.ʾ(this.aGD, paramArrayOfByte, paramInt + 12);
    Pack.ʾ(this.aGI, paramArrayOfByte, paramInt + 16);
    Pack.ʾ(this.aGJ, paramArrayOfByte, paramInt + 20);
    Pack.ʾ(this.aGK, paramArrayOfByte, paramInt + 24);
    Pack.ʾ(this.aGL, paramArrayOfByte, paramInt + 28);
    reset();
    return 32;
  }
  
  public String iG()
  {
    return "SHA-256";
  }
  
  public int iJ()
  {
    return 32;
  }
  
  public Memoable iU()
  {
    return new SHA256Digest(this);
  }
  
  protected void iV()
  {
    int i = 16;
    while (i <= 63)
    {
      this.aGE[i] = (ᓰ(this.aGE[(i - 2)]) + this.aGE[(i - 7)] + ເ(this.aGE[(i - 15)]) + this.aGE[(i - 16)]);
      i += 1;
    }
    int j = this.aGA;
    int m = this.aGB;
    int i1 = this.aGC;
    int i4 = this.aGD;
    int k = this.aGI;
    int n = this.aGJ;
    int i2 = this.aGK;
    int i5 = this.aGL;
    int i3 = 0;
    i = 0;
    while (i < 8)
    {
      i5 += ઽ(k) + ᴵ(k, n, i2) + aGN[i3] + this.aGE[i3];
      i4 += i5;
      i5 += ڏ(j) + ᵎ(j, m, i1);
      i3 += 1;
      i2 += ઽ(i4) + ᴵ(i4, k, n) + aGN[i3] + this.aGE[i3];
      i1 += i2;
      i2 += ڏ(i5) + ᵎ(i5, j, m);
      i3 += 1;
      n += ઽ(i1) + ᴵ(i1, i4, k) + aGN[i3] + this.aGE[i3];
      m += n;
      n += ڏ(i2) + ᵎ(i2, i5, j);
      i3 += 1;
      k += ઽ(m) + ᴵ(m, i1, i4) + aGN[i3] + this.aGE[i3];
      j += k;
      k += ڏ(n) + ᵎ(n, i2, i5);
      i3 += 1;
      i4 += ઽ(j) + ᴵ(j, m, i1) + aGN[i3] + this.aGE[i3];
      i5 += i4;
      i4 += ڏ(k) + ᵎ(k, n, i2);
      i3 += 1;
      i1 += ઽ(i5) + ᴵ(i5, j, m) + aGN[i3] + this.aGE[i3];
      i2 += i1;
      i1 += ڏ(i4) + ᵎ(i4, k, n);
      i3 += 1;
      m += ઽ(i2) + ᴵ(i2, i5, j) + aGN[i3] + this.aGE[i3];
      n += m;
      m += ڏ(i1) + ᵎ(i1, i4, k);
      i3 += 1;
      j += ઽ(n) + ᴵ(n, i2, i5) + aGN[i3] + this.aGE[i3];
      k += j;
      j += ڏ(m) + ᵎ(m, i1, i4);
      i3 += 1;
      i += 1;
    }
    this.aGA += j;
    this.aGB += m;
    this.aGC += i1;
    this.aGD += i4;
    this.aGI += k;
    this.aGJ += n;
    this.aGK += i2;
    this.aGL += i5;
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
    this.aGA = 1779033703;
    this.aGB = -1150833019;
    this.aGC = 1013904242;
    this.aGD = -1521486534;
    this.aGI = 1359893119;
    this.aGJ = -1694144372;
    this.aGK = 528734635;
    this.aGL = 1541459225;
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
    ˊ((SHA256Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.SHA256Digest
 * JD-Core Version:    0.7.0.1
 */