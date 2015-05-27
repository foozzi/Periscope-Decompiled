package o;

import android.database.DataSetObserver;

class ῑ$ˎ
  extends DataSetObserver
{
  private ῑ$ˎ(ῑ paramῑ) {}
  
  public void onChanged()
  {
    if (this.j.isShowing()) {
      this.j.show();
    }
  }
  
  public void onInvalidated()
  {
    this.j.dismiss();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.Ë
 * JD-Core Version:    0.7.0.1
 */