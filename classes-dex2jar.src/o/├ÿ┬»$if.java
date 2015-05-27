package o;

import android.database.ContentObserver;
import android.os.Handler;

class د$if
  extends ContentObserver
{
  public د$if(د paramد)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    this.ĩ.onContentChanged();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø¯.if
 * JD-Core Version:    0.7.0.1
 */