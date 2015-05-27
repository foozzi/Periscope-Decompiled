package o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class acq
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      break;
    case 1671672458: 
      if (str.equals("dismiss")) {
        i = 0;
      }
      break;
    }
    switch (i)
    {
    default: 
      return;
    }
    akk.ˑ("PushNotificationReceiver", "User dismissed notification");
    new acp(paramContext).ʻ(paramIntent);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acq
 * JD-Core Version:    0.7.0.1
 */