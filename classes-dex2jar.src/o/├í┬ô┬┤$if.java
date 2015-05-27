package o;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;

class ᓴ$if
  extends ᵅ
{
  private ᵡ ᒉ;
  
  public ᓴ$if(ᓴ paramᓴ, Context paramContext, ᵡ paramᵡ)
  {
    super(paramContext, paramᵡ, null, false, ڊ.if.actionOverflowMenuStyle);
    this.ᒉ = paramᵡ;
    if (!((ᵃ)paramᵡ.getItem()).İ())
    {
      if (ᓴ.ˏ(paramᓴ) == null) {
        paramContext = (View)ᓴ.ᐝ(paramᓴ);
      } else {
        paramContext = ᓴ.ˏ(paramᓴ);
      }
      setAnchorView(paramContext);
    }
    ˊ(paramᓴ.ﾁ);
    boolean bool2 = false;
    int j = paramᵡ.size();
    int i = 0;
    boolean bool1;
    for (;;)
    {
      bool1 = bool2;
      if (i >= j) {
        break;
      }
      paramᓴ = paramᵡ.getItem(i);
      if ((paramᓴ.isVisible()) && (paramᓴ.getIcon() != null))
      {
        bool1 = true;
        break;
      }
      i += 1;
    }
    setForceShowIcon(bool1);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ᓴ.ˊ(this.ﾓ, null);
    this.ﾓ.ﾊ = 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.if
 * JD-Core Version:    0.7.0.1
 */