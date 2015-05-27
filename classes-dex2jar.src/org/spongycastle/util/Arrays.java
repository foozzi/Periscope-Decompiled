package org.spongycastle.util;

import java.math.BigInteger;

public final class Arrays
{
  public static byte[] copyOf(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    if (paramInt < paramArrayOfByte.length)
    {
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
      return arrayOfByte;
    }
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    return arrayOfByte;
  }
  
  public static int[] copyOf(int[] paramArrayOfInt, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    if (paramInt < paramArrayOfInt.length)
    {
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramInt);
      return arrayOfInt;
    }
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  public static long[] copyOf(long[] paramArrayOfLong, int paramInt)
  {
    long[] arrayOfLong = new long[paramInt];
    if (paramInt < paramArrayOfLong.length)
    {
      System.arraycopy(paramArrayOfLong, 0, arrayOfLong, 0, paramInt);
      return arrayOfLong;
    }
    System.arraycopy(paramArrayOfLong, 0, arrayOfLong, 0, paramArrayOfLong.length);
    return arrayOfLong;
  }
  
  public static byte[] copyOfRange(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = ﹲ(paramInt1, paramInt2);
    byte[] arrayOfByte = new byte[paramInt2];
    if (paramArrayOfByte.length - paramInt1 < paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramArrayOfByte.length - paramInt1);
      return arrayOfByte;
    }
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public static int[] copyOfRange(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    paramInt2 = ﹲ(paramInt1, paramInt2);
    int[] arrayOfInt = new int[paramInt2];
    if (paramArrayOfInt.length - paramInt1 < paramInt2)
    {
      System.arraycopy(paramArrayOfInt, paramInt1, arrayOfInt, 0, paramArrayOfInt.length - paramInt1);
      return arrayOfInt;
    }
    System.arraycopy(paramArrayOfInt, paramInt1, arrayOfInt, 0, paramInt2);
    return arrayOfInt;
  }
  
  public static long[] copyOfRange(long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    paramInt2 = ﹲ(paramInt1, paramInt2);
    long[] arrayOfLong = new long[paramInt2];
    if (paramArrayOfLong.length - paramInt1 < paramInt2)
    {
      System.arraycopy(paramArrayOfLong, paramInt1, arrayOfLong, 0, paramArrayOfLong.length - paramInt1);
      return arrayOfLong;
    }
    System.arraycopy(paramArrayOfLong, paramInt1, arrayOfLong, 0, paramInt2);
    return arrayOfLong;
  }
  
  public static void fill(byte[] paramArrayOfByte, byte paramByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      paramArrayOfByte[i] = paramByte;
      i += 1;
    }
  }
  
  public static void fill(long[] paramArrayOfLong, long paramLong)
  {
    int i = 0;
    while (i < paramArrayOfLong.length)
    {
      paramArrayOfLong[i] = paramLong;
      i += 1;
    }
  }
  
  public static void fill(short[] paramArrayOfShort, short paramShort)
  {
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      paramArrayOfShort[i] = paramShort;
      i += 1;
    }
  }
  
  public static int hashCode(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return 0;
    }
    int j = paramArrayOfByte.length;
    for (int i = j + 1;; i = i * 257 ^ paramArrayOfByte[j])
    {
      j -= 1;
      if (j < 0) {
        break;
      }
    }
    return i;
  }
  
  public static int hashCode(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null) {
      return 0;
    }
    int j = paramArrayOfChar.length;
    for (int i = j + 1;; i = i * 257 ^ paramArrayOfChar[j])
    {
      j -= 1;
      if (j < 0) {
        break;
      }
    }
    return i;
  }
  
  public static int hashCode(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      return 0;
    }
    int j = paramArrayOfInt.length;
    for (int i = j + 1;; i = i * 257 ^ paramArrayOfInt[j])
    {
      j -= 1;
      if (j < 0) {
        break;
      }
    }
    return i;
  }
  
  public static int hashCode(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {
      return 0;
    }
    int j = paramArrayOfObject.length;
    for (int i = j + 1;; i = i * 257 ^ paramArrayOfObject[j].hashCode())
    {
      j -= 1;
      if (j < 0) {
        break;
      }
    }
    return i;
  }
  
  public static int hashCode(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null) {
      return 0;
    }
    int j = paramArrayOfShort.length;
    for (int i = j + 1;; i = i * 257 ^ paramArrayOfShort[j] & 0xFF)
    {
      j -= 1;
      if (j < 0) {
        break;
      }
    }
    return i;
  }
  
  public static byte[] ʳ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null) {
      return null;
    }
    if ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length != paramArrayOfByte1.length)) {
      return І(paramArrayOfByte1);
    }
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte2.length);
    return paramArrayOfByte2;
  }
  
  public static boolean ʾ(int[] paramArrayOfInt, int paramInt)
  {
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      if (paramArrayOfInt[i] == paramInt) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public static long[] ʿ(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {
      return null;
    }
    long[] arrayOfLong = new long[paramArrayOfLong.length];
    System.arraycopy(paramArrayOfLong, 0, arrayOfLong, 0, paramArrayOfLong.length);
    return arrayOfLong;
  }
  
  public static boolean ˊ(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    if (paramArrayOfChar1 == paramArrayOfChar2) {
      return true;
    }
    if ((paramArrayOfChar1 == null) || (paramArrayOfChar2 == null)) {
      return false;
    }
    if (paramArrayOfChar1.length != paramArrayOfChar2.length) {
      return false;
    }
    int i = 0;
    while (i != paramArrayOfChar1.length)
    {
      if (paramArrayOfChar1[i] != paramArrayOfChar2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static BigInteger[] ˊ(BigInteger[] paramArrayOfBigInteger)
  {
    if (paramArrayOfBigInteger == null) {
      return null;
    }
    BigInteger[] arrayOfBigInteger = new BigInteger[paramArrayOfBigInteger.length];
    System.arraycopy(paramArrayOfBigInteger, 0, arrayOfBigInteger, 0, paramArrayOfBigInteger.length);
    return arrayOfBigInteger;
  }
  
  public static BigInteger[] ˊ(BigInteger[] paramArrayOfBigInteger, int paramInt)
  {
    BigInteger[] arrayOfBigInteger = new BigInteger[paramInt];
    if (paramInt < paramArrayOfBigInteger.length)
    {
      System.arraycopy(paramArrayOfBigInteger, 0, arrayOfBigInteger, 0, paramInt);
      return arrayOfBigInteger;
    }
    System.arraycopy(paramArrayOfBigInteger, 0, arrayOfBigInteger, 0, paramArrayOfBigInteger.length);
    return arrayOfBigInteger;
  }
  
  public static BigInteger[] ˊ(BigInteger[] paramArrayOfBigInteger, int paramInt1, int paramInt2)
  {
    paramInt2 = ﹲ(paramInt1, paramInt2);
    BigInteger[] arrayOfBigInteger = new BigInteger[paramInt2];
    if (paramArrayOfBigInteger.length - paramInt1 < paramInt2)
    {
      System.arraycopy(paramArrayOfBigInteger, paramInt1, arrayOfBigInteger, 0, paramArrayOfBigInteger.length - paramInt1);
      return arrayOfBigInteger;
    }
    System.arraycopy(paramArrayOfBigInteger, paramInt1, arrayOfBigInteger, 0, paramInt2);
    return arrayOfBigInteger;
  }
  
  public static byte[][] ˊ(byte[][] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[][] arrayOfByte = new byte[paramArrayOfByte.length][];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      arrayOfByte[i] = І(paramArrayOfByte[i]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static int ˋ(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    if (paramArrayOfInt == null) {
      return 0;
    }
    int i = paramInt2;
    for (paramInt2 = i + 1;; paramInt2 = paramInt2 * 257 ^ paramArrayOfInt[(paramInt1 + i)])
    {
      i -= 1;
      if (i < 0) {
        break;
      }
    }
    return paramInt2;
  }
  
  public static boolean ˋ(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    if (paramArrayOfObject1 == paramArrayOfObject2) {
      return true;
    }
    if ((paramArrayOfObject1 == null) || (paramArrayOfObject2 == null)) {
      return false;
    }
    if (paramArrayOfObject1.length != paramArrayOfObject2.length) {
      return false;
    }
    int i = 0;
    while (i != paramArrayOfObject1.length)
    {
      Object localObject1 = paramArrayOfObject1[i];
      Object localObject2 = paramArrayOfObject2[i];
      if (localObject1 == null)
      {
        if (localObject2 != null) {
          return false;
        }
      }
      else if (!localObject1.equals(localObject2)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static boolean ˋ(short[] paramArrayOfShort, short paramShort)
  {
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      if (paramArrayOfShort[i] == paramShort) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public static byte[] ˋ(byte[] paramArrayOfByte, byte paramByte)
  {
    if (paramArrayOfByte == null) {
      return new byte[] { paramByte };
    }
    int i = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[i + 1];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 1, i);
    arrayOfByte[0] = paramByte;
    return arrayOfByte;
  }
  
  public static byte[][][] ˋ(byte[][][] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[][][] arrayOfByte = new byte[paramArrayOfByte.length][][];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      arrayOfByte[i] = ˊ(paramArrayOfByte[i]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static int ˎ(short[][] paramArrayOfShort)
  {
    int j = 0;
    int i = 0;
    while (i != paramArrayOfShort.length)
    {
      j = j * 257 + hashCode(paramArrayOfShort[i]);
      i += 1;
    }
    return j;
  }
  
  public static int ˎ(short[][][] paramArrayOfShort)
  {
    int j = 0;
    int i = 0;
    while (i != paramArrayOfShort.length)
    {
      j = j * 257 + ˎ(paramArrayOfShort[i]);
      i += 1;
    }
    return j;
  }
  
  public static byte[] ˎ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null) && (paramArrayOfByte3 != null) && (paramArrayOfByte4 != null))
    {
      byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length + paramArrayOfByte3.length + paramArrayOfByte4.length];
      System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, paramArrayOfByte1.length + paramArrayOfByte2.length, paramArrayOfByte3.length);
      System.arraycopy(paramArrayOfByte4, 0, arrayOfByte, paramArrayOfByte1.length + paramArrayOfByte2.length + paramArrayOfByte3.length, paramArrayOfByte4.length);
      return arrayOfByte;
    }
    if (paramArrayOfByte4 == null) {
      return ˏ(paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3);
    }
    if (paramArrayOfByte3 == null) {
      return ˏ(paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte4);
    }
    if (paramArrayOfByte2 == null) {
      return ˏ(paramArrayOfByte1, paramArrayOfByte3, paramArrayOfByte4);
    }
    return ˏ(paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte4);
  }
  
  public static boolean ˏ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    if (paramArrayOfLong1 == paramArrayOfLong2) {
      return true;
    }
    if ((paramArrayOfLong1 == null) || (paramArrayOfLong2 == null)) {
      return false;
    }
    if (paramArrayOfLong1.length != paramArrayOfLong2.length) {
      return false;
    }
    int i = 0;
    while (i != paramArrayOfLong1.length)
    {
      if (paramArrayOfLong1[i] != paramArrayOfLong2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static byte[] ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null) && (paramArrayOfByte3 != null))
    {
      byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length + paramArrayOfByte3.length];
      System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, paramArrayOfByte1.length + paramArrayOfByte2.length, paramArrayOfByte3.length);
      return arrayOfByte;
    }
    if (paramArrayOfByte2 == null) {
      return ﹶ(paramArrayOfByte1, paramArrayOfByte3);
    }
    return ﹶ(paramArrayOfByte1, paramArrayOfByte2);
  }
  
  public static byte[] І(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    return arrayOfByte;
  }
  
  public static boolean ՙ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1 == paramArrayOfInt2) {
      return true;
    }
    if ((paramArrayOfInt1 == null) || (paramArrayOfInt2 == null)) {
      return false;
    }
    if (paramArrayOfInt1.length != paramArrayOfInt2.length) {
      return false;
    }
    int i = 0;
    while (i != paramArrayOfInt1.length)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static int[] י(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      return null;
    }
    int[] arrayOfInt = new int[paramArrayOfInt.length];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramArrayOfInt.length);
    return arrayOfInt;
  }
  
  public static byte[] ۥ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    int i = 0;
    int j = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[j];
    for (;;)
    {
      j -= 1;
      if (j < 0) {
        break;
      }
      int k = i + 1;
      arrayOfByte[j] = paramArrayOfByte[i];
      i = k;
    }
    return arrayOfByte;
  }
  
  public static long[] ᐝ(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    if (paramArrayOfLong1 == null) {
      return null;
    }
    if ((paramArrayOfLong2 == null) || (paramArrayOfLong2.length != paramArrayOfLong1.length)) {
      return ʿ(paramArrayOfLong1);
    }
    System.arraycopy(paramArrayOfLong1, 0, paramArrayOfLong2, 0, paramArrayOfLong2.length);
    return paramArrayOfLong2;
  }
  
  public static short[] ᐝ(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null) {
      return null;
    }
    short[] arrayOfShort = new short[paramArrayOfShort.length];
    System.arraycopy(paramArrayOfShort, 0, arrayOfShort, 0, paramArrayOfShort.length);
    return arrayOfShort;
  }
  
  private static int ﹲ(int paramInt1, int paramInt2)
  {
    int i = paramInt2 - paramInt1;
    if (i < 0)
    {
      StringBuffer localStringBuffer = new StringBuffer(paramInt1);
      localStringBuffer.append(" > ").append(paramInt2);
      throw new IllegalArgumentException(localStringBuffer.toString());
    }
    return i;
  }
  
  public static byte[] ﹶ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null))
    {
      byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
      System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
      return arrayOfByte;
    }
    if (paramArrayOfByte2 != null) {
      return І(paramArrayOfByte2);
    }
    return І(paramArrayOfByte1);
  }
  
  public static boolean ﹺ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == paramArrayOfByte2) {
      return true;
    }
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null)) {
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    int i = 0;
    while (i != paramArrayOfByte1.length)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static boolean ｰ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == paramArrayOfByte2) {
      return true;
    }
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null)) {
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    int j = 0;
    int i = 0;
    while (i != paramArrayOfByte1.length)
    {
      j |= paramArrayOfByte1[i] ^ paramArrayOfByte2[i];
      i += 1;
    }
    return j == 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.Arrays
 * JD-Core Version:    0.7.0.1
 */