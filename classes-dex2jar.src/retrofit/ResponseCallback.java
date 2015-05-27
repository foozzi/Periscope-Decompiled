package retrofit;

import retrofit.client.Response;

public abstract class ResponseCallback
  implements Callback<Response>
{
  public abstract void success(Response paramResponse);
  
  public void success(Response paramResponse1, Response paramResponse2)
  {
    success(paramResponse1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.ResponseCallback
 * JD-Core Version:    0.7.0.1
 */