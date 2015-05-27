package retrofit;

import java.util.concurrent.ThreadFactory;

class Platform$Base$2
  implements ThreadFactory
{
  Platform$Base$2(Platform.Base paramBase) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new Platform.Base.2.1(this, paramRunnable), "Retrofit-Idle");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Base.2
 * JD-Core Version:    0.7.0.1
 */