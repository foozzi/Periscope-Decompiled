package o;

import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.concurrent.ScheduledExecutorService;

@TargetApi(14)
class Ḭ
  extends 冖
{
  private final Application pu;
  private final Application.ActivityLifecycleCallbacks pv = new ṫ(this);
  
  Ḭ(ﮈ paramﮈ, ﻤ paramﻤ, Application paramApplication)
  {
    super(paramﮈ, paramﻤ);
    this.pu = paramApplication;
    qh.ᐝ(ᴣ.ᴢ().getContext(), "Registering activity lifecycle callbacks for session analytics.");
    paramApplication.registerActivityLifecycleCallbacks(this.pv);
  }
  
  public static Ḭ ˊ(Application paramApplication, ﮈ paramﮈ, ⅈ paramⅈ, sq paramsq)
  {
    ScheduledExecutorService localScheduledExecutorService = qn.ײ("Crashlytics Trace Manager");
    return new Ḭ(paramﮈ, new ﻤ(paramApplication, new ẗ(paramApplication, localScheduledExecutorService, paramⅈ, paramsq), paramⅈ, localScheduledExecutorService), paramApplication);
  }
  
  public void disable()
  {
    qh.ᐝ(ᴣ.ᴢ().getContext(), "Unregistering activity lifecycle callbacks for session analytics");
    this.pu.unregisterActivityLifecycleCallbacks(this.pv);
    super.disable();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¸¬
 * JD-Core Version:    0.7.0.1
 */