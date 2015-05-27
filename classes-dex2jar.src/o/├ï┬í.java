package o;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ˡ
{
  private static final Object ᒃ = new Object();
  private static Field ᓒ;
  private static boolean ᕪ;
  private static final Object ᙆ = new Object();
  
  public static Bundle ˊ(Notification paramNotification)
  {
    synchronized (ᒃ)
    {
      boolean bool = ᕪ;
      if (bool) {
        return null;
      }
      try
      {
        if (ᓒ == null)
        {
          localObject1 = Notification.class.getDeclaredField("extras");
          if (!Bundle.class.isAssignableFrom(((Field)localObject1).getType()))
          {
            Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
            ᕪ = true;
            return null;
          }
          ((Field)localObject1).setAccessible(true);
          ᓒ = (Field)localObject1;
        }
        Bundle localBundle = (Bundle)ᓒ.get(paramNotification);
        Object localObject1 = localBundle;
        if (localBundle == null)
        {
          localObject1 = new Bundle();
          ᓒ.set(paramNotification, localObject1);
        }
        return localObject1;
      }
      catch (IllegalAccessException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
      }
      catch (NoSuchFieldException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
      }
      ᕪ = true;
      return null;
    }
  }
  
  public static void ˊ(ᵢ paramᵢ, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    paramᵢ = new Notification.BigPictureStyle(paramᵢ.ᵢ()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      paramᵢ.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      paramᵢ.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void ˊ(ᵢ paramᵢ, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    paramᵢ = new Notification.BigTextStyle(paramᵢ.ᵢ()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      paramᵢ.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void ˊ(ᵢ paramᵢ, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    paramᵢ = new Notification.InboxStyle(paramᵢ.ᵢ()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      paramᵢ.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      paramᵢ.addLine((CharSequence)paramCharSequence1.next());
    }
  }
  
  public static Bundle ˋ(Notification.Builder paramBuilder, ʳ.if paramif)
  {
    paramBuilder.addAction(paramif.getIcon(), paramif.getTitle(), paramif.ﹶ());
    paramBuilder = new Bundle(paramif.getExtras());
    if (paramif.ｰ() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", ᑊ.ˋ(paramif.ｰ()));
    }
    return paramBuilder;
  }
  
  public static SparseArray<Bundle> ˋ(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë¡
 * JD-Core Version:    0.7.0.1
 */