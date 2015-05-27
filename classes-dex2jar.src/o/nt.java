package o;

import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;

class nt
  implements RequestInterceptor
{
  nt(ns paramns) {}
  
  public void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
  {
    paramRequestFacade.addHeader("User-Agent", this.Ru.as());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nt
 * JD-Core Version:    0.7.0.1
 */