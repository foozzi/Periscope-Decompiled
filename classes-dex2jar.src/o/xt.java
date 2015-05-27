package o;

import com.squareup.okhttp.OkHttpClient;
import java.util.concurrent.Executor;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.RestAdapter.LogLevel;
import retrofit.android.MainThreadExecutor;
import retrofit.client.OkClient;

public class xt
{
  private static xt bpR;
  private RestAdapter bpQ;
  
  private xt(RestAdapter paramRestAdapter)
  {
    this.bpQ = paramRestAdapter;
  }
  
  public static RestAdapter un()
  {
    if (bpR == null) {
      throw new IllegalStateException("RestClient not initialized. Call init()");
    }
    return bpR.bpQ;
  }
  
  public static void ˊ(Executor paramExecutor)
  {
    RestAdapter.Builder localBuilder = new RestAdapter.Builder().setEndpoint(ze.brk.uL()).setExecutors(paramExecutor, new MainThreadExecutor()).setClient(new OkClient(new OkHttpClient()));
    if (ze.ld()) {
      paramExecutor = RestAdapter.LogLevel.FULL;
    } else {
      paramExecutor = RestAdapter.LogLevel.NONE;
    }
    bpR = new xt(localBuilder.setLogLevel(paramExecutor).setRequestInterceptor(new xv()).setLog(new xu()).build());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.xt
 * JD-Core Version:    0.7.0.1
 */