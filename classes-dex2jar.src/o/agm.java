package o;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import tv.periscope.android.ui.broadcast.ViewerActivity;

public class agm
  implements DialogInterface.OnClickListener
{
  public agm(ViewerActivity paramViewerActivity, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      ViewerActivity.ˊ(this.bDv, this.bzC);
      return;
    }
    if (paramInt == 1) {
      ViewerActivity.ˋ(this.bDv, this.bzC);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agm
 * JD-Core Version:    0.7.0.1
 */