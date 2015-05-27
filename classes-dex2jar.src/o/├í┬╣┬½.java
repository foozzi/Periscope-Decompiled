package o;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class ṫ
  implements Application.ActivityLifecycleCallbacks
{
  ṫ(Ḭ paramḬ) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    this.pw.ʽ(paramActivity);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    this.pw.ͺ(paramActivity);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    this.pw.ι(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    this.pw.ʾ(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    this.pw.ʿ(paramActivity);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    this.pw.ˈ(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    this.pw.ˉ(paramActivity);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¹«
 * JD-Core Version:    0.7.0.1
 */