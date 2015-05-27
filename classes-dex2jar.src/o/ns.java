package o;

import javax.net.ssl.SSLSocketFactory;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;

public abstract class ns
{
  private final String As;
  private final mn Rr;
  private final nl Rs;
  private final RestAdapter Rt;
  private final SSLSocketFactory sslSocketFactory;
  
  public ns(mn parammn, SSLSocketFactory paramSSLSocketFactory, nl paramnl)
  {
    this.Rr = parammn;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.Rs = paramnl;
    this.As = nl.ˉ("TwitterAndroidSDK", parammn.getVersion());
    this.Rt = new RestAdapter.Builder().setEndpoint(bQ().bE()).setClient(new ma(this.sslSocketFactory)).setRequestInterceptor(new nt(this)).build();
  }
  
  protected String as()
  {
    return this.As;
  }
  
  public mn bP()
  {
    return this.Rr;
  }
  
  public nl bQ()
  {
    return this.Rs;
  }
  
  public RestAdapter bR()
  {
    return this.Rt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ns
 * JD-Core Version:    0.7.0.1
 */