package com.localytics.android;

import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import java.util.Map;

final class JavaScriptClient
{
  private final Map<Integer, MarketingCallable> mCallbacks;
  
  JavaScriptClient(Map<Integer, MarketingCallable> paramMap)
  {
    this.mCallbacks = paramMap;
  }
  
  private Object invoke(int paramInt, Object[] paramArrayOfObject)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.mCallbacks != null)
    {
      MarketingCallable localMarketingCallable = (MarketingCallable)this.mCallbacks.get(Integer.valueOf(paramInt));
      localObject1 = localObject2;
      if (localMarketingCallable != null) {
        localObject1 = localMarketingCallable.call(paramArrayOfObject);
      }
    }
    return localObject1;
  }
  
  String getAttributes()
  {
    return (String)invoke(7, null);
  }
  
  Map<Integer, MarketingCallable> getCallbacks()
  {
    return this.mCallbacks;
  }
  
  String getCustomDimensions()
  {
    return (String)invoke(6, null);
  }
  
  String getIdentifiers()
  {
    return (String)invoke(5, null);
  }
  
  String getJsGlueCode()
  {
    return String.format("javascript:(function() {  var localyticsScript = document.createElement('script');  localyticsScript.type = 'text/javascript';  localyticsScript.text = '  localytics.identifers = %s;  localytics.customDimensions = %s;  localytics.attributes = %s;  localytics.libraryVersion = \"%s\";  localytics.tagEvent = function(event, attributes, customerValueIncrease) {     localytics.nativeTagEvent(event, JSON.stringify(attributes), JSON.stringify(customerValueIncrease));  };  localytics.setCustomDimension = function(number, value) {     if (number != null && value != null)        localytics.nativeSetCustomDimension(number, value);  };  window.open = function(url) {     if (url != null)        localytics.navigate(url);  };  localytics.close = function() {     localytics.nativeClose();  };';  document.getElementsByTagName('body')[0].appendChild(localyticsScript);})()", new Object[] { getIdentifiers(), getCustomDimensions(), getAttributes(), Localytics.getLibraryVersion() });
  }
  
  @JavascriptInterface
  public void nativeClose()
  {
    Localytics.Log.w("[JavaScriptClient]: nativeClose is being called");
    new Handler(Looper.getMainLooper()).post(new JavaScriptClient.1(this));
  }
  
  @JavascriptInterface
  public void nativeSetCustomDimension(long paramLong, String paramString)
  {
    Localytics.Log.w("[JavaScriptClient]: nativeSetCustomDimension is being called");
    invoke(8, new Object[] { Integer.valueOf((int)paramLong), paramString });
  }
  
  @JavascriptInterface
  public void nativeTagEvent(String paramString1, String paramString2, String paramString3)
  {
    Localytics.Log.w("[JavaScriptClient]: nativeTagEvent is being called");
    invoke(3, new Object[] { paramString1, paramString2, paramString3 });
  }
  
  @JavascriptInterface
  public void navigate(String paramString)
  {
    invoke(15, new String[] { paramString });
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.JavaScriptClient
 * JD-Core Version:    0.7.0.1
 */