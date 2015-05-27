package o;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.twitter.sdk.android.core.identity.ShareEmailClient;

class nd
{
  private final ShareEmailClient QN;
  private final ResultReceiver QO;
  
  public nd(ShareEmailClient paramShareEmailClient, ResultReceiver paramResultReceiver)
  {
    this.QN = paramShareEmailClient;
    this.QO = paramResultReceiver;
  }
  
  public void bu()
  {
    this.QN.ˊ(bv());
  }
  
  lz<oo> bv()
  {
    return new ne(this);
  }
  
  public void bw()
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("msg", "The user chose not to share their email address at this time.");
    this.QO.send(0, localBundle);
  }
  
  void ˊ(oo paramoo)
  {
    if (paramoo.SV == null)
    {
      ˋ(new mo("Your application may not have access to email addresses or the user may not have an email address. To request access, please visit https://support.twitter.com/forms/platform."));
      return;
    }
    if ("".equals(paramoo.SV))
    {
      ˋ(new mo("This user does not have an email address."));
      return;
    }
    ᵞ(paramoo.SV);
  }
  
  void ˋ(mo parammo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("error", parammo);
    this.QO.send(1, localBundle);
  }
  
  void ᵞ(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("email", paramString);
    this.QO.send(-1, localBundle);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nd
 * JD-Core Version:    0.7.0.1
 */