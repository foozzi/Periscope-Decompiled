package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class RIPEMD160Digest
  extends GeneralDigest
{
  private int aGA;
  private int aGB;
  private int aGC;
  private int aGD;
  private int[] aGE = new int[16];
  private int aGH;
  private int aGw;
  
  public RIPEMD160Digest()
  {
    reset();
  }
  
  public RIPEMD160Digest(RIPEMD160Digest paramRIPEMD160Digest)
  {
    super(paramRIPEMD160Digest);
    ˊ(paramRIPEMD160Digest);
  }
  
  private int ʹ(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt3 ^ 0xFFFFFFFF | paramInt2) ^ paramInt1;
  }
  
  private void ˊ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24));
  }
  
  private void ˊ(RIPEMD160Digest paramRIPEMD160Digest)
  {
    super.ˊ(paramRIPEMD160Digest);
    this.aGH = paramRIPEMD160Digest.aGH;
    this.aGA = paramRIPEMD160Digest.aGA;
    this.aGB = paramRIPEMD160Digest.aGB;
    this.aGC = paramRIPEMD160Digest.aGC;
    this.aGD = paramRIPEMD160Digest.aGD;
    System.arraycopy(paramRIPEMD160Digest.aGE, 0, this.aGE, 0, paramRIPEMD160Digest.aGE.length);
    this.aGw = paramRIPEMD160Digest.aGw;
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
    reset();
    return 20;
  }
  
  public String iG()
  {
    return "RIPEMD160";
  }
  
  public int iJ()
  {
    return 20;
  }
  
  public Memoable iU()
  {
    return new RIPEMD160Digest(this);
  }
  
  protected void iV()
  {
    int i5 = this.aGH;
    int i2 = this.aGA;
    int i4 = this.aGB;
    int i1 = this.aGC;
    int i3 = this.aGD;
    int j = ᵛ(ᐧ(i2, i4, i1) + i5 + this.aGE[0], 11) + i3;
    int k = ᵛ(i4, 10);
    int m = ᵛ(ᐧ(j, i2, k) + i3 + this.aGE[1], 14) + i1;
    int n = ᵛ(i2, 10);
    int i = ᵛ(ᐧ(m, j, n) + i1 + this.aGE[2], 15) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ᐧ(i, m, j) + k + this.aGE[3], 12) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐧ(k, i, m) + n + this.aGE[4], 5) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐧ(n, k, i) + j + this.aGE[5], 8) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐧ(j, n, k) + m + this.aGE[6], 7) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ᐧ(m, j, n) + i + this.aGE[7], 9) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ᐧ(i, m, j) + k + this.aGE[8], 11) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐧ(k, i, m) + n + this.aGE[9], 13) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐧ(n, k, i) + j + this.aGE[10], 14) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐧ(j, n, k) + m + this.aGE[11], 15) + i;
    n = ᵛ(n, 10);
    int i6 = ᵛ(ᐧ(m, j, n) + i + this.aGE[12], 6) + k;
    int i7 = ᵛ(j, 10);
    int i8 = ᵛ(ᐧ(i6, m, i7) + k + this.aGE[13], 7) + n;
    i = ᵛ(m, 10);
    j = ᵛ(ᐧ(i8, i6, i) + n + this.aGE[14], 9) + i7;
    k = ᵛ(i6, 10);
    m = ᵛ(ᐧ(j, i8, k) + i7 + this.aGE[15], 8) + i;
    n = ᵛ(i8, 10);
    i5 = ᵛ(ʹ(i2, i4, i1) + i5 + this.aGE[5] + 1352829926, 8) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[14] + 1352829926, 9) + i1;
    i2 = ᵛ(i2, 10);
    i1 = ᵛ(ʹ(i3, i5, i2) + i1 + this.aGE[7] + 1352829926, 9) + i4;
    i5 = ᵛ(i5, 10);
    i4 = ᵛ(ʹ(i1, i3, i5) + i4 + this.aGE[0] + 1352829926, 11) + i2;
    i3 = ᵛ(i3, 10);
    i2 = ᵛ(ʹ(i4, i1, i3) + i2 + this.aGE[9] + 1352829926, 13) + i5;
    i1 = ᵛ(i1, 10);
    i5 = ᵛ(ʹ(i2, i4, i1) + i5 + this.aGE[2] + 1352829926, 15) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[11] + 1352829926, 15) + i1;
    i2 = ᵛ(i2, 10);
    i1 = ᵛ(ʹ(i3, i5, i2) + i1 + this.aGE[4] + 1352829926, 5) + i4;
    i5 = ᵛ(i5, 10);
    i4 = ᵛ(ʹ(i1, i3, i5) + i4 + this.aGE[13] + 1352829926, 7) + i2;
    i3 = ᵛ(i3, 10);
    i2 = ᵛ(ʹ(i4, i1, i3) + i2 + this.aGE[6] + 1352829926, 7) + i5;
    i1 = ᵛ(i1, 10);
    i5 = ᵛ(ʹ(i2, i4, i1) + i5 + this.aGE[15] + 1352829926, 8) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[8] + 1352829926, 11) + i1;
    i2 = ᵛ(i2, 10);
    i6 = ᵛ(ʹ(i3, i5, i2) + i1 + this.aGE[1] + 1352829926, 14) + i4;
    i5 = ᵛ(i5, 10);
    i7 = ᵛ(ʹ(i6, i3, i5) + i4 + this.aGE[10] + 1352829926, 14) + i2;
    i1 = ᵛ(i3, 10);
    i2 = ᵛ(ʹ(i7, i6, i1) + i2 + this.aGE[3] + 1352829926, 12) + i5;
    i3 = ᵛ(i6, 10);
    i4 = ᵛ(ʹ(i2, i7, i3) + i5 + this.aGE[12] + 1352829926, 6) + i1;
    i5 = ᵛ(i7, 10);
    i = ᵛ(ᐨ(m, j, n) + i + this.aGE[7] + 1518500249, 7) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ᐨ(i, m, j) + k + this.aGE[4] + 1518500249, 6) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, i, m) + n + this.aGE[13] + 1518500249, 8) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐨ(n, k, i) + j + this.aGE[1] + 1518500249, 13) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐨ(j, n, k) + m + this.aGE[10] + 1518500249, 11) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ᐨ(m, j, n) + i + this.aGE[6] + 1518500249, 9) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ᐨ(i, m, j) + k + this.aGE[15] + 1518500249, 7) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, i, m) + n + this.aGE[3] + 1518500249, 15) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐨ(n, k, i) + j + this.aGE[12] + 1518500249, 7) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐨ(j, n, k) + m + this.aGE[0] + 1518500249, 12) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ᐨ(m, j, n) + i + this.aGE[9] + 1518500249, 15) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ᐨ(i, m, j) + k + this.aGE[5] + 1518500249, 9) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, i, m) + n + this.aGE[2] + 1518500249, 11) + j;
    i6 = ᵛ(i, 10);
    i7 = ᵛ(ᐨ(n, k, i6) + j + this.aGE[14] + 1518500249, 7) + m;
    i = ᵛ(k, 10);
    j = ᵛ(ᐨ(i7, n, i) + m + this.aGE[11] + 1518500249, 13) + i6;
    k = ᵛ(n, 10);
    m = ᵛ(ᐨ(j, i7, k) + i6 + this.aGE[8] + 1518500249, 12) + i;
    n = ᵛ(i7, 10);
    i1 = ᵛ(ﾞ(i4, i2, i5) + i1 + this.aGE[6] + 1548603684, 9) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﾞ(i1, i4, i2) + i3 + this.aGE[11] + 1548603684, 13) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﾞ(i3, i1, i4) + i5 + this.aGE[3] + 1548603684, 15) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ﾞ(i5, i3, i1) + i2 + this.aGE[7] + 1548603684, 7) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﾞ(i2, i5, i3) + i4 + this.aGE[0] + 1548603684, 12) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ﾞ(i4, i2, i5) + i1 + this.aGE[13] + 1548603684, 8) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﾞ(i1, i4, i2) + i3 + this.aGE[5] + 1548603684, 9) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﾞ(i3, i1, i4) + i5 + this.aGE[10] + 1548603684, 11) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ﾞ(i5, i3, i1) + i2 + this.aGE[14] + 1548603684, 7) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﾞ(i2, i5, i3) + i4 + this.aGE[15] + 1548603684, 7) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ﾞ(i4, i2, i5) + i1 + this.aGE[8] + 1548603684, 12) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﾞ(i1, i4, i2) + i3 + this.aGE[12] + 1548603684, 7) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﾞ(i3, i1, i4) + i5 + this.aGE[4] + 1548603684, 6) + i2;
    i6 = ᵛ(i1, 10);
    i7 = ᵛ(ﾞ(i5, i3, i6) + i2 + this.aGE[9] + 1548603684, 15) + i4;
    i1 = ᵛ(i3, 10);
    i2 = ᵛ(ﾞ(i7, i5, i1) + i4 + this.aGE[1] + 1548603684, 13) + i6;
    i3 = ᵛ(i5, 10);
    i4 = ᵛ(ﾞ(i2, i7, i3) + i6 + this.aGE[2] + 1548603684, 11) + i1;
    i5 = ᵛ(i7, 10);
    i = ᵛ(ﹳ(m, j, n) + i + this.aGE[3] + 1859775393, 11) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﹳ(i, m, j) + k + this.aGE[10] + 1859775393, 13) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i, m) + n + this.aGE[14] + 1859775393, 6) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ﹳ(n, k, i) + j + this.aGE[4] + 1859775393, 7) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﹳ(j, n, k) + m + this.aGE[9] + 1859775393, 14) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ﹳ(m, j, n) + i + this.aGE[15] + 1859775393, 9) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﹳ(i, m, j) + k + this.aGE[8] + 1859775393, 13) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i, m) + n + this.aGE[1] + 1859775393, 15) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ﹳ(n, k, i) + j + this.aGE[2] + 1859775393, 14) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﹳ(j, n, k) + m + this.aGE[7] + 1859775393, 8) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ﹳ(m, j, n) + i + this.aGE[0] + 1859775393, 13) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﹳ(i, m, j) + k + this.aGE[6] + 1859775393, 6) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i, m) + n + this.aGE[13] + 1859775393, 5) + j;
    i6 = ᵛ(i, 10);
    i7 = ᵛ(ﹳ(n, k, i6) + j + this.aGE[11] + 1859775393, 12) + m;
    i = ᵛ(k, 10);
    j = ᵛ(ﹳ(i7, n, i) + m + this.aGE[5] + 1859775393, 7) + i6;
    k = ᵛ(n, 10);
    m = ᵛ(ﹳ(j, i7, k) + i6 + this.aGE[12] + 1859775393, 5) + i;
    n = ᵛ(i7, 10);
    i1 = ᵛ(ﹳ(i4, i2, i5) + i1 + this.aGE[15] + 1836072691, 9) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﹳ(i1, i4, i2) + i3 + this.aGE[5] + 1836072691, 7) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﹳ(i3, i1, i4) + i5 + this.aGE[1] + 1836072691, 15) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ﹳ(i5, i3, i1) + i2 + this.aGE[3] + 1836072691, 11) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﹳ(i2, i5, i3) + i4 + this.aGE[7] + 1836072691, 8) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ﹳ(i4, i2, i5) + i1 + this.aGE[14] + 1836072691, 6) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﹳ(i1, i4, i2) + i3 + this.aGE[6] + 1836072691, 6) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﹳ(i3, i1, i4) + i5 + this.aGE[9] + 1836072691, 14) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ﹳ(i5, i3, i1) + i2 + this.aGE[11] + 1836072691, 12) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﹳ(i2, i5, i3) + i4 + this.aGE[8] + 1836072691, 13) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ﹳ(i4, i2, i5) + i1 + this.aGE[12] + 1836072691, 5) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﹳ(i1, i4, i2) + i3 + this.aGE[2] + 1836072691, 14) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﹳ(i3, i1, i4) + i5 + this.aGE[10] + 1836072691, 13) + i2;
    i6 = ᵛ(i1, 10);
    i7 = ᵛ(ﹳ(i5, i3, i6) + i2 + this.aGE[0] + 1836072691, 13) + i4;
    i1 = ᵛ(i3, 10);
    i2 = ᵛ(ﹳ(i7, i5, i1) + i4 + this.aGE[4] + 1836072691, 7) + i6;
    i3 = ᵛ(i5, 10);
    i4 = ᵛ(ﹳ(i2, i7, i3) + i6 + this.aGE[13] + 1836072691, 5) + i1;
    i5 = ᵛ(i7, 10);
    i = ᵛ(ﾞ(m, j, n) + i + this.aGE[1] - 1894007588, 11) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﾞ(i, m, j) + k + this.aGE[9] - 1894007588, 12) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﾞ(k, i, m) + n + this.aGE[11] - 1894007588, 14) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ﾞ(n, k, i) + j + this.aGE[10] - 1894007588, 15) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﾞ(j, n, k) + m + this.aGE[0] - 1894007588, 14) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ﾞ(m, j, n) + i + this.aGE[8] - 1894007588, 15) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﾞ(i, m, j) + k + this.aGE[12] - 1894007588, 9) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﾞ(k, i, m) + n + this.aGE[4] - 1894007588, 8) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ﾞ(n, k, i) + j + this.aGE[13] - 1894007588, 9) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﾞ(j, n, k) + m + this.aGE[3] - 1894007588, 14) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ﾞ(m, j, n) + i + this.aGE[7] - 1894007588, 5) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﾞ(i, m, j) + k + this.aGE[15] - 1894007588, 6) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﾞ(k, i, m) + n + this.aGE[14] - 1894007588, 8) + j;
    i6 = ᵛ(i, 10);
    i7 = ᵛ(ﾞ(n, k, i6) + j + this.aGE[5] - 1894007588, 6) + m;
    i = ᵛ(k, 10);
    j = ᵛ(ﾞ(i7, n, i) + m + this.aGE[6] - 1894007588, 5) + i6;
    k = ᵛ(n, 10);
    m = ᵛ(ﾞ(j, i7, k) + i6 + this.aGE[2] - 1894007588, 12) + i;
    n = ᵛ(i7, 10);
    i1 = ᵛ(ᐨ(i4, i2, i5) + i1 + this.aGE[8] + 2053994217, 15) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i1, i4, i2) + i3 + this.aGE[6] + 2053994217, 5) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i1, i4) + i5 + this.aGE[4] + 2053994217, 8) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ᐨ(i5, i3, i1) + i2 + this.aGE[1] + 2053994217, 11) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐨ(i2, i5, i3) + i4 + this.aGE[3] + 2053994217, 14) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ᐨ(i4, i2, i5) + i1 + this.aGE[11] + 2053994217, 14) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i1, i4, i2) + i3 + this.aGE[15] + 2053994217, 6) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i1, i4) + i5 + this.aGE[0] + 2053994217, 14) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ᐨ(i5, i3, i1) + i2 + this.aGE[5] + 2053994217, 6) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐨ(i2, i5, i3) + i4 + this.aGE[12] + 2053994217, 9) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ᐨ(i4, i2, i5) + i1 + this.aGE[2] + 2053994217, 12) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i1, i4, i2) + i3 + this.aGE[13] + 2053994217, 9) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i1, i4) + i5 + this.aGE[9] + 2053994217, 12) + i2;
    i6 = ᵛ(i1, 10);
    i7 = ᵛ(ᐨ(i5, i3, i6) + i2 + this.aGE[7] + 2053994217, 5) + i4;
    i1 = ᵛ(i3, 10);
    i2 = ᵛ(ᐨ(i7, i5, i1) + i4 + this.aGE[10] + 2053994217, 15) + i6;
    i3 = ᵛ(i5, 10);
    i4 = ᵛ(ᐨ(i2, i7, i3) + i6 + this.aGE[14] + 2053994217, 8) + i1;
    i5 = ᵛ(i7, 10);
    i = ᵛ(ʹ(m, j, n) + i + this.aGE[4] - 1454113458, 9) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ʹ(i, m, j) + k + this.aGE[0] - 1454113458, 15) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ʹ(k, i, m) + n + this.aGE[5] - 1454113458, 5) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ʹ(n, k, i) + j + this.aGE[9] - 1454113458, 11) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ʹ(j, n, k) + m + this.aGE[7] - 1454113458, 6) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ʹ(m, j, n) + i + this.aGE[12] - 1454113458, 8) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ʹ(i, m, j) + k + this.aGE[2] - 1454113458, 13) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ʹ(k, i, m) + n + this.aGE[10] - 1454113458, 12) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ʹ(n, k, i) + j + this.aGE[14] - 1454113458, 5) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ʹ(j, n, k) + m + this.aGE[1] - 1454113458, 12) + i;
    n = ᵛ(n, 10);
    i = ᵛ(ʹ(m, j, n) + i + this.aGE[3] - 1454113458, 13) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ʹ(i, m, j) + k + this.aGE[8] - 1454113458, 14) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ʹ(k, i, m) + n + this.aGE[11] - 1454113458, 11) + j;
    i6 = ᵛ(i, 10);
    i7 = ᵛ(ʹ(n, k, i6) + j + this.aGE[6] - 1454113458, 8) + m;
    i = ᵛ(k, 10);
    j = ᵛ(ʹ(i7, n, i) + m + this.aGE[15] - 1454113458, 5) + i6;
    k = ᵛ(n, 10);
    m = ᵛ(ʹ(j, i7, k) + i6 + this.aGE[13] - 1454113458, 6);
    n = ᵛ(i7, 10);
    i1 = ᵛ(ᐧ(i4, i2, i5) + i1 + this.aGE[12], 8) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(i1, i4, i2) + i3 + this.aGE[15], 5) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐧ(i3, i1, i4) + i5 + this.aGE[10], 12) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ᐧ(i5, i3, i1) + i2 + this.aGE[4], 9) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐧ(i2, i5, i3) + i4 + this.aGE[1], 12) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ᐧ(i4, i2, i5) + i1 + this.aGE[5], 5) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(i1, i4, i2) + i3 + this.aGE[8], 14) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐧ(i3, i1, i4) + i5 + this.aGE[7], 6) + i2;
    i1 = ᵛ(i1, 10);
    i2 = ᵛ(ᐧ(i5, i3, i1) + i2 + this.aGE[6], 8) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐧ(i2, i5, i3) + i4 + this.aGE[2], 13) + i1;
    i5 = ᵛ(i5, 10);
    i1 = ᵛ(ᐧ(i4, i2, i5) + i1 + this.aGE[13], 6) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(i1, i4, i2) + i3 + this.aGE[14], 5) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐧ(i3, i1, i4) + i5 + this.aGE[0], 15) + i2;
    i6 = ᵛ(i1, 10);
    i2 = ᵛ(ᐧ(i5, i3, i6) + i2 + this.aGE[3], 13) + i4;
    i1 = ᵛ(i3, 10);
    i3 = ᵛ(ᐧ(i2, i5, i1) + i4 + this.aGE[9], 11) + i6;
    i4 = ᵛ(i5, 10);
    i5 = ᵛ(ᐧ(i3, i2, i4) + i6 + this.aGE[11], 11);
    i2 = ᵛ(i2, 10);
    i6 = this.aGA;
    this.aGA = (this.aGB + n + i4);
    this.aGB = (this.aGC + k + i1);
    this.aGC = (this.aGD + i + (i5 + i1));
    this.aGD = (this.aGH + (m + i) + i3);
    this.aGH = (i2 + (i6 + j));
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
    this.aGD = -1009589776;
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
    ˊ((RIPEMD160Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.RIPEMD160Digest
 * JD-Core Version:    0.7.0.1
 */