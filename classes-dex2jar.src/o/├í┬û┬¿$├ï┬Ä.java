package o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;

class ᖨ$ˎ
  extends BroadcastReceiver
{
  private WeakReference<ᖨ> Dp;
  
  ᖨ$ˎ(ᖨ paramᖨ)
  {
    this.Dp = new WeakReference(paramᖨ);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    paramContext = null;
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    if ((paramContext == null) || (!paramContext.equals("com.google.android.gms"))) {
      return;
    }
    paramContext = (ᖨ)this.Dp.get();
    if (paramContext == null) {
      return;
    }
    ᖨ.ʾ(paramContext);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨.Ë
 * JD-Core Version:    0.7.0.1
 */