package o;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ˡ$if
  implements ᵢ, ᵔ
{
  private Notification.Builder ᐥ;
  private final Bundle ᑋ;
  private List<Bundle> ᴊ = new ArrayList();
  
  public ˡ$if(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean3, Bundle paramBundle, String paramString1, boolean paramBoolean4, String paramString2)
  {
    paramContext = new Notification.Builder(paramContext).setWhen(paramNotification.when).setSmallIcon(paramNotification.icon, paramNotification.iconLevel).setContent(paramNotification.contentView).setTicker(paramNotification.tickerText, paramRemoteViews).setSound(paramNotification.sound, paramNotification.audioStreamType).setVibrate(paramNotification.vibrate).setLights(paramNotification.ledARGB, paramNotification.ledOnMS, paramNotification.ledOffMS);
    boolean bool;
    if ((paramNotification.flags & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramContext = paramContext.setOngoing(bool);
    if ((paramNotification.flags & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramContext = paramContext.setOnlyAlertOnce(bool);
    if ((paramNotification.flags & 0x10) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramContext = paramContext.setAutoCancel(bool).setDefaults(paramNotification.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification.deleteIntent);
    if ((paramNotification.flags & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.ᐥ = paramContext.setFullScreenIntent(paramPendingIntent2, bool).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean2).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1);
    this.ᑋ = new Bundle();
    if (paramBundle != null) {
      this.ᑋ.putAll(paramBundle);
    }
    if (paramBoolean3) {
      this.ᑋ.putBoolean("android.support.localOnly", true);
    }
    if (paramString1 != null)
    {
      this.ᑋ.putString("android.support.groupKey", paramString1);
      if (paramBoolean4) {
        this.ᑋ.putBoolean("android.support.isGroupSummary", true);
      } else {
        this.ᑋ.putBoolean("android.support.useSideChannel", true);
      }
    }
    if (paramString2 != null) {
      this.ᑋ.putString("android.support.sortKey", paramString2);
    }
  }
  
  public Notification build()
  {
    Notification localNotification = this.ᐥ.build();
    Object localObject = ˡ.ˊ(localNotification);
    Bundle localBundle = new Bundle(this.ᑋ);
    Iterator localIterator = this.ᑋ.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((Bundle)localObject).containsKey(str)) {
        localBundle.remove(str);
      }
    }
    ((Bundle)localObject).putAll(localBundle);
    localObject = ˡ.ˋ(this.ᴊ);
    if (localObject != null) {
      ˡ.ˊ(localNotification).putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject);
    }
    return localNotification;
  }
  
  public void ˊ(ʳ.if paramif)
  {
    this.ᴊ.add(ˡ.ˋ(this.ᐥ, paramif));
  }
  
  public Notification.Builder ᵢ()
  {
    return this.ᐥ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë¡.if
 * JD-Core Version:    0.7.0.1
 */