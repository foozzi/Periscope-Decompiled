package o;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import tv.periscope.android.LaunchActivity;
import tv.periscope.android.ui.main.MainActivity;

public class ve
  implements DialogInterface.OnDismissListener
{
  public ve(LaunchActivity paramLaunchActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    LaunchActivity.ˊ(this.bln, MainActivity.class);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ve
 * JD-Core Version:    0.7.0.1
 */