package o;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.StatusesService;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import javax.net.ssl.SSLSocketFactory;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.android.MainThreadExecutor;
import retrofit.converter.GsonConverter;

public class mi
{
  final ConcurrentHashMap<Class, Object> Qg;
  final RestAdapter Qh;
  
  mi(TwitterAuthConfig paramTwitterAuthConfig, mg parammg, nl paramnl, SSLSocketFactory paramSSLSocketFactory, ExecutorService paramExecutorService)
  {
    if (parammg == null) {
      throw new IllegalArgumentException("Session must not be null.");
    }
    this.Qg = new ConcurrentHashMap();
    fl localfl = new fr().ˊ(new oi()).ˊ(new ok()).f();
    this.Qh = new RestAdapter.Builder().setClient(new ly(paramTwitterAuthConfig, parammg, paramSSLSocketFactory)).setEndpoint(paramnl.bE()).setConverter(new GsonConverter(localfl)).setExecutors(paramExecutorService, new MainThreadExecutor()).build();
  }
  
  public mi(mg parammg)
  {
    this(mn.bd().be(), parammg, new nl(), mn.bd().getSSLSocketFactory(), mn.bd().ch().getExecutorService());
  }
  
  public AccountService aY()
  {
    return (AccountService)ˌ(AccountService.class);
  }
  
  public StatusesService aZ()
  {
    return (StatusesService)ˌ(StatusesService.class);
  }
  
  public <T> T ˌ(Class<T> paramClass)
  {
    if (!this.Qg.contains(paramClass)) {
      this.Qg.putIfAbsent(paramClass, this.Qh.create(paramClass));
    }
    return this.Qg.get(paramClass);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mi
 * JD-Core Version:    0.7.0.1
 */