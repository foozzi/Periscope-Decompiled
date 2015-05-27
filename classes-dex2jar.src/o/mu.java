package o;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;

public class mu
  extends Activity
  implements mv.if
{
  mv QB;
  private ProgressBar QC;
  private WebView QD;
  
  public void onBackPressed()
  {
    this.QB.ˊ(0, new ml("Authorization failed, request was canceled."));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(me.ˏ.tw__activity_oauth);
    this.QC = ((ProgressBar)findViewById(me.ˎ.tw__spinner));
    this.QD = ((WebView)findViewById(me.ˎ.tw__web_view));
    boolean bool;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("progress", false);
    } else {
      bool = true;
    }
    paramBundle = this.QC;
    int i;
    if (bool) {
      i = 0;
    } else {
      i = 8;
    }
    paramBundle.setVisibility(i);
    paramBundle = mn.bd();
    this.QB = new mv(this.QC, this.QD, (TwitterAuthConfig)getIntent().getParcelableExtra("auth_config"), new OAuth1aService(paramBundle, paramBundle.getSSLSocketFactory(), new nl()), this);
    this.QB.bp();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (this.QC.getVisibility() == 0) {
      paramBundle.putBoolean("progress", true);
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public void ˊ(int paramInt, Intent paramIntent)
  {
    setResult(paramInt, paramIntent);
    finish();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.mu
 * JD-Core Version:    0.7.0.1
 */