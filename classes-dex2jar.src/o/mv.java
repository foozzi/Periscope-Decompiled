package o;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;

class mv
  implements na.if
{
  private final TwitterAuthConfig PU;
  private final ProgressBar QC;
  private final WebView QD;
  final if QE;
  TwitterAuthToken QF;
  private final OAuth1aService QG;
  
  mv(ProgressBar paramProgressBar, WebView paramWebView, TwitterAuthConfig paramTwitterAuthConfig, OAuth1aService paramOAuth1aService, if paramif)
  {
    this.QC = paramProgressBar;
    this.QD = paramWebView;
    this.PU = paramTwitterAuthConfig;
    this.QG = paramOAuth1aService;
    this.QE = paramif;
  }
  
  private void bs()
  {
    this.QD.stopLoading();
    bt();
  }
  
  private void bt()
  {
    this.QC.setVisibility(8);
  }
  
  private void ˊ(nh paramnh)
  {
    pj.cd().ˏ("Twitter", "OAuth web view completed with an error", paramnh);
    ˊ(1, new ml("OAuth web view completed with an error"));
  }
  
  private void ˏ(Bundle paramBundle)
  {
    pj.cd().ˑ("Twitter", "OAuth web view completed successfully");
    if (paramBundle != null)
    {
      String str = paramBundle.getString("oauth_verifier");
      if (str != null)
      {
        pj.cd().ˑ("Twitter", "Converting the request token to an access token.");
        this.QG.ˊ(br(), this.QF, str);
        return;
      }
    }
    pj.cd().ˏ("Twitter", "Failed to get authorization, bundle incomplete " + paramBundle, null);
    ˊ(1, new ml("Failed to get authorization, bundle incomplete"));
  }
  
  void bp()
  {
    pj.cd().ˑ("Twitter", "Obtaining request token to start the sign in flow");
    this.QG.ˎ(bq());
  }
  
  lz<OAuthResponse> bq()
  {
    return new mw(this);
  }
  
  lz<OAuthResponse> br()
  {
    return new mx(this);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    bt();
    paramWebView.setVisibility(0);
  }
  
  protected void ˊ(int paramInt, ml paramml)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("auth_error", paramml);
    this.QE.ˊ(paramInt, localIntent);
  }
  
  void ˊ(WebView paramWebView, WebViewClient paramWebViewClient, String paramString, WebChromeClient paramWebChromeClient)
  {
    WebSettings localWebSettings = paramWebView.getSettings();
    localWebSettings.setAllowFileAccess(false);
    localWebSettings.setJavaScriptEnabled(true);
    paramWebView.setVerticalScrollBarEnabled(false);
    paramWebView.setHorizontalScrollBarEnabled(false);
    paramWebView.setWebViewClient(paramWebViewClient);
    paramWebView.loadUrl(paramString);
    paramWebView.setVisibility(4);
    paramWebView.setWebChromeClient(paramWebChromeClient);
  }
  
  public void ˋ(nh paramnh)
  {
    ˊ(paramnh);
    bs();
  }
  
  public void ᐝ(Bundle paramBundle)
  {
    ˏ(paramBundle);
    bs();
  }
  
  static abstract interface if
  {
    public abstract void ˊ(int paramInt, Intent paramIntent);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mv
 * JD-Core Version:    0.7.0.1
 */