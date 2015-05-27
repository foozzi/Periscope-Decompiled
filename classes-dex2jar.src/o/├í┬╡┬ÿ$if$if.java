package o;

import android.view.View;
import java.lang.ref.WeakReference;

class ᵘ$if$if
  implements Runnable
{
  WeakReference<View> Į;
  ᵘ į;
  
  private ᵘ$if$if(ᵘ.if paramif, ᵘ paramᵘ, View paramView)
  {
    this.Į = new WeakReference(paramView);
    this.į = paramᵘ;
  }
  
  public void run()
  {
    View localView = (View)this.Į.get();
    if (localView != null) {
      ᵘ.if.ˊ(this.ŕ, this.į, localView);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ.if.if
 * JD-Core Version:    0.7.0.1
 */