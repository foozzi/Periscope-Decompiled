package o;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class adq
  extends Activity
  implements View.OnClickListener
{
  public void onBackPressed()
  {
    super.onBackPressed();
    overridePendingTransition(2130968586, 2130968591);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903131);
    Object localObject = getIntent().getExtras();
    paramBundle = ((Bundle)localObject).getString("e_title");
    localObject = ((Bundle)localObject).getString("e_url");
    ((amt)findViewById(2131427472)).setTitle(paramBundle);
    findViewById(2131427516).setOnClickListener(this);
    paramBundle = (WebView)findViewById(2131427612);
    paramBundle.getSettings().setJavaScriptEnabled(false);
    paramBundle.setWebViewClient(new adr(this));
    paramBundle.setWebChromeClient(new WebChromeClient());
    paramBundle.loadUrl((String)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adq
 * JD-Core Version:    0.7.0.1
 */