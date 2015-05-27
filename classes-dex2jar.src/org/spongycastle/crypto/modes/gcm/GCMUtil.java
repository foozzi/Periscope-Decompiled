package org.spongycastle.crypto.modes.gcm;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

abstract class GCMUtil
{
  private static final int[] aPF = ;
  
  private static int[] km()
  {
    int[] arrayOfInt = new int[256];
    int i = 0;
    while (i < 256)
    {
      int k = 0;
      int j = 7;
      while (j >= 0)
      {
        int m = k;
        if ((1 << j & i) != 0) {
          m = k ^ -520093696 >>> 7 - j;
        }
        j -= 1;
        k = m;
      }
      arrayOfInt[i] = k;
      i += 1;
    }
    return arrayOfInt;
  }
  
  static int[] kn()
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = -2147483648;
    return arrayOfInt;
  }
  
  static void ʻ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    paramArrayOfInt1[0] ^= paramArrayOfInt2[0];
    paramArrayOfInt1[1] ^= paramArrayOfInt2[1];
    paramArrayOfInt1[2] ^= paramArrayOfInt2[2];
    paramArrayOfInt1[3] ^= paramArrayOfInt2[3];
  }
  
  static int ʽ(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt[0];
    paramArrayOfInt[0] = (j >>> 1);
    int i = paramArrayOfInt[1];
    paramArrayOfInt[1] = (i >>> 1 | j << 31);
    j = paramArrayOfInt[2];
    paramArrayOfInt[2] = (j >>> 1 | i << 31);
    i = paramArrayOfInt[3];
    paramArrayOfInt[3] = (i >>> 1 | j << 31);
    return i << 31;
  }
  
  static void ʾ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    int j;
    do
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i += 1;
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i += 1;
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i += 1;
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      j = i + 1;
      i = j;
    } while (j < 16);
  }
  
  static int ˊ(int[] paramArrayOfInt1, int paramInt, int[] paramArrayOfInt2)
  {
    int k = paramArrayOfInt1[0];
    int i = 32 - paramInt;
    paramArrayOfInt2[0] = (k >>> paramInt);
    int j = paramArrayOfInt1[1];
    paramArrayOfInt2[1] = (j >>> paramInt | k << i);
    k = paramArrayOfInt1[2];
    paramArrayOfInt2[2] = (k >>> paramInt | j << i);
    j = paramArrayOfInt1[3];
    paramArrayOfInt2[3] = (j >>> paramInt | k << i);
    return j << i;
  }
  
  static void ˊ(int[] paramArrayOfInt, byte[] paramArrayOfByte)
  {
    Pack.ˎ(paramArrayOfInt, paramArrayOfByte, 0);
  }
  
  static void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    paramArrayOfInt1[0] ^= paramArrayOfInt2[0];
    paramArrayOfInt1[1] ^= paramArrayOfInt2[1];
    paramArrayOfInt1[2] ^= paramArrayOfInt2[2];
    paramArrayOfInt1[3] ^= paramArrayOfInt2[3];
  }
  
  static void ˋ(byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    Pack.ˊ(paramArrayOfByte, 0, paramArrayOfInt);
  }
  
  static void ˋ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt1 = Arrays.י(paramArrayOfInt1);
    int[] arrayOfInt2 = new int[4];
    int i = 0;
    while (i < 4)
    {
      int k = paramArrayOfInt2[i];
      int j = 31;
      while (j >= 0)
      {
        if ((1 << j & k) != 0) {
          ʻ(arrayOfInt2, arrayOfInt1);
        }
        if (ʽ(arrayOfInt1) != 0) {
          arrayOfInt1[0] ^= 0xE1000000;
        }
        j -= 1;
      }
      i += 1;
    }
    System.arraycopy(arrayOfInt2, 0, paramArrayOfInt1, 0, 4);
  }
  
  static void ˎ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (ᐝ(paramArrayOfInt1, paramArrayOfInt2) != 0) {
      paramArrayOfInt2[0] ^= 0xE1000000;
    }
  }
  
  static void ˏ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = ˊ(paramArrayOfInt1, 8, paramArrayOfInt2);
    paramArrayOfInt2[0] ^= aPF[(i >>> 24)];
  }
  
  static int ᐝ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int j = paramArrayOfInt1[0];
    paramArrayOfInt2[0] = (j >>> 1);
    int i = paramArrayOfInt1[1];
    paramArrayOfInt2[1] = (i >>> 1 | j << 31);
    j = paramArrayOfInt1[2];
    paramArrayOfInt2[2] = (j >>> 1 | i << 31);
    i = paramArrayOfInt1[3];
    paramArrayOfInt2[3] = (i >>> 1 | j << 31);
    return i << 31;
  }
  
  static int[] ᵋ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[4];
    Pack.ˊ(paramArrayOfByte, 0, arrayOfInt);
    return arrayOfInt;
  }
  
  static byte ᵗ(byte[] paramArrayOfByte)
  {
    int j = 0;
    int i = 0;
    int k;
    int m;
    do
    {
      k = paramArrayOfByte[j] & 0xFF;
      m = j + 1;
      paramArrayOfByte[j] = ((byte)(k >>> 1 | i));
      i = paramArrayOfByte[m] & 0xFF;
      j = m + 1;
      paramArrayOfByte[m] = ((byte)(i >>> 1 | (k & 0x1) << 7));
      m = paramArrayOfByte[j] & 0xFF;
      int n = j + 1;
      paramArrayOfByte[j] = ((byte)(m >>> 1 | (i & 0x1) << 7));
      i = paramArrayOfByte[n] & 0xFF;
      k = n + 1;
      paramArrayOfByte[n] = ((byte)(i >>> 1 | (m & 0x1) << 7));
      m = (i & 0x1) << 7;
      j = k;
      i = m;
    } while (k < 16);
    return (byte)m;
  }
  
  static void ι(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte1 = Arrays.І(paramArrayOfByte1);
    byte[] arrayOfByte2 = new byte[16];
    int i = 0;
    while (i < 16)
    {
      int k = paramArrayOfByte2[i];
      int j = 7;
      while (j >= 0)
      {
        if ((1 << j & k) != 0) {
          ʾ(arrayOfByte2, arrayOfByte1);
        }
        if (ᵗ(arrayOfByte1) != 0) {
          arrayOfByte1[0] = ((byte)(arrayOfByte1[0] ^ 0xFFFFFFE1));
        }
        j -= 1;
      }
      i += 1;
    }
    System.arraycopy(arrayOfByte2, 0, paramArrayOfByte1, 0, 16);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.gcm.GCMUtil
 * JD-Core Version:    0.7.0.1
 */