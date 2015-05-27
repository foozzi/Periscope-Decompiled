package org.spongycastle.pqc.math.linearalgebra;

public final class ByteUtils
{
  private static final char[] biK = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static boolean equals(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null) {
      return paramArrayOfByte2 == null;
    }
    if (paramArrayOfByte2 == null) {
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    boolean bool2 = true;
    int i = paramArrayOfByte1.length - 1;
    while (i >= 0)
    {
      boolean bool1;
      if (paramArrayOfByte1[i] == paramArrayOfByte2[i]) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 &= bool1;
      i -= 1;
    }
    return bool2;
  }
  
  public static byte[] ˮ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2 - paramInt1];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2 - paramInt1);
    return arrayOfByte;
  }
  
  public static byte[][] ᐩ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt > paramArrayOfByte.length) {
      throw new ArrayIndexOutOfBoundsException();
    }
    byte[][] arrayOfByte = new byte[2][];
    arrayOfByte[0] = new byte[paramInt];
    arrayOfByte[1] = new byte[paramArrayOfByte.length - paramInt];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte[0], 0, paramInt);
    System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte[1], 0, paramArrayOfByte.length - paramInt);
    return arrayOfByte;
  }
  
  public static byte[] ﹶ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.ByteUtils
 * JD-Core Version:    0.7.0.1
 */