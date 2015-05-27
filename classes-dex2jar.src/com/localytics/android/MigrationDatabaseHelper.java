package com.localytics.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorJoiner;
import android.database.CursorJoiner.Result;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class MigrationDatabaseHelper
  extends SQLiteOpenHelper
{
  private static final String CLOSE_EVENT;
  private static final String EVENTS_SORT_ORDER;
  private static final String EVENT_FORMAT = "%s:%s";
  private static final String FLOW_EVENT;
  private static final String[] JOINER_ARG_UPLOAD_EVENTS_COLUMNS;
  private static final String OPEN_EVENT = String.format("%s:%s", new Object[] { "com.localytics.android", "open" });
  private static final String OPT_IN_EVENT;
  private static final String OPT_OUT_EVENT;
  private static final String[] PROJECTION_UPLOAD_BLOBS;
  private static final String[] PROJECTION_UPLOAD_EVENTS = { "_id", "event_name", "wall_time" };
  private static final String SELECTION_UPLOAD_NULL_BLOBS;
  private static final String UPLOAD_BLOBS_EVENTS_SORT_ORDER;
  
  static
  {
    CLOSE_EVENT = String.format("%s:%s", new Object[] { "com.localytics.android", "close" });
    OPT_IN_EVENT = String.format("%s:%s", new Object[] { "com.localytics.android", "opt_in" });
    OPT_OUT_EVENT = String.format("%s:%s", new Object[] { "com.localytics.android", "opt_out" });
    FLOW_EVENT = String.format("%s:%s", new Object[] { "com.localytics.android", "flow" });
    EVENTS_SORT_ORDER = String.format("CAST(%s as TEXT)", new Object[] { "_id" });
    PROJECTION_UPLOAD_BLOBS = new String[] { "events_key_ref" };
    UPLOAD_BLOBS_EVENTS_SORT_ORDER = String.format("CAST(%s AS TEXT)", new Object[] { "events_key_ref" });
    JOINER_ARG_UPLOAD_EVENTS_COLUMNS = new String[] { "_id" };
    SELECTION_UPLOAD_NULL_BLOBS = String.format("%s IS NULL", new Object[] { "processed_in_blob" });
  }
  
  MigrationDatabaseHelper(String paramString, int paramInt)
  {
    super(Localytics.appContext, paramString, null, paramInt);
  }
  
  private static JSONObject convertAttributesToJson(SQLiteDatabase paramSQLiteDatabase, Context paramContext, long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.query("attributes", null, String.format("%s = ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ?", new Object[] { "events_key_ref", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key", "attribute_key" }), new String[] { Long.toString(paramLong), AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_1, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_2, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_3, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_4, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_5, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_6, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_7, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_8, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_9, AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_10 }, null, null, null);
      localSQLiteDatabase = paramSQLiteDatabase;
      int i = paramSQLiteDatabase.getCount();
      if (i == 0) {
        return null;
      }
      localSQLiteDatabase = paramSQLiteDatabase;
      JSONObject localJSONObject = new JSONObject();
      localSQLiteDatabase = paramSQLiteDatabase;
      i = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_key");
      localSQLiteDatabase = paramSQLiteDatabase;
      int j = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_value");
      for (;;)
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToNext()) {
          break;
        }
        localSQLiteDatabase = paramSQLiteDatabase;
        String str1 = paramSQLiteDatabase.getString(i);
        localSQLiteDatabase = paramSQLiteDatabase;
        String str2 = paramSQLiteDatabase.getString(j);
        localSQLiteDatabase = paramSQLiteDatabase;
        localJSONObject.put(str1.substring(paramContext.getPackageName().length() + 1, str1.length()), str2);
      }
      return localJSONObject;
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
  }
  
  static List<JSONObject> convertDatabaseToJson(Context paramContext, SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    Object localObject1 = null;
    try
    {
      localCursor = paramSQLiteDatabase.query("upload_blobs", null, null, null, null, null, null);
      localObject1 = localCursor;
      long l = getApiKeyCreationTime(paramSQLiteDatabase, paramString);
      localObject1 = localCursor;
      int i = localCursor.getColumnIndexOrThrow("_id");
      localObject1 = localCursor;
      int j = localCursor.getColumnIndexOrThrow("uuid");
      for (;;)
      {
        localObject1 = localCursor;
        boolean bool = localCursor.moveToNext();
        if (!bool) {
          break;
        }
        localObject1 = localCursor;
        try
        {
          Object localObject2 = new JSONObject();
          localObject1 = localCursor;
          ((JSONObject)localObject2).put("dt", "h");
          localObject1 = localCursor;
          ((JSONObject)localObject2).put("pa", l);
          localObject1 = localCursor;
          ((JSONObject)localObject2).put("seq", localCursor.getLong(i));
          localObject1 = localCursor;
          ((JSONObject)localObject2).put("u", localCursor.getString(j));
          localObject1 = localCursor;
          Object localObject3 = getAttributesFromSession(paramSQLiteDatabase, paramString, getSessionIdForBlobId(paramSQLiteDatabase, localCursor.getLong(i)));
          if (localObject3 == null) {
            break;
          }
          localObject1 = localCursor;
          ((JSONObject)localObject2).put("attrs", localObject3);
          localObject1 = localCursor;
          localObject3 = getIdentifiers(paramSQLiteDatabase);
          if (localObject3 != null)
          {
            localObject1 = localCursor;
            ((JSONObject)localObject2).put("ids", localObject3);
          }
          localObject1 = localCursor;
          localLinkedList.add(localObject2);
          localObject1 = localCursor;
          Localytics.Log.w(localLinkedList.toString());
          localObject1 = null;
          localObject2 = localObject1;
          try
          {
            localObject3 = String.format("%s = ?", new Object[] { "upload_blobs_key_ref" });
            localObject2 = localObject1;
            String str = Long.toString(localCursor.getLong(i));
            localObject2 = localObject1;
            localObject3 = paramSQLiteDatabase.query("upload_blob_events", new String[] { "_id", "events_key_ref" }, (String)localObject3, new String[] { str }, null, null, "events_key_ref");
            localObject2 = localObject3;
            int k = ((Cursor)localObject3).getColumnIndexOrThrow("events_key_ref");
            for (;;)
            {
              localObject2 = localObject3;
              if (!((Cursor)localObject3).moveToNext()) {
                break;
              }
              localObject2 = localObject3;
              if (localLinkedList.size() >= 100) {
                break;
              }
              localObject2 = localObject3;
              localLinkedList.add(convertEventToJson(paramSQLiteDatabase, paramContext, ((Cursor)localObject3).getLong(k), localCursor.getLong(i), paramString));
              localObject2 = localObject3;
              paramSQLiteDatabase.delete("upload_blob_events", String.format("%s = ?", new Object[] { "_id" }), new String[] { Integer.toString(((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndexOrThrow("_id"))) });
            }
            if (localObject3 != null)
            {
              localObject1 = localCursor;
              ((Cursor)localObject3).close();
            }
          }
          finally
          {
            if (localObject2 != null)
            {
              localObject1 = localCursor;
              ((Cursor)localObject2).close();
            }
            localObject1 = localCursor;
          }
        }
        catch (JSONException localJSONException)
        {
          localObject1 = localCursor;
          Localytics.Log.w("Caught exception", localJSONException);
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
    Localytics.Log.v(String.format("JSON result is %s", new Object[] { localLinkedList.toString() }));
    return localLinkedList;
  }
  
  private static JSONObject convertEventToJson(SQLiteDatabase paramSQLiteDatabase, Context paramContext, long paramLong1, long paramLong2, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject1 = null;
    label3927:
    label3930:
    label3933:
    label3940:
    label3943:
    for (;;)
    {
      try
      {
        localCursor = paramSQLiteDatabase.query("events", null, String.format("%s = ?", new Object[] { "_id" }), new String[] { Long.toString(paramLong1) }, null, null, "_id");
        localObject1 = localCursor;
        if (localCursor.moveToFirst())
        {
          localObject1 = localCursor;
          Object localObject2 = localCursor.getString(localCursor.getColumnIndexOrThrow("event_name"));
          localObject1 = localCursor;
          long l1 = getSessionIdForEventId(paramSQLiteDatabase, paramLong1);
          localObject1 = localCursor;
          String str = getSessionUuid(paramSQLiteDatabase, l1);
          localObject1 = localCursor;
          long l2 = getSessionStartTime(paramSQLiteDatabase, l1);
          localObject1 = localCursor;
          double d1;
          double d2;
          int i;
          int j;
          if (OPEN_EVENT.equals(localObject2))
          {
            localObject1 = localCursor;
            localJSONObject.put("dt", "s");
            localObject1 = localCursor;
            localJSONObject.put("ct", Math.round(localCursor.getLong(localCursor.getColumnIndex("wall_time")) / 1000.0D));
            localObject1 = localCursor;
            localJSONObject.put("u", str);
            localObject1 = localCursor;
            paramLong2 = getElapsedTimeSinceLastSession(paramSQLiteDatabase, l1);
            if (paramLong2 > 0L)
            {
              localObject1 = localCursor;
              localJSONObject.put("sl", Math.round((float)(paramLong2 / 1000L)));
            }
            localObject1 = localCursor;
            localJSONObject.put("nth", l1);
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lat")))
            {
              localObject1 = localCursor;
              if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lng")))
              {
                localObject1 = localCursor;
                d1 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lat"));
                localObject1 = localCursor;
                d2 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lng"));
                if ((d1 != 0.0D) && (d2 != 0.0D))
                {
                  localObject1 = localCursor;
                  localJSONObject.put("lat", d1);
                  localObject1 = localCursor;
                  localJSONObject.put("lng", d2);
                }
              }
            }
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("customer_id")))
            {
              localObject1 = localCursor;
              paramContext = localCursor.getString(localCursor.getColumnIndexOrThrow("customer_id"));
              localObject1 = localCursor;
              paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("user_type"));
              localObject1 = localCursor;
              localJSONObject.put("cid", paramContext);
              localObject1 = localCursor;
              localJSONObject.put("utp", paramString);
            }
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("ids")))
            {
              localObject1 = localCursor;
              localJSONObject.put("ids", new JSONObject(localCursor.getString(localCursor.getColumnIndexOrThrow("ids"))));
            }
            paramContext = null;
            try
            {
              paramSQLiteDatabase = paramSQLiteDatabase.query("attributes", null, String.format("%s = ?", new Object[] { "events_key_ref" }), new String[] { Long.toString(paramLong1) }, null, null, null);
              paramContext = paramSQLiteDatabase;
              i = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_key");
              paramContext = paramSQLiteDatabase;
              j = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_value");
              paramContext = paramSQLiteDatabase;
              if (paramSQLiteDatabase.moveToNext())
              {
                paramContext = paramSQLiteDatabase;
                paramString = paramSQLiteDatabase.getString(i);
                paramContext = paramSQLiteDatabase;
                localObject1 = paramSQLiteDatabase.getString(j);
                paramContext = paramSQLiteDatabase;
                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_1.equals(paramString))
                {
                  paramContext = paramSQLiteDatabase;
                  localJSONObject.put(getCustomDimensionKey(1), localObject1);
                }
                else
                {
                  paramContext = paramSQLiteDatabase;
                  if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_2.equals(paramString))
                  {
                    paramContext = paramSQLiteDatabase;
                    localJSONObject.put(getCustomDimensionKey(2), localObject1);
                  }
                  else
                  {
                    paramContext = paramSQLiteDatabase;
                    if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_3.equals(paramString))
                    {
                      paramContext = paramSQLiteDatabase;
                      localJSONObject.put(getCustomDimensionKey(3), localObject1);
                    }
                    else
                    {
                      paramContext = paramSQLiteDatabase;
                      if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_4.equals(paramString))
                      {
                        paramContext = paramSQLiteDatabase;
                        localJSONObject.put(getCustomDimensionKey(4), localObject1);
                      }
                      else
                      {
                        paramContext = paramSQLiteDatabase;
                        if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_5.equals(paramString))
                        {
                          paramContext = paramSQLiteDatabase;
                          localJSONObject.put(getCustomDimensionKey(5), localObject1);
                        }
                        else
                        {
                          paramContext = paramSQLiteDatabase;
                          if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_6.equals(paramString))
                          {
                            paramContext = paramSQLiteDatabase;
                            localJSONObject.put(getCustomDimensionKey(6), localObject1);
                          }
                          else
                          {
                            paramContext = paramSQLiteDatabase;
                            if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_7.equals(paramString))
                            {
                              paramContext = paramSQLiteDatabase;
                              localJSONObject.put(getCustomDimensionKey(7), localObject1);
                            }
                            else
                            {
                              paramContext = paramSQLiteDatabase;
                              if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_8.equals(paramString))
                              {
                                paramContext = paramSQLiteDatabase;
                                localJSONObject.put(getCustomDimensionKey(8), localObject1);
                              }
                              else
                              {
                                paramContext = paramSQLiteDatabase;
                                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_9.equals(paramString))
                                {
                                  paramContext = paramSQLiteDatabase;
                                  localJSONObject.put(getCustomDimensionKey(9), localObject1);
                                }
                                else
                                {
                                  paramContext = paramSQLiteDatabase;
                                  if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_10.equals(paramString))
                                  {
                                    paramContext = paramSQLiteDatabase;
                                    localJSONObject.put(getCustomDimensionKey(10), localObject1);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
                continue;
              }
              if (paramSQLiteDatabase == null) {
                break label3927;
              }
              localObject1 = localCursor;
              paramSQLiteDatabase.close();
            }
            finally
            {
              if (paramContext != null)
              {
                localObject1 = localCursor;
                paramContext.close();
              }
              localObject1 = localCursor;
            }
          }
          localObject1 = localCursor;
          if (CLOSE_EVENT.equals(localObject2))
          {
            localObject1 = localCursor;
            localJSONObject.put("dt", "c");
            localObject1 = localCursor;
            localJSONObject.put("u", localCursor.getString(localCursor.getColumnIndexOrThrow("uuid")));
            localObject1 = localCursor;
            localJSONObject.put("su", str);
            localObject1 = localCursor;
            localJSONObject.put("ss", Math.round(l2 / 1000.0D));
            localObject1 = localCursor;
            localJSONObject.put("ct", Math.round(localCursor.getLong(localCursor.getColumnIndex("wall_time")) / 1000.0D));
            paramString = null;
            paramContext = paramString;
            try
            {
              localObject1 = String.format("%s = ?", new Object[] { "_id" });
              paramContext = paramString;
              localObject2 = Long.toString(localCursor.getLong(localCursor.getColumnIndexOrThrow("session_key_ref")));
              paramContext = paramString;
              paramString = paramSQLiteDatabase.query("sessions", new String[] { "session_start_wall_time" }, (String)localObject1, new String[] { localObject2 }, null, null, null);
              paramContext = paramString;
              if (paramString.moveToFirst())
              {
                paramContext = paramString;
                localJSONObject.put("ctl", Math.round(localCursor.getLong(localCursor.getColumnIndex("wall_time")) / 1000.0D) - Math.round(paramString.getLong(paramString.getColumnIndexOrThrow("session_start_wall_time")) / 1000.0D));
              }
              else
              {
                paramContext = paramString;
                throw new RuntimeException("Session didn't exist");
              }
              if (paramString != null)
              {
                localObject1 = localCursor;
                paramString.close();
              }
            }
            finally
            {
              if (paramContext != null)
              {
                localObject1 = localCursor;
                paramContext.close();
              }
              localObject1 = localCursor;
            }
            paramString = null;
            paramContext = paramString;
            try
            {
              localObject1 = String.format("%s = ? AND %s = ?", new Object[] { "session_key_ref", "type" });
              paramContext = paramString;
              localObject2 = Long.toString(l1);
              paramContext = paramString;
              str = Integer.toString(1);
              paramContext = paramString;
              paramString = paramSQLiteDatabase.query("event_history", new String[] { "name" }, (String)localObject1, new String[] { localObject2, str }, null, null, "_id");
              paramContext = paramString;
              localObject1 = new JSONArray();
              paramContext = paramString;
              if (paramString.moveToNext())
              {
                paramContext = paramString;
                ((JSONArray)localObject1).put(paramString.getString(paramString.getColumnIndexOrThrow("name")));
                continue;
              }
              paramContext = paramString;
              if (((JSONArray)localObject1).length() > 0)
              {
                paramContext = paramString;
                localJSONObject.put("fl", localObject1);
              }
              if (paramString != null)
              {
                localObject1 = localCursor;
                paramString.close();
              }
            }
            finally
            {
              if (paramContext != null)
              {
                localObject1 = localCursor;
                paramContext.close();
              }
              localObject1 = localCursor;
            }
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lat")))
            {
              localObject1 = localCursor;
              if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lng")))
              {
                localObject1 = localCursor;
                d1 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lat"));
                localObject1 = localCursor;
                d2 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lng"));
                if ((d1 != 0.0D) && (d2 != 0.0D))
                {
                  localObject1 = localCursor;
                  localJSONObject.put("lat", d1);
                  localObject1 = localCursor;
                  localJSONObject.put("lng", d2);
                }
              }
            }
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("customer_id")))
            {
              localObject1 = localCursor;
              paramContext = localCursor.getString(localCursor.getColumnIndexOrThrow("customer_id"));
              localObject1 = localCursor;
              paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("user_type"));
              localObject1 = localCursor;
              localJSONObject.put("cid", paramContext);
              localObject1 = localCursor;
              localJSONObject.put("utp", paramString);
            }
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("ids")))
            {
              localObject1 = localCursor;
              localJSONObject.put("ids", new JSONObject(localCursor.getString(localCursor.getColumnIndexOrThrow("ids"))));
            }
            paramContext = null;
            try
            {
              paramSQLiteDatabase = paramSQLiteDatabase.query("attributes", null, String.format("%s = ?", new Object[] { "events_key_ref" }), new String[] { Long.toString(paramLong1) }, null, null, null);
              paramContext = paramSQLiteDatabase;
              i = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_key");
              paramContext = paramSQLiteDatabase;
              j = paramSQLiteDatabase.getColumnIndexOrThrow("attribute_value");
              paramContext = paramSQLiteDatabase;
              if (paramSQLiteDatabase.moveToNext())
              {
                paramContext = paramSQLiteDatabase;
                paramString = paramSQLiteDatabase.getString(i);
                paramContext = paramSQLiteDatabase;
                localObject1 = paramSQLiteDatabase.getString(j);
                paramContext = paramSQLiteDatabase;
                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_1.equals(paramString))
                {
                  paramContext = paramSQLiteDatabase;
                  localJSONObject.put(getCustomDimensionKey(1), localObject1);
                }
                else
                {
                  paramContext = paramSQLiteDatabase;
                  if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_2.equals(paramString))
                  {
                    paramContext = paramSQLiteDatabase;
                    localJSONObject.put(getCustomDimensionKey(2), localObject1);
                  }
                  else
                  {
                    paramContext = paramSQLiteDatabase;
                    if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_3.equals(paramString))
                    {
                      paramContext = paramSQLiteDatabase;
                      localJSONObject.put(getCustomDimensionKey(3), localObject1);
                    }
                    else
                    {
                      paramContext = paramSQLiteDatabase;
                      if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_4.equals(paramString))
                      {
                        paramContext = paramSQLiteDatabase;
                        localJSONObject.put(getCustomDimensionKey(4), localObject1);
                      }
                      else
                      {
                        paramContext = paramSQLiteDatabase;
                        if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_5.equals(paramString))
                        {
                          paramContext = paramSQLiteDatabase;
                          localJSONObject.put(getCustomDimensionKey(5), localObject1);
                        }
                        else
                        {
                          paramContext = paramSQLiteDatabase;
                          if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_6.equals(paramString))
                          {
                            paramContext = paramSQLiteDatabase;
                            localJSONObject.put(getCustomDimensionKey(6), localObject1);
                          }
                          else
                          {
                            paramContext = paramSQLiteDatabase;
                            if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_7.equals(paramString))
                            {
                              paramContext = paramSQLiteDatabase;
                              localJSONObject.put(getCustomDimensionKey(7), localObject1);
                            }
                            else
                            {
                              paramContext = paramSQLiteDatabase;
                              if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_8.equals(paramString))
                              {
                                paramContext = paramSQLiteDatabase;
                                localJSONObject.put(getCustomDimensionKey(8), localObject1);
                              }
                              else
                              {
                                paramContext = paramSQLiteDatabase;
                                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_9.equals(paramString))
                                {
                                  paramContext = paramSQLiteDatabase;
                                  localJSONObject.put(getCustomDimensionKey(9), localObject1);
                                }
                                else
                                {
                                  paramContext = paramSQLiteDatabase;
                                  if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_10.equals(paramString))
                                  {
                                    paramContext = paramSQLiteDatabase;
                                    localJSONObject.put(getCustomDimensionKey(10), localObject1);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
                continue;
              }
              if (paramSQLiteDatabase == null) {
                break label3930;
              }
              localObject1 = localCursor;
              paramSQLiteDatabase.close();
            }
            finally
            {
              if (paramContext != null)
              {
                localObject1 = localCursor;
                paramContext.close();
              }
              localObject1 = localCursor;
            }
          }
          localObject1 = localCursor;
          if (!OPT_IN_EVENT.equals(localObject2))
          {
            localObject1 = localCursor;
            if (!OPT_OUT_EVENT.equals(localObject2)) {}
          }
          else
          {
            localObject1 = localCursor;
            localJSONObject.put("dt", "o");
            localObject1 = localCursor;
            localJSONObject.put("u", paramString);
            localObject1 = localCursor;
            if (OPT_OUT_EVENT.equals(localObject2))
            {
              localObject1 = localCursor;
              paramSQLiteDatabase = Boolean.TRUE.toString();
            }
            else
            {
              localObject1 = localCursor;
              paramSQLiteDatabase = Boolean.FALSE.toString();
            }
            localObject1 = localCursor;
            localJSONObject.put("out", paramSQLiteDatabase);
            localObject1 = localCursor;
            localJSONObject.put("ct", Math.round(localCursor.getLong(localCursor.getColumnIndex("wall_time")) / 1000.0D));
            break label3943;
          }
          localObject1 = localCursor;
          if (FLOW_EVENT.equals(localObject2))
          {
            localObject1 = localCursor;
            localJSONObject.put("dt", "f");
            localObject1 = localCursor;
            localJSONObject.put("u", localCursor.getString(localCursor.getColumnIndexOrThrow("uuid")));
            localObject1 = localCursor;
            localJSONObject.put("ss", Math.round(l2 / 1000.0D));
            paramString = null;
            paramContext = paramString;
            try
            {
              localObject1 = String.format("%s = ? AND %s <= ?", new Object[] { "session_key_ref", "processed_in_blob" });
              paramContext = paramString;
              localObject2 = Long.toString(l1);
              paramContext = paramString;
              str = Long.toString(paramLong2);
              paramContext = paramString;
              paramString = paramSQLiteDatabase.query("event_history", new String[] { "type", "processed_in_blob", "name" }, (String)localObject1, new String[] { localObject2, str }, null, null, "_id");
              paramContext = paramString;
              localObject1 = new JSONArray();
              paramContext = paramString;
              localObject2 = new JSONArray();
              paramContext = paramString;
              if (paramString.moveToNext())
              {
                paramContext = paramString;
                str = paramString.getString(paramString.getColumnIndexOrThrow("name"));
                paramContext = paramString;
                if (paramString.getInt(paramString.getColumnIndexOrThrow("type")) != 0) {
                  break label3933;
                }
                paramSQLiteDatabase = "e";
                paramContext = paramString;
                if (paramLong2 == paramString.getLong(paramString.getColumnIndexOrThrow("processed_in_blob")))
                {
                  paramContext = paramString;
                  ((JSONArray)localObject1).put(new JSONObject().put(paramSQLiteDatabase, str));
                  break label3940;
                }
                paramContext = paramString;
                ((JSONArray)localObject2).put(new JSONObject().put(paramSQLiteDatabase, str));
                break label3940;
              }
              paramContext = paramString;
              localJSONObject.put("nw", localObject1);
              paramContext = paramString;
              localJSONObject.put("od", localObject2);
              if (paramString == null) {
                break label3943;
              }
              localObject1 = localCursor;
              paramString.close();
            }
            finally
            {
              if (paramContext != null)
              {
                localObject1 = localCursor;
                paramContext.close();
              }
              localObject1 = localCursor;
            }
          }
          localObject1 = localCursor;
          localJSONObject.put("dt", "e");
          localObject1 = localCursor;
          localJSONObject.put("ct", Math.round(localCursor.getLong(localCursor.getColumnIndex("wall_time")) / 1000.0D));
          localObject1 = localCursor;
          localJSONObject.put("u", localCursor.getString(localCursor.getColumnIndexOrThrow("uuid")));
          localObject1 = localCursor;
          localJSONObject.put("su", str);
          localObject1 = localCursor;
          localJSONObject.put("n", ((String)localObject2).substring(paramContext.getPackageName().length() + 1, ((String)localObject2).length()));
          localObject1 = localCursor;
          paramLong2 = localCursor.getLong(localCursor.getColumnIndex("clv_increase"));
          if (paramLong2 != 0L)
          {
            localObject1 = localCursor;
            localJSONObject.put("v", paramLong2);
          }
          localObject1 = localCursor;
          if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lat")))
          {
            localObject1 = localCursor;
            if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("event_lng")))
            {
              localObject1 = localCursor;
              d1 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lat"));
              localObject1 = localCursor;
              d2 = localCursor.getDouble(localCursor.getColumnIndexOrThrow("event_lng"));
              if ((d1 != 0.0D) && (d2 != 0.0D))
              {
                localObject1 = localCursor;
                localJSONObject.put("lat", d1);
                localObject1 = localCursor;
                localJSONObject.put("lng", d2);
              }
            }
          }
          localObject1 = localCursor;
          if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("customer_id")))
          {
            localObject1 = localCursor;
            paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("customer_id"));
            localObject1 = localCursor;
            localObject2 = localCursor.getString(localCursor.getColumnIndexOrThrow("user_type"));
            localObject1 = localCursor;
            localJSONObject.put("cid", paramString);
            localObject1 = localCursor;
            localJSONObject.put("utp", localObject2);
          }
          localObject1 = localCursor;
          if (!localCursor.isNull(localCursor.getColumnIndexOrThrow("ids")))
          {
            localObject1 = localCursor;
            localJSONObject.put("ids", new JSONObject(localCursor.getString(localCursor.getColumnIndexOrThrow("ids"))));
          }
          paramString = null;
          try
          {
            localObject2 = paramSQLiteDatabase.query("attributes", null, String.format("%s = ?", new Object[] { "events_key_ref" }), new String[] { Long.toString(paramLong1) }, null, null, null);
            paramString = (String)localObject2;
            i = ((Cursor)localObject2).getColumnIndexOrThrow("attribute_key");
            paramString = (String)localObject2;
            j = ((Cursor)localObject2).getColumnIndexOrThrow("attribute_value");
            paramString = (String)localObject2;
            if (((Cursor)localObject2).moveToNext())
            {
              paramString = (String)localObject2;
              localObject1 = ((Cursor)localObject2).getString(i);
              paramString = (String)localObject2;
              str = ((Cursor)localObject2).getString(j);
              paramString = (String)localObject2;
              if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_1.equals(localObject1))
              {
                paramString = (String)localObject2;
                localJSONObject.put(getCustomDimensionKey(1), str);
              }
              else
              {
                paramString = (String)localObject2;
                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_2.equals(localObject1))
                {
                  paramString = (String)localObject2;
                  localJSONObject.put(getCustomDimensionKey(2), str);
                }
                else
                {
                  paramString = (String)localObject2;
                  if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_3.equals(localObject1))
                  {
                    paramString = (String)localObject2;
                    localJSONObject.put(getCustomDimensionKey(3), str);
                  }
                  else
                  {
                    paramString = (String)localObject2;
                    if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_4.equals(localObject1))
                    {
                      paramString = (String)localObject2;
                      localJSONObject.put(getCustomDimensionKey(4), str);
                    }
                    else
                    {
                      paramString = (String)localObject2;
                      if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_5.equals(localObject1))
                      {
                        paramString = (String)localObject2;
                        localJSONObject.put(getCustomDimensionKey(5), str);
                      }
                      else
                      {
                        paramString = (String)localObject2;
                        if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_6.equals(localObject1))
                        {
                          paramString = (String)localObject2;
                          localJSONObject.put(getCustomDimensionKey(6), str);
                        }
                        else
                        {
                          paramString = (String)localObject2;
                          if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_7.equals(localObject1))
                          {
                            paramString = (String)localObject2;
                            localJSONObject.put(getCustomDimensionKey(7), str);
                          }
                          else
                          {
                            paramString = (String)localObject2;
                            if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_8.equals(localObject1))
                            {
                              paramString = (String)localObject2;
                              localJSONObject.put(getCustomDimensionKey(8), str);
                            }
                            else
                            {
                              paramString = (String)localObject2;
                              if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_9.equals(localObject1))
                              {
                                paramString = (String)localObject2;
                                localJSONObject.put(getCustomDimensionKey(9), str);
                              }
                              else
                              {
                                paramString = (String)localObject2;
                                if (AttributesDbColumns.ATTRIBUTE_CUSTOM_DIMENSION_10.equals(localObject1))
                                {
                                  paramString = (String)localObject2;
                                  localJSONObject.put(getCustomDimensionKey(10), str);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              continue;
            }
            if (localObject2 != null)
            {
              localObject1 = localCursor;
              ((Cursor)localObject2).close();
            }
          }
          finally
          {
            if (paramString != null)
            {
              localObject1 = localCursor;
              paramString.close();
            }
            localObject1 = localCursor;
          }
          localObject1 = localCursor;
          paramSQLiteDatabase = convertAttributesToJson(paramSQLiteDatabase, paramContext, paramLong1);
          if (paramSQLiteDatabase == null) {
            break label3943;
          }
          localObject1 = localCursor;
          localJSONObject.put("attrs", paramSQLiteDatabase);
          break label3943;
        }
        localObject1 = localCursor;
        throw new RuntimeException();
      }
      finally
      {
        Cursor localCursor;
        if (localObject1 == null) {
          continue;
        }
        ((Cursor)localObject1).close();
      }
      if (localCursor != null)
      {
        localCursor.close();
        return localJSONObject;
      }
      return localJSONObject;
      break label3943;
      break label3943;
      paramSQLiteDatabase = "s";
      continue;
    }
  }
  
  private static long getApiKeyCreationTime(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.query("api_keys", null, String.format("%s = ?", new Object[] { "api_key" }), new String[] { paramString }, null, null, null);
      localSQLiteDatabase = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        int i = Math.round((float)paramSQLiteDatabase.getLong(paramSQLiteDatabase.getColumnIndexOrThrow("created_time")) / 1000.0F);
        long l = i;
        return l;
      }
      localSQLiteDatabase = paramSQLiteDatabase;
      throw new RuntimeException("API key entry couldn't be found");
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
  }
  
  private static JSONObject getAttributesFromSession(SQLiteDatabase paramSQLiteDatabase, String paramString, long paramLong)
  {
    Object localObject1 = null;
    try
    {
      Cursor localCursor = paramSQLiteDatabase.query("sessions", null, String.format("%s = ?", new Object[] { "_id" }), new String[] { Long.toString(paramLong) }, null, null, null);
      localObject1 = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject1 = localCursor;
        JSONObject localJSONObject = new JSONObject();
        localObject1 = localCursor;
        localJSONObject.put("av", localCursor.getString(localCursor.getColumnIndexOrThrow("app_version")));
        localObject1 = localCursor;
        localJSONObject.put("dac", localCursor.getString(localCursor.getColumnIndexOrThrow("network_type")));
        localObject1 = localCursor;
        Object localObject2 = localCursor.getString(localCursor.getColumnIndexOrThrow("device_android_id_hash"));
        localObject1 = localCursor;
        if (!"".equals(localObject2))
        {
          localObject1 = localCursor;
          localJSONObject.put("du", localObject2);
        }
        localObject1 = localCursor;
        localJSONObject.put("dc", localCursor.getString(localCursor.getColumnIndexOrThrow("device_country")));
        localObject1 = localCursor;
        localJSONObject.put("dma", localCursor.getString(localCursor.getColumnIndexOrThrow("device_manufacturer")));
        localObject1 = localCursor;
        localJSONObject.put("dmo", localCursor.getString(localCursor.getColumnIndexOrThrow("device_model")));
        localObject1 = localCursor;
        localJSONObject.put("dov", localCursor.getString(localCursor.getColumnIndexOrThrow("android_version")));
        localObject1 = localCursor;
        localJSONObject.put("dp", "Android");
        localObject1 = localCursor;
        if (localCursor.isNull(localCursor.getColumnIndexOrThrow("device_serial_number_hash")))
        {
          localObject1 = localCursor;
          localObject2 = JSONObject.NULL;
        }
        else
        {
          localObject1 = localCursor;
          localObject2 = localCursor.getString(localCursor.getColumnIndexOrThrow("device_serial_number_hash"));
        }
        localObject1 = localCursor;
        localJSONObject.put("dms", localObject2);
        localObject1 = localCursor;
        localJSONObject.put("dsdk", localCursor.getString(localCursor.getColumnIndexOrThrow("android_sdk")));
        localObject1 = localCursor;
        localJSONObject.put("au", paramString);
        localObject1 = localCursor;
        localJSONObject.put("lv", localCursor.getString(localCursor.getColumnIndexOrThrow("localytics_library_version")));
        localObject1 = localCursor;
        localJSONObject.put("dt", "a");
        localObject1 = localCursor;
        if (localCursor.isNull(localCursor.getColumnIndexOrThrow("device_android_id")))
        {
          localObject1 = localCursor;
          paramString = JSONObject.NULL;
        }
        else
        {
          localObject1 = localCursor;
          paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("device_android_id"));
        }
        localObject1 = localCursor;
        localJSONObject.put("caid", paramString);
        localObject1 = localCursor;
        if (localCursor.isNull(localCursor.getColumnIndexOrThrow("device_advertising_id")))
        {
          localObject1 = localCursor;
          paramString = JSONObject.NULL;
        }
        else
        {
          localObject1 = localCursor;
          paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("device_advertising_id"));
        }
        localObject1 = localCursor;
        localJSONObject.put("gcadid", paramString);
        localObject1 = localCursor;
        paramString = localCursor.getString(localCursor.getColumnIndexOrThrow("iu"));
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("iu", paramString);
        }
        localObject1 = localCursor;
        localJSONObject.put("dlc", localCursor.getString(localCursor.getColumnIndexOrThrow("locale_country")));
        localObject1 = localCursor;
        localJSONObject.put("dll", localCursor.getString(localCursor.getColumnIndexOrThrow("locale_language")));
        localObject1 = localCursor;
        localJSONObject.put("nca", localCursor.getString(localCursor.getColumnIndexOrThrow("network_carrier")));
        localObject1 = localCursor;
        localJSONObject.put("nc", localCursor.getString(localCursor.getColumnIndexOrThrow("network_country")));
        localObject1 = localCursor;
        paramString = getStringFromAppInfo(paramSQLiteDatabase, "fb_attribution");
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("fbat", paramString);
        }
        localObject1 = localCursor;
        paramString = getStringFromAppInfo(paramSQLiteDatabase, "play_attribution");
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("aurl", paramString);
        }
        localObject1 = localCursor;
        paramString = getStringFromAppInfo(paramSQLiteDatabase, "registration_id");
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("push", paramString);
        }
        localObject1 = localCursor;
        paramString = getStringFromAppInfo(paramSQLiteDatabase, "first_android_id");
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("aid", paramString);
        }
        localObject1 = localCursor;
        paramString = getStringFromAppInfo(paramSQLiteDatabase, "first_advertising_id");
        if (paramString != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("gadid", paramString);
        }
        localObject1 = localCursor;
        paramSQLiteDatabase = getStringFromAppInfo(paramSQLiteDatabase, "package_name");
        if (paramSQLiteDatabase != null)
        {
          localObject1 = localCursor;
          localJSONObject.put("pkg", paramSQLiteDatabase);
        }
        return localJSONObject;
      }
      return null;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
  }
  
  private static String getCustomDimensionKey(int paramInt)
  {
    return String.format("%s%s", new Object[] { "c", String.valueOf(paramInt - 1) });
  }
  
  private static long getElapsedTimeSinceLastSession(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      String str1 = String.format("%s = ?", new Object[] { "_id" });
      localObject1 = localObject2;
      String str2 = Long.toString(paramLong);
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.query("sessions", new String[] { "elapsed" }, str1, new String[] { str2 }, null, null, null);
      localObject1 = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localObject1 = paramSQLiteDatabase;
        paramLong = paramSQLiteDatabase.getLong(paramSQLiteDatabase.getColumnIndexOrThrow("elapsed"));
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return paramLong;
      }
      localObject1 = paramSQLiteDatabase;
      throw new RuntimeException();
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
  }
  
  private static JSONObject getIdentifiers(SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject1 = null;
    try
    {
      Cursor localCursor = paramSQLiteDatabase.query("identifiers", null, null, null, null, null, null);
      Object localObject2;
      for (paramSQLiteDatabase = null;; paramSQLiteDatabase = (SQLiteDatabase)localObject2)
      {
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject2 = paramSQLiteDatabase;
        if (paramSQLiteDatabase == null)
        {
          localObject1 = localCursor;
          localObject2 = new JSONObject();
        }
        localObject1 = localCursor;
        ((JSONObject)localObject2).put(localCursor.getString(localCursor.getColumnIndexOrThrow("key")), localCursor.getString(localCursor.getColumnIndexOrThrow("value")));
      }
      return paramSQLiteDatabase;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.close();
      }
    }
  }
  
  private static long getSessionIdForBlobId(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    Cursor localCursor = null;
    Object localObject = localCursor;
    String str1;
    String str2;
    try
    {
      str1 = String.format("%s = ?", new Object[] { "upload_blobs_key_ref" });
      localObject = localCursor;
      str2 = Long.toString(paramLong);
      localObject = localCursor;
      localCursor = paramSQLiteDatabase.query("upload_blob_events", new String[] { "events_key_ref" }, str1, new String[] { str2 }, null, null, null);
      localObject = localCursor;
      if (localCursor.moveToFirst())
      {
        localObject = localCursor;
        paramLong = localCursor.getLong(localCursor.getColumnIndexOrThrow("events_key_ref"));
      }
      else
      {
        if (localCursor != null) {
          localCursor.close();
        }
        return -1L;
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
    localCursor = null;
    localObject = localCursor;
    try
    {
      str1 = String.format("%s = ?", new Object[] { "_id" });
      localObject = localCursor;
      str2 = Long.toString(paramLong);
      localObject = localCursor;
      paramSQLiteDatabase = paramSQLiteDatabase.query("events", new String[] { "session_key_ref" }, str1, new String[] { str2 }, null, null, null);
      localObject = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localObject = paramSQLiteDatabase;
        paramLong = paramSQLiteDatabase.getLong(paramSQLiteDatabase.getColumnIndexOrThrow("session_key_ref"));
      }
      else
      {
        localObject = paramSQLiteDatabase;
        throw new RuntimeException("No session associated with event");
      }
      if (paramSQLiteDatabase != null)
      {
        paramSQLiteDatabase.close();
        return paramLong;
      }
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
    return paramLong;
  }
  
  private static long getSessionIdForEventId(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      String str1 = String.format("%s = ?", new Object[] { "_id" });
      localObject1 = localObject2;
      String str2 = Long.toString(paramLong);
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.query("events", new String[] { "session_key_ref" }, str1, new String[] { str2 }, null, null, null);
      localObject1 = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localObject1 = paramSQLiteDatabase;
        paramLong = paramSQLiteDatabase.getLong(paramSQLiteDatabase.getColumnIndexOrThrow("session_key_ref"));
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return paramLong;
      }
      localObject1 = paramSQLiteDatabase;
      throw new RuntimeException();
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
  }
  
  private static long getSessionStartTime(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      String str1 = String.format("%s = ?", new Object[] { "_id" });
      localObject1 = localObject2;
      String str2 = Long.toString(paramLong);
      localObject1 = localObject2;
      paramSQLiteDatabase = paramSQLiteDatabase.query("sessions", new String[] { "session_start_wall_time" }, str1, new String[] { str2 }, null, null, null);
      localObject1 = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localObject1 = paramSQLiteDatabase;
        paramLong = paramSQLiteDatabase.getLong(paramSQLiteDatabase.getColumnIndexOrThrow("session_start_wall_time"));
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return paramLong;
      }
      localObject1 = paramSQLiteDatabase;
      throw new RuntimeException();
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
  }
  
  private static String getSessionUuid(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    String str1 = null;
    Object localObject = str1;
    try
    {
      String str2 = String.format("%s = ?", new Object[] { "_id" });
      localObject = str1;
      String str3 = Long.toString(paramLong);
      localObject = str1;
      paramSQLiteDatabase = paramSQLiteDatabase.query("sessions", new String[] { "uuid" }, str2, new String[] { str3 }, null, null, null);
      localObject = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localObject = paramSQLiteDatabase;
        str1 = paramSQLiteDatabase.getString(paramSQLiteDatabase.getColumnIndexOrThrow("uuid"));
        if (paramSQLiteDatabase != null) {
          paramSQLiteDatabase.close();
        }
        return str1;
      }
      localObject = paramSQLiteDatabase;
      throw new RuntimeException();
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  private static String getStringFromAppInfo(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      paramSQLiteDatabase = paramSQLiteDatabase.query("info", null, null, null, null, null, null);
      localSQLiteDatabase = paramSQLiteDatabase;
      if (paramSQLiteDatabase.moveToFirst())
      {
        localSQLiteDatabase = paramSQLiteDatabase;
        paramString = paramSQLiteDatabase.getString(paramSQLiteDatabase.getColumnIndexOrThrow(paramString));
        return paramString;
      }
    }
    finally
    {
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.close();
      }
    }
    return null;
  }
  
  static void preUploadBuildBlobs(SQLiteDatabase paramSQLiteDatabase)
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = null;
    Object localObject4 = null;
    Object localObject2 = localObject4;
    for (;;)
    {
      Object localObject3;
      try
      {
        localObject3 = paramSQLiteDatabase.query("events", PROJECTION_UPLOAD_EVENTS, null, null, null, null, EVENTS_SORT_ORDER);
        localObject1 = localObject3;
        localObject2 = localObject4;
        localObject4 = paramSQLiteDatabase.query("upload_blob_events", PROJECTION_UPLOAD_BLOBS, null, null, null, null, UPLOAD_BLOBS_EVENTS_SORT_ORDER);
        localObject1 = localObject3;
        localObject2 = localObject4;
        int i = ((Cursor)localObject3).getColumnIndexOrThrow("_id");
        localObject1 = localObject3;
        localObject2 = localObject4;
        Iterator localIterator = new CursorJoiner((Cursor)localObject3, JOINER_ARG_UPLOAD_EVENTS_COLUMNS, (Cursor)localObject4, PROJECTION_UPLOAD_BLOBS).iterator();
        localObject1 = localObject3;
        localObject2 = localObject4;
        if (localIterator.hasNext())
        {
          localObject1 = localObject3;
          localObject2 = localObject4;
          CursorJoiner.Result localResult = (CursorJoiner.Result)localIterator.next();
          localObject1 = localObject3;
          localObject2 = localObject4;
          switch (1.$SwitchMap$android$database$CursorJoiner$Result[localResult.ordinal()])
          {
          case 1: 
            localObject1 = localObject3;
            localObject2 = localObject4;
            if (CLOSE_EVENT.equals(((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("event_name"))))
            {
              localObject1 = localObject3;
              localObject2 = localObject4;
              if (System.currentTimeMillis() - ((Cursor)localObject3).getLong(((Cursor)localObject3).getColumnIndexOrThrow("wall_time")) < Constants.SESSION_EXPIRATION) {
                break;
              }
            }
            else
            {
              localObject1 = localObject3;
              localObject2 = localObject4;
              localHashSet.add(Long.valueOf(((Cursor)localObject3).getLong(i)));
            }
          case 2: 
          case 3: 
            continue;
          }
        }
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
      if (localHashSet.size() > 0)
      {
        localObject1 = new ContentValues();
        ((ContentValues)localObject1).put("uuid", UUID.randomUUID().toString());
        localObject2 = Long.valueOf(paramSQLiteDatabase.insert("upload_blobs", null, (ContentValues)localObject1));
        ((ContentValues)localObject1).clear();
        localObject3 = localHashSet.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (Long)((Iterator)localObject3).next();
          ((ContentValues)localObject1).put("upload_blobs_key_ref", (Long)localObject2);
          ((ContentValues)localObject1).put("events_key_ref", (Long)localObject4);
          paramSQLiteDatabase.insert("upload_blob_events", null, (ContentValues)localObject1);
          ((ContentValues)localObject1).clear();
        }
        ((ContentValues)localObject1).put("processed_in_blob", (Long)localObject2);
        paramSQLiteDatabase.update("event_history", (ContentValues)localObject1, SELECTION_UPLOAD_NULL_BLOBS, null);
        ((ContentValues)localObject1).clear();
      }
      return;
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramSQLiteDatabase == null) {
      throw new IllegalArgumentException("db cannot be null");
    }
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
    Localytics.Log.v(String.format("SQLite library version is: %s", new Object[] { DatabaseUtils.stringForQuery(paramSQLiteDatabase, "select sqlite_version()", null) }));
    if (!paramSQLiteDatabase.isReadOnly()) {
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys = ON;");
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 3)
    {
      paramSQLiteDatabase.delete("upload_blob_events", null, null);
      paramSQLiteDatabase.delete("event_history", null, null);
      paramSQLiteDatabase.delete("upload_blobs", null, null);
      paramSQLiteDatabase.delete("attributes", null, null);
      paramSQLiteDatabase.delete("events", null, null);
      paramSQLiteDatabase.delete("sessions", null, null);
    }
    if (paramInt1 < 4) {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "sessions", "iu" }));
    }
    if (paramInt1 < 5) {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "sessions", "device_wifi_mac_hash" }));
    }
    Object localObject1;
    Object localObject3;
    ContentValues localContentValues;
    String str;
    Object localObject4;
    if (paramInt1 < 6)
    {
      localObject1 = null;
      try
      {
        localObject3 = paramSQLiteDatabase.query("attributes", new String[] { "_id", "attribute_key" }, null, null, null, null, null);
        localObject1 = localObject3;
        paramInt2 = ((Cursor)localObject3).getColumnIndexOrThrow("_id");
        localObject1 = localObject3;
        int i = ((Cursor)localObject3).getColumnIndexOrThrow("attribute_key");
        localObject1 = localObject3;
        localContentValues = new ContentValues();
        localObject1 = localObject3;
        str = String.format("%s = ?", new Object[] { "_id" });
        localObject1 = localObject3;
        localObject4 = new String[1];
        localObject1 = localObject3;
        ((Cursor)localObject3).moveToPosition(-1);
        for (;;)
        {
          localObject1 = localObject3;
          if (!((Cursor)localObject3).moveToNext()) {
            break;
          }
          localObject1 = localObject3;
          localContentValues.put("attribute_key", String.format("%s:%s", new Object[] { Localytics.appContext.getPackageName(), ((Cursor)localObject3).getString(i) }));
          localObject1 = localObject3;
          localObject4[0] = Long.toString(((Cursor)localObject3).getLong(paramInt2));
          localObject1 = localObject3;
          paramSQLiteDatabase.update("attributes", localContentValues, str, (String[])localObject4);
          localObject1 = localObject3;
          localContentValues.clear();
        }
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
    }
    if (paramInt1 < 7)
    {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s INTEGER);", new Object[] { "info", "fb_attribution", "first_run" }));
      localObject1 = new ContentValues();
      ((ContentValues)localObject1).putNull("fb_attribution");
      ((ContentValues)localObject1).put("first_run", Boolean.FALSE);
      paramSQLiteDatabase.insertOrThrow("info", null, (ContentValues)localObject1);
    }
    if (paramInt1 < 8) {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);", new Object[] { "identifiers", "_id", "key", "value" }));
    }
    if (paramInt1 < 9) {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 0;", new Object[] { "events", "clv_increase" }));
    }
    if (paramInt1 < 10) {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "play_attribution" }));
    }
    if (paramInt1 < 11)
    {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "registration_id" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "registration_version" }));
    }
    if (paramInt1 < 12)
    {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "first_android_id" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "first_telephony_id" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "package_name" }));
      localObject1 = new ContentValues();
      ((ContentValues)localObject1).put("first_android_id", DatapointHelper.getAndroidIdOrNull());
      ((ContentValues)localObject1).put("first_telephony_id", DatapointHelper.getTelephonyDeviceIdOrNull());
      ((ContentValues)localObject1).put("package_name", Localytics.appContext.getPackageName());
      paramSQLiteDatabase.update("info", (ContentValues)localObject1, null, null);
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "sessions", "device_android_id" }));
    }
    if (paramInt1 < 13)
    {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s REAL;", new Object[] { "events", "event_lat" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s REAL;", new Object[] { "events", "event_lng" }));
    }
    if (paramInt1 < 14)
    {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s INTEGER, %s INTEGER NOT NULL, %s TEXT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL)", new Object[] { "amp_rules", "_id", "campaign_id", "expiration", "display_seconds", "display_session", "version", "phone_location", "phone_size_width", "phone_size_height", "tablet_location", "tablet_size_width", "tablet_size_height", "time_to_display", "internet_required", "ab_test", "rule_name", "location", "devices" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "amp_ruleevent", "_id", "event_name", "rule_id_ref", "amp_rules", "_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER NOT NULL DEFAULT 0, %s INTEGER NOT NULL);", new Object[] { "amp_displayed", "_id", "displayed", "campaign_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "amp_conditions", "_id", "attribute_name", "operator", "rule_id_ref", "amp_rules", "_id" }));
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);", new Object[] { "amp_condition_values", "_id", "value", "condition_id_ref", "amp_conditions", "_id" }));
    }
    if (paramInt1 < 15) {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);", new Object[] { "custom_dimensions", "_id", "custom_dimension_key", "custom_dimension_value" }));
    }
    if (paramInt1 < 16)
    {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "first_advertising_id" }));
      localObject3 = new ContentValues();
      localObject1 = DatapointHelper.getAdvertisingInfo();
      if (localObject1 == null) {
        localObject1 = null;
      } else {
        localObject1 = ((DatapointHelper.AdvertisingInfo)localObject1).id;
      }
      ((ContentValues)localObject3).put("first_advertising_id", (String)localObject1);
      paramSQLiteDatabase.update("info", (ContentValues)localObject3, null, null);
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "sessions", "device_advertising_id" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s INTEGER;", new Object[] { "info", "push_disabled" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "info", "sender_id" }));
    }
    if (paramInt1 < 17)
    {
      paramSQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s INTEGER)", new Object[] { "profile", "_id", "attribute", "action" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "events", "customer_id" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "events", "user_type" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT;", new Object[] { "events", "ids" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s INTEGER", new Object[] { "info", "last_session_open_time" }));
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL CHECK (%s >= 0) DEFAULT 0", new Object[] { "sessions", "elapsed", "elapsed" }));
    }
    if (paramInt1 < 18)
    {
      paramSQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s TEXT", new Object[] { "profile", "customer_id" }));
      localObject1 = null;
      localContentValues = new ContentValues();
      try
      {
        localObject3 = paramSQLiteDatabase.query("profile", null, null, null, null, null, null);
        for (;;)
        {
          localObject1 = localObject3;
          if (!((Cursor)localObject3).moveToNext()) {
            break;
          }
          localObject1 = localObject3;
          str = String.valueOf(((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndexOrThrow("_id")));
          localObject1 = localObject3;
          try
          {
            localObject4 = new JSONObject(((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("attribute")));
            localObject1 = localObject3;
            localContentValues.put("attribute", ((JSONObject)localObject4).getString("attributes"));
            localObject1 = localObject3;
            localContentValues.put("customer_id", ((JSONObject)localObject4).getString("id"));
            localObject1 = localObject3;
            paramSQLiteDatabase.update("profile", localContentValues, String.format("%s = %s", new Object[] { "_id", str }), null);
            localObject1 = localObject3;
            localContentValues.clear();
          }
          catch (Exception localException)
          {
            localObject2 = localObject3;
            paramSQLiteDatabase.delete("profile", String.format("%s = %s", new Object[] { "_id", str }), null);
          }
        }
        if (localObject3 != null)
        {
          ((Cursor)localObject3).close();
          return;
        }
      }
      finally
      {
        Object localObject2;
        if (localObject2 != null) {
          localObject2.close();
        }
      }
    }
  }
  
  static final class AmpConditionValuesDbColumns
    implements BaseColumns
  {
    static final String CONDITION_ID_REF = "condition_id_ref";
    static final String TABLE_NAME = "amp_condition_values";
    static final String VALUE = "value";
    
    private AmpConditionValuesDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class AmpConditionsDbColumns
    implements BaseColumns
  {
    static final String ATTRIBUTE_NAME = "attribute_name";
    static final String OPERATOR = "operator";
    static final String RULE_ID_REF = "rule_id_ref";
    static final String TABLE_NAME = "amp_conditions";
    
    private AmpConditionsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class AmpDisplayedDbColumns
    implements BaseColumns
  {
    static final String CAMPAIGN_ID = "campaign_id";
    static final String DISPLAYED = "displayed";
    static final String TABLE_NAME = "amp_displayed";
    
    private AmpDisplayedDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class AmpRuleEventDbColumns
    implements BaseColumns
  {
    static final String EVENT_NAME = "event_name";
    static final String RULE_ID_REF = "rule_id_ref";
    static final String TABLE_NAME = "amp_ruleevent";
    
    private AmpRuleEventDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class AmpRulesDbColumns
    implements BaseColumns
  {
    static final String AB_TEST = "ab_test";
    static final String CAMPAIGN_ID = "campaign_id";
    static final String DEVICES = "devices";
    static final String DISPLAY_SECONDS = "display_seconds";
    static final String DISPLAY_SESSION = "display_session";
    static final String EXPIRATION = "expiration";
    static final String INTERNET_REQUIRED = "internet_required";
    static final String LOCATION = "location";
    static final String PHONE_LOCATION = "phone_location";
    static final String PHONE_SIZE_HEIGHT = "phone_size_height";
    static final String PHONE_SIZE_WIDTH = "phone_size_width";
    static final String RULE_NAME = "rule_name";
    static final String TABLET_LOCATION = "tablet_location";
    static final String TABLET_SIZE_HEIGHT = "tablet_size_height";
    static final String TABLET_SIZE_WIDTH = "tablet_size_width";
    static final String TABLE_NAME = "amp_rules";
    static final String TIME_TO_DISPLAY = "time_to_display";
    static final String VERSION = "version";
    
    private AmpRulesDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class ApiKeysDbColumns
    implements BaseColumns
  {
    static final String API_KEY = "api_key";
    static final String CREATED_TIME = "created_time";
    static final String OPT_OUT = "opt_out";
    static final String TABLE_NAME = "api_keys";
    static final String UUID = "uuid";
    
    private ApiKeysDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class AttributesDbColumns
    implements BaseColumns
  {
    static final String ATTRIBUTE_CUSTOM_DIMENSION_1 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_0" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_10 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_9" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_2 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_1" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_3 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_2" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_4 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_3" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_5 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_4" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_6 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_5" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_7 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_6" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_8 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_7" });
    static final String ATTRIBUTE_CUSTOM_DIMENSION_9 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_8" });
    static final String ATTRIBUTE_FORMAT = "%s:%s";
    static final String ATTRIBUTE_KEY = "attribute_key";
    static final String ATTRIBUTE_VALUE = "attribute_value";
    static final String EVENTS_KEY_REF = "events_key_ref";
    static final String TABLE_NAME = "attributes";
    
    private AttributesDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class CustomDimensionsDbColumns
    implements BaseColumns
  {
    static final String CUSTOM_DIMENSION_1 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_0" });
    static final String CUSTOM_DIMENSION_10 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_9" });
    static final String CUSTOM_DIMENSION_2 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_1" });
    static final String CUSTOM_DIMENSION_3 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_2" });
    static final String CUSTOM_DIMENSION_4 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_3" });
    static final String CUSTOM_DIMENSION_5 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_4" });
    static final String CUSTOM_DIMENSION_6 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_5" });
    static final String CUSTOM_DIMENSION_7 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_6" });
    static final String CUSTOM_DIMENSION_8 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_7" });
    static final String CUSTOM_DIMENSION_9 = String.format("%s:%s", new Object[] { "com.localytics.android", "custom_dimension_8" });
    static final String CUSTOM_DIMENSION_FORMAT = "%s:%s";
    static final String CUSTOM_DIMENSION_KEY = "custom_dimension_key";
    static final String CUSTOM_DIMENSION_VALUE = "custom_dimension_value";
    static final String TABLE_NAME = "custom_dimensions";
    
    private CustomDimensionsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class EventFlow
  {
    static final String KEY_DATA_TYPE = "dt";
    static final String KEY_EVENT_UUID = "u";
    static final String KEY_FLOW_NEW = "nw";
    static final String KEY_FLOW_OLD = "od";
    static final String KEY_SESSION_START_TIME = "ss";
    static final String VALUE_DATA_TYPE = "f";
    
    private EventFlow()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
    
    static final class Element
    {
      static final String TYPE_EVENT = "e";
      static final String TYPE_SCREEN = "s";
      
      private Element()
      {
        throw new UnsupportedOperationException("This class is non-instantiable");
      }
    }
  }
  
  static final class EventHistoryDbColumns
    implements BaseColumns
  {
    static final String NAME = "name";
    static final String PROCESSED_IN_BLOB = "processed_in_blob";
    static final String SESSION_KEY_REF = "session_key_ref";
    static final String TABLE_NAME = "event_history";
    static final String TYPE = "type";
    static final int TYPE_EVENT = 0;
    static final int TYPE_SCREEN = 1;
    
    private EventHistoryDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class EventsDbColumns
    implements BaseColumns
  {
    static final String CLV_INCREASE = "clv_increase";
    static final String CUST_ID = "customer_id";
    static final String EVENT_NAME = "event_name";
    static final String IDENTIFIERS = "ids";
    static final String LAT_NAME = "event_lat";
    static final String LNG_NAME = "event_lng";
    static final String REAL_TIME = "real_time";
    static final String SESSION_KEY_REF = "session_key_ref";
    static final String TABLE_NAME = "events";
    static final String USER_TYPE = "user_type";
    static final String UUID = "uuid";
    static final String WALL_TIME = "wall_time";
    
    private EventsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class IdentifiersDbColumns
    implements BaseColumns
  {
    static final String KEY = "key";
    static final String TABLE_NAME = "identifiers";
    static final String VALUE = "value";
    
    private IdentifiersDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class InfoDbColumns
    implements BaseColumns
  {
    static final String FB_ATTRIBUTION = "fb_attribution";
    static final String FIRST_ADVERTISING_ID = "first_advertising_id";
    static final String FIRST_ANDROID_ID = "first_android_id";
    static final String FIRST_RUN = "first_run";
    static final String FIRST_TELEPHONY_ID = "first_telephony_id";
    static final String LAST_SESSION_OPEN_TIME = "last_session_open_time";
    static final String PACKAGE_NAME = "package_name";
    static final String PLAY_ATTRIBUTION = "play_attribution";
    static final String PUSH_DISABLED = "push_disabled";
    static final String REGISTRATION_ID = "registration_id";
    static final String REGISTRATION_VERSION = "registration_version";
    static final String SENDER_ID = "sender_id";
    static final String TABLE_NAME = "info";
    
    private InfoDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class ProfileDbColumns
    implements BaseColumns
  {
    static final String ACTION = "action";
    static final String ATTRIBUTE = "attribute";
    static final String CUSTOMER_ID = "customer_id";
    static final String TABLE_NAME = "profile";
    static final String USER_ID = "id";
    
    private ProfileDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class SessionsDbColumns
    implements BaseColumns
  {
    static final String ANDROID_SDK = "android_sdk";
    static final String ANDROID_VERSION = "android_version";
    static final String API_KEY_REF = "api_key_ref";
    static final String APP_VERSION = "app_version";
    static final String DEVICE_ADVERTISING_ID = "device_advertising_id";
    static final String DEVICE_ANDROID_ID = "device_android_id";
    static final String DEVICE_ANDROID_ID_HASH = "device_android_id_hash";
    static final String DEVICE_COUNTRY = "device_country";
    static final String DEVICE_MANUFACTURER = "device_manufacturer";
    static final String DEVICE_MODEL = "device_model";
    static final String DEVICE_SERIAL_NUMBER_HASH = "device_serial_number_hash";
    static final String DEVICE_TELEPHONY_ID = "device_telephony_id";
    static final String DEVICE_TELEPHONY_ID_HASH = "device_telephony_id_hash";
    static final String DEVICE_WIFI_MAC_HASH = "device_wifi_mac_hash";
    static final String ELAPSED_TIME_SINCE_LAST_SESSION = "elapsed";
    static final String LATITUDE = "latitude";
    static final String LOCALE_COUNTRY = "locale_country";
    static final String LOCALE_LANGUAGE = "locale_language";
    static final String LOCALYTICS_INSTALLATION_ID = "iu";
    static final String LOCALYTICS_LIBRARY_VERSION = "localytics_library_version";
    static final String LONGITUDE = "longitude";
    static final String NETWORK_CARRIER = "network_carrier";
    static final String NETWORK_COUNTRY = "network_country";
    static final String NETWORK_TYPE = "network_type";
    static final String SESSION_START_WALL_TIME = "session_start_wall_time";
    static final String TABLE_NAME = "sessions";
    static final String UUID = "uuid";
    
    private SessionsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class UploadBlobEventsDbColumns
    implements BaseColumns
  {
    static final String EVENTS_KEY_REF = "events_key_ref";
    static final String TABLE_NAME = "upload_blob_events";
    static final String UPLOAD_BLOBS_KEY_REF = "upload_blobs_key_ref";
    
    private UploadBlobEventsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
  
  static final class UploadBlobsDbColumns
    implements BaseColumns
  {
    static final String TABLE_NAME = "upload_blobs";
    static final String UUID = "uuid";
    
    private UploadBlobsDbColumns()
    {
      throw new UnsupportedOperationException("This class is non-instantiable");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MigrationDatabaseHelper
 * JD-Core Version:    0.7.0.1
 */