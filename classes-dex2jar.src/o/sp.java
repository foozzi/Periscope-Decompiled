package o;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

final class sp
  implements sn.ˋ
{
  public HttpURLConnection ˊ(URL paramURL, Proxy paramProxy)
  {
    return (HttpURLConnection)paramURL.openConnection(paramProxy);
  }
  
  public HttpURLConnection ˋ(URL paramURL)
  {
    return (HttpURLConnection)paramURL.openConnection();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sp
 * JD-Core Version:    0.7.0.1
 */