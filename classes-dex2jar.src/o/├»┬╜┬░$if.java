package o;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

public class ｰ$if
  implements ᵢ, ᵔ
{
  private Notification.Builder ᐥ;
  
  public ｰ$if(Context paramContext, Notification paramNotification1, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean4, String paramString1, ArrayList<String> paramArrayList, Bundle paramBundle, int paramInt5, int paramInt6, Notification paramNotification2, String paramString2, boolean paramBoolean5, String paramString3)
  {
    paramContext = new Notification.Builder(paramContext).setWhen(paramNotification1.when).setShowWhen(paramBoolean2).setSmallIcon(paramNotification1.icon, paramNotification1.iconLevel).setContent(paramNotification1.contentView).setTicker(paramNotification1.tickerText, paramRemoteViews).setSound(paramNotification1.sound, paramNotification1.audioStreamType).setVibrate(paramNotification1.vibrate).setLights(paramNotification1.ledARGB, paramNotification1.ledOnMS, paramNotification1.ledOffMS);
    if ((paramNotification1.flags & 0x2) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setOngoing(paramBoolean2);
    if ((paramNotification1.flags & 0x8) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setOnlyAlertOnce(paramBoolean2);
    if ((paramNotification1.flags & 0x10) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    paramContext = paramContext.setAutoCancel(paramBoolean2).setDefaults(paramNotification1.defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(paramNotification1.deleteIntent);
    if ((paramNotification1.flags & 0x80) != 0) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    this.ᐥ = paramContext.setFullScreenIntent(paramPendingIntent2, paramBoolean2).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean3).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1).setLocalOnly(paramBoolean4).setExtras(paramBundle).setGroup(paramString2).setGroupSummary(paramBoolean5).setSortKey(paramString3).setCategory(paramString1).setColor(paramInt5).setVisibility(paramInt6).setPublicVersion(paramNotification2);
    paramContext = paramArrayList.iterator();
    while (paramContext.hasNext())
    {
      paramNotification1 = (String)paramContext.next();
      this.ᐥ.addPerson(paramNotification1);
    }
  }
  
  public Notification build()
  {
    return this.ᐥ.build();
  }
  
  public void ˊ(ʳ.if paramif)
  {
    ﹺ.ˊ(this.ᐥ, paramif);
  }
  
  public Notification.Builder ᵢ()
  {
    return this.ᐥ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½°.if
 * JD-Core Version:    0.7.0.1
 */