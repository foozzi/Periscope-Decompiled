package o;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class sr
{
  public static final SSLSocketFactory ˋ(ss paramss)
  {
    SSLContext localSSLContext = SSLContext.getInstance("TLS");
    localSSLContext.init(null, new TrustManager[] { new st(new su(paramss.օ(), paramss.א()), paramss) }, null);
    return localSSLContext.getSocketFactory();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sr
 * JD-Core Version:    0.7.0.1
 */