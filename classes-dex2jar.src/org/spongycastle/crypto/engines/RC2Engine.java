package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.RC2Parameters;

public class RC2Engine
  implements BlockCipher
{
  private static byte[] aKX = { -39, 120, -7, -60, 25, -35, -75, -19, 40, -23, -3, 121, 74, -96, -40, -99, -58, 126, 55, -125, 43, 118, 83, -114, 98, 76, 100, -120, 68, -117, -5, -94, 23, -102, 89, -11, -121, -77, 79, 19, 97, 69, 109, -115, 9, -127, 125, 50, -67, -113, 64, -21, -122, -73, 123, 11, -16, -107, 33, 34, 92, 107, 78, -126, 84, -42, 101, -109, -50, 96, -78, 28, 115, 86, -64, 20, -89, -116, -15, -36, 18, 117, -54, 31, 59, -66, -28, -47, 66, 61, -44, 48, -93, 60, -74, 38, 111, -65, 14, -38, 70, 105, 7, 87, 39, -14, 29, -101, -68, -108, 67, 3, -8, 17, -57, -10, -112, -17, 62, -25, 6, -61, -43, 47, -56, 102, 30, -41, 8, -24, -22, -34, -128, 82, -18, -9, -124, -86, 114, -84, 53, 77, 106, 42, -106, 26, -46, 113, 90, 21, 73, 116, 75, -97, -48, 94, 4, 24, -92, -20, -62, -32, 65, 110, 15, 81, -53, -52, 36, -111, -81, 80, -95, -12, 112, 57, -103, 124, 58, -123, 35, -72, -76, 122, -4, 2, 54, 91, 37, 85, -105, 49, 45, 93, -6, -104, -29, -118, -110, -82, 5, -33, 41, 16, 103, 108, -70, -55, -45, 0, -26, -49, -31, -98, -88, 44, 99, 22, 1, 63, 88, -30, -119, -87, 13, 56, 52, 27, -85, 51, -1, -80, -69, 72, 12, 95, -71, -79, -51, 46, -59, -13, -37, 71, -27, -91, -100, 119, 10, -90, 32, 104, -2, 127, -63, -83 };
  private boolean aIY;
  private int[] aJE;
  
  private void ˋ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = ((paramArrayOfByte1[(paramInt1 + 7)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 6)] & 0xFF);
    int j = ((paramArrayOfByte1[(paramInt1 + 5)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 4)] & 0xFF);
    int k = ((paramArrayOfByte1[(paramInt1 + 3)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 2)] & 0xFF);
    int m = ((paramArrayOfByte1[(paramInt1 + 1)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 0)] & 0xFF);
    paramInt1 = 0;
    while (paramInt1 <= 16)
    {
      m = ˢ(((i ^ 0xFFFFFFFF) & k) + m + (j & i) + this.aJE[paramInt1], 1);
      k = ˢ(((m ^ 0xFFFFFFFF) & j) + k + (i & m) + this.aJE[(paramInt1 + 1)], 2);
      j = ˢ(((k ^ 0xFFFFFFFF) & i) + j + (m & k) + this.aJE[(paramInt1 + 2)], 3);
      i = ˢ(((j ^ 0xFFFFFFFF) & m) + i + (k & j) + this.aJE[(paramInt1 + 3)], 5);
      paramInt1 += 4;
    }
    m += this.aJE[(i & 0x3F)];
    k += this.aJE[(m & 0x3F)];
    j += this.aJE[(k & 0x3F)];
    i += this.aJE[(j & 0x3F)];
    paramInt1 = 20;
    while (paramInt1 <= 40)
    {
      m = ˢ(((i ^ 0xFFFFFFFF) & k) + m + (j & i) + this.aJE[paramInt1], 1);
      k = ˢ(((m ^ 0xFFFFFFFF) & j) + k + (i & m) + this.aJE[(paramInt1 + 1)], 2);
      j = ˢ(((k ^ 0xFFFFFFFF) & i) + j + (m & k) + this.aJE[(paramInt1 + 2)], 3);
      i = ˢ(((j ^ 0xFFFFFFFF) & m) + i + (k & j) + this.aJE[(paramInt1 + 3)], 5);
      paramInt1 += 4;
    }
    m += this.aJE[(i & 0x3F)];
    k += this.aJE[(m & 0x3F)];
    j += this.aJE[(k & 0x3F)];
    i += this.aJE[(j & 0x3F)];
    paramInt1 = 44;
    while (paramInt1 < 64)
    {
      m = ˢ(((i ^ 0xFFFFFFFF) & k) + m + (j & i) + this.aJE[paramInt1], 1);
      k = ˢ(((m ^ 0xFFFFFFFF) & j) + k + (i & m) + this.aJE[(paramInt1 + 1)], 2);
      j = ˢ(((k ^ 0xFFFFFFFF) & i) + j + (m & k) + this.aJE[(paramInt1 + 2)], 3);
      i = ˢ(((j ^ 0xFFFFFFFF) & m) + i + (k & j) + this.aJE[(paramInt1 + 3)], 5);
      paramInt1 += 4;
    }
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)m);
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(m >> 8));
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)k);
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)(k >> 8));
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)j);
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)(j >> 8));
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)i);
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)(i >> 8));
  }
  
  private void ˎ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int m = ((paramArrayOfByte1[(paramInt1 + 7)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 6)] & 0xFF);
    int k = ((paramArrayOfByte1[(paramInt1 + 5)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 4)] & 0xFF);
    int i = ((paramArrayOfByte1[(paramInt1 + 3)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 2)] & 0xFF);
    paramInt1 = ((paramArrayOfByte1[(paramInt1 + 1)] & 0xFF) << 8) + (paramArrayOfByte1[(paramInt1 + 0)] & 0xFF);
    int j = 60;
    while (j >= 44)
    {
      m = ˢ(m, 11) - (((k ^ 0xFFFFFFFF) & paramInt1) + (i & k) + this.aJE[(j + 3)]);
      k = ˢ(k, 13) - (((i ^ 0xFFFFFFFF) & m) + (paramInt1 & i) + this.aJE[(j + 2)]);
      i = ˢ(i, 14) - (((paramInt1 ^ 0xFFFFFFFF) & k) + (m & paramInt1) + this.aJE[(j + 1)]);
      paramInt1 = ˢ(paramInt1, 15) - (((m ^ 0xFFFFFFFF) & i) + (k & m) + this.aJE[j]);
      j -= 4;
    }
    m -= this.aJE[(k & 0x3F)];
    k -= this.aJE[(i & 0x3F)];
    i -= this.aJE[(paramInt1 & 0x3F)];
    paramInt1 -= this.aJE[(m & 0x3F)];
    j = 40;
    while (j >= 20)
    {
      m = ˢ(m, 11) - (((k ^ 0xFFFFFFFF) & paramInt1) + (i & k) + this.aJE[(j + 3)]);
      k = ˢ(k, 13) - (((i ^ 0xFFFFFFFF) & m) + (paramInt1 & i) + this.aJE[(j + 2)]);
      i = ˢ(i, 14) - (((paramInt1 ^ 0xFFFFFFFF) & k) + (m & paramInt1) + this.aJE[(j + 1)]);
      paramInt1 = ˢ(paramInt1, 15) - (((m ^ 0xFFFFFFFF) & i) + (k & m) + this.aJE[j]);
      j -= 4;
    }
    m -= this.aJE[(k & 0x3F)];
    k -= this.aJE[(i & 0x3F)];
    j = i - this.aJE[(paramInt1 & 0x3F)];
    i = paramInt1 - this.aJE[(m & 0x3F)];
    paramInt1 = 16;
    while (paramInt1 >= 0)
    {
      m = ˢ(m, 11) - (((k ^ 0xFFFFFFFF) & i) + (j & k) + this.aJE[(paramInt1 + 3)]);
      k = ˢ(k, 13) - (((j ^ 0xFFFFFFFF) & m) + (i & j) + this.aJE[(paramInt1 + 2)]);
      j = ˢ(j, 14) - (((i ^ 0xFFFFFFFF) & k) + (m & i) + this.aJE[(paramInt1 + 1)]);
      i = ˢ(i, 15) - (((m ^ 0xFFFFFFFF) & j) + (k & m) + this.aJE[paramInt1]);
      paramInt1 -= 4;
    }
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)i);
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(i >> 8));
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)j);
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)(j >> 8));
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)k);
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)(k >> 8));
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)m);
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)(m >> 8));
  }
  
  private int ˢ(int paramInt1, int paramInt2)
  {
    paramInt1 &= 0xFFFF;
    return paramInt1 << paramInt2 | paramInt1 >> 16 - paramInt2;
  }
  
  private int[] ﹳ(byte[] paramArrayOfByte, int paramInt)
  {
    int[] arrayOfInt = new int[''];
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      paramArrayOfByte[i] &= 0xFF;
      i += 1;
    }
    i = paramArrayOfByte.length;
    if (i < 128)
    {
      j = 0;
      int k = arrayOfInt[(i - 1)];
      int m;
      do
      {
        m = j;
        paramArrayOfByte = aKX;
        j = m + 1;
        k = paramArrayOfByte[(arrayOfInt[m] + k & 0xFF)] & 0xFF;
        m = i + 1;
        arrayOfInt[i] = k;
        i = m;
      } while (m < 128);
    }
    int j = paramInt + 7 >> 3;
    i = aKX[(arrayOfInt[(128 - j)] & 255 >> (-paramInt & 0x7))] & 0xFF;
    arrayOfInt[(128 - j)] = i;
    paramInt = 128 - j - 1;
    while (paramInt >= 0)
    {
      i = aKX[(arrayOfInt[(paramInt + j)] ^ i)] & 0xFF;
      arrayOfInt[paramInt] = i;
      paramInt -= 1;
    }
    paramArrayOfByte = new int[64];
    paramInt = 0;
    while (paramInt != paramArrayOfByte.length)
    {
      paramArrayOfByte[paramInt] = (arrayOfInt[(paramInt * 2)] + (arrayOfInt[(paramInt * 2 + 1)] << 8));
      paramInt += 1;
    }
    return paramArrayOfByte;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "RC2";
  }
  
  public void reset() {}
  
  public final int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aJE == null) {
      throw new IllegalStateException("RC2 engine not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aIY) {
      ˋ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    } else {
      ˎ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aIY = paramBoolean;
    if ((paramCipherParameters instanceof RC2Parameters))
    {
      paramCipherParameters = (RC2Parameters)paramCipherParameters;
      this.aJE = ﹳ(paramCipherParameters.getKey(), paramCipherParameters.getEffectiveKeyBits());
      return;
    }
    if ((paramCipherParameters instanceof KeyParameter))
    {
      paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
      this.aJE = ﹳ(paramCipherParameters, paramCipherParameters.length * 8);
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to RC2 init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC2Engine
 * JD-Core Version:    0.7.0.1
 */