package o;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import java.util.concurrent.ScheduledExecutorService;

class 冖
{
  final ﻤ pA;
  final ﮈ pz;
  
  冖(ﮈ paramﮈ, ﻤ paramﻤ)
  {
    this.pz = paramﮈ;
    this.pA = paramﻤ;
  }
  
  public static 冖 ˊ(Context paramContext, ﮈ paramﮈ, ⅈ paramⅈ, sq paramsq)
  {
    ScheduledExecutorService localScheduledExecutorService = qn.ײ("Crashlytics SAM");
    return new 冖(paramﮈ, new ﻤ(paramContext, new ẗ(paramContext, localScheduledExecutorService, paramⅈ, paramsq), paramⅈ, localScheduledExecutorService));
  }
  
  public void disable()
  {
    this.pA.disable();
  }
  
  public void onError(String paramString)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, paramString), false);
  }
  
  public void ʽ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pH, paramActivity), false);
  }
  
  public void ʾ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pJ, paramActivity), false);
  }
  
  public void ʿ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pK, paramActivity), false);
  }
  
  public void ˈ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pI, paramActivity), false);
  }
  
  public void ˉ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pM, paramActivity), false);
  }
  
  public void ˊ(tc paramtc, String paramString)
  {
    this.pA.ˊ(paramtc, paramString);
  }
  
  public void ͺ(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pN, paramActivity), false);
  }
  
  public void ٴ(String paramString)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("onCrash called from main thread!!!");
    }
    this.pA.ᵌ(כֿ.ˋ(this.pz, paramString));
  }
  
  public void Ẏ()
  {
    this.pA.ˎ(כֿ.ˊ(this.pz), true);
  }
  
  public void ι(Activity paramActivity)
  {
    this.pA.ˎ(כֿ.ˊ(this.pz, כֿ.if.pL, paramActivity), false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.å
 * JD-Core Version:    0.7.0.1
 */