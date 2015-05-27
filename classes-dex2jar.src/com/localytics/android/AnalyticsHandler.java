package com.localytics.android;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class AnalyticsHandler
  extends BaseHandler
{
  private static final int MESSAGE_CLOSE = 102;
  private static final int MESSAGE_DISABLE_PUSH = 112;
  private static final int MESSAGE_HANDLE_PUSH_REGISTRATION = 110;
  private static final int MESSAGE_OPEN = 101;
  private static final int MESSAGE_OPT_OUT = 108;
  private static final int MESSAGE_REGISTER_PUSH = 109;
  private static final int MESSAGE_SET_CUSTOM_DIMENSION = 107;
  private static final int MESSAGE_SET_IDENTIFIER = 105;
  private static final int MESSAGE_SET_LOCATION = 106;
  private static final int MESSAGE_SET_PUSH_REGID = 113;
  private static final int MESSAGE_SET_REFERRERID = 114;
  private static final int MESSAGE_TAG_EVENT = 103;
  private static final int MESSAGE_TAG_SCREEN = 104;
  private static final String[] PROJECTION_SET_CUSTOM_DIMENSION = { "custom_dimension_value" };
  private static final String[] PROJECTION_SET_IDENTIFIER = { "key", "value" };
  private static final String SELECTION_SET_CUSTOM_DIMENSION = String.format("%s = ?", new Object[] { "custom_dimension_key" });
  private static final String SELECTION_SET_IDENTIFIER = String.format("%s = ?", new Object[] { "key" });
  private static Location sLastLocation = null;
  private boolean appWasUpgraded = false;
  private boolean firstSessionEver = false;
  private final List<String> screenFlow = new ArrayList();
  
  AnalyticsHandler(Looper paramLooper)
  {
    super(paramLooper);
    this.siloName = "Analytics";
    this.listeners = new AnalyticsListenersSet(null);
    queueMessage(obtainMessage(1));
  }
  
  private void _addLocationIDsAndCustomDimensions(JSONObject paramJSONObject1, JSONObject paramJSONObject2, String paramString1, String paramString2)
  {
    try
    {
      if (sLastLocation != null)
      {
        double d1 = sLastLocation.getLatitude();
        double d2 = sLastLocation.getLongitude();
        if ((d1 != 0.0D) && (d2 != 0.0D))
        {
          paramJSONObject1.put("lat", d1);
          paramJSONObject1.put("lng", d2);
        }
      }
      paramJSONObject1.put("cid", paramString1);
      paramJSONObject1.put("utp", paramString2);
      if (paramJSONObject2.length() > 0) {
        paramJSONObject1.put("ids", paramJSONObject2);
      }
      paramJSONObject2 = null;
      try
      {
        paramString1 = this.mProvider.query("custom_dimensions", null, null, null, null);
        for (;;)
        {
          paramJSONObject2 = paramString1;
          if (!paramString1.moveToNext()) {
            break;
          }
          paramJSONObject2 = paramString1;
          paramString2 = paramString1.getString(paramString1.getColumnIndexOrThrow("custom_dimension_key"));
          paramJSONObject2 = paramString1;
          String str = paramString1.getString(paramString1.getColumnIndexOrThrow("custom_dimension_value"));
          paramJSONObject2 = paramString1;
          paramJSONObject1.put(paramString2.replace("custom_dimension_", "c"), str);
        }
      }
      finally
      {
        if (paramJSONObject2 != null) {
          paramJSONObject2.close();
        }
      }
      return;
    }
    catch (JSONException paramJSONObject1) {}
  }
  
  private void _close()
  {
    if (!_isSessionOpen())
    {
      Localytics.Log.w("Session was not open, so close is not possible.");
      return;
    }
    ((AnalyticsListener)this.listeners).localyticsSessionWillClose();
    _tagEvent("close");
  }
  
  private void _dequeQueuedCloseSessionTag(boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramBoolean)
    {
      Object localObject1 = null;
      try
      {
        localCursor = this.mProvider.query("info", new String[] { "queued_close_session_blob", "queued_close_session_blob_upload_format" }, null, null, null);
        localObject1 = localCursor;
        if (localCursor.moveToFirst())
        {
          localObject1 = localCursor;
          String str = localCursor.getString(localCursor.getColumnIndexOrThrow("queued_close_session_blob"));
          localObject1 = localCursor;
          int i = localCursor.getInt(localCursor.getColumnIndexOrThrow("queued_close_session_blob_upload_format"));
          localObject1 = localCursor;
          if (!TextUtils.isEmpty(str))
          {
            localObject1 = localCursor;
            this.screenFlow.clear();
            localObject1 = localCursor;
            localContentValues.put("blob", str);
            localObject1 = localCursor;
            localContentValues.put("upload_format", Integer.valueOf(i));
            localObject1 = localCursor;
            this.mProvider.insert("events", localContentValues);
            localObject1 = localCursor;
            localContentValues.clear();
            localObject1 = localCursor;
            this.appWasUpgraded = false;
            localObject1 = localCursor;
            this.firstSessionEver = false;
          }
        }
      }
      finally
      {
        Cursor localCursor;
        if (localObject1 != null) {
          localObject1.close();
        }
      }
    }
    localContentValues.putNull("queued_close_session_blob");
    localContentValues.putNull("queued_close_session_blob_upload_format");
    localContentValues.put("last_session_close_time", Integer.valueOf(0));
    this.mProvider.update("info", localContentValues, null, null);
  }
  
  private String _getCustomDimension(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 10)) {
      return null;
    }
    String str1 = null;
    Object localObject2 = getCustomDimensionAttributeKey(paramInt);
    Object localObject1 = null;
    try
    {
      localObject2 = this.mProvider.query("custom_dimensions", PROJECTION_SET_CUSTOM_DIMENSION, SELECTION_SET_CUSTOM_DIMENSION, new String[] { localObject2 }, null);
      localObject1 = localObject2;
      if (((Cursor)localObject2).moveToFirst())
      {
        localObject1 = localObject2;
        str1 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndexOrThrow("custom_dimension_value"));
      }
      if (localObject2 != null)
      {
        ((Cursor)localObject2).close();
        return str1;
      }
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return str2;
  }
  
  private JSONObject _getIdentifiers()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Cursor localCursor = this.mProvider.query("identifiers", null, null, null, null);
      for (;;)
      {
        localObject1 = localCursor;
        localObject3 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        localObject3 = localCursor;
        localJSONObject.put(localCursor.getString(localCursor.getColumnIndexOrThrow("key")), localCursor.getString(localCursor.getColumnIndexOrThrow("value")));
      }
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      return localJSONObject;
    }
    finally
    {
      if (localJSONException != null) {
        localJSONException.close();
      }
    }
    return localJSONObject;
  }
  
  private void _handlePushRegistration(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("registration_id");
    if (_isPushDisabled())
    {
      Localytics.Log.v("GCM registered but push disabled: removing id");
      _setPushID(null);
      return;
    }
    if (paramIntent.getStringExtra("error") != null)
    {
      Localytics.Log.v("GCM registration failed");
      return;
    }
    if (paramIntent.getStringExtra("unregistered") != null)
    {
      Localytics.Log.v("GCM unregistered: removing id");
      _setPushID(null);
      return;
    }
    if (str != null)
    {
      Localytics.Log.v(String.format("GCM registered, new id: %s", new Object[] { str }));
      _setPushID(str);
    }
  }
  
  private boolean _isOptedOut()
  {
    Object localObject1 = null;
    try
    {
      localCursor = this.mProvider.query("info", new String[] { "opt_out" }, null, null, null);
      localObject1 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject1 = localCursor;
        int i = localCursor.getInt(localCursor.getColumnIndexOrThrow("opt_out"));
        boolean bool;
        if (i != 0) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
    }
    finally
    {
      Cursor localCursor;
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return false;
  }
  
  private boolean _isPushDisabled()
  {
    boolean bool2 = false;
    boolean bool1 = false;
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("info", new String[] { "push_disabled" }, null, null, null);
      for (;;)
      {
        bool2 = bool1;
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        bool2 = bool1;
        localObject1 = localCursor;
        int i = localCursor.getInt(localCursor.getColumnIndexOrThrow("push_disabled"));
        if (i == 1) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
      return bool1;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return bool2;
  }
  
  private boolean _isSessionOpen()
  {
    long l1 = 0L;
    long l2 = 0L;
    Object localObject1 = null;
    try
    {
      localCursor = this.mProvider.query("info", new String[] { "last_session_open_time", "last_session_close_time" }, null, null, null);
      localObject1 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject1 = localCursor;
        l1 = localCursor.getLong(localCursor.getColumnIndexOrThrow("last_session_open_time"));
        localObject1 = localCursor;
        l2 = localCursor.getLong(localCursor.getColumnIndexOrThrow("last_session_close_time"));
      }
    }
    finally
    {
      Cursor localCursor;
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return (l1 != 0L) && (l1 >= l2);
  }
  
  private void _open()
  {
    if (_isSessionOpen())
    {
      Localytics.Log.w("Session was already open");
      return;
    }
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("info", new String[] { "last_session_close_time" }, null, null, null);
      localObject1 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject1 = localCursor;
        long l = localCursor.getLong(localCursor.getColumnIndexOrThrow("last_session_close_time"));
        localObject1 = localCursor;
        if (System.currentTimeMillis() < Constants.SESSION_EXPIRATION + l)
        {
          localObject1 = localCursor;
          ((AnalyticsListener)this.listeners).localyticsSessionWillOpen(false, this.appWasUpgraded, true);
          localObject1 = localCursor;
          Localytics.Log.v("Opening old closed session and reconnecting");
          localObject1 = localCursor;
          _dequeQueuedCloseSessionTag(false);
          localObject1 = localCursor;
          ((AnalyticsListener)this.listeners).localyticsSessionDidOpen(false, this.appWasUpgraded, true);
        }
        else
        {
          localObject1 = localCursor;
          ((AnalyticsListener)this.listeners).localyticsSessionWillOpen(this.firstSessionEver, this.appWasUpgraded, false);
          localObject1 = localCursor;
          Localytics.Log.v("Opening new session");
          localObject1 = localCursor;
          _dequeQueuedCloseSessionTag(true);
          localObject1 = localCursor;
          Object localObject2 = DatapointHelper.getAdvertisingInfo();
          if (localObject2 == null)
          {
            localObject2 = null;
          }
          else
          {
            localObject1 = localCursor;
            localObject2 = ((DatapointHelper.AdvertisingInfo)localObject2).id;
          }
          localObject1 = localCursor;
          _setFirstAdvertisingId((String)localObject2);
          localObject1 = localCursor;
          _tagEvent("open");
          localObject1 = localCursor;
          BaseProvider.deleteOldFiles();
          localObject1 = localCursor;
          ((AnalyticsListener)this.listeners).localyticsSessionDidOpen(this.firstSessionEver, this.appWasUpgraded, false);
        }
      }
      return;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
  }
  
  private void _registerPush(String paramString)
  {
    if (_isPushDisabled())
    {
      Localytics.Log.v("Registering for GCM but push disabled");
      return;
    }
    Object localObject2 = null;
    String str2 = null;
    Object localObject1 = null;
    String str1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("info", new String[] { "sender_id", "registration_version", "registration_id" }, null, null, null);
      localObject2 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject2 = localCursor;
        str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("sender_id"));
        localObject2 = localCursor;
        str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("registration_version"));
        localObject2 = localCursor;
        localObject1 = localCursor.getString(localCursor.getColumnIndexOrThrow("registration_id"));
      }
      if (localCursor != null) {
        localCursor.close();
      }
    }
    finally
    {
      if (localObject2 != null) {
        ((Cursor)localObject2).close();
      }
    }
    if (!paramString.equals(str2))
    {
      localObject1 = null;
      _setPushID(paramString, null);
    }
    localObject2 = DatapointHelper.getAppVersion();
    if ((TextUtils.isEmpty((CharSequence)localObject1)) || (!((String)localObject2).equals(str1)))
    {
      localObject1 = Localytics.appContext;
      localObject1 = ReflectionUtils.tryInvokeStatic("com.google.android.gms.gcm.GoogleCloudMessaging", "getInstance", new Class[] { Context.class }, new Object[] { localObject1 });
      if (localObject1 != null)
      {
        PushReceiver.retrySenderId = paramString;
        ReflectionUtils.tryInvokeInstance(localObject1, "register", new Class[] { [Ljava.lang.String.class }, new Object[] { { paramString } });
      }
    }
  }
  
  private void _setCustomDimension(int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt > 9))
    {
      Localytics.Log.w("Only valid dimensions are 0 - 9");
      return;
    }
    String str = getCustomDimensionAttributeKey(paramInt);
    Object localObject = null;
    try
    {
      Cursor localCursor = this.mProvider.query("custom_dimensions", PROJECTION_SET_CUSTOM_DIMENSION, SELECTION_SET_CUSTOM_DIMENSION, new String[] { str }, null);
      localObject = localCursor;
      ContentValues localContentValues;
      if (localCursor.moveToFirst())
      {
        if (paramString == null)
        {
          localObject = localCursor;
          this.mProvider.remove("custom_dimensions", String.format("%s = ?", new Object[] { "custom_dimension_key" }), new String[] { str });
        }
        else
        {
          localObject = localCursor;
          localContentValues = new ContentValues();
          localObject = localCursor;
          localContentValues.put("custom_dimension_key", str);
          localObject = localCursor;
          localContentValues.put("custom_dimension_value", paramString);
          localObject = localCursor;
          this.mProvider.update("custom_dimensions", localContentValues, SELECTION_SET_CUSTOM_DIMENSION, new String[] { str });
        }
      }
      else if (paramString != null)
      {
        localObject = localCursor;
        localContentValues = new ContentValues();
        localObject = localCursor;
        localContentValues.put("custom_dimension_key", str);
        localObject = localCursor;
        localContentValues.put("custom_dimension_value", paramString);
        localObject = localCursor;
        this.mProvider.insert("custom_dimensions", localContentValues);
      }
      return;
    }
    finally
    {
      if (localObject != null) {
        localObject.close();
      }
    }
  }
  
  private void _setFirstAdvertisingId(String paramString)
  {
    String str = null;
    Object localObject = null;
    try
    {
      Cursor localCursor = this.mProvider.query("info", new String[] { "first_advertising_id" }, null, null, null);
      localObject = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject = localCursor;
        str = localCursor.getString(localCursor.getColumnIndexOrThrow("first_advertising_id"));
      }
      if (localCursor != null) {
        localCursor.close();
      }
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
    if (!TextUtils.isEmpty(str))
    {
      Localytics.Log.v("First advertising id has already been set before.");
      return;
    }
    localObject = new ContentValues();
    ((ContentValues)localObject).put("first_advertising_id", paramString);
    this.mProvider.update("info", (ContentValues)localObject, null, null);
  }
  
  private void _setIdentifier(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2 != null) {
      str = paramString2.trim();
    }
    paramString2 = null;
    label493:
    for (;;)
    {
      Object localObject;
      try
      {
        localObject = this.mProvider.query("identifiers", PROJECTION_SET_IDENTIFIER, SELECTION_SET_IDENTIFIER, new String[] { paramString1 }, null);
        paramString2 = (String)localObject;
        ContentValues localContentValues;
        if (((Cursor)localObject).moveToFirst())
        {
          paramString2 = (String)localObject;
          if (TextUtils.isEmpty(str))
          {
            paramString2 = (String)localObject;
            this.mProvider.remove("identifiers", String.format("%s = ?", new Object[] { "key" }), new String[] { ((Cursor)localObject).getString(((Cursor)localObject).getColumnIndexOrThrow("key")) });
          }
          else
          {
            paramString2 = (String)localObject;
            if (str.equals(((Cursor)localObject).getString(((Cursor)localObject).getColumnIndexOrThrow("value")))) {
              break label493;
            }
            paramString2 = (String)localObject;
            localContentValues = new ContentValues();
            paramString2 = (String)localObject;
            localContentValues.put("key", paramString1);
            paramString2 = (String)localObject;
            localContentValues.put("value", str);
            paramString2 = (String)localObject;
            this.mProvider.update("identifiers", localContentValues, SELECTION_SET_IDENTIFIER, new String[] { paramString1 });
            break label493;
          }
        }
        else
        {
          paramString2 = (String)localObject;
          if (!TextUtils.isEmpty(str))
          {
            paramString2 = (String)localObject;
            localContentValues = new ContentValues();
            paramString2 = (String)localObject;
            localContentValues.put("key", paramString1);
            paramString2 = (String)localObject;
            localContentValues.put("value", str);
            paramString2 = (String)localObject;
            this.mProvider.insert("identifiers", localContentValues);
          }
        }
        paramString2 = (String)localObject;
        if (localObject != null)
        {
          ((Cursor)localObject).close();
          paramString2 = null;
        }
      }
      finally
      {
        if (paramString2 != null) {
          paramString2.close();
        }
      }
      if (paramString1.equals("customer_id")) {
        try
        {
          paramString1 = this.mProvider.query("info", new String[] { "user_type" }, null, null, null);
          paramString2 = paramString1;
          if (paramString1.moveToFirst())
          {
            paramString2 = paramString1;
            if (!paramString1.getString(paramString1.getColumnIndexOrThrow("user_type")).equals("known"))
            {
              paramString2 = paramString1;
              if (TextUtils.isEmpty(str)) {}
            }
            else
            {
              paramString2 = paramString1;
              localObject = new ContentValues();
              paramString2 = paramString1;
              if (TextUtils.isEmpty(str))
              {
                paramString2 = paramString1;
                ((ContentValues)localObject).put("customer_id", Localytics.getInstallId());
                paramString2 = paramString1;
                ((ContentValues)localObject).put("user_type", "anonymous");
              }
              else
              {
                paramString2 = paramString1;
                ((ContentValues)localObject).put("customer_id", str);
                paramString2 = paramString1;
                ((ContentValues)localObject).put("user_type", "known");
              }
              paramString2 = paramString1;
              this.mProvider.update("info", (ContentValues)localObject, null, null);
            }
          }
          return;
        }
        finally
        {
          if (paramString2 != null) {
            paramString2.close();
          }
        }
      }
      return;
    }
  }
  
  private void _setOptedOut(boolean paramBoolean)
  {
    if (_isOptedOut() == paramBoolean) {
      return;
    }
    if (paramBoolean) {
      localObject = "opt_out";
    } else {
      localObject = "opt_in";
    }
    _tagEvent((String)localObject);
    if ((_isSessionOpen()) && (paramBoolean)) {
      _close();
    }
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("opt_out", Boolean.valueOf(paramBoolean));
    this.mProvider.update("info", (ContentValues)localObject, null, null);
  }
  
  private void _setPushDisabled(int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("push_disabled", Integer.valueOf(paramInt));
    this.mProvider.update("info", localContentValues, null, null);
  }
  
  private void _setPushID(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramString == null) {
      paramString = "";
    }
    localContentValues.put("registration_id", paramString);
    localContentValues.put("registration_version", DatapointHelper.getAppVersion());
    this.mProvider.update("info", localContentValues, null, null);
  }
  
  private void _setPushID(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sender_id", paramString1);
    if (paramString2 == null) {
      paramString2 = "";
    }
    localContentValues.put("registration_id", paramString2);
    this.mProvider.update("info", localContentValues, null, null);
  }
  
  private void _setReferrerId(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Object localObject = null;
      try
      {
        Cursor localCursor = this.mProvider.query("info", new String[] { "play_attribution" }, null, null, null);
        localObject = localCursor;
        if (localCursor.moveToFirst())
        {
          localObject = localCursor;
          if (TextUtils.isEmpty(localCursor.getString(localCursor.getColumnIndexOrThrow("play_attribution"))))
          {
            localObject = localCursor;
            ContentValues localContentValues = new ContentValues();
            localObject = localCursor;
            localContentValues.put("play_attribution", paramString);
            localObject = localCursor;
            this.mProvider.update("info", localContentValues, null, null);
          }
        }
        return;
      }
      finally
      {
        if (localObject != null) {
          localObject.close();
        }
      }
    }
  }
  
  private void _tagEvent(String paramString)
  {
    _tagEvent(paramString, null, null);
  }
  
  private void _tagEvent(String paramString, Map<String, String> paramMap, Long paramLong)
  {
    int i = 0;
    int j = 0;
    Object localObject1 = "";
    String str1 = "";
    String str2 = "";
    Object localObject2 = null;
    for (;;)
    {
      try
      {
        JSONObject localJSONObject1 = new JSONObject();
        long l1 = 0L;
        localJSONObject1.put("dt", "h");
        localJSONObject1.put("u", UUID.randomUUID().toString());
        Object localObject5 = (TelephonyManager)Localytics.appContext.getSystemService("phone");
        JSONObject localJSONObject2 = new JSONObject();
        try
        {
          localObject3 = this.mProvider.query("info", null, null, null, null);
          localObject2 = localObject3;
          if (((Cursor)localObject3).moveToFirst())
          {
            localObject2 = localObject3;
            localJSONObject1.put("pa", Math.round((float)(((Cursor)localObject3).getLong(((Cursor)localObject3).getColumnIndexOrThrow("created_time")) / 1000L)));
            localObject2 = localObject3;
            i = ((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndexOrThrow("next_header_number"));
            localObject2 = localObject3;
            j = ((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndexOrThrow("next_session_number"));
            localObject2 = localObject3;
            str1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("customer_id"));
            localObject2 = localObject3;
            str2 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("user_type"));
            localObject2 = localObject3;
            localObject4 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("current_session_uuid"));
            localObject2 = localObject3;
            localJSONObject1.put("seq", i);
            localObject2 = localObject3;
            localJSONObject2.put("dt", "a");
            localObject2 = localObject3;
            localJSONObject2.put("au", Localytics.apiKey);
            localObject2 = localObject3;
            localObject1 = DatapointHelper.getAndroidIdHashOrNull();
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("du", localObject1);
            }
            localObject2 = localObject3;
            localJSONObject2.put("lv", "androida_3.1.1");
            localObject2 = localObject3;
            localJSONObject2.put("av", DatapointHelper.getAppVersion());
            localObject2 = localObject3;
            localJSONObject2.put("dp", "Android");
            localObject2 = localObject3;
            localJSONObject2.put("dll", Locale.getDefault().getLanguage());
            localObject2 = localObject3;
            localJSONObject2.put("dlc", Locale.getDefault().getCountry());
            localObject2 = localObject3;
            localJSONObject2.put("nc", ((TelephonyManager)localObject5).getNetworkCountryIso());
            localObject2 = localObject3;
            localJSONObject2.put("dc", ((TelephonyManager)localObject5).getSimCountryIso());
            localObject2 = localObject3;
            localJSONObject2.put("dma", DatapointHelper.getManufacturer());
            localObject2 = localObject3;
            localJSONObject2.put("dmo", Build.MODEL);
            localObject2 = localObject3;
            localJSONObject2.put("dov", Build.VERSION.RELEASE);
            localObject2 = localObject3;
            localJSONObject2.put("nca", ((TelephonyManager)localObject5).getNetworkOperatorName());
            localObject2 = localObject3;
            localJSONObject2.put("dac", DatapointHelper.getNetworkType((TelephonyManager)localObject5));
            localObject2 = localObject3;
            localJSONObject2.put("iu", Localytics.getInstallId());
            localObject2 = localObject3;
            localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("fb_attribution"));
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("fbat", localObject1);
            }
            localObject2 = localObject3;
            localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("registration_id"));
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("push", localObject1);
            }
            localObject2 = localObject3;
            localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("first_android_id"));
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("aid", localObject1);
            }
            localObject2 = localObject3;
            localObject1 = DatapointHelper.getAndroidIdOrNull();
            if (localObject1 != null) {
              break label2068;
            }
            localObject2 = localObject3;
            localObject1 = JSONObject.NULL;
            localObject2 = localObject3;
            localJSONObject2.put("caid", localObject1);
            localObject2 = localObject3;
            localObject1 = DatapointHelper.getAdvertisingInfo();
            if (localObject1 == null) {
              break label2071;
            }
            localObject2 = localObject3;
            if (!((DatapointHelper.AdvertisingInfo)localObject1).limitAdTracking) {
              break label2071;
            }
            bool = true;
            localObject2 = localObject3;
            localJSONObject2.put("lad", bool);
            localObject2 = localObject3;
            localObject5 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("first_advertising_id"));
            if (localObject5 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("gadid", localObject5);
            }
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              if (((DatapointHelper.AdvertisingInfo)localObject1).id != null)
              {
                localObject2 = localObject3;
                localJSONObject2.put("gcadid", ((DatapointHelper.AdvertisingInfo)localObject1).id);
              }
            }
            localObject2 = localObject3;
            localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("package_name"));
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("pkg", localObject1);
            }
            localObject2 = localObject3;
            localObject1 = DatapointHelper.getSerialNumberHashOrNull();
            if (localObject1 != null) {
              break label2077;
            }
            localObject2 = localObject3;
            localObject1 = JSONObject.NULL;
            localObject2 = localObject3;
            localJSONObject2.put("dms", localObject1);
            localObject2 = localObject3;
            localJSONObject2.put("dsdk", Integer.valueOf(Constants.CURRENT_API_LEVEL));
            localObject2 = localObject3;
            localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("play_attribution"));
            if (localObject1 != null)
            {
              localObject2 = localObject3;
              localJSONObject2.put("aurl", localObject1);
            }
            localObject2 = localObject3;
            l1 = ((Cursor)localObject3).getLong(((Cursor)localObject3).getColumnIndexOrThrow("last_session_open_time"));
            localObject1 = localObject4;
          }
        }
        finally
        {
          if (localObject2 != null) {
            ((Cursor)localObject2).close();
          }
        }
        localJSONObject1.put("attrs", localJSONObject2);
        localJSONObject2 = _getIdentifiers();
        if (localJSONObject2.length() > 0) {
          localJSONObject1.put("ids", localJSONObject2);
        }
        localObject2 = new ContentValues();
        Object localObject3 = new ContentValues();
        ((ContentValues)localObject2).put("next_header_number", Integer.valueOf(i + 1));
        Object localObject4 = new JSONObject();
        long l2 = System.currentTimeMillis();
        localObject5 = UUID.randomUUID().toString();
        if ("open".equals(paramString))
        {
          ((JSONObject)localObject4).put("dt", "s");
          ((JSONObject)localObject4).put("ct", Math.round(l2 / 1000L));
          ((JSONObject)localObject4).put("u", localObject5);
          long l3 = l2 - l1;
          if (l1 == 0L) {
            ((JSONObject)localObject4).put("sl", 0.0D);
          } else if (l3 > 0L) {
            ((JSONObject)localObject4).put("sl", Math.round(l3 / 1000L));
          }
          ((JSONObject)localObject4).put("nth", j);
          _addLocationIDsAndCustomDimensions((JSONObject)localObject4, localJSONObject2, str1, str2);
          ((ContentValues)localObject3).put("blob", String.format("%s\n%s", new Object[] { localJSONObject1.toString(), ((JSONObject)localObject4).toString() }));
          ((ContentValues)localObject3).put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
          ((ContentValues)localObject2).put("last_session_open_time", Long.valueOf(l2));
          ((ContentValues)localObject2).put("next_session_number", Integer.valueOf(j + 1));
          ((ContentValues)localObject2).put("current_session_uuid", (String)localObject5);
        }
        else if ("close".equals(paramString))
        {
          ((JSONObject)localObject4).put("dt", "c");
          ((JSONObject)localObject4).put("u", localObject5);
          ((JSONObject)localObject4).put("su", localObject1);
          ((JSONObject)localObject4).put("ss", Math.round(l1 / 1000L));
          ((JSONObject)localObject4).put("ct", Math.round(l2 / 1000L));
          ((JSONObject)localObject4).put("ctl", Math.round((l2 - l1) / 1000L));
          localObject1 = new JSONArray(this.screenFlow);
          if (((JSONArray)localObject1).length() > 0) {
            ((JSONObject)localObject4).put("fl", localObject1);
          }
          _addLocationIDsAndCustomDimensions((JSONObject)localObject4, localJSONObject2, str1, str2);
          ((ContentValues)localObject2).put("last_session_close_time", Long.valueOf(l2));
          ((ContentValues)localObject2).put("queued_close_session_blob", String.format("%s\n%s", new Object[] { localJSONObject1.toString(), ((JSONObject)localObject4).toString() }));
          ((ContentValues)localObject2).put("queued_close_session_blob_upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
        }
        else if (("opt_in".equals(paramString)) || ("opt_out".equals(paramString)))
        {
          ((JSONObject)localObject4).put("dt", "o");
          ((JSONObject)localObject4).put("u", Localytics.apiKey);
          if ("opt_out".equals(paramString)) {
            localObject1 = Boolean.TRUE.toString();
          } else {
            localObject1 = Boolean.FALSE.toString();
          }
          ((JSONObject)localObject4).put("out", localObject1);
          ((JSONObject)localObject4).put("ct", Math.round(l2 / 1000L));
          ((ContentValues)localObject3).put("blob", String.format("%s\n%s", new Object[] { localJSONObject1.toString(), ((JSONObject)localObject4).toString() }));
          ((ContentValues)localObject3).put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
        }
        else
        {
          ((JSONObject)localObject4).put("dt", "e");
          ((JSONObject)localObject4).put("ct", Math.round(l2 / 1000L));
          ((JSONObject)localObject4).put("u", localObject5);
          if (!_isSessionOpen()) {
            break label2080;
          }
          ((JSONObject)localObject4).put("su", localObject1);
          if (paramString.startsWith(Localytics.appContext.getPackageName())) {
            ((JSONObject)localObject4).put("n", paramString.substring(Localytics.appContext.getPackageName().length() + 1, paramString.length()));
          } else {
            ((JSONObject)localObject4).put("n", paramString);
          }
          if (paramLong.longValue() != 0L) {
            ((JSONObject)localObject4).put("v", paramLong);
          }
          _addLocationIDsAndCustomDimensions((JSONObject)localObject4, localJSONObject2, str1, str2);
          if (paramMap != null) {
            ((JSONObject)localObject4).put("attrs", new JSONObject(paramMap));
          }
          ((ContentValues)localObject3).put("blob", String.format("%s\n%s", new Object[] { localJSONObject1.toString(), ((JSONObject)localObject4).toString() }));
          ((ContentValues)localObject3).put("upload_format", Integer.valueOf(AnalyticsProvider.EventsV3Columns.UploadFormat.V2.getValue()));
        }
        this.mProvider.update("info", (ContentValues)localObject2, null, null);
        if (((ContentValues)localObject3).size() > 0) {
          this.mProvider.insert("events", (ContentValues)localObject3);
        }
        if (!Arrays.asList(new String[] { "open", "close", "opt_in", "opt_out" }).contains(paramString))
        {
          localObject1 = (AnalyticsListener)this.listeners;
          if (paramLong == null) {
            l1 = 0L;
          } else {
            l1 = paramLong.longValue();
          }
          ((AnalyticsListener)localObject1).localyticsDidTagEvent(paramString, paramMap, l1);
        }
        return;
      }
      catch (Exception paramString)
      {
        return;
      }
      label2068:
      continue;
      label2071:
      boolean bool = false;
      continue;
      label2077:
      continue;
      label2080:
      localObject1 = "";
    }
  }
  
  private void _tagScreen(String paramString)
  {
    if (_isSessionOpen())
    {
      if ((this.screenFlow.size() == 0) || (!paramString.equals(this.screenFlow.get(this.screenFlow.size() - 1)))) {
        this.screenFlow.add(paramString);
      }
    }
    else {
      Localytics.Log.w("Screen not tagged because a session is not open");
    }
  }
  
  private String getCustomDimensionAttributeKey(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 10)) {
      return String.format("%s%s", new Object[] { "custom_dimension_", String.valueOf(paramInt) });
    }
    return (String)Localytics.throwOrLogError(IndexOutOfBoundsException.class, "Custom dimension index cannot exceed " + String.valueOf(10));
  }
  
  protected void _deleteUploadedData(int paramInt)
  {
    this.mProvider.remove("events", "_id <= " + paramInt, null);
  }
  
  protected TreeMap<Integer, Object> _getDataToUpload()
  {
    TreeMap localTreeMap = new TreeMap();
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("events", null, null, null, "_id ASC");
      for (;;)
      {
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        if (localTreeMap.size() >= 100) {
          break;
        }
        localObject1 = localCursor;
        localTreeMap.put(Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"))), localCursor.getString(localCursor.getColumnIndexOrThrow("blob")));
      }
      return localTreeMap;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return localTreeMap;
  }
  
  protected int _getMaxRowToUpload()
  {
    int i = 0;
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("events", new String[] { "_id" }, null, null, "_id ASC");
      localObject1 = localCursor;
      if (localCursor.moveToLast())
      {
        localObject1 = localCursor;
        i = localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"));
      }
      return i;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return 0;
  }
  
  protected void _init()
  {
    Cursor localCursor2 = null;
    Cursor localCursor1 = localCursor2;
    label658:
    label663:
    for (;;)
    {
      try
      {
        if (this.mProvider == null)
        {
          localCursor1 = localCursor2;
          this.mProvider = new AnalyticsProvider(this.siloName.toLowerCase());
        }
        localCursor1 = localCursor2;
        String str1 = DatapointHelper.getAppVersion();
        localCursor1 = localCursor2;
        localCursor2 = this.mProvider.query("info", new String[] { "app_version", "uuid", "next_session_number", "customer_id" }, null, null, null);
        localCursor1 = localCursor2;
        if (localCursor2.moveToFirst())
        {
          localCursor1 = localCursor2;
          Localytics.Log.v(String.format("Loading details for API key %s", new Object[] { Localytics.apiKey }));
          localCursor1 = localCursor2;
          localObject3 = new ContentValues();
          localCursor1 = localCursor2;
          if (!localCursor2.getString(localCursor2.getColumnIndexOrThrow("app_version")).equals(str1))
          {
            localCursor1 = localCursor2;
            ((ContentValues)localObject3).put("app_version", str1);
            localCursor1 = localCursor2;
            this.appWasUpgraded = true;
          }
          localCursor1 = localCursor2;
          if (((ContentValues)localObject3).size() != 0)
          {
            localCursor1 = localCursor2;
            this.mProvider.update("info", (ContentValues)localObject3, null, null);
          }
          localCursor1 = localCursor2;
          if (localCursor2.getInt(localCursor2.getColumnIndexOrThrow("next_session_number")) != 1) {
            break label658;
          }
          bool = true;
          localCursor1 = localCursor2;
          this.firstSessionEver = bool;
          localCursor1 = localCursor2;
          Localytics.installationID = localCursor2.getString(localCursor2.getColumnIndexOrThrow("uuid"));
          localCursor1 = localCursor2;
          str1 = localCursor2.getString(localCursor2.getColumnIndexOrThrow("customer_id"));
          localCursor1 = localCursor2;
          try
          {
            if (Localytics.getCustomerIdInMemory(true) == null) {
              Localytics.setCustomerIdInMemory(str1);
            }
            break label663;
          }
          finally
          {
            str2 = finally;
            localCursor1 = localCursor2;
            throw str2;
          }
        }
        localCursor1 = localCursor2;
        Localytics.Log.v(String.format("Performing first-time initialization for new API key %s", new Object[] { Localytics.apiKey }));
        localCursor1 = localCursor2;
        Object localObject3 = UUID.randomUUID().toString();
        localCursor1 = localCursor2;
        Localytics.installationID = (String)localObject3;
        localCursor1 = localCursor2;
        ContentValues localContentValues = new ContentValues();
        localCursor1 = localCursor2;
        localContentValues.put("api_key", Localytics.apiKey);
        localCursor1 = localCursor2;
        localContentValues.put("uuid", (String)localObject3);
        localCursor1 = localCursor2;
        localContentValues.put("created_time", Long.valueOf(System.currentTimeMillis()));
        localCursor1 = localCursor2;
        localContentValues.put("opt_out", Boolean.FALSE);
        localCursor1 = localCursor2;
        localContentValues.put("push_disabled", Boolean.FALSE);
        localCursor1 = localCursor2;
        localContentValues.put("customer_id", (String)localObject3);
        localCursor1 = localCursor2;
        localContentValues.put("user_type", "anonymous");
        localCursor1 = localCursor2;
        localContentValues.put("fb_attribution", DatapointHelper.getFBAttribution());
        localCursor1 = localCursor2;
        localContentValues.put("first_android_id", DatapointHelper.getAndroidIdOrNull());
        localCursor1 = localCursor2;
        localContentValues.put("package_name", Localytics.appContext.getPackageName());
        localCursor1 = localCursor2;
        localContentValues.put("app_version", str2);
        localCursor1 = localCursor2;
        localContentValues.put("next_session_number", Integer.valueOf(1));
        localCursor1 = localCursor2;
        localContentValues.put("next_header_number", Integer.valueOf(1));
        localCursor1 = localCursor2;
        localContentValues.put("last_session_open_time", Integer.valueOf(0));
        localCursor1 = localCursor2;
        localContentValues.put("last_session_close_time", Integer.valueOf(0));
        localCursor1 = localCursor2;
        this.mProvider.insert("info", localContentValues);
        localCursor1 = localCursor2;
        this.firstSessionEver = true;
        localCursor1 = localCursor2;
        try
        {
          if (Localytics.getCustomerIdInMemory(true) == null) {
            Localytics.setCustomerIdInMemory((String)localObject3);
          }
        }
        finally
        {
          localObject2 = finally;
          localCursor1 = localCursor2;
          throw localObject2;
        }
      }
      finally
      {
        if (localCursor1 != null) {
          localCursor1.close();
        }
        Localytics.initiatedLatch.countDown();
      }
      this.mProvider.vacuumIfNecessary();
      return;
      boolean bool = false;
    }
  }
  
  protected void _onUploadCompleted(String paramString)
  {
    this.mProvider.vacuumIfNecessary();
  }
  
  void closeSession()
  {
    queueMessage(obtainMessage(102));
  }
  
  String getCustomDimension(int paramInt)
  {
    return getString(new AnalyticsHandler.15(this, paramInt));
  }
  
  String getIdentifier(String paramString)
  {
    return getString(new AnalyticsHandler.17(this, paramString));
  }
  
  Map<String, String> getIdentifiers()
  {
    return getMap(new AnalyticsHandler.2(this));
  }
  
  String getPushRegistrationID()
  {
    return getString(new AnalyticsHandler.16(this));
  }
  
  protected BaseUploadThread getUploadThread(TreeMap<Integer, Object> paramTreeMap, String paramString)
  {
    return new AnalyticsUploadHandler(this, paramTreeMap, paramString);
  }
  
  protected void handleMessageExtended(Message paramMessage)
  {
    Object localObject1;
    int i;
    switch (paramMessage.what)
    {
    default: 
      break;
    case 101: 
      Localytics.Log.d("Analytics handler received MESSAGE_OPEN");
      this.mProvider.runBatchTransaction(new AnalyticsHandler.3(this));
      return;
    case 102: 
      Localytics.Log.d("Analytics handler received MESSAGE_CLOSE");
      this.mProvider.runBatchTransaction(new AnalyticsHandler.4(this));
      return;
    case 103: 
      Localytics.Log.d("Analytics handler received MESSAGE_TAG_EVENT");
      Object localObject2 = (Object[])paramMessage.obj;
      paramMessage = (String)localObject2[0];
      localObject1 = (Map)localObject2[1];
      localObject2 = (Long)localObject2[2];
      this.mProvider.runBatchTransaction(new AnalyticsHandler.5(this, paramMessage, (Map)localObject1, (Long)localObject2));
      return;
    case 104: 
      Localytics.Log.d("Analytics handler received MESSAGE_TAG_SCREEN");
      paramMessage = (String)paramMessage.obj;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.6(this, paramMessage));
      return;
    case 107: 
      Localytics.Log.d("Analytics handler received MESSAGE_SET_CUSTOM_DIMENSION");
      paramMessage = (Object[])paramMessage.obj;
      i = ((Integer)paramMessage[0]).intValue();
      paramMessage = (String)paramMessage[1];
      this.mProvider.runBatchTransaction(new AnalyticsHandler.7(this, i, paramMessage));
      return;
    case 105: 
      Localytics.Log.d("Analytics handler received MESSAGE_SET_IDENTIFIER");
      localObject1 = (Object[])paramMessage.obj;
      paramMessage = (String)localObject1[0];
      localObject1 = (String)localObject1[1];
      this.mProvider.runBatchTransaction(new AnalyticsHandler.8(this, paramMessage, (String)localObject1));
      return;
    case 106: 
      Localytics.Log.d("Analytics handler received MESSAGE_SET_LOCATION");
      sLastLocation = (Location)paramMessage.obj;
      return;
    case 113: 
      Localytics.Log.d("Analytics handler received MESSAGE_SET_PUSH_REGID");
      paramMessage = (String)paramMessage.obj;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.9(this, paramMessage));
      return;
    case 112: 
      Localytics.Log.d("Analytics handler received MESSAGE_DISABLE_PUSH");
      i = paramMessage.arg1;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.10(this, i));
      return;
    case 108: 
      Localytics.Log.v("Analytics handler received MESSAGE_OPT_OUT");
      boolean bool;
      if (paramMessage.arg1 != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.mProvider.runBatchTransaction(new AnalyticsHandler.11(this, bool));
      return;
    case 109: 
      Localytics.Log.d("Analytics handler received MESSAGE_REGISTER_PUSH");
      paramMessage = (String)paramMessage.obj;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.12(this, paramMessage));
      return;
    case 110: 
      Localytics.Log.d("Analytics handler received MESSAGE_HANDLE_PUSH_REGISTRATION");
      paramMessage = (Intent)paramMessage.obj;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.13(this, paramMessage));
      return;
    case 114: 
      Localytics.Log.d("Analytics handler received MESSAGE_SET_REFERRERID");
      paramMessage = (String)paramMessage.obj;
      this.mProvider.runBatchTransaction(new AnalyticsHandler.14(this, paramMessage));
      return;
    }
    super.handleMessageExtended(paramMessage);
  }
  
  void handleRegistration(Intent paramIntent)
  {
    queueMessage(obtainMessage(110, paramIntent));
  }
  
  boolean isOptedOut()
  {
    return getBool(new AnalyticsHandler.18(this));
  }
  
  boolean isPushDisabled()
  {
    return getBool(new AnalyticsHandler.1(this));
  }
  
  void openSession()
  {
    queueMessage(obtainMessage(101));
  }
  
  void registerPush(String paramString, long paramLong)
  {
    queueMessageDelayed(obtainMessage(109, paramString), paramLong);
  }
  
  void setCustomDimension(int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt > 9)) {
      throw new IllegalArgumentException("Only valid dimensions are 0 - 9");
    }
    queueMessage(obtainMessage(107, new Object[] { Integer.valueOf(paramInt), paramString }));
  }
  
  void setIdentifier(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("key cannot be null or empty");
    }
    queueMessage(obtainMessage(105, new Object[] { paramString1, paramString2 }));
  }
  
  void setLocation(Location paramLocation)
  {
    queueMessage(obtainMessage(106, new Location(paramLocation)));
  }
  
  void setOptedOut(boolean paramBoolean)
  {
    Localytics.Log.v(String.format("Requested opt-out state is %b", new Object[] { Boolean.valueOf(paramBoolean) }));
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    queueMessage(obtainMessage(108, i, 0));
  }
  
  void setPushDisabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    queueMessage(obtainMessage(112, i, 0));
  }
  
  void setPushRegistrationId(String paramString)
  {
    queueMessage(obtainMessage(113, paramString));
  }
  
  void setReferrerId(String paramString)
  {
    queueMessage(obtainMessage(114, paramString));
  }
  
  void setScreenFlow(List<String> paramList)
  {
    this.screenFlow.addAll(0, paramList);
  }
  
  void tagEvent(String paramString, Map<String, String> paramMap, long paramLong)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("event cannot be null or empty");
    }
    if (paramMap != null)
    {
      if (paramMap.isEmpty()) {
        Localytics.throwOrLogError(IllegalArgumentException.class, "attributes is empty.  Did the caller make an error?");
      }
      if (paramMap.size() > 50) {
        Localytics.throwOrLogError(IllegalArgumentException.class, String.format("attributes size is %d, exceeding the maximum size of %d.  Did the caller make an error?", new Object[] { Integer.valueOf(paramMap.size()), Integer.valueOf(50) }));
      }
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = (String)((Map.Entry)localObject).getValue();
        if (TextUtils.isEmpty(str)) {
          Localytics.throwOrLogError(IllegalArgumentException.class, "attributes cannot contain null or empty keys");
        }
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          Localytics.throwOrLogError(IllegalArgumentException.class, "attributes cannot contain null or empty values");
        }
      }
    }
    queueMessage(obtainMessage(103, new Object[] { paramString, paramMap, Long.valueOf(paramLong) }));
  }
  
  void tagScreen(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("event cannot be null or empty");
    }
    queueMessage(obtainMessage(104, paramString));
  }
  
  final class AnalyticsListenersSet
    extends BaseHandler.ListenersSet
    implements AnalyticsListener
  {
    private AnalyticsListenersSet()
    {
      super();
    }
    
    public void localyticsDidTagEvent(String paramString, Map<String, String> paramMap, long paramLong)
    {
      try
      {
        callListeners("localyticsDidTagEvent", new Class[] { String.class, Map.class, Long.TYPE }, new Object[] { paramString, paramMap, Long.valueOf(paramLong) });
        return;
      }
      finally
      {
        paramString = finally;
        throw paramString;
      }
    }
    
    public void localyticsSessionDidOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      try
      {
        callListeners("localyticsSessionDidOpen", new Class[] { Boolean.TYPE, Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(paramBoolean1), Boolean.valueOf(paramBoolean2), Boolean.valueOf(paramBoolean3) });
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void localyticsSessionWillClose()
    {
      try
      {
        callListeners("localyticsSessionWillClose", null, null);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void localyticsSessionWillOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      try
      {
        callListeners("localyticsSessionWillOpen", new Class[] { Boolean.TYPE, Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(paramBoolean1), Boolean.valueOf(paramBoolean2), Boolean.valueOf(paramBoolean3) });
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.AnalyticsHandler
 * JD-Core Version:    0.7.0.1
 */