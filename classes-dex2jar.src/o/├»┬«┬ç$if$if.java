package o;

import android.util.Log;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;

class ﮇ$if$if
  implements ViewTreeObserver.OnPreDrawListener
{
  private final WeakReference<ﮇ.if> mW;
  
  public ﮇ$if$if(ﮇ.if paramif)
  {
    this.mW = new WeakReference(paramif);
  }
  
  public boolean onPreDraw()
  {
    if (Log.isLoggable("ViewTarget", 2)) {
      Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
    }
    ﮇ.if localif = (ﮇ.if)this.mW.get();
    if (localif != null) {
      ﮇ.if.ˊ(localif);
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®.if.if
 * JD-Core Version:    0.7.0.1
 */