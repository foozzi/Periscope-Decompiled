package o;

public class দ
{
  public static String ʴ(String paramString)
  {
    int i = paramString.indexOf('/');
    if (i == -1) {
      throw new IllegalArgumentException("Invalid mime type: " + paramString);
    }
    return paramString.substring(0, i);
  }
  
  public static boolean ˆ(String paramString)
  {
    return ʴ(paramString).equals("audio");
  }
  
  public static boolean ˇ(String paramString)
  {
    return ʴ(paramString).equals("video");
  }
  
  public static int ˡ(String paramString)
  {
    if ("audio/ac3".equals(paramString)) {
      return 5;
    }
    if ("audio/eac3".equals(paramString)) {
      return 6;
    }
    if (ˆ(paramString)) {
      return 2;
    }
    return 0;
  }
  
  public static boolean ˮ(String paramString)
  {
    return ("audio/ac3".equals(paramString)) || ("audio/eac3".equals(paramString));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¦
 * JD-Core Version:    0.7.0.1
 */