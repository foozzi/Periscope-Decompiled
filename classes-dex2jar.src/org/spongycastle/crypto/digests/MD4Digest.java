package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class MD4Digest
  extends GeneralDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[16];
  private int aGw;
  
  public MD4Digest()
  {
    reset();
  }
  
  public MD4Digest(MD4Digest paramMD4Digest)
  {
    super(paramMD4Digest);
    ˊ(paramMD4Digest);
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
  
  private void ˊ(MD4Digest paramMD4Digest)
  {
    super.ˊ(paramMD4Digest);
    this.aGA = paramMD4Digest.aGA;
    this.aGB = paramMD4Digest.aGB;
    this.aGC = paramMD4Digest.aGC;
    this.aGD = paramMD4Digest.aGD;
    System.arraycopy(paramMD4Digest.aGE, 0, this.aGE, 0, paramMD4Digest.aGE.length);
    this.aGw = paramMD4Digest.aGw;
  }
  
  private int ˌ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int ˍ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  private int ˑ(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
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
    return "MD4";
  }
  
  public int iJ()
  {
    return 16;
  }
  
  public Memoable iU()
  {
    return new MD4Digest(this);
  }
  
  protected void iV()
  {
    int j = this.aGA;
    int i = this.aGB;
    int m = this.aGC;
    int k = this.aGD;
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[0], 3);
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[1], 7);
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[2], 11);
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[3], 19);
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[4], 3);
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[5], 7);
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[6], 11);
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[7], 19);
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[8], 3);
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[9], 7);
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[10], 11);
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[11], 19);
    j = rotateLeft(ˌ(i, m, k) + j + this.aGE[12], 3);
    k = rotateLeft(ˌ(j, i, m) + k + this.aGE[13], 7);
    m = rotateLeft(ˌ(k, j, i) + m + this.aGE[14], 11);
    i = rotateLeft(ˌ(m, k, j) + i + this.aGE[15], 19);
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[0] + 1518500249, 3);
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[4] + 1518500249, 5);
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[8] + 1518500249, 9);
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[12] + 1518500249, 13);
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[1] + 1518500249, 3);
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[5] + 1518500249, 5);
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[9] + 1518500249, 9);
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[13] + 1518500249, 13);
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[2] + 1518500249, 3);
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[6] + 1518500249, 5);
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[10] + 1518500249, 9);
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[14] + 1518500249, 13);
    j = rotateLeft(ˍ(i, m, k) + j + this.aGE[3] + 1518500249, 3);
    k = rotateLeft(ˍ(j, i, m) + k + this.aGE[7] + 1518500249, 5);
    m = rotateLeft(ˍ(k, j, i) + m + this.aGE[11] + 1518500249, 9);
    i = rotateLeft(ˍ(m, k, j) + i + this.aGE[15] + 1518500249, 13);
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[0] + 1859775393, 3);
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[8] + 1859775393, 9);
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[4] + 1859775393, 11);
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[12] + 1859775393, 15);
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[2] + 1859775393, 3);
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[10] + 1859775393, 9);
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[6] + 1859775393, 11);
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[14] + 1859775393, 15);
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[1] + 1859775393, 3);
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[9] + 1859775393, 9);
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[5] + 1859775393, 11);
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[13] + 1859775393, 15);
    j = rotateLeft(ˑ(i, m, k) + j + this.aGE[3] + 1859775393, 3);
    k = rotateLeft(ˑ(j, i, m) + k + this.aGE[11] + 1859775393, 9);
    m = rotateLeft(ˑ(k, j, i) + m + this.aGE[7] + 1859775393, 11);
    i = rotateLeft(ˑ(m, k, j) + i + this.aGE[15] + 1859775393, 15);
    this.aGA += j;
    this.aGB += i;
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
    ˊ((MD4Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.MD4Digest
 * JD-Core Version:    0.7.0.1
 */