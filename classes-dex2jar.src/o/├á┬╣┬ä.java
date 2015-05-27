package o;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public class ไ
  extends DialogFragment
{
  private DialogInterface.OnCancelListener BK = null;
  private Dialog mDialog = null;
  
  public static ไ ˊ(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ไ localไ = new ไ();
    paramDialog = (Dialog)ﺧ.ʼ(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    localไ.mDialog = paramDialog;
    if (paramOnCancelListener != null) {
      localไ.BK = paramOnCancelListener;
    }
    return localไ;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.BK != null) {
      this.BK.onCancel(paramDialogInterface);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (this.mDialog == null) {
      setShowsDialog(false);
    }
    return this.mDialog;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    super.show(paramFragmentManager, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¹
 * JD-Core Version:    0.7.0.1
 */