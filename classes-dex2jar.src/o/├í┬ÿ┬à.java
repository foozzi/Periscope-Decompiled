package o;

import android.os.Bundle;
import java.util.concurrent.locks.Lock;

class ᘅ
  extends ᖨ.aux
{
  ᘅ(ᖨ paramᖨ)
  {
    super(paramᖨ, null);
  }
  
  public void ˊ(Bundle paramBundle)
  {
    ᖨ.ˊ(this.Dk).lock();
    try
    {
      boolean bool = this.Dk.isConnecting();
      if (!bool) {
        return;
      }
      if (paramBundle != null) {
        ᖨ.ˋ(this.Dk).putAll(paramBundle);
      }
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
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */