package o;

import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import retrofit.client.Client;
import retrofit.client.Request;
import retrofit.client.Response;

public class ma
  implements Client
{
  final Client PV;
  final SSLSocketFactory sslSocketFactory;
  
  public ma(SSLSocketFactory paramSSLSocketFactory)
  {
    this.sslSocketFactory = paramSSLSocketFactory;
    if (hasOkHttpOnClasspath())
    {
      this.PV = new mb(this);
      return;
    }
    this.PV = new mc(this);
  }
  
  private boolean hasOkHttpOnClasspath()
  {
    int i = 0;
    try
    {
      Class.forName("com.squareup.okhttp.OkUrlFactory");
      i = 1;
    }
    catch (ClassNotFoundException localClassNotFoundException1) {}
    boolean bool = false;
    try
    {
      Class.forName("com.squareup.okhttp.OkHttpClient");
      bool = true;
    }
    catch (ClassNotFoundException localClassNotFoundException2) {}
    if (bool != i)
    {
      pj.cd().ˑ("Twitter", "Retrofit detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Retrofit, you'll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!");
      return false;
    }
    return bool;
  }
  
  public Response execute(Request paramRequest)
  {
    return this.PV.execute(paramRequest);
  }
  
  HttpURLConnection ˎ(HttpURLConnection paramHttpURLConnection)
  {
    if ((this.sslSocketFactory != null) && ((paramHttpURLConnection instanceof HttpsURLConnection))) {
      ((HttpsURLConnection)paramHttpURLConnection).setSSLSocketFactory(this.sslSocketFactory);
    }
    return paramHttpURLConnection;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ma
 * JD-Core Version:    0.7.0.1
 */