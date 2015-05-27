package o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.widget.TextView;
import com.twitter.sdk.android.core.identity.ShareEmailClient;

public class nc
  extends Activity
{
  nd QL;
  private mr QM;
  
  private ResultReceiver ˎ(Intent paramIntent)
  {
    paramIntent = (ResultReceiver)paramIntent.getParcelableExtra("result_receiver");
    if (paramIntent == null) {
      throw new IllegalArgumentException("ResultReceiver must not be null. This activity should not be started directly.");
    }
    return paramIntent;
  }
  
  private mr ˏ(Intent paramIntent)
  {
    long l = paramIntent.getLongExtra("session_id", -1L);
    paramIntent = (mr)mn.bd().bj().ᑊ(l);
    if (paramIntent == null) {
      throw new IllegalArgumentException("No TwitterSession for id:" + l);
    }
    return paramIntent;
  }
  
  public void onBackPressed()
  {
    this.QL.bw();
    super.onBackPressed();
  }
  
  public void onClickAllow(View paramView)
  {
    this.QL.bu();
    finish();
  }
  
  public void onClickNotNow(View paramView)
  {
    this.QL.bw();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(me.ˏ.tw__activity_share_email);
    try
    {
      paramBundle = getIntent();
      ResultReceiver localResultReceiver = ˎ(paramBundle);
      this.QM = ˏ(paramBundle);
      this.QL = new nd(new ShareEmailClient(this.QM), localResultReceiver);
      ˊ(this, (TextView)findViewById(me.ˎ.tw__share_email_desc));
      return;
    }
    catch (IllegalArgumentException paramBundle)
    {
      pj.cd().ˏ("Twitter", "Failed to create ShareEmailActivity.", paramBundle);
      finish();
    }
  }
  
  void ˊ(Context paramContext, TextView paramTextView)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramTextView.setText(getResources().getString(me.ᐝ.tw__share_email_desc, new Object[] { localPackageManager.getApplicationLabel(paramContext.getApplicationInfo()), this.QM.getUserName() }));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nc
 * JD-Core Version:    0.7.0.1
 */