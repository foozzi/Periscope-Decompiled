package o;

import android.view.MenuItem;

class ᓴ$aux
  implements ᵉ.if
{
  private ᓴ$aux(ᓴ paramᓴ) {}
  
  public void ˊ(ᵁ paramᵁ, boolean paramBoolean)
  {
    if ((paramᵁ instanceof ᵡ)) {
      ((ᵡ)paramᵁ).ﭔ().ˍ(false);
    }
    ᵉ.if localif = this.ﾓ.ᑋ();
    if (localif != null) {
      localif.ˊ(paramᵁ, paramBoolean);
    }
  }
  
  public boolean ˎ(ᵁ paramᵁ)
  {
    if (paramᵁ == null) {
      return false;
    }
    this.ﾓ.ﾊ = ((ᵡ)paramᵁ).getItem().getItemId();
    ᵉ.if localif = this.ﾓ.ᑋ();
    if (localif != null) {
      return localif.ˎ(paramᵁ);
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.aux
 * JD-Core Version:    0.7.0.1
 */