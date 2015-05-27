package o;

import android.database.DataSetObserver;

class د$ˊ
  extends DataSetObserver
{
  private د$ˊ(د paramد) {}
  
  public void onChanged()
  {
    this.ĩ.ﻣ = true;
    this.ĩ.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    this.ĩ.ﻣ = false;
    this.ĩ.notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø¯.Ë
 * JD-Core Version:    0.7.0.1
 */