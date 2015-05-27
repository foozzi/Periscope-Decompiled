package o;

import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.RemoteInput;

class ﹺ
{
  public static void ˊ(Notification.Builder paramBuilder, ʳ.if paramif)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramif.getIcon(), paramif.getTitle(), paramif.ﹶ());
    if (paramif.ｰ() != null)
    {
      RemoteInput[] arrayOfRemoteInput = ᐣ.ˊ(paramif.ｰ());
      int j = arrayOfRemoteInput.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(arrayOfRemoteInput[i]);
        i += 1;
      }
    }
    if (paramif.getExtras() != null) {
      localBuilder.addExtras(paramif.getExtras());
    }
    paramBuilder.addAction(localBuilder.build());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹º
 * JD-Core Version:    0.7.0.1
 */