package o;

import android.os.Bundle;
import android.os.IBinder;

public final class ヾ$ˎ
  extends ﭒ.if
{
  private ヾ Eo;
  
  public ヾ$ˎ(ヾ paramヾ)
  {
    this.Eo = paramヾ;
  }
  
  private void ẓ()
  {
    this.Eo = null;
  }
  
  public void ˋ(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    ﺧ.ʼ(this.Eo, "onPostInitComplete can be called only once per call to getRemoteService");
    this.Eo.ˊ(paramInt, paramIBinder, paramBundle);
    ẓ();
  }
  
  public void ˎ(int paramInt, Bundle paramBundle)
  {
    ﺧ.ʼ(this.Eo, "onAccountValidationComplete can be called only once per call to validateAccount");
    this.Eo.ˋ(paramInt, paramBundle);
    ẓ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.Ë
 * JD-Core Version:    0.7.0.1
 */