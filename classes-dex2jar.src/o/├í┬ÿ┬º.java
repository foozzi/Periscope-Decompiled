package o;

import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
import java.util.concurrent.locks.Lock;

class ᘧ
  implements ᒴ.ˋ
{
  ᘧ(ᖨ paramᖨ, int paramInt, ᒰ paramᒰ) {}
  
  public void ˊ(ConnectionResult paramConnectionResult)
  {
    ᖨ.ˊ(this.Dk).lock();
    try
    {
      boolean bool = this.Dk.isConnecting();
      if (!bool) {
        return;
      }
      if (this.Dn != 2)
      {
        int i = this.Do.ڽ().getPriority();
        if (ᖨ.ˊ(this.Dk, i, this.Dn, paramConnectionResult))
        {
          ᖨ.ˊ(this.Dk, paramConnectionResult);
          ᖨ.ˋ(this.Dk, i);
        }
      }
      ᖨ.ˈ(this.Dk).put(this.Do.ܫ(), paramConnectionResult);
      ᖨ.ˎ(this.Dk);
      return;
    }
    finally
    {
      ᖨ.ˊ(this.Dk).unlock();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á§
 * JD-Core Version:    0.7.0.1
 */