package o;

import android.view.View;

class ᓴ$ˋ
  implements Runnable
{
  private ᓴ.ˏ Ĵ;
  
  public ᓴ$ˋ(ᓴ paramᓴ, ᓴ.ˏ paramˏ)
  {
    this.Ĵ = paramˏ;
  }
  
  public void run()
  {
    ᓴ.ʻ(this.ﾓ).ᵒ();
    View localView = (View)ᓴ.ʼ(this.ﾓ);
    if ((localView != null) && (localView.getWindowToken() != null) && (this.Ĵ.ז())) {
      ᓴ.ˊ(this.ﾓ, this.Ĵ);
    }
    ᓴ.ˊ(this.ﾓ, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.Ë
 * JD-Core Version:    0.7.0.1
 */