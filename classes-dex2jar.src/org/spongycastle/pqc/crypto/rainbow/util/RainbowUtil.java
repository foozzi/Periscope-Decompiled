package org.spongycastle.pqc.crypto.rainbow.util;

import java.lang.reflect.Array;

public class RainbowUtil
{
  public static boolean equals(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    if (paramArrayOfShort1.length != paramArrayOfShort2.length) {
      return false;
    }
    boolean bool2 = true;
    int i = paramArrayOfShort1.length - 1;
    while (i >= 0)
    {
      boolean bool1;
      if (paramArrayOfShort1[i] == paramArrayOfShort2[i]) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 &= bool1;
      i -= 1;
    }
    return bool2;
  }
  
  public static boolean ˊ(short[][][] paramArrayOfShort1, short[][][] paramArrayOfShort2)
  {
    if (paramArrayOfShort1.length != paramArrayOfShort2.length) {
      return false;
    }
    boolean bool = true;
    int i = paramArrayOfShort1.length - 1;
    while (i >= 0)
    {
      bool &= ˋ(paramArrayOfShort1[i], paramArrayOfShort2[i]);
      i -= 1;
    }
    return bool;
  }
  
  public static short[][][] ˊ(byte[][][] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = paramArrayOfByte[0].length;
    int k = paramArrayOfByte[0][0].length;
    short[][][] arrayOfShort = (short[][][])Array.newInstance(Short.TYPE, new int[] { i, j, k });
    i = 0;
    while (i < paramArrayOfByte.length)
    {
      j = 0;
      while (j < paramArrayOfByte[0].length)
      {
        k = 0;
        while (k < paramArrayOfByte[0][0].length)
        {
          arrayOfShort[i][j][k] = ((short)(paramArrayOfByte[i][j][k] & 0xFF));
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
  
  public static boolean ˋ(short[][] paramArrayOfShort1, short[][] paramArrayOfShort2)
  {
    if (paramArrayOfShort1.length != paramArrayOfShort2.length) {
      return false;
    }
    boolean bool = true;
    int i = paramArrayOfShort1.length - 1;
    while (i >= 0)
    {
      bool &= equals(paramArrayOfShort1[i], paramArrayOfShort2[i]);
      i -= 1;
    }
    return bool;
  }
  
  public static byte[][] ˋ(short[][] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    int j = paramArrayOfShort[0].length;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfShort.length)
    {
      j = 0;
      while (j < paramArrayOfShort[0].length)
      {
        arrayOfByte[i][j] = ((byte)paramArrayOfShort[i][j]);
        j += 1;
      }
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[][][] ˋ(short[][][] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    int j = paramArrayOfShort[0].length;
    int k = paramArrayOfShort[0][0].length;
    byte[][][] arrayOfByte = (byte[][][])Array.newInstance(Byte.TYPE, new int[] { i, j, k });
    i = 0;
    while (i < paramArrayOfShort.length)
    {
      j = 0;
      while (j < paramArrayOfShort[0].length)
      {
        k = 0;
        while (k < paramArrayOfShort[0][0].length)
        {
          arrayOfByte[i][j][k] = ((byte)paramArrayOfShort[i][j][k]);
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static short[][] ˎ(byte[][] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = paramArrayOfByte[0].length;
    short[][] arrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfByte.length)
    {
      j = 0;
      while (j < paramArrayOfByte[0].length)
      {
        arrayOfShort[i][j] = ((short)(paramArrayOfByte[i][j] & 0xFF));
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
  
  public static byte[] ˏ(short[] paramArrayOfShort)
  {
    byte[] arrayOfByte = new byte[paramArrayOfShort.length];
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      arrayOfByte[i] = ((byte)paramArrayOfShort[i]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] ՙ(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[paramArrayOfInt.length];
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      arrayOfByte[i] = ((byte)paramArrayOfInt[i]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static int[] ﺑ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[paramArrayOfByte.length];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      paramArrayOfByte[i] &= 0xFF;
      i += 1;
    }
    return arrayOfInt;
  }
  
  public static short[] ﻧ(byte[] paramArrayOfByte)
  {
    short[] arrayOfShort = new short[paramArrayOfByte.length];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      arrayOfShort[i] = ((short)(paramArrayOfByte[i] & 0xFF));
      i += 1;
    }
    return arrayOfShort;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil
 * JD-Core Version:    0.7.0.1
 */