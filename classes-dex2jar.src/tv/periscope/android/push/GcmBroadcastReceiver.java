package tv.periscope.android.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import o.acl;
import o.ᐟ;

public class GcmBroadcastReceiver
  extends ᐟ
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ˊ(paramContext, paramIntent.setComponent(new ComponentName(paramContext.getPackageName(), acl.class.getName())));
    setResultCode(-1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.push.GcmBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */