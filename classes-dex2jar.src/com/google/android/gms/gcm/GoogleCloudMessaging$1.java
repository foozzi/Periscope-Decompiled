package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.BlockingQueue;

class GoogleCloudMessaging$1
  extends Handler
{
  GoogleCloudMessaging$1(GoogleCloudMessaging paramGoogleCloudMessaging, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage == null) || (!(paramMessage.obj instanceof Intent))) {
      Log.w("GCM", "Dropping invalid message");
    }
    paramMessage = (Intent)paramMessage.obj;
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramMessage.getAction()))
    {
      GoogleCloudMessaging.zza(this.zzald).add(paramMessage);
      return;
    }
    if (!GoogleCloudMessaging.zza(this.zzald, paramMessage))
    {
      paramMessage.setPackage(GoogleCloudMessaging.zzb(this.zzald).getPackageName());
      GoogleCloudMessaging.zzb(this.zzald).sendBroadcast(paramMessage);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.gcm.GoogleCloudMessaging.1
 * JD-Core Version:    0.7.0.1
 */