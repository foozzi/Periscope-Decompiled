package o;

import java.util.concurrent.Semaphore;

class afg
  extends Thread
{
  afg(aet paramaet) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        aet.ﹳ(this.bBV).acquire();
        if (aet.ﾞ(this.bBV).us() == 1)
        {
          i = 1;
          yp localyp = aet.ﾞ(this.bBV);
          if (i == 0) {
            break label96;
          }
          i = 0;
          localyp.ﻩ(i);
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        return;
      }
      finally
      {
        aet.ﹳ(this.bBV).release();
      }
      int i = 0;
      continue;
      label96:
      i = 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afg
 * JD-Core Version:    0.7.0.1
 */