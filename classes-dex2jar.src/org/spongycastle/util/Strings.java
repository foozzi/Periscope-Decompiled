package org.spongycastle.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;

public final class Strings
{
  public static byte[] ɿ(String paramString)
  {
    return ʻ(paramString.toCharArray());
  }
  
  public static String ʟ(String paramString)
  {
    int j = 0;
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    while (i != arrayOfChar.length)
    {
      int m = arrayOfChar[i];
      int k = j;
      if (97 <= m)
      {
        k = j;
        if (122 >= m)
        {
          k = 1;
          arrayOfChar[i] = ((char)(m - 97 + 65));
        }
      }
      i += 1;
      j = k;
    }
    if (j != 0) {
      return new String(arrayOfChar);
    }
    return paramString;
  }
  
  public static String ʰ(String paramString)
  {
    int j = 0;
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    while (i != arrayOfChar.length)
    {
      int m = arrayOfChar[i];
      int k = j;
      if (65 <= m)
      {
        k = j;
        if (90 >= m)
        {
          k = 1;
          arrayOfChar[i] = ((char)(m - 65 + 97));
        }
      }
      i += 1;
      j = k;
    }
    if (j != 0) {
      return new String(arrayOfChar);
    }
    return paramString;
  }
  
  public static byte[] ʻ(char[] paramArrayOfChar)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      ˊ(paramArrayOfChar, localByteArrayOutputStream);
    }
    catch (IOException paramArrayOfChar)
    {
      throw new IllegalStateException("cannot encode string to byte array!");
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static void ˊ(char[] paramArrayOfChar, OutputStream paramOutputStream)
  {
    int i = 0;
    while (i < paramArrayOfChar.length)
    {
      int j = paramArrayOfChar[i];
      if (j < 128)
      {
        paramOutputStream.write(j);
      }
      else if (j < 2048)
      {
        paramOutputStream.write(j >> 6 | 0xC0);
        paramOutputStream.write(j & 0x3F | 0x80);
      }
      else if ((j >= 55296) && (j <= 57343))
      {
        if (i + 1 >= paramArrayOfChar.length) {
          throw new IllegalStateException("invalid UTF-16 codepoint");
        }
        i += 1;
        int k = paramArrayOfChar[i];
        if (j > 56319) {
          throw new IllegalStateException("invalid UTF-16 codepoint");
        }
        j = ((j & 0x3FF) << 10 | k & 0x3FF) + 65536;
        paramOutputStream.write(j >> 18 | 0xF0);
        paramOutputStream.write(j >> 12 & 0x3F | 0x80);
        paramOutputStream.write(j >> 6 & 0x3F | 0x80);
        paramOutputStream.write(j & 0x3F | 0x80);
      }
      else
      {
        paramOutputStream.write(j >> 12 | 0xE0);
        paramOutputStream.write(j >> 6 & 0x3F | 0x80);
        paramOutputStream.write(j & 0x3F | 0x80);
      }
      i += 1;
    }
  }
  
  public static String[] ˊ(String paramString, char paramChar)
  {
    Vector localVector = new Vector();
    int i = 1;
    while (i != 0)
    {
      int j = paramString.indexOf(paramChar);
      if (j > 0)
      {
        localVector.addElement(paramString.substring(0, j));
        paramString = paramString.substring(j + 1);
      }
      else
      {
        i = 0;
        localVector.addElement(paramString);
      }
    }
    paramString = new String[localVector.size()];
    paramChar = '\000';
    while (paramChar != paramString.length)
    {
      paramString[paramChar] = ((String)localVector.elementAt(paramChar));
      paramChar += '\001';
    }
    return paramString;
  }
  
  public static byte[] Ϊ(String paramString)
  {
    byte[] arrayOfByte = new byte[paramString.length()];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)paramString.charAt(i));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static String і(byte[] paramArrayOfByte)
  {
    int k = 0;
    int m = 0;
    while (k < paramArrayOfByte.length)
    {
      m += 1;
      if ((paramArrayOfByte[k] & 0xF0) == 240)
      {
        m += 1;
        k += 4;
      }
      else if ((paramArrayOfByte[k] & 0xE0) == 224)
      {
        k += 3;
      }
      else if ((paramArrayOfByte[k] & 0xC0) == 192)
      {
        k += 2;
      }
      else
      {
        k += 1;
      }
    }
    char[] arrayOfChar = new char[m];
    k = 0;
    int n;
    for (m = 0; k < paramArrayOfByte.length; m = n)
    {
      int i;
      if ((paramArrayOfByte[k] & 0xF0) == 240)
      {
        n = ((paramArrayOfByte[k] & 0x3) << 18 | (paramArrayOfByte[(k + 1)] & 0x3F) << 12 | (paramArrayOfByte[(k + 2)] & 0x3F) << 6 | paramArrayOfByte[(k + 3)] & 0x3F) - 65536;
        int j = (char)(n >> 10 | 0xD800);
        i = (char)(n & 0x3FF | 0xDC00);
        n = m + 1;
        arrayOfChar[m] = j;
        k += 4;
        m = n;
      }
      else if ((paramArrayOfByte[k] & 0xE0) == 224)
      {
        i = (char)((paramArrayOfByte[k] & 0xF) << 12 | (paramArrayOfByte[(k + 1)] & 0x3F) << 6 | paramArrayOfByte[(k + 2)] & 0x3F);
        k += 3;
      }
      else if ((paramArrayOfByte[k] & 0xD0) == 208)
      {
        i = (char)((paramArrayOfByte[k] & 0x1F) << 6 | paramArrayOfByte[(k + 1)] & 0x3F);
        k += 2;
      }
      else if ((paramArrayOfByte[k] & 0xC0) == 192)
      {
        i = (char)((paramArrayOfByte[k] & 0x1F) << 6 | paramArrayOfByte[(k + 1)] & 0x3F);
        k += 2;
      }
      else
      {
        i = (char)(paramArrayOfByte[k] & 0xFF);
        k += 1;
      }
      n = m + 1;
      arrayOfChar[m] = i;
    }
    return new String(arrayOfChar);
  }
  
  public static String ї(byte[] paramArrayOfByte)
  {
    return new String(Ӏ(paramArrayOfByte));
  }
  
  public static char[] Ӏ(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length];
    int i = 0;
    while (i != arrayOfChar.length)
    {
      arrayOfChar[i] = ((char)(paramArrayOfByte[i] & 0xFF));
      i += 1;
    }
    return arrayOfChar;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.Strings
 * JD-Core Version:    0.7.0.1
 */