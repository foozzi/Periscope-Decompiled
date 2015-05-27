package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class MD5Digest
  extends GeneralDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[16];
  private int aGw;
  
  public MD5Digest()
  {
    reset();
  }
  
  public MD5Digest(MD5Digest paramMD5Digest)
  {
    super(paramMD5Digest);
    ˊ(paramMD5Digest);
  }
  
  private int rotateLeft(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> 32 - paramInt2;
  }
  
  private void ˊ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24));
  }
  
  private void ˊ(MD5Digest paramMD5Digest)
  {
    super.ˊ(paramMD5Digest);
    this.aGA = paramMD5Digest.aGA;
    this.aGB = paramMD5Digest.aGB;
    this.aGC = paramMD5Digest.aGC;
    this.aGD = paramMD5Digest.aGD;
    System.arraycopy(paramMD5Digest.aGE, 0, this.aGE, 0, paramMD5Digest.aGE.length);
    this.aGw = paramMD5Digest.aGw;
  }
  
  private int ˌ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int ˍ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt3 | (paramInt3 ^ 0xFFFFFFFF) & paramInt2;
  }
  
  private int ˑ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int ـ(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt3 ^ 0xFFFFFFFF | paramInt1) ^ paramInt2;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    ˊ(this.aGA, paramArrayOfByte, paramInt);
    ˊ(this.aGB, paramArrayOfByte, paramInt + 4);
    ˊ(this.aGC, paramArrayOfByte, paramInt + 8);
    ˊ(this.aGD, paramArrayOfByte, paramInt + 12);
    reset();
    return 16;
  }
  
  public String iG()
  {
    return "MD5";
  }
  
  public int iJ()
  {
    return 16;
  }
  
  public Memoable iU()
  {
    return new MD5Digest(this);
  }
  
  protected void iV()
  {
    int j = this.aGA;
    int i = this.aGB;
    int m = this.aGC;
    int k = this.aGD;
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[0] - 680876936, 7) + i;
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[1] - 389564586, 12) + j;
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[2] + 606105819, 17) + k;
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[3] - 1044525330, 22) + m;
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[4] - 176418897, 7) + i;
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[5] + 1200080426, 12) + j;
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[6] - 1473231341, 17) + k;
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[7] - 45705983, 22) + m;
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[8] + 1770035416, 7) + i;
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[9] - 1958414417, 12) + j;
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[10] - 42063, 17) + k;
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[11] - 1990404162, 22) + m;
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[12] + 1804603682, 7) + i;
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[13] - 40341101, 12) + j;
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[14] - 1502002290, 17) + k;
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[15] + 1236535329, 22) + m;
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[1] - 165796510, 5) + i;
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[6] - 1069501632, 9) + j;
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[11] + 643717713, 14) + k;
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[0] - 373897302, 20) + m;
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[5] - 701558691, 5) + i;
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[10] + 38016083, 9) + j;
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[15] - 660478335, 14) + k;
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[4] - 405537848, 20) + m;
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[9] + 568446438, 5) + i;
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[14] - 1019803690, 9) + j;
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[3] - 187363961, 14) + k;
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[8] + 1163531501, 20) + m;
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[13] - 1444681467, 5) + i;
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[2] - 51403784, 9) + j;
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[7] + 1735328473, 14) + k;
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[12] - 1926607734, 20) + m;
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[5] - 378558, 4) + i;
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[8] - 2022574463, 11) + j;
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[11] + 1839030562, 16) + k;
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[14] - 35309556, 23) + m;
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[1] - 1530992060, 4) + i;
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[4] + 1272893353, 11) + j;
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[7] - 155497632, 16) + k;
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[10] - 1094730640, 23) + m;
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[13] + 681279174, 4) + i;
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[0] - 358537222, 11) + j;
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[3] - 722521979, 16) + k;
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[6] + 76029189, 23) + m;
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[9] - 640364487, 4) + i;
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[12] - 421815835, 11) + j;
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[15] + 530742520, 16) + k;
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[2] - 995338651, 23) + m;
    j = rotateLeft(ـ(i, m, k) + j + this.aGE[0] - 198630844, 6) + i;
    k = rotateLeft(ـ(j, i, m) + k + this.aGE[7] + 1126891415, 10) + j;
    m = rotateLeft(ـ(k, j, i) + m + this.aGE[14] - 1416354905, 15) + k;
    i = rotateLeft(ـ(m, k, j) + i + this.aGE[5] - 57434055, 21) + m;
    j = rotateLeft(ـ(i, m, k) + j + this.aGE[12] + 1700485571, 6) + i;
    k = rotateLeft(ـ(j, i, m) + k + this.aGE[3] - 1894986606, 10) + j;
    m = rotateLeft(ـ(k, j, i) + m + this.aGE[10] - 1051523, 15) + k;
    i = rotateLeft(ـ(m, k, j) + i + this.aGE[1] - 2054922799, 21) + m;
    j = rotateLeft(ـ(i, m, k) + j + this.aGE[8] + 1873313359, 6) + i;
    k = rotateLeft(ـ(j, i, m) + k + this.aGE[15] - 30611744, 10) + j;
    m = rotateLeft(ـ(k, j, i) + m + this.aGE[6] - 1560198380, 15) + k;
    i = rotateLeft(ـ(m, k, j) + i + this.aGE[13] + 1309151649, 21) + m;
    j = rotateLeft(ـ(i, m, k) + j + this.aGE[4] - 145523070, 6) + i;
    k = rotateLeft(ـ(j, i, m) + k + this.aGE[11] - 1120210379, 10) + j;
    m = rotateLeft(ـ(k, j, i) + m + this.aGE[2] + 718787259, 15) + k;
    i = rotateLeft(ـ(m, k, j) + i + this.aGE[9] - 343485551, 21);
    this.aGA += j;
    this.aGB += i + m;
    this.aGC += m;
    this.aGD += k;
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
    this.aGA = 1732584193;
    this.aGB = -271733879;
    this.aGC = -1732584194;
    this.aGD = 271733878;
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
    ˊ((MD5Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.MD5Digest
 * JD-Core Version:    0.7.0.1
 */