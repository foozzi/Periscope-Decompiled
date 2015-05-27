package o;

import java.util.Locale;

public class ᒡ
{
  public static final Locale ROOT = new Locale("", "");
  private static String ᐦ = "Arab";
  private static String ᒄ = "Hebr";
  
  public static int getLayoutDirectionFromLocale(Locale paramLocale)
  {
    if ((paramLocale != null) && (!paramLocale.equals(ROOT)))
    {
      String str = Ꭵ.ˊ(Ꭵ.ˋ(paramLocale.toString()));
      if (str == null) {
        return ˊ(paramLocale);
      }
      if ((str.equalsIgnoreCase(ᐦ)) || (str.equalsIgnoreCase(ᒄ))) {
        return 1;
      }
    }
    return 0;
  }
  
  private static int ˊ(Locale paramLocale)
  {
    switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
    {
    default: 
      break;
    case 1: 
    case 2: 
      return 1;
    }
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¡
 * JD-Core Version:    0.7.0.1
 */