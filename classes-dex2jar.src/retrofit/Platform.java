package retrofit;

import android.os.Build.VERSION;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import o.fl;
import retrofit.android.AndroidApacheClient;
import retrofit.android.AndroidLog;
import retrofit.android.MainThreadExecutor;
import retrofit.appengine.UrlFetchClient;
import retrofit.client.Client;
import retrofit.client.Client.Provider;
import retrofit.client.OkClient;
import retrofit.client.UrlConnectionClient;
import retrofit.converter.Converter;
import retrofit.converter.GsonConverter;

abstract class Platform
{
  static final boolean HAS_RX_JAVA = hasRxJavaOnClasspath();
  private static final Platform PLATFORM = ;
  
  private static Platform findPlatform()
  {
    try
    {
      Class.forName("android.os.Build");
      if (Build.VERSION.SDK_INT != 0)
      {
        Android localAndroid = new Android(null);
        return localAndroid;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    if (System.getProperty("com.google.appengine.runtime.version") != null) {
      return new AppEngine(null);
    }
    return new Base(null);
  }
  
  static Platform get()
  {
    return PLATFORM;
  }
  
  private static boolean hasOkHttpOnClasspath()
  {
    try
    {
      Class.forName("com.squareup.okhttp.OkHttpClient");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return false;
  }
  
  private static boolean hasRxJavaOnClasspath()
  {
    try
    {
      Class.forName("rx.Observable");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return false;
  }
  
  abstract Executor defaultCallbackExecutor();
  
  abstract Client.Provider defaultClient();
  
  abstract Converter defaultConverter();
  
  abstract Executor defaultHttpExecutor();
  
  abstract RestAdapter.Log defaultLog();
  
  static class Android
    extends Platform
  {
    Executor defaultCallbackExecutor()
    {
      return new MainThreadExecutor();
    }
    
    Client.Provider defaultClient()
    {
      Object localObject;
      if (Platform.access$300()) {
        localObject = Platform.OkClientInstantiator.instantiate();
      } else if (Build.VERSION.SDK_INT < 9) {
        localObject = new AndroidApacheClient();
      } else {
        localObject = new UrlConnectionClient();
      }
      return new Platform.Android.1(this, (Client)localObject);
    }
    
    Converter defaultConverter()
    {
      return new GsonConverter(new fl());
    }
    
    Executor defaultHttpExecutor()
    {
      return Executors.newCachedThreadPool(new Platform.Android.2(this));
    }
    
    RestAdapter.Log defaultLog()
    {
      return new AndroidLog("Retrofit");
    }
  }
  
  static class AppEngine
    extends Platform.Base
  {
    private AppEngine()
    {
      super();
    }
    
    Client.Provider defaultClient()
    {
      return new Platform.AppEngine.1(this, new UrlFetchClient());
    }
  }
  
  static class Base
    extends Platform
  {
    Executor defaultCallbackExecutor()
    {
      return new Utils.SynchronousExecutor();
    }
    
    Client.Provider defaultClient()
    {
      Object localObject;
      if (Platform.access$300()) {
        localObject = Platform.OkClientInstantiator.instantiate();
      } else {
        localObject = new UrlConnectionClient();
      }
      return new Platform.Base.1(this, (Client)localObject);
    }
    
    Converter defaultConverter()
    {
      return new GsonConverter(new fl());
    }
    
    Executor defaultHttpExecutor()
    {
      return Executors.newCachedThreadPool(new Platform.Base.2(this));
    }
    
    RestAdapter.Log defaultLog()
    {
      return new Platform.Base.3(this);
    }
  }
  
  static class OkClientInstantiator
  {
    static Client instantiate()
    {
      return new OkClient();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Platform
 * JD-Core Version:    0.7.0.1
 */