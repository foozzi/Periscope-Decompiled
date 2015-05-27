package o;

import java.util.concurrent.CountDownLatch;

class ɬ$if
{
  private final CountDownLatch latch = new CountDownLatch(1);
  private boolean nT = false;
  
  private ɬ$if(ɬ paramɬ) {}
  
  void await()
  {
    try
    {
      this.latch.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  boolean ӵ()
  {
    return this.nT;
  }
  
  void ᐩ(boolean paramBoolean)
  {
    this.nT = paramBoolean;
    this.latch.countDown();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É¬.if
 * JD-Core Version:    0.7.0.1
 */