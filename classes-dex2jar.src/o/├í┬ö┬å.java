package o;

import android.view.View;
import java.util.ArrayList;

class ᔆ
  extends ﭠ
{
  private boolean ᘆ = false;
  private int ᴋ = 0;
  
  ᔆ(ᓑ paramᓑ) {}
  
  public void ᵢ(View paramView)
  {
    if (this.ᘆ) {
      return;
    }
    this.ᘆ = true;
    if (ᓑ.ˊ(this.ᴹ) != null) {
      ᓑ.ˊ(this.ᴹ).ᵢ(null);
    }
  }
  
  public void ⁱ(View paramView)
  {
    int i = this.ᴋ + 1;
    this.ᴋ = i;
    if (i == ᓑ.ˎ(this.ᴹ).size())
    {
      if (ᓑ.ˊ(this.ᴹ) != null) {
        ᓑ.ˊ(this.ᴹ).ⁱ(null);
      }
      ﻧ();
    }
  }
  
  void ﻧ()
  {
    this.ᴋ = 0;
    this.ᘆ = false;
    ᓑ.ˋ(this.ᴹ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */