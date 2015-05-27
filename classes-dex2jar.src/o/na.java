package o;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

class na
  extends WebViewClient
{
  private final String QI;
  private final if QJ;
  
  public na(String paramString, if paramif)
  {
    this.QI = paramString;
    this.QJ = paramif;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    this.QJ.onPageFinished(paramWebView, paramString);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    this.QJ.ˋ(new nh(paramInt, paramString1, paramString2));
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    this.QJ.ˋ(new nh(paramSslError.getPrimaryError(), null, null));
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith(this.QI))
    {
      paramString = sv.ˊ(URI.create(paramString), false);
      paramWebView = new Bundle(paramString.size());
      paramString = paramString.entrySet().iterator();
      while (paramString.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramString.next();
        paramWebView.putString((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      this.QJ.ᐝ(paramWebView);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
  
  static abstract interface if
  {
    public abstract void onPageFinished(WebView paramWebView, String paramString);
    
    public abstract void ˋ(nh paramnh);
    
    public abstract void ᐝ(Bundle paramBundle);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.na
 * JD-Core Version:    0.7.0.1
 */