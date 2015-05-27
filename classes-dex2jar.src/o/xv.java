package o;

import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;

final class xv
  implements RequestInterceptor
{
  public void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
  {
    paramRequestFacade.addHeader("User-Agent", "tv.periscope.android/1.0 (1900046)");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.xv
 * JD-Core Version:    0.7.0.1
 */