package o;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class li
  extends lj
{
  public static String ৲(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8").replace("+", "%20");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.li
 * JD-Core Version:    0.7.0.1
 */