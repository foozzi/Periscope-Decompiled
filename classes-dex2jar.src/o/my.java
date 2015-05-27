package o;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;

class my
  extends ms
{
  public my(TwitterAuthConfig paramTwitterAuthConfig, lz<mr> paramlz, int paramInt)
  {
    super(paramTwitterAuthConfig, paramlz, paramInt);
  }
  
  public boolean ˌ(Activity paramActivity)
  {
    paramActivity.startActivityForResult(ˍ(paramActivity), this.Qx);
    return true;
  }
  
  Intent ˍ(Activity paramActivity)
  {
    paramActivity = new Intent(paramActivity, mu.class);
    paramActivity.putExtra("auth_config", be());
    return paramActivity;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.my
 * JD-Core Version:    0.7.0.1
 */