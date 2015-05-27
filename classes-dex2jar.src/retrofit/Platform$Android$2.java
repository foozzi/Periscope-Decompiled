package retrofit;

import java.util.concurrent.ThreadFactory;

class Platform$Android$2
  implements ThreadFactory
{
  Platform$Android$2(Platform.Android paramAndroid) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new Platform.Android.2.1(this, paramRunnable), "Retrofit-Idle");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Android.2
 * JD-Core Version:    0.7.0.1
 */