package o;

import java.util.concurrent.locks.Lock;

class ᗁ
  implements Runnable
{
  ᗁ(ᖨ paramᖨ) {}
  
  public void run()
  {
    ᖨ.ˊ(this.Dk).lock();
    try
    {
      ᖨ.ـ(this.Dk);
      return;
    }
    finally
    {
      ᖨ.ˊ(this.Dk).unlock();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */