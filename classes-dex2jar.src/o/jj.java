package o;

import java.util.Locale;
import java.util.StringTokenizer;

final class jj
  extends gk<Locale>
{
  public void ˊ(kc paramkc, Locale paramLocale)
  {
    if (paramLocale == null) {
      paramLocale = null;
    } else {
      paramLocale = paramLocale.toString();
    }
    paramkc.ᖮ(paramLocale);
  }
  
  public Locale ٴ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    StringTokenizer localStringTokenizer = new StringTokenizer(paramjz.nextString(), "_");
    paramjz = null;
    String str1 = null;
    String str2 = null;
    if (localStringTokenizer.hasMoreElements()) {
      paramjz = localStringTokenizer.nextToken();
    }
    if (localStringTokenizer.hasMoreElements()) {
      str1 = localStringTokenizer.nextToken();
    }
    if (localStringTokenizer.hasMoreElements()) {
      str2 = localStringTokenizer.nextToken();
    }
    if ((str1 == null) && (str2 == null)) {
      return new Locale(paramjz);
    }
    if (str2 == null) {
      return new Locale(paramjz, str1);
    }
    return new Locale(paramjz, str1, str2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jj
 * JD-Core Version:    0.7.0.1
 */