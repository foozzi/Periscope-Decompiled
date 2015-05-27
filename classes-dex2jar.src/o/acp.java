package o;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class acp
{
  private static final Map<String, Integer> bxV = new HashMap();
  private final NotificationManager bxW;
  private final acz bxX;
  private final Context mContext;
  
  static
  {
    bxV.put("0", Integer.valueOf(1000));
    bxV.put("1", Integer.valueOf(1100));
    bxV.put("2", Integer.valueOf(1200));
    bxV.put("3", Integer.valueOf(1300));
    bxV.put("4", Integer.valueOf(1400));
    bxV.put("5", Integer.valueOf(1500));
    bxV.put("6", Integer.valueOf(1600));
  }
  
  public acp(Context paramContext)
  {
    this.mContext = paramContext;
    this.bxW = ((NotificationManager)paramContext.getSystemService("notification"));
    this.bxX = new acz(paramContext);
  }
  
  private void ŀ(String paramString)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramString);
    vn.ᵋ(this.mContext).ˊ(localArrayList);
  }
  
  public void ʻ(Intent paramIntent)
  {
    if ((paramIntent.hasExtra("notif_id")) && (paramIntent.hasExtra("notif_tag")))
    {
      int i = paramIntent.getIntExtra("notif_id", 0);
      paramIntent = paramIntent.getStringExtra("notif_tag");
      this.bxW.cancel(paramIntent, i);
    }
  }
  
  public void ˈ(Bundle paramBundle)
  {
    Object localObject1 = paramBundle.getString("type");
    Integer localInteger = (Integer)bxV.get(localObject1);
    if (localInteger == null)
    {
      ɬ.ˋ(new IllegalArgumentException("No matching type for push data " + paramBundle));
      return;
    }
    int j = -1;
    int i = j;
    switch (((String)localObject1).hashCode())
    {
    default: 
      i = j;
      break;
    case 51: 
      i = j;
      if (((String)localObject1).equals("3")) {
        i = 0;
      }
      break;
    case 49: 
      i = j;
      if (((String)localObject1).equals("1")) {
        i = 1;
      }
      break;
    case 53: 
      i = j;
      if (((String)localObject1).equals("5")) {
        i = 2;
      }
      break;
    case 54: 
      i = j;
      if (((String)localObject1).equals("6")) {
        i = 3;
      }
      break;
    }
    String str;
    Object localObject2;
    switch (i)
    {
    default: 
      break;
    case 0: 
      str = paramBundle.getString("user_id");
      localObject1 = str;
      localObject2 = aco.ˊ(this.mContext, localInteger.intValue(), (String)localObject1, paramBundle);
      vn.ᵋ(this.mContext).ว(str);
      paramBundle = (Bundle)localObject1;
      localObject1 = localObject2;
      break;
    case 1: 
      localObject2 = paramBundle.getString("broadcast_id");
      str = paramBundle.getString("broadcast_username");
      if (Boolean.valueOf(paramBundle.getString("locked")).booleanValue()) {
        localObject1 = aco.ˎ(this.mContext, localInteger.intValue(), str, paramBundle);
      } else {
        localObject1 = aco.ˋ(this.mContext, localInteger.intValue(), str, paramBundle);
      }
      ŀ((String)localObject2);
      paramBundle = str;
      break;
    case 2: 
      str = paramBundle.getString("broadcast_id");
      localObject1 = str;
      localObject2 = aco.ˏ(this.mContext, localInteger.intValue(), (String)localObject1, paramBundle);
      ŀ(str);
      paramBundle = (Bundle)localObject1;
      localObject1 = localObject2;
      break;
    case 3: 
      str = paramBundle.getString("broadcast_id");
      localObject1 = str;
      localObject2 = aco.ᐝ(this.mContext, localInteger.intValue(), (String)localObject1, paramBundle);
      ŀ(str);
      paramBundle = (Bundle)localObject1;
      localObject1 = localObject2;
      break;
    }
    akk.ˑ("PushNotificationManager", "Failed to issue notification for bundle " + paramBundle);
    localObject1 = null;
    paramBundle = null;
    if (localObject1 != null) {
      this.bxW.notify(paramBundle, localInteger.intValue(), (Notification)localObject1);
    }
  }
  
  public boolean ˉ(Bundle paramBundle)
  {
    String str = paramBundle.getString("type");
    if (str == null)
    {
      ɬ.ˋ(new IllegalArgumentException("shouldIssueNotification: no matching type for push data " + paramBundle));
      return false;
    }
    acy localacy = this.bxX.wS();
    int j = -1;
    int i = j;
    switch (str.hashCode())
    {
    default: 
      i = j;
      break;
    case 49: 
      i = j;
      if (str.equals("1")) {
        i = 0;
      }
      break;
    case 53: 
      i = j;
      if (str.equals("5")) {
        i = 1;
      }
      break;
    case 51: 
      i = j;
      if (str.equals("3")) {
        i = 2;
      }
      break;
    case 54: 
      i = j;
      if (str.equals("6")) {
        i = 3;
      }
      break;
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      boolean bool = Boolean.valueOf(paramBundle.getString("locked")).booleanValue();
      return (localacy.byh) || (bool);
    case 1: 
      return localacy.byi;
    case 2: 
      return localacy.byj;
    case 3: 
      return localacy.byk;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acp
 * JD-Core Version:    0.7.0.1
 */