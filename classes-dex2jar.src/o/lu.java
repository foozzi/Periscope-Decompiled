package o;

import java.util.Hashtable;
import java.util.Vector;

abstract class lu
  implements Runnable
{
  private Thread PN;
  protected volatile boolean PO;
  private Vector PP;
  protected kl PQ;
  
  lu(Vector paramVector, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    this.PP = paramVector;
    this.PQ = kl.ˊ(paramInt1, paramInt2, paramHashtable);
  }
  
  void aL()
  {
    this.PN.start();
  }
  
  void aM()
  {
    this.PN.interrupt();
  }
  
  void aO()
  {
    this.PO = true;
  }
  
  void aP()
  {
    this.PQ.reset();
  }
  
  public Thread getThread()
  {
    return this.PN;
  }
  
  public void run()
  {
    do
    {
      Object localObject2 = null;
      for (;;)
      {
        Object localObject1 = localObject2;
        if (this.PO) {
          break;
        }
        synchronized (this.PP)
        {
          if (this.PP.size() != 0)
          {
            localObject1 = (kn)this.PP.firstElement();
            this.PP.removeElementAt(0);
            break;
          }
          try
          {
            this.PP.wait(1000L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      if ((localkn != null) && (!this.PO)) {
        ˋ(localkn);
      }
    } while (!this.PO);
    shutdown();
  }
  
  public abstract void shutdown();
  
  void ˊ(Thread paramThread)
  {
    this.PN = paramThread;
  }
  
  abstract void ˋ(kn paramkn);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lu
 * JD-Core Version:    0.7.0.1
 */