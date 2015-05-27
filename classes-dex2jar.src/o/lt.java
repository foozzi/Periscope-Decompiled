package o;

class lt
  implements Runnable
{
  private lq PM;
  private Thread PN;
  protected volatile boolean PO;
  private String name;
  
  lt(String paramString, lq paramlq)
  {
    this.PM = paramlq;
    this.name = paramString;
  }
  
  void aL()
  {
    this.PN.start();
  }
  
  void aM()
  {
    this.PN.interrupt();
  }
  
  public lq aN()
  {
    return this.PM;
  }
  
  void aO()
  {
    this.PO = true;
  }
  
  public Thread getThread()
  {
    return this.PN;
  }
  
  public void run()
  {
    do
    {
      this.PM.run();
      try
      {
        Thread.sleep(this.PM.getInterval() * 1000);
      }
      catch (InterruptedException localInterruptedException) {}
    } while (!this.PO);
  }
  
  void ˊ(Thread paramThread)
  {
    this.PN = paramThread;
  }
  
  public void ˊ(lq paramlq)
  {
    this.PM = paramlq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lt
 * JD-Core Version:    0.7.0.1
 */