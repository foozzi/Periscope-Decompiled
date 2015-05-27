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
import java.util.List;

public class ˮ$if
  implements ᵢ, ᵔ
{
  private Notification.Builder ᐥ;
  private Bundle ᑋ;
  private List<Bundle> ᴊ = new ArrayList();
  
  public ˮ$if(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean4, ArrayList<String> paramArrayList, Bundle paramBundle, String paramString1, boolean paramBoolean5, String paramString2)
  {
    paramContext = new Notification.Builder(paramContext).setWhen(paramNotification.when).setShowWhen(paramBoolean2).setSmallIcon(paramNotification.icon, paramNotification.iconLevel).setContent(paramNotification.contentView).setTicker(paramNotification.tickerText, paramRemoteViews).setSound(paramNotification.sound, paramNotification.audioStreamType).setVibrate(paramNotification.vibrate).setLights(paramNotification.ledARGB, paramNotification.ledOnMS, paramNotification.ledOffMS);
    if ((paramNotification.flags & 0x2) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setOngoing(paramBoolean2);
    if ((paramNotification.flags & 0x8) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setOnlyAlertOnce(paramBoolean2);
    if ((paramNotification.flags & 0x10) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setAutoCancel(paramBoolean2).setDefaults(paramNotification.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification.deleteIntent);
    if ((paramNotification.flags & 0x80) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    this.ᐥ = paramContext.setFullScreenIntent(paramPendingIntent2, paramBoolean2).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean3).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1);
    this.ᑋ = new Bundle();
    if (paramBundle != null) {
      this.ᑋ.putAll(paramBundle);
    }
    if ((paramArrayList != null) && (!paramArrayList.isEmpty())) {
      this.ᑋ.putStringArray("android.people", (String[])paramArrayList.toArray(new String[paramArrayList.size()]));
    }
    if (paramBoolean4) {
      this.ᑋ.putBoolean("android.support.localOnly", true);
    }
    if (paramString1 != null)
    {
      this.ᑋ.putString("android.support.groupKey", paramString1);
      if (paramBoolean5) {
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
    SparseArray localSparseArray = ˡ.ˋ(this.ᴊ);
    if (localSparseArray != null) {
      this.ᑋ.putSparseParcelableArray("android.support.actionExtras", localSparseArray);
    }
    this.ᐥ.setExtras(this.ᑋ);
    return this.ᐥ.build();
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
 * Qualified Name:     o.Ë®.if
 * JD-Core Version:    0.7.0.1
 */