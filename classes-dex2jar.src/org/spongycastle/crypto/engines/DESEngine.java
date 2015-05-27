package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class DESEngine
  implements BlockCipher
{
  private static final short[] aJF = { 128, 64, 32, 16, 8, 4, 2, 1 };
  private static final int[] aJG = { 8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1 };
  private static final byte[] aJH = { 56, 48, 40, 32, 24, 16, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, 58, 50, 42, 34, 26, 18, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, 45, 37, 29, 21, 13, 5, 60, 52, 44, 36, 28, 20, 12, 4, 27, 19, 11, 3 };
  private static final byte[] aJI = { 1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28 };
  private static final byte[] aJJ = { 13, 16, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31 };
  private static final int[] aJK = { 16843776, 0, 65536, 16843780, 16842756, 66564, 4, 65536, 1024, 16843776, 16843780, 1024, 16778244, 16842756, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, 16842752, 16842752, 16778244, 65540, 16777220, 16777220, 65540, 0, 1028, 66564, 16777216, 65536, 16843780, 4, 16842752, 16843776, 16777216, 16777216, 1024, 16842756, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, 16843780, 65540, 16842752, 16778244, 16777220, 1028, 66564, 16843776, 1028, 16778240, 16778240, 0, 65540, 66560, 0, 16842756 };
  private static final int[] aJL = { -2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, -2147483648, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, -2147483648, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, -2147483648, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, -2147483648, -2146435040, -2146402272, 1081344 };
  private static final int[] aJM = { 520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584 };
  private static final int[] aJN = { 8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, 129, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, 129, 8388736, 8388609, 8396800, 8396929, 129, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, 129, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928 };
  private static final int[] aJO = { 256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080 };
  private static final int[] aJP = { 536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312 };
  private static final int[] aJQ = { 2097152, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154 };
  private static final int[] aJR = { 268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, 268435456, 268701696 };
  private int[] aJE = null;
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "DES";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aJE == null) {
      throw new IllegalStateException("DES engine not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    ˊ(this.aJE, paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    return 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      if (((KeyParameter)paramCipherParameters).getKey().length > 8) {
        throw new IllegalArgumentException("DES key too long - should be 8 bytes");
      }
      this.aJE = ˋ(paramBoolean, ((KeyParameter)paramCipherParameters).getKey());
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to DES init - " + paramCipherParameters.getClass().getName());
  }
  
  protected void ˊ(int[] paramArrayOfInt, byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = (paramArrayOfByte1[(paramInt1 + 0)] & 0xFF) << 24 | (paramArrayOfByte1[(paramInt1 + 1)] & 0xFF) << 16 | (paramArrayOfByte1[(paramInt1 + 2)] & 0xFF) << 8 | paramArrayOfByte1[(paramInt1 + 3)] & 0xFF;
    paramInt1 = (paramArrayOfByte1[(paramInt1 + 4)] & 0xFF) << 24 | (paramArrayOfByte1[(paramInt1 + 5)] & 0xFF) << 16 | (paramArrayOfByte1[(paramInt1 + 6)] & 0xFF) << 8 | paramArrayOfByte1[(paramInt1 + 7)] & 0xFF;
    int j = (i >>> 4 ^ paramInt1) & 0xF0F0F0F;
    paramInt1 ^= j;
    i ^= j << 4;
    j = (i >>> 16 ^ paramInt1) & 0xFFFF;
    paramInt1 ^= j;
    i ^= j << 16;
    j = (paramInt1 >>> 2 ^ i) & 0x33333333;
    i ^= j;
    j = paramInt1 ^ j << 2;
    int k = (j >>> 8 ^ i) & 0xFF00FF;
    paramInt1 = i ^ k;
    i = j ^ k << 8;
    i = (i << 1 | i >>> 31 & 0x1) & 0xFFFFFFFF;
    j = (paramInt1 ^ i) & 0xAAAAAAAA;
    paramInt1 ^= j;
    i ^= j;
    j = (paramInt1 << 1 | paramInt1 >>> 31 & 0x1) & 0xFFFFFFFF;
    paramInt1 = 0;
    while (paramInt1 < 8)
    {
      int i1 = (i << 28 | i >>> 4) ^ paramArrayOfInt[(paramInt1 * 4 + 0)];
      k = aJQ[(i1 & 0x3F)];
      int m = aJO[(i1 >>> 8 & 0x3F)];
      int n = aJM[(i1 >>> 16 & 0x3F)];
      i1 = aJK[(i1 >>> 24 & 0x3F)];
      int i2 = i ^ paramArrayOfInt[(paramInt1 * 4 + 1)];
      j ^= (k | m | n | i1 | aJR[(i2 & 0x3F)] | aJP[(i2 >>> 8 & 0x3F)] | aJN[(i2 >>> 16 & 0x3F)] | aJL[(i2 >>> 24 & 0x3F)]);
      i1 = (j << 28 | j >>> 4) ^ paramArrayOfInt[(paramInt1 * 4 + 2)];
      k = aJQ[(i1 & 0x3F)];
      m = aJO[(i1 >>> 8 & 0x3F)];
      n = aJM[(i1 >>> 16 & 0x3F)];
      i1 = aJK[(i1 >>> 24 & 0x3F)];
      i2 = j ^ paramArrayOfInt[(paramInt1 * 4 + 3)];
      i ^= (k | m | n | i1 | aJR[(i2 & 0x3F)] | aJP[(i2 >>> 8 & 0x3F)] | aJN[(i2 >>> 16 & 0x3F)] | aJL[(i2 >>> 24 & 0x3F)]);
      paramInt1 += 1;
    }
    paramInt1 = i << 31 | i >>> 1;
    i = (j ^ paramInt1) & 0xAAAAAAAA;
    j ^= i;
    paramInt1 ^= i;
    i = j << 31 | j >>> 1;
    j = (i >>> 8 ^ paramInt1) & 0xFF00FF;
    paramInt1 ^= j;
    i ^= j << 8;
    j = (i >>> 2 ^ paramInt1) & 0x33333333;
    paramInt1 ^= j;
    i ^= j << 2;
    j = (paramInt1 >>> 16 ^ i) & 0xFFFF;
    i ^= j;
    paramInt1 ^= j << 16;
    j = (paramInt1 >>> 4 ^ i) & 0xF0F0F0F;
    i ^= j;
    paramInt1 ^= j << 4;
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)(paramInt1 >>> 24 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 16 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 8 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)(i >>> 24 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)(i >>> 16 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)(i >>> 8 & 0xFF));
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)(i & 0xFF));
  }
  
  protected int[] ˋ(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[32];
    boolean[] arrayOfBoolean1 = new boolean[56];
    boolean[] arrayOfBoolean2 = new boolean[56];
    int i = 0;
    int j;
    while (i < 56)
    {
      j = aJH[i];
      int i1;
      if ((paramArrayOfByte[(j >>> 3)] & aJF[(j & 0x7)]) != 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      arrayOfBoolean1[i] = i1;
      i += 1;
    }
    i = 0;
    int k;
    while (i < 16)
    {
      if (paramBoolean) {
        j = i << 1;
      } else {
        j = 15 - i << 1;
      }
      int m = j + 1;
      arrayOfInt[m] = 0;
      arrayOfInt[j] = 0;
      k = 0;
      int n;
      while (k < 28)
      {
        n = k + aJI[i];
        if (n < 28) {
          arrayOfBoolean2[k] = arrayOfBoolean1[n];
        } else {
          arrayOfBoolean2[k] = arrayOfBoolean1[(n - 28)];
        }
        k += 1;
      }
      k = 28;
      while (k < 56)
      {
        n = k + aJI[i];
        if (n < 56) {
          arrayOfBoolean2[k] = arrayOfBoolean1[n];
        } else {
          arrayOfBoolean2[k] = arrayOfBoolean1[(n - 28)];
        }
        k += 1;
      }
      k = 0;
      while (k < 24)
      {
        if (arrayOfBoolean2[aJJ[k]] != 0) {
          arrayOfInt[j] |= aJG[k];
        }
        if (arrayOfBoolean2[aJJ[(k + 24)]] != 0) {
          arrayOfInt[m] |= aJG[k];
        }
        k += 1;
      }
      i += 1;
    }
    i = 0;
    while (i != 32)
    {
      j = arrayOfInt[i];
      k = arrayOfInt[(i + 1)];
      arrayOfInt[i] = ((0xFC0000 & j) << 6 | (j & 0xFC0) << 10 | (0xFC0000 & k) >>> 10 | (k & 0xFC0) >>> 6);
      arrayOfInt[(i + 1)] = ((0x3F000 & j) << 12 | (j & 0x3F) << 16 | (0x3F000 & k) >>> 4 | k & 0x3F);
      i += 2;
    }
    return arrayOfInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.DESEngine
 * JD-Core Version:    0.7.0.1
 */