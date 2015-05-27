package o;

import org.json.JSONObject;

class tl
  implements tw
{
  private tf ʼ(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.getString("identifier");
    String str2 = paramJSONObject.getString("status");
    String str3 = paramJSONObject.getString("url");
    String str4 = paramJSONObject.getString("reports_url");
    boolean bool = paramJSONObject.optBoolean("update_required", false);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramJSONObject.has("icon"))
    {
      localObject1 = localObject2;
      if (paramJSONObject.getJSONObject("icon").has("hash")) {
        localObject1 = ʽ(paramJSONObject.getJSONObject("icon"));
      }
    }
    return new tf(str1, str2, str3, str4, bool, (td)localObject1);
  }
  
  private td ʽ(JSONObject paramJSONObject)
  {
    return new td(paramJSONObject.getString("hash"), paramJSONObject.getInt("width"), paramJSONObject.getInt("height"));
  }
  
  private tq ʾ(JSONObject paramJSONObject)
  {
    return new tq(paramJSONObject.optInt("log_buffer_size", 64000), paramJSONObject.optInt("max_chained_exception_depth", 8), paramJSONObject.optInt("max_custom_exception_events", 64), paramJSONObject.optInt("max_custom_key_value_pairs", 64), paramJSONObject.optInt("identifier_mask", 255), paramJSONObject.optBoolean("send_session_without_crash", false));
  }
  
  private tp ʿ(JSONObject paramJSONObject)
  {
    return new tp(paramJSONObject.optString("title", "Send Crash Report?"), paramJSONObject.optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), paramJSONObject.optString("send_button_title", "Send"), paramJSONObject.optBoolean("show_cancel_button", true), paramJSONObject.optString("cancel_button_title", "Don't Send"), paramJSONObject.optBoolean("show_always_send_button", true), paramJSONObject.optString("always_send_button_title", "Always Send"));
  }
  
  private tg ˈ(JSONObject paramJSONObject)
  {
    return new tg(paramJSONObject.optString("update_endpoint", tv.Zx), paramJSONObject.optInt("update_suspend_duration", 3600));
  }
  
  private long ˊ(qk paramqk, long paramLong, JSONObject paramJSONObject)
  {
    if (paramJSONObject.has("expires_at")) {
      return paramJSONObject.getLong("expires_at");
    }
    return paramqk.cy() + 1000L * paramLong;
  }
  
  private tn ͺ(JSONObject paramJSONObject)
  {
    return new tn(paramJSONObject.optBoolean("prompt_enabled", false), paramJSONObject.optBoolean("collect_logged_exceptions", true), paramJSONObject.optBoolean("collect_reports", true), paramJSONObject.optBoolean("collect_analytics", false));
  }
  
  private tc ι(JSONObject paramJSONObject)
  {
    return new tc(paramJSONObject.optString("url", "https://e.crashlytics.com/spi/v2/events"), paramJSONObject.optInt("flush_interval_secs", 600), paramJSONObject.optInt("max_byte_size_per_file", 8000), paramJSONObject.optInt("max_file_count_per_send", 1), paramJSONObject.optInt("max_pending_send_file_count", 100));
  }
  
  public JSONObject ʻ(JSONObject paramJSONObject)
  {
    paramJSONObject = new JSONObject(paramJSONObject.toString());
    paramJSONObject.getJSONObject("features").remove("collect_analytics");
    paramJSONObject.remove("analytics");
    return paramJSONObject;
  }
  
  public tu ˊ(qk paramqk, JSONObject paramJSONObject)
  {
    int i = paramJSONObject.optInt("settings_version", 0);
    int j = paramJSONObject.optInt("cache_duration", 3600);
    tf localtf = ʼ(paramJSONObject.getJSONObject("app"));
    tq localtq = ʾ(paramJSONObject.getJSONObject("session"));
    tp localtp = ʿ(paramJSONObject.getJSONObject("prompt"));
    tn localtn = ͺ(paramJSONObject.getJSONObject("features"));
    tc localtc = ι(paramJSONObject.getJSONObject("analytics"));
    tg localtg = ˈ(paramJSONObject.getJSONObject("beta"));
    return new tu(ˊ(paramqk, j, paramJSONObject), localtf, localtq, localtp, localtn, localtc, localtg, i, j);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.tl
 * JD-Core Version:    0.7.0.1
 */