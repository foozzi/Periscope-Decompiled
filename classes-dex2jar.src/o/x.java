package o;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;

public class x
  extends m
{
  private final w Gi = new w(paramContext, this.FV);
  private final j Gj = j.ˊ(paramContext, paramString3, paramString4, this.FV);
  
  public x(Context paramContext, Looper paramLooper, String paramString1, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ, String paramString2, String paramString3)
  {
    this(paramContext, paramLooper, paramString1, paramˊ, paramˋ, paramString2, paramString3, null);
  }
  
  public x(Context paramContext, Looper paramLooper, String paramString1, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ, String paramString2, String paramString3, String paramString4)
  {
    super(paramContext, paramLooper, paramˊ, paramˋ, paramString2);
  }
  
  public void disconnect()
  {
    synchronized (this.Gi)
    {
      boolean bool = isConnected();
      if (bool) {
        try
        {
          this.Gi.removeAllListeners();
          this.Gi.ｒ();
        }
        catch (Exception localException)
        {
          Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", localException);
        }
      }
      super.disconnect();
      return;
    }
  }
  
  public void ˊ(LocationRequest paramLocationRequest, ay paramay, Looper paramLooper)
  {
    synchronized (this.Gi)
    {
      this.Gi.ˊ(paramLocationRequest, paramay, paramLooper);
      return;
    }
  }
  
  public void ˊ(LocationSettingsRequest paramLocationSettingsRequest, ᖧ.ˊ<LocationSettingsResult> paramˊ, String paramString)
  {
    ᴘ();
    boolean bool;
    if (paramLocationSettingsRequest != null) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "locationSettingsRequest can't be null nor empty.");
    if (paramˊ != null) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "listener can't be null.");
    paramˊ = new if(paramˊ);
    ((u)ᴝ()).ˊ(paramLocationSettingsRequest, paramˊ, paramString);
  }
  
  public void ˊ(ay paramay)
  {
    this.Gi.ˊ(paramay);
  }
  
  static final class if
    extends v.if
  {
    private ᖧ.ˊ<LocationSettingsResult> Gk;
    
    public if(ᖧ.ˊ<LocationSettingsResult> paramˊ)
    {
      boolean bool;
      if (paramˊ != null) {
        bool = true;
      } else {
        bool = false;
      }
      ﺧ.ˏ(bool, "listener can't be null.");
      this.Gk = paramˊ;
    }
    
    public void ˊ(LocationSettingsResult paramLocationSettingsResult)
    {
      this.Gk.ᐪ(paramLocationSettingsResult);
      this.Gk = null;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.x
 * JD-Core Version:    0.7.0.1
 */