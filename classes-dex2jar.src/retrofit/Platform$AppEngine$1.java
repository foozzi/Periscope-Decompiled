package retrofit;

import retrofit.appengine.UrlFetchClient;
import retrofit.client.Client;
import retrofit.client.Client.Provider;

class Platform$AppEngine$1
  implements Client.Provider
{
  Platform$AppEngine$1(Platform.AppEngine paramAppEngine, UrlFetchClient paramUrlFetchClient) {}
  
  public Client get()
  {
    return this.val$client;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Platform.AppEngine.1
 * JD-Core Version:    0.7.0.1
 */