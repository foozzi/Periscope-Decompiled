package o;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class ヾ$if
  extends ヾ<T>.ˋ<Boolean>
{
  public final Bundle El;
  public final int statusCode;
  
  protected ヾ$if(ヾ paramヾ, int paramInt, Bundle paramBundle)
  {
    super(paramヾ, Boolean.valueOf(true));
    this.statusCode = paramInt;
    this.El = paramBundle;
  }
  
  protected void ʼ(ConnectionResult paramConnectionResult)
  {
    ヾ.ˊ(this.Em).ʽ(paramConnectionResult);
  }
  
  protected void ˊ(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      ヾ.ˊ(this.Em, 1, null);
      return;
    }
    switch (this.statusCode)
    {
    default: 
      break;
    case 0: 
      if (ᴭ()) {
        return;
      }
      if (ヾ.ʻ(this.Em) != null)
      {
        ヾ.ʼ(this.Em).ˋ(this.Em.ᘣ(), ヾ.ʻ(this.Em), this.Em.ᘧ());
        ヾ.ˊ(this.Em, null);
      }
      ヾ.ˊ(this.Em, 1, null);
      ʼ(new ConnectionResult(8, null));
      return;
    case 10: 
      ヾ.ˊ(this.Em, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
    paramBoolean = null;
    if (this.El != null) {
      paramBoolean = (PendingIntent)this.El.getParcelable("pendingIntent");
    }
    if (ヾ.ʻ(this.Em) != null)
    {
      ヾ.ʼ(this.Em).ˋ(this.Em.ᘣ(), ヾ.ʻ(this.Em), this.Em.ᘧ());
      ヾ.ˊ(this.Em, null);
    }
    ヾ.ˊ(this.Em, 1, null);
    ʼ(new ConnectionResult(this.statusCode, paramBoolean));
  }
  
  protected abstract boolean ᴭ();
  
  protected void Ṭ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¾.if
 * JD-Core Version:    0.7.0.1
 */