package o;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzut;
import java.lang.ref.WeakReference;

class ᖨ$if
  extends ak
{
  private WeakReference<ᖨ> Dp;
  
  ᖨ$if(ᖨ paramᖨ)
  {
    this.Dp = new WeakReference(paramᖨ);
  }
  
  public void ˊ(ConnectionResult paramConnectionResult, zzut paramzzut)
  {
    paramzzut = (ᖨ)this.Dp.get();
    if (paramzzut != null) {
      ᖨ.ˎ(paramzzut, paramConnectionResult);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨.if
 * JD-Core Version:    0.7.0.1
 */