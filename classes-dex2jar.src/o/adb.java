package o;

import com.squareup.okhttp.OkHttpClient;
import java.util.concurrent.Executor;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.RestAdapter.LogLevel;
import retrofit.android.MainThreadExecutor;
import retrofit.client.OkClient;
import retrofit.client.Response;
import retrofit.mime.TypedFile;
import tv.periscope.android.signer.SignerService;

public class adb
{
  private static adb byy;
  private final RestAdapter bpQ;
  
  private adb(RestAdapter paramRestAdapter)
  {
    this.bpQ = paramRestAdapter;
  }
  
  public static void sign(ada paramada, Callback<Response> paramCallback)
  {
    ((SignerService)un().create(SignerService.class)).sign(paramada, paramCallback);
  }
  
  public static RestAdapter un()
  {
    if (byy == null) {
      throw new IllegalStateException("RestClient not initialized. Call init()");
    }
    return byy.bpQ;
  }
  
  public static yi ˊ(String paramString, TypedFile paramTypedFile)
  {
    return ((SignerService)un().create(SignerService.class)).uploadPadding(paramString, paramTypedFile);
  }
  
  public static void ˊ(Executor paramExecutor)
  {
    RestAdapter.Builder localBuilder = new RestAdapter.Builder().setEndpoint(ze.brk.uK()).setClient(new OkClient(new OkHttpClient()));
    RestAdapter.LogLevel localLogLevel;
    if (ze.ld()) {
      localLogLevel = RestAdapter.LogLevel.FULL;
    } else {
      localLogLevel = RestAdapter.LogLevel.NONE;
    }
    byy = new adb(localBuilder.setLogLevel(localLogLevel).setRequestInterceptor(new add()).setExecutors(paramExecutor, new MainThreadExecutor()).setLog(new adc()).build());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adb
 * JD-Core Version:    0.7.0.1
 */