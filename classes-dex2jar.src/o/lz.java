package o;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

public abstract class lz<T>
  implements Callback<T>
{
  public final void failure(RetrofitError paramRetrofitError)
  {
    ˊ(mj.ˎ(paramRetrofitError));
  }
  
  public final void success(T paramT, Response paramResponse)
  {
    ˊ(new mf(paramT, paramResponse));
  }
  
  public abstract void ˊ(mf<T> parammf);
  
  public abstract void ˊ(mo parammo);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lz
 * JD-Core Version:    0.7.0.1
 */