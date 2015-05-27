package o;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import tv.periscope.android.ui.broadcast.ViewerActivity;
import tv.periscope.android.ui.broadcast.ViewerActivity.ˊ;

class aco
{
  static final Uri bxT = Uri.parse("periscope://user");
  static final Uri bxU = Uri.parse("periscope://broadcast");
  
  static Uri ǃ(Context paramContext)
  {
    return Uri.parse("android.resource://" + paramContext.getPackageName() + "/" + 2131034112);
  }
  
  static Notification ˊ(Context paramContext, int paramInt, String paramString, Bundle paramBundle)
  {
    Object localObject2 = paramBundle.getString("user_display_name");
    String str = paramBundle.getString("username");
    Object localObject1 = paramBundle.getString("user_id");
    paramBundle = paramContext.getString(2131099821, new Object[] { localObject2, str });
    localObject2 = bxT.buildUpon().appendPath((String)localObject1).build();
    localObject1 = new Intent(paramContext, ake.class).setData((Uri)localObject2).putExtra("e_user_type", aah.bsL).putExtra("e_sheet_user_id", (String)localObject1).putExtra("e_from_push", true).putExtra("notif_id", paramInt).putExtra("notif_tag", paramString);
    localObject1 = TaskStackBuilder.create(paramContext).addParentStack(ake.class).addParentStack(ake.class).addNextIntent((Intent)localObject1).getPendingIntent(paramInt, 134217728);
    paramString = ˊ(paramContext, paramInt, paramString, (Uri)localObject2);
    localObject2 = paramContext.getString(2131099835);
    return new ⁱ.ˎ(paramContext).ͺ(2130837673).ʾ(paramContext.getResources().getColor(2131296335)).ˋ((CharSequence)localObject2).ˎ(paramBundle).ˏ((CharSequence)localObject2).ˊ(new ⁱ.ˋ().ˊ(paramBundle)).ˊ((PendingIntent)localObject1).ˋ(paramString).ˋ(true).build();
  }
  
  static Notification ˊ(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Uri localUri = bxU.buildUpon().appendPath(paramString4).build();
    paramString4 = new Intent(paramContext, ViewerActivity.class).setData(localUri).putExtra("e_b_id", paramString4).putExtra("e_p_mode", ViewerActivity.ˊ.bDx).putExtra("e_from_push", true).putExtra("notif_id", paramInt).putExtra("notif_tag", paramString1).setFlags(335544320);
    paramString4 = TaskStackBuilder.create(paramContext).addParentStack(ViewerActivity.class).addNextIntent(paramString4).getPendingIntent(paramInt, 134217728);
    paramString1 = ˊ(paramContext, paramInt, paramString1, localUri);
    return new ⁱ.ˎ(paramContext).ͺ(2130837673).ʾ(paramContext.getResources().getColor(2131296335)).ˋ(paramString2).ˎ(paramString3).ˏ(paramString5).ˊ(new ⁱ.ˋ().ˊ(paramString3)).ˊ(ǃ(paramContext)).ι(6).ˊ(paramString4).ˊ(2130837674, paramContext.getString(2131099815), paramString1).ˊ(2130837677, paramContext.getString(2131099818), paramString4).ˋ(paramString1).ˋ(true).build();
  }
  
  static PendingIntent ˊ(Context paramContext, int paramInt, String paramString, Uri paramUri)
  {
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), acq.class.getName());
    return PendingIntent.getBroadcast(paramContext, paramInt, new Intent("dismiss").setData(paramUri).putExtra("notif_id", paramInt).putExtra("notif_tag", paramString).setComponent(localComponentName), 134217728);
  }
  
  static Notification ˋ(Context paramContext, int paramInt, String paramString, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("broadcast_id");
    String str2 = paramBundle.getString("broadcast_user_display_name");
    paramBundle = paramBundle.getString("broadcast_title");
    str2 = paramContext.getString(2131099834, new Object[] { str2 });
    if (TextUtils.isEmpty(paramBundle)) {
      paramBundle = paramContext.getString(2131099907);
    }
    return ˊ(paramContext, paramInt, paramString, str2, paramBundle, str1, str2);
  }
  
  static Notification ˎ(Context paramContext, int paramInt, String paramString, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("broadcast_id");
    String str3 = paramBundle.getString("broadcast_username");
    String str2 = paramBundle.getString("broadcast_user_display_name");
    paramBundle = paramBundle.getString("broadcast_title");
    if (TextUtils.isEmpty(paramBundle)) {
      paramBundle = paramContext.getString(2131099822, new Object[] { str3 });
    } else {
      paramBundle = paramContext.getString(2131099823, new Object[] { str3, paramBundle });
    }
    return ˊ(paramContext, paramInt, paramString, str2, paramBundle, str1, paramBundle);
  }
  
  static Notification ˏ(Context paramContext, int paramInt, String paramString, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("username");
    String str2 = paramBundle.getString("broadcast_id");
    String str3 = paramBundle.getString("broadcast_user_display_name");
    paramBundle = paramBundle.getString("broadcast_title");
    if (TextUtils.isEmpty(paramBundle)) {
      paramBundle = paramContext.getString(2131099824, new Object[] { str1, str3 });
    } else {
      paramBundle = paramContext.getString(2131099825, new Object[] { str1, str3, paramBundle });
    }
    return ˊ(paramContext, paramInt, paramString, str1, paramBundle, str2, paramBundle);
  }
  
  static Notification ᐝ(Context paramContext, int paramInt, String paramString, Bundle paramBundle)
  {
    String str1 = paramBundle.getString("broadcast_id");
    String str2 = paramBundle.getString("broadcast_user_display_name");
    String str3 = paramBundle.getString("broadcast_title");
    paramBundle = paramBundle.getString("broadcaster_twitter_username");
    if (TextUtils.isEmpty(str3)) {
      paramBundle = paramContext.getString(2131099819, new Object[] { paramBundle });
    } else {
      paramBundle = paramContext.getString(2131099820, new Object[] { paramBundle, str3 });
    }
    return ˊ(paramContext, paramInt, paramString, str2, paramBundle, str1, paramBundle);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aco
 * JD-Core Version:    0.7.0.1
 */