package o;

import retrofit.client.Response;

public class mf<T>
{
  public final T data;
  public final Response response;
  
  public mf(T paramT, Response paramResponse)
  {
    this.data = paramT;
    this.response = paramResponse;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mf
 * JD-Core Version:    0.7.0.1
 */