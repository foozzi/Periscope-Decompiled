package retrofit;

import android.os.Process;

class Platform$Android$2$1
  implements Runnable
{
  Platform$Android$2$1(Platform.Android.2 param2, Runnable paramRunnable) {}
  
  public void run()
  {
    Process.setThreadPriority(10);
    this.val$r.run();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Android.2.1
 * JD-Core Version:    0.7.0.1
 */