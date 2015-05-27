package org.spongycastle.pqc.math.linearalgebra;

public final class LittleEndianConversions
{
  public static byte[] ʼ(int[] paramArrayOfInt, int paramInt)
  {
    int k = paramArrayOfInt.length;
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    int j = 0;
    while (j <= k - 2)
    {
      ι(paramArrayOfInt[j], arrayOfByte, i);
      j += 1;
      i += 4;
    }
    ᐝ(paramArrayOfInt[(k - 1)], arrayOfByte, i, paramInt - i);
    return arrayOfByte;
  }
  
  public static int[] Ι(byte[] paramArrayOfByte)
  {
    int k = (paramArrayOfByte.length + 3) / 4;
    int m = paramArrayOfByte.length & 0x3;
    int[] arrayOfInt = new int[k];
    int i = 0;
    int j = 0;
    while (j <= k - 2)
    {
      arrayOfInt[j] = ᑊ(paramArrayOfByte, i);
      j += 1;
      i += 4;
    }
    if (m != 0)
    {
      arrayOfInt[(k - 1)] = ۥ(paramArrayOfByte, i, m);
      return arrayOfInt;
    }
    arrayOfInt[(k - 1)] = ᑊ(paramArrayOfByte, i);
    return arrayOfInt;
  }
  
  public static int ۥ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    paramInt2 -= 1;
    while (paramInt2 >= 0)
    {
      i |= (paramArrayOfByte[(paramInt1 + paramInt2)] & 0xFF) << paramInt2 * 8;
      paramInt2 -= 1;
    }
    return i;
  }
  
  public static byte[] Ꮁ(int paramInt)
  {
    return new byte[] { (byte)paramInt, (byte)(paramInt >>> 8), (byte)(paramInt >>> 16), (byte)(paramInt >>> 24) };
  }
  
  public static void ᐝ(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt3 -= 1;
    while (paramInt3 >= 0)
    {
      paramArrayOfByte[(paramInt2 + paramInt3)] = ((byte)(paramInt1 >>> paramInt3 * 8));
      paramInt3 -= 1;
    }
  }
  
  public static int ᑊ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int j = i + 1;
    return paramInt & 0xFF | (paramArrayOfByte[i] & 0xFF) << 8 | (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 24;
  }
  
  public static void ι(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >>> 8));
    i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[i] = ((byte)(paramInt1 >>> 24));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.LittleEndianConversions
 * JD-Core Version:    0.7.0.1
 */