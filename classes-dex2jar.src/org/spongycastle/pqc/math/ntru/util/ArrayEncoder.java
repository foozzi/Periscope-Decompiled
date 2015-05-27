package org.spongycastle.pqc.math.ntru.util;

public class ArrayEncoder
{
  private static final int[] bjU = { 0, 0, 0, 1, 1, 1, -1, -1 };
  private static final int[] bjV = { 0, 1, -1, 0, 1, -1, 0, 1 };
  private static final int[] bjW = { 1, 1, 1, 0, 0, 0, 1, 0, 1 };
  private static final int[] bjX = { 1, 1, 1, 1, 0, 0, 0, 1, 0 };
  private static final int[] bjY = { 1, 0, 1, 0, 0, 1, 1, 1, 0 };
  
  public static int[] ᐣ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt1];
    int k = 31 - Integer.numberOfLeadingZeros(paramInt2);
    int j = 0;
    paramInt2 = 0;
    while (paramInt2 < paramInt1 * k)
    {
      int i = j;
      if (paramInt2 > 0)
      {
        i = j;
        if (paramInt2 % k == 0) {
          i = j + 1;
        }
      }
      j = ᵣ(paramArrayOfByte, paramInt2);
      arrayOfInt[i] += (j << paramInt2 % k);
      paramInt2 += 1;
      j = i;
    }
    return arrayOfInt;
  }
  
  public static int[] ᵕ(byte[] paramArrayOfByte, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    int i = 0;
    int j = 0;
    while (j < paramArrayOfByte.length * 8)
    {
      int n = j + 1;
      int k = ᵣ(paramArrayOfByte, j);
      int m = n + 1;
      n = ᵣ(paramArrayOfByte, n);
      j = m + 1;
      k = k * 4 + n * 2 + ᵣ(paramArrayOfByte, m);
      m = i + 1;
      arrayOfInt[i] = bjU[k];
      i = m + 1;
      arrayOfInt[m] = bjV[k];
      if (i > paramInt - 2) {
        return arrayOfInt;
      }
    }
    return arrayOfInt;
  }
  
  public static byte[] ᵢ(int[] paramArrayOfInt)
  {
    byte[] arrayOfByte = new byte[((paramArrayOfInt.length * 3 + 1) / 2 + 7) / 8];
    int i = 0;
    int j = 0;
    int m;
    for (int k = 0; k < paramArrayOfInt.length / 2 * 2; k = m)
    {
      int n = k + 1;
      k = paramArrayOfInt[k] + 1;
      m = n + 1;
      n = paramArrayOfInt[n] + 1;
      if ((k == 0) && (n == 0)) {
        throw new IllegalStateException("Illegal encoding!");
      }
      k = k * 3 + n;
      n = bjW[k];
      int i1 = bjX[k];
      int i2 = bjY[k];
      k = 0;
      while (k < 3)
      {
        arrayOfByte[j] = ((byte)(arrayOfByte[j] | new int[] { n, i1, i2 }[k] << i));
        if (i == 7)
        {
          i = 0;
          j += 1;
        }
        else
        {
          i += 1;
        }
        k += 1;
      }
    }
    return arrayOfByte;
  }
  
  private static int ᵣ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt / 8)] & 0xFF) >> paramInt % 8 & 0x1;
  }
  
  public static byte[] ι(int[] paramArrayOfInt, int paramInt)
  {
    int n = 31 - Integer.numberOfLeadingZeros(paramInt);
    byte[] arrayOfByte = new byte[(paramArrayOfInt.length * n + 7) / 8];
    int k = 0;
    paramInt = 0;
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      int j = 0;
      while (j < n)
      {
        int m = paramArrayOfInt[i];
        arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | (m >> j & 0x1) << k));
        if (k == 7)
        {
          k = 0;
          m = paramInt + 1;
          paramInt = k;
        }
        else
        {
          k += 1;
          m = paramInt;
          paramInt = k;
        }
        j += 1;
        k = paramInt;
        paramInt = m;
      }
      i += 1;
    }
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.util.ArrayEncoder
 * JD-Core Version:    0.7.0.1
 */