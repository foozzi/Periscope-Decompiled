package o;

import java.io.UnsupportedEncodingException;

final class ud
{
  private static final byte[] ZD = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] ZE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  
  private static String ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[(paramArrayOfByte1.length + 2) * 4 / 3];
    int i = 0;
    int k = paramArrayOfByte1.length - paramArrayOfByte1.length % 3;
    int j = 0;
    while (j < k)
    {
      int m = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[j] & 0xFF) >> 2)];
      i = m + 1;
      arrayOfByte[m] = paramArrayOfByte2[((paramArrayOfByte1[j] & 0x3) << 4 | (paramArrayOfByte1[(j + 1)] & 0xFF) >> 4)];
      m = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[(j + 1)] & 0xF) << 2 | (paramArrayOfByte1[(j + 2)] & 0xFF) >> 6)];
      i = m + 1;
      arrayOfByte[m] = paramArrayOfByte2[(paramArrayOfByte1[(j + 2)] & 0x3F)];
      j += 3;
    }
    switch (paramArrayOfByte1.length % 3)
    {
    default: 
      break;
    case 1: 
      j = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0xFF) >> 2)];
      i = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0x3) << 4)];
      j = i + 1;
      arrayOfByte[i] = 61;
      i = j + 1;
      arrayOfByte[j] = 61;
      break;
    case 2: 
      j = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0xFF) >> 2)];
      i = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0x3) << 4 | (paramArrayOfByte1[(k + 1)] & 0xFF) >> 4)];
      j = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[(k + 1)] & 0xF) << 2)];
      i = j + 1;
      arrayOfByte[j] = 61;
    }
    try
    {
      paramArrayOfByte1 = new String(arrayOfByte, 0, i, "US-ASCII");
      return paramArrayOfByte1;
    }
    catch (UnsupportedEncodingException paramArrayOfByte1)
    {
      throw new AssertionError(paramArrayOfByte1);
    }
  }
  
  public static String ˑ(byte[] paramArrayOfByte)
  {
    return ˊ(paramArrayOfByte, ZD);
  }
  
  public static byte[] ᵥ(String paramString)
  {
    int k = paramString.length();
    int i;
    while (k > 0)
    {
      i = paramString.charAt(k - 1);
      if ((i != 61) && (i != 10) && (i != 13) && (i != 32) && (i != 9)) {
        break;
      }
      k -= 1;
    }
    byte[] arrayOfByte = new byte[(int)(k * 6L / 8L)];
    int j = 0;
    int i1 = 0;
    int n = 0;
    int m = 0;
    while (m < k)
    {
      int i4 = paramString.charAt(m);
      if ((i4 >= 65) && (i4 <= 90))
      {
        i = i4 - 65;
      }
      else if ((i4 >= 97) && (i4 <= 122))
      {
        i = i4 - 71;
      }
      else if ((i4 >= 48) && (i4 <= 57))
      {
        i = i4 + 4;
      }
      else if ((i4 == 43) || (i4 == 45))
      {
        i = 62;
      }
      else if ((i4 == 47) || (i4 == 95))
      {
        i = 63;
      }
      else
      {
        i3 = j;
        i = i1;
        i2 = n;
        if (i4 == 10) {
          break label358;
        }
        i3 = j;
        i = i1;
        i2 = n;
        if (i4 == 13) {
          break label358;
        }
        i3 = j;
        i = i1;
        i2 = n;
        if (i4 == 32) {
          break label358;
        }
        if (i4 == 9)
        {
          i3 = j;
          i = i1;
          i2 = n;
          break label358;
        }
        return null;
      }
      n = n << 6 | (byte)i;
      i1 += 1;
      int i3 = j;
      i = i1;
      int i2 = n;
      if (i1 % 4 == 0)
      {
        i = j + 1;
        arrayOfByte[j] = ((byte)(n >> 16));
        j = i + 1;
        arrayOfByte[i] = ((byte)(n >> 8));
        i3 = j + 1;
        arrayOfByte[j] = ((byte)n);
        i2 = n;
        i = i1;
      }
      label358:
      m += 1;
      j = i3;
      i1 = i;
      n = i2;
    }
    k = i1 % 4;
    if (k == 1) {
      return null;
    }
    if (k == 2)
    {
      i = j + 1;
      arrayOfByte[j] = ((byte)(n << 12 >> 16));
    }
    else
    {
      i = j;
      if (k == 3)
      {
        k = n << 6;
        m = j + 1;
        arrayOfByte[j] = ((byte)(k >> 16));
        i = m + 1;
        arrayOfByte[m] = ((byte)(k >> 8));
      }
    }
    if (i == arrayOfByte.length) {
      return arrayOfByte;
    }
    paramString = new byte[i];
    System.arraycopy(arrayOfByte, 0, paramString, 0, i);
    return paramString;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ud
 * JD-Core Version:    0.7.0.1
 */