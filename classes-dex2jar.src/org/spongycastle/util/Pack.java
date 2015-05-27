package org.spongycastle.util;

public abstract class Pack
{
  public static void ʻ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    ʾ((int)(paramLong >>> 32), paramArrayOfByte, paramInt);
    ʾ((int)(0xFFFFFFFF & paramLong), paramArrayOfByte, paramInt + 4);
  }
  
  public static void ʼ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    ʿ((int)(0xFFFFFFFF & paramLong), paramArrayOfByte, paramInt);
    ʿ((int)(paramLong >>> 32), paramArrayOfByte, paramInt + 4);
  }
  
  public static void ʾ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 24));
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 16));
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
  
  public static void ʿ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramInt2 += 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 24));
  }
  
  public static void ˊ(byte[] paramArrayOfByte, int paramInt, int[] paramArrayOfInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < paramArrayOfInt.length)
    {
      paramArrayOfInt[paramInt] = יִ(paramArrayOfByte, i);
      i += 4;
      paramInt += 1;
    }
  }
  
  public static void ˎ(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < paramArrayOfInt.length)
    {
      ʾ(paramArrayOfInt[paramInt], paramArrayOfByte, i);
      i += 4;
      paramInt += 1;
    }
  }
  
  public static void ˏ(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < paramArrayOfInt.length)
    {
      ʿ(paramArrayOfInt[paramInt], paramArrayOfByte, i);
      i += 4;
      paramInt += 1;
    }
  }
  
  public static int ᐟ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt];
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[j];
    j += 1;
    return i & 0xFF | (paramInt & 0xFF) << 8 | (paramArrayOfByte[j] & 0xFF) << 16 | paramArrayOfByte[(j + 1)] << 24;
  }
  
  public static long ᐡ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = ᐟ(paramArrayOfByte, paramInt);
    return (ᐟ(paramArrayOfByte, paramInt + 4) & 0xFFFFFFFF) << 32 | i & 0xFFFFFFFF;
  }
  
  public static byte[] ⁱ(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[paramArrayOfInt.length * 4];
    ˎ(paramArrayOfInt, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public static int יִ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt];
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[j];
    j += 1;
    return i << 24 | (paramInt & 0xFF) << 16 | (paramArrayOfByte[j] & 0xFF) << 8 | paramArrayOfByte[(j + 1)] & 0xFF;
  }
  
  public static long יּ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = יִ(paramArrayOfByte, paramInt);
    paramInt = יִ(paramArrayOfByte, paramInt + 4);
    return (i & 0xFFFFFFFF) << 32 | paramInt & 0xFFFFFFFF;
  }
  
  public static byte[] ﮃ(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    ʾ(paramInt, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public static byte[] ﹴ(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    ʼ(paramLong, arrayOfByte, 0);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.Pack
 * JD-Core Version:    0.7.0.1
 */