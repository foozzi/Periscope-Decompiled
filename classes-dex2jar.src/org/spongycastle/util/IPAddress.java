package org.spongycastle.util;

public class IPAddress
{
  public static boolean ȋ(String paramString)
  {
    if (paramString.length() == 0) {
      return false;
    }
    int i = 0;
    paramString = paramString + ".";
    int j = 0;
    while (j < paramString.length())
    {
      int k = paramString.indexOf('.', j);
      if (k <= j) {
        break;
      }
      if (i == 4) {
        return false;
      }
      try
      {
        j = Integer.parseInt(paramString.substring(j, k));
      }
      catch (NumberFormatException paramString)
      {
        return false;
      }
      if ((j < 0) || (j > 255)) {
        return false;
      }
      j = k + 1;
      i += 1;
    }
    return i == 4;
  }
  
  public static boolean ɨ(String paramString)
  {
    int i = paramString.indexOf("/");
    String str = paramString.substring(i + 1);
    return (i > 0) && (ȋ(paramString.substring(0, i))) && ((ȋ(str)) || (ʼ(str, 32)));
  }
  
  public static boolean ɪ(String paramString)
  {
    int i = paramString.indexOf("/");
    String str = paramString.substring(i + 1);
    return (i > 0) && (ɾ(paramString.substring(0, i))) && ((ɾ(str)) || (ʼ(str, 128)));
  }
  
  public static boolean ɾ(String paramString)
  {
    if (paramString.length() == 0) {
      return false;
    }
    int i = 0;
    paramString = paramString + ":";
    int j = 0;
    int k = 0;
    while (k < paramString.length())
    {
      int m = paramString.indexOf(':', k);
      if (m < k) {
        break;
      }
      if (i == 8) {
        return false;
      }
      if (k != m)
      {
        String str = paramString.substring(k, m);
        if ((m == paramString.length() - 1) && (str.indexOf('.') > 0))
        {
          if (!ȋ(str)) {
            return false;
          }
          i += 1;
        }
        else
        {
          try
          {
            k = Integer.parseInt(paramString.substring(k, m), 16);
          }
          catch (NumberFormatException paramString)
          {
            return false;
          }
          if ((k < 0) || (k > 65535)) {
            return false;
          }
        }
      }
      else
      {
        if ((m != 1) && (m != paramString.length() - 1) && (j != 0)) {
          return false;
        }
        j = 1;
      }
      k = m + 1;
      i += 1;
    }
    return (i == 8) || (j != 0);
  }
  
  private static boolean ʼ(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return (i >= 0) && (i <= paramInt);
    }
    catch (NumberFormatException paramString) {}
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.IPAddress
 * JD-Core Version:    0.7.0.1
 */