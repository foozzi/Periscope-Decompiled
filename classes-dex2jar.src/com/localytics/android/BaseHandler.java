package com.localytics.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

abstract class BaseHandler
  extends Handler
{
  private static final String CANCEL_UPLOAD = "cancel";
  private static final int MESSAGE_GET_VALUE = 2;
  static final int MESSAGE_INIT = 1;
  private static final int MESSAGE_UPLOAD = 3;
  static final int MESSAGE_UPLOAD_CALLBACK = 4;
  private static final String UPLOAD_WAKE_LOCK = "UPLOAD_WAKE_LOCK";
  protected boolean doesRetry = true;
  ListenersSet listeners;
  BaseProvider mProvider;
  private PowerManager.WakeLock mWakeLock;
  private int maxRowToUpload = 0;
  private int numberOfRetries = 0;
  private Message pendingUploadMessage = null;
  private boolean queuePriorityMessages = false;
  String siloName;
  private BaseUploadThread uploadThread = null;
  
  BaseHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private void _uploadCallback(int paramInt, String paramString)
  {
    String str = this.uploadThread.customerID;
    this.uploadThread = null;
    if (paramInt > 0)
    {
      _deleteUploadedData(paramInt);
      this.numberOfRetries = 0;
    }
    else
    {
      this.numberOfRetries += 1;
    }
    if ((!this.doesRetry) || (paramInt == this.maxRowToUpload) || (this.numberOfRetries > 3))
    {
      if (paramInt == this.maxRowToUpload) {
        _onUploadCompleted(paramString);
      }
      cancelPendingUpload();
      this.numberOfRetries = 0;
      this.maxRowToUpload = 0;
      exitWakeLock();
      return;
    }
    upload(false, 10000L, str);
  }
  
  private void cancelPendingUpload()
  {
    if (this.pendingUploadMessage != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("cancel", true);
      this.pendingUploadMessage.setData(localBundle);
      this.pendingUploadMessage = null;
      this.numberOfRetries = 0;
      this.maxRowToUpload = 0;
    }
  }
  
  private void enterWakeLock()
  {
    if (Localytics.appContext.getPackageManager().checkPermission("android.permission.WAKE_LOCK", Localytics.appContext.getPackageName()) == 0)
    {
      if (this.mWakeLock == null)
      {
        this.mWakeLock = ((PowerManager)Localytics.appContext.getSystemService("power")).newWakeLock(1, "UPLOAD_WAKE_LOCK");
        if (this.mWakeLock.isHeld()) {
          Localytics.Log.w("Wake lock will be acquired but is held when shouldn't be.");
        }
        this.mWakeLock.acquire();
        if (this.mWakeLock.isHeld())
        {
          Localytics.Log.v("Wake lock acquired.");
          return;
        }
        Localytics.Log.w("Localytics library failed to get wake lock");
      }
    }
    else {
      Localytics.Log.v("android.permission.WAKE_LOCK is missing from the Manifest file.");
    }
  }
  
  private void exitWakeLock()
  {
    if (Localytics.appContext.getPackageManager().checkPermission("android.permission.WAKE_LOCK", Localytics.appContext.getPackageName()) == 0)
    {
      if (this.mWakeLock != null)
      {
        if (!this.mWakeLock.isHeld()) {
          Localytics.Log.w("Wake lock will be released but not held when should be.");
        }
        this.mWakeLock.release();
        if (this.mWakeLock.isHeld()) {
          Localytics.Log.w("Wake lock was not released when it should have been.");
        } else {
          Localytics.Log.v("Wake lock released.");
        }
        this.mWakeLock = null;
      }
    }
    else {
      Localytics.Log.v("android.permission.WAKE_LOCK is missing from the Manifest file.");
    }
  }
  
  private <T> FutureTask<T> getFuture(Callable<T> paramCallable)
  {
    paramCallable = new FutureTask(paramCallable);
    queueMessage(obtainMessage(2, paramCallable));
    return paramCallable;
  }
  
  private <T> T getType(Callable<T> paramCallable, T paramT)
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new RuntimeException("Cannot be called on the main thread.");
    }
    return getFutureTaskValue(getFuture(paramCallable), paramT);
  }
  
  protected abstract void _deleteUploadedData(int paramInt);
  
  protected abstract TreeMap<Integer, Object> _getDataToUpload();
  
  protected abstract int _getMaxRowToUpload();
  
  abstract void _init();
  
  protected abstract void _onUploadCompleted(String paramString);
  
  void _upload(boolean paramBoolean, String paramString)
  {
    if ((this.maxRowToUpload != 0) && (this.uploadThread != null) && (!this.uploadThread.isAlive()))
    {
      this.maxRowToUpload = 0;
      this.uploadThread = null;
    }
    int i = _getMaxRowToUpload();
    if ((paramBoolean) && (this.maxRowToUpload != 0))
    {
      this.maxRowToUpload = i;
      Localytics.Log.d(String.format("Already uploading %s", new Object[] { this.siloName.toLowerCase() }));
      return;
    }
    try
    {
      TreeMap localTreeMap = _getDataToUpload();
      if (localTreeMap.size() == 0)
      {
        this.maxRowToUpload = 0;
        return;
      }
      if (paramBoolean) {
        this.maxRowToUpload = i;
      }
      enterWakeLock();
      paramString = getUploadThread(localTreeMap, paramString);
      this.uploadThread = paramString;
      paramString.start();
      return;
    }
    catch (Exception paramString)
    {
      Localytics.Log.w("Error occurred during upload", paramString);
      this.maxRowToUpload = 0;
    }
  }
  
  void addListener(BaseListener paramBaseListener)
  {
    synchronized (this.listeners)
    {
      this.listeners.add(paramBaseListener);
      return;
    }
  }
  
  boolean getBool(Callable<Boolean> paramCallable)
  {
    return ((Boolean)getType(paramCallable, Boolean.valueOf(false))).booleanValue();
  }
  
  /* Error */
  <T> T getFutureTaskValue(FutureTask<T> paramFutureTask, T paramT)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 300	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: areturn
    //   7: astore_1
    //   8: aload_2
    //   9: areturn
    //   10: astore_1
    //   11: aload_2
    //   12: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	13	0	this	BaseHandler
    //   0	13	1	paramFutureTask	FutureTask<T>
    //   0	13	2	paramT	T
    // Exception table:
    //   from	to	target	type
    //   0	5	7	java/lang/Exception
    //   0	5	10	finally
  }
  
  List getList(Callable<List> paramCallable)
  {
    return (List)getType(paramCallable, null);
  }
  
  Map getMap(Callable<Map> paramCallable)
  {
    return (Map)getType(paramCallable, null);
  }
  
  String getString(Callable<String> paramCallable)
  {
    return (String)getType(paramCallable, null);
  }
  
  protected abstract BaseUploadThread getUploadThread(TreeMap<Integer, Object> paramTreeMap, String paramString);
  
  public void handleMessage(Message paramMessage)
  {
    for (;;)
    {
      try
      {
        super.handleMessage(paramMessage);
        Localytics.Log.v(String.format("%s handler received %s", new Object[] { this.siloName, paramMessage }));
        Object localObject1;
        switch (paramMessage.what)
        {
        case 1: 
          _init();
          break;
        case 2: 
          localObject1 = (FutureTask)paramMessage.obj;
          this.mProvider.runBatchTransaction(new BaseHandler.1(this, (FutureTask)localObject1));
          break;
        case 3: 
          Localytics.Log.d(String.format("%s handler received MESSAGE_UPLOAD", new Object[] { this.siloName }));
          Object localObject2 = (Object[])paramMessage.obj;
          localObject1 = (Boolean)localObject2[0];
          localObject2 = (String)localObject2[1];
          if (!paramMessage.getData().getBoolean("cancel")) {
            this.mProvider.runBatchTransaction(new BaseHandler.2(this, (Boolean)localObject1, (String)localObject2));
          }
          break;
        case 4: 
          Localytics.Log.d(String.format("%s handler received MESSAGE_UPLOAD_CALLBACK", new Object[] { this.siloName }));
          localObject1 = (Object[])paramMessage.obj;
          int i = ((Integer)localObject1[0]).intValue();
          localObject1 = (String)localObject1[1];
          this.mProvider.runBatchTransaction(new BaseHandler.3(this, i, (String)localObject1));
          continue;
          handleMessageExtended(paramMessage);
          return;
        }
      }
      catch (Exception localException)
      {
        Localytics.Log.e(String.format("%s handler can't handle message %s", new Object[] { this.siloName, String.valueOf(paramMessage.what) }), localException);
        return;
      }
    }
  }
  
  void handleMessageExtended(Message paramMessage)
  {
    throw new Exception("Fell through switch statement");
  }
  
  boolean queueMessage(Message paramMessage)
  {
    if ((this.queuePriorityMessages) && (getLooper().getThread() == Thread.currentThread()))
    {
      handleMessage(paramMessage);
      return true;
    }
    return sendMessage(paramMessage);
  }
  
  final boolean queueMessageDelayed(Message paramMessage, long paramLong)
  {
    if (paramLong == 0L) {
      return queueMessage(paramMessage);
    }
    return sendMessageDelayed(paramMessage, paramLong);
  }
  
  void removeListener(BaseListener paramBaseListener)
  {
    synchronized (this.listeners)
    {
      this.listeners.remove(paramBaseListener);
      return;
    }
  }
  
  void upload(String paramString)
  {
    upload(true, 0L, paramString);
  }
  
  void upload(boolean paramBoolean, long paramLong, String paramString)
  {
    paramString = obtainMessage(3, new Object[] { Boolean.valueOf(paramBoolean), paramString });
    if (paramLong == 0L)
    {
      cancelPendingUpload();
      queueMessage(paramString);
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("cancel", false);
    this.pendingUploadMessage = paramString;
    this.pendingUploadMessage.setData(localBundle);
    queueMessageDelayed(this.pendingUploadMessage, paramLong);
  }
  
  public static abstract interface BaseListener {}
  
  abstract class ListenersSet
    extends HashSet<BaseHandler.BaseListener>
  {
    ListenersSet() {}
    
    void callListeners(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
    {
      try
      {
        synchronized (BaseHandler.this)
        {
          BaseHandler.access$102(BaseHandler.this, true);
          Iterator localIterator = iterator();
          while (localIterator.hasNext())
          {
            Object localObject = localIterator.next();
            try
            {
              ReflectionUtils.tryInvokeInstance(localObject, paramString, paramArrayOfClass, paramArrayOfObject);
            }
            catch (Exception localException) {}
          }
          BaseHandler.access$102(BaseHandler.this, false);
        }
        return;
      }
      finally {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.BaseHandler
 * JD-Core Version:    0.7.0.1
 */