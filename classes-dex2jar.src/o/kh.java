package o;

class kh
{
  private static char[] NL = new char[64];
  private static byte[] NM;
  
  static
  {
    int j = 0;
    int i = 65;
    while (i <= 90)
    {
      arrayOfChar = NL;
      k = j + 1;
      arrayOfChar[j] = i;
      i = (char)(i + 1);
      j = k;
    }
    i = 97;
    while (i <= 122)
    {
      arrayOfChar = NL;
      k = j + 1;
      arrayOfChar[j] = i;
      i = (char)(i + 1);
      j = k;
    }
    i = 48;
    while (i <= 57)
    {
      arrayOfChar = NL;
      k = j + 1;
      arrayOfChar[j] = i;
      i = (char)(i + 1);
      j = k;
    }
    char[] arrayOfChar = NL;
    int k = j + 1;
    arrayOfChar[j] = '+';
    NL[k] = '/';
    NM = new byte[''];
    j = 0;
    while (j < NM.length)
    {
      NM[j] = -1;
      j += 1;
    }
    j = 0;
    while (j < 64)
    {
      NM[NL[j]] = ((byte)j);
      j += 1;
    }
  }
  
  public static char[] ʼ(byte[] paramArrayOfByte, int paramInt)
  {
    int i2 = (paramInt * 4 + 2) / 3;
    char[] arrayOfChar = new char[(paramInt + 2) / 3 * 4];
    int j = 0;
    int k = 0;
    while (j < paramInt)
    {
      int n = j + 1;
      int i3 = paramArrayOfByte[j] & 0xFF;
      int m;
      if (n < paramInt)
      {
        j = n + 1;
        m = paramArrayOfByte[n] & 0xFF;
      }
      else
      {
        m = 0;
        j = n;
      }
      if (j < paramInt)
      {
        n = j + 1;
        i1 = paramArrayOfByte[j] & 0xFF;
        j = n;
        n = i1;
      }
      else
      {
        n = 0;
      }
      int i1 = k + 1;
      arrayOfChar[k] = NL[(i3 >>> 2)];
      k = i1 + 1;
      arrayOfChar[i1] = NL[((i3 & 0x3) << 4 | m >>> 4)];
      int i;
      if (k < i2) {
        i = NL[((m & 0xF) << 2 | n >>> 6)];
      } else {
        i = 61;
      }
      arrayOfChar[k] = i;
      k += 1;
      if (k < i2) {
        i = NL[(n & 0x3F)];
      } else {
        i = 61;
      }
      arrayOfChar[k] = i;
      k += 1;
    }
    return arrayOfChar;
  }
  
  public static char[] ʿ(byte[] paramArrayOfByte)
  {
    return ʼ(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public static byte[] ˊ(char[] paramArrayOfChar)
  {
    int i = paramArrayOfChar.length;
    int m = i;
    if (i % 4 != 0) {
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }
    while ((m > 0) && (paramArrayOfChar[(m - 1)] == '=')) {
      m -= 1;
    }
    int i2 = m * 3 / 4;
    byte[] arrayOfByte = new byte[i2];
    i = 0;
    int k = 0;
    while (i < m)
    {
      int j = i + 1;
      int i3 = paramArrayOfChar[i];
      i = j + 1;
      int i4 = paramArrayOfChar[j];
      if (i < m)
      {
        j = i + 1;
        n = paramArrayOfChar[i];
        i = j;
        j = n;
      }
      else
      {
        j = 65;
      }
      if (i < m)
      {
        n = i + 1;
        i1 = paramArrayOfChar[i];
        i = n;
        n = i1;
      }
      else
      {
        n = 65;
      }
      if ((i3 > 127) || (i4 > 127) || (j > 127) || (n > 127)) {
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      }
      int i5 = NM[i3];
      i3 = NM[i4];
      int i1 = NM[j];
      i4 = NM[n];
      if ((i5 < 0) || (i3 < 0) || (i1 < 0) || (i4 < 0)) {
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      }
      int n = k + 1;
      arrayOfByte[k] = ((byte)(i5 << 2 | i3 >>> 4));
      j = n;
      if (n < i2)
      {
        j = n + 1;
        arrayOfByte[n] = ((byte)((i3 & 0xF) << 4 | i1 >>> 2));
      }
      k = j;
      if (j < i2)
      {
        k = j + 1;
        arrayOfByte[j] = ((byte)((i1 & 0x3) << 6 | i4));
      }
    }
    return arrayOfByte;
  }
  
  private static String ᵛ(String paramString)
  {
    char[] arrayOfChar = new char[paramString.length()];
    int i = 0;
    int j = 0;
    while (j < paramString.length())
    {
      int k = i;
      if (paramString.charAt(j) != '\n')
      {
        k = i;
        if (paramString.charAt(j) != ' ')
        {
          k = i + 1;
          arrayOfChar[i] = paramString.charAt(j);
        }
      }
      j += 1;
      i = k;
    }
    return new String(arrayOfChar).trim();
  }
  
  public static byte[] ᵥ(String paramString)
  {
    return ˊ(ᵛ(paramString).toCharArray());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kh
 * JD-Core Version:    0.7.0.1
 */