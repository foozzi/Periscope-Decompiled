package o;

import android.app.Activity;
import java.util.concurrent.atomic.AtomicReference;

class mt
{
  final AtomicReference<ms> QA = new AtomicReference(null);
  
  public void bm()
  {
    this.QA.set(null);
  }
  
  public boolean bn()
  {
    return this.QA.get() != null;
  }
  
  public ms bo()
  {
    return (ms)this.QA.get();
  }
  
  public boolean ˊ(Activity paramActivity, ms paramms)
  {
    boolean bool1 = false;
    if (bn())
    {
      pj.cd().ᐧ("Twitter", "Authorize already in progress");
      return false;
    }
    if (paramms.ˌ(paramActivity))
    {
      boolean bool2 = this.QA.compareAndSet(null, paramms);
      bool1 = bool2;
      if (!bool2)
      {
        pj.cd().ᐧ("Twitter", "Failed to update authHandler, authorize already in progress.");
        bool1 = bool2;
      }
    }
    return bool1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mt
 * JD-Core Version:    0.7.0.1
 */