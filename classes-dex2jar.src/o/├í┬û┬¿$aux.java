package o;

import android.content.Context;
import android.content.IntentFilter;
import java.util.concurrent.locks.Lock;

abstract class ᖨ$aux
  implements ᒴ.ˊ
{
  private ᖨ$aux(ᖨ paramᖨ) {}
  
  public void ܙ(int paramInt)
  {
    ᖨ.ˊ(this.Dk).lock();
    switch (paramInt)
    {
    default: 
      break;
    }
    try
    {
      ᖨ.ˊ(this.Dk, paramInt);
      this.Dk.connect();
      break label227;
      boolean bool = this.Dk.Ⴡ();
      if (bool) {
        return;
      }
      ᖨ.ˊ(this.Dk, true);
      if (this.Dk.CQ == null)
      {
        this.Dk.CQ = new ᖨ.ˎ(this.Dk);
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        localIntentFilter.addDataScheme("package");
        ᖨ.ˏ(this.Dk).getApplicationContext().registerReceiver(this.Dk.CQ, localIntentFilter);
      }
      ᖨ.ᐝ(this.Dk).sendMessageDelayed(ᖨ.ᐝ(this.Dk).obtainMessage(1), ᖨ.ʻ(this.Dk));
      ᖨ.ᐝ(this.Dk).sendMessageDelayed(ᖨ.ᐝ(this.Dk).obtainMessage(2), ᖨ.ʼ(this.Dk));
      ᖨ.ˊ(this.Dk, paramInt);
      label227:
      return;
    }
    finally
    {
      ᖨ.ˊ(this.Dk).unlock();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¨.aux
 * JD-Core Version:    0.7.0.1
 */