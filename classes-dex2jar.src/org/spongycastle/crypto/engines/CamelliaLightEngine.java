package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class CamelliaLightEngine
  implements BlockCipher
{
  private static final int[] aJt = { -1600231809, 1003262091, -1233459112, 1286239154, -957401297, -380665154, 1426019237, -237801700, 283453434, -563598051, -1336506174, -1276722691 };
  private static final byte[] aJz = { 112, -126, 44, -20, -77, 39, -64, -27, -28, -123, 87, 53, -22, 12, -82, 65, 35, -17, 107, -109, 69, 25, -91, 33, -19, 14, 79, 78, 29, 101, -110, -67, -122, -72, -81, -113, 124, -21, 31, -50, 62, 48, -36, 95, 94, -59, 11, 26, -90, -31, 57, -54, -43, 71, 93, 61, -39, 1, 90, -42, 81, 86, 108, 77, -117, 13, -102, 102, -5, -52, -80, 45, 116, 18, 43, 32, -16, -79, -124, -103, -33, 76, -53, -62, 52, 126, 118, 5, 109, -73, -87, 49, -47, 23, 4, -41, 20, 88, 58, 97, -34, 27, 17, 28, 50, 15, -100, 22, 83, 24, -14, 34, -2, 68, -49, -78, -61, -75, 122, -111, 36, 8, -24, -88, 96, -4, 105, 80, -86, -48, -96, 125, -95, -119, 98, -105, 84, 91, 30, -107, -32, -1, 100, -46, 16, -60, 0, 72, -93, -9, 117, -37, -118, 3, -26, -38, 9, 63, -35, -108, -121, 92, -125, 2, -51, 74, -112, 51, 115, 103, -10, -13, -99, 127, -65, -30, 82, -101, -40, 38, -56, 55, -58, 59, -127, -106, 111, 75, 19, -66, 99, 46, -23, 121, -89, -116, -97, 110, -68, -114, 41, -11, -7, -74, 47, -3, -76, 89, 120, -104, 6, 106, -25, 70, 113, -70, -44, 37, -85, 66, -120, -94, -115, -6, 114, 7, -71, 85, -8, -18, -84, 10, 54, 73, 42, 104, 60, 56, -15, -92, 64, 40, -45, 123, -69, -55, 67, -63, 21, -29, -83, -12, 119, -57, -128, -98 };
  private int[] aJp = new int[96];
  private int[] aJq = new int[8];
  private int[] aJr = new int[12];
  private int[] aJs = new int[4];
  private boolean aJy;
  private boolean initialized;
  
  private static int ɩ(int paramInt1, int paramInt2)
  {
    return (paramInt1 << paramInt2) + (paramInt1 >>> 32 - paramInt2);
  }
  
  private int ʻ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = 0;
    while (i < 4)
    {
      this.aJs[i] = ˑ(paramArrayOfByte1, i * 4 + paramInt1);
      int[] arrayOfInt = this.aJs;
      arrayOfInt[i] ^= this.aJq[i];
      i += 1;
    }
    ˊ(this.aJs, this.aJp, 0);
    ˊ(this.aJs, this.aJp, 4);
    ˊ(this.aJs, this.aJp, 8);
    ˋ(this.aJs, this.aJr, 0);
    ˊ(this.aJs, this.aJp, 12);
    ˊ(this.aJs, this.aJp, 16);
    ˊ(this.aJs, this.aJp, 20);
    ˋ(this.aJs, this.aJr, 4);
    ˊ(this.aJs, this.aJp, 24);
    ˊ(this.aJs, this.aJp, 28);
    ˊ(this.aJs, this.aJp, 32);
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[2] ^= this.aJq[4];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[3] ^= this.aJq[5];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[0] ^= this.aJq[6];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[1] ^= this.aJq[7];
    ˎ(this.aJs[2], paramArrayOfByte2, paramInt2);
    ˎ(this.aJs[3], paramArrayOfByte2, paramInt2 + 4);
    ˎ(this.aJs[0], paramArrayOfByte2, paramInt2 + 8);
    ˎ(this.aJs[1], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private int ʼ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = 0;
    while (i < 4)
    {
      this.aJs[i] = ˑ(paramArrayOfByte1, i * 4 + paramInt1);
      int[] arrayOfInt = this.aJs;
      arrayOfInt[i] ^= this.aJq[i];
      i += 1;
    }
    ˊ(this.aJs, this.aJp, 0);
    ˊ(this.aJs, this.aJp, 4);
    ˊ(this.aJs, this.aJp, 8);
    ˋ(this.aJs, this.aJr, 0);
    ˊ(this.aJs, this.aJp, 12);
    ˊ(this.aJs, this.aJp, 16);
    ˊ(this.aJs, this.aJp, 20);
    ˋ(this.aJs, this.aJr, 4);
    ˊ(this.aJs, this.aJp, 24);
    ˊ(this.aJs, this.aJp, 28);
    ˊ(this.aJs, this.aJp, 32);
    ˋ(this.aJs, this.aJr, 8);
    ˊ(this.aJs, this.aJp, 36);
    ˊ(this.aJs, this.aJp, 40);
    ˊ(this.aJs, this.aJp, 44);
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[2] ^= this.aJq[4];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[3] ^= this.aJq[5];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[0] ^= this.aJq[6];
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[1] ^= this.aJq[7];
    ˎ(this.aJs[2], paramArrayOfByte2, paramInt2);
    ˎ(this.aJs[3], paramArrayOfByte2, paramInt2 + 4);
    ˎ(this.aJs[0], paramArrayOfByte2, paramInt2 + 8);
    ˎ(this.aJs[1], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private byte ˊ(byte paramByte, int paramInt)
  {
    return (byte)(paramByte << paramInt | (paramByte & 0xFF) >>> 8 - paramInt);
  }
  
  private static void ˊ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    paramArrayOfInt2[(paramInt3 + 0)] = (paramArrayOfInt1[(paramInt2 + 0)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 1)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 1)] = (paramArrayOfInt1[(paramInt2 + 1)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 2)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 2)] = (paramArrayOfInt1[(paramInt2 + 2)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 3)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 3)] = (paramArrayOfInt1[(paramInt2 + 3)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 0)] >>> 32 - paramInt1);
    paramArrayOfInt1[(paramInt2 + 0)] = paramArrayOfInt2[(paramInt3 + 0)];
    paramArrayOfInt1[(paramInt2 + 1)] = paramArrayOfInt2[(paramInt3 + 1)];
    paramArrayOfInt1[(paramInt2 + 2)] = paramArrayOfInt2[(paramInt3 + 2)];
    paramArrayOfInt1[(paramInt2 + 3)] = paramArrayOfInt2[(paramInt3 + 3)];
  }
  
  private void ˊ(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    int[] arrayOfInt1 = new int[8];
    int[] arrayOfInt2 = new int[4];
    int[] arrayOfInt3 = new int[4];
    int[] arrayOfInt4 = new int[4];
    switch (paramArrayOfByte.length)
    {
    default: 
      break;
    case 16: 
      this.aJy = true;
      arrayOfInt1[0] = ˑ(paramArrayOfByte, 0);
      arrayOfInt1[1] = ˑ(paramArrayOfByte, 4);
      arrayOfInt1[2] = ˑ(paramArrayOfByte, 8);
      arrayOfInt1[3] = ˑ(paramArrayOfByte, 12);
      arrayOfInt1[7] = 0;
      arrayOfInt1[6] = 0;
      arrayOfInt1[5] = 0;
      arrayOfInt1[4] = 0;
      break;
    case 24: 
      arrayOfInt1[0] = ˑ(paramArrayOfByte, 0);
      arrayOfInt1[1] = ˑ(paramArrayOfByte, 4);
      arrayOfInt1[2] = ˑ(paramArrayOfByte, 8);
      arrayOfInt1[3] = ˑ(paramArrayOfByte, 12);
      arrayOfInt1[4] = ˑ(paramArrayOfByte, 16);
      arrayOfInt1[5] = ˑ(paramArrayOfByte, 20);
      arrayOfInt1[6] = (arrayOfInt1[4] ^ 0xFFFFFFFF);
      arrayOfInt1[7] = (arrayOfInt1[5] ^ 0xFFFFFFFF);
      this.aJy = false;
      break;
    case 32: 
      arrayOfInt1[0] = ˑ(paramArrayOfByte, 0);
      arrayOfInt1[1] = ˑ(paramArrayOfByte, 4);
      arrayOfInt1[2] = ˑ(paramArrayOfByte, 8);
      arrayOfInt1[3] = ˑ(paramArrayOfByte, 12);
      arrayOfInt1[4] = ˑ(paramArrayOfByte, 16);
      arrayOfInt1[5] = ˑ(paramArrayOfByte, 20);
      arrayOfInt1[6] = ˑ(paramArrayOfByte, 24);
      arrayOfInt1[7] = ˑ(paramArrayOfByte, 28);
      this.aJy = false;
      break;
    }
    throw new IllegalArgumentException("key sizes are only 16/24/32 bytes.");
    int i = 0;
    while (i < 4)
    {
      arrayOfInt1[i] ^= arrayOfInt1[(i + 4)];
      i += 1;
    }
    ˊ(arrayOfInt2, aJt, 0);
    i = 0;
    while (i < 4)
    {
      arrayOfInt2[i] ^= arrayOfInt1[i];
      i += 1;
    }
    ˊ(arrayOfInt2, aJt, 4);
    if (this.aJy)
    {
      if (paramBoolean)
      {
        this.aJq[0] = arrayOfInt1[0];
        this.aJq[1] = arrayOfInt1[1];
        this.aJq[2] = arrayOfInt1[2];
        this.aJq[3] = arrayOfInt1[3];
        ˊ(15, arrayOfInt1, 0, this.aJp, 4);
        ˊ(30, arrayOfInt1, 0, this.aJp, 12);
        ˊ(15, arrayOfInt1, 0, arrayOfInt4, 0);
        this.aJp[18] = arrayOfInt4[2];
        this.aJp[19] = arrayOfInt4[3];
        ˊ(17, arrayOfInt1, 0, this.aJr, 4);
        ˊ(17, arrayOfInt1, 0, this.aJp, 24);
        ˊ(17, arrayOfInt1, 0, this.aJp, 32);
        this.aJp[0] = arrayOfInt2[0];
        this.aJp[1] = arrayOfInt2[1];
        this.aJp[2] = arrayOfInt2[2];
        this.aJp[3] = arrayOfInt2[3];
        ˊ(15, arrayOfInt2, 0, this.aJp, 8);
        ˊ(15, arrayOfInt2, 0, this.aJr, 0);
        ˊ(15, arrayOfInt2, 0, arrayOfInt4, 0);
        this.aJp[16] = arrayOfInt4[0];
        this.aJp[17] = arrayOfInt4[1];
        ˊ(15, arrayOfInt2, 0, this.aJp, 20);
        ˎ(34, arrayOfInt2, 0, this.aJp, 28);
        ˊ(17, arrayOfInt2, 0, this.aJq, 4);
        return;
      }
      this.aJq[4] = arrayOfInt1[0];
      this.aJq[5] = arrayOfInt1[1];
      this.aJq[6] = arrayOfInt1[2];
      this.aJq[7] = arrayOfInt1[3];
      ˋ(15, arrayOfInt1, 0, this.aJp, 28);
      ˋ(30, arrayOfInt1, 0, this.aJp, 20);
      ˋ(15, arrayOfInt1, 0, arrayOfInt4, 0);
      this.aJp[16] = arrayOfInt4[0];
      this.aJp[17] = arrayOfInt4[1];
      ˋ(17, arrayOfInt1, 0, this.aJr, 0);
      ˋ(17, arrayOfInt1, 0, this.aJp, 8);
      ˋ(17, arrayOfInt1, 0, this.aJp, 0);
      this.aJp[34] = arrayOfInt2[0];
      this.aJp[35] = arrayOfInt2[1];
      this.aJp[32] = arrayOfInt2[2];
      this.aJp[33] = arrayOfInt2[3];
      ˋ(15, arrayOfInt2, 0, this.aJp, 24);
      ˋ(15, arrayOfInt2, 0, this.aJr, 4);
      ˋ(15, arrayOfInt2, 0, arrayOfInt4, 0);
      this.aJp[18] = arrayOfInt4[2];
      this.aJp[19] = arrayOfInt4[3];
      ˋ(15, arrayOfInt2, 0, this.aJp, 12);
      ˏ(34, arrayOfInt2, 0, this.aJp, 4);
      ˊ(17, arrayOfInt2, 0, this.aJq, 0);
      return;
    }
    i = 0;
    while (i < 4)
    {
      arrayOfInt2[i] ^= arrayOfInt1[(i + 4)];
      i += 1;
    }
    ˊ(arrayOfInt3, aJt, 8);
    if (paramBoolean)
    {
      this.aJq[0] = arrayOfInt1[0];
      this.aJq[1] = arrayOfInt1[1];
      this.aJq[2] = arrayOfInt1[2];
      this.aJq[3] = arrayOfInt1[3];
      ˎ(45, arrayOfInt1, 0, this.aJp, 16);
      ˊ(15, arrayOfInt1, 0, this.aJr, 4);
      ˊ(17, arrayOfInt1, 0, this.aJp, 32);
      ˎ(34, arrayOfInt1, 0, this.aJp, 44);
      ˊ(15, arrayOfInt1, 4, this.aJp, 4);
      ˊ(15, arrayOfInt1, 4, this.aJr, 0);
      ˊ(30, arrayOfInt1, 4, this.aJp, 24);
      ˎ(34, arrayOfInt1, 4, this.aJp, 36);
      ˊ(15, arrayOfInt2, 0, this.aJp, 8);
      ˊ(30, arrayOfInt2, 0, this.aJp, 20);
      this.aJr[8] = arrayOfInt2[1];
      this.aJr[9] = arrayOfInt2[2];
      this.aJr[10] = arrayOfInt2[3];
      this.aJr[11] = arrayOfInt2[0];
      ˎ(49, arrayOfInt2, 0, this.aJp, 40);
      this.aJp[0] = arrayOfInt3[0];
      this.aJp[1] = arrayOfInt3[1];
      this.aJp[2] = arrayOfInt3[2];
      this.aJp[3] = arrayOfInt3[3];
      ˊ(30, arrayOfInt3, 0, this.aJp, 12);
      ˊ(30, arrayOfInt3, 0, this.aJp, 28);
      ˎ(51, arrayOfInt3, 0, this.aJq, 4);
      return;
    }
    this.aJq[4] = arrayOfInt1[0];
    this.aJq[5] = arrayOfInt1[1];
    this.aJq[6] = arrayOfInt1[2];
    this.aJq[7] = arrayOfInt1[3];
    ˏ(45, arrayOfInt1, 0, this.aJp, 28);
    ˋ(15, arrayOfInt1, 0, this.aJr, 4);
    ˋ(17, arrayOfInt1, 0, this.aJp, 12);
    ˏ(34, arrayOfInt1, 0, this.aJp, 0);
    ˋ(15, arrayOfInt1, 4, this.aJp, 40);
    ˋ(15, arrayOfInt1, 4, this.aJr, 8);
    ˋ(30, arrayOfInt1, 4, this.aJp, 20);
    ˏ(34, arrayOfInt1, 4, this.aJp, 8);
    ˋ(15, arrayOfInt2, 0, this.aJp, 36);
    ˋ(30, arrayOfInt2, 0, this.aJp, 24);
    this.aJr[2] = arrayOfInt2[1];
    this.aJr[3] = arrayOfInt2[2];
    this.aJr[0] = arrayOfInt2[3];
    this.aJr[1] = arrayOfInt2[0];
    ˏ(49, arrayOfInt2, 0, this.aJp, 4);
    this.aJp[46] = arrayOfInt3[0];
    this.aJp[47] = arrayOfInt3[1];
    this.aJp[44] = arrayOfInt3[2];
    this.aJp[45] = arrayOfInt3[3];
    ˋ(30, arrayOfInt3, 0, this.aJp, 32);
    ˋ(30, arrayOfInt3, 0, this.aJp, 16);
    ˎ(51, arrayOfInt3, 0, this.aJq, 0);
  }
  
  private void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int m = paramArrayOfInt1[0] ^ paramArrayOfInt2[(paramInt + 0)];
    int i = Ἱ(m & 0xFF);
    int j = Ἰ(m >>> 8 & 0xFF);
    int k = Ḯ(m >>> 16 & 0xFF);
    m = aJz[(m >>> 24 & 0xFF)];
    int n = paramArrayOfInt1[1] ^ paramArrayOfInt2[(paramInt + 1)];
    n = ɩ(aJz[(n & 0xFF)] & 0xFF | Ἱ(n >>> 8 & 0xFF) << 8 | Ἰ(n >>> 16 & 0xFF) << 16 | Ḯ(n >>> 24 & 0xFF) << 24, 8);
    i = (i | j << 8 | k << 16 | (m & 0xFF) << 24) ^ n;
    j = ɩ(n, 8) ^ i;
    i = ﹾ(i, 8) ^ j;
    paramArrayOfInt1[2] ^= ɩ(j, 16) ^ i;
    paramArrayOfInt1[3] ^= ɩ(i, 8);
    m = paramArrayOfInt1[2] ^ paramArrayOfInt2[(paramInt + 2)];
    i = Ἱ(m & 0xFF);
    j = Ἰ(m >>> 8 & 0xFF);
    k = Ḯ(m >>> 16 & 0xFF);
    m = aJz[(m >>> 24 & 0xFF)];
    paramInt = paramArrayOfInt1[3] ^ paramArrayOfInt2[(paramInt + 3)];
    paramInt = ɩ(aJz[(paramInt & 0xFF)] & 0xFF | Ἱ(paramInt >>> 8 & 0xFF) << 8 | Ἰ(paramInt >>> 16 & 0xFF) << 16 | Ḯ(paramInt >>> 24 & 0xFF) << 24, 8);
    i = (i | j << 8 | k << 16 | (m & 0xFF) << 24) ^ paramInt;
    paramInt = ɩ(paramInt, 8) ^ i;
    i = ﹾ(i, 8) ^ paramInt;
    paramArrayOfInt1[0] ^= ɩ(paramInt, 16) ^ i;
    paramArrayOfInt1[1] ^= ɩ(i, 8);
  }
  
  private static void ˋ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    paramArrayOfInt2[(paramInt3 + 2)] = (paramArrayOfInt1[(paramInt2 + 0)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 1)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 3)] = (paramArrayOfInt1[(paramInt2 + 1)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 2)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 0)] = (paramArrayOfInt1[(paramInt2 + 2)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 3)] >>> 32 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 1)] = (paramArrayOfInt1[(paramInt2 + 3)] << paramInt1 | paramArrayOfInt1[(paramInt2 + 0)] >>> 32 - paramInt1);
    paramArrayOfInt1[(paramInt2 + 0)] = paramArrayOfInt2[(paramInt3 + 2)];
    paramArrayOfInt1[(paramInt2 + 1)] = paramArrayOfInt2[(paramInt3 + 3)];
    paramArrayOfInt1[(paramInt2 + 2)] = paramArrayOfInt2[(paramInt3 + 0)];
    paramArrayOfInt1[(paramInt2 + 3)] = paramArrayOfInt2[(paramInt3 + 1)];
  }
  
  private void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    paramArrayOfInt1[1] ^= ɩ(paramArrayOfInt1[0] & paramArrayOfInt2[(paramInt + 0)], 1);
    paramArrayOfInt1[0] ^= (paramArrayOfInt2[(paramInt + 1)] | paramArrayOfInt1[1]);
    paramArrayOfInt1[2] ^= (paramArrayOfInt2[(paramInt + 3)] | paramArrayOfInt1[3]);
    paramArrayOfInt1[3] ^= ɩ(paramArrayOfInt2[(paramInt + 2)] & paramArrayOfInt1[2], 1);
  }
  
  private void ˎ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int j = 0;
    int i = paramInt1;
    paramInt1 = j;
    while (paramInt1 < 4)
    {
      paramArrayOfByte[(3 - paramInt1 + paramInt2)] = ((byte)i);
      i >>>= 8;
      paramInt1 += 1;
    }
  }
  
  private static void ˎ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    paramArrayOfInt2[(paramInt3 + 0)] = (paramArrayOfInt1[(paramInt2 + 1)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 2)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 1)] = (paramArrayOfInt1[(paramInt2 + 2)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 3)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 2)] = (paramArrayOfInt1[(paramInt2 + 3)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 0)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 3)] = (paramArrayOfInt1[(paramInt2 + 0)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 1)] >>> 64 - paramInt1);
    paramArrayOfInt1[(paramInt2 + 0)] = paramArrayOfInt2[(paramInt3 + 0)];
    paramArrayOfInt1[(paramInt2 + 1)] = paramArrayOfInt2[(paramInt3 + 1)];
    paramArrayOfInt1[(paramInt2 + 2)] = paramArrayOfInt2[(paramInt3 + 2)];
    paramArrayOfInt1[(paramInt2 + 3)] = paramArrayOfInt2[(paramInt3 + 3)];
  }
  
  private static void ˏ(int paramInt1, int[] paramArrayOfInt1, int paramInt2, int[] paramArrayOfInt2, int paramInt3)
  {
    paramArrayOfInt2[(paramInt3 + 2)] = (paramArrayOfInt1[(paramInt2 + 1)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 2)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 3)] = (paramArrayOfInt1[(paramInt2 + 2)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 3)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 0)] = (paramArrayOfInt1[(paramInt2 + 3)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 0)] >>> 64 - paramInt1);
    paramArrayOfInt2[(paramInt3 + 1)] = (paramArrayOfInt1[(paramInt2 + 0)] << paramInt1 - 32 | paramArrayOfInt1[(paramInt2 + 1)] >>> 64 - paramInt1);
    paramArrayOfInt1[(paramInt2 + 0)] = paramArrayOfInt2[(paramInt3 + 2)];
    paramArrayOfInt1[(paramInt2 + 1)] = paramArrayOfInt2[(paramInt3 + 3)];
    paramArrayOfInt1[(paramInt2 + 2)] = paramArrayOfInt2[(paramInt3 + 0)];
    paramArrayOfInt1[(paramInt2 + 3)] = paramArrayOfInt2[(paramInt3 + 1)];
  }
  
  private int ˑ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = 0;
    while (i < 4)
    {
      j = (j << 8) + (paramArrayOfByte[(i + paramInt)] & 0xFF);
      i += 1;
    }
    return j;
  }
  
  private int Ḯ(int paramInt)
  {
    return ˊ(aJz[paramInt], 1) & 0xFF;
  }
  
  private int Ἰ(int paramInt)
  {
    return ˊ(aJz[paramInt], 7) & 0xFF;
  }
  
  private int Ἱ(int paramInt)
  {
    return aJz[(ˊ((byte)paramInt, 1) & 0xFF)] & 0xFF;
  }
  
  private static int ﹾ(int paramInt1, int paramInt2)
  {
    return (paramInt1 >>> paramInt2) + (paramInt1 << 32 - paramInt2);
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "Camellia";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (!this.initialized) {
      throw new IllegalStateException("Camellia is not initialized");
    }
    if (paramInt1 + 16 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 16 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aJy) {
      return ʻ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ʼ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("only simple KeyParameter expected.");
    }
    ˊ(paramBoolean, ((KeyParameter)paramCipherParameters).getKey());
    this.initialized = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.CamelliaLightEngine
 * JD-Core Version:    0.7.0.1
 */