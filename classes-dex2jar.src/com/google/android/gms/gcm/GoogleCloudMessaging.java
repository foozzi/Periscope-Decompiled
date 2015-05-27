package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class GoogleCloudMessaging
{
  public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
  public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
  public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
  public static final String MESSAGE_TYPE_MESSAGE = "gcm";
  public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
  public static final String REGISTRATION_ID = "registration_id";
  private static String zzakT = null;
  public static int zzakU = 5000000;
  public static int zzakV = 6500000;
  public static int zzakW = 7000000;
  static GoogleCloudMessaging zzakX;
  private static final AtomicInteger zzala = new AtomicInteger(1);
  private PendingIntent zzakY;
  private Map<String, Handler> zzakZ = Collections.synchronizedMap(new HashMap());
  private final BlockingQueue<Intent> zzalb = new LinkedBlockingQueue();
  final Messenger zzalc = new Messenger(new GoogleCloudMessaging.1(this, Looper.getMainLooper()));
  private Context zzlN;
  
  public static GoogleCloudMessaging getInstance(Context paramContext)
  {
    try
    {
      if (zzakX == null)
      {
        zzakX = new GoogleCloudMessaging();
        zzakX.zzlN = paramContext.getApplicationContext();
      }
      paramContext = zzakX;
      return paramContext;
    }
    finally {}
  }
  
  public static String zzZ(Context paramContext)
  {
    if (zzakT == null) {
      zzakT = "com.google.android.gms";
    }
    return zzakT;
  }
  
  private String zza(Intent paramIntent, String paramString)
  {
    if (paramIntent == null) {
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    paramString = paramIntent.getStringExtra(paramString);
    if (paramString != null) {
      return paramString;
    }
    paramIntent = paramIntent.getStringExtra("error");
    if (paramIntent != null) {
      throw new IOException(paramIntent);
    }
    throw new IOException("SERVICE_NOT_AVAILABLE");
  }
  
  private void zza(String paramString1, String paramString2, long paramLong, int paramInt, Bundle paramBundle)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Missing 'to'");
    }
    Intent localIntent = new Intent("com.google.android.gcm.intent.SEND");
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    zzk(localIntent);
    localIntent.setPackage(zzZ(this.zzlN));
    localIntent.putExtra("google.to", paramString1);
    localIntent.putExtra("google.message_id", paramString2);
    localIntent.putExtra("google.ttl", Long.toString(paramLong));
    localIntent.putExtra("google.delay", Integer.toString(paramInt));
    this.zzlN.sendOrderedBroadcast(localIntent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
  }
  
  public static int zzaa(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      int i = localPackageManager.getPackageInfo(zzZ(paramContext), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return -1;
  }
  
  private boolean zzj(Intent paramIntent)
  {
    Object localObject2 = paramIntent.getStringExtra("In-Reply-To");
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (paramIntent.hasExtra("error")) {
        localObject1 = paramIntent.getStringExtra("google.message_id");
      }
    }
    if (localObject1 != null)
    {
      localObject1 = (Handler)this.zzakZ.remove(localObject1);
      if (localObject1 != null)
      {
        localObject2 = Message.obtain();
        ((Message)localObject2).obj = paramIntent;
        return ((Handler)localObject1).sendMessage((Message)localObject2);
      }
    }
    return false;
  }
  
  private String zzpd()
  {
    return "google.rpc" + String.valueOf(zzala.getAndIncrement());
  }
  
  private Intent zzt(Bundle paramBundle)
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    if (zzaa(this.zzlN) < 0) {
      throw new IOException("Google Play Services missing");
    }
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    paramBundle = new Intent("com.google.android.c2dm.intent.REGISTER");
    paramBundle.setPackage(zzZ(this.zzlN));
    zzk(paramBundle);
    paramBundle.putExtra("google.message_id", zzpd());
    paramBundle.putExtras(localBundle);
    paramBundle.putExtra("google.messenger", this.zzalc);
    this.zzlN.startService(paramBundle);
    try
    {
      paramBundle = (Intent)this.zzalb.poll(30000L, TimeUnit.MILLISECONDS);
      return paramBundle;
    }
    catch (InterruptedException paramBundle)
    {
      throw new IOException(paramBundle.getMessage());
    }
  }
  
  public void close()
  {
    zzpe();
  }
  
  public String getMessageType(Intent paramIntent)
  {
    if (!"com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
      return null;
    }
    paramIntent = paramIntent.getStringExtra("message_type");
    if (paramIntent != null) {
      return paramIntent;
    }
    return "gcm";
  }
  
  public String register(String... paramVarArgs)
  {
    try
    {
      paramVarArgs = zzd(paramVarArgs);
      Bundle localBundle = new Bundle();
      localBundle.putString("sender", paramVarArgs);
      paramVarArgs = zza(zzt(localBundle), "registration_id");
      return paramVarArgs;
    }
    finally
    {
      paramVarArgs = finally;
      throw paramVarArgs;
    }
  }
  
  public void send(String paramString1, String paramString2, long paramLong, Bundle paramBundle)
  {
    zza(paramString1, paramString2, paramLong, -1, paramBundle);
  }
  
  public void send(String paramString1, String paramString2, Bundle paramBundle)
  {
    send(paramString1, paramString2, -1L, paramBundle);
  }
  
  public void unregister()
  {
    try
    {
      if (Looper.getMainLooper() == Looper.myLooper()) {
        throw new IOException("MAIN_THREAD");
      }
      Intent localIntent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
      localIntent.setPackage(zzZ(this.zzlN));
      localIntent.putExtra("google.messenger", this.zzalc);
      zzk(localIntent);
      this.zzlN.startService(localIntent);
      try
      {
        localIntent = (Intent)this.zzalb.poll(30000L, TimeUnit.MILLISECONDS);
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new IOException(localInterruptedException.getMessage());
      }
      zza(localInterruptedException, "unregistered");
      return;
    }
    finally {}
  }
  
  String zzd(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      throw new IllegalArgumentException("No senderIds");
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(',').append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  void zzk(Intent paramIntent)
  {
    try
    {
      if (this.zzakY == null)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage("com.google.example.invalidpackage");
        this.zzakY = PendingIntent.getBroadcast(this.zzlN, 0, localIntent, 0);
      }
      paramIntent.putExtra("app", this.zzakY);
      return;
    }
    finally {}
  }
  
  void zzpe()
  {
    try
    {
      if (this.zzakY != null)
      {
        this.zzakY.cancel();
        this.zzakY = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.gcm.GoogleCloudMessaging
 * JD-Core Version:    0.7.0.1
 */