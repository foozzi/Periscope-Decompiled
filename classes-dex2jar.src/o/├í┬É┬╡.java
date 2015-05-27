package o;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public class ᐵ
  extends ʼ
{
  private DialogInterface.OnCancelListener BK = null;
  private Dialog mDialog = null;
  
  public static ᐵ ˋ(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ᐵ localᐵ = new ᐵ();
    paramDialog = (Dialog)ﺧ.ʼ(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    localᐵ.mDialog = paramDialog;
    if (paramOnCancelListener != null) {
      localᐵ.BK = paramOnCancelListener;
    }
    return localᐵ;
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
  
  public void show(ˈ paramˈ, String paramString)
  {
    super.show(paramˈ, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */