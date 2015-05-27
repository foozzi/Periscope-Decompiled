package o;

public enum fe
  implements fk
{
  private fe() {}
  
  private static String ˊ(char paramChar, String paramString, int paramInt)
  {
    if (paramInt < paramString.length()) {
      return paramChar + paramString.substring(paramInt);
    }
    return String.valueOf(paramChar);
  }
  
  private static String ˣ(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (char c = paramString.charAt(0); (i < paramString.length() - 1) && (!Character.isLetter(c)); c = paramString.charAt(i))
    {
      localStringBuilder.append(c);
      i += 1;
    }
    if (i == paramString.length()) {
      return localStringBuilder.toString();
    }
    if (!Character.isUpperCase(c)) {
      return ˊ(Character.toUpperCase(c), paramString, i + 1);
    }
    return paramString;
  }
  
  private static String ι(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramString1.length())
    {
      char c = paramString1.charAt(i);
      if ((Character.isUpperCase(c)) && (localStringBuilder.length() != 0)) {
        localStringBuilder.append(paramString2);
      }
      localStringBuilder.append(c);
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fe
 * JD-Core Version:    0.7.0.1
 */