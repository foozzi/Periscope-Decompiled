package org.spongycastle.crypto.digests;

import org.spongycastle.util.Memoable;

public class RIPEMD320Digest
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
  private int aGL;
  private int aGM;
  private int aGw;
  
  public RIPEMD320Digest()
  {
    reset();
  }
  
  public RIPEMD320Digest(RIPEMD320Digest paramRIPEMD320Digest)
  {
    super(paramRIPEMD320Digest);
    ˊ(paramRIPEMD320Digest);
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
  
  private void ˊ(RIPEMD320Digest paramRIPEMD320Digest)
  {
    super.ˊ(paramRIPEMD320Digest);
    this.aGH = paramRIPEMD320Digest.aGH;
    this.aGA = paramRIPEMD320Digest.aGA;
    this.aGB = paramRIPEMD320Digest.aGB;
    this.aGC = paramRIPEMD320Digest.aGC;
    this.aGD = paramRIPEMD320Digest.aGD;
    this.aGI = paramRIPEMD320Digest.aGI;
    this.aGJ = paramRIPEMD320Digest.aGJ;
    this.aGK = paramRIPEMD320Digest.aGK;
    this.aGL = paramRIPEMD320Digest.aGL;
    this.aGM = paramRIPEMD320Digest.aGM;
    System.arraycopy(paramRIPEMD320Digest.aGE, 0, this.aGE, 0, paramRIPEMD320Digest.aGE.length);
    this.aGw = paramRIPEMD320Digest.aGw;
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
    ˊ(this.aGL, paramArrayOfByte, paramInt + 32);
    ˊ(this.aGM, paramArrayOfByte, paramInt + 36);
    reset();
    return 40;
  }
  
  public String iG()
  {
    return "RIPEMD320";
  }
  
  public int iJ()
  {
    return 40;
  }
  
  public Memoable iU()
  {
    return new RIPEMD320Digest(this);
  }
  
  protected void iV()
  {
    int k = this.aGH;
    int i1 = this.aGA;
    int m = this.aGB;
    int i = this.aGC;
    int n = this.aGD;
    int i5 = this.aGI;
    int i2 = this.aGJ;
    int i4 = this.aGK;
    int j = this.aGL;
    int i3 = this.aGM;
    k = ᵛ(ᐧ(i1, m, i) + k + this.aGE[0], 11) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐧ(k, i1, m) + n + this.aGE[1], 14) + i;
    i1 = ᵛ(i1, 10);
    i = ᵛ(ᐧ(n, k, i1) + i + this.aGE[2], 15) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐧ(i, n, k) + m + this.aGE[3], 12) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ᐧ(m, i, n) + i1 + this.aGE[4], 5) + k;
    i = ᵛ(i, 10);
    k = ᵛ(ᐧ(i1, m, i) + k + this.aGE[5], 8) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐧ(k, i1, m) + n + this.aGE[6], 7) + i;
    i1 = ᵛ(i1, 10);
    i = ᵛ(ᐧ(n, k, i1) + i + this.aGE[7], 9) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐧ(i, n, k) + m + this.aGE[8], 11) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ᐧ(m, i, n) + i1 + this.aGE[9], 13) + k;
    i = ᵛ(i, 10);
    k = ᵛ(ᐧ(i1, m, i) + k + this.aGE[10], 14) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐧ(k, i1, m) + n + this.aGE[11], 15) + i;
    i1 = ᵛ(i1, 10);
    i = ᵛ(ᐧ(n, k, i1) + i + this.aGE[12], 6) + m;
    int i6 = ᵛ(k, 10);
    int i7 = ᵛ(ᐧ(i, n, i6) + m + this.aGE[13], 7) + i1;
    k = ᵛ(n, 10);
    m = ᵛ(ᐧ(i7, i, k) + i1 + this.aGE[14], 9) + i6;
    n = ᵛ(i, 10);
    i = ᵛ(ᐧ(m, i7, n) + i6 + this.aGE[15], 8) + k;
    i1 = ᵛ(i7, 10);
    i5 = ᵛ(ʹ(i2, i4, j) + i5 + this.aGE[5] + 1352829926, 8) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[14] + 1352829926, 9) + j;
    i2 = ᵛ(i2, 10);
    j = ᵛ(ʹ(i3, i5, i2) + j + this.aGE[7] + 1352829926, 9) + i4;
    i5 = ᵛ(i5, 10);
    i4 = ᵛ(ʹ(j, i3, i5) + i4 + this.aGE[0] + 1352829926, 11) + i2;
    i3 = ᵛ(i3, 10);
    i2 = ᵛ(ʹ(i4, j, i3) + i2 + this.aGE[9] + 1352829926, 13) + i5;
    j = ᵛ(j, 10);
    i5 = ᵛ(ʹ(i2, i4, j) + i5 + this.aGE[2] + 1352829926, 15) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[11] + 1352829926, 15) + j;
    i2 = ᵛ(i2, 10);
    j = ᵛ(ʹ(i3, i5, i2) + j + this.aGE[4] + 1352829926, 5) + i4;
    i5 = ᵛ(i5, 10);
    i4 = ᵛ(ʹ(j, i3, i5) + i4 + this.aGE[13] + 1352829926, 7) + i2;
    i3 = ᵛ(i3, 10);
    i2 = ᵛ(ʹ(i4, j, i3) + i2 + this.aGE[6] + 1352829926, 7) + i5;
    j = ᵛ(j, 10);
    i5 = ᵛ(ʹ(i2, i4, j) + i5 + this.aGE[15] + 1352829926, 8) + i3;
    i4 = ᵛ(i4, 10);
    i3 = ᵛ(ʹ(i5, i2, i4) + i3 + this.aGE[8] + 1352829926, 11) + j;
    i6 = ᵛ(i2, 10);
    j = ᵛ(ʹ(i3, i5, i6) + j + this.aGE[1] + 1352829926, 14) + i4;
    i5 = ᵛ(i5, 10);
    i7 = ᵛ(ʹ(j, i3, i5) + i4 + this.aGE[10] + 1352829926, 14) + i6;
    i2 = ᵛ(i3, 10);
    i3 = ᵛ(ʹ(i7, j, i2) + i6 + this.aGE[3] + 1352829926, 12) + i5;
    i4 = ᵛ(j, 10);
    j = ᵛ(ʹ(i3, i7, i4) + i5 + this.aGE[12] + 1352829926, 6) + i2;
    i5 = ᵛ(i7, 10);
    k = ᵛ(ᐨ(j, m, i1) + k + this.aGE[7] + 1518500249, 7) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, j, m) + n + this.aGE[4] + 1518500249, 6) + i1;
    j = ᵛ(j, 10);
    i1 = ᵛ(ᐨ(n, k, j) + i1 + this.aGE[13] + 1518500249, 8) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐨ(i1, n, k) + m + this.aGE[1] + 1518500249, 13) + j;
    n = ᵛ(n, 10);
    j = ᵛ(ᐨ(m, i1, n) + j + this.aGE[10] + 1518500249, 11) + k;
    i1 = ᵛ(i1, 10);
    k = ᵛ(ᐨ(j, m, i1) + k + this.aGE[6] + 1518500249, 9) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, j, m) + n + this.aGE[15] + 1518500249, 7) + i1;
    j = ᵛ(j, 10);
    i1 = ᵛ(ᐨ(n, k, j) + i1 + this.aGE[3] + 1518500249, 15) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ᐨ(i1, n, k) + m + this.aGE[12] + 1518500249, 7) + j;
    n = ᵛ(n, 10);
    j = ᵛ(ᐨ(m, i1, n) + j + this.aGE[0] + 1518500249, 12) + k;
    i1 = ᵛ(i1, 10);
    k = ᵛ(ᐨ(j, m, i1) + k + this.aGE[9] + 1518500249, 15) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ᐨ(k, j, m) + n + this.aGE[5] + 1518500249, 9) + i1;
    j = ᵛ(j, 10);
    i1 = ᵛ(ᐨ(n, k, j) + i1 + this.aGE[2] + 1518500249, 11) + m;
    i6 = ᵛ(k, 10);
    i7 = ᵛ(ᐨ(i1, n, i6) + m + this.aGE[14] + 1518500249, 7) + j;
    k = ᵛ(n, 10);
    m = ᵛ(ᐨ(i7, i1, k) + j + this.aGE[11] + 1518500249, 13) + i6;
    n = ᵛ(i1, 10);
    i1 = ᵛ(ᐨ(m, i7, n) + i6 + this.aGE[8] + 1518500249, 12) + k;
    j = ᵛ(i7, 10);
    i2 = ᵛ(ﾞ(i, i3, i5) + i2 + this.aGE[6] + 1548603684, 9) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﾞ(i2, i, i3) + i4 + this.aGE[11] + 1548603684, 13) + i5;
    i = ᵛ(i, 10);
    i5 = ᵛ(ﾞ(i4, i2, i) + i5 + this.aGE[3] + 1548603684, 15) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﾞ(i5, i4, i2) + i3 + this.aGE[7] + 1548603684, 7) + i;
    i4 = ᵛ(i4, 10);
    i = ᵛ(ﾞ(i3, i5, i4) + i + this.aGE[0] + 1548603684, 12) + i2;
    i5 = ᵛ(i5, 10);
    i2 = ᵛ(ﾞ(i, i3, i5) + i2 + this.aGE[13] + 1548603684, 8) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﾞ(i2, i, i3) + i4 + this.aGE[5] + 1548603684, 9) + i5;
    i = ᵛ(i, 10);
    i5 = ᵛ(ﾞ(i4, i2, i) + i5 + this.aGE[10] + 1548603684, 11) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﾞ(i5, i4, i2) + i3 + this.aGE[14] + 1548603684, 7) + i;
    i4 = ᵛ(i4, 10);
    i = ᵛ(ﾞ(i3, i5, i4) + i + this.aGE[15] + 1548603684, 7) + i2;
    i5 = ᵛ(i5, 10);
    i2 = ᵛ(ﾞ(i, i3, i5) + i2 + this.aGE[8] + 1548603684, 12) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﾞ(i2, i, i3) + i4 + this.aGE[12] + 1548603684, 7) + i5;
    i = ᵛ(i, 10);
    i5 = ᵛ(ﾞ(i4, i2, i) + i5 + this.aGE[4] + 1548603684, 6) + i3;
    i6 = ᵛ(i2, 10);
    i7 = ᵛ(ﾞ(i5, i4, i6) + i3 + this.aGE[9] + 1548603684, 15) + i;
    i2 = ᵛ(i4, 10);
    i3 = ᵛ(ﾞ(i7, i5, i2) + i + this.aGE[1] + 1548603684, 13) + i6;
    i4 = ᵛ(i5, 10);
    i5 = ᵛ(ﾞ(i3, i7, i4) + i6 + this.aGE[2] + 1548603684, 11) + i2;
    i = ᵛ(i7, 10);
    k = ᵛ(ﹳ(i1, m, i) + k + this.aGE[3] + 1859775393, 11) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i1, m) + n + this.aGE[10] + 1859775393, 13) + i;
    i1 = ᵛ(i1, 10);
    i = ᵛ(ﹳ(n, k, i1) + i + this.aGE[14] + 1859775393, 6) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﹳ(i, n, k) + m + this.aGE[4] + 1859775393, 7) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ﹳ(m, i, n) + i1 + this.aGE[9] + 1859775393, 14) + k;
    i = ᵛ(i, 10);
    k = ᵛ(ﹳ(i1, m, i) + k + this.aGE[15] + 1859775393, 9) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i1, m) + n + this.aGE[8] + 1859775393, 13) + i;
    i1 = ᵛ(i1, 10);
    i = ᵛ(ﹳ(n, k, i1) + i + this.aGE[1] + 1859775393, 15) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﹳ(i, n, k) + m + this.aGE[2] + 1859775393, 14) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ﹳ(m, i, n) + i1 + this.aGE[7] + 1859775393, 8) + k;
    i = ᵛ(i, 10);
    k = ᵛ(ﹳ(i1, m, i) + k + this.aGE[0] + 1859775393, 13) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﹳ(k, i1, m) + n + this.aGE[6] + 1859775393, 6) + i;
    i1 = ᵛ(i1, 10);
    i6 = ᵛ(ﹳ(n, k, i1) + i + this.aGE[13] + 1859775393, 5) + m;
    i7 = ᵛ(k, 10);
    int i8 = ᵛ(ﹳ(i6, n, i7) + m + this.aGE[11] + 1859775393, 12) + i1;
    i = ᵛ(n, 10);
    k = ᵛ(ﹳ(i8, i6, i) + i1 + this.aGE[5] + 1859775393, 7) + i7;
    m = ᵛ(i6, 10);
    n = ᵛ(ﹳ(k, i8, m) + i7 + this.aGE[12] + 1859775393, 5) + i;
    i1 = ᵛ(i8, 10);
    i2 = ᵛ(ﹳ(i5, i3, j) + i2 + this.aGE[15] + 1836072691, 9) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﹳ(i2, i5, i3) + i4 + this.aGE[5] + 1836072691, 7) + j;
    i5 = ᵛ(i5, 10);
    j = ᵛ(ﹳ(i4, i2, i5) + j + this.aGE[1] + 1836072691, 15) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﹳ(j, i4, i2) + i3 + this.aGE[3] + 1836072691, 11) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﹳ(i3, j, i4) + i5 + this.aGE[7] + 1836072691, 8) + i2;
    j = ᵛ(j, 10);
    i2 = ᵛ(ﹳ(i5, i3, j) + i2 + this.aGE[14] + 1836072691, 6) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﹳ(i2, i5, i3) + i4 + this.aGE[6] + 1836072691, 6) + j;
    i5 = ᵛ(i5, 10);
    j = ᵛ(ﹳ(i4, i2, i5) + j + this.aGE[9] + 1836072691, 14) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ﹳ(j, i4, i2) + i3 + this.aGE[11] + 1836072691, 12) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ﹳ(i3, j, i4) + i5 + this.aGE[8] + 1836072691, 13) + i2;
    j = ᵛ(j, 10);
    i2 = ᵛ(ﹳ(i5, i3, j) + i2 + this.aGE[12] + 1836072691, 5) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ﹳ(i2, i5, i3) + i4 + this.aGE[2] + 1836072691, 14) + j;
    i5 = ᵛ(i5, 10);
    j = ᵛ(ﹳ(i4, i2, i5) + j + this.aGE[10] + 1836072691, 13) + i3;
    i6 = ᵛ(i2, 10);
    i7 = ᵛ(ﹳ(j, i4, i6) + i3 + this.aGE[0] + 1836072691, 13) + i5;
    i8 = ᵛ(i4, 10);
    i2 = ᵛ(ﹳ(i7, j, i8) + i5 + this.aGE[4] + 1836072691, 7) + i6;
    i3 = ᵛ(j, 10);
    i4 = ᵛ(ﹳ(i2, i7, i3) + i6 + this.aGE[13] + 1836072691, 5) + i8;
    i5 = ᵛ(i7, 10);
    j = ᵛ(ﾞ(n, k, i1) + i8 + this.aGE[1] - 1894007588, 11) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﾞ(j, n, k) + m + this.aGE[9] - 1894007588, 12) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ﾞ(m, j, n) + i1 + this.aGE[11] - 1894007588, 14) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﾞ(i1, m, j) + k + this.aGE[10] - 1894007588, 15) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﾞ(k, i1, m) + n + this.aGE[0] - 1894007588, 14) + j;
    i1 = ᵛ(i1, 10);
    j = ᵛ(ﾞ(n, k, i1) + j + this.aGE[8] - 1894007588, 15) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﾞ(j, n, k) + m + this.aGE[12] - 1894007588, 9) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ﾞ(m, j, n) + i1 + this.aGE[4] - 1894007588, 8) + k;
    j = ᵛ(j, 10);
    k = ᵛ(ﾞ(i1, m, j) + k + this.aGE[13] - 1894007588, 9) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ﾞ(k, i1, m) + n + this.aGE[3] - 1894007588, 14) + j;
    i1 = ᵛ(i1, 10);
    j = ᵛ(ﾞ(n, k, i1) + j + this.aGE[7] - 1894007588, 5) + m;
    k = ᵛ(k, 10);
    m = ᵛ(ﾞ(j, n, k) + m + this.aGE[15] - 1894007588, 6) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ﾞ(m, j, n) + i1 + this.aGE[14] - 1894007588, 8) + k;
    i6 = ᵛ(j, 10);
    i7 = ᵛ(ﾞ(i1, m, i6) + k + this.aGE[5] - 1894007588, 6) + n;
    k = ᵛ(m, 10);
    j = ᵛ(ﾞ(i7, i1, k) + n + this.aGE[6] - 1894007588, 5) + i6;
    m = ᵛ(i1, 10);
    n = ᵛ(ﾞ(j, i7, m) + i6 + this.aGE[2] - 1894007588, 12) + k;
    i1 = ᵛ(i7, 10);
    i = ᵛ(ᐨ(i4, i2, i5) + i + this.aGE[8] + 2053994217, 15) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i, i4, i2) + i3 + this.aGE[6] + 2053994217, 5) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i, i4) + i5 + this.aGE[4] + 2053994217, 8) + i2;
    i = ᵛ(i, 10);
    i2 = ᵛ(ᐨ(i5, i3, i) + i2 + this.aGE[1] + 2053994217, 11) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐨ(i2, i5, i3) + i4 + this.aGE[3] + 2053994217, 14) + i;
    i5 = ᵛ(i5, 10);
    i = ᵛ(ᐨ(i4, i2, i5) + i + this.aGE[11] + 2053994217, 14) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i, i4, i2) + i3 + this.aGE[15] + 2053994217, 6) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i, i4) + i5 + this.aGE[0] + 2053994217, 14) + i2;
    i = ᵛ(i, 10);
    i2 = ᵛ(ᐨ(i5, i3, i) + i2 + this.aGE[5] + 2053994217, 6) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐨ(i2, i5, i3) + i4 + this.aGE[12] + 2053994217, 9) + i;
    i5 = ᵛ(i5, 10);
    i = ᵛ(ᐨ(i4, i2, i5) + i + this.aGE[2] + 2053994217, 12) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐨ(i, i4, i2) + i3 + this.aGE[13] + 2053994217, 9) + i5;
    i4 = ᵛ(i4, 10);
    i5 = ᵛ(ᐨ(i3, i, i4) + i5 + this.aGE[9] + 2053994217, 12) + i2;
    i6 = ᵛ(i, 10);
    i7 = ᵛ(ᐨ(i5, i3, i6) + i2 + this.aGE[7] + 2053994217, 5) + i4;
    i = ᵛ(i3, 10);
    i8 = ᵛ(ᐨ(i7, i5, i) + i4 + this.aGE[10] + 2053994217, 15) + i6;
    i2 = ᵛ(i5, 10);
    i3 = ᵛ(ᐨ(i8, i7, i2) + i6 + this.aGE[14] + 2053994217, 8) + i;
    i4 = ᵛ(i7, 10);
    k = ᵛ(ʹ(n, i8, i1) + k + this.aGE[4] - 1454113458, 9) + m;
    i5 = ᵛ(i8, 10);
    m = ᵛ(ʹ(k, n, i5) + m + this.aGE[0] - 1454113458, 15) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ʹ(m, k, n) + i1 + this.aGE[5] - 1454113458, 5) + i5;
    k = ᵛ(k, 10);
    i5 = ᵛ(ʹ(i1, m, k) + i5 + this.aGE[9] - 1454113458, 11) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ʹ(i5, i1, m) + n + this.aGE[7] - 1454113458, 6) + k;
    i1 = ᵛ(i1, 10);
    k = ᵛ(ʹ(n, i5, i1) + k + this.aGE[12] - 1454113458, 8) + m;
    i5 = ᵛ(i5, 10);
    m = ᵛ(ʹ(k, n, i5) + m + this.aGE[2] - 1454113458, 13) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ʹ(m, k, n) + i1 + this.aGE[10] - 1454113458, 12) + i5;
    k = ᵛ(k, 10);
    i5 = ᵛ(ʹ(i1, m, k) + i5 + this.aGE[14] - 1454113458, 5) + n;
    m = ᵛ(m, 10);
    n = ᵛ(ʹ(i5, i1, m) + n + this.aGE[1] - 1454113458, 12) + k;
    i1 = ᵛ(i1, 10);
    k = ᵛ(ʹ(n, i5, i1) + k + this.aGE[3] - 1454113458, 13) + m;
    i5 = ᵛ(i5, 10);
    m = ᵛ(ʹ(k, n, i5) + m + this.aGE[8] - 1454113458, 14) + i1;
    n = ᵛ(n, 10);
    i1 = ᵛ(ʹ(m, k, n) + i1 + this.aGE[11] - 1454113458, 11) + i5;
    i6 = ᵛ(k, 10);
    i5 = ᵛ(ʹ(i1, m, i6) + i5 + this.aGE[6] - 1454113458, 8) + n;
    k = ᵛ(m, 10);
    m = ᵛ(ʹ(i5, i1, k) + n + this.aGE[15] - 1454113458, 5) + i6;
    n = ᵛ(i1, 10);
    i1 = ᵛ(ʹ(m, i5, n) + i6 + this.aGE[13] - 1454113458, 6);
    i5 = ᵛ(i5, 10);
    i = ᵛ(ᐧ(i3, j, i4) + i + this.aGE[12], 8) + i2;
    j = ᵛ(j, 10);
    i2 = ᵛ(ᐧ(i, i3, j) + i2 + this.aGE[15], 5) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐧ(i2, i, i3) + i4 + this.aGE[10], 12) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐧ(i4, i2, i) + j + this.aGE[4], 9) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(j, i4, i2) + i3 + this.aGE[1], 12) + i;
    i4 = ᵛ(i4, 10);
    i = ᵛ(ᐧ(i3, j, i4) + i + this.aGE[5], 5) + i2;
    j = ᵛ(j, 10);
    i2 = ᵛ(ᐧ(i, i3, j) + i2 + this.aGE[8], 14) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐧ(i2, i, i3) + i4 + this.aGE[7], 6) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐧ(i4, i2, i) + j + this.aGE[6], 8) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(j, i4, i2) + i3 + this.aGE[2], 13) + i;
    i4 = ᵛ(i4, 10);
    i = ᵛ(ᐧ(i3, j, i4) + i + this.aGE[13], 6) + i2;
    j = ᵛ(j, 10);
    i2 = ᵛ(ᐧ(i, i3, j) + i2 + this.aGE[14], 5) + i4;
    i3 = ᵛ(i3, 10);
    i4 = ᵛ(ᐧ(i2, i, i3) + i4 + this.aGE[0], 15) + j;
    i = ᵛ(i, 10);
    j = ᵛ(ᐧ(i4, i2, i) + j + this.aGE[3], 13) + i3;
    i2 = ᵛ(i2, 10);
    i3 = ᵛ(ᐧ(j, i4, i2) + i3 + this.aGE[9], 11) + i;
    i4 = ᵛ(i4, 10);
    i = ᵛ(ᐧ(i3, j, i4) + i + this.aGE[11], 11);
    j = ᵛ(j, 10);
    this.aGH += k;
    this.aGA += i1 + k;
    this.aGB += m;
    this.aGC += i5;
    this.aGD += i4;
    this.aGI += i2;
    this.aGJ += i + i2;
    this.aGK += i3;
    this.aGL += j;
    this.aGM += n;
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
    this.aGI = 1985229328;
    this.aGJ = -19088744;
    this.aGK = -1985229329;
    this.aGL = 19088743;
    this.aGM = 1009589775;
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
    ˊ((RIPEMD320Digest)paramMemoable);
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
 * Qualified Name:     org.spongycastle.crypto.digests.RIPEMD320Digest
 * JD-Core Version:    0.7.0.1
 */