package org.spongycastle.crypto.engines;

import java.lang.reflect.Array;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class AESLightEngine
  implements BlockCipher
{
  private static final byte[] aGd = { 99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22 };
  private static final byte[] aID = { 82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, -68, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, 63, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, 12, 125 };
  private static final int[] aIE = { 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145 };
  private boolean aEW;
  private int aIH;
  private int[][] aII = null;
  private int aIJ;
  private int aIK;
  private int aIL;
  private int aIM;
  
  private void ˉ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    this.aIJ = (paramArrayOfByte[paramInt] & 0xFF);
    int j = this.aIJ;
    paramInt = i + 1;
    this.aIJ = (j | (paramArrayOfByte[i] & 0xFF) << 8);
    j = this.aIJ;
    i = paramInt + 1;
    this.aIJ = (j | (paramArrayOfByte[paramInt] & 0xFF) << 16);
    j = this.aIJ;
    paramInt = i + 1;
    this.aIJ = (j | paramArrayOfByte[i] << 24);
    i = paramInt + 1;
    this.aIK = (paramArrayOfByte[paramInt] & 0xFF);
    j = this.aIK;
    paramInt = i + 1;
    this.aIK = (j | (paramArrayOfByte[i] & 0xFF) << 8);
    j = this.aIK;
    i = paramInt + 1;
    this.aIK = (j | (paramArrayOfByte[paramInt] & 0xFF) << 16);
    j = this.aIK;
    paramInt = i + 1;
    this.aIK = (j | paramArrayOfByte[i] << 24);
    i = paramInt + 1;
    this.aIL = (paramArrayOfByte[paramInt] & 0xFF);
    j = this.aIL;
    paramInt = i + 1;
    this.aIL = (j | (paramArrayOfByte[i] & 0xFF) << 8);
    j = this.aIL;
    i = paramInt + 1;
    this.aIL = (j | (paramArrayOfByte[paramInt] & 0xFF) << 16);
    j = this.aIL;
    paramInt = i + 1;
    this.aIL = (j | paramArrayOfByte[i] << 24);
    i = paramInt + 1;
    this.aIM = (paramArrayOfByte[paramInt] & 0xFF);
    j = this.aIM;
    paramInt = i + 1;
    this.aIM = (j | (paramArrayOfByte[i] & 0xFF) << 8);
    i = this.aIM;
    j = paramInt + 1;
    this.aIM = (i | (paramArrayOfByte[paramInt] & 0xFF) << 16);
    this.aIM |= paramArrayOfByte[j] << 24;
  }
  
  private void ˊ(int[][] paramArrayOfInt)
  {
    int j = this.aIJ ^ paramArrayOfInt[0][0];
    int k = this.aIK ^ paramArrayOfInt[0][1];
    int m = this.aIL ^ paramArrayOfInt[0][2];
    int i = 1;
    for (int n = this.aIM ^ paramArrayOfInt[0][3]; i < this.aIH - 1; n = i1 ^ paramArrayOfInt[n][3])
    {
      i1 = ᵑ(aGd[(j & 0xFF)] & 0xFF ^ (aGd[(k >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(m >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(n >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][0];
      i2 = ᵑ(aGd[(k & 0xFF)] & 0xFF ^ (aGd[(m >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(n >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(j >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][1];
      i3 = ᵑ(aGd[(m & 0xFF)] & 0xFF ^ (aGd[(n >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(j >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(k >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][2];
      j = ᵑ(aGd[(n & 0xFF)] & 0xFF ^ (aGd[(j >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(k >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(m >> 24 & 0xFF)] << 24);
      n = i + 1;
      i = j ^ paramArrayOfInt[i][3];
      j = ᵑ(aGd[(i1 & 0xFF)] & 0xFF ^ (aGd[(i2 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i3 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][0];
      k = ᵑ(aGd[(i2 & 0xFF)] & 0xFF ^ (aGd[(i3 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i1 >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][1];
      m = ᵑ(aGd[(i3 & 0xFF)] & 0xFF ^ (aGd[(i >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i1 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i2 >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][2];
      i1 = ᵑ(aGd[(i & 0xFF)] & 0xFF ^ (aGd[(i1 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i2 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i3 >> 24 & 0xFF)] << 24);
      i = n + 1;
    }
    int i1 = ᵑ(aGd[(j & 0xFF)] & 0xFF ^ (aGd[(k >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(m >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(n >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][0];
    int i2 = ᵑ(aGd[(k & 0xFF)] & 0xFF ^ (aGd[(m >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(n >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(j >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][1];
    int i3 = ᵑ(aGd[(m & 0xFF)] & 0xFF ^ (aGd[(n >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(j >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(k >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][2];
    k = ᵑ(aGd[(n & 0xFF)] & 0xFF ^ (aGd[(j >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(k >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(m >> 24 & 0xFF)] << 24);
    j = i + 1;
    i = k ^ paramArrayOfInt[i][3];
    this.aIJ = (aGd[(i1 & 0xFF)] & 0xFF ^ (aGd[(i2 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i3 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[j][0]);
    this.aIK = (aGd[(i2 & 0xFF)] & 0xFF ^ (aGd[(i3 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i1 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[j][1]);
    this.aIL = (aGd[(i3 & 0xFF)] & 0xFF ^ (aGd[(i >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i1 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i2 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[j][2]);
    this.aIM = (aGd[(i & 0xFF)] & 0xFF ^ (aGd[(i1 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aGd[(i2 >> 16 & 0xFF)] & 0xFF) << 16 ^ aGd[(i3 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[j][3]);
  }
  
  private int[][] ˊ(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int k = paramArrayOfByte.length / 4;
    if (((k != 4) && (k != 6) && (k != 8)) || (k * 4 != paramArrayOfByte.length)) {
      throw new IllegalArgumentException("Key length not 128/192/256 bits.");
    }
    this.aIH = (k + 6);
    int i = this.aIH;
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i + 1, 4 });
    i = 0;
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      arrayOfInt[(i >> 2)][(i & 0x3)] = (paramArrayOfByte[j] & 0xFF | (paramArrayOfByte[(j + 1)] & 0xFF) << 8 | (paramArrayOfByte[(j + 2)] & 0xFF) << 16 | paramArrayOfByte[(j + 3)] << 24);
      j += 4;
      i += 1;
    }
    int n = this.aIH;
    j = k;
    while (j < n + 1 << 2)
    {
      int m = arrayOfInt[(j - 1 >> 2)][(j - 1 & 0x3)];
      if (j % k == 0)
      {
        i = ᵈ(ﹸ(m, 8)) ^ aIE[(j / k - 1)];
      }
      else
      {
        i = m;
        if (k > 6)
        {
          i = m;
          if (j % k == 4) {
            i = ᵈ(m);
          }
        }
      }
      arrayOfInt[(j >> 2)][(j & 0x3)] = (arrayOfInt[(j - k >> 2)][(j - k & 0x3)] ^ i);
      j += 1;
    }
    if (!paramBoolean)
    {
      i = 1;
      while (i < this.aIH)
      {
        j = 0;
        while (j < 4)
        {
          arrayOfInt[i][j] = ᴺ(arrayOfInt[i][j]);
          j += 1;
        }
        i += 1;
      }
    }
    return arrayOfInt;
  }
  
  private void ˋ(int[][] paramArrayOfInt)
  {
    int j = this.aIJ ^ paramArrayOfInt[this.aIH][0];
    int k = this.aIK ^ paramArrayOfInt[this.aIH][1];
    int m = this.aIL ^ paramArrayOfInt[this.aIH][2];
    int i = this.aIH - 1;
    for (int n = this.aIM ^ paramArrayOfInt[this.aIH][3]; i > 1; n = i1 ^ paramArrayOfInt[n][3])
    {
      i1 = ᴺ(aID[(j & 0xFF)] & 0xFF ^ (aID[(n >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(m >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(k >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][0];
      i2 = ᴺ(aID[(k & 0xFF)] & 0xFF ^ (aID[(j >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(n >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(m >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][1];
      i3 = ᴺ(aID[(m & 0xFF)] & 0xFF ^ (aID[(k >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(j >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(n >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][2];
      j = ᴺ(aID[(n & 0xFF)] & 0xFF ^ (aID[(m >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(k >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(j >> 24 & 0xFF)] << 24);
      n = i - 1;
      i = j ^ paramArrayOfInt[i][3];
      j = ᴺ(aID[(i1 & 0xFF)] & 0xFF ^ (aID[(i >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i3 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i2 >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][0];
      k = ᴺ(aID[(i2 & 0xFF)] & 0xFF ^ (aID[(i1 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i3 >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][1];
      m = ᴺ(aID[(i3 & 0xFF)] & 0xFF ^ (aID[(i2 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i1 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[n][2];
      i1 = ᴺ(aID[(i & 0xFF)] & 0xFF ^ (aID[(i3 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i2 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i1 >> 24 & 0xFF)] << 24);
      i = n - 1;
    }
    int i1 = ᴺ(aID[(j & 0xFF)] & 0xFF ^ (aID[(n >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(m >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(k >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][0];
    int i2 = ᴺ(aID[(k & 0xFF)] & 0xFF ^ (aID[(j >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(n >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(m >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][1];
    int i3 = ᴺ(aID[(m & 0xFF)] & 0xFF ^ (aID[(k >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(j >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(n >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][2];
    i = ᴺ(aID[(n & 0xFF)] & 0xFF ^ (aID[(m >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(k >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(j >> 24 & 0xFF)] << 24) ^ paramArrayOfInt[i][3];
    this.aIJ = (aID[(i1 & 0xFF)] & 0xFF ^ (aID[(i >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i3 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i2 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[0][0]);
    this.aIK = (aID[(i2 & 0xFF)] & 0xFF ^ (aID[(i1 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i3 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[0][1]);
    this.aIL = (aID[(i3 & 0xFF)] & 0xFF ^ (aID[(i2 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i1 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[0][2]);
    this.aIM = (aID[(i & 0xFF)] & 0xFF ^ (aID[(i3 >> 8 & 0xFF)] & 0xFF) << 8 ^ (aID[(i2 >> 16 & 0xFF)] & 0xFF) << 16 ^ aID[(i1 >> 24 & 0xFF)] << 24 ^ paramArrayOfInt[0][3]);
  }
  
  private void ˌ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)this.aIJ);
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIJ >> 8));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(this.aIJ >> 16));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIJ >> 24));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)this.aIK);
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIK >> 8));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(this.aIK >> 16));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIK >> 24));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)this.aIL);
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIL >> 8));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(this.aIL >> 16));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIL >> 24));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)this.aIM);
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(this.aIM >> 8));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(this.aIM >> 16));
    paramArrayOfByte[i] = ((byte)(this.aIM >> 24));
  }
  
  private static int ᴛ(int paramInt)
  {
    return (0x7F7F7F7F & paramInt) << 1 ^ ((0x80808080 & paramInt) >>> 7) * 27;
  }
  
  private static int ᴺ(int paramInt)
  {
    int i = ᴛ(paramInt);
    int j = ᴛ(i);
    int k = ᴛ(j);
    paramInt ^= k;
    return i ^ j ^ k ^ ﹸ(i ^ paramInt, 8) ^ ﹸ(j ^ paramInt, 16) ^ ﹸ(paramInt, 24);
  }
  
  private static int ᵈ(int paramInt)
  {
    return aGd[(paramInt & 0xFF)] & 0xFF | (aGd[(paramInt >> 8 & 0xFF)] & 0xFF) << 8 | (aGd[(paramInt >> 16 & 0xFF)] & 0xFF) << 16 | aGd[(paramInt >> 24 & 0xFF)] << 24;
  }
  
  private static int ᵑ(int paramInt)
  {
    int i = ᴛ(paramInt);
    return ﹸ(paramInt ^ i, 8) ^ i ^ ﹸ(paramInt, 16) ^ ﹸ(paramInt, 24);
  }
  
  private static int ﹸ(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> paramInt2 | paramInt1 << -paramInt2;
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "AES";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aII == null) {
      throw new IllegalStateException("AES engine not initialised");
    }
    if (paramInt1 + 16 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 16 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aEW)
    {
      ˉ(paramArrayOfByte1, paramInt1);
      ˊ(this.aII);
      ˌ(paramArrayOfByte2, paramInt2);
    }
    else
    {
      ˉ(paramArrayOfByte1, paramInt1);
      ˋ(this.aII);
      ˌ(paramArrayOfByte2, paramInt2);
    }
    return 16;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aII = ˊ(((KeyParameter)paramCipherParameters).getKey(), paramBoolean);
      this.aEW = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to AES init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.AESLightEngine
 * JD-Core Version:    0.7.0.1
 */