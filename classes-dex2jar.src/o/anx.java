package o;

import java.net.CookiePolicy;
import java.net.HttpCookie;
import java.net.URI;

public class anx
  implements CookiePolicy
{
  static String ˊ(HttpCookie paramHttpCookie)
  {
    paramHttpCookie = paramHttpCookie.getDomain();
    if (paramHttpCookie.startsWith(".")) {
      return paramHttpCookie;
    }
    return "." + paramHttpCookie;
  }
  
  public boolean shouldAccept(URI paramURI, HttpCookie paramHttpCookie)
  {
    return HttpCookie.domainMatches(ˊ(paramHttpCookie), paramURI.getHost());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anx
 * JD-Core Version:    0.7.0.1
 */