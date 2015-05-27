package com.localytics.android;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import o.ˈ;
import o.ⁱ.ˋ;
import o.ⁱ.ˎ;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class MarketingHandler
  extends BaseHandler
  implements AnalyticsListener
{
  private static final String AB_ATTRIBUTE = "ab";
  private static final String ACTION_ATTRIBUTE = "Action";
  private static final String APP_CONTEXT_ATTRIBUTE = "App Context";
  private static final String CAMPAIGN_ID_ATTRIBUTE = "Campaign ID";
  private static final String CREATIVE_DISPLAYED_ATTRIBUTE = "Creative Displayed";
  private static final String CREATIVE_ID_ATTRIBUTE = "Creative ID";
  private static final String CREATIVE_TYPE_ATTRIBUTE = "Creative Type";
  private static final List JS_STRINGS_THAT_MEAN_NULL = Arrays.asList(new String[] { "undefined", "null", "nil", "\"\"", "''" });
  private static final String MARKETING_RULEEVENTS_SORT_ORDER;
  private static final String MARKETING_RULES_SORT_ORDER;
  private static final int MESSAGE_DELETE_MARKETING_MESSAGE_RESOURCES = 202;
  private static final int MESSAGE_HANDLE_PUSH_RECEIVED = 204;
  private static final int MESSAGE_MARKETING_MESSAGE_TRIGGER = 201;
  private static final int MESSAGE_SHOW_MARKETING_TEST = 203;
  private static final String[] PROJECTION_MARKETING_RULE_RECORD;
  private static final String PUSH_API_URL_TEMPLATE = "http://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s";
  private static final String PUSH_NOTIFICATIONS_ENABLED_ATTRIBUTE = "Push Notifications Enabled";
  private static final String PUSH_OPENED_EVENT = "Localytics Push Opened";
  private static final String PUSH_RECEIVED_EVENT = "Localytics Push Received";
  private static final String SELECTION_DISPLAYED_MARKETING_MESSAGE;
  private static final String SELECTION_MARKETING_RULEEVENTS;
  private static final String SELECTION_MARKETING_RULES = String.format("%s > ?", new Object[] { "expiration" });
  private static final String SELECTION_UPDATE_MARKETING_RULE;
  private boolean isMidDisplayingInApp = false;
  private int lastMarketingMessagesHash = -1;
  private ˈ mFragmentManager;
  private boolean sessionStartMarketingMessageShown = true;
  private MarketingRulesAdapter testCampaignsListAdapter = null;
  
  static
  {
    SELECTION_MARKETING_RULEEVENTS = String.format("%s = ?", new Object[] { "event_name" });
    MARKETING_RULES_SORT_ORDER = String.format("CAST(%s AS TEXT)", new Object[] { "_id" });
    MARKETING_RULEEVENTS_SORT_ORDER = String.format("CAST(%s as TEXT)", new Object[] { "rule_id_ref" });
    PROJECTION_MARKETING_RULE_RECORD = new String[] { "_id", "version" };
    SELECTION_UPDATE_MARKETING_RULE = String.format("%s = ?", new Object[] { "_id" });
    SELECTION_DISPLAYED_MARKETING_MESSAGE = String.format("%s = ?", new Object[] { "campaign_id" });
  }
  
  MarketingHandler(Looper paramLooper)
  {
    super(paramLooper);
    this.siloName = "In-app";
    this.listeners = new MessagingListenersSet(null);
    this.doesRetry = false;
    _createLocalyticsDirectory(Localytics.appContext);
    queueMessage(obtainMessage(1));
    Localytics.addAnalyticsListener(this);
  }
  
  private void __showMarketingTest()
  {
    if (this.mFragmentManager == null) {
      return;
    }
    if ((this.mFragmentManager.findFragmentByTag("marketing_test_mode_button") != null) || (this.mFragmentManager.findFragmentByTag("marketing_test_mode_list") != null)) {
      return;
    }
    TestModeButton localTestModeButton = TestModeButton.newInstance();
    TestModeListView localTestModeListView = TestModeListView.newInstance();
    MarketingRulesAdapter localMarketingRulesAdapter = new MarketingRulesAdapter(Localytics.appContext, this);
    localTestModeListView.setAdapter(localMarketingRulesAdapter);
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(Integer.valueOf(9), new MarketingHandler.10(this, localMarketingRulesAdapter, localTestModeListView));
    localTestModeButton.setCallbacks(localTreeMap);
    localTestModeButton.show(this.mFragmentManager, "marketing_test_mode_button");
    this.mFragmentManager.executePendingTransactions();
    localTreeMap = new TreeMap();
    localTreeMap.put(Integer.valueOf(10), new MarketingHandler.11(this, localTestModeButton));
    localTreeMap.put(Integer.valueOf(12), new MarketingHandler.12(this, localMarketingRulesAdapter));
    localTreeMap.put(Integer.valueOf(13), new MarketingHandler.13(this));
    localTreeMap.put(Integer.valueOf(14), new MarketingHandler.14(this));
    localTreeMap.put(Integer.valueOf(11), new MarketingHandler.15(this));
    localTestModeListView.setCallbacks(localTreeMap);
  }
  
  private void _bindRuleToEvents(long paramLong, List<String> paramList)
  {
    this.mProvider.remove("marketing_ruleevent", String.format("%s = ?", new Object[] { "rule_id_ref" }), new String[] { Long.toString(paramLong) });
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("event_name", str);
      localContentValues.put("rule_id_ref", Long.valueOf(paramLong));
      this.mProvider.insert("marketing_ruleevent", localContentValues);
    }
  }
  
  private boolean _createLocalyticsDirectory(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append(".localytics");
    paramContext = new File(localStringBuilder.toString());
    return (paramContext.mkdirs()) || (paramContext.isDirectory());
  }
  
  private boolean _decompressZipFile(String paramString1, String paramString2, String paramString3)
  {
    Object localObject1 = null;
    String str1 = null;
    for (;;)
    {
      try
      {
        paramString1 = new ZipInputStream(new FileInputStream(paramString1 + File.separator + paramString3));
        str1 = paramString1;
        localObject1 = paramString1;
        paramString3 = new byte[8192];
        str1 = paramString1;
        localObject1 = paramString1;
        Object localObject2 = paramString1.getNextEntry();
        if (localObject2 != null)
        {
          str1 = paramString1;
          localObject1 = paramString1;
          String str2 = paramString2 + File.separator + ((ZipEntry)localObject2).getName();
          str1 = paramString1;
          localObject1 = paramString1;
          if (((ZipEntry)localObject2).isDirectory())
          {
            str1 = paramString1;
            localObject1 = paramString1;
            if (!new File(str2).mkdir())
            {
              str1 = paramString1;
              localObject1 = paramString1;
              Localytics.Log.w(String.format("Could not create directory %s", new Object[] { str2 }));
            }
          }
          else
          {
            str1 = paramString1;
            localObject1 = paramString1;
            localObject2 = new FileOutputStream(str2);
            str1 = paramString1;
            localObject1 = paramString1;
            int i = paramString1.read(paramString3, 0, paramString3.length);
            if (i > 0)
            {
              str1 = paramString1;
              localObject1 = paramString1;
              ((FileOutputStream)localObject2).write(paramString3, 0, i);
            }
            else
            {
              str1 = paramString1;
              localObject1 = paramString1;
              ((FileOutputStream)localObject2).close();
              str1 = paramString1;
              localObject1 = paramString1;
              paramString1.closeEntry();
            }
          }
        }
        else
        {
          if (paramString1 != null) {}
          try
          {
            paramString1.close();
          }
          catch (IOException paramString1)
          {
            Localytics.Log.w("Caught IOException", paramString1);
            return false;
          }
          return true;
        }
      }
      catch (IOException paramString1)
      {
        localObject1 = str1;
        Localytics.Log.w("Caught IOException", paramString1);
        if (str1 != null) {}
        try
        {
          str1.close();
          return false;
        }
        catch (IOException paramString1)
        {
          Localytics.Log.w("Caught IOException", paramString1);
          return false;
        }
      }
      finally
      {
        if (localObject1 != null) {}
        try
        {
          ((ZipInputStream)localObject1).close();
        }
        catch (IOException paramString1)
        {
          Localytics.Log.w("Caught IOException", paramString1);
          return false;
        }
      }
    }
  }
  
  private void _destroyLocalMarketingMessage(MarketingMessage paramMarketingMessage)
  {
    try
    {
      int j = _getRuleIdFromCampaignId(((Integer)paramMarketingMessage.get("campaign_id")).intValue());
      Object localObject = _getConditionIdFromRuleId(j);
      int k = localObject.length;
      int i = 0;
      while (i < k)
      {
        long l = localObject[i];
        this.mProvider.remove("marketing_condition_values", String.format("%s = ?", new Object[] { "condition_id_ref" }), new String[] { Long.toString(l) });
        i += 1;
      }
      this.mProvider.remove("marketing_conditions", String.format("%s = ?", new Object[] { "rule_id_ref" }), new String[] { Integer.toString(j) });
      this.mProvider.remove("marketing_ruleevent", String.format("%s = ?", new Object[] { "rule_id_ref" }), new String[] { Integer.toString(j) });
      this.mProvider.remove("marketing_rules", String.format("%s = ?", new Object[] { "_id" }), new String[] { Integer.toString(j) });
      paramMarketingMessage = (String)paramMarketingMessage.get("base_path");
      if (paramMarketingMessage != null)
      {
        localObject = new File(paramMarketingMessage);
        if (((File)localObject).isDirectory())
        {
          String[] arrayOfString = ((File)localObject).list();
          j = arrayOfString.length;
          i = 0;
          while (i < j)
          {
            new File((File)localObject, arrayOfString[i]).delete();
            i += 1;
          }
        }
        if (!((File)localObject).delete()) {
          Localytics.Log.w(String.format("Delete %s failed.", new Object[] { paramMarketingMessage }));
        }
        if (!new File(paramMarketingMessage + ".zip").delete()) {
          Localytics.Log.w(String.format("Delete %s failed.", new Object[] { paramMarketingMessage + ".zip" }));
        }
      }
      return;
    }
    catch (Exception paramMarketingMessage)
    {
      Localytics.throwOrLogError(RuntimeException.class, "Localytics library threw an uncaught exception", paramMarketingMessage);
    }
  }
  
  private boolean _doesCreativeExist(int paramInt, boolean paramBoolean)
  {
    File localFile;
    if (paramBoolean) {
      localFile = new File(_getZipFileDirPath() + File.separator + String.format("amp_rule_%d.zip", new Object[] { Integer.valueOf(paramInt) }));
    } else {
      localFile = new File(_getUnzipFileDirPath(paramInt) + File.separator + "index.html");
    }
    return localFile.exists();
  }
  
  private long[] _getConditionIdFromRuleId(long paramLong)
  {
    Cursor localCursor2 = null;
    Cursor localCursor1 = localCursor2;
    Object localObject2;
    try
    {
      localObject2 = this.mProvider;
      localCursor1 = localCursor2;
      String str1 = String.format("%s = ?", new Object[] { "rule_id_ref" });
      localCursor1 = localCursor2;
      String str2 = Long.toString(paramLong);
      localCursor1 = localCursor2;
      localCursor2 = ((BaseProvider)localObject2).query("marketing_conditions", new String[] { "_id" }, str1, new String[] { str2 }, null);
      localCursor1 = localCursor2;
      localObject2 = new long[localCursor2.getCount()];
      int j;
      for (int i = 0;; i = j)
      {
        localCursor1 = localCursor2;
        if (!localCursor2.moveToNext()) {
          break;
        }
        j = i + 1;
        localCursor1 = localCursor2;
        localObject2[i] = localCursor2.getInt(localCursor2.getColumnIndexOrThrow("_id"));
      }
      return localObject2;
    }
    finally
    {
      if (localCursor1 != null) {
        localCursor1.close();
      }
    }
    return localObject2;
  }
  
  private Map<Integer, MarketingCallable> _getJavaScriptClientCallbacks(Map<String, String> paramMap)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(Integer.valueOf(3), new MarketingHandler.20(this));
    localTreeMap.put(Integer.valueOf(5), new MarketingHandler.21(this, Localytics.getIdentifiers()));
    JSONObject localJSONObject = new JSONObject();
    int i = 0;
    while (i < 10)
    {
      try
      {
        localJSONObject.put("c" + i, Localytics.getCustomDimension(i));
      }
      catch (JSONException localJSONException)
      {
        Localytics.Log.w("[JavaScriptClient]: Failed to get custom dimension");
      }
      i += 1;
    }
    localTreeMap.put(Integer.valueOf(6), new MarketingHandler.22(this, localJSONObject));
    localTreeMap.put(Integer.valueOf(7), new MarketingHandler.23(this, paramMap));
    localTreeMap.put(Integer.valueOf(8), new MarketingHandler.24(this));
    return localTreeMap;
  }
  
  private Vector<String> _getMarketingConditionValues(int paramInt)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = localObject3;
    try
    {
      Object localObject4 = this.mProvider;
      localObject1 = localObject3;
      String str1 = String.format("%s = ?", new Object[] { "condition_id_ref" });
      localObject1 = localObject3;
      String str2 = Integer.toString(paramInt);
      localObject1 = localObject3;
      localObject4 = ((BaseProvider)localObject4).query("marketing_condition_values", new String[] { "value" }, str1, new String[] { str2 }, null);
      for (;;)
      {
        localObject1 = localObject4;
        if (!((Cursor)localObject4).moveToNext()) {
          break;
        }
        localObject1 = localObject4;
        str1 = ((Cursor)localObject4).getString(((Cursor)localObject4).getColumnIndexOrThrow("value"));
        localObject3 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = localObject4;
          localObject3 = new Vector();
        }
        localObject1 = localObject4;
        ((Vector)localObject3).add(str1);
        localObject2 = localObject3;
      }
      if (localObject4 != null)
      {
        ((Cursor)localObject4).close();
        return localObject2;
      }
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return localVector;
  }
  
  private Vector<MarketingCondition> _getMarketingConditions(int paramInt)
  {
    Object localObject4 = null;
    Object localObject1 = null;
    try
    {
      Cursor localCursor = this.mProvider.query("marketing_conditions", null, String.format("%s = ?", new Object[] { "rule_id_ref" }), new String[] { Integer.toString(paramInt) }, null);
      for (;;)
      {
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        paramInt = localCursor.getInt(localCursor.getColumnIndexOrThrow("_id"));
        localObject1 = localCursor;
        String str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("attribute_name"));
        localObject1 = localCursor;
        String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("operator"));
        localObject1 = localCursor;
        Vector localVector = _getMarketingConditionValues(paramInt);
        Object localObject2 = localObject4;
        if (localObject4 == null)
        {
          localObject1 = localCursor;
          localObject2 = new Vector();
        }
        localObject1 = localCursor;
        localObject4 = new MarketingCondition(str1, str2, localVector);
        localObject1 = localCursor;
        ((MarketingCondition)localObject4).setPackageName(Localytics.appContext.getPackageName());
        localObject1 = localCursor;
        ((Vector)localObject2).add(localObject4);
        localObject4 = localObject2;
      }
      return localObject4;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
    return localObject4;
  }
  
  private Vector<MarketingMessage> _getMarketingMessageMaps(String paramString)
  {
    Vector localVector = new Vector();
    Cursor localCursor2 = null;
    MarketingMessage localMarketingMessage = null;
    Cursor localCursor1 = localCursor2;
    Object localObject1 = localMarketingMessage;
    for (;;)
    {
      int j;
      try
      {
        Object localObject2 = Long.toString(System.currentTimeMillis() / 1000L);
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        Object localObject3 = this.mProvider;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        String str1 = SELECTION_MARKETING_RULES;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        String str2 = MARKETING_RULES_SORT_ORDER;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        localCursor2 = ((BaseProvider)localObject3).query("marketing_rules", null, str1, new String[] { localObject2 }, str2);
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        localObject2 = this.mProvider;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        localObject3 = SELECTION_MARKETING_RULEEVENTS;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        str1 = MARKETING_RULEEVENTS_SORT_ORDER;
        localCursor1 = localCursor2;
        localObject1 = localMarketingMessage;
        paramString = ((BaseProvider)localObject2).query("marketing_ruleevent", null, (String)localObject3, new String[] { paramString }, str1);
        int i = 0;
        localCursor1 = localCursor2;
        localObject1 = paramString;
        if (i < paramString.getCount())
        {
          localCursor1 = localCursor2;
          localObject1 = paramString;
          paramString.moveToPosition(i);
          localCursor1 = localCursor2;
          localObject1 = paramString;
          int k = paramString.getInt(paramString.getColumnIndexOrThrow("rule_id_ref"));
          j = 0;
          localCursor1 = localCursor2;
          localObject1 = paramString;
          if (j < localCursor2.getCount())
          {
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localCursor2.moveToPosition(j);
            localCursor1 = localCursor2;
            localObject1 = paramString;
            if (localCursor2.getInt(localCursor2.getColumnIndexOrThrow("_id")) != k) {
              break label1028;
            }
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage = new MarketingMessage();
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("_id", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("_id"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("campaign_id", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("campaign_id"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("expiration", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("expiration"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("display_seconds", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("display_seconds"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("display_session", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("display_session"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("version", localCursor2.getString(localCursor2.getColumnIndexOrThrow("version")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("phone_location", localCursor2.getString(localCursor2.getColumnIndexOrThrow("phone_location")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("phone_size_width", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("phone_size_width"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("phone_size_height", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("phone_size_height"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("tablet_location", localCursor2.getString(localCursor2.getColumnIndexOrThrow("tablet_location")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("tablet_size_width", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("tablet_size_width"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("tablet_size_height", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("tablet_size_height"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("time_to_display", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("time_to_display"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("internet_required", Integer.valueOf(localCursor2.getInt(localCursor2.getColumnIndexOrThrow("internet_required"))));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("ab_test", localCursor2.getString(localCursor2.getColumnIndexOrThrow("ab_test")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("rule_name", localCursor2.getString(localCursor2.getColumnIndexOrThrow("rule_name")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("location", localCursor2.getString(localCursor2.getColumnIndexOrThrow("location")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localMarketingMessage.put("devices", localCursor2.getString(localCursor2.getColumnIndexOrThrow("devices")));
            localCursor1 = localCursor2;
            localObject1 = paramString;
            localVector.add(localMarketingMessage);
            break label1028;
          }
          localCursor1 = localCursor2;
          localObject1 = paramString;
          localCursor2.moveToFirst();
          i += 1;
          continue;
        }
        if (localCursor2 != null) {
          localCursor2.close();
        }
        if (paramString != null)
        {
          paramString.close();
          return localVector;
        }
      }
      finally
      {
        if (localCursor1 != null) {
          localCursor1.close();
        }
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
      return localVector;
      label1028:
      j += 1;
    }
  }
  
  private String _getRemoteFileURL(MarketingMessage paramMarketingMessage)
  {
    String str = (String)paramMarketingMessage.get("devices");
    if (str.compareTo("tablet") == 0) {
      return (String)paramMarketingMessage.get("tablet_location");
    }
    if (str.compareTo("both") == 0) {
      return (String)paramMarketingMessage.get("phone_location");
    }
    return (String)paramMarketingMessage.get("phone_location");
  }
  
  private int _getRuleIdFromCampaignId(int paramInt)
  {
    int i = 0;
    Cursor localCursor2 = null;
    Cursor localCursor1 = localCursor2;
    try
    {
      BaseProvider localBaseProvider = this.mProvider;
      localCursor1 = localCursor2;
      String str1 = String.format("%s = ?", new Object[] { "campaign_id" });
      localCursor1 = localCursor2;
      String str2 = Integer.toString(paramInt);
      localCursor1 = localCursor2;
      localCursor2 = localBaseProvider.query("marketing_rules", new String[] { "_id" }, str1, new String[] { str2 }, null);
      paramInt = i;
      localCursor1 = localCursor2;
      if (localCursor2.moveToFirst())
      {
        localCursor1 = localCursor2;
        paramInt = localCursor2.getInt(localCursor2.getColumnIndexOrThrow("_id"));
      }
      return paramInt;
    }
    finally
    {
      if (localCursor1 != null) {
        localCursor1.close();
      }
    }
    return paramInt;
  }
  
  private String _getUnzipFileDirPath(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(Localytics.appContext.getFilesDir().getAbsolutePath());
    ((StringBuilder)localObject).append(File.separator);
    ((StringBuilder)localObject).append(".localytics");
    ((StringBuilder)localObject).append(File.separator);
    ((StringBuilder)localObject).append(Localytics.apiKey);
    ((StringBuilder)localObject).append(File.separator);
    ((StringBuilder)localObject).append(String.format("marketing_rule_%d", new Object[] { Integer.valueOf(paramInt) }));
    localObject = ((StringBuilder)localObject).toString();
    File localFile = new File((String)localObject);
    if (((!localFile.exists()) || (!localFile.isDirectory())) && (!localFile.mkdirs()))
    {
      Localytics.Log.w(String.format("Could not create the directory %s for saving the decompressed file.", new Object[] { localFile.getAbsolutePath() }));
      return null;
    }
    return localObject;
  }
  
  private String _getZipFileDirPath()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Localytics.appContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append(".localytics");
    localStringBuilder.append(File.separator);
    localStringBuilder.append(Localytics.apiKey);
    return localStringBuilder.toString();
  }
  
  private void _handlePushReceived(Intent paramIntent)
  {
    Object localObject1 = paramIntent.getExtras().getString("ll");
    if (localObject1 == null)
    {
      Localytics.Log.w("Ignoring message that aren't from Localytics.");
      return;
    }
    JSONObject localJSONObject;
    int k;
    try
    {
      localJSONObject = new JSONObject((String)localObject1);
      k = localJSONObject.getInt("ca");
    }
    catch (JSONException paramIntent)
    {
      Localytics.Log.w("Failed to get campaign id from payload, ignoring message");
      return;
    }
    String str1 = paramIntent.getExtras().getString("message");
    boolean bool = Localytics.isPushDisabled();
    int i;
    if (!TextUtils.isEmpty(str1)) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((!bool) && (i != 0)) {
      j = 1;
    } else {
      j = 0;
    }
    Object localObject3;
    try
    {
      str3 = localJSONObject.getString("cr");
      str2 = localJSONObject.optString("v", "1");
      localObject3 = localJSONObject.optString("t", null);
      localObject1 = localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        if (i == 0) {
          break label525;
        }
        localObject1 = "Alert";
      }
      localObject3 = "Not Available";
      if (!Localytics.isAutoIntegrate()) {
        break label538;
      }
      if (!Localytics.isAppInForeground()) {
        break label533;
      }
      localObject3 = "Foreground";
    }
    catch (JSONException localJSONException)
    {
      String str3;
      String str2;
      label189:
      HashMap localHashMap;
      Localytics.Log.w("Failed to get campaign id or creative id from payload");
    }
    localHashMap = new HashMap();
    localHashMap.put("Campaign ID", String.valueOf(k));
    localHashMap.put("Creative ID", str3);
    localHashMap.put("Creative Type", localObject1);
    Object localObject5;
    localHashMap.put("Creative Displayed", localObject5);
    if (bool) {
      localObject1 = "No";
    }
    for (;;)
    {
      localHashMap.put("Push Notifications Enabled", localObject1);
      localHashMap.put("App Context", localObject3);
      localHashMap.put("Schema Version - Client", String.valueOf(2));
      localHashMap.put("Schema Version - Server", str2);
      if (localJSONObject.optInt("x", 0) == 0)
      {
        Localytics.tagEvent("Localytics Push Received", localHashMap);
        Localytics.upload();
      }
      if (j == 0)
      {
        if (bool) {
          Localytics.Log.w("Got push notification while push is disabled.");
        }
        if (i == 0) {
          Localytics.Log.w("Got push notification without a message.");
        }
        return;
      }
      Object localObject2 = "";
      i = DatapointHelper.getLocalyticsNotificationIcon();
      try
      {
        localObject3 = Localytics.appContext.getPackageManager().getApplicationInfo(Localytics.appContext.getPackageName(), 0);
        localObject3 = Localytics.appContext.getPackageManager().getApplicationLabel((ApplicationInfo)localObject3);
        localObject2 = localObject3;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Localytics.Log.w("Failed to get application name, icon, or launch intent");
      }
      Object localObject4 = new Intent(Localytics.appContext, PushTrackingActivity.class);
      ((Intent)localObject4).putExtras(paramIntent);
      paramIntent = PendingIntent.getActivity(Localytics.appContext, 0, (Intent)localObject4, 134217728);
      paramIntent = new ⁱ.ˎ(Localytics.appContext).ͺ(i).ˋ((CharSequence)localObject2).ˎ(str1).ˊ(paramIntent).ι(-1).ˊ(new ⁱ.ˋ().ˊ(str1)).ˋ(true);
      ((NotificationManager)Localytics.appContext.getSystemService("notification")).notify(k, paramIntent.build());
      return;
      label525:
      localObject2 = "Silent";
      break;
      label533:
      localObject4 = "Background";
      label538:
      if (i != 0)
      {
        if (bool) {
          localObject5 = "No";
        } else {
          localObject5 = "Yes";
        }
        break label189;
      }
      localObject5 = "Not Applicable";
      break label189;
      localObject2 = "Yes";
    }
  }
  
  private boolean _hasAMPMessageBeenDisplayed(int paramInt)
  {
    boolean bool2 = false;
    Object localObject3 = null;
    Cursor localCursor2 = null;
    Cursor localCursor1 = localCursor2;
    Object localObject1 = localObject3;
    try
    {
      BaseProvider localBaseProvider = this.mProvider;
      localCursor1 = localCursor2;
      localObject1 = localObject3;
      String str1 = SELECTION_DISPLAYED_MARKETING_MESSAGE;
      localCursor1 = localCursor2;
      localObject1 = localObject3;
      String str2 = Integer.toString(paramInt);
      localCursor1 = localCursor2;
      localObject1 = localObject3;
      localCursor2 = localBaseProvider.query("marketing_displayed", new String[] { "campaign_id" }, str1, new String[] { str2 }, null);
      localCursor1 = localCursor2;
      localObject1 = localCursor2;
      boolean bool1 = localCursor2.moveToFirst();
      bool2 = bool1;
      if (localCursor2 != null)
      {
        localCursor2.close();
        return bool1;
      }
    }
    catch (Exception localException)
    {
      localObject1 = localCursor1;
      localException.printStackTrace();
      if (localCursor1 != null)
      {
        localCursor1.close();
        return false;
      }
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
    return bool2;
  }
  
  private boolean _isConnectingToInternet()
  {
    Object localObject = (ConnectivityManager)Localytics.appContext.getSystemService("connectivity");
    if (localObject != null)
    {
      localObject = ((ConnectivityManager)localObject).getAllNetworkInfo();
      if (localObject != null)
      {
        int j = localObject.length;
        int i = 0;
        while (i < j)
        {
          if (localObject[i].getState() == NetworkInfo.State.CONNECTED) {
            return true;
          }
          i += 1;
        }
      }
    }
    return false;
  }
  
  private boolean _isMarketingMessageSatisfiedConditions(MarketingMessage paramMarketingMessage, Map<String, String> paramMap)
  {
    paramMarketingMessage = _getMarketingConditions(_getRuleIdFromCampaignId(((Integer)paramMarketingMessage.get("campaign_id")).intValue()));
    if (paramMarketingMessage != null)
    {
      paramMarketingMessage = paramMarketingMessage.iterator();
      while (paramMarketingMessage.hasNext()) {
        if (!((MarketingCondition)paramMarketingMessage.next()).isSatisfiedByAttributes(paramMap)) {
          return false;
        }
      }
    }
    return true;
  }
  
  private void _marketingTrigger(String paramString, Map<String, String> paramMap)
  {
    if (Constants.isTestModeEnabled()) {
      return;
    }
    if (paramString.equals("open")) {
      if ((!this.sessionStartMarketingMessageShown) && (!Constants.isTestModeEnabled()))
      {
        paramString = "AMP Loaded";
        this.sessionStartMarketingMessageShown = true;
      }
      else
      {
        return;
      }
    }
    Vector localVector2 = _getMarketingMessageMaps(paramString);
    Vector localVector1 = localVector2;
    if (localVector2.size() == 0)
    {
      localVector1 = localVector2;
      if (paramString.startsWith(Localytics.appContext.getPackageName())) {
        localVector1 = _getMarketingMessageMaps(paramString.substring(Localytics.appContext.getPackageName().length() + 1, paramString.length()));
      }
    }
    paramString = _retrieveDisplayingCandidate(localVector1, paramMap);
    if (paramString == null) {
      return;
    }
    paramMap = _getJavaScriptClientCallbacks(paramMap);
    new Handler(Looper.getMainLooper()).post(new MarketingHandler.8(this, paramString, paramMap));
  }
  
  private ContentValues _parseMarketingMessage(MarketingMessage paramMarketingMessage)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("campaign_id", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "campaign_id")));
    localContentValues.put("expiration", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "expiration")));
    localContentValues.put("display_seconds", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "display_seconds")));
    localContentValues.put("display_session", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "display_session")));
    localContentValues.put("version", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "version")));
    localContentValues.put("phone_location", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "phone_location"));
    Map localMap = JsonHelper.getSafeMapFromMap(paramMarketingMessage, "phone_size");
    localContentValues.put("phone_size_width", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(localMap, "width")));
    localContentValues.put("phone_size_height", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(localMap, "height")));
    localMap = JsonHelper.getSafeMapFromMap(paramMarketingMessage, "tablet_size");
    localContentValues.put("tablet_location", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "tablet_location"));
    localContentValues.put("tablet_size_width", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(localMap, "width")));
    localContentValues.put("tablet_size_height", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(localMap, "height")));
    localContentValues.put("time_to_display", Integer.valueOf(1));
    localContentValues.put("internet_required", Integer.valueOf(JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "internet_required")));
    localContentValues.put("ab_test", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "ab"));
    localContentValues.put("rule_name", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "rule_name"));
    localContentValues.put("location", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "location"));
    localContentValues.put("devices", JsonHelper.getSafeStringFromMap(paramMarketingMessage, "devices"));
    return localContentValues;
  }
  
  private void _removeDeactivatedMarketingMessages(List<MarketingMessage> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(Integer.valueOf(JsonHelper.getSafeIntegerFromMap((MarketingMessage)paramList.next(), "campaign_id")));
    }
    Vector localVector = new Vector();
    paramList = null;
    try
    {
      localCursor = this.mProvider.query("marketing_rules", null, null, null, null);
      int i = 0;
      for (;;)
      {
        paramList = localCursor;
        if (i >= localCursor.getCount()) {
          break;
        }
        paramList = localCursor;
        localCursor.moveToPosition(i);
        paramList = localCursor;
        if (!localArrayList.contains(Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("campaign_id")))))
        {
          paramList = localCursor;
          MarketingMessage localMarketingMessage = new MarketingMessage();
          paramList = localCursor;
          localMarketingMessage.put("_id", Integer.valueOf(localCursor.getColumnIndexOrThrow("_id")));
          paramList = localCursor;
          localMarketingMessage.put("campaign_id", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("campaign_id"))));
          paramList = localCursor;
          localMarketingMessage.put("expiration", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("expiration"))));
          paramList = localCursor;
          localMarketingMessage.put("display_seconds", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_seconds"))));
          paramList = localCursor;
          localMarketingMessage.put("display_session", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("display_session"))));
          paramList = localCursor;
          localMarketingMessage.put("version", localCursor.getString(localCursor.getColumnIndexOrThrow("version")));
          paramList = localCursor;
          localMarketingMessage.put("phone_location", localCursor.getString(localCursor.getColumnIndexOrThrow("phone_location")));
          paramList = localCursor;
          localMarketingMessage.put("phone_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_width"))));
          paramList = localCursor;
          localMarketingMessage.put("phone_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("phone_size_height"))));
          paramList = localCursor;
          localMarketingMessage.put("tablet_location", localCursor.getString(localCursor.getColumnIndexOrThrow("tablet_location")));
          paramList = localCursor;
          localMarketingMessage.put("tablet_size_width", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_width"))));
          paramList = localCursor;
          localMarketingMessage.put("tablet_size_height", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("tablet_size_height"))));
          paramList = localCursor;
          localMarketingMessage.put("time_to_display", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("time_to_display"))));
          paramList = localCursor;
          localMarketingMessage.put("internet_required", Integer.valueOf(localCursor.getInt(localCursor.getColumnIndexOrThrow("internet_required"))));
          paramList = localCursor;
          localMarketingMessage.put("ab_test", localCursor.getString(localCursor.getColumnIndexOrThrow("ab_test")));
          paramList = localCursor;
          localMarketingMessage.put("rule_name", localCursor.getString(localCursor.getColumnIndexOrThrow("rule_name")));
          paramList = localCursor;
          localMarketingMessage.put("location", localCursor.getString(localCursor.getColumnIndexOrThrow("location")));
          paramList = localCursor;
          localMarketingMessage.put("devices", localCursor.getString(localCursor.getColumnIndexOrThrow("devices")));
          paramList = localCursor;
          localVector.add(localMarketingMessage);
        }
        i += 1;
      }
    }
    finally
    {
      Cursor localCursor;
      if (paramList != null) {
        paramList.close();
      }
    }
    paramList = localVector.iterator();
    while (paramList.hasNext()) {
      _destroyLocalMarketingMessage((MarketingMessage)paramList.next());
    }
  }
  
  private MarketingMessage _retrieveDisplayingCandidate(Vector<MarketingMessage> paramVector, Map<String, String> paramMap)
  {
    MarketingMessage localMarketingMessage = null;
    Iterator localIterator = paramVector.iterator();
    for (paramVector = localMarketingMessage; localIterator.hasNext(); paramVector = localMarketingMessage)
    {
      label12:
      localMarketingMessage = (MarketingMessage)localIterator.next();
      int i;
      if (((Integer)localMarketingMessage.get("internet_required")).intValue() == 1) {
        i = 1;
      } else {
        i = 0;
      }
      if (((i != 0) && (!_isConnectingToInternet())) || ((paramMap != null) && (!_isMarketingMessageSatisfiedConditions(localMarketingMessage, paramMap))) || (_hasAMPMessageBeenDisplayed(((Integer)localMarketingMessage.get("campaign_id")).intValue()))) {
        break label12;
      }
    }
    if ((paramVector == null) || (!_updateDisplayingCandidate(paramVector))) {
      return null;
    }
    return paramVector;
  }
  
  private void _saveMarketingConditions(long paramLong, List<Object> paramList)
  {
    if (paramList == null) {
      return;
    }
    Object localObject = _getConditionIdFromRuleId(paramLong);
    int j = localObject.length;
    int i = 0;
    long l;
    while (i < j)
    {
      l = localObject[i];
      this.mProvider.remove("marketing_condition_values", String.format("%s = ?", new Object[] { "condition_id_ref" }), new String[] { Long.toString(l) });
      i += 1;
    }
    this.mProvider.remove("marketing_conditions", String.format("%s = ?", new Object[] { "rule_id_ref" }), new String[] { Long.toString(paramLong) });
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject = (List)paramList.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("attribute_name", (String)((List)localObject).get(0));
      localContentValues.put("operator", (String)((List)localObject).get(1));
      localContentValues.put("rule_id_ref", Long.valueOf(paramLong));
      l = this.mProvider.insert("marketing_conditions", localContentValues);
      i = 2;
      while (i < ((List)localObject).size())
      {
        localContentValues = new ContentValues();
        localContentValues.put("value", JsonHelper.getSafeStringFromValue(((List)localObject).get(i)));
        localContentValues.put("condition_id_ref", Long.valueOf(l));
        this.mProvider.insert("marketing_condition_values", localContentValues);
        i += 1;
      }
    }
  }
  
  private int _saveMarketingMessage(MarketingMessage paramMarketingMessage)
  {
    if (!_validateMarketingMessage(paramMarketingMessage)) {
      return 0;
    }
    int k = JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "campaign_id");
    if ((_hasAMPMessageBeenDisplayed(k)) && (!Constants.isTestModeEnabled())) {
      return 0;
    }
    int i = 0;
    int j = 0;
    Object localObject1 = null;
    Object localObject2;
    try
    {
      localObject2 = this.mProvider.query("marketing_rules", PROJECTION_MARKETING_RULE_RECORD, String.format("%s = ?", new Object[] { "campaign_id" }), new String[] { Integer.toString(k) }, null);
      localObject1 = localObject2;
      if (((Cursor)localObject2).moveToFirst())
      {
        localObject1 = localObject2;
        i = ((Cursor)localObject2).getInt(((Cursor)localObject2).getColumnIndexOrThrow("_id"));
        localObject1 = localObject2;
        j = ((Cursor)localObject2).getInt(((Cursor)localObject2).getColumnIndexOrThrow("version"));
      }
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
    if (i > 0)
    {
      Localytics.Log.w(String.format("Existing in-app rule already exists for this campaign\n\t campaignID = %d\n\t ruleID = %d", new Object[] { Integer.valueOf(k), Integer.valueOf(i) }));
      if (j >= JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "version"))
      {
        Localytics.Log.w(String.format("No update needed. Campaign version has not been updated\n\t version: %d", new Object[] { Integer.valueOf(j) }));
        return 0;
      }
      localObject1 = _parseMarketingMessage(paramMarketingMessage);
      i = this.mProvider.update("marketing_rules", (ContentValues)localObject1, SELECTION_UPDATE_MARKETING_RULE, new String[] { Integer.toString(i) });
    }
    else
    {
      Localytics.Log.w("In-app campaign not found. Creating a new one.");
      localObject1 = _parseMarketingMessage(paramMarketingMessage);
      i = (int)this.mProvider.insert("marketing_rules", (ContentValues)localObject1);
    }
    if (i > 0)
    {
      _saveMarketingConditions(i, JsonHelper.getSafeListFromMap(paramMarketingMessage, "conditions"));
      localObject1 = null;
      try
      {
        localObject2 = JsonHelper.toList((JSONArray)JsonHelper.toJSON(paramMarketingMessage.get("display_events")));
        localObject1 = localObject2;
      }
      catch (JSONException localJSONException) {}
      if (localObject1 != null) {
        _bindRuleToEvents(i, (List)localObject1);
      }
    }
    if ((i > 0) && (!Constants.isTestModeEnabled()))
    {
      paramMarketingMessage = MarketingDownloader.getRemoteFileURL(paramMarketingMessage);
      localObject1 = MarketingDownloader.getLocalFileURL(i, paramMarketingMessage.endsWith(".zip"));
      if ((!TextUtils.isEmpty(paramMarketingMessage)) && (!TextUtils.isEmpty((CharSequence)localObject1)))
      {
        Localytics.Log.v(String.format("Saving in-app message with remoteURL = %s and localUrl = %s", new Object[] { paramMarketingMessage, localObject1 }));
        MarketingDownloader.downloadFile(paramMarketingMessage, (String)localObject1, true);
      }
    }
    return i;
  }
  
  private boolean _updateDisplayingCandidate(MarketingMessage paramMarketingMessage)
  {
    String str1 = null;
    int i = ((Integer)paramMarketingMessage.get("_id")).intValue();
    String str3 = _getZipFileDirPath();
    String str2 = _getUnzipFileDirPath(i);
    boolean bool = _getRemoteFileURL(paramMarketingMessage).endsWith(".zip");
    if (!_doesCreativeExist(i, bool))
    {
      String str4 = MarketingDownloader.getRemoteFileURL(paramMarketingMessage);
      String str5 = MarketingDownloader.getLocalFileURL(i, bool);
      if ((!TextUtils.isEmpty(str4)) && (!TextUtils.isEmpty(str5))) {
        MarketingDownloader.downloadFile(str4, str5, true);
      }
    }
    if (bool)
    {
      if (_decompressZipFile(str3, str2, String.format("amp_rule_%d.zip", new Object[] { Integer.valueOf(i) }))) {
        str1 = "file://" + str2 + File.separator + "index.html";
      }
    }
    else {
      str1 = "file://" + str2 + File.separator + "index.html";
    }
    if (TextUtils.isEmpty(str1)) {
      return false;
    }
    str3 = (String)paramMarketingMessage.get("devices");
    int j;
    if (str3.equals("tablet"))
    {
      i = ((Integer)paramMarketingMessage.get("tablet_size_width")).intValue();
      j = ((Integer)paramMarketingMessage.get("tablet_size_height")).intValue();
    }
    else if (str3.equals("both"))
    {
      i = ((Integer)paramMarketingMessage.get("phone_size_width")).intValue();
      j = ((Integer)paramMarketingMessage.get("phone_size_height")).intValue();
    }
    else
    {
      i = ((Integer)paramMarketingMessage.get("phone_size_width")).intValue();
      j = ((Integer)paramMarketingMessage.get("phone_size_height")).intValue();
    }
    paramMarketingMessage.put("html_url", str1);
    paramMarketingMessage.put("base_path", str2);
    paramMarketingMessage.put("display_width", Float.valueOf(i));
    paramMarketingMessage.put("display_height", Float.valueOf(j));
    return true;
  }
  
  private boolean _validateMarketingMessage(MarketingMessage paramMarketingMessage)
  {
    int i = JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "campaign_id");
    String str = JsonHelper.getSafeStringFromMap(paramMarketingMessage, "rule_name");
    List localList = JsonHelper.getSafeListFromMap(paramMarketingMessage, "display_events");
    int j = JsonHelper.getSafeIntegerFromMap(paramMarketingMessage, "expiration");
    paramMarketingMessage = JsonHelper.getSafeStringFromMap(paramMarketingMessage, "location");
    long l = System.currentTimeMillis() / 1000L;
    return (i != 0) && (!TextUtils.isEmpty(str)) && (localList != null) && (!TextUtils.isEmpty(paramMarketingMessage)) && ((j > l) || (Constants.isTestModeEnabled()));
  }
  
  private boolean setMarketingMessageAsDisplayed(int paramInt)
  {
    return getBool(new MarketingHandler.5(this, paramInt));
  }
  
  protected void _deleteUploadedData(int paramInt) {}
  
  protected TreeMap<Integer, Object> _getDataToUpload()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(Integer.valueOf(0), "");
    return localTreeMap;
  }
  
  protected int _getMaxRowToUpload()
  {
    return 1;
  }
  
  protected void _init()
  {
    this.mProvider = new MarketingProvider(this.siloName.toLowerCase());
  }
  
  protected void _onUploadCompleted(String paramString)
  {
    int i;
    if (paramString != null) {
      i = paramString.hashCode();
    } else {
      i = this.lastMarketingMessagesHash;
    }
    if (i != this.lastMarketingMessagesHash) {
      try
      {
        Object localObject = JsonHelper.toList((JSONArray)JsonHelper.toJSON(JsonHelper.toMap(new JSONObject(paramString)).get("amp")));
        paramString = new ArrayList();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramString.add(new MarketingMessage((Map)((Iterator)localObject).next()));
        }
        _removeDeactivatedMarketingMessages(paramString);
        paramString = paramString.iterator();
        while (paramString.hasNext()) {
          _saveMarketingMessage((MarketingMessage)paramString.next());
        }
        this.lastMarketingMessagesHash = i;
      }
      catch (JSONException paramString)
      {
        Localytics.Log.w("JSONException", paramString);
      }
    }
    if (this.testCampaignsListAdapter != null)
    {
      new MarketingHandler.6(this, this.testCampaignsListAdapter).start();
      this.testCampaignsListAdapter = null;
      return;
    }
    Localytics.triggerInAppMessage("open");
  }
  
  void dismissCurrentInAppMessage()
  {
    if (this.mFragmentManager == null) {
      return;
    }
    try
    {
      Fragment localFragment = this.mFragmentManager.findFragmentByTag("marketing_dialog");
      if ((localFragment instanceof MarketingDialogFragment)) {
        ((MarketingDialogFragment)localFragment).dismissCampaign();
      }
      return;
    }
    catch (Exception localException)
    {
      Localytics.throwOrLogError(RuntimeException.class, "Localytics library threw an uncaught exception", localException);
    }
  }
  
  void displayMarketingMessage(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    if ("open".equals(paramString))
    {
      paramString = obtainMessage(201, new Object[] { paramString, null });
      int i;
      if (paramBoolean) {
        i = 1;
      } else {
        i = 0;
      }
      queueMessageDelayed(paramString, i * 10000L);
      return;
    }
    queueMessage(obtainMessage(201, new Object[] { paramString, paramMap }));
  }
  
  Map<Integer, MarketingCallable> getDialogCallbacks()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put(Integer.valueOf(1), new MarketingHandler.16(this));
    localTreeMap.put(Integer.valueOf(2), new MarketingHandler.17(this));
    localTreeMap.put(Integer.valueOf(16), new MarketingHandler.18(this));
    localTreeMap.put(Integer.valueOf(17), new MarketingHandler.19(this));
    return localTreeMap;
  }
  
  Localytics.InAppMessageDismissButtonLocation getInAppDismissButtonLocation()
  {
    return MarketingDialogFragment.getInAppDismissButtonLocation();
  }
  
  List<MarketingMessage> getMarketingMessages()
  {
    return getList(new MarketingHandler.9(this));
  }
  
  protected BaseUploadThread getUploadThread(TreeMap<Integer, Object> paramTreeMap, String paramString)
  {
    return new MarketingDownloader(this, paramTreeMap, paramString);
  }
  
  protected void handleMessageExtended(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      break;
    case 201: 
      Localytics.Log.d("In-app handler received MESSAGE_INAPP_TRIGGER");
      Object localObject = (Object[])paramMessage.obj;
      paramMessage = (String)localObject[0];
      localObject = (Map)localObject[1];
      this.mProvider.runBatchTransaction(new MarketingHandler.1(this, paramMessage, (Map)localObject));
      return;
    case 202: 
      Localytics.Log.d("In-app handler received MESSAGE_DELETE_INAPP_RESOURCES");
      paramMessage = (MarketingMessage)paramMessage.obj;
      this.mProvider.runBatchTransaction(new MarketingHandler.2(this, paramMessage));
      return;
    case 203: 
      Localytics.Log.d("In-app handler received MESSAGE_SHOW_INAPP_TEST");
      _upload(true, (String)paramMessage.obj);
      new Handler(Looper.getMainLooper()).postDelayed(new MarketingHandler.3(this), 1000L);
      return;
    case 204: 
      Localytics.Log.d("Analytics handler received MESSAGE_HANDLE_PUSH_RECEIVED");
      paramMessage = (Intent)paramMessage.obj;
      this.mProvider.runBatchTransaction(new MarketingHandler.4(this, paramMessage));
      return;
    }
    super.handleMessageExtended(paramMessage);
  }
  
  void handleNotificationReceived(Intent paramIntent)
  {
    queueMessage(obtainMessage(204, paramIntent));
  }
  
  void handlePushNotificationOpened(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getExtras() == null)) {
      return;
    }
    Object localObject1 = paramIntent.getExtras().getString("ll");
    if (localObject1 != null) {
      try
      {
        localObject1 = new JSONObject((String)localObject1);
        String str1 = ((JSONObject)localObject1).getString("ca");
        String str2 = ((JSONObject)localObject1).getString("cr");
        String str3 = ((JSONObject)localObject1).optString("v", "1");
        Object localObject2 = ((JSONObject)localObject1).optString("t", null);
        localObject1 = localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject2)) {
          localObject1 = "Alert";
        }
        if ((str1 != null) && (str2 != null))
        {
          localObject2 = new HashMap();
          ((HashMap)localObject2).put("Campaign ID", str1);
          ((HashMap)localObject2).put("Creative ID", str2);
          ((HashMap)localObject2).put("Creative Type", localObject1);
          ((HashMap)localObject2).put("Action", "Click");
          ((HashMap)localObject2).put("Schema Version - Client", String.valueOf(2));
          ((HashMap)localObject2).put("Schema Version - Server", str3);
          Localytics.tagEvent("Localytics Push Opened", (Map)localObject2);
        }
        paramIntent.removeExtra("ll");
        return;
      }
      catch (JSONException paramIntent)
      {
        Localytics.Log.w("Failed to get campaign id or creative id from payload");
      }
    }
  }
  
  void handleTestModeIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("intent cannot be null");
    }
    Object localObject1 = paramIntent.getData();
    if ((localObject1 == null) || (((Uri)localObject1).getScheme() == null) || (!((Uri)localObject1).getScheme().equals("amp" + Localytics.apiKey))) {
      return;
    }
    paramIntent = ((Uri)localObject1).getPath().substring(1);
    localObject1 = ((Uri)localObject1).getHost();
    Object localObject2 = paramIntent.split("[/]");
    if ((localObject2 == null) || (localObject2.length == 0)) {
      return;
    }
    if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (((String)localObject1).equalsIgnoreCase("testMode")))
    {
      if (localObject2[0].equalsIgnoreCase("enabled"))
      {
        Localytics.setTestModeEnabled(true);
        return;
      }
      if ((localObject2[0].equalsIgnoreCase("launch")) && (localObject2[1].equalsIgnoreCase("push")))
      {
        paramIntent = localObject2[2];
        localObject1 = localObject2[3];
        localObject2 = Localytics.getCustomerIdInMemory();
        if ((!TextUtils.isEmpty(paramIntent)) && (!TextUtils.isEmpty((CharSequence)localObject1))) {
          new MarketingHandler.7(this, paramIntent, (String)localObject1, (String)localObject2).execute(new Void[0]);
        }
      }
    }
  }
  
  public void localyticsDidTagEvent(String paramString, Map<String, String> paramMap, long paramLong)
  {
    Localytics.triggerInAppMessage(paramString, paramMap);
  }
  
  public void localyticsSessionDidOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (!paramBoolean3) {
      upload(Localytics.getCustomerIdInMemory());
    }
    if (!Constants.isTestModeEnabled())
    {
      if (paramBoolean1) {
        Localytics.triggerInAppMessage("AMP First Run");
      }
      if (paramBoolean2) {
        Localytics.triggerInAppMessage("AMP upgrade");
      }
      if (!paramBoolean3)
      {
        this.sessionStartMarketingMessageShown = false;
        Localytics.triggerInAppMessage("open", null, true);
      }
    }
  }
  
  public void localyticsSessionWillClose() {}
  
  public void localyticsSessionWillOpen(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  void setDismissButtonImage(Bitmap paramBitmap)
  {
    MarketingDialogFragment.setDismissButtonImage(paramBitmap);
  }
  
  void setFragmentManager(ˈ paramˈ)
  {
    this.mFragmentManager = paramˈ;
  }
  
  void setInAppDismissButtonLocation(Localytics.InAppMessageDismissButtonLocation paramInAppMessageDismissButtonLocation)
  {
    MarketingDialogFragment.setInAppDismissButtonLocation(paramInAppMessageDismissButtonLocation);
  }
  
  void showMarketingTest()
  {
    queueMessage(obtainMessage(203, Localytics.getCustomerIdInMemory()));
  }
  
  final class MessagingListenersSet
    extends BaseHandler.ListenersSet
    implements MessagingListener
  {
    private MessagingListenersSet()
    {
      super();
    }
    
    public void localyticsDidDismissInAppMessage()
    {
      try
      {
        callListeners("localyticsDidDismissInAppMessage", null, null);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void localyticsDidDisplayInAppMessage()
    {
      try
      {
        callListeners("localyticsDidDisplayInAppMessage", null, null);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void localyticsWillDismissInAppMessage()
    {
      try
      {
        callListeners("localyticsWillDismissInAppMessage", null, null);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void localyticsWillDisplayInAppMessage()
    {
      try
      {
        callListeners("localyticsWillDisplayInAppMessage", null, null);
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
 * Qualified Name:     com.localytics.android.MarketingHandler
 * JD-Core Version:    0.7.0.1
 */