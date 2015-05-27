package retrofit.mime;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MimeUtil
{
  private static final Pattern CHARSET = Pattern.compile("\\Wcharset=([^\\s;]+)", 2);
  
  @Deprecated
  public static String parseCharset(String paramString)
  {
    return parseCharset(paramString, "UTF-8");
  }
  
  public static String parseCharset(String paramString1, String paramString2)
  {
    paramString1 = CHARSET.matcher(paramString1);
    if (paramString1.find()) {
      return paramString1.group(1).replaceAll("[\"\\\\]", "");
    }
    return paramString2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.mime.MimeUtil
 * JD-Core Version:    0.7.0.1
 */