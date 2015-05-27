package o;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class ァ
  implements DialogInterface.OnClickListener
{
  private final Activity DO;
  private final Fragment DP;
  private final int DQ;
  private final Intent ṝ;
  
  public ァ(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    this.DO = paramActivity;
    this.DP = null;
    this.ṝ = paramIntent;
    this.DQ = paramInt;
  }
  
  public ァ(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    this.DO = null;
    this.DP = paramFragment;
    this.ṝ = paramIntent;
    this.DQ = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if ((this.ṝ != null) && (this.DP != null)) {
        this.DP.startActivityForResult(this.ṝ, this.DQ);
      } else if (this.ṝ != null) {
        this.DO.startActivityForResult(this.ṝ, this.DQ);
      }
      paramDialogInterface.dismiss();
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¡
 * JD-Core Version:    0.7.0.1
 */