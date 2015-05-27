package o;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;

public final class sv
{
  public static TreeMap<String, String> ˊ(URI paramURI, boolean paramBoolean)
  {
    return ᐝ(paramURI.getRawQuery(), paramBoolean);
  }
  
  public static String ৲(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString.getMessage(), paramString);
    }
  }
  
  public static TreeMap<String, String> ᐝ(String paramString, boolean paramBoolean)
  {
    TreeMap localTreeMap = new TreeMap();
    if (paramString == null) {
      return localTreeMap;
    }
    paramString = paramString.split("&");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramString[i].split("=");
      if (arrayOfString.length == 2)
      {
        if (paramBoolean) {
          localTreeMap.put(ﭔ(arrayOfString[0]), ﭔ(arrayOfString[1]));
        } else {
          localTreeMap.put(arrayOfString[0], arrayOfString[1]);
        }
      }
      else if (!TextUtils.isEmpty(arrayOfString[0])) {
        if (paramBoolean) {
          localTreeMap.put(ﭔ(arrayOfString[0]), "");
        } else {
          localTreeMap.put(arrayOfString[0], "");
        }
      }
      i += 1;
    }
    return localTreeMap;
  }
  
  public static String ﭔ(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    try
    {
      paramString = URLDecoder.decode(paramString, "UTF8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString.getMessage(), paramString);
    }
  }
  
  public static String ﭠ(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = ৲(paramString);
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      char c = paramString.charAt(i);
      if (c == '*')
      {
        localStringBuilder.append("%2A");
      }
      else if (c == '+')
      {
        localStringBuilder.append("%20");
      }
      else if ((c == '%') && (i + 2 < j) && (paramString.charAt(i + 1) == '7') && (paramString.charAt(i + 2) == 'E'))
      {
        localStringBuilder.append('~');
        i += 2;
      }
      else
      {
        localStringBuilder.append(c);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sv
 * JD-Core Version:    0.7.0.1
 */