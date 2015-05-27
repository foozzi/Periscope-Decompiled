package o;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class ᖽ
  implements ᒴ.ˋ
{
  ᖽ(ᖨ paramᖨ) {}
  
  public void ˊ(ConnectionResult paramConnectionResult)
  {
    ᖨ.ˊ(this.Dk).lock();
    try
    {
      ᖨ.ˋ(this.Dk, new ConnectionResult(8, null));
      return;
    }
    finally
    {
      ᖨ.ˊ(this.Dk).unlock();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á½
 * JD-Core Version:    0.7.0.1
 */