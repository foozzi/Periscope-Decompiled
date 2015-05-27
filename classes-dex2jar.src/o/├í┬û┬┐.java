package o;

import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

class ᖿ
  implements Runnable
{
  ᖿ(ᖨ paramᖨ, ConnectionResult paramConnectionResult) {}
  
  public void run()
  {
    ᖨ.ˊ(this.Dk).lock();
    label200:
    for (;;)
    {
      try
      {
        if (ᖨ.ˏ(this.Dk, this.Dm))
        {
          ᖨ.ᐝ(this.Dk, false);
          Iterator localIterator = ᖨ.ˍ(this.Dk).iterator();
          if (localIterator.hasNext())
          {
            ᒰ.ˎ localˎ = (ᒰ.ˎ)localIterator.next();
            ᒰ.ˊ localˊ = (ᒰ.ˊ)ᖨ.ˑ(this.Dk).get(localˎ);
            if (localˊ.isConnected()) {
              localˊ.disconnect();
            }
            if (ᖨ.ˈ(this.Dk).containsKey(localˎ)) {
              break label200;
            }
            ᖨ.ˈ(this.Dk).put(localˎ, new ConnectionResult(17, null));
            break label200;
          }
          ᖨ.ᐝ(this.Dk, true);
          ᖨ.ـ(this.Dk);
        }
        else
        {
          ᖨ.ᐝ(this.Dk, this.Dm);
        }
        return;
      }
      finally
      {
        ᖨ.ˊ(this.Dk).unlock();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿
 * JD-Core Version:    0.7.0.1
 */