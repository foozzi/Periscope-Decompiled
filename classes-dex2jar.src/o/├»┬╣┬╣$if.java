package o;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.widget.Adapter;

public class ﹹ$if
  extends DataSetObserver
{
  private Parcelable ѕ = null;
  
  public ﹹ$if(ﹹ paramﹹ) {}
  
  public void onChanged()
  {
    this.ӧ.ƨ = true;
    this.ӧ.ʝ = this.ӧ.ʎ;
    this.ӧ.ʎ = this.ӧ.getAdapter().getCount();
    if ((this.ӧ.getAdapter().hasStableIds()) && (this.ѕ != null) && (this.ӧ.ʝ == 0) && (this.ӧ.ʎ > 0))
    {
      ﹹ.ˊ(this.ӧ, this.ѕ);
      this.ѕ = null;
    }
    else
    {
      this.ӧ.ᴲ();
    }
    this.ӧ.ᓑ();
    this.ӧ.requestLayout();
  }
  
  public void onInvalidated()
  {
    this.ӧ.ƨ = true;
    if (this.ӧ.getAdapter().hasStableIds()) {
      this.ѕ = ﹹ.ˊ(this.ӧ);
    }
    this.ӧ.ʝ = this.ӧ.ʎ;
    this.ӧ.ʎ = 0;
    this.ӧ.Ț = -1;
    this.ӧ.ȯ = -9223372036854775808L;
    this.ӧ.ƫ = -1;
    this.ӧ.Ƴ = -9223372036854775808L;
    this.ӧ.ﾗ = false;
    this.ӧ.ᓑ();
    this.ӧ.requestLayout();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹¹.if
 * JD-Core Version:    0.7.0.1
 */