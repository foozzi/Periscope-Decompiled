package o;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;

public abstract class ms
{
  protected final int Qx;
  private final TwitterAuthConfig Qy;
  private final lz<mr> Qz;
  
  ms(TwitterAuthConfig paramTwitterAuthConfig, lz<mr> paramlz, int paramInt)
  {
    this.Qy = paramTwitterAuthConfig;
    this.Qz = paramlz;
    this.Qx = paramInt;
  }
  
  TwitterAuthConfig be()
  {
    return this.Qy;
  }
  
  lz<mr> bl()
  {
    return this.Qz;
  }
  
  public boolean ˊ(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.Qx != paramInt1) {
      return false;
    }
    lz locallz = bl();
    if (locallz != null) {
      if (paramInt2 == -1)
      {
        String str1 = paramIntent.getStringExtra("tk");
        String str2 = paramIntent.getStringExtra("ts");
        String str3 = paramIntent.getStringExtra("screen_name");
        long l = paramIntent.getLongExtra("user_id", 0L);
        locallz.success(new mr(new TwitterAuthToken(str1, str2), l, str3), null);
      }
      else if ((paramIntent != null) && (paramIntent.hasExtra("auth_error")))
      {
        locallz.ˊ((ml)paramIntent.getSerializableExtra("auth_error"));
      }
      else
      {
        locallz.ˊ(new ml("Authorize failed."));
      }
    }
    return true;
  }
  
  public abstract boolean ˌ(Activity paramActivity);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ms
 * JD-Core Version:    0.7.0.1
 */