package o;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

class lj
{
  public static String[] ʼ(Hashtable paramHashtable)
  {
    try
    {
      Vector localVector = new Vector();
      int i = 0;
      paramHashtable = paramHashtable.keys();
      while (paramHashtable.hasMoreElements())
      {
        localVector.addElement((String)paramHashtable.nextElement());
        i += 1;
      }
      paramHashtable = new String[i];
      localVector.copyInto(paramHashtable);
      return paramHashtable;
    }
    finally {}
  }
  
  static Hashtable ʽ(Hashtable paramHashtable)
  {
    if (paramHashtable == null) {
      return null;
    }
    Hashtable localHashtable = new Hashtable();
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = localEnumeration.nextElement();
      localHashtable.put(localObject, paramHashtable.get(localObject));
    }
    return localHashtable;
  }
  
  public static String[] ˈ(String paramString1, String paramString2)
  {
    int i = 0;
    Object localObject = paramString1;
    int k;
    int j;
    for (;;)
    {
      k = ((String)localObject).indexOf(paramString2);
      j = k;
      if (k == -1) {
        break;
      }
      localObject = ((String)localObject).substring(paramString2.length() + j);
      i += 1;
    }
    localObject = new String[i + 1];
    i = 0;
    do
    {
      int m = paramString1.indexOf(paramString2, j + 1);
      if (m != -1)
      {
        k = i + 1;
        localObject[i] = paramString1.substring(paramString2.length() + j, m);
        paramString1 = paramString1.substring(m);
        i = k;
      }
      else
      {
        k = i + 1;
        localObject[i] = paramString1.substring(paramString2.length() + j);
        paramString1 = paramString1.substring(j + 1);
        i = k;
      }
      k = paramString1.indexOf(paramString2);
      j = k;
    } while (k != -1);
    return localObject;
  }
  
  public static String ˊ(Hashtable paramHashtable, String paramString)
  {
    return ˊ(paramHashtable, paramString, null);
  }
  
  public static String ˊ(Hashtable paramHashtable, String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        StringBuffer localStringBuffer = new StringBuffer();
        int i = 1;
        paramHashtable = paramHashtable.keys();
        if (paramHashtable.hasMoreElements())
        {
          String str = (String)paramHashtable.nextElement();
          if ((paramString2 == null) || (str.indexOf(paramString2) == -1)) {
            if (i != 0)
            {
              localStringBuffer.append(str);
              i = 0;
            }
            else
            {
              localStringBuffer.append(paramString1).append(str);
            }
          }
        }
        else
        {
          paramHashtable = localStringBuffer.toString();
          return paramHashtable;
        }
      }
      finally {}
    }
  }
  
  public static String ˊ(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString == null) || (paramString == null)) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramArrayOfString.length - 1)
    {
      localStringBuffer.append(paramArrayOfString[i]).append(paramString);
      i += 1;
    }
    localStringBuffer.append(paramArrayOfString[(paramArrayOfString.length - 1)]);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lj
 * JD-Core Version:    0.7.0.1
 */