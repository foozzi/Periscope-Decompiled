package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;

public final class WhirlpoolDigest
  implements ExtendedDigest, Memoable
{
  private static final int[] aHQ = { 24, 35, 198, 232, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, 224, 215, 194, 46, 75, 254, 87, 21, 119, 55, 229, 159, 240, 74, 218, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, 251, 238, 124, 102, 221, 23, 71, 158, 202, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, 153, 109, 13, 250, 223, 126, 36, 59, 171, 206, 17, 143, 78, 183, 235, 60, 129, 148, 247, 185, 19, 44, 211, 231, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, 134 };
  private static final long[] aHR = new long[256];
  private static final long[] aHS = new long[256];
  private static final long[] aHT = new long[256];
  private static final long[] aHU = new long[256];
  private static final long[] aHV = new long[256];
  private static final long[] aHW = new long[256];
  private static final long[] aHX = new long[256];
  private static final long[] aHY = new long[256];
  private static final short[] aIi = new short[32];
  private final long[] aHZ = new long[11];
  private byte[] aIa = new byte[64];
  private int aIb = 0;
  private short[] aIc = new short[32];
  private long[] aId = new long[8];
  private long[] aIe = new long[8];
  private long[] aIf = new long[8];
  private long[] aIg = new long[8];
  private long[] aIh = new long[8];
  
  static
  {
    aIi[31] = 8;
  }
  
  public WhirlpoolDigest()
  {
    int i = 0;
    int j;
    while (i < 256)
    {
      j = aHQ[i];
      int k = ᴐ(j << 1);
      int m = ᴐ(k << 1);
      int n = m ^ j;
      int i1 = ᴐ(m << 1);
      int i2 = i1 ^ j;
      aHR[i] = ˊ(j, j, m, j, i1, n, k, i2);
      aHS[i] = ˊ(i2, j, j, m, j, i1, n, k);
      aHT[i] = ˊ(k, i2, j, j, m, j, i1, n);
      aHU[i] = ˊ(n, k, i2, j, j, m, j, i1);
      aHV[i] = ˊ(i1, n, k, i2, j, j, m, j);
      aHW[i] = ˊ(j, i1, n, k, i2, j, j, m);
      aHX[i] = ˊ(m, j, i1, n, k, i2, j, j);
      aHY[i] = ˊ(j, m, j, i1, n, k, i2, j);
      i += 1;
    }
    this.aHZ[0] = 0L;
    i = 1;
    while (i <= 10)
    {
      j = (i - 1) * 8;
      this.aHZ[i] = (aHR[j] & 0x0 ^ aHS[(j + 1)] & 0x0 ^ aHT[(j + 2)] & 0x0 ^ aHU[(j + 3)] & 0x0 ^ aHV[(j + 4)] & 0xFF000000 ^ aHW[(j + 5)] & 0xFF0000 ^ aHX[(j + 6)] & 0xFF00 ^ aHY[(j + 7)] & 0xFF);
      i += 1;
    }
  }
  
  public WhirlpoolDigest(WhirlpoolDigest paramWhirlpoolDigest)
  {
    ˊ(paramWhirlpoolDigest);
  }
  
  private void finish()
  {
    byte[] arrayOfByte1 = jj();
    byte[] arrayOfByte2 = this.aIa;
    int i = this.aIb;
    this.aIb = (i + 1);
    arrayOfByte2[i] = ((byte)(arrayOfByte2[i] | 0x80));
    if (this.aIb == this.aIa.length) {
      ʾ(this.aIa, 0);
    }
    if (this.aIb > 32) {
      while (this.aIb != 0) {
        update((byte)0);
      }
    }
    while (this.aIb <= 32) {
      update((byte)0);
    }
    System.arraycopy(arrayOfByte1, 0, this.aIa, 32, arrayOfByte1.length);
    ʾ(this.aIa, 0);
  }
  
  private void ji()
  {
    int j = 0;
    int i = this.aIc.length - 1;
    while (i >= 0)
    {
      int k = (this.aIc[i] & 0xFF) + aIi[i] + j;
      j = k >>> 8;
      this.aIc[i] = ((short)(k & 0xFF));
      i -= 1;
    }
  }
  
  private byte[] jj()
  {
    byte[] arrayOfByte = new byte[32];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(this.aIc[i] & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }
  
  private void ʾ(byte[] paramArrayOfByte, int paramInt)
  {
    paramInt = 0;
    while (paramInt < this.aIh.length)
    {
      this.aIg[paramInt] = ʿ(this.aIa, paramInt * 8);
      paramInt += 1;
    }
    iV();
    this.aIb = 0;
    Arrays.fill(this.aIa, (byte)0);
  }
  
  private long ʿ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 0)] & 0xFF) << 56 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 48 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 40 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 32 | (paramArrayOfByte[(paramInt + 4)] & 0xFF) << 24 | (paramArrayOfByte[(paramInt + 5)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 6)] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 7)] & 0xFF;
  }
  
  private long ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    return paramInt1 << 56 ^ paramInt2 << 48 ^ paramInt3 << 40 ^ paramInt4 << 32 ^ paramInt5 << 24 ^ paramInt6 << 16 ^ paramInt7 << 8 ^ paramInt8;
  }
  
  private void ˎ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i < 8)
    {
      paramArrayOfByte[(paramInt + i)] = ((byte)(int)(paramLong >> 56 - i * 8 & 0xFF));
      i += 1;
    }
  }
  
  private int ᴐ(int paramInt)
  {
    int i = paramInt;
    if (paramInt >= 256L) {
      i = paramInt ^ 0x11D;
    }
    return i;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    finish();
    int i = 0;
    while (i < 8)
    {
      ˎ(this.aId[i], paramArrayOfByte, i * 8 + paramInt);
      i += 1;
    }
    reset();
    return iJ();
  }
  
  public String iG()
  {
    return "Whirlpool";
  }
  
  public int iJ()
  {
    return 64;
  }
  
  public int iM()
  {
    return 64;
  }
  
  public Memoable iU()
  {
    return new WhirlpoolDigest(this);
  }
  
  protected void iV()
  {
    int i = 0;
    long[] arrayOfLong1;
    while (i < 8)
    {
      arrayOfLong1 = this.aIh;
      long l1 = this.aIg[i];
      long[] arrayOfLong2 = this.aIe;
      long l2 = this.aId[i];
      arrayOfLong2[i] = l2;
      arrayOfLong1[i] = (l1 ^ l2);
      i += 1;
    }
    i = 1;
    while (i <= 10)
    {
      int j = 0;
      while (j < 8)
      {
        this.aIf[j] = 0L;
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHR[((int)(this.aIe[(j + 0 & 0x7)] >>> 56) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHS[((int)(this.aIe[(j - 1 & 0x7)] >>> 48) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHT[((int)(this.aIe[(j - 2 & 0x7)] >>> 40) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHU[((int)(this.aIe[(j - 3 & 0x7)] >>> 32) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHV[((int)(this.aIe[(j - 4 & 0x7)] >>> 24) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHW[((int)(this.aIe[(j - 5 & 0x7)] >>> 16) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHX[((int)(this.aIe[(j - 6 & 0x7)] >>> 8) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHY[((int)this.aIe[(j - 7 & 0x7)] & 0xFF)];
        j += 1;
      }
      System.arraycopy(this.aIf, 0, this.aIe, 0, this.aIe.length);
      arrayOfLong1 = this.aIe;
      arrayOfLong1[0] ^= this.aHZ[i];
      j = 0;
      while (j < 8)
      {
        this.aIf[j] = this.aIe[j];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHR[((int)(this.aIh[(j + 0 & 0x7)] >>> 56) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHS[((int)(this.aIh[(j - 1 & 0x7)] >>> 48) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHT[((int)(this.aIh[(j - 2 & 0x7)] >>> 40) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHU[((int)(this.aIh[(j - 3 & 0x7)] >>> 32) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHV[((int)(this.aIh[(j - 4 & 0x7)] >>> 24) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHW[((int)(this.aIh[(j - 5 & 0x7)] >>> 16) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHX[((int)(this.aIh[(j - 6 & 0x7)] >>> 8) & 0xFF)];
        arrayOfLong1 = this.aIf;
        arrayOfLong1[j] ^= aHY[((int)this.aIh[(j - 7 & 0x7)] & 0xFF)];
        j += 1;
      }
      System.arraycopy(this.aIf, 0, this.aIh, 0, this.aIh.length);
      i += 1;
    }
    i = 0;
    while (i < 8)
    {
      arrayOfLong1 = this.aId;
      arrayOfLong1[i] ^= this.aIh[i] ^ this.aIg[i];
      i += 1;
    }
  }
  
  public void reset()
  {
    this.aIb = 0;
    Arrays.fill(this.aIc, (short)0);
    Arrays.fill(this.aIa, (byte)0);
    Arrays.fill(this.aId, 0L);
    Arrays.fill(this.aIe, 0L);
    Arrays.fill(this.aIf, 0L);
    Arrays.fill(this.aIg, 0L);
    Arrays.fill(this.aIh, 0L);
  }
  
  public void update(byte paramByte)
  {
    this.aIa[this.aIb] = paramByte;
    this.aIb += 1;
    if (this.aIb == this.aIa.length) {
      ʾ(this.aIa, 0);
    }
    ji();
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (paramInt2 > 0)
    {
      update(paramArrayOfByte[paramInt1]);
      paramInt1 += 1;
      paramInt2 -= 1;
    }
  }
  
  public void ˊ(Memoable paramMemoable)
  {
    paramMemoable = (WhirlpoolDigest)paramMemoable;
    System.arraycopy(paramMemoable.aHZ, 0, this.aHZ, 0, this.aHZ.length);
    System.arraycopy(paramMemoable.aIa, 0, this.aIa, 0, this.aIa.length);
    this.aIb = paramMemoable.aIb;
    System.arraycopy(paramMemoable.aIc, 0, this.aIc, 0, this.aIc.length);
    System.arraycopy(paramMemoable.aId, 0, this.aId, 0, this.aId.length);
    System.arraycopy(paramMemoable.aIe, 0, this.aIe, 0, this.aIe.length);
    System.arraycopy(paramMemoable.aIf, 0, this.aIf, 0, this.aIf.length);
    System.arraycopy(paramMemoable.aIg, 0, this.aIg, 0, this.aIg.length);
    System.arraycopy(paramMemoable.aIh, 0, this.aIh, 0, this.aIh.length);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.WhirlpoolDigest
 * JD-Core Version:    0.7.0.1
 */