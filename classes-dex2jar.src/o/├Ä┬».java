package o;

import android.support.v7.internal.widget.SpinnerCompat;
import android.support.v7.internal.widget.SpinnerCompat.ˎ;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

public class ί
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  public ί(SpinnerCompat paramSpinnerCompat) {}
  
  public void onGlobalLayout()
  {
    if (!SpinnerCompat.ˊ(this.ᒸ).isShowing()) {
      SpinnerCompat.ˊ(this.ᒸ).show();
    }
    ViewTreeObserver localViewTreeObserver = this.ᒸ.getViewTreeObserver();
    if (localViewTreeObserver != null) {
      localViewTreeObserver.removeGlobalOnLayoutListener(this);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î¯
 * JD-Core Version:    0.7.0.1
 */