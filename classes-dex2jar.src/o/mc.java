package o;

import java.net.HttpURLConnection;
import retrofit.client.Request;
import retrofit.client.UrlConnectionClient;

class mc
  extends UrlConnectionClient
{
  mc(ma paramma) {}
  
  protected HttpURLConnection openConnection(Request paramRequest)
  {
    return this.PW.ˎ(super.openConnection(paramRequest));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mc
 * JD-Core Version:    0.7.0.1
 */