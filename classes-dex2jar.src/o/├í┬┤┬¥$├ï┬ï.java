package o;

import android.content.IntentSender.SendIntentException;
import com.google.android.gms.common.ConnectionResult;
import java.util.List;

class ᴝ$ˋ
  implements Runnable
{
  private final int DA;
  private final ConnectionResult DB;
  
  public ᴝ$ˋ(ᴝ paramᴝ, int paramInt, ConnectionResult paramConnectionResult)
  {
    this.DA = paramInt;
    this.DB = paramConnectionResult;
  }
  
  public void run()
  {
    if (this.DB.Դ()) {
      try
      {
        int i = this.DC.getActivity().getSupportFragmentManager().ˎ().indexOf(this.DC);
        this.DB.ˊ(this.DC.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        ᴝ.ˊ(this.DC);
        return;
      }
    }
    if (ძ.ذ(this.DB.getErrorCode()))
    {
      ძ.ˋ(this.DB.getErrorCode(), this.DC.getActivity(), this.DC, 2, this.DC);
      return;
    }
    ᴝ.ˊ(this.DC, this.DA, this.DB);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.Ë
 * JD-Core Version:    0.7.0.1
 */