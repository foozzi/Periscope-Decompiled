package o;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.io.IOException;
import retrofit.RetrofitError;
import tv.periscope.android.push.GcmBroadcastReceiver;
import tv.periscope.android.push.PushClient;

public class acl
  extends IntentService
{
  private static final String SENDER_ID = ze.brk.uO();
  private final ot bny = vf.tK().tH();
  private final PushClient bxQ = new PushClient(xt.un());
  
  public acl()
  {
    super("PushIntentService");
  }
  
  private void unregister(String paramString)
  {
    ļ(paramString);
    if (ძ.ٴ(this) == 0) {
      wO();
    }
  }
  
  private String wN()
  {
    akk.ˑ("PushIntentService", "Registering with gcm");
    Object localObject = null;
    try
    {
      String str = GoogleCloudMessaging.getInstance(this).register(new String[] { SENDER_ID });
      localObject = str;
      akk.ˑ("PushIntentService", "Device registered with gcm, registration ID=" + str);
      localObject = str;
      this.bny.ˣ(new acj(str));
      return str;
    }
    catch (IOException localIOException)
    {
      akk.ˏ("PushIntentService", "Device register with gcm failed", localIOException);
    }
    return localObject;
  }
  
  private void wO()
  {
    akk.ˑ("PushIntentService", "Unregistering with gcm");
    GoogleCloudMessaging localGoogleCloudMessaging = GoogleCloudMessaging.getInstance(this);
    try
    {
      localGoogleCloudMessaging.unregister();
      this.bny.ˣ(new ack());
      return;
    }
    catch (IOException localIOException)
    {
      akk.ˏ("PushIntentService", "Device unregister failed", localIOException);
    }
  }
  
  private void ĺ(String paramString)
  {
    יִ(paramString, wN());
  }
  
  private void ļ(String paramString)
  {
    akk.ˑ("PushIntentService", "Unregistering our token");
    try
    {
      this.bxQ.ᵣ(paramString, akn.ۦ(this));
      return;
    }
    catch (RetrofitError paramString)
    {
      akk.ˏ("PushIntentService", "Failed to unregister token", paramString);
    }
  }
  
  private void ˈ(Bundle paramBundle)
  {
    acp localacp = new acp(this);
    if (localacp.ˉ(paramBundle))
    {
      localacp.ˈ(paramBundle);
      return;
    }
    akk.ˑ("PushIntentService", "User requested to not see notification, dropping " + paramBundle);
  }
  
  private void ᐝ(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    paramIntent = GoogleCloudMessaging.getInstance(this).getMessageType(paramIntent);
    if (!localBundle.isEmpty())
    {
      if ("send_error".equals(paramIntent))
      {
        akk.ˑ("PushIntentService", "Send error: " + localBundle.toString());
        return;
      }
      if ("deleted_messages".equals(paramIntent))
      {
        akk.ˑ("PushIntentService", "Deleted messages on server: " + localBundle.toString());
        return;
      }
      if ("gcm".equals(paramIntent))
      {
        akk.ˑ("PushIntentService", "Received: " + localBundle.toString());
        ˈ(localBundle);
      }
    }
  }
  
  private void יִ(String paramString1, String paramString2)
  {
    akk.ˑ("PushIntentService", "Registering our token");
    try
    {
      this.bxQ.ˊ(paramString1, akn.เ(this), akn.ۦ(this), paramString2, akn.ו(this), akn.Ꭵ(this), "", akn.cD());
      return;
    }
    catch (RetrofitError paramString1)
    {
      akk.ᐨ("PushIntentService", "Failed to register device and user for push, will try on next app launch");
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      break;
    case -690213213: 
      if (str.equals("register")) {
        i = 0;
      }
      break;
    case -137591459: 
      if (str.equals("register_token")) {
        i = 1;
      }
      break;
    case 836015164: 
      if (str.equals("unregister")) {
        i = 2;
      }
      break;
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      ĺ(paramIntent.getStringExtra("cookie"));
      return;
    case 1: 
      יִ(paramIntent.getStringExtra("cookie"), paramIntent.getStringExtra("registration_id"));
      return;
    case 2: 
      unregister(paramIntent.getStringExtra("cookie"));
      return;
    }
    ᐝ(paramIntent);
    GcmBroadcastReceiver.ˊ(paramIntent);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acl
 * JD-Core Version:    0.7.0.1
 */