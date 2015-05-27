package o;

import android.database.DataSetObserver;

class ﭡ
  extends DataSetObserver
{
  ﭡ(ﭜ paramﭜ) {}
  
  public void onChanged()
  {
    super.onChanged();
    ﭜ.ˊ(this.ﮋ).notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    super.onInvalidated();
    ﭜ.ˊ(this.ﮋ).notifyDataSetInvalidated();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­¡
 * JD-Core Version:    0.7.0.1
 */