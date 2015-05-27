package o;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsRequest.if;
import com.google.android.gms.location.LocationSettingsResult;

public class aay
  implements ᒴ.ˊ, ᒴ.ˋ
{
  private ᒴ bvh;
  private LocationRequest bvi;
  private LocationSettingsRequest bvj;
  private if bvk;
  private ay bvl;
  private boolean bvm;
  
  public aay(Context paramContext, if paramif, ay paramay)
  {
    this.bvk = paramif;
    this.bvl = paramay;
    this.bvh = new ᒴ.if(paramContext).ˎ(this).ˎ(this).ˊ(az.GJ).চ();
    this.bvi = new LocationRequest().ۥ(10000L).ᐠ(10000L).ʹ(3.0F).ﯧ(100);
    this.bvj = new LocationSettingsRequest.if().ˋ(this.bvi).Λ();
  }
  
  private void vP()
  {
    az.Ht.ˊ(this.bvh, this.bvj).ˊ(new aaz(this));
  }
  
  public void connect()
  {
    if (!isConnected()) {
      this.bvh.connect();
    }
  }
  
  public void disconnect()
  {
    if (isConnected()) {
      this.bvh.disconnect();
    }
  }
  
  public boolean isConnected()
  {
    return this.bvh.isConnected();
  }
  
  public void vN()
  {
    if (!isConnected())
    {
      this.bvm = true;
      return;
    }
    vP();
    az.Hr.ˊ(this.bvh, this.bvi, this.bvl);
  }
  
  public void vO()
  {
    if (!isConnected())
    {
      this.bvm = false;
      return;
    }
    az.Hr.ˊ(this.bvh, this.bvl);
  }
  
  public void ˊ(Bundle paramBundle)
  {
    if (this.bvm) {
      vN();
    }
  }
  
  public void ˊ(ConnectionResult paramConnectionResult)
  {
    akk.ᐨ("LocationManager", "onConnectionFailed " + paramConnectionResult);
  }
  
  public void ܙ(int paramInt)
  {
    this.bvh.connect();
  }
  
  public static abstract interface if
  {
    public abstract void ˎ(LocationSettingsResult paramLocationSettingsResult);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aay
 * JD-Core Version:    0.7.0.1
 */