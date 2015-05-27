package o;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ℓ
{
  public static String ˊ(String paramString, Pattern paramPattern)
  {
    paramString = paramPattern.matcher(paramString);
    if (paramString.find()) {
      return paramString.group(1);
    }
    return null;
  }
  
  public static String ˊ(String paramString1, Pattern paramPattern, String paramString2)
  {
    paramPattern = paramPattern.matcher(paramString1);
    if ((paramPattern.find()) && (paramPattern.groupCount() == 1)) {
      return paramPattern.group(1);
    }
    throw new ٵ(String.format("Couldn't match %s tag in %s", new Object[] { paramString2, paramString1 }));
  }
  
  public static int ˋ(String paramString1, Pattern paramPattern, String paramString2)
  {
    return Integer.parseInt(ˊ(paramString1, paramPattern, paramString2));
  }
  
  public static boolean ˋ(String paramString, Pattern paramPattern)
  {
    paramString = paramPattern.matcher(paramString);
    if (paramString.find()) {
      return "YES".equals(paramString.group(1));
    }
    return false;
  }
  
  public static double ˎ(String paramString1, Pattern paramPattern, String paramString2)
  {
    return Double.parseDouble(ˊ(paramString1, paramPattern, paramString2));
  }
  
  public static Pattern ᵔ(String paramString)
  {
    return Pattern.compile(paramString + "=(" + "YES" + "|" + "NO" + ")");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â
 * JD-Core Version:    0.7.0.1
 */