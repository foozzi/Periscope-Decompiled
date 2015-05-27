package o;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Intent;
import tv.periscope.android.ui.broadcast.ViewerActivity;
import tv.periscope.android.ui.broadcast.ViewerActivity.ˊ;

public class ade
{
  private final Activity mActivity;
  
  public ade(Activity paramActivity)
  {
    this.mActivity = paramActivity;
  }
  
  public void ł(String paramString)
  {
    paramString = new Intent(this.mActivity, ViewerActivity.class).putExtra("e_b_id", paramString).putExtra("e_p_mode", ViewerActivity.ˊ.bDy);
    this.mActivity.startActivity(paramString, ActivityOptions.makeCustomAnimation(this.mActivity, 2130968588, 2130968587).toBundle());
  }
  
  public void ŗ(String paramString)
  {
    paramString = new Intent(this.mActivity, ViewerActivity.class).putExtra("e_b_id", paramString).putExtra("e_p_mode", ViewerActivity.ˊ.bDx);
    this.mActivity.startActivity(paramString, ActivityOptions.makeCustomAnimation(this.mActivity, 2130968588, 2130968587).toBundle());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ade
 * JD-Core Version:    0.7.0.1
 */