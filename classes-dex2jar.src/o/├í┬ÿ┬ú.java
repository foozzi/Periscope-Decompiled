package o;

import android.util.Log;
import java.util.concurrent.locks.Lock;

class ᘣ
  implements ᒴ.ˏ
{
  ᘣ(ᖨ paramᖨ) {}
  
  private void ᐦ(int paramInt)
  {
    ᖨ.ˊ(this.Dk).lock();
    try
    {
      if (ᖨ.ʽ(this.Dk) != paramInt)
      {
        Log.wtf("GoogleApiClientImpl", String.format("Internal error: step mismatch. Expected: %d, Actual: %d", new Object[] { Integer.valueOf(ᖨ.ʽ(this.Dk)), Integer.valueOf(paramInt) }));
        ᖨ.ˊ(this.Dk, 4);
        return;
      }
      if (ᖨ.ͺ(this.Dk) == 1) {
        ᖨ.ˎ(this.Dk);
      }
      return;
    }
    finally
    {
      ᖨ.ˊ(this.Dk).unlock();
    }
  }
  
  public void য()
  {
    ᐦ(0);
  }
  
  public void র()
  {
    ᐦ(1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á£
 * JD-Core Version:    0.7.0.1
 */